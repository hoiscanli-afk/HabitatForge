// ============================================================
// Hamster Habitat — Dikey Kup Kenar Baglantilar
// H ekseni Z yonunde (30mm dikey), kollar X ve Y'ye uzaniyor
// Panel kenari (3mm kirish) slottan geciyor
// Yerlesim: translate([X, Y, Z_mid]) connector()
//   On-sag  kenari: translate([ 92.5, -14.5, Z]) L_on_sag()
//   On-sol  kenari: translate([-14.5, -14.5, Z]) L_on_sol()
//   Arka-sag kenari: translate([ 92.5, 124.5, Z]) L_arka_sag()
//   Arka-sol kenari: translate([-14.5, 124.5, Z]) L_arka_sol()
// ============================================================
$fn = 32;

H = 3.0;   // yukseklik (Z) — ince klips, exact fit notch ile
K = 3.0;   // slot genisligi (panel kalinligi)

module saft_v() {
  translate([10, 10, 0]) cube([12, 12, H]);
}

// +X yonune uzaniyor — slot Y=14.5..17.5 (3mm in Y)
module kol_xsag_v() {
  difference() {
    translate([22, 10, 0]) cube([10, 12, H]);
    translate([21.9, 14.5, -0.1]) cube([10.2, K, H+0.2]);
  }
}

// -X yonune uzaniyor — slot Y=14.5..17.5
module kol_xsol_v() {
  difference() {
    translate([0, 10, 0]) cube([10, 12, H]);
    translate([-0.1, 14.5, -0.1]) cube([10.2, K, H+0.2]);
  }
}

// +Y yonune uzaniyor — slot X=14.5..17.5 (3mm in X)
module kol_yust_v() {
  difference() {
    translate([10, 22, 0]) cube([12, 10, H]);
    translate([14.5, 21.9, -0.1]) cube([K, 10.2, H+0.2]);
  }
}

// -Y yonune uzaniyor — slot X=14.5..17.5
module kol_yalt_v() {
  difference() {
    translate([10, 0, 0]) cube([12, 10, H]);
    translate([14.5, -0.1, -0.1]) cube([K, 10.2, H+0.2]);
  }
}

// --- Connector ailesi (dikey kup icin) ---

module kenar_plus_v() {  // 4 kol — T kavsaklar, orta panel birlesimi
  color("tomato", 0.9)
  union() { saft_v(); kol_xsol_v(); kol_xsag_v(); kol_yalt_v(); kol_yust_v(); }
}

module kenar_T_v() {     // 3 kol
  color("orange", 0.9)
  union() { saft_v(); kol_xsol_v(); kol_xsag_v(); kol_yust_v(); }
}

// 4 L varyanti — dikey kup 4 kenari icin
module L_on_sag() {      // on(Y=0..3) + sag(X=107..110) kenari
  color("dodgerblue", 0.9)
  union() { saft_v(); kol_xsag_v(); kol_yalt_v(); }
}

module L_on_sol() {      // on(Y=0..3) + sol(X=0..3) kenari
  color("dodgerblue", 0.9)
  union() { saft_v(); kol_xsol_v(); kol_yalt_v(); }
}

module L_arka_sag() {    // arka(Y=107..110) + sag(X=107..110) kenari
  color("dodgerblue", 0.9)
  union() { saft_v(); kol_xsag_v(); kol_yust_v(); }
}

module L_arka_sol() {    // arka(Y=107..110) + sol(X=0..3) kenari
  color("dodgerblue", 0.9)
  union() { saft_v(); kol_xsol_v(); kol_yust_v(); }
}

module kenar_duz_v() {   // 2 kol duz (panel uzantisi icin)
  color("gold", 0.9)
  union() { saft_v(); kol_xsol_v(); kol_xsag_v(); }
}

module kenar_son_v() {   // 1 kol (kenar sonu / kap)
  color("yellowgreen", 0.9)
  union() { saft_v(); kol_xsag_v(); }
}

// Preview: hepsini yan yana goster
translate([  0, 0, 0]) kenar_plus_v();
translate([ 40, 0, 0]) kenar_T_v();
translate([ 80, 0, 0]) L_on_sag();
translate([120, 0, 0]) kenar_duz_v();
translate([160, 0, 0]) kenar_son_v();
