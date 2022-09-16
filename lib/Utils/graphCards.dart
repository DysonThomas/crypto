import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Mycards extends StatelessWidget {
  final String coinname;
  final String coinValue;
  final String previousvalue;
  final String perc;

  const Mycards(
      {super.key,
      required this.coinname,
      required this.coinValue,
      required this.previousvalue,
      required this.perc});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 160,
      decoration: BoxDecoration(
          color: Color.fromARGB(67, 117, 117, 117),
          borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // Card main col
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //first row
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // coin name and price
                  children: [
                    Text(
                      coinname,
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text(
                      coinValue,
                      style: GoogleFonts.montserrat(
                          color: Colors.grey[500], fontSize: 14),
                    )
                  ],
                ),
                Icon(Icons.more_vert_outlined)
              ],
            ),
            // Graph
            Container(
              height: 150,
              child: SfCartesianChart(
                  margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  plotAreaBorderWidth: 0,
                  primaryXAxis: CategoryAxis(isVisible: false),
                  primaryYAxis: NumericAxis(isVisible: false),
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <ChartSeries>[
                    LineSeries<currencyData, String>(
                        color: Colors.lightGreenAccent,
                        dataSource: dynamiGetColumData(),
                        xValueMapper: (currencyData sales, _) => sales.x,
                        yValueMapper: (currencyData sales, _) => sales.y,
                        dataLabelSettings: DataLabelSettings(isVisible: false))
                  ]),
            )
            // Base bar
            ,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  previousvalue,
                  style: GoogleFonts.montserrat(
                      color: Colors.grey[500], fontSize: 14),
                ),

                RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(text: perc),
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
                // Text(
                //   '+5.12%',
                //   style: GoogleFonts.montserrat(
                //       color: Colors.grey[500], fontSize: 14),
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class currencyData {
  String x;
  double y;

  currencyData(this.x, this.y);
}

dynamiGetColumData() {
  List<currencyData> columnData = <currencyData>[
    currencyData("a", 20),
    currencyData("b", 5),
    currencyData("c", 30),
    currencyData("d", 1),
    currencyData("e", 2),
    currencyData("f", 6),
    currencyData("g", 50),
    currencyData("h", 70),
    currencyData("i", 13),
    currencyData("j", 20),
    currencyData("k", 18),
    currencyData("l", 19),
    currencyData("m", 21),
    currencyData("n", 48),
    currencyData("o", 76),
    currencyData("p", 33),
    currencyData("q", 44),
    currencyData("r", 5),
    currencyData("s", 42),
    currencyData("t", 90),
  ];
  return columnData;
}
