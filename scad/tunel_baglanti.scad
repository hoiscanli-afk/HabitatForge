// ============================================================
// Hamster Habitat — Tünel Bağlantı Halkası
// İki tünel ucunu veya iki panel soketini birleştirir
// r=25 ic gecis, r=27/32 soket
// Toplam yukseklik: 23mm (10 + 3 + 10)
// ============================================================
$fn = 128;

module tunel_baglanti() {
  color("tomato", 0.9)
  difference() {
    union() {
      // Sol soket (Z: 0-10)
      difference() { cylinder(r=27, h=10); cylinder(r=25, h=11); }
      difference() { cylinder(r=32, h=10); cylinder(r=30, h=11); }
      // Orta tutma halkasi (Z: 10-13)
      translate([0, 0, 10])
        difference() { cylinder(r=32, h=3); cylinder(r=25, h=4); }
      // Sag soket (Z: 13-23)
      translate([0, 0, 13]) {
        difference() { cylinder(r=27, h=10); cylinder(r=25, h=11); }
        difference() { cylinder(r=32, h=10); cylinder(r=30, h=11); }
      }
    }
    // Ic gecis deliği — tam boydan
    cylinder(r=25, h=24);
  }
}

tunel_baglanti();
