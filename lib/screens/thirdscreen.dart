import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listvie2/screens/data/data.dart';
import 'package:listvie2/screens/data/productslistview.dart';

final products = [
  Products(name: "Donuts", price: "Rs:200", image: "assets/images/donut.jpg"),
  Products(name: "Bagels", price: "Rs:230", image: "assets/images/bagl.jpg"),
  Products(
      name: "Sandwiches", price: "Rs:330", image: "assets/images/sand.jpg"),
  Products(
      name: "Fruit Salad", price: "Rs:550", image: "assets/images/fut.jpg"),
  Products(
      name: "Yogurt Parfaits",
      price: "Rs: 450",
      image: "assets/images/yout.jpg"),
  Products(
      name: "Danish Pastries", price: "Rs:320", image: "assets/images/dan.jpg"),
  Products(
      name: "Fruttie Fresh", price: "Rs:300", image: "assets/images/smoo.jpg"),
  Products(
      name: "Green Delights", price: "400", image: "assets/images/gree.jpg"),
  Products(
      name: "Sunny Smoothies", price: "350", image: "assets/images/sunn.jpg"),
];

class Thirdscreen extends StatelessWidget {
  const Thirdscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      // width: 400,
      color: Colors.white,
      child: Column(children: [
        Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "Recommended",
                style: GoogleFonts.kanit(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )),
        Flexible(child: Productslistview(product: products))
      ]),
    );
  }
}
