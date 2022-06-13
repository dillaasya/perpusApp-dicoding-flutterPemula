import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpus/models/book.dart';
import 'package:perpus/pages/banner_page.dart';
import 'package:perpus/pages/detail_page.dart';
import 'package:perpus/widgets/card_book.dart';

class ListPage extends StatelessWidget {
  const ListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                          height: 60,
                          width: 60,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/icon_app.png'),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rose Najamunas',
                            style: GoogleFonts.poppins(fontSize: 16),
                          ),
                          Text(
                            'Jakarta',
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: const Color(0xff939393)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Just Added',
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const BannerPage(),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'All Books',
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    final Book itemBook = bookData[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return DetailPage(itemBook: itemBook);
                            }));
                      },
                      child: CardBook(itemBook: itemBook),
                    );
                  }),
            )
          ],
        )),);
  }
}