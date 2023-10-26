import 'package:belanja/models/item_model.dart';
import 'package:flutter/material.dart';

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
