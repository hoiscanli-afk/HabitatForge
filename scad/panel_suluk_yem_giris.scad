// ============================================================
// Hamster Habitat — Suluk Askisi / Yem Kapisi Paneli
// 110x3x110mm panel + merkezde r=32.5mm delik
// Suluk: konik sise flansindan asılır | Yem: kapak_yem ile kapanir
// ============================================================
$fn = 128;

module panel_suluk() {
  color("lightcyan", 0.9)
  difference() {
    cube([110, 3, 110]);

    // suluk deligi — tam merkez, flans panel yuzeyine oturur
    translate([55, -0.1, 55]) rotate([-90, 0, 0]) cylinder(r=32.5, h=3.2);

    // ust kenar — 2 notch
    translate([50.5, -0.1, 105]) cube([3, 3.2, 5]);
    translate([56.6, -0.1, 105]) cube([3, 3.2, 5]);
    // alt kenar — 2 notch
    translate([50.5, -0.1,  -0.1]) cube([3, 3.2, 5]);
    translate([56.6, -0.1,  -0.1]) cube([3, 3.2, 5]);
    // sol kenar — 2 notch
    translate([ -0.1, -0.1, 50.5]) cube([5, 3.2, 3]);
    translate([ -0.1, -0.1, 56.6]) cube([5, 3.2, 3]);
    // sag kenar — 2 notch
    translate([  105, -0.1, 50.5]) cube([5, 3.2, 3]);
    translate([  105, -0.1, 56.6]) cube([5, 3.2, 3]);
  }
}

panel_suluk();
