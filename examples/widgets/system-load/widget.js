// System load: an example Kyllene widget. widget.js is an ES module whose default export gets the `api` object
// and returns the widget's parts. The data come from fetch.py (api.data.useScript()); the header states, the
// folded row and the bar item come from the script too, so this file only draws the body.
export default function (api) {
  const { html, ui, useText } = api;

  const gb = (bytes) => (bytes / 1024 ** 3).toFixed(1) + " GB";

  function Row({ label, pct, detail, warnAt }) {
    const tone = pct >= warnAt ? "var(--warn)" : "var(--accent)";
    return html`
      <div class="xw-sysload-row">
        <div class="xw-sysload-head">
          <span>${label}</span>
          <span class="muted">${detail}</span>
        </div>
        <div class="xw-sysload-bar"><i style=${{ width: Math.min(100, pct) + "%", background: tone }}></i></div>
      </div>`;
  }

  function Body({ ctx }) {
    const t = useText();
    const { data, error, loading, refresh } = api.data.useScript();
    if (!data) return html`<${ui.Empty} text=${loading ? t({ en: "Loading…", cs: "Načítám…" }) : error || "—"} />`;
    const big = ctx.place === "modal" || ctx.place === "main";
    return html`
      <div class="xw-sysload">
        <${Row} label="RAM" pct=${data.mem.pct} warnAt=${data.warnAt}
          detail=${`${gb(data.mem.used)} / ${gb(data.mem.total)}`} />
        <${Row} label=${t({ en: "Disk", cs: "Disk" }) + " " + data.disk.path} pct=${data.disk.pct} warnAt=${data.warnAt}
          detail=${`${gb(data.disk.used)} / ${gb(data.disk.total)}`} />
        <${Row} label="CPU" pct=${Math.round((100 * data.load[0]) / data.cores)} warnAt=${101}
          detail=${`load ${data.load[0]} · ${data.cores} ${t({ en: "cores", cs: "jader" })}`} />
        ${big && html`<button class="btn sm" onClick=${refresh}>${t({ en: "Refresh", cs: "Obnovit" })}</button>`}
      </div>`;
  }

  return { Body };
}
