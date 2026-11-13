#!/usr/bin/env bash
# Kyllene installer for Linux (x86_64), no sudo.
#
#   curl -fsSL https://raw.githubusercontent.com/cpoint-eu/kyllene-releases/main/install.sh | bash
#
# Installs the latest Kyllene AppImage for the current user:
#   app        ~/.local/bin/Kyllene.AppImage   (Kyllene updates this file itself later)
#   menu entry ~/.local/share/applications/kyllene.desktop
#   icon       ~/.local/share/icons/hicolor/512x512/apps/kyllene.png
#
# Options (with curl … | bash use: curl … | bash -s -- <options>):
#   --version <tag>      install this release instead of the latest (e.g. v0.0.1-beta)
#   --appimage <file>    install a local AppImage instead of downloading one
#   --uninstall          remove the app, the menu entry and the icon (your data stays)
#   --force              replace a menu entry that belongs to another Kyllene install
#   -h, --help           show this help
#
# Tested on Manjaro, Ubuntu 22.04/24.04 and Fedora; other modern x86_64 distros usually work too.
# Your data stays on uninstall: ~/.local/share/kyllene (Kyllene) and ~/.hermes (Hermes Agent).

set -u

# Everything runs from main() at the very end, so a download cut off half-way never executes a partial script.

REPO="${KYLLENE_REPO:-cpoint-eu/kyllene-releases}"
# where the release files live; overridable for tests (a local web server with the same layout)
RELEASES="${KYLLENE_RELEASES_URL:-https://github.com/$REPO/releases}"
OS_RELEASE="${KYLLENE_OS_RELEASE:-/etc/os-release}"
ICON_URL="${KYLLENE_ICON_URL:-https://raw.githubusercontent.com/$REPO/main/media/icon.png}"

BIN_DIR="$HOME/.local/bin"
APP="$BIN_DIR/Kyllene.AppImage"
APPS_DIR="$HOME/.local/share/applications"
DESKTOP="$APPS_DIR/kyllene.desktop"
ICON_DIR="$HOME/.local/share/icons/hicolor/512x512/apps"
ICON="$ICON_DIR/kyllene.png"
MARK="X-Kyllene-Installer=install.sh"

if [ -t 1 ]; then B=$'\033[1m' Y=$'\033[33m' R=$'\033[31m' G=$'\033[32m' N=$'\033[0m'; else B='' Y='' R='' G='' N=''; fi
say()  { printf '%s\n' "$*"; }
step() { printf '\n%s▸ %s%s\n' "$B" "$*" "$N"; }
warn() { printf '%s! %s%s\n' "$Y" "$*" "$N" >&2; }
die()  { printf '%s✗ %s%s\n' "$R" "$*" "$N" >&2; exit 1; }
ok()   { printf '%s✓ %s%s\n' "$G" "$*" "$N"; }

usage() {
  printf '%s\n' 'Kyllene installer (Linux x86_64, no sudo)' '' \
    'Usage: install.sh [--version <tag>] [--appimage <file>] [--force]' \
    '       install.sh --uninstall [--force]' \
    '       (piped: curl -fsSL <url>/install.sh | bash -s -- <options>)' '' \
    '  --version <tag>    install this release instead of the latest (e.g. v0.0.1-beta)' \
    '  --appimage <file>  install a local AppImage instead of downloading one' \
    '  --uninstall        remove the app, the menu entry and the icon (your data stays)' \
    '  --force            replace/remove a menu entry that belongs to another Kyllene install' \
    '' "Installs to $APP, menu entry $DESKTOP."
}

# --- checks ---------------------------------------------------------------------------------------------------------

# Distro from os-release: its name and family (arch | debian | fedora | suse | ""), for package hints.
DISTRO_NAME="" DISTRO_ID="" DISTRO_FAMILY=""
read_distro() {
  local like="" w
  if [ -r "$OS_RELEASE" ]; then
    # shellcheck disable=SC1090
    DISTRO_ID="$(. "$OS_RELEASE"; printf '%s' "${ID:-}")"
    # shellcheck disable=SC1090
    DISTRO_NAME="$(. "$OS_RELEASE"; printf '%s' "${PRETTY_NAME:-${NAME:-}}")"
    # shellcheck disable=SC1090
    like="$(. "$OS_RELEASE"; printf '%s' "${ID_LIKE:-}")"
  fi
  for w in $DISTRO_ID $like; do
    case "$w" in
      arch|manjaro|endeavouros|garuda|cachyos) DISTRO_FAMILY=arch ;;
      debian|ubuntu|linuxmint|pop|elementary|zorin|neon) DISTRO_FAMILY=debian ;;
      fedora|rhel|centos|rocky|almalinux|nobara) DISTRO_FAMILY=fedora ;;
      suse|opensuse|opensuse-tumbleweed|opensuse-leap|sles) DISTRO_FAMILY=suse ;;
      *) continue ;;
    esac
    break
  done
  if [ -z "$DISTRO_FAMILY" ]; then  # no os-release match: go by the package manager
    if command -v pacman >/dev/null 2>&1; then DISTRO_FAMILY=arch
    elif command -v apt-get >/dev/null 2>&1; then DISTRO_FAMILY=debian
    elif command -v dnf >/dev/null 2>&1; then DISTRO_FAMILY=fedora
    elif command -v zypper >/dev/null 2>&1; then DISTRO_FAMILY=suse
    fi
  fi
}

# The install command for a package on this distro: $1 = arch name, $2 = debian, $3 = fedora, $4 = suse.
pkg_cmd() {
  case "$DISTRO_FAMILY" in
    arch) printf 'sudo pacman -S %s' "$1" ;;
    debian) printf 'sudo apt install %s' "$2" ;;
    fedora) printf 'sudo dnf install %s' "$3" ;;
    suse) printf 'sudo zypper install %s' "$4" ;;
  esac
}

# Prints the install hint for a package, or the commands for all common distros when the distro is unknown.
pkg_hint() {
  local cmd; cmd="$(pkg_cmd "$@")"
  if [ -n "$cmd" ]; then warn "    $cmd"; return; fi
  warn "    sudo apt install $2        (Debian, Ubuntu, Mint)"
  warn "    sudo dnf install $3        (Fedora)"
  warn "    sudo pacman -S $1          (Arch, Manjaro)"
}

check_platform() {
  [ "$(uname -s)" = Linux ] || die "Kyllene runs on Linux only for now (this is $(uname -s))."
  [ "$(uname -m)" = x86_64 ] || die "Kyllene is built for x86_64 only for now (this is $(uname -m))."
  read_distro
  case "$DISTRO_ID" in
    manjaro|ubuntu|fedora) ok "${DISTRO_NAME:-$DISTRO_ID}" ;;
    *)
      if [ -n "$DISTRO_FAMILY" ]; then
        ok "${DISTRO_NAME:-Linux} (tested on Manjaro, Ubuntu and Fedora; this one should work too)"
      else
        say "${DISTRO_NAME:-This distro} is not tested yet (tested: Manjaro, Ubuntu, Fedora); the AppImage usually runs anyway."
      fi
      ;;
  esac
}

# The AppImage runtime (static type-2 runtime) carries its own libfuse: it needs only a `fusermount3` or `fusermount`
# helper on PATH (fuse3 or fuse2 package) and the /dev/fuse device. No libfuse.so.2 required.
check_fuse() {
  local helper=""
  helper="$(command -v fusermount3 2>/dev/null || command -v fusermount 2>/dev/null || true)"
  if [ -n "$helper" ] && [ -e /dev/fuse ]; then ok "FUSE (${helper##*/})"; return 0; fi
  if [ -z "$helper" ]; then
    warn "AppImages need FUSE, and neither fusermount3 nor fusermount is installed."
    warn "Install it, then run this installer again:"
    pkg_hint fuse3 fuse3 fuse3 fuse3
    die "FUSE is missing."
  fi
  warn "/dev/fuse is missing (a container or a kernel without FUSE?). Kyllene will not start this way;"
  warn "run it as: $APP --appimage-extract-and-run"
}

# The bundled WebKit loads the system's OpenGL ES library at run time (ldd does not show it); without it the app
# aborts right at start ("Couldn't open libGLESv2.so.2"). Every desktop install has it, minimal ones may not.
LIB_DIRS="${KYLLENE_LIB_DIRS:-}"
check_gles() {
  local d ldc
  if [ -z "$LIB_DIRS" ]; then
    ldc="$(command -v ldconfig 2>/dev/null || true)"
    [ -n "$ldc" ] || for d in /sbin /usr/sbin; do [ -x "$d/ldconfig" ] && ldc="$d/ldconfig"; done
    if [ -n "$ldc" ] && "$ldc" -p 2>/dev/null | grep -q 'libGLESv2\.so\.2 '; then ok "OpenGL ES (libGLESv2)"; return 0; fi
    LIB_DIRS="/usr/lib/x86_64-linux-gnu /lib/x86_64-linux-gnu /usr/lib64 /lib64 /usr/lib /lib"
  fi
  for d in $LIB_DIRS; do
    if [ -e "$d/libGLESv2.so.2" ]; then ok "OpenGL ES (libGLESv2)"; return 0; fi
  done
  warn "libGLESv2.so.2 (OpenGL ES) was not found; Kyllene's window needs it and would close right at start."
  warn "Install it (installing Kyllene goes on now):"
  pkg_hint libglvnd libgles2 libglvnd-gles libglvnd
}

need() { command -v "$1" >/dev/null 2>&1 || die "\`$1\` is missing; install it and run this installer again."; }

# A real AppImage: ELF with the AppImage type-2 magic "AI\x02" at offset 8.
is_appimage() {
  [ -s "$1" ] || return 1
  [ "$(head -c 4 "$1" | od -An -c | tr -d ' \n')" = '177ELF' ] || return 1
  [ "$(head -c 11 "$1" | tail -c 3 | od -An -tx1 | tr -d ' \n')" = 414902 ]
}

# Our menu entry (written by this script) or none at all; anything else is another install (e.g. built from source).
desktop_is_ours() { [ ! -e "$DESKTOP" ] || grep -qxF "$MARK" "$DESKTOP"; }

# --- download -------------------------------------------------------------------------------------------------------

# AppImage URL of a release, from the release's updater manifest latest.json (the same file Kyllene's updater reads;
# no GitHub API, so no API rate limit).
appimage_url() {
  local tag="$1" base json url
  if [ -n "$tag" ]; then base="$RELEASES/download/$tag"; else base="$RELEASES/latest/download"; fi
  if ! json="$(curl -fsSL "$base/latest.json" 2>/dev/null)"; then
    if [ -n "$tag" ]; then die "Release $tag not found (or it has no latest.json): $RELEASES"; fi
    die "No Kyllene release is published yet (or GitHub is unreachable): $RELEASES"
  fi
  url="$(printf '%s' "$json" | grep -o '"url"[[:space:]]*:[[:space:]]*"[^"]*\.AppImage"' | head -n1 | cut -d'"' -f4)"
  [ -n "$url" ] || die "The release manifest has no AppImage: $base/latest.json"
  printf '%s' "$url"
}

fetch_appimage() {  # $1 = tag or "", $2 = destination
  local url
  url="$(appimage_url "$1")" || exit 1
  say "${url##*/}"
  curl -fL --progress-bar --retry 3 -o "$2" "$url" || die "Download failed: $url"
}

# --- install / uninstall --------------------------------------------------------------------------------------------

install_icon() {
  mkdir -p "$ICON_DIR"
  local tmp; tmp="$(mktemp -d)"
  # the icon of exactly this version, from inside the AppImage (extraction needs no FUSE); .DirIcon is a symlink
  # (.DirIcon -> Kyllene.png, 512 px), so follow it by extracting each link target too
  local name=.DirIcon _
  for _ in 1 2 3; do
    (cd "$tmp" && "$APP" --appimage-extract "$name" >/dev/null 2>&1) || break
    [ -L "$tmp/squashfs-root/$name" ] || break
    name="$(readlink "$tmp/squashfs-root/$name")"
  done
  if [ -f "$tmp/squashfs-root/$name" ] && [ ! -L "$tmp/squashfs-root/$name" ] && [ -s "$tmp/squashfs-root/$name" ]; then
    cp "$tmp/squashfs-root/$name" "$ICON.new" && mv -f "$ICON.new" "$ICON"
  elif curl -fsSL -o "$ICON.new" "$ICON_URL"; then
    mv -f "$ICON.new" "$ICON"
  else
    rm -f "$ICON.new"; warn "Could not get the icon; the menu entry shows a generic one."
  fi
  rm -rf "$tmp"
}

write_desktop() {
  mkdir -p "$APPS_DIR"
  # StartupNotify: GNOME then hands the app an activation token, so its window gets focus on Wayland.
  # StartupWMClass: the window's app id, so the dock groups it under this entry.
  printf '%s\n' '[Desktop Entry]' 'Type=Application' 'Name=Kyllene' \
    'Comment=Desktop workspace for Hermes Agent' "Exec=\"$APP\"" 'Icon=kyllene' 'Terminal=false' \
    'Categories=Development;' 'StartupNotify=true' 'StartupWMClass=kyllene' "$MARK" > "$DESKTOP.new"
  mv -f "$DESKTOP.new" "$DESKTOP"
  command -v update-desktop-database >/dev/null 2>&1 && update-desktop-database -q "$APPS_DIR" 2>/dev/null || true
  command -v gtk-update-icon-cache >/dev/null 2>&1 \
    && gtk-update-icon-cache -q -t "$HOME/.local/share/icons/hicolor" 2>/dev/null || true
}

do_install() {
  local tag="$1" local_file="$2" force="$3"
  step "Checking this computer"
  check_platform
  need curl
  check_fuse
  check_gles
  if ! desktop_is_ours && [ "$force" != 1 ]; then
    die "$DESKTOP belongs to another Kyllene install (built from source?). Run again with --force to replace it."
  fi

  step "Kyllene"
  mkdir -p "$BIN_DIR"
  local new="$APP.download"
  rm -f "$new"
  if [ -n "$local_file" ]; then
    [ -f "$local_file" ] || die "No such file: $local_file"
    cp "$local_file" "$new"
  else
    fetch_appimage "$tag" "$new"
  fi
  if ! is_appimage "$new"; then rm -f "$new"; die "The downloaded file is not an AppImage."; fi
  chmod +x "$new"
  # rename over the old file: a Kyllene that is running right now keeps its copy and gets the new one on restart
  mv -f "$new" "$APP"
  ok "$APP ($(du -h "$APP" | cut -f1))"

  step "Menu entry"
  install_icon
  write_desktop
  ok "Kyllene is in your app menu"

  step "Hermes Agent"
  if command -v hermes >/dev/null 2>&1 || [ -x "$HOME/.local/bin/hermes" ] || [ -x "$HOME/.hermes/hermes-agent/.hermes/bin/hermes" ]; then
    ok "found"
  else
    say "Not installed. Kyllene offers to install it on the first start (about 2.7 GB, a few minutes)."
  fi

  printf '\n%sDone.%s Start Kyllene from the app menu, or run: %s\n' "$B" "$N" "$APP"
  say "Kyllene updates itself: it offers \"Update and restart\" when a new version is out."
  say "Uninstall: curl -fsSL https://raw.githubusercontent.com/$REPO/main/install.sh | bash -s -- --uninstall"
}

do_uninstall() {
  local force="$1" removed=0
  step "Removing Kyllene"
  if pgrep -f "$APP" >/dev/null 2>&1; then warn "Kyllene is running; close it, the app file is removed anyway."; fi
  if [ -e "$APP" ]; then rm -f "$APP"; ok "removed $APP"; removed=1; fi
  if [ -e "$DESKTOP" ]; then
    if desktop_is_ours || [ "$force" = 1 ]; then
      rm -f "$DESKTOP"; ok "removed $DESKTOP"; removed=1
    else
      warn "Kept $DESKTOP: it belongs to another Kyllene install (built from source?). --force removes it."
    fi
  fi
  # the icon name is shared with a source install: drop it only together with our own menu entry
  if [ -e "$ICON" ] && [ ! -e "$DESKTOP" ]; then rm -f "$ICON"; ok "removed $ICON"; removed=1; fi
  rm -f "$APP.download" "$DESKTOP.new" "$ICON.new"
  command -v update-desktop-database >/dev/null 2>&1 && update-desktop-database -q "$APPS_DIR" 2>/dev/null || true
  [ "$removed" = 1 ] || say "Kyllene was not installed by this script; nothing to remove."
  say ""
  say "Your data stays: ~/.local/share/kyllene (Kyllene) and ~/.hermes (Hermes Agent)."
  say "Delete those folders yourself only if you want everything gone."
}

main() {
  local mode=install tag="" file="" force=0
  while [ $# -gt 0 ]; do
    case "$1" in
      --uninstall) mode=uninstall ;;
      --version) [ $# -ge 2 ] || die "--version needs a tag, e.g. v0.0.1-beta"; tag="$2"; shift ;;
      --version=*) tag="${1#*=}" ;;
      --appimage) [ $# -ge 2 ] || die "--appimage needs a file"; file="$2"; shift ;;
      --appimage=*) file="${1#*=}" ;;
      --force) force=1 ;;
      -h|--help) usage; exit 0 ;;
      *) die "Unknown option: $1 (see --help)" ;;
    esac
    shift
  done
  [ "$(id -u)" != 0 ] || die "Run this installer as your normal user, not as root (it installs into your home)."
  if [ "$mode" = uninstall ]; then do_uninstall "$force"; else do_install "$tag" "$file" "$force"; fi
}

main "$@"
