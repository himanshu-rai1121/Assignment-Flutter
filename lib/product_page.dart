import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:read_json_file/ProductDataModel.dart';
import 'package:read_json_file/ProductDataModel.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:read_json_file/description_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
// import 'package:smooth_star_rating/smooth_star_rating.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.deepPurple[300],
          leading: null,
          title: Text(
            "T-Shirts",
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
        body: FutureBuilder(
          future: ReadJsonData(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(child: Text("${data.error}"));
            } else if (data.hasData) {
              var items = data.data as List<ProductDataModel>;
              return ListView.builder(
                  itemCount: items == null ? 0 : items.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 150,
                              child: CachedNetworkImage(
                                imageUrl: items[index].imageURL.toString(),
                                progressIndicatorBuilder:
                                    (context, url, downloadProgress) =>
                                        CircularProgressIndicator(
                                            value: downloadProgress.progress),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                              /*child: Image(
                            image:
                                NetworkImage(items[index].imageURL.toString()),
                            fit: BoxFit.fill,
                          ),*/
                            ),
                            Expanded(
                                child: Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8, right: 8),
                                    child: Text(
                                      items[index].name.toString(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8, right: 8),
                                    child: Text(
                                      "Price: ₹" +
                                          items[index].price.toString(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8, right: 8),
                                    child: Text(items[index].rating.toString()),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8, right: 8),
                                    child: new MaterialButton(
                                      color: Colors.indigo,
                                      textColor: Colors.white,
                                      child: new Text("View Product"),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const DescriptionPage()),
                                        );
                                      },
                                      splashColor: Colors.redAccent,
                                    ),
                                  ) /*,
                              Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8),
                                  child: SmoothStarRating())*/
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));

    /*return Scaffold(
      body: Column(children: [Container(child: Text("product Page"),)],),

    )*/
  }

  Future<List<ProductDataModel>> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('jsonfile/productlist.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => ProductDataModel.fromJson(e)).toList();
  }
}
