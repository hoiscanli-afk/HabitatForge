// ============================================================
// Hamster Habitat — Kapı Paneli
// 110x3x110mm, merkez 80mm delik (tünel geçişi / kapı)
// ============================================================
$fn = 128;

module panel_kapi() {
  color("lightyellow", 0.9)
  difference() {
    cube([110, 3, 110]);
    // 4 kenar — 2x notch (n1~36.7, n2~73.3 merkez)
    // 4 kenar — ikili notch kumesi (3mm aralik, merkez 55mm)
    translate([50.5, -0.1,  -0.1]) cube([3, 3.2, 5]);   // alt 1
    translate([56.6, -0.1,  -0.1]) cube([3, 3.2, 5]);   // alt 2
    translate([50.5, -0.1,   105]) cube([3, 3.2, 5]);   // ust 1
    translate([56.6, -0.1,   105]) cube([3, 3.2, 5]);   // ust 2
    translate([ -0.1, -0.1, 50.5]) cube([5, 3.2, 3]);   // sol 1
    translate([ -0.1, -0.1, 56.6]) cube([5, 3.2, 3]);   // sol 2
    translate([  105, -0.1, 50.5]) cube([5, 3.2, 3]);   // sag 1
    translate([  105, -0.1, 56.6]) cube([5, 3.2, 3]);   // sag 2
    // 40mm kapi deligi, merkez Z=28 (alt kenara 8mm bosluk, notch rasina mesafe)
    translate([55, -0.1, 28]) rotate([-90, 0, 0]) cylinder(r=20, h=3.2);
  }
}

panel_kapi();
