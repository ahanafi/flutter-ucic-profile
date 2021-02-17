import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ucic_profile/utils/size_config.dart';

class ManajemenInformatika extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Container(
                          child: Image.asset('images/fti/mi.png'),
                          padding: EdgeInsets.only(bottom: 30),
                        ),
                      ),
                      Text("D3 - Manajemen Informatika",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: SizeConfig.horizontalBlock * 6,
                            fontWeight: FontWeight.bold,
                          )),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                      ),
                      Text(
                        "Perkembangan teknologi informasi di bidang informatika, terutama produk-produk software yang berguna untuk proses manajemen di perusahaan semakin banyak dan semakin membutuhkan tenaga-tenaga yang memang ahli dalam penggunaan serta pembuatan software tersebut. Keahlian dan kemampuan dalam bidang sistem informasi manajemen mutlak dan tidak bisa ditawar lagi serta siap bekerja dalam mengoperasikan dan mengembangkan sistem informasi manajemen, dan mengembangkan diri serta mengikuti perkembangan ilmu dan teknologi, itulah sebenarnya yang menjadi tujuan dari tujuan program Manajemen Informatika.",
                        style:
                            TextStyle(fontSize: SizeConfig.horizontalBlock * 4),
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
