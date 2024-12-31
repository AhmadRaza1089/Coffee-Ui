import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listvie2/grid/data.dart';

class Info extends StatefulWidget {
  const Info({required this.data, super.key});
  final Data data;

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  bool isFavorite = false;
  int increment = 0;
  void incr() {
    setState(() {
      increment++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20),
            border: Border.all(color: Colors.black)),
        child: Column(
          children: [
            Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 280,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.data.image),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadiusDirectional.circular(20)),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: IconButton(
                          icon: Icon(
                            isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border_outlined ,
                            size: 20,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                )),
            Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        widget.data.name,
                        style: GoogleFonts.kanit(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        widget.data.secondname,
                        style: GoogleFonts.openSans(),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            widget.data.price,
                            style: GoogleFonts.pacifico(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        const SizedBox(width: 80),
                        FittedBox(child: Column(
                          children: [
                            Text("$increment", style: GoogleFonts.nunito(fontWeight: FontWeight.bold),),
                            const Icon(Icons.shopping_cart)
                          ],
                        )),
                        Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Flexible(
                              child: CircleAvatar(
                                backgroundColor: const Color(0xFF6F4E37),
                                child: GestureDetector(
                                  onTap: incr,
                                  child: Icon(
                                    widget.data.icon,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
