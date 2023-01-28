void main() {
  String k_cevap;
  Soru_Testi testim = new Soru_Testi();

  print(testim.hangi_sorudayiz());
  testim.soru_metni_yaz();

  k_cevap = "A";
  testim.cevap_kontrol(k_cevap);

  testim.bir_sornraki_soru();
  print(testim.hangi_sorudayiz());
  testim.soru_metni_yaz();
  k_cevap = "D";
  testim.cevap_kontrol(k_cevap);

  testim.skor_yaz();
}

class Soru_Testi {
  int _guncel_soru = 0;

  List<bool> d_y_durumu = [];

  // sorular
  List<Soru> sorular = [
    Soru(
        soru_metni: "turkiyenin baskenti",
        a: "ankara",
        b: "bursa",
        c: "istanbul",
        d: "aydın",
        cevap: "A"),
    Soru(
        soru_metni: "2 kere 2 kaçtır",
        a: "1",
        b: "2",
        c: "3",
        d: "4",
        cevap: "D")
  ];

  void soru_metni_yaz() {
    print("-----------------------------");
    print(sorular[_guncel_soru].Soru_basligi);
    print(sorular[_guncel_soru].A_sikki);
    print(sorular[_guncel_soru].B_sikki);
    print(sorular[_guncel_soru].C_sikki);
    print(sorular[_guncel_soru].D_sikki);
  }

  int hangi_sorudayiz() {
    return _guncel_soru;
  }

  void bir_sornraki_soru() {
    _guncel_soru++;
  }

  void cevap_kontrol(String k_cevabi) {
    if (sorular[_guncel_soru].Cevap == k_cevabi) {
      d_y_durumu.add(true);
    } else {
      d_y_durumu.add(false);
    }
  }

  void skor_yaz() {
    print(d_y_durumu);
  }
}

class Soru {
  String? Soru_basligi;
  String? A_sikki;
  String? B_sikki;
  String? C_sikki;
  String? D_sikki;
  String? Cevap;

  Soru(
      {String? soru_metni,
      String? a,
      String? b,
      String? c,
      String? d,
      String? cevap}) {
    Soru_basligi = soru_metni;
    A_sikki = a;
    B_sikki = b;
    C_sikki = c;
    D_sikki = d;
    Cevap = cevap;
  }
}
