// ============================================================
// Hamster Habitat — Tunel Paneli
// 110x3x110mm panel + on yuzde tunel_baglanti tek kol (10mm)
// Tunel (outer r=25) kola tam oturur, arka yuz duz
// ============================================================
$fn = 128;

module panel_tunel() {
  color("lightyellow", 0.9)
  difference() {
    union() {
      // panel govdesi
      cube([110, 3, 110]);
      // tek kol — on yuzden 10mm cikiyor
      translate([55, -10, 55]) rotate([-90, 0, 0]) {
        difference() { cylinder(r=27,h=10); cylinder(r=25,h=11); }  // ic kol
        difference() { cylinder(r=32,h=10); cylinder(r=30,h=11); }  // dis kol
        translate([0,0,10]) difference() { cylinder(r=32,h=3); cylinder(r=25,h=4); }  // orta halka
      }
    }
    // 4 kenar — 2x notch
    // 4 kenar — ikili notch kumesi (3mm aralik, merkez 55mm)
    translate([50.5, -0.1,  -0.1]) cube([3, 3.2, 5]);   // alt 1
    translate([56.6, -0.1,  -0.1]) cube([3, 3.2, 5]);   // alt 2
    translate([50.5, -0.1,   105]) cube([3, 3.2, 5]);   // ust 1
    translate([56.6, -0.1,   105]) cube([3, 3.2, 5]);   // ust 2
    translate([ -0.1, -0.1, 50.5]) cube([5, 3.2, 3]);   // sol 1
    translate([ -0.1, -0.1, 56.6]) cube([5, 3.2, 3]);   // sol 2
    translate([  105, -0.1, 50.5]) cube([5, 3.2, 3]);   // sag 1
    translate([  105, -0.1, 56.6]) cube([5, 3.2, 3]);   // sag 2
    // ic gecis deliği — kol + panel boyunca
    translate([55, -10.1, 55]) rotate([-90, 0, 0]) cylinder(r=25, h=13.2);
  }
}

panel_tunel();
