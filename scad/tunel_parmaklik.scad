// ============================================================
// Hamster Habitat — Parmaklıklı Tünel (kafes tüp + kaymazlı taban)
// Outer r=25 | Inner r=21 | 12 boylamasına yuva | Varsayılan 100mm
// Uçlarda 15mm solid soket bölgesi
// Taban: 50mm geniş düzlem + enine tırtıklar (kaymazlık)
// Baskı: yatay bas, taban tablaya gelsin
// ============================================================
$fn = 128;

module tunel_parmaklik(uzunluk = 100) {
  n_slots  = 12;    // boylamasina yuva sayisi (30° aralik)
  slot_w   = 8;     // yuva genisligi mm
  end_l    = 15;    // her uçta solid soket mm

  plat_w      = 50;    // taban platform genisligi mm
  plat_t      = 3;     // platform kalinligi mm
  plat_y      = -21;   // ic silindirin en alt noktasi (r=21)
  plat_offset = 15;    // end_l kadar uclardan cekilmis — yuva bolgesi temiz

  tirtik_w = 1.5;   // tirtik genisligi mm (Z yonu)
  tirtik_h = 2;     // tirtik yuksekligi mm (Y yonu)
  aralik   = 7;     // tirtikler arasi mm

  color("lightgreen", 0.85)
  union() {
    // Ana tünel gövdesi (yuvalı)
    difference() {
      cylinder(r=25, h=uzunluk);
      // İç geçiş
      translate([0, 0, -0.1]) cylinder(r=21, h=uzunluk + 0.2);
      // 12 boylamasına yuva — sadece orta kısım
      for(a = [0 : 360/n_slots : 359])
        rotate([0, 0, a])
          translate([-slot_w/2, 18, end_l])
            cube([slot_w, 10, uzunluk - 2*end_l]);
    }

    // Taban platformu + tırtıklar — uclardan plat_offset cekilmis, dis ile kirpilmis
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

tunel_parmaklik();
