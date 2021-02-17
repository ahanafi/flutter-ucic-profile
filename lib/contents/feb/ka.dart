import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ucic_profile/utils/size_config.dart';

class KomputerisasiAkuntansi extends StatelessWidget {
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
                          child: Image.asset('images/fti/ti.png'),
                          padding: EdgeInsets.only(bottom: 30),
                        ),
                      ),
                      Text("D3 - Komputerisasi Akuntansi",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: SizeConfig.horizontalBlock * 6,
                            fontWeight: FontWeight.bold,
                          )),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                      ),
                      Text(
                        "Perkembangan teknologi informasi di bidang akuntansi, terutama produk-produk software yang berguna untuk proses akuntansi di perusahaan semakin banyak dan semakin membutuhkan tenaga-tenaga yang memang ahli dalam penggunaan serta pembuatan software tersebut. Keahlian dan kemampuan dalam bidang sistem informasi akuntansi mutlak dan tidak bisa ditawar lagi serta siap bekerja dalam mengoperasikan dan mengembangkan sistem informasi akuntansi, dan mengembangkan diri serta mengikuti perkembangan ilmu dan teknologi, itulah sebenarnya yang menjadi tujuan dari tujuan program Komputer Akuntansi.\n\nProgram Studi Komputer Akuntansi dengan jenjang pendidikan Diploma Tiga (D3) ini dilaksanakan dalam 6 Semester dengan jumlah total SKS (Satuan Kredit Semester) 113",
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
