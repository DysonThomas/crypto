import 'package:criptotrackapp/Component/gaphz.dart';
import 'package:criptotrackapp/Component/recent.dart';
import 'package:criptotrackapp/Component/topBanner.dart';
import 'package:criptotrackapp/Component/topBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          TopBar(),
          SizedBox(
            height: 15,
          ),
          TopBanner(),
          SizedBox(
            height: 15,
          ),
          Mygraphs(),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Activities",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "See All",
                  style: GoogleFonts.montserrat(
                      color: Colors.lightGreenAccent, fontSize: 14),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Recent()
        ],
      )),
    );
  }
}
