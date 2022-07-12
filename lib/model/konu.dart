class Konu {
  final String _konuAdi;
  final String _konuTarihi;
  final String _konuDetayi;
  final String _konuKucukResim;
  final String _konuBuyukResim;

  get konuAdi => this._konuAdi;
  get konuTarihi => this._konuTarihi;
  get konuDetayi => this._konuDetayi;
  get konuKucukResim => this._konuKucukResim;
  get konuBuyukResim => this._konuBuyukResim;

  Konu(this._konuAdi, this._konuTarihi, this._konuDetayi, this._konuKucukResim,
      this._konuBuyukResim);

  @override
  String toString() {
    return '$_konuAdi - $_konuBuyukResim';
  }
}
