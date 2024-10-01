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
            color: Colors.red, // Set warna ikon bintang menjadi merah
          ),
          const Text('41'), // Teks "41"
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

    // Bagian textSection: Menambahkan teks dengan padding
    Widget textSection = Container(
      padding: const EdgeInsets.all(32), // Padding di sepanjang setiap tepi
      child: const Text(
        'Carilah teks di internet yang sesuai '
        'dengan foto atau tempat wisata yang ingin '
        'Anda tampilkan. '
        'Tambahkan nama dan NIM Anda sebagai '
        'identitas hasil pekerjaan Anda. '
        'Selamat mengerjakan 🙂.',
        softWrap: true, // Agar baris teks membungkus pada batas kata
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
