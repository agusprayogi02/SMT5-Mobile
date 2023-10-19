# Pertemuan 7

## Praktikum 1 : Membangun Layout di Flutter
* Code 

```dart
Container(
    padding: const EdgeInsets.all(32),
    child: Row(
        children: [
            Expanded(
                /* soal 1*/
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        /* soal 2*/
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
                            style: TextStyle(color: Colors.grey),
                        ),
                    ],
                ),
            ),
            /* soal 3*/
            const Icon(
                Icons.star,
                color: Colors.red,
            ),
            const Text("41"),
        ],
    ),
);
```
![N|Solid](./images/01.png)

```dart
import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

```
![N|Solid](./images/02.png)

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agus Prayogi - 2141720025',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              TitleSection(),
              ButtonSection(),
              TextSection(),
            ],
          ),
        ),
      ),
    );
  }
}
```
![N|Solid](./images/03.png)
