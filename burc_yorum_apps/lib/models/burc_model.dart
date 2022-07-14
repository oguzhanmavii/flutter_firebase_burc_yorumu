class Burc {
  String burcAdi;
  String burcTarihi;
  String burcDetayi;
  String burcKucukResim;
  String burcBuyukResim;

  Burc(this.burcAdi, this.burcTarihi, this.burcDetayi, this.burcKucukResim,
      this.burcBuyukResim);

  String get burcBuyukResim_ => burcBuyukResim;

  set burcBuyukResim_(String value) {
    burcBuyukResim = value;
  }

  String get burcKucukResim_ => burcKucukResim;

  // ignore: unnecessary_getters_setters
  set burcKucukResim_(String value) {
    burcKucukResim = value;
  }

  String get burcDetayi_ => burcDetayi;

  set burcDetayi_(String value) {
    burcDetayi = value;
  }

  String get burcTarihi_ => burcTarihi;

  set burcTarihi_(String value) {
    burcTarihi = value;
  }

  String get burcAdi_ => burcAdi;

  set burcAdi_(String value) {
    burcAdi = value;
  }
}
