import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpus/provider/theme_provider.dart';
import 'package:perpus/models/book.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  final Book itemBook;

  const DetailPage({Key? key, required this.itemBook}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeNotifier>(context, listen: false);

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          SizedBox(
            height: 370,
            child: Container(
              height: 340,
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage(itemBook.cover),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          ListView(
            children: [
              const SizedBox(
                height: 330,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  color: theme.getTheme() == theme.lightTheme
                      ? Colors.white
                      : const Color(0xff292929),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      itemBook.judul,
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      itemBook.penulis,
                      style: GoogleFonts.poppins(
                          fontSize: 12, color: const Color(0xff939393)),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 80,
                      decoration: BoxDecoration(
                          color: theme.getTheme() == theme.lightTheme
                              ? const Color(0xffF6F0F0)
                              : const Color(0xffFBC374),
                          borderRadius: const BorderRadius.all(Radius.circular(5))),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Genre',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: const Color(0xff939393))),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  itemBook.genere,
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
                                        color: const Color(0xff939393))),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  itemBook.bahasa,
                                  style: GoogleFonts.poppins(fontSize: 14),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Text(
                        itemBook.sinopsis,
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const CircleAvatar(
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
