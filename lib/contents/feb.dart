import 'package:flutter/material.dart';
import 'package:ucic_profile/contents/feb/akuntansi.dart';
import 'package:ucic_profile/contents/feb/ka.dart';
import 'package:ucic_profile/contents/feb/manajemen.dart';
import 'package:ucic_profile/contents/feb/mb.dart';

class FakultasEkonomiBisnis extends StatefulWidget {
  const FakultasEkonomiBisnis({Key key}) : super(key: key);
  @override
  FEBState createState() => FEBState();
}

class FEBState extends State<FakultasEkonomiBisnis>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  final List<Tab> _ftiTabs = <Tab>[
    Tab(text: "Manajemen"),
    Tab(text: "Akuntansi"),
    Tab(text: "MB"),
    Tab(text: "KA")
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _ftiTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: _ftiTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Manajemen(),
          Akuntansi(),
          ManajemenBisnis(),
          KomputerisasiAkuntansi()
        ],
      ),
    );
  }
}
