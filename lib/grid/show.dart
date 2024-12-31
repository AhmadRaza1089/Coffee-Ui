import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listvie2/grid/built.dart';
import 'package:listvie2/grid/data.dart';

final data = [
  Data(image: "assets/images/pan.jpg", name: "Pancake", secondname: "Delicious", price: "Rs:3200", icon: Icons.add),
  Data(image: "assets/images/cros.jpg", name: "Croissants", secondname: "Buttery", price: "Rs:400", icon: Icons.add),
  Data(image: "assets/images/chip.jpg", name: "Chocolate Chip", secondname: "Irresistible", price: "Rs:500", icon: Icons.add),
  Data(image: "assets/images/bun.jpg", name: "Sticky Buns", secondname: "Gooey", price: "Rs:700", icon: Icons.add),
  Data(image: "assets/images/pac.jpg", name: "Coffee Cake", secondname: "Comforting", price: "Rs:750", icon: Icons.add),
  Data(image: "assets/images/cak.jpg", name: "Choc Cake", secondname: "Toothsome", price: "Rs:1200", icon: Icons.add),
  Data(image: "assets/images/pum.jpg", name: "Pumpkin Muffin", secondname: "Spiced", price: "Rs:1500", icon: Icons.add),
  Data(image: "assets/images/rol.jpg", name: "Cinnamon Roll", secondname: "Warm", price: "Rs:220", icon: Icons.add),
  Data(image: "assets/images/bana.jpg", name: "Banana Bread", secondname: "Moist", price: "Rs:400", icon: Icons.add),
  Data(image: "assets/images/moca.jpg", name: "Iced Mocha", secondname: "Refreshing", price: "Rs:680", icon: Icons.add),
  Data(image: "assets/images/cam.jpg", name: "Caramel", secondname: "Indulgent", price: "Rs:250", icon: Icons.add),
  Data(image: "assets/images/ice.jpg", name: "Iced Latte", secondname: "Smooth", price: "Rs:340", icon: Icons.add),
  Data(image: "assets/images/vi.jpg", name: "Vietnamese Iced", secondname: "Bold", price: "Rs:900", icon: Icons.add),
  Data(image: "assets/images/bre.jpg", name: "Cold brew", secondname: "Invigorating", price: "Rs:600", icon: Icons.add),
  Data(image: "assets/images/pan.jpg", name: "Pancake", secondname: "Delicious", price: "Rs:3200", icon: Icons.add),
  Data(image: "assets/images/cros.jpg", name: "Croissants", secondname: "Buttery", price: "Rs:400", icon: Icons.add),
  Data(image: "assets/images/chip.jpg", name: "Chocolate Chip", secondname: "Irresistible", price: "Rs:500", icon: Icons.add),
  Data(image: "assets/images/bun.jpg", name: "Sticky Buns", secondname: "Gooey", price: "Rs:700", icon: Icons.add),
  Data(image: "assets/images/pac.jpg", name: "Coffee Cake", secondname: "Comforting", price: "Rs:750", icon: Icons.add),
  Data(image: "assets/images/cak.jpg", name: "Choc Cake", secondname: "Toothsome", price: "Rs:1200", icon: Icons.add),
  Data(image: "assets/images/pum.jpg", name: "Pumpkin Muffin", secondname: "Spiced", price: "Rs:1500", icon: Icons.add),
  Data(image: "assets/images/rol.jpg", name: "Cinnamon Roll", secondname: "Warm", price: "Rs:220", icon: Icons.add),
  Data(image: "assets/images/bana.jpg", name: "Banana Bread", secondname: "Moist", price: "Rs:400", icon: Icons.add),
  Data(image: "assets/images/moca.jpg", name: "Iced Mocha", secondname: "Refreshing", price: "Rs:680", icon: Icons.add),
  Data(image: "assets/images/cam.jpg", name: "Caramel", secondname: "Indulgent", price: "Rs:250", icon: Icons.add),
  Data(image: "assets/images/ice.jpg", name: "Iced Latte", secondname: "Smooth", price: "Rs:340", icon: Icons.add),
  Data(image: "assets/images/vi.jpg", name: "Vietnamese Iced", secondname: "Bold", price: "Rs:900", icon: Icons.add),
  Data(image: "assets/images/bre.jpg", name: "Cold brew", secondname: "Invigorating", price: "Rs:600", icon: Icons.add),
  Data(image: "assets/images/rol.jpg", name: "Cinnamon Roll", secondname: "Warm", price: "Rs:220", icon: Icons.add),
  // Data(image: "assets/images/bana.jpg", name: "Banana Bread", secondname: "Moist", price: "Rs:400", icon: Icons.add),
  // Data(image: "assets/images/moca.jpg", name: "Iced Mocha", secondname: "Refreshing", price: "Rs:680", icon: Icons.add),
  // Data(image: "assets/images/cam.jpg", name: "Caramel", secondname: "Indulgent", price: "Rs:250", icon: Icons.add),
  // Data(image: "assets/images/ice.jpg", name: "Iced Latte", secondname: "Smooth", price: "Rs:340", icon: Icons.add),
  // Data(image: "assets/images/vi.jpg", name: "Vietnamese Iced", secondname: "Bold", price: "Rs:900", icon: Icons.add),
  // Data(image: "assets/images/bre.jpg", name: "Cold brew", secondname: "Invigorating", price: "Rs:600", icon: Icons.add),
];

class Show extends StatelessWidget {
  const Show({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding:  const EdgeInsets.all(10),
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft,
            child: Text("Popular Items", style: GoogleFonts.afacad(fontWeight: FontWeight.bold, fontSize: 30),)),
            Flexible(child: Built(data: data)),
          ],
        ),
      ),
    );
  }
}
