import 'package:flutter/material.dart';
import '../models/item_data.dart';

class DetailPage extends StatelessWidget {
  final ItemData item;
  const DetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text(item.title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(item.homeWork, textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}