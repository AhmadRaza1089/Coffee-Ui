import 'package:flutter/material.dart';
import 'package:listvie2/screens/data/data.dart';
import 'package:listvie2/screens/data/listtile.dart';

class Productslistview extends StatelessWidget {
  const Productslistview({required this.product, super.key});
  final List<Products> product;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal, 
      itemBuilder: (context, index) => PListtile(product: product[index]), 
      separatorBuilder: (context, index) => const SizedBox(width: 10), // Add space between items
      itemCount: product.length
    );
  }
}
