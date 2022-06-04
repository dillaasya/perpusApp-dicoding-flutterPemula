import 'package:flutter/material.dart';
import 'package:perpus/models/book.dart';
import 'package:perpus/pages/detail_page.dart';
import 'package:perpus/widgets/card_book.dart';

class ListPage extends StatelessWidget {
  const ListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
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
        });
  }
}