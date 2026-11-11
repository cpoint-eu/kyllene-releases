# Maskot

Maskot je malá animovaná postavička, která sedí v rohu konverzace a ukazuje, co agent zrovna dělá: jestli pracuje,
přemýšlí, čeká na tebe, nebo je hotovo. Nemusíš sledovat text, stačí koutkem oka mrknout na maskota. Umí mít i
náladu, komentovat práci v bublině a odpovědět, když na něj promluvíš jménem.

Maskota má na starosti Hermes, takže stejného maskota uvidíš i v terminálu (`hermes`, TUI). Kyllene ho zobrazuje a
přidává k němu náladu, komentáře a osobnost. *English version: [Pet](pet.md).*

**Na této stránce:** [Zapnout](#zapnout-a-vypnout) · [Nainstalovat a vybrat](#nainstalovat-a-vybrat-maskota) ·
[Vylíhnout vlastního](#vylíhnout-vlastního-maskota-s-ai) · [Přesunout](#přesunout-maskota) ·
[Vlastní okno](#maskot-ve-vlastním-okně) · [Stavy](#co-znamenají-stavy) · [Nálada](#nálada) ·
[Komentáře](#komentáře-v-bublině) · [Oslovit jménem](#oslovit-maskota-jménem) · [Osobnost](#osobnost) ·
[Mozek maskota](#mozek-maskota) · [Opravit animace](#opravit-animace-a-délka-animací) ·
[Vlastní nálady](#dogenerovat-nálady) · [Jiné počítače](#na-tvých-dalších-počítačích) ·
[Paleta a zkratky](#příkazy-palety-a-zkratky) · [Když něco nejde](#když-něco-nejde)

## Zapnout a vypnout

1. Otevři **Nastavení** (ozubené kolečko nahoře nebo `Ctrl+,`) a vlevo vyber záložku **Maskot**.
2. Zapni přepínač **Zobrazovat maskota**. Vypnutím ho schováš, a to všude: v okně Kyllene i v terminálu.
3. Posuvníkem **Velikost** nastavíš, jak je velký (**Výchozí** ho vrátí). Velikost změníš i přímo na maskotovi:
   podrž `Alt` a točni kolečkem myši.

Totéž umí paleta: `Ctrl+K` › *Maskot: zapnout* / *Maskot: vypnout*. Pokud v záložce vidíš *Tenhle Hermes maskoty
ještě nemá*, aktualizuj Hermes (`hermes update`).

## Nainstalovat a vybrat maskota

**V aplikaci:** v Nastavení › Maskot najdeš dole **Petdex**, veřejnou galerii maskotů. Vyhledej si nějakého a klikni
na **Adoptovat**. Objeví se mezi **Tvoji maskoti**; tlačítkem **Zobrazit** ho vybereš (vybraný má štítek
**Zobrazený**). Nabídka **⋯** (**Další akce**) u maskota má **Přejmenovat**, **Osobnost…**, **Opravit animace…** (u
vylíhnutých maskotů), **Dogenerovat nálady…** a **Odebrat**. Rychle přepneš přes `Ctrl+K` › *Maskot…*: seznam tvých
maskotů s hledáním, `Enter` zobrazí vybraného.

**V terminálu:** jedním příkazem maskota stáhneš a rovnou vybereš, třeba Bobu:

```bash
hermes pets install boba --select
```

Další užitečné příkazy: `hermes pets list` (galerie), `hermes pets select <jméno>` (přepnout na jiného),
`hermes pets off` (vypnout). Kyllene si změny všimne sama, není potřeba ji restartovat.

## Vylíhnout vlastního maskota s AI

**Vylíhnout nového…** v Nastavení › Maskot (nebo `Ctrl+K` › *Maskot: vylíhnout nového…*) nechá AI nakreslit úplně
nového maskota:

1. **Poskytovatel**: vyber **Poskytovatele obrázků** (ty, které má Hermes nastavené a které umí kreslit podle
   referenčního obrázku, třeba *ChatGPT (předplatné)*, *OpenAI (API klíč)*, *OpenRouter*, *Nous Portal*) a kde to
   poskytovatel dovolí, i **Model obrázků**. Dialog předem řekne, co to stojí: placené za obrázek, nebo v rámci
   předplatného. Bez vhodného poskytovatele vypíše, co nastavit.
2. **Popis**: popiš maskota, třeba *malý zelený drak s brýlemi a hrnkem kávy*, a klikni na **Vygenerovat návrhy**.
3. **Návrhy** a **Výběr**: AI nakreslí čtyři návrhy. Vyber jeden, dej mu **Jméno maskota** a když chceš, i
   **Povahu** pro jeho [osobnost](#osobnost) (**Vymyslet s AI** navrhne obojí). Když se ti žádný nelíbí, **Nové
   návrhy** nebo **Upravit popis**; pak **Vylíhnout**.
4. **Líhnutí**: nakreslí se a složí všechny animace. Pak **Zobrazit jako maskota**, **Vylíhnout dalšího** nebo
   **Zahodit**.

## Přesunout maskota

- **Přetáhni ho myší** kamkoli. Pustíš-li ho přes text, sám si najde nejbližší volné místo, aby nepřekrýval odpověď
  ani pole pro psaní. Místo si pamatuje i po restartu.
- **Dvojklik** ho vrátí do výchozího rohu (vpravo dole nad polem pro psaní).
- Poloha se pamatuje na každém počítači zvlášť (každý má jinou obrazovku).
- Volba **Maskot se toulá po okně** v Nastavení › Maskot (výchozí vypnuto; v paletě *Maskot: toulat se po okně* /
  *Maskot: přestat se toulat*) ho nechá procházet se po volných místech, když agent nic nedělá. Jakmile agent začne
  pracovat, vrátí se na své místo.

## Maskot ve vlastním okně

**Shift+klik** na maskota ho vysune do vlastního malého okna na ploše. Zůstává navrchu, i když je Kyllene schovaná
nebo za jinými aplikacemi (v paletě *Maskot: do vlastního okna*). Okno můžeš přetáhnout jinam, jeho poloha se také
pamatuje. Dalším **Shift+klikem** (nebo *Maskot: zpět do okna aplikace*) se maskot vrátí do Kyllene.

Na ploše maskot umí víc:

- **Klik** otevře malé pole pro zprávu (okno [rychlého zachycení](quick-capture.md)), které píše do konverzace, ve
  které jsi byl naposledy; odpověď se ukáže tamtéž.
- **Dvojklik** schová hlavní okno Kyllene, nebo ho zase ukáže.
- Malá bublina vedle něj ukazuje *Pracuje…*, když agent pracuje, a *Jsi na řadě*, když na tebe nějaký čeká.
- Když agent dokončil odpověď, zatímco jsi byl v jiné aplikaci, objeví se vedle maskota **dopis**. Klikem na něj
  otevřeš tu konverzaci (je-li jich víc, tu nejnovější).

## Co znamenají stavy

| Co maskot dělá | Co to znamená |
|---|---|
| Stojí v klidu | Agent nic nedělá, můžeš psát. |
| Běží | Agent pracuje, například používá nástroj (hledá, čte soubory, spouští příkaz). |
| Přemýšlí | Agent si rozmýšlí, co udělá dál. |
| Čeká | Agent potřebuje tebe: ptá se, chce schválení nebo heslo. Platí to i pro jinou otevřenou konverzaci, než na kterou se zrovna díváš. |
| Je smutný / zklamaný | Něco se nepovedlo (chyba nástroje nebo odpovědi). Podívej se do konverzace. |
| Mává | Hotovo, agent dokončil odpověď. |
| Skáče radostí | Agent splnil celý svůj seznam úkolů, nebo jsi mu poděkoval („díky“, ❤️); nad ním vyletí srdíčka. |

Krátké stavy (mávání, skok, chyba) trvají jen chvilku, pak se maskot vrátí ke klidu nebo k práci.

## Nálada

Kromě stavu má maskot i **náladu**, která sleduje, jak se na tomhle počítači daří práci: chyby za sebou ho
rozmrzí, pak otráví, pak naštvou; úspěchy ho potěší a nadchnou; dlouhý klid ho uvolní a později uspí. Časem se vrátí
do klidu. Nastavení › Maskot ukazuje pod zobrazeným maskotem jeho aktuální **Náladu**.

Náladu poznáš podle toho, jak se maskot hýbe (tempo, třes, poskakování, lehký nádech barvy), a když nálada přijde,
i podle krátké značky nad hlavou: ❓ ❗ ✨ 💢 💧 ♪. Značka po pár vteřinách zmizí; jen 💤 (ospalý) a ⏳ (netrpělivý)
zůstávají, dokud nálada trvá. Nálada určuje i tón maskotových [komentářů](#komentáře-v-bublině). Každý maskot
ukazuje nálady zdarma; [Dogenerovat nálady](#dogenerovat-nálady) pro ně nakreslí vlastní animace.

## Komentáře v bublině

Občas maskot okomentuje práci agenta v bublině: selhaný nástroj nebo test, otázku pro tebe, dokončené kolo. Bublina
zůstane, dokud na ni neklikneš nebo ji nenahradí další hláška; když na maskota najedeš myší, ukáže jeho poslední
hlášky. Nastavuje se v Nastavení › Maskot › **Komentáře**:

| Volba | Co dělá |
|---|---|
| **Režim** | **Vypnuto** (maskot mlčí), **Předpřipravené hlášky** (výchozí: hotové hlášky zdarma, které sedí na situaci a povahu maskota) nebo **AI hlášky** (každou hlášku napíše model z krátkého shrnutí situace, nikdy ne z celé konverzace; stojí tokeny, a když se nepovede, ukáže se předpřipravená). |
| **Model hlášek** | U AI hlášek: **Podle konverzace** (model konverzace, které se komentář týká) nebo jeden model, který vybereš. U drahého modelu vidíš, kolik stojí hláška. |
| **Nejdelší odmlka** | Když agent pracuje a maskot tak dlouho nic neřekl (2–30 min, výchozí 5), okomentuje, co se děje. Když nic neběží, mlčí. |
| **Jazyk** | **Podle aplikace** (jazyk Kyllene na každém počítači), *Čeština* nebo *English*. |
| **Komentovat i moje zprávy** | Výchozí vypnuto. Maskot občas zareaguje na zprávu, kterou pošleš (ne na krátké odpovědi a příkazy, nejvýš jednou za 3 minuty). U AI hlášek jde tvoje zpráva modelu hlášek. |

## Oslovit maskota jménem

Napiš maskotovi v konverzaci jeho jménem, třeba *Bobo, co myslíš?* nebo *co na to říkáš, Bobo?* (rozumí i
oslovení v 5. pádě). Maskot odpoví v bublině a agent tu odpověď nechá na něm. Funguje to vždy, když **Komentáře**
nejsou **Vypnuto**. Mluvit *o* maskotovi (*Bobina animace je hezká*) se nepočítá. S mozkem
[Paměť nebo Kombinace](#mozek-maskota) si *Bobo, zapamatuj si …* uloží poznámku do jeho paměti.

## Osobnost

Každý maskot může mít **Jméno** a **Povahu** (*věčně zvědavý, mluví krátce a vtipně, nesnáší červené testy*); podle
nich komentuje. Nastavíš je při líhnutí, nebo později v nabídce **⋯** › **Osobnost…** u maskota (i pravým tlačítkem
na maskotovi); maskot bez osobnosti nabídne **Doplnit osobnost**. **Vymyslet s AI** navrhne obojí. Osobnost se
ukládá v nastavení Kyllene a cestuje s maskotem na tvoje další počítače; Hermes se nemění.

## Mozek maskota

**Mozek maskota** v Nastavení › Maskot určuje, kolik zobrazený maskot ví a umí, když komentuje a odpovídá. Nastavuje
se pro každého maskota zvlášť a cestuje s ním; u každé úrovně stojí, co stojí.

| Úroveň | Co maskot umí |
|---|---|
| **Bez paměti** | Výchozí. Každá hláška stojí sama za sebe a maskot si nic nepamatuje; nic navíc nestojí. |
| **Paměť** | Pamatuje si tebe, svoje hlášky a co se dělo, má malé dovednosti a neopakuje se; asi 1 000 tokenů navíc za hlášku a jedno levné volání denně. |
| **Agent** | Celý agent Hermesu se jménem maskota: vlastní paměť, dovednosti a nástroje, umí si věci dohledat. Každá hláška je celé kolo agenta (asi 17 000 tokenů). |
| **Kombinace** | Běžné hlášky přes Paměť; když maskota oslovíš jménem, odpoví celý agent. |

U **Paměti** a **Kombinace** se ukážou ještě dvě části:

- **Paměť**: poznámka, kterou maskot dostane ke každé AI hlášce (nejvýš 2 000 znaků). Uprav ji a **Uložit**, nebo to
  maskotovi řekni v konverzaci (*Bobo, zapamatuj si …*). Jednou denně ji model hlášek uklidí. **Co ví o uživateli**
  (výchozí vypnuto) dá maskotovi i prvních 1 000 znaků Hermesova `memories/USER.md`, jen ke čtení.
- **Dovednosti**: malé balíčky toho, co maskot zná a o čem vtipkuje (třeba *PHP a Symfony* nebo *běhání*). **Přidat
  dovednost** (**Název**, **Kdy se hodí**: události, pro které je, nepovinná klíčová slova, **Obsah**) nebo
  **Vymyslet s AI**. AI hláška dostane nejvýš jednu dovednost, která sedí.

**Agent** a **Kombinace** potřebují pro maskota profil v Hermesu: Kyllene nabídne **Založit profil** (osobnost z
povahy maskota, vlastní paměť, dovednosti a nástroje). Profil pak najdeš mezi agenty; smazat ho můžeš v Hermes ›
Profily. Když agent neodpoví, maskot mluví přes Paměť (Kombinace), nebo jako Bez paměti (Agent).

## Opravit animace a délka animací

**Délka animací** v Nastavení › Maskot (pod zobrazeným maskotem) určuje, jak dlouho se každá animace maskota
přehrává, od 1 do 8 vteřin (**Normální** je 1,1 s); **Vše na normální** je vrátí. Je to zdarma a platí hned.

U vylíhnutého maskota **Opravit animace…** (nabídka **⋯**, pravé tlačítko na maskotovi nebo `Ctrl+K` › *Maskot:
opravit animace…*) znovu nakreslí jen animace, které vypadají špatně:

1. Všechny animace hrají vedle sebe. Zaškrtni ty vadné. Pod každou můžeš napsat **Co má vypadat jinak
   (nepovinné)**; posuvník délky tady určuje i počet snímků nové animace.
2. Vyber **Poskytovatele obrázků** a **Model obrázků** jako při líhnutí (jeden obrázek na animaci, cena je vidět) a
   klikni na **Nakreslit znovu**.
3. Porovnej **Teď** a **Nová** a u každé zvol **Použít** nebo **Zahodit**; **Použít a zavřít** uloží všechny nové
   animace, které jsi nezahodil. **Vrátit předchozí podobu** poslední opravu vrátí.

## Dogenerovat nálady

Každá nálada se zdarma přehrává úpravou běžné animace. **Dogenerovat nálady…** (nabídka **⋯**, pravé tlačítko na
maskotovi nebo `Ctrl+K` › *Maskot: dogenerovat nálady…*) místo toho nakreslí vlastní animaci pro nálady, které
vybereš; jde to u každého maskota, i u toho z Petdexu. U každé nálady vidíš *úprava zdarma* nebo *vlastní*;
**Vybrat chybějící** zaškrtne všechny nálady bez vlastní animace. Kreslení je placené (jeden obrázek na náladu, cena
je vidět). Každá hotová nálada se uloží hned a **Zavřít (kreslit dál)** nechá kreslení běžet. **Odebrat** u nálady ji
vrátí k úpravě zdarma.

## Na tvých dalších počítačích

Se zapnutou [synchronizací](sync.md) tě zobrazený maskot i jeho velikost následují: maskot z Petdexu se na druhém
počítači nainstaluje sám, vylíhnutý přijde i se svými obrázky, takže ho nikdy nelíhneš (a neplatíš) dvakrát. S ním
cestuje i jeho osobnost, mozek, paměť, dovednosti, vlastní nálady a délky animací. Jestli je maskot zobrazený, kde
na obrazovce sedí a jeho aktuální nálada zůstávají na každém počítači zvlášť.

## Příkazy palety a zkratky

`Ctrl+K` nabízí *Maskot…*, *Maskot: zapnout* / *Maskot: vypnout*, *Maskot: do vlastního okna* / *Maskot: zpět do
okna aplikace*, *Maskot: toulat se po okně* / *Maskot: přestat se toulat*, *Maskot: vylíhnout nového…*, *Maskot:
opravit animace…* (u vylíhnutých maskotů) a *Maskot: dogenerovat nálady…*. Nastavení › Klávesové zkratky má skupinu
**Maskot**: výběru maskota, zapnutí / vypnutí, vlastnímu oknu a líhnutí dáš vlastní klávesu (**Nastavit**); jsou tam
vypsané i akce myší (Shift+klik, klik, dvojklik, Alt + kolečko).

## Když něco nejde

| Problém | Co udělat |
|---|---|
| Maskot není vidět | Zkontroluj, že je v Nastavení › Maskot zapnuté **Zobrazovat maskota** a že máš nějakého maskota vybraného (**Zobrazit**). |
| Maskot se nehýbe | Máš v systému zapnuté omezení animací; maskot pak jen stojí a ukazuje stav jedním obrázkem. |
| Maskot nic neříká | V Nastavení › Maskot › **Komentáře** je **Režim** **Vypnuto**, nebo žádný agent nepracuje (když nic neběží, mlčí). |
| AI hlášky zní jako předpřipravené | Model hlášek není na tomhle počítači připojený, nebo volání selhalo; místo něj se ukáže předpřipravená hláška. |
| Líhnutí nejde spustit | V Hermesu není nastavený poskytovatel obrázků, který umí kreslit podle referenčního obrázku; dialog vypíše, co nastavit (třeba klíč OpenRouteru v Hermes › Klíče). |
| Okno maskota na ploše si nepamatuje místo | Na čistém Waylandu (bez XWaylandu) si okno polohu neumí nastavit samo. |
