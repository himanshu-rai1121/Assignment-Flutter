import 'package:flutter/material.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.deepPurple[300],
          leading: null,
          title: Text(
            "FabRasiya",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          // brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
                onPressed: null,
                icon: Icon(Icons.notifications_none, color: Colors.black)),
            IconButton(
                onPressed: null,
                icon: Icon(Icons.shopping_cart, color: Colors.black))
            /*IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black,),
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black,),
          )*/
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("asets/aaa.jpg"),
                // alignment: Alignment.centerRight,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'FabRasiya:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Women\'s a-line Full-Long Dress \n Women\'s Skater Dress',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Price: ₹544',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
