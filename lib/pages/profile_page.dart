import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpus/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeNotifier>(context, listen: true);
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: SizedBox(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/icon_app.png'),
                  )),
            ),
            const SizedBox(
              height: 16,
            ),
            Text('Rose Najamunas',
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w600)),
            const SizedBox(
              height: 5,
            ),
            Text('Jakarta',
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff939393))),
            const SizedBox(
              height: 16,
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
                        Text('Collections',
                            style: GoogleFonts.poppins(
                                fontSize: 12, color: const Color(0xff939393))),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          '5',
                          style: GoogleFonts.poppins(fontSize: 14),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Follower',
                            style: GoogleFonts.poppins(
                                fontSize: 12, color: const Color(0xff939393))),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          '225',
                          style: GoogleFonts.poppins(fontSize: 14),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Following',
                            style: GoogleFonts.poppins(
                                fontSize: 12, color: const Color(0xff939393))),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          '79',
                          style: GoogleFonts.poppins(fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Switch Theme', style: GoogleFonts.poppins(fontSize: 14),),
                  Switch(
                      value: theme.getTheme() == theme.darkTheme,
                      activeColor: const Color(0xffEF8E06),
                      onChanged: (v) {
                        theme.changeTheme();
                      }),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
