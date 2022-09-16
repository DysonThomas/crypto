import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wallet (Crypto)',
                style: GoogleFonts.montserrat(
                    color: Colors.grey[500], fontSize: 16),
              ),
              Text(
                '\$4235.42',
                style: GoogleFonts.alikeAngular(fontSize: 46),
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(18)),
                child: Text(
                  '+2.41%',
                  style: GoogleFonts.alikeAngular(
                      fontSize: 24, color: Colors.black),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
