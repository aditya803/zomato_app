import 'package:flutter/material.dart';

class OfferRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        offerTile(Colors.redAccent, 'ALL OFFERS'),
        offerTile(Colors.redAccent, 'ALL OFFERS'),
        offerTile(Colors.redAccent, 'ALL OFFERS'),
      ],
    );
  }
}

Widget offerTile(Color color, String heading){
  return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        height: 100,
        width: 100,
        color: color,
        child: InkWell(
          onTap: (){},
           child: Center(
               child: Text(heading),
           ),
        ),
      )
    );
}