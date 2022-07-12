import 'package:dort/konu_detay.dart';
import 'package:dort/konu_listesi.dart';
import 'package:dort/model/konu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => KonuListesi());

      case '/konuDetay':
        final Konu secilen = settings.arguments as Konu;
        return MaterialPageRoute(
            builder: (context) => KonuDetay(secilenKonu: secilen));
    }
  }
}
