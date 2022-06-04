import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpus/pages/banner_page.dart';
import 'package:perpus/pages/list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 60,
                            width: 60,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/Logo.png'),
                            )),
                        SizedBox(
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
                                  fontSize: 16, color: Color(0xff939393)),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'Just Added',
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          BannerPage(),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'All Books',
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ListPage(),
          )
        ],
      )),
    );
  }
}

