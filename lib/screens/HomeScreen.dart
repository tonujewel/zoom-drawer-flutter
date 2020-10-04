import 'package:flutter/material.dart';
import 'package:hidden_drawer/Utils/Configuration.dart';
import 'package:hidden_drawer/screens/ProductDetails.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isOpen ? 20 : 0),
        color: Colors.grey[200],
      ),
      child: Column(
        children: [
          SizedBox(height: 50),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isOpen
                    ? IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    setState(() {
                      xOffset = 0;
                      yOffset = 0;
                      scaleFactor = 1;
                      isOpen = false;
                    });
                  },
                )
                    : IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    setState(() {
                      xOffset = 230;
                      yOffset = 150;
                      scaleFactor = 0.6;
                      isOpen = true;
                    });
                  },
                ),
                Column(
                  children: [
                    Text('Location'),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.blue),
                        Text(
                          "Dhaka, Bangladesh",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
                CircleAvatar()
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search),
                Text("search"),
                Icon(Icons.settings),
              ],
            ),
          ),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: shadowList,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          categories[index]['image'],
                          height: 50,
                          width: 50,
                          color: Colors.grey[700],
                        ),
                      ),
                      Text(categories[index]['name'])
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            height: 240,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[300],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: shadowList,
                        ),
                        margin: EdgeInsets.only(top: 60),
                      ),
                      Align(
                        child: Hero(tag: '1', child: Image.asset(
                            'images/chair.png')),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 80, bottom: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: shadowList,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                      child: Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Sola',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54)),
                              SizedBox(
                                height: 15,
                              ),
                              Text('Abyssiion cot',
                                  style: TextStyle(fontSize: 16)),
                              SizedBox(
                                height: 5,
                              ),
                              Text('1.5 years old',
                                  style: TextStyle(fontSize: 14)),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  Text('Distance 7.8 km',
                                      style: TextStyle(fontSize: 14)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget overlayDeign() {

  }
}
