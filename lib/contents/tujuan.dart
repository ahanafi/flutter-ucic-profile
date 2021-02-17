import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ucic_profile/navbar.dart';
import 'package:ucic_profile/utils/size_config.dart';
import 'dart:convert';

class Tujuan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            onStretchTrigger: () {
              // Function callback for stretch
              return;
            },
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Tujuan'),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'images/bg-home.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset('images/ucic-logo.png'),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, 0.75),
                        end: Alignment(0.0, 0.0),
                        colors: <Color>[
                          Color(0x60000000),
                          Color(0x00000000),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(30),
                  child: FutureBuilder(
                    builder: (context, snapshot) {
                      var data = json.decode(snapshot.data.toString());
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Tujuan",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: SizeConfig.horizontalBlock * 6,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            data['other_about']['goals']['opening'],
                            style: TextStyle(
                                fontSize: SizeConfig.horizontalBlock * 4,
                                height: 1.5),
                          ),
                          Text(
                            data['other_about']['goals']['text'],
                            style: TextStyle(
                                fontSize: SizeConfig.horizontalBlock * 4,
                                height: 1.5),
                          ),
                        ],
                      );
                    },
                    future: DefaultAssetBundle.of(context)
                        .loadString("assets/ucic-data.json"),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
      drawer: NavBar(),
    );
  }
}
