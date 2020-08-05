import 'package:app_klik_pijaca/src/commons.dart';
import 'package:app_klik_pijaca/src/widgets/bottom_navigation_icons.dart';
import 'package:app_klik_pijaca/src/widgets/categories.dart';
import 'package:app_klik_pijaca/src/widgets/custom_text.dart';
import 'package:app_klik_pijaca/src/widgets/featured_products.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomText(
                      text: "What would you like to order?",
                      size: 18,
                    )),
                Stack(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.notifications_none), onPressed: () {}),
                    Positioned(
                      top: 13,
                      right: 13,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(color: grey, offset: Offset(1, 1), blurRadius: 4)
                ]),
                child: ListTile(
                  leading: Icon(Icons.search, color: green),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: ("Find food that you want..."),
                      border: InputBorder.none,
                    ),
                  ),
                  trailing: Icon(Icons.filter_list, color: green),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Categories(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: "Featured", size: 20, color: grey),
            ),

            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: "Recipes", size: 20, color: grey),
            ),

            // we are using stack so we can add some new widgets on top of the first one
            Padding(padding: const EdgeInsets.all(12),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("images/smoothie.jpg")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget> [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite, color: white,),
                      ),
                      Container(
                        width: 50,
                        decoration: BoxDecoration(
                            color:white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children:<Widget> [
                            Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(Icons.star, color: Colors.yellow[900], size:20)
                            ),
                            Text("4.5")
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                //gradient

                Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.8),
                              Colors.black.withOpacity(0.7),
                              Colors.black.withOpacity(0.6),
                              Colors.black.withOpacity(0.6),
                              Colors.black.withOpacity(0.4),
                              Colors.black.withOpacity(0.1),
                              Colors.black.withOpacity(0.05),
                              Colors.black.withOpacity(0.025),
                            ]
                          )
                        ),
                      ),
                    )),
               

              ],
            ),)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            BottomNavIcon("home.png", "Home"),
            BottomNavIcon("message.png", "Home"),
            BottomNavIcon("gift.png", "Home"),
            BottomNavIcon("heartt.png", "Home"),
          ],
        ),
      ),
    );
  }
}
