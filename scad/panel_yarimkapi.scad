// ============================================================
// Hamster Habitat — Boru Giris Paneli
// 110x3x110mm panel + alt kenarda r=35 yari daire acikligi
// Merkez X=55 Z=0 (kenar ortasi) — dogal yari klip
// Alt kenardaki notchlar acikliga duser, diger 3 kenar normal
// ============================================================
$fn = 128;

module panel_boru() {
  color("lightsteelblue", 0.9)
  difference() {
    cube([110, 3, 110]);

    // r=35 yari daire acikligi — merkez alt kenarda
    translate([55, -0.1, 0]) rotate([-90, 0, 0]) cylinder(r=35, h=3.2);

    // ust kenar — 2 notch
    translate([50.5, -0.1, 105]) cube([3, 3.2, 5]);
    translate([56.6, -0.1, 105]) cube([3, 3.2, 5]);
    // sol kenar — 2 notch
    translate([ -0.1, -0.1, 50.5]) cube([5, 3.2, 3]);
    translate([ -0.1, -0.1, 56.6]) cube([5, 3.2, 3]);
    // sag kenar — 2 notch
    translate([  105, -0.1, 50.5]) cube([5, 3.2, 3]);
    translate([  105, -0.1, 56.6]) cube([5, 3.2, 3]);
  }
}

panel_boru();
