import 'package:dort/konu_item.dart';
import 'package:dort/model/konu.dart';
import 'package:flutter/material.dart';
import 'package:dort/data/strings.dart';

class KonuListesi extends StatelessWidget {
  late List<Konu> tumKonular = [];
  KonuListesi() {
    tumKonular = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Konular"),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return KonuItem(
              listelenenKonu: tumKonular[index],
            );
          },
          itemCount: tumKonular.length,
        ),
      ),
    );
  }

  List<Konu> veriKaynaginiHazirla() {
    List<Konu> gecici = [];

    for (int i = 0; i < 12; i++) {
      var konuAdi = Strings.KONU_ADLARI[i];
      var konuTarih = Strings.KONU_TARIHLERI[i];
      var konuDetay = Strings.KONU_GENEL_OZELLIKLERI[i];
      var konuKucukResim =
          Strings.KONU_ADLARI[i].toLowerCase() + '${i + 1}.png';
      var konuBuyukResim =
          Strings.KONU_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';
      Konu eklenecekKonu =
          Konu(konuAdi, konuTarih, konuDetay, konuKucukResim, konuBuyukResim);
      gecici.add(eklenecekKonu);
    }
    return gecici;
  }
}
