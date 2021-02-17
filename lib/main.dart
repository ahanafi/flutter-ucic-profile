import 'package:flutter/material.dart';
import 'package:ucic_profile/contents/author.dart';
import 'package:ucic_profile/contents/feb.dart';
import 'package:ucic_profile/contents/home.dart';
import 'package:ucic_profile/contents/kata_sambutan.dart';
import 'package:ucic_profile/contents/visi_misi.dart';
import 'package:ucic_profile/contents/tujuan.dart';
import 'package:ucic_profile/contents/sejarah.dart';
import 'package:ucic_profile/contents/fti.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/home',
        routes: {
          '/home': (BuildContext context) {
            return Home();
          },
          '/kata-sambutan': (BuildContext context) {
            return KataSambutan();
          },
          '/visi-misi': (BuildContext context) {
            return VisiMisi();
          },
          '/tujuan': (BuildContext context) {
            return Tujuan();
          },
          '/sejarah': (BuildContext context) {
            return Sejarah();
          },
          '/fti': (BuildContext context) {
            return FakultasTeknologiInformasi();
          },
          '/feb': (BuildContext context) {
            return FakultasEkonomiBisnis();
          },
          '/author': (BuildContext context) {
            return Author();
          },
        });
  }
}
