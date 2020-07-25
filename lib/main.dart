import 'package:flutter/material.dart';
import 'package:zomatoapp/HomePageView.dart';

void main(){
  runApp(ZomatoApp());
}

class ZomatoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Home',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        leading: Icon(
          Icons.home,
          color: Colors.black,
        ),
        actions: <Widget>[
          Icon(
              Icons.scanner,
            color: Colors.black,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.credit_card,
            color: Colors.black,
          ),
        ],
        bottom: TabBar(
            labelColor: Colors.black,
            controller: controller,
            tabs: <Widget>[
              Tab(text: 'Food'),
              Tab(text: 'Food'),
              Tab(text: 'Food'),
            ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.0,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.shopping_cart,
                  color: Colors.black,
                ),
                title: Text('ORDER',
                  style:  TextStyle(
                    color: Colors.black,
                  ),
                ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  Icons.map,
                color: Colors.black,
              ),
              title: Text(
                  'GO OUT',
                  style: TextStyle(
                    color: Colors.black,
                  ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.free_breakfast,color: Colors.black,),
              title: Text('GOLD',style: TextStyle(color: Colors.black),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore,color: Colors.black,),
              title: Text('EXPLORE',style: TextStyle(color: Colors.black),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.black,),
              title: Text('PROFILE',style: TextStyle(color: Colors.black),),
            )
          ]
      ),
      body: TabBarView(
          controller: controller,
          children: <Widget>[
              HomePageView(),
              HomePageView(),
              HomePageView(),
          ])
    );
  }
}

