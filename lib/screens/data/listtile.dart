import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listvie2/screens/data/data.dart';

class PListtile extends StatelessWidget {
  const PListtile({super.key, required this.product});

  final Products product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(20),
        child: ConstrainedBox(
          constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height*0.12, 
          maxWidth: MediaQuery.of(context).size.height*0.3, 
          // minHeight: MediaQuery.of(context).size.height*0.1, 
          // minWidth: MediaQuery.of(context).size.width*0.6, 
          ),
          child: Container(
            // height: 80, 
            // width: 250,   
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(product.image),
                fit: BoxFit.cover
              ),
              // border: Border.all(color: Colors.black)
            ),
            child: ListTile(
              title: Text(product.name, style: GoogleFonts.kanit(fontWeight: FontWeight.bold)),
              subtitle: Text(product.price, style: GoogleFonts.lobster(color: Colors.white)),
              // minLeadingWidth: 20,
            ),
          ),
        ),
      ),
    );
  }
}
