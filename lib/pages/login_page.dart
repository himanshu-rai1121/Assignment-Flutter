import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:read_json_file/main.dart';
// import './';

void main() {
  runApp(new LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "LoginPage",
      home: new loginpage(),
      theme: new ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal[100],
        leading: null,
        title: Text(
          "Cloths",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        // brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              onPressed: null, icon: Icon(Icons.home, color: Colors.black))
          /*IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black,),
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black,),
          )*/
        ],
      ),
      body: new Stack(
        fit: StackFit.expand,
        children: [
          new Image(
            image: new AssetImage("asets/pqr2.gif"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.lighten,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Container(
                padding: new EdgeInsets.all(20.0),
                child: Text('hello'),
              ),
              new FlutterLogo(
                size: controller.value * 100,
              ),
              new Form(
                child: new Theme(
                  data: new ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                      inputDecorationTheme: new InputDecorationTheme(
                          labelStyle: new TextStyle(
                              color: Colors.black, fontSize: 20.0))),
                  child: new Container(
                    padding: const EdgeInsets.all(40.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Enter email",
                          ),
                        ),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Enter Password",
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        new Padding(padding: const EdgeInsets.only(top: 40.0)),
                        new MaterialButton(
                          height: 40,
                          minWidth: 90,
                          color: Colors.teal,
                          textColor: Colors.green,
                          child: new Text("Login"),
                          onPressed: null,
                          splashColor: Colors.redAccent,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
