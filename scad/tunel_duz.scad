// ============================================================
// Hamster Habitat — Düz Tünel Parçası (kaymazlı taban dahil)
// Outer r=25 | Inner r=22 | Varsayılan 100mm
// Taban: 50mm geniş düzlem + enine tırtıklar (kaymazlık)
// Baskı: yatay bas, taban tablaya gelsin
// ============================================================
$fn = 128;

module tunel_duz(uzunluk = 100) {
  plat_w      = 50;
  plat_t      = 3;
  plat_y      = -22;   // ic silindirin en alt noktasi (r=22)
  plat_offset = 10;    // yuva derinligi kadar uclardan cekilmis

  tirtik_w = 1.5;
  tirtik_h = 2;
  aralik   = 7;

  color("lightgreen", 0.8)
  union() {
    // Ana tünel
    difference() {
      cylinder(r=25, h=uzunluk);
      translate([0, 0, -0.1]) cylinder(r=22, h=uzunluk + 0.2);
    }

    // Taban platformu + tırtıklar — uçlardan plat_offset kadar cekilmis, dis ile kirpilmis
    intersection() {
      union() {
        translate([-plat_w/2, plat_y, plat_offset])
          cube([plat_w, plat_t, uzunluk - 2*plat_offset]);
        for(i = [0 : floor((uzunluk - 2*plat_offset - aralik) / aralik)])
          translate([-plat_w/2, plat_y + plat_t, plat_offset + aralik/2 + i*aralik])
            cube([plat_w, tirtik_h, tirtik_w]);
      }
      cylinder(r=24.9, h=uzunluk);
    }
  }
}

tunel_duz();
