// ============================================================
// Hamster Habitat — Yarı Panel (alt solid, üst kafes)
// Boyut: 110x3x110mm | Notchlar yeni 3mm klips sistemine uygun
//
// Varyantlar (slicer veya assembly'de döndür):
//   Alt solid  / Üst kafes  → panel_yari() olduğu gibi
//   Sol solid  / Sag kafes  → rotate([0, 0,  90]) panel_yari();
//   Üst solid  / Alt kafes  → rotate([0, 0, 180]) panel_yari();
//   Sag solid  / Sol kafes  → rotate([0, 0, 270]) panel_yari();
// ============================================================
$fn = 32;

module panel_yari() {
  bar_w  = 2;   // cubuk kalinligi mm
  gap    = 9;   // aralik (max 10mm — hamster gecemesin)
  margin = 10;  // kafes bolumunde kenar boslugu
  mid    = 55;  // solid / kafes siniri (Z)

  color("mediumpurple", 0.9)
  difference() {
    cube([110, 3, 110]);

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

    // Ust yari kafes bosluklari
    // Z: mid+margin (65) → 110-margin (100) = 35mm bar yuksekligi
    for(i = [0:7])
      translate([margin + bar_w + i*(bar_w + gap), -0.1, mid + margin])
        cube([gap, 3.2, 110 - mid - 2*margin]);
  }
}

panel_yari();
