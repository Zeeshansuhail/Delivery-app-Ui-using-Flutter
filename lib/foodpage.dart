import 'package:delivery_app/contrants.dart';
import 'package:delivery_app/home.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/popular.dart';

class Foodpage extends StatefulWidget {
  const Foodpage({Key key, this.popular}) : super(key: key);

  final Popular popular;

  @override
  _FoodpageState createState() => _FoodpageState();
}

class _FoodpageState extends State<Foodpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Hero(
                  tag: 'image' + widget.popular.img,
                  child: Image.asset(widget.popular.img)),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 30),
                child: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.grey.shade300,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.green,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.42,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.4, 0.90],
                          colors: [Colors.transparent, Colors.white]))),
            ],
          ),
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.shade300,
                      spreadRadius: 1,
                      blurRadius: 2,
                    ),
                  ]),
              child: Hero(
                tag: 'title' + widget.popular.text,
                child: Text(
                  widget.popular.text,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              "Description",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Text(
              "Among the many reasons that make Indian food a popular cuisine across the globe, one is the use of aromatic spices that truly give our curries an additional edge. Indian cooking offers a beautiful melange of herbs and spices, and if you are a fan of chicken, the you are in for a special treat.",
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.normal,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 8.0, right: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.green,
                        size: 25,
                      ),
                      SizedBox(
                        width: 2.5,
                      ),
                      Text(
                        "4.9",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.timer,
                        color: Colors.green,
                        size: 25,
                      ),
                      Text(
                        "10-20 Min",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Text(
                  "\$ 10.0",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12, right: 12),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        radius: 25,
                        child: IconButton(
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            Icons.card_travel,
                            color: Colors.green,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        radius: 25,
                        child: IconButton(
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.green,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
                FlatButton(
                  color: Colors.green,
                  splashColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  child: Text(
                    "Place a Order",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
