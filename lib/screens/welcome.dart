import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listvie2/grid/show.dart';
import 'package:listvie2/screens/firstscreen.dart';
import 'package:listvie2/screens/screeen2.dart';
import 'package:listvie2/screens/thirdscreen.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        toolbarHeight: 50,
        actions: [
          Flexible(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Screen(),
                    ));
              },
              child: const Hero(
                tag: "Tag-1",
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/logo.png"),
                  radius: 15,
                ),
              ),
            ),
          ),
          const Flexible(child: Icon(Icons.more_vert_outlined)),
        ],
        backgroundColor: Colors.white,
        flexibleSpace: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 30.0)),
                FittedBox(
                    child: Text(
                  "Hello Welcome",
                  style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
                )),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.location_on_outlined),
                FittedBox(
                    child: Text(
                  "The Islamia University of Bahawaplur",
                  style: GoogleFonts.openSans(),
                ))
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          // First ListView
          Expanded(
            flex: 3,
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                Firstscreen(),
              ],
            ),
          ),
          // GridView
          Expanded(
            flex: 3,
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 1,
              children: const [
                // Add your grid items here
                Show(),
              ],
            ),
          ),
          // SizedBox(height: 10,),
          // Second ListView
          Expanded(
            flex: 3,
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                Thirdscreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
