import 'package:criptotrackapp/Component/coins.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Recent extends StatelessWidget {
  const Recent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(children: const [
          Coins(
            coinname: 'Bitcoin',
            coinsmallname: 'BTC',
            increase: '809.00',
            perc: '0.12',
          ),
          SizedBox(
            height: 15,
          ),
          Coins(
            coinname: 'Cardano',
            coinsmallname: 'ADA',
            increase: '245.00',
            perc: '5.12',
          ),
          SizedBox(
            height: 15,
          ),
          Coins(
            coinname: 'Etherium',
            coinsmallname: 'ETH',
            increase: '482.00',
            perc: '1.12',
          ),
          SizedBox(
            height: 15,
          ),
          Coins(
            coinname: 'Tether ',
            coinsmallname: 'USDT',
            increase: '542.00',
            perc: '7.42',
          ),
          SizedBox(
            height: 15,
          ),
          Coins(
            coinname: 'Binance Coin',
            coinsmallname: 'BNB',
            increase: '623.00',
            perc: '1.42',
          ),
        ]),
      ),
    );
  }
}
