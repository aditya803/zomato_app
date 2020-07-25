import 'package:flutter/material.dart';

class OfferRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        offerTile(Colors.redAccent, 'ALL OFFERS'),
        offerTile(Colors.greenAccent, '40% off'),
        offerTile(Colors.blueAccent, '30% off'),
      ],
    );
  }
}

Widget offerTile(Color color, String heading){
  return Container(
        height: 100,
        width: 100,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        child: InkWell(
          onTap: (){},
           child: Center(
               child: Text(heading),
           ),
        ),
      );
}