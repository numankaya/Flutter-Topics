import 'package:dort/model/konu.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class KonuDetay extends StatefulWidget {
  final Konu secilenKonu;
  const KonuDetay({required this.secilenKonu, Key? key}) : super(key: key);

  @override
  State<KonuDetay> createState() => _KonuDetayState();
}

class _KonuDetayState extends State<KonuDetay> {
  Color appbarRengi = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    // TODO: implement initState
    appbarRenginiBul();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appbarRengi,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.secilenKonu.konuAdi + "Konu ve Özellikleri"),
              background: Image.asset(
                'images/' + widget.secilenKonu.konuBuyukResim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  widget.secilenKonu.konuDetayi,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void appbarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
      AssetImage('images/${widget.secilenKonu.konuBuyukResim}'),
    );
    setState(() {});
    appbarRengi = _generator.dominantColor!.color;
  }
}
