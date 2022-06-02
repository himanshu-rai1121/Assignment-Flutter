import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple[300],
        leading: null,
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        // brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              onPressed: null,
              icon: Icon(Icons.shopping_cart, color: Colors.black)),

          IconButton(
              onPressed: null, icon: Icon(Icons.home, color: Colors.black)),
          // IconButton(
          //     onPressed: null,
          //     icon: Icon(Icons.login_sharp, color: Colors.black))
          /*IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black,),
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black,),
          )*/
        ],
      ),
    );
  }
}
