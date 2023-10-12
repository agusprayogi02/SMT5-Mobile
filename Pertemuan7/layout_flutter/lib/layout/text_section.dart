import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  const TextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Image.asset('bromo.jpeg'),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'Agus Prayogi - 2141720025',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
            'Gunung Bromo adalah gunung berapi aktif di Jawa Timur, Indonesia. Ini adalah bagian dari Taman Nasional Bromo Tengger Semeru. Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut dan berada dalam empat wilayah kabupaten yaitu Kabupaten Probolinggo, Kabupaten Pasuruan, Kabupaten Lumajang, dan Kabupaten Malang. Gunung Bromo terkenal sebagai objek wisata utama di Jawa Timur. Gunung ini sering dikaitkan dengan mitologi Tengger. Puncaknya yang berbentuk kerucut dan dikelilingi lautan pasir yang luas, memiliki ketinggian 2.392 meter di atas permukaan laut. Gunung Bromo terletak di dalam kawah Tengger, yang berukuran 10 km dan dikelilingi lautan pasir yang luas, yang dikenal sebagai Lautan Pasir Tengger. Lautan pasir ini memiliki luas sekitar 5.250 hektar. Gunung Bromo terletak di antara Gunung Semeru di sebelah timur dan Gunung Batok di sebelah barat. Gunung Bromo terletak di perbatasan antara Kabupaten Probolinggo, Kabupaten Pasuruan, dan Kabupaten Lumajang.',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
