import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Bagian titleSection
    Widget titleSection = Container(
      padding: const EdgeInsets.all(
          32), // Padding sebesar 32 piksel di sepanjang setiap tepi
      child: Row(
        children: [
          Expanded(
            // Letakkan widget Column di dalam widget Expanded
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Posisi kolom berada di awal baris
              children: [
                // Baris pertama teks di dalam Container dengan padding = 8
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors
                        .grey, // Warna teks 'Batu, Malang, Indonesia' menjadi abu-abu
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            // Ikon bintang
            Icons.star,
            color: Colors.yellow,
          ),
          const Text('75'),
        ],
      ),
    );

    // Bagian buttonSection: Membuat tiga tombol dengan _buildButtonColumn()
    Widget buttonSection = Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceEvenly, // Atur jarak antara tombol
      children: [
        _buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
        _buildButtonColumn(Colors.green, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(Colors.red, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32), // Padding di sepanjang setiap tepi
      child: const Text(
        'Batu Malang dikenal sebagai destinasi wisata pegunungan yang menakjubkan. '
        'Menawarkan panorama alam yang memukau dan udara segar yang menyejukkan. '
        'Terletak di ketinggian, daerah ini dikelilingi oleh pegunungan hijau yang indah '
        'seperti Gunung Panderman dan Gunung Arjuna, yang menyediakan berbagai jalur pendakian untuk para pecinta alam. '
        'Selain trekking, pengunjung dapat menikmati keindahan pemandangan dari berbagai spot fotografi '
        'serta beragam aktivitas luar ruangan seperti camping dan outbond. '
        'Wisatawan juga dapat merasakan suasana sejuk sambil menikmati kebun apel yang terkenal di kawasan ini. '
        'Dengan berbagai fasilitas dan akomodasi yang tersedia, '
        'Batu Malang menjadi pilihan ideal bagi mereka yang ingin melarikan diri dari hiruk-pikuk kota dan menikmati keindahan alam.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Wida(362358302008)',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/gunung_batu.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection, // Tampilkan titleSection
            buttonSection, // Tampilkan buttonSection
            textSection, // Tampilkan textSection yang baru ditambahkan
          ],
        ),
      ),
    );
  }

  // Metode _buildButtonColumn untuk membuat kolom dengan ikon dan teks
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize
          .min, // Agar kolom hanya menggunakan ruang yang diperlukan
      mainAxisAlignment: MainAxisAlignment
          .center, // Ikon dan teks berada di tengah secara vertikal
      children: [
        Icon(icon,
            color: color), // Ikon dengan warna yang diterima dari parameter
        Container(
          margin: const EdgeInsets.only(
              top: 8), // Menambahkan jarak antara ikon dan teks
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color, // Warna teks mengikuti warna ikon
            ),
          ),
        ),
      ],
    );
  }
}
