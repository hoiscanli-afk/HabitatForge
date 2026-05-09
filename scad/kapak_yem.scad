// ============================================================
// Hamster Habitat — Yem Kapagi (Suluk Askisi / Yem Kapisi icin)
// Flans: r=36mm, 2mm kalinlik — panel yuzeyine oturur
// Plug:  r=32.5mm, 5mm derinlik — deliğe exact fit girer
// ============================================================
$fn = 128;

module kapak_yem() {
  color("lightsalmon", 0.9)
  union() {
    // flans — panel yuzeyinde durur
    cylinder(r=36, h=2);
    // plug — deliğe girer, 3mm et kalinlikli ic bos halka
    translate([0, 0, 2])
      difference() {
        cylinder(r=32.5, h=5);
        translate([0, 0, -0.1]) cylinder(r=29.5, h=5.2);
      }
  }
}

kapak_yem();
