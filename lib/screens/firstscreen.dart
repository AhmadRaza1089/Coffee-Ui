import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  // empty List

  // List filterList = [];

  // @override
  // void initState() {
  //   filterList = data;
  //   super.initState();
  // }

  // method for Search Filter
  // void searchFilter(String keyword) {
  //   List results = [];
  //   if (keyword.isEmpty) {
  //     results = filterList;
  //   } else {
  //    filterList = data
  //           .where((item) => item.toLowerCase().contains(query.toLowerCase()))
  //           .toList();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Text("It's a great day for coffee"),
            const Padding(padding: EdgeInsets.only(top: 40)),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.6,

              // Textfield
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    hintText: "What's your choice",
                    hintStyle: GoogleFonts.roboto(color: Colors.black),
                    fillColor: Colors.grey[200],
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search_outlined,
                      color: Colors.black,
                    ),
                    suffixIcon: const Icon(Icons.lens_blur_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none)),
              ),
            ),
            // const SizedBox(height: 3),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const Padding(padding: EdgeInsets.only(left: 4)),
                  Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/cappuccino.jpg",
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadiusDirectional.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Padding(padding: EdgeInsets.only(top: 2)),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Cappuccino",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                        ),
                        // const Text(" it's a moment of warmth", style: TextStyle(fontWeight: FontWeight.bold),),
                        const Text(''),
                        const Text(""),
                        // const Text(" it's a moment of warmth", style: TextStyle(fontWeight: FontWeight.bold),),
                        // Image.asset("assets/images/logo.png"),
                        const Padding(padding: EdgeInsets.all(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text(
                                " Rs: 300",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 250,
                    width: 300,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/latte.jpg",
                            ),
                            fit: BoxFit.contain),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // const Padding(padding: EdgeInsets.only(right: 20)),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Latte",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                        ),
                        // const Text(" it's a moment of warmth", style: TextStyle(fontWeight: FontWeight.bold),),
                        const Text(""),
                        const Padding(padding: EdgeInsets.all(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text(
                                "Rs: 250",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 250,
                    width: 300,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/blc.jpg",
                            ),
                            fit: BoxFit.contain),
                        borderRadius: BorderRadiusDirectional.circular(20),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Padding(padding: EdgeInsets.only(top: 2)),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Black",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                        ),
                        // const Text(" it's a moment of warmth", style: TextStyle(fontWeight: FontWeight.bold),),
                        const Text(""),
                        // const Text(" it's a moment of warmth", style: TextStyle(fontWeight: FontWeight.bold),),
                        // Image.asset("assets/images/logo.png"),
                        const Padding(padding: EdgeInsets.all(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text(
                                "Rs: 200",
                                style:
                                    GoogleFonts.openSans(color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 250,
                    width: 300,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/macw.jpg",
                            ),
                            fit: BoxFit.contain),
                        borderRadius: BorderRadiusDirectional.circular(20),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Padding(padding: EdgeInsets.only(top: 2)),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Caffe Macchiato",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                        ),
                        // const Text(" it's a moment of warmth", style: TextStyle(fontWeight: FontWeight.bold),),
                        const Text(""),
                        // const Text(" it's a moment of warmth", style: TextStyle(fontWeight: FontWeight.bold),),
                        // Image.asset("assets/images/logo.png"),
                        const Padding(padding: EdgeInsets.all(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text(
                                "Rs: 350",
                                style:
                                    GoogleFonts.openSans(color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 250,
                    width: 300,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/white.jpg",
                            ),
                            fit: BoxFit.contain),
                        borderRadius: BorderRadiusDirectional.circular(20),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Padding(padding: EdgeInsets.only(top: 2)),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Flat White",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                        ),
                        // const Text(" it's a moment of warmth", style: TextStyle(fontWeight: FontWeight.bold),),
                        const Text(""),
                        // const Text(" it's a moment of warmth", style: TextStyle(fontWeight: FontWeight.bold),),
                        // Image.asset("assets/images/logo.png"),
                        const Padding(padding: EdgeInsets.all(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text(
                                "Rs: 300",
                                style:
                                    GoogleFonts.openSans(color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 250,
                    width: 300,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/mocha.jpg",
                            ),
                            fit: BoxFit.contain),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Padding(padding: EdgeInsets.only(top: 2)),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Mocha",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                        ),
                        const Text(""),
                        // const Text(" it's a moment of warmth", style: TextStyle(fontWeight: FontWeight.bold),),
                        // Image.asset("assets/images/logo.png"),
                        const Padding(padding: EdgeInsets.all(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text(
                                "Rs: 400",
                                style:
                                    GoogleFonts.openSans(color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 250,
                    width: 300,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/esc.jpg",
                            ),
                            fit: BoxFit.contain),
                        borderRadius: BorderRadiusDirectional.circular(20),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Padding(padding: EdgeInsets.only(top: 2)),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Espresso",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                        ),
                        // const Text(" it's a moment of warmth", style: TextStyle(fontWeight: FontWeight.bold),),
                        const Text(""),
                        // const Text(" it's a moment of warmth", style: TextStyle(fontWeight: FontWeight.bold),),
                        // Image.asset("assets/images/logo.png"),
                        const Padding(padding: EdgeInsets.all(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text(
                                "Rs: 250",
                                style:
                                    GoogleFonts.openSans(color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(10))
                ],
              ),
            )
          ],
        ));
  }
}
