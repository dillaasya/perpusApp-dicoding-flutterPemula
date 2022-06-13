import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpus/models/book.dart';

class CardBannerBook extends StatelessWidget {
  const CardBannerBook({
    Key? key,
    required this.itemBook,
  }) : super(key: key);

  final Book itemBook;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 125,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
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
          const SizedBox(
            height: 12,
          ),
          Text(
            itemBook.judul,
            style: GoogleFonts.poppins(fontSize: 16),
            maxLines: 1,
            overflow: TextOverflow.fade,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            itemBook.penulis,
            style: GoogleFonts.poppins(fontSize: 12, color: const Color(0xff939393)),
            maxLines: 1,
            overflow: TextOverflow.fade,
          )
        ],
      ),
    );
  }
}
