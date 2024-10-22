import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final dynamic donutColor; //dynamic por que sera de tipo color
  final String imageName;

  const DonutTile(
      {super.key,
      required this.donutFlavor,
      required this.donutPrice,
      this.donutColor,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50], borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(24),
                          bottomLeft: Radius.circular(24))),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: donutColor[800]),
                  ),
                )
              ],
            ),

            //donut picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Image.asset(imageName),
            ),
            //donut flavor text
            Text(
              donutFlavor,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            Text(
              'Dunkin´s',
              style: TextStyle(color: Colors.grey[600]),
            ),

            //Love icon + add button
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  //love icon
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),
                  //plush button
                  Icon(Icons.favorite, color: Colors.grey[800])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
