// ============================================================
// Hamster Habitat — Kafes Paneli (ızgara, notchlu)
// Çubuk: 2mm | Aralık: 9mm (maks 10mm güvenli)
// ============================================================
$fn = 32;

module panel_kafes() {
  bar_w  = 2;   // çubuk kalınlığı mm
  gap    = 9;   // aralık (max 10mm — hamster geçemesin)
  margin = 10;  // kenardan iç boşluk
  n1 = 50.5;    // 1. notch baslangici — ikili kume, 3mm aralikli, merkez 55mm
  n2 = 56.6;    // 2. notch baslangici

  color("lightcoral", 0.9)
  difference() {
    cube([110, 3, 110]);
    // alt kenar — 2 notch
    translate([n1, -0.1,  -0.1]) cube([3, 3.2, 5]);
    translate([n2, -0.1,  -0.1]) cube([3, 3.2, 5]);
    // ust kenar — 2 notch
    translate([n1, -0.1,   105]) cube([3, 3.2, 5]);
    translate([n2, -0.1,   105]) cube([3, 3.2, 5]);
    // sol kenar — 2 notch
    translate([ -0.1, -0.1, n1]) cube([5, 3.2, 3]);
    translate([ -0.1, -0.1, n2]) cube([5, 3.2, 3]);
    // sag kenar — 2 notch
    translate([  105, -0.1, n1]) cube([5, 3.2, 3]);
    translate([  105, -0.1, n2]) cube([5, 3.2, 3]);
    // Parmakl ık boşlukları — dikey (Z boyunca)
    for(i = [0:7])
      translate([margin + bar_w + i*(bar_w + gap), -0.1, margin])
        cube([gap, 3.2, 110 - 2*margin]);
  }
}

panel_kafes();
