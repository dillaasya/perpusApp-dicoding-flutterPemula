import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpus/models/book.dart';
import 'package:perpus/pages/detail_page.dart';
import 'package:perpus/widgets/card_banner_book.dart';

class BannerPage extends StatelessWidget {
  const BannerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      height: 260,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            final Book itemBook = bookData[index];
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return DetailPage(itemBook: itemBook);
                    }));
              },
              child: Container(
                width: 125,
                child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 190,
                        width: 125,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(5), bottom: Radius.circular(5)),
                          child: Image.asset(
                              itemBook.cover
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        itemBook.judul,
                        style: GoogleFonts.poppins(fontSize: 16),
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        itemBook.penulis,
                        style: GoogleFonts.poppins(fontSize: 12, color: Color(0xff939393)),
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
