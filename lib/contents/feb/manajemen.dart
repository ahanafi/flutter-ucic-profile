import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ucic_profile/utils/size_config.dart';

class Manajemen extends StatelessWidget {
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
                          child: Image.asset('images/feb/mj.png'),
                          padding: EdgeInsets.only(bottom: 30),
                        ),
                      ),
                      Text("S1 - Manajemen",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: SizeConfig.horizontalBlock * 6,
                            fontWeight: FontWeight.bold,
                          )),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                      ),
                      Text(
                        "Di pebisnis yang sukses pasti ada kendala yang harus dilalui sebelumnya. Dengan mengikuti proses pembelajaran di Manajemen Universitas Catur Insan Cendekia, mahasiswa dilatih untuk selalu mencari solusi inovatif dalam menanggapi setiap tantangan bisnis yang dihadapi.\n\nProses pembelajaran di Program Manajemen dirancang untuk mempersiapkan mahasiswa dengan kompetisi global ke depan. Melalui pendekatan blanded learning, mahasiswa menjalani pembelajaran dan mencerminkan pembelajaran mereka ke dalam konseptualisasi. Pendekatan ini menuntun siswa untuk memecahkan akar masalah melalui kerangka kerja pembelajaran berbasis project. Mahasiswa Program Bisnis S1 juga diundang ke berbagai kegiatan belajar yang meningkatkan keterampilan, pengetahuan, dan sikap mereka. mahasiswa akan mengalami studi kasus, perusahaan, dan kunjungan awal, perencanaan bisnis, simulasi bisnis, dan project kewirausahaan lainnya yang bertujuan untuk menghasilkan kreativitas dan inovasi siswa. Proses pembelajaran Program Manajemen membiasakan mahasiswa dengan suasana kerja dan bisnis. Situasi ini akan mensimulasikan sensitivitas proses bisnis mahasiswa dan memberikan mereka keterampilan pengambilan keputusan yang bijaksana.\n\nPeluang karir untuk lulusan sangat terbuka lebar seperti Entrepreneur, Professional in Business Development Area, Business Planning, Business Analyst, Management & Business Consultant, Small Business, Manager, Business Advisor, Business Researcher, Business Economist, General Management, Administrative Manager, Executive Manager, Project Manager, Trade Manager, etc.\n\nProgram Studi Manajemen dengan jenjang pendidikan Sarjana (S1) ini dilaksanakan dalam 8 Semester dengan jumlah total SKS (Satuan Kredit Semester) 144",
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
