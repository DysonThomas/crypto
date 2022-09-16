import 'package:criptotrackapp/Utils/graphCards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mygraphs extends StatelessWidget {
  const Mygraphs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Mycards(
            coinname: 'Cardano',
            coinValue: '6,865 ADA',
            perc: '+5.12',
            previousvalue: '\$3532.40',
          ),
          Mycards(
            coinname: 'Bitcoin',
            coinValue: '0,094 BTC',
            perc: '+3.23',
            previousvalue: '\$4,352',
          )
        ],
      ),
    );
  }
}
