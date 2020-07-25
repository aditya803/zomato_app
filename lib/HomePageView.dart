import 'package:flutter/material.dart';
import 'package:zomatoapp/ItemView.dart';
import 'package:zomatoapp/OfferRow.dart';

class HomePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Text('Lockdown Cravings'),
            ),
          ),
          SizedBox(height: 10),
          Expanded(child: ItemView()),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10,0,10,0),
              child: Text('Latest Offers'),
            ),
          ),
          Expanded(child: OfferRow())
        ],
      ),
    );
  }
}


