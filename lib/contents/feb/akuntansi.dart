import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ucic_profile/utils/size_config.dart';

class Akuntansi extends StatelessWidget {
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
                          child: Image.asset('images/feb/ak.png'),
                          padding: EdgeInsets.only(bottom: 30),
                        ),
                      ),
                      Text("S1 - Akuntansi",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: SizeConfig.horizontalBlock * 6,
                            fontWeight: FontWeight.bold,
                          )),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                      ),
                      Text(
                        "Program Studi Akuntansi merupakan bagian dari Fakultas Ekonomi dan Bisnis Universitas Catur Insan Cendekia. Program Studi Akuntansi menjadi salah satu jawaban atas meningkatnya kebutuhan Akuntan di Indonesia saat ini. Akuntansi sangat memegang peranan penting dalam dunia bisnis. Tak heran jika ada istilah business language yang menjadi sebutan untuk akuntansi. Setiap organisasi bisnis sudah tentu membutuhkan akuntansi. Hal ini menunjukan bahwa selama masih ada bisnis, tenaga akuntansi jelas masih dibutuhkan.\n\nProgram Akuntansi ini menekankan penerapan pengetahuan dan keterampilan akuntansi dengan pemahaman yang lebih baik tentang perspektif proses bisnis. Beberapa pengembangan soft-skill juga diberikan di sepanjang kursus, seperti keterampilan komunikasi yang efektif, kerja tim, keterampilan pemecahan masalah, dan kesadaran sosial.\n\nSalah satu kemampuan yang harus dimiliki pemimpin bisnis adalah kemampuan manajemen keuangan. Akuntansi adalah salah satu program yang menawarkan kelengkapan yang seimbang antara kemampuan manajemen keuangan dan keterampilan manajemen bisnis untuk berbagai industri atau bidang.\nKarena keputusan penting dibuat berdasarkan kemampuan perusahaan untuk menghasilkan laba maksimum, dan karena manajemen perlu mempertanggungjawabkan laporan pertanggungjawabannya kepada investor dan regulator, akuntansi memang memainkan peran yang sangat penting. Tidak mengherankan bahwa banyak sekali CEO, lahir, dan akan lahir dari latar belakang akuntansi.\n\nLulusan program ini akan menguasai knowladge dan skill Akuntansi yang diperlukan, memahami proses bisnis yang mendasarinya serta penilaian bisnis dasar yang sehat, diharapkan menjadi akuntan profesional yang dapat membantu dan memberikan informasi keuangan yang tepat dan berguna untuk manajemen organisasi perusahaan dalam membuat keputusan yang lebih baik.\n\nPeluang karir untuk lulusan sangat terbuka lebar karena akuntansi adalah fungsi yang sangat dibutuhkan oleh perusahaan, bahkan perusahaan yang sederhana pun membutuhkan tenaga akuntansi. Para lulusan Program Studi Akuntansi ini ditargetkan di bidang pekerjaan yang berjenjang manajerial seperti CEO, CFO, Analis Bisnis, Konsultan Penasihat, Akuntan Keuangan, Akuntan Publik (Auditor Eksternal), Auditor Internal, Pemeriksa Penipuan, Assuror, Pengendali Keuangan, Akuntan Manajemen, Hubungan Investor, Analis Keuangan, Analis Creadit, Konsultan Pajak, Akuntan Pemerintah, Pemerintah Auditor, Akuntan Sektor Publik, dll.\n\nProgram Studi Akuntansi dengan jenjang pendidikan Sarjana (S1) ini dilaksanakan dalam 8 Semester dengan jumlah total SKS (Satuan Kredit Semester) 144",
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
