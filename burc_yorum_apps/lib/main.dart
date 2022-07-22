import 'package:firebase_app_web/screens/burc_detaylari.dart';
import 'package:firebase_app_web/screens/burc_listeleri.dart';
import 'package:firebase_app_web/screens/splash_screens.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/kayit_ol.dart';
import 'services/authentication_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Widget currentPage = const SignUpPage();
  AuthClass authClass = AuthClass();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Burc Rehberi",
      initialRoute: "/SplashEkrani",
      routes: {
        "/": (context) => const SplashEkrani(),
        "/BurcListesi": (context) => BurcListesi(),
        "/BurcDetaylari": (context) => BurcDetaylari(1),
      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> dosyaElemanlari = settings.name!.split("/");
        if (dosyaElemanlari[1] == "BurcDetaylari") {
          return MaterialPageRoute(
              builder: (context) =>
                  BurcDetaylari(int.parse(dosyaElemanlari[2])));
        }
        return null;
      },
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Widget currentPage = const SignUpPage();
//   AuthClass authClass = AuthClass();
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SignUpPage(),
//     );
//   }
// }
