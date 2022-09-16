import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coins extends StatelessWidget {
  final String coinname;
  final String coinsmallname;
  final String increase;
  final String perc;
  const Coins(
      {super.key,
      required this.coinname,
      required this.coinsmallname,
      required this.increase,
      required this.perc});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              coinname,
              style: GoogleFonts.alikeAngular(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              coinsmallname,
              style:
                  GoogleFonts.montserrat(color: Colors.grey[500], fontSize: 16),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('+\$' + increase,
                style: GoogleFonts.alikeAngular(fontSize: 20)),
            SizedBox(
              height: 5,
            ),
            RichText(
                text: TextSpan(
              children: [
                TextSpan(text: '+' + perc + '%'),
                WidgetSpan(
                  child: Icon(
                    Icons.trending_up_outlined,
                    size: 18,
                    color: Colors.lightGreenAccent,
                  ),
                ),
              ],
              style: GoogleFonts.montserrat(
                  color: Colors.lightGreenAccent, fontSize: 14),
            ))
          ],
        )
      ],
    );
  }
}
