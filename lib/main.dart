// import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:read_json_file/pages/cart_page.dart';
// import 'package:read_json_file/ProductDataModel.dart';
// import 'package:read_json_file/ProductDataModel.dart';
// import 'package:flutter/services.dart' as rootBundle;
import 'package:read_json_file/product_page.dart';
import './pages/notificationPage.dart';
import './pages/cart_page.dart';
import './pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.deepPurple[300],
          leading: null,
          title: Text(
            "Cloths",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          // brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationPage()),
                  );
                },
                icon: Icon(Icons.notifications_none, color: Colors.black)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Cart()),
                  );
                },
                icon: Icon(Icons.shopping_cart, color: Colors.black)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                icon: Icon(Icons.login_sharp, color: Colors.black))
            /*IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black,),
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black,),
          )*/
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.indigo[50],
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    // width: 200,
                    child: Image(image: AssetImage("asets/abc.gif")),
                    width: 352.5,
                  )
                ],
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // margin: EdgeInsets.only(left: 20, top:10, right: 20, bottom:0),
                  Container(
                    // width: 200,
                    margin:
                        EdgeInsets.only(left: 0, top: 20, right: 0, bottom: 0),

                    child: Image(image: AssetImage("asets/pqr2.gif")),
                    width: 352.5,
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(119, 25, 0, 0),
                    // padding: EdgeInsets.all(80),
                    // width: 250.0,
                    child: new MaterialButton(
                      height: 40,
                      minWidth: 90,
                      color: Colors.pink[300],
                      textColor: Colors.white,
                      child: new Text("View products"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProductPage()),
                        );
                      },
                      splashColor: Colors.redAccent,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
