import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            TabBar(
              controller: tabController,
              overlayColor: MaterialStateProperty.all(Colors.red),
              labelColor: Colors.black,
              labelStyle: const TextStyle(fontSize: 15),
              tabs: const [
                Tab(text: "BERITA TERBARU"),
                Tab(text: "PERTANDINGAN HARI INI"),
              ],
            ),
            const HeaderMenu(),
            Column(
              children: List.generate(5, (index) => const CardItem()),
            )
          ],
        ),
      ),
    );
  }
}

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.purpleAccent,
        border: Border.all(
          color: Colors.purpleAccent,
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/messi.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Lionel Andrés Messi',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Transfer',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.blueAccent,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 100,
                width: 135,
                child: Image.asset(
                  'assets/images/kartu-kuning.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.center,
                  height: 100,
                  color: Colors.white,
                  child: const Text(
                      "Tercatat, Lionel Messi cuma sekali dihukum kartu kuning selama dua tahun membela Paris Saint-Germain (PSG)"),
                ),
              ),
            ],
          ),
          const Divider(
            endIndent: 1,
            height: 1,
            thickness: 1,
            color: Colors.grey,
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            child: const Text("Barselona Sep 07, 2023"),
          )
        ],
      ),
    );
  }
}
