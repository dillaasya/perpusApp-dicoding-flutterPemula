import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpus/models/book.dart';

class DetailPage extends StatefulWidget {
  final Book itemBook;

  DetailPage({required this.itemBook});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: 370,
            decoration: BoxDecoration(
              color: Colors.black12,
            ),
            child: Container(
              height: 340,
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage(widget.itemBook.cover),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 330,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.itemBook.judul,
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.itemBook.penulis,
                      style: GoogleFonts.poppins(
                          fontSize: 12, color: Color(0xff939393)),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 80,
                      decoration: BoxDecoration(
                          color: Color(0xffF6F0F0),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Genre',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Color(0xff939393))),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  widget.itemBook.genere,
                                  style: GoogleFonts.poppins(fontSize: 14),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Bahasa',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Color(0xff939393))),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  widget.itemBook.bahasa,
                                  style: GoogleFonts.poppins(fontSize: 14),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Text(
                        widget.itemBook.sinopsis,
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: Colors.black26,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
