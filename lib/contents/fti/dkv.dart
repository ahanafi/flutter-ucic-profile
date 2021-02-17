import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ucic_profile/utils/size_config.dart';

class DesainKomunikasiVisual extends StatelessWidget {
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
                          child: Image.asset('images/fti/dkv.png'),
                          padding: EdgeInsets.only(bottom: 30),
                        ),
                      ),
                      Text("S1 - Desain Komunikasi Visual",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: SizeConfig.horizontalBlock * 6,
                            fontWeight: FontWeight.bold,
                          )),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                      ),
                      Text(
                        "Perkembangan komputer dan teknologi informasi yang begitu pesat dalam masa 20 tahun terakhir perlu diimbangi dengan ketersediaan sumber daya manusia yang profesional didaerah. Menjawab tantangan kebutuhan tersebut Universitas CIC turut berpartisipasi dengan menyelenggarakan program studi Desain Komunikasi Visual sejak setahun yang lalu. Menyongsong datangnya milenium baru dan era pasar bebas, tantangan dan persaingan kerja dalam bidang teknologi informasi akan semakin ketat. Tenaga kerja yang profesional dengan daya saing tinggi menjadi keharusan.",
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
