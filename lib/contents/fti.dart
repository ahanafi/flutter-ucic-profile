import 'package:flutter/material.dart';
import 'package:ucic_profile/contents/fti/dkv.dart';
import 'package:ucic_profile/contents/fti/mi.dart';
import 'package:ucic_profile/contents/fti/si.dart';
import 'package:ucic_profile/contents/fti/ti.dart';

class FakultasTeknologiInformasi extends StatefulWidget {
  const FakultasTeknologiInformasi({Key key}) : super(key: key);
  @override
  _FTIState createState() => _FTIState();
}

class _FTIState extends State<FakultasTeknologiInformasi>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  final List<Tab> _ftiTabs = <Tab>[
    Tab(text: "TI"),
    Tab(text: "SI"),
    Tab(text: "DKV"),
    Tab(text: "MI")
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
          TeknikInformatika(),
          SistemInformasi(),
          DesainKomunikasiVisual(),
          ManajemenInformatika()
        ],
      ),
    );
  }
}
