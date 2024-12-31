import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listvie2/screens/welcome.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.white,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFF5F5DC), 
              Color(0xFFA0522D), 
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                  child: Text(
                "Coffee Shop",
                style: GoogleFonts.pacifico(color: Colors.black, fontSize: 30),
              )),
              Flexible(
                child: Image.asset(
                  "assets/images/pic1.png",
                  
                  fit: BoxFit.contain,
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.5,
                  // opacity: AlwaysStoppedAnimation(0.6)
                ),
                
              ),
              const SizedBox(
                height: 30,
              ),
              FittedBox(
                  child: Text(
                "Coffee: the fuel of dreams",
                style: GoogleFonts.comfortaa(color: Colors.black),
              )),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return Transform.scale(
                            scale: animation.value,
                            child: const Welcome(),
                          );
                        },
                        transitionDuration: const Duration(milliseconds: 300),
                        reverseTransitionDuration:
                            const Duration(milliseconds: 300),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      ));
                },
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(colors: [
                          Color(0xFFDAB58F),
                          Color(0xFF8B4513),
                        ])),
                    child: Center(
                        child: FittedBox(
                            child: Text(
                      "Get Started",
                      style: GoogleFonts.openSans(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
