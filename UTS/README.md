# UTS

## Tugas Praktikum 1
Penjelasan dan code program terdapat di dalam folder `basic_layout_flutter`.

Link : [basic_layout_flutter](./basic_layout_flutter)

## Praktikum 5: Membangun Navigasi di Flutter

1. Mendefinisikan Route => bukalah file main.dart. Pada langkah ini anda akan mendefinisikan Route untuk kedua halaman tersebut. Definisi penamaan route harus bersifat unique. Halaman `HomePage` didefinisikan sebagai `/`. Dan halaman `ItemPage` didefinisikan sebagai `/item`. Untuk mendefinisikan halaman awal, anda dapat menggunakan `named argument initialRoute`. Gambaran tahapan ini, dapat anda lihat pada potongan kode berikut.

```dart
MaterialApp(
  title: 'Navigasi Flutter',
  theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
  ),
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/': (_) => HomePage(),
    '/item': (_) => const ItemPage(),
  },
)
```

2. Membuat data model => Sebelum melakukan perpindahan halaman dari `HomePage` ke `ItemPage`, dibutuhkan proses pemodelan data. Pada desain mockup, dibutuhkan dua informasi yaitu nama dan harga. Untuk menangani hal ini, buatlah sebuah file dengan nama `item_model.dart` dan letakkan pada folder models. Pada file ini didefinisikan pemodelan data yang dibutuhkan. Ilustrasi kode yang dibutuhkan, dapat anda lihat pada potongan kode berikut.

```dart
class ItemModel {
  String name;
  int price;

  ItemModel({required this.name, required this.price});
}
```
3. Pada halaman `HomePage` terdapat `ListView` widget. Sumber data `ListView` diambil dari model List dari object Item. Gambaran kode yang dibutuhkan untuk melakukan definisi model dapat anda lihat sebagai berikut. Item pada `ListView` saat ini ketika ditekan masih belum memberikan aksi tertentu. Untuk menambahkan aksi pada `ListView` dapat digunakan widget `InkWell` atau GestureDetector. Perbedaan utamanya `InkWell` merupakan material widget yang memberikan efek ketika ditekan. Sedangkan GestureDetector bersifat umum dan bisa juga digunakan untuk gesture lain selain sentuhan. Pada praktikum ini akan digunakan widget `InkWell`.

```dart
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final list = [
    ItemModel(name: "Sugar", price: 5000),
    ItemModel(name: "Salt", price: 2000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List"),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            var item = list[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
```
4. Membuat item_page.dart untuk tujuan detail saat melakukan klik ke salah satu item

```dart
class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as ItemModel;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Item Detail"),
      ),
      body: Center(
        child: Text("${item.name} with ${item.price}"),
      ),
    );
  }
}

```

- Hasil Output Program
- ![Hasil Output Program](./images/1.png)
- Saat di klik salah satu item maka akan menampilkan detail item
- ![Hasil Output Program](./images/2.png)