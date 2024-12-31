import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 233, 229, 229),
          image: DecorationImage(image: AssetImage("assets/images/peans.png"), fit: BoxFit.cover, )
        ),
        child: Expanded(
          child: ListView(
            children: [
              ListView( 
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [ Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Coffee Shop", 
                    style: GoogleFonts.pacifico(color: Colors.red, fontSize: 40),
                  )
                    )),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 150,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ),
                Align(alignment: Alignment.center,child: Text("Hi Ahmed", style: GoogleFonts.comfortaa(color: Colors.black,fontSize: 20),)),
                Align(alignment: Alignment.center,child: Text("Bahawaplur , Pakistan", style: GoogleFonts.montserrat(color: Colors.black,fontSize: 20),)),
                const Align(alignment: Alignment.center,child: Icon(Icons.arrow_downward_outlined, size: 20,)),
                ],
          ),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            // crossAxisSpacing: 5,
            // mainAxisSpacing: 10,
            crossAxisCount: 4,
            children: <Widget> [
              ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(50),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                  color: Colors.white,
                  height: 100, width: 100, 
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_cart_checkout_outlined, color: Colors.black, size: 70, ), 
                      SizedBox(height: 10,),
                      Text("Purchases")
                    ],
                  ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(50),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                  color: Colors.white,
                  height: 100, width: 100, 
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite, color: Colors.black, size: 70, ), 
                      SizedBox(height: 10,),
                      Text("Favorite")
                    ],
                  ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(50),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                  color: Colors.white,
                  height: 100, width: 100, 
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.access_time, color: Colors.black, size: 70, ), 
                      SizedBox(height: 10,),
                      Text("Recent Activity")
                    ],
                  ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(50),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                  color: Colors.white,
                  height: 100, width: 100, 
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_basket_outlined, color:  Colors.black, size: 70, ), 
                      SizedBox(height: 10,),
                      Text("My Gear")
                    ],
                  ),
                  ),
                ),
              ),
            ],
          ),
            ],
          ),
        ),
      )
    );
    }}
/*
Stack(
        children: [
          Positioned(
            right: 50,
            top: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Hero(tag: "tag-1", child:  CircleAvatar(backgroundColor: Colors.yellow, radius: 200,)
              ),
            ],)), 
            Row(
                children: [
                Align(
                  alignment: Alignment.center,
                  child: Text("Hi, Ahmed Feel free to tap"))
              ],),
        ],
      ),
*/