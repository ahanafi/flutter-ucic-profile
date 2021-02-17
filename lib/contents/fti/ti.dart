import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ucic_profile/utils/size_config.dart';

class TeknikInformatika extends StatelessWidget {
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
                      Text("S1 - Teknik Informatika",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: SizeConfig.horizontalBlock * 6,
                            fontWeight: FontWeight.bold,
                          )),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                      ),
                      Text(
                        "Program Studi Teknik Informatika memberikan penguasaan dan kemampuan kepada mahasiswa untuk membangun dan mengembangkan berbagai aspek teknis teknologi informasi. Penekanan dari program studi ini adalah pada bidang pemrograman dan komputasi, rekayasa perangkat lunak untuk berbagai bidang aplikasi dalam berbagai bidang usaha, dan teknologi jaringan komputer.\n\nSelain itu program studi ini memberikan bidang-bidang ilmu yang berkaitan dengan pengembangan sistem informasi dan pemanfaatan teknologi lainnya dengan tujuan dapat meningkatkan efisiensi kerja di berbagai bidang usaha yang menerapkan komputerisasi.\n\nProgram Studi Teknik Informatika akan memberikan bekal kepada mahasiswa untuk mampu melakukan analisa dan perancangan komputasi, melakukan rekayasa perangkat lunak untuk meningkatkan performance perangkat lunak, dan penguasaan dalam teknik-teknik optimasi perangkat lunak.\n\nSecara garis besar materi perkuliahan pada program studi ini disesuaikan dengan kurikulum nasional dan mengacu kepada kebutuhan pasar dunia kerja yang dapat dikelompokkan menjadi :\n\n1. Pemrograman dan Komputasi\n2. Rekayasa Perangkat Lunak (Software Engineering)\n3. Arsitektur dan Jaringan Komputer\n\nProgram Studi Teknik Informatika dengan jenjang pendidikan Strata Satu (S1) dilaksanakan dalam 8 Semester dengan jumlah total SKS (Satuan Kredit Semester) 144 SKS",
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
