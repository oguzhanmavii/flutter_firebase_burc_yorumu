import 'package:firebase_app_web/models/burc_model.dart';
import 'package:firebase_app_web/screens/kayit_girisi.dart';
import 'package:firebase_app_web/utilities/burc_bilgileri.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  static late List<Burc> tumBurclar;
  @override
  Widget build(BuildContext context) {
    tumBurclar = veriKaynaginiHazirla();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInPage()));
              },
              icon: Icon(Icons.login))
        ],
        title: const Text('Burc Rehberi'),
      ),
      body: burcListesiniHazirla(),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> burclar = [];

    for (int i = 0; i < 12; i++) {
      String kucukResim =
          BurcBilgileri.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      String buyukResim = BurcBilgileri.BURC_ADLARI[i].toLowerCase() +
          "_buyuk" +
          "${i + 1}.png";

      Burc eklenecekBurc = Burc(
          BurcBilgileri.BURC_ADLARI[i],
          BurcBilgileri.BURC_TARIHLERI[i],
          BurcBilgileri.BURC_GENEL_OZELLIKLERI[i],
          kucukResim,
          buyukResim);
      burclar.add(eklenecekBurc);
    }
    return burclar;
  }

  Widget burcListesiniHazirla() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return tekSatirdaBurc(context, index);
      },
      itemCount: tumBurclar.length,
    );
  }

  Widget tekSatirdaBurc(BuildContext context, int index) {
    Burc listeyeEklenecekler = tumBurclar[index];

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          onTap: () => Navigator.pushNamed(context, "/BurcDetaylari/$index"),
          leading: Image.asset(
            "img/" + listeyeEklenecekler.burcKucukResim_,
            width: 64,
            height: 64,
          ),
          title: Text(
            listeyeEklenecekler.burcAdi_,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
          ),
          subtitle: Text(
            listeyeEklenecekler.burcTarihi_,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          trailing: const Icon(
            Icons.arrow_forward,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}
