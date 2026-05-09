// ============================================================
// Hamster Habitat — Düz Panel (solid, notchlu)
// Boyut: 110x3x110mm | 4 kenarda 2x connector yuvası
// ============================================================
$fn = 32;

module panel_duz() {
  n1 = 50.5;  // 1. notch baslangici — ikili kume, 3mm aralikli, merkez 55mm
  n2 = 56.6;  // 2. notch baslangici

  color("lightblue", 0.8)
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
  }
}

panel_duz();
