import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple[300],
        leading: null,
        title: Text(
          "Your Cart",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        // brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              onPressed: null,
              icon: Icon(Icons.notifications, color: Colors.black)),
          IconButton(
              onPressed: null, icon: Icon(Icons.home, color: Colors.black)),
        ],
      ),
    );
  }
}
