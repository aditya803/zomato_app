import 'package:flutter/material.dart';

class ItemView extends StatefulWidget {
  @override
  _ItemViewState createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  var itemList= [
    {
      "name": "Dish A",
      "image":"assets/1.jpg" ,
    },
    {
      "name": "Dish A",
      "image":"assets/1.jpg" ,
    },
    {
      "name": "Dish A",
      "image":"assets/1.jpg" ,
    },
    {
      "name": "Dish A",
      "image":"assets/1.jpg" ,
    },
    {
      "name": "Dish A",
      "image":"assets/1.jpg" ,
    },
    {
      "name": "Dish A",
      "image":"assets/1.jpg" ,
    },
    {
      "name": "Dish A",
      "image":"assets/1.jpg" ,
    },
    {
      "name": "Dish A",
      "image":"assets/1.jpg" ,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (BuildContext context, int index){
          return Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: SingleProd(
                prod_name: itemList[index]['name'],
                prod_image: itemList[index]['image'],
              ),
          );
        });
  }
}

class SingleProd extends StatelessWidget {
  final prod_name;
  final prod_image;

  SingleProd({
    this.prod_name,
    this.prod_image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 100,
      child: Column(
        children: <Widget>[
          Expanded(child: Image.asset(prod_image,fit: BoxFit.cover)),
          SizedBox(height: 10),
          Text(prod_name,style: TextStyle(color: Colors.grey,fontSize: 15)),
        ],
      ),
    );
  }
}