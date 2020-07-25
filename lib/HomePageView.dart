import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:zomatoapp/ItemView.dart';
import 'package:zomatoapp/OfferRow.dart';

class HomePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded( child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SearchBar(onSearch: null, onItemFound: null),
          )),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              child: Text('LOCKDOWN CRAVINGS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ),
          ),
          SizedBox(height: 10),
          Expanded(child: ItemView()),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10,0,10,0),
              child: Text('LATEST OFFERS',style: TextStyle(color: Colors.grey,fontSize: 15),),
            ),
          ),
          Expanded(child: OfferRow())
        ],
      ),
    );
  }
}


