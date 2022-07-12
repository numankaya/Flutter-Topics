import 'package:dort/konu_detay.dart';
import 'package:dort/model/konu.dart';
import 'package:flutter/material.dart';

class KonuItem extends StatelessWidget {
  final Konu listelenenKonu;
  const KonuItem({required this.listelenenKonu, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, "konuDetay",
                  arguments: listelenenKonu);
            },
            leading: Image.asset(
              "images/" + listelenenKonu.konuKucukResim,
            ),
            title: Text(
              listelenenKonu.konuAdi,
              style: myTextStyle.headline6,
            ),
            subtitle: Text(
              listelenenKonu.konuTarihi,
              style: myTextStyle.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
