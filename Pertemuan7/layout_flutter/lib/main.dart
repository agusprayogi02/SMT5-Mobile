import 'package:flutter/material.dart';

import 'layout/button_section.dart';
import 'layout/text_section.dart';
import 'layout/title_section .dart';

void main() => runApp(const MyApp());

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
