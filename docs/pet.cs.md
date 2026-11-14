# Maskot

Maskot je malá animovaná postavička, která sedí v rohu konverzace a ukazuje, co agent zrovna dělá: jestli pracuje,
přemýšlí, čeká na tebe, nebo je hotovo. Nemusíš sledovat text, stačí koutkem oka mrknout na maskota. Umí mít i
náladu, komentovat práci v bublině a odpovědět, když na něj promluvíš jménem.

Maskota má na starosti Hermes, takže stejného maskota uvidíš i v terminálu (`hermes`, TUI). Kyllene ho zobrazuje a
přidává k němu náladu, komentáře a osobnost. *English version: [Pet](pet.md).*

**Na této stránce:** [Zapnout](#zapnout-a-vypnout) · [Nainstalovat a vybrat](#nainstalovat-a-vybrat-maskota) ·
[Vylíhnout vlastního](#vylíhnout-vlastního-maskota-s-ai) · [Přesunout](#přesunout-maskota) ·
[Vlastní okno](#maskot-ve-vlastním-okně) · [Stavy](#co-znamenají-stavy) · [Nálada](#nálada) ·
[Komentáře](#komentáře-v-bublině) · [Historie hlášek](#historie-hlášek) · [Oslovit jménem](#oslovit-maskota-jménem) ·
[Osobnost](#osobnost) · [Mozek maskota](#mozek-maskota) · [Opravit animace](#opravit-animace-a-délka-animací) ·
[Vlastní nálady](#dogenerovat-nálady) · [Dialogy v okně](#dialogy-maskota-ve-vlastním-okně) ·
[Jiné počítače](#na-tvých-dalších-počítačích) ·
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
- **Dvojklik** ho vrátí do výchozího rohu (vpravo dole nad polem pro psaní) a jeho bublinu zase vedle něj.
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
zůstane, dokud na ni neklikneš nebo ji nenahradí další hláška.

- Bublina se objeví **vedle maskota** a zůstane na místě, i když maskot jde dál, takže se dá přečíst; od bubliny
  k maskotovi vedou myšlenkové tečky.
- **Bublinu můžeš přetáhnout** kamkoli: další hlášky se objeví na stejném místě (pamatuje se na každém počítači
  zvlášť). Dvojklik na maskota vrátí bublinu zase vedle něj.
- Když na maskota najedeš myší, ukáže tlačítko **Historie hlášek (n)**, které otevře [všechny jeho
  hlášky](#historie-hlášek).

Nastavuje se v Nastavení › Maskot › **Komentáře**:

| Volba | Co dělá |
|---|---|
| **Režim** | **Vypnuto** (maskot mlčí), **Předpřipravené hlášky** (výchozí: hotové hlášky zdarma, které sedí na situaci a povahu maskota) nebo **AI hlášky** (každou hlášku napíše model z krátkého shrnutí situace, nikdy ne z celé konverzace; stojí tokeny, a když se nepovede, ukáže se předpřipravená). |
| **Model hlášek** | U AI hlášek: **Podle konverzace** (model konverzace, které se komentář týká) nebo jeden model, který vybereš. U drahého modelu vidíš, kolik stojí hláška. |
| **Nejdelší odmlka** | Když agent pracuje a maskot tak dlouho nic neřekl (2–30 min, výchozí 5), okomentuje, co se děje. Když nic neběží, mlčí. |
| **Jazyk** | **Podle aplikace** (jazyk Kyllene na každém počítači), *Čeština* nebo *English*. |
| **Komentovat i moje zprávy** | Výchozí vypnuto. Maskot občas zareaguje na zprávu, kterou pošleš (ne na krátké odpovědi a příkazy, nejvýš jednou za 3 minuty). U AI hlášek jde tvoje zpráva modelu hlášek. |

## Historie hlášek

**Historie hlášek** ukáže všechny hlášky, které maskot řekl od spuštění Kyllene na tomhle počítači, od nejnovější:
kdy ji řekl, na co reagoval (*Selhal nástroj …*, *Agent dokončil práci*, *Tvoje zpráva agentovi: …*) a ve které
konverzaci. Záložky nahoře je třídí na **Rozhovor s ním**, **Na tvé zprávy**, **Běh agenta** a **Z nudy** (**Vše**
ukáže všechno); **Novější** a **Starší** listují stránkami.

Otevřeš ji tak, že najedeš myší na maskota › **Historie hlášek (n)** (i u maskota na ploše), pravým tlačítkem na
maskotovi › **Historie hlášek…**, nebo přes `Ctrl+K` › *Maskot: historie hlášek…*. Hlášky z tohoto počítače
pokrývají jen toto spuštění Kyllene. Se zapnutou [synchronizací](sync.md) ukáže maskot s pamětí nebo vlastním
agentem i posledních 10 hlášek z každého tvého dalšího počítače (jen text, čas a *Na počítači …*): zařadí se časově
do **Vše** a mají vlastní záložku **Jiné počítače**.

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

Maskot s vlastním agentem ([Agent nebo Kombinace](#mozek-maskota)) má jednu osobnost: uložení **Osobnost…** přepíše
osobnost agenta (`SOUL.md`) a uložení **Osobnost (SOUL.md)** v detailu agenta (**Základ**) změní i povahu maskota
(SOUL, který jsi napsal sám, se převezme celý, takže se žádný tvůj pokyn neztratí). Už další hláška mluví s novou
osobností.

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

S vlastním agentem má maskot **jednu paměť, jedny dovednosti a jednu osobnost**, společné s tím agentem:

- **Paměť** v Nastavení › Maskot je vlastní paměť agenta, stejná poznámka jako v detailu agenta › **Paměť**. Co si
  maskot zapamatuje, přepíše nebo zapomene, uvidíš tam, a co upravíš na jednom místě, uvidí i to druhé. U **Agenta**
  se o paměť maskot stará sám (bez denního úklidu).
- **Co ví o tobě** je druhá poznámka: co si agent pamatuje o tobě, totéž jako v detailu agenta › Paměť › *Co ví o
  tobě*. Píše tam sám maskot a po konverzaci i Hermes.
- **Dovednosti** se ukážou i u **Agenta**. Kyllene je zkopíruje do profilu agenta jako dovednosti Hermesu; detail
  agenta › **Skilly** je ukáže pod nadpisem **Dovednosti maskota Boba**. Upravuj je v Nastavení › Maskot ›
  Dovednosti: změnu kopií přímo v agentovi přepíše verze maskota.
- Před každou hláškou dostane agent poslední hlášky maskota ze všech tvých počítačů, aby se neopakoval.

Obě poznámky i dovednosti cestují s maskotem na tvoje další počítače.

## Opravit animace a délka animací

**Délka animací** v Nastavení › Maskot (pod zobrazeným maskotem) určuje, jak dlouho se každá animace maskota
přehrává, od 1 do 8 vteřin (**Normální** je 1,1 s); **Vše na normální** je vrátí. Je to zdarma a platí hned.

U vylíhnutého maskota **Opravit animace…** (nabídka **⋯**, pravé tlačítko na maskotovi nebo `Ctrl+K` › *Maskot:
opravit animace…*) ukáže každou animaci zvlášť a znovu nakreslí jen ty, které vypadají špatně:

1. **Vyber animaci** v seznamu vlevo. Detail vpravo přehrává **Teď**, tedy přesně to, co maskot hraje (s počtem
   snímků; *delší verze*, když hraje delší verzi, kterou nakreslila Kyllene), a říká, kdy ji maskot hraje, třeba
   *Když agent dokončí odpověď*.
2. **Délka**: jak dlouho se tahle animace přehrává. Platí hned a zdarma; nová verze podle ní dostane i počet snímků.
3. **Nakreslit novou verzi**: napiš **Co má vypadat jinak (nepovinné)** a klikni na **Nakreslit novou verzi**. Počet
   snímků a cena jsou vidět vedle tlačítka; **Kreslí … · změnit** vybere **Poskytovatele obrázků** a **Model
   obrázků** jako při líhnutí. Kreslí se vždy jedna animace; ostatní počkají, až bude hotová.
4. Porovnej **Teď** a **Nová** a zvol **Použít novou** (maskot ji začne hned hrát) nebo **Zahodit**. **Nakreslit
   znovu** zkusí ještě jednou. Animace s novou verzí mají v seznamu štítek *nová*.
5. **Použít a zavřít** uloží všechny nové verze, které jsi nezahodil; **Zavřít (kreslí se dál)** nechá rozjeté kreslení
   doběhnout. **Vrátit původní** zahodí delší verzi a **Vrátit předchozí podobu** vrátí poslední opravu.

Delší animace dostane dost snímků na svou délku (zhruba jeden na 0,3 s, nejvýš 28) a kreslí se na několik obrázků
(zhruba jeden na šest snímků), všechny v jedné velikosti, takže maskot během ní neroste ani se nezmenšuje.

## Dogenerovat nálady

Každá nálada se zdarma přehrává úpravou běžné animace. **Dogenerovat nálady…** (nabídka **⋯**, pravé tlačítko na
maskotovi nebo `Ctrl+K` › *Maskot: dogenerovat nálady…*) místo toho nakreslí pro náladu vlastní animaci; jde to u
každého maskota, i u toho z Petdexu. Dialog funguje stejně jako [Opravit animace](#opravit-animace-a-délka-animací):

1. **Vyber náladu** v seznamu vlevo; u každé vidíš *úprava zdarma* nebo *vlastní* a nahoře, kolik nálad má vlastní
   animaci (třeba *Vlastních nálad: 2 / 21*). Detail vpravo přehrává **Teď**, tedy přesně to, co maskot v té náladě
   hraje (*úprava klidové animace zdarma* nebo *vlastní animace*).
2. **Délka**: jak dlouho se animace nálady přehrává. U vlastní animace platí hned a zdarma; nová verze podle ní
   dostane počet snímků.
3. **Nakreslit novou verzi**: napiš **Co má vypadat jinak (nepovinné)** (nejvýš 500 znaků, počítadlo ukazuje délku) a klikni
   na **Nakreslit novou verzi**. Počet snímků a cena jsou vidět vedle tlačítka (placené, jeden obrázek na náladu);
   **Kreslí … · změnit** vybere poskytovatele a model obrázků. Kreslí se vždy jedna nálada; ostatní počkají.
4. Porovnej **Teď** a **Nová** a zvol **Použít novou** (maskot ji začne hned hrát) nebo **Zahodit**. **Nakreslit
   znovu** zkusí ještě jednou. Dokud nezvolíš **Použít novou**, na maskotovi se nic nezmění.
5. **Použít a zavřít** uloží všechny nové verze, které jsi nezahodil. Když dialog zavíráš s nerozhodnutými novými
   verzemi, zeptá se *Zahodit 2 nové nálady?*: **Použít** je uloží, **Zahodit** je zahodí, **Zpět** vrátí do dialogu.
6. **Vrátit původní** u nálady s vlastní animací ji zahodí: nálada se vrátí k úpravě zdarma (zdarma).

## Dialogy maskota ve vlastním okně

**Vylíhnout maskota**, **Opravit animace** a **Dogenerovat nálady** chvíli trvají. Přesuň je do vlastního okna
tlačítkem **Otevřít v novém okně** (ikona okna v záhlaví) nebo z palety přes *Maskot: vylíhnout nového v novém okně…*,
*Maskot: opravit animace v novém okně…* a *Maskot: dogenerovat nálady v novém okně…* a pracuj v hlavním okně dál.
Cestou se nic neztratí: návrhy, poznámky i nové animace, o kterých jsi ještě nerozhodl, zůstanou.

- ✕ zavře jen okno; kreslení běží dál v hlavním okně. Až doběhne, ozve se zvoneček (třeba *Opravit animace: hotovo*);
  kliknutím uvidíš výsledek.
- **Vrátit do hlavního okna** (ikona doku v záhlaví okna) ukáže dialog zase v hlavním okně.
- Čip *n v oknech* v hlavním okně ukazuje, co které okno dělá (*Kreslí návrhy 2/4*, *Nové animace k rozhodnutí: 2*);
  kliknutím ho vyvoláš.

Víc o dialozích v okně: [Everything in Kyllene](features.md#dialogs-in-their-own-window) (anglicky).

## Na tvých dalších počítačích

Se zapnutou [synchronizací](sync.md) tě zobrazený maskot i jeho velikost následují: maskot z Petdexu se na druhém
počítači nainstaluje sám, vylíhnutý přijde i se svými obrázky, takže ho nikdy nelíhneš (a neplatíš) dvakrát. S ním
cestuje i jeho osobnost, mozek, paměť, dovednosti, vlastní nálady a délky animací. Jestli je maskot zobrazený, kde
na obrazovce sedí a jeho aktuální nálada zůstávají na každém počítači zvlášť.

## Příkazy palety a zkratky

`Ctrl+K` nabízí *Maskot…*, *Maskot: zapnout* / *Maskot: vypnout*, *Maskot: do vlastního okna* / *Maskot: zpět do
okna aplikace*, *Maskot: toulat se po okně* / *Maskot: přestat se toulat*, *Maskot: historie hlášek…*, *Maskot:
vylíhnout nového…* / *Maskot: vylíhnout nového v novém okně…*, *Maskot: opravit animace…* / *Maskot: opravit animace
v novém okně…* (u vylíhnutých maskotů) a *Maskot: dogenerovat nálady…* / *Maskot: dogenerovat nálady v novém okně…*.
Nastavení › Klávesové zkratky má skupinu **Maskot**: výběru maskota, zapnutí / vypnutí, vlastnímu oknu, líhnutí (i ve
vlastním okně) a historii hlášek dáš vlastní klávesu (**Nastavit**); jsou tam vypsané i akce myší (Shift+klik, klik,
dvojklik, Alt + kolečko).

## Když něco nejde

| Problém | Co udělat |
|---|---|
| Maskot není vidět | Zkontroluj, že je v Nastavení › Maskot zapnuté **Zobrazovat maskota** a že máš nějakého maskota vybraného (**Zobrazit**). |
| Maskot se nehýbe | Máš v systému zapnuté omezení animací; maskot pak jen stojí a ukazuje stav jedním obrázkem. |
| Maskot nic neříká | V Nastavení › Maskot › **Komentáře** je **Režim** **Vypnuto**, nebo žádný agent nepracuje (když nic neběží, mlčí). |
| AI hlášky zní jako předpřipravené | Model hlášek není na tomhle počítači připojený, nebo volání selhalo; místo něj se ukáže předpřipravená hláška. |
| Líhnutí nejde spustit | V Hermesu není nastavený poskytovatel obrázků, který umí kreslit podle referenčního obrázku; dialog vypíše, co nastavit (třeba klíč OpenRouteru v Hermes › Klíče). |
| Okno maskota na ploše si nepamatuje místo | Na čistém Waylandu (bez XWaylandu) si okno polohu neumí nastavit samo. |
