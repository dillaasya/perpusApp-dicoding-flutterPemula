import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpus/models/book.dart';
import 'package:perpus/pages/detail_page.dart';
import 'package:perpus/widgets/card_book.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ListPage extends StatelessWidget {
  const ListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/images/Frame 1.png',
      'assets/images/Frame 2.png',
      'assets/images/Frame 3.png',
      'assets/images/Frame 4.png',
      'assets/images/Frame 5.png',
      'assets/images/Frame 6.png',
      'assets/images/Frame 7.png',
      'assets/images/Frame 8.png',
      'assets/images/Frame 9.png',
    ];

    Widget header() {
      return Container(
        padding: const EdgeInsets.all(20),
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
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget caraousel() {
      return Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: CarouselSlider.builder(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: false,
            autoPlay: true,
            viewportFraction: 1,
          ),
          itemCount: (imgList.length / 3).round(),
          itemBuilder: (context, index, realIdx) {
            final int first = index * 3;
            final int second = first + 1;
            final int third = second + 1;
            return Row(
              children: [first, second, third].map((idx) {
                return Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(imgList[idx], fit: BoxFit.fitHeight),
                  ),
                );
              }).toList(),
            );
          },
        ),
      );
    }

    Widget allBook() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          //LayoutBuilder(builder: builder),
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
      );
    }

    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [header(), caraousel(), allBook()],
      )),
    );

  }
}
