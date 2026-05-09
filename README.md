# 🐹 HabitatForge v3

**A browser-based modular hamster habitat designer — no installation needed.**  
Drag, drop, and design multi-level hamster habitats. Export panel lists and print connectors directly.

> Built by a geology engineer with no prior web dev experience — using AI as a collaborator.  
> This project is proof that domain knowledge + curiosity + AI = real, usable tools.

---

## ✨ Features

- 🧱 **Modular panel system** — 110×110mm panels snap together on a 120mm grid
- 🏗️ **Multi-level layouts** — stack floors freely, use ARA MOD for between-floor connections
- 🚪 Multiple panel types: flat, grid, door, half-door, tunnel entry, water bottle slot, tunnel pipe, mesh pipe
- 🔗 **Auto connector rings** — side-by-side pipes automatically generate connection rings
- 💾 **Save/Load** — JSON export & import, auto-saved to localStorage
- 📋 **BOM counter** — live bill of materials for every panel type
- 🎥 **Fly-through mode** — WASD flight camera + preset views
- 🖨️ **3D print ready** — all connectors modeled in OpenSCAD, STL files included

---

## 🚀 How to use

1. Download `habitatforge_v3.html`
2. Open it in any modern browser — **no server needed**
3. Start placing panels!

---

## 🖨️ 3D Printing

All printable parts are in the `/scad` folder:

| File | Description |
|------|-------------|
| `panel_duz.stl` | Flat panel |
| `panel_kafes.stl` | Grid/mesh panel |
| `panel_kapi.stl` | Door panel |
| `panel_yari.stl` | Half-open panel |
| `panel_yarimkapi.stl` | Half-door panel |
| `panel_tunel.stl` | Tunnel entry panel |
| `panel_suluk_yem_giris.stl` | Water bottle / food slot panel |
| `tunel_duz.stl` | Straight tunnel pipe |
| `tunel_parmaklik.stl` | Mesh tunnel pipe |
| `tunel_baglanti.stl` | Tunnel connection ring |
| `kenar_baglantilar_v.stl (x4)` | Edge connectors (T, +, corner, straight) |
| `kapak_yem.stl` | Feed cap |

**Print settings:** PLA, 0.2mm layer height, 20% infill.  
Connectors use exact-fit tolerance (no added clearance — designed for tight fit).

---

## 📐 Panel Dimensions

| Component | Size |
|-----------|------|
| Panel | 110 × 3 × 110 mm |
| Grid step (STEP) | 120 mm |
| Connector | 32 × 32 × 3 mm (double piece, 3mm gap) |

---

## 🧠 How this was made

I'm a geologist, not a developer. I used [Claude](https://claude.ai) as my AI pair-programmer — describing what I wanted, understanding how it worked, iterating until it felt right. Every feature in this tool came from a real problem I faced while designing habitats for a 10-year-old.

This is what AI-assisted making looks like from the outside of the tech industry.

---

## 📄 License

MIT — free to use, modify, and share. If you build something cool with it, I'd love to see it!

---

<p align="center">Made with 🐹 + 🤖 + a lot of iterations</p>
