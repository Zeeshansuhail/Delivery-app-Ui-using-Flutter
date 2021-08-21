import 'package:delivery_app/categorydata.dart';
import 'package:delivery_app/contrants.dart';
import 'package:delivery_app/popular.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/foodpage.dart';

class home extends StatefulWidget {
  final Popular popular;
  const home({Key key, this.popular}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Delivering to",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            InkWell(
              onTap: () {
                print("hi");
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Current Location",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.green.shade300,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                      //margin: EdgeInsets.only(left: 10),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.black54,
                            ),
                            Text(
                              "Search Foods",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.filter),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Category",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                height: 117,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listcard.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(
                            top: 5,
                            right: 8,
                            left: 5,
                          ),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Image.asset(
                            listcard[index].img,
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        Text(
                          listcard[index].text,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Text(
                "Popular",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(bottom: 15),
                        margin: EdgeInsets.only(
                          bottom: 20,
                          top: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.grey.shade100,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 2,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Foodpage(
                                        popular: listPop[index],
                                      ),
                                    ));
                              },
                              child: Hero(
                                tag: 'image' + listPop[index].img,
                                child: Container(
                                  height: 220,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(listPop[index].img),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                              ),
                            ),
                            Hero(
                              tag: 'title' + listPop[index].text,
                              child: Text(
                                listPop[index].text,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                          listPop[index].rating,
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 15),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "(124 ratings)",
                                          style: TextStyle(
                                              color: Colors.grey.shade900,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    listPop[index].hotel_name,
                                    style: TextStyle(
                                        color: Colors.grey.shade900,
                                        fontSize: 15,
                                        letterSpacing: 1.5,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.grey.shade900,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    listPop[index].price,
                                    style: TextStyle(
                                        color: Colors.grey.shade900,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
