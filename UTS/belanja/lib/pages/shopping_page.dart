import 'package:belanja/models/shopping_model.dart';
import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  ShoppingPage({super.key});

  final list = [
    ShoppingModel(
      image: 'https://picsum.photos/500?image=1',
      name: "ROG",
      price: 15000000,
      stock: 3,
    ),
    ShoppingModel(
      image: 'https://picsum.photos/500?image=2',
      name: "Apple",
      price: 25000000,
      stock: 5,
    ),
    ShoppingModel(
      image: 'https://picsum.photos/500?image=3',
      name: "Lenovo",
      price: 12000000,
      stock: 10,
    ),
    ShoppingModel(
      image: 'https://picsum.photos/500?image=4',
      name: "DELL",
      price: 16000000,
      stock: 7,
    ),
    ShoppingModel(
      image: 'https://picsum.photos/500?image=5',
      name: "HP",
      price: 13000000,
      stock: 12,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Page'),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  var item = list[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail', arguments: item);
                    },
                    child: Card(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Expanded(
                              child: Hero(
                                tag: item.image,
                                child: Image.network(
                                  item.image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Text(
                                        item.name,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                      Expanded(
                                        child: Text(
                                          "Rp.${item.price}",
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Stock: ${item.stock} buah',
                                    textAlign: TextAlign.end,
                                  ),
                                ],
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
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'Agus Prayogi / 2141720025 / 05',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
