import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ucic_profile/navbar.dart';
import 'package:ucic_profile/utils/size_config.dart';
import 'dart:convert';

class KataSambutan extends StatelessWidget {
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
            expandedHeight: 400.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Dr. Chandra Lukita, SE., MM.'),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'images/rektor.jpeg',
                    fit: BoxFit.cover,
                  ),
                  //Image.asset(),
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
                  padding: EdgeInsets.all(30),
                  child: FutureBuilder(
                    builder: (context, snapshot) {
                      var data = json.decode(snapshot.data.toString());
                      return Container(
                        child: Text(
                          data['opening_speech'],
                          style: TextStyle(
                              fontSize: SizeConfig.horizontalBlock * 4,
                              height: 1.5),
                        ),
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
