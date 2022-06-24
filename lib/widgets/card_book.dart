import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpus/models/book.dart';

class CardBook extends StatelessWidget {
  const CardBook({
    Key? key,
    required this.itemBook,
  }) : super(key: key);

  final Book itemBook;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 82,
              height: 112,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(5), bottom: Radius.circular(5)),
                child: Image.asset(
                  itemBook.cover,
                  fit: BoxFit.cover,
                )
              ),),
          const SizedBox(
            width: 12,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width-150,
            child: Padding(
              padding: const EdgeInsets.only(top:12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      itemBook.judul,
                      style: GoogleFonts.poppins(fontSize: 16),
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                    ),
                  const SizedBox(height: 6,),
                  Text(
                    itemBook.penulis,
                    style: GoogleFonts.poppins(
                        fontSize: 16, color: const Color(0xff939393)),
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}