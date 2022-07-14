import 'package:firebase_app_web/models/burc_model.dart';
import 'package:firebase_app_web/screens/burc_listeleri.dart';
import 'package:flutter/material.dart';

class BurcDetaylari extends StatelessWidget {
  int gelenIndex;
  late Burc secilenBurc;

  BurcDetaylari(this.gelenIndex);
  @override
  Widget build(BuildContext context) {
    secilenBurc = BurcListesi.tumBurclar[gelenIndex];
    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.purple,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAdi_ + " Burcu ve Özellikleri"),
              background: Image.asset(
                "img/" + secilenBurc.burcBuyukResim_,
                fit: BoxFit.cover,
              ),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  secilenBurc.burcDetayi_,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
