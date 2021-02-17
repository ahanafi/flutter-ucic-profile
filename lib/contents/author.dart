import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ucic_profile/utils/size_config.dart';

class Author extends StatelessWidget {
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
                          child: Image.asset('images/author.jpeg'),
                          padding: EdgeInsets.only(bottom: 30),
                        ),
                      ),
                      Text("Author",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: SizeConfig.horizontalBlock * 6,
                            fontWeight: FontWeight.bold,
                          )),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                      ),
                      Text(
                        "Hallo, Assalamu'alaikum!\nPerkenalkan nama saya Ahmad Hanafi, kadang orang-orang manggil saya Ahmad, Hanafi, Napi. Saat ini di tahun 2018, Saya seorang mahasiswa semester 4 di salah satu Sekolah Tinggi di Cirebon. Selain seorang mahasiswa, Saya juga seorang Programmer, juga Freelancer (pekerja lepas).\n\n\nSaya hobi membaca, ngoding/programming, sharing tentang sesuatu, dan belajar hal-hal baru yang ngga saya ketahui.",
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
