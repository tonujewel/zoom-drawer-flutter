import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer/Utils/Configuration.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blueGrey[300],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  IconButton(icon: Icon(Icons.share), onPressed: () {})
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Hero(
                  tag:'1',
                  child: Image.asset('images/chair.png')),
            ),
          ),
          middleContainer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[300],
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
              ),

              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(Icons.favorite_border,color: Colors.white,),
                    ),
                    SizedBox(width: 25),
                    Container(
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text('Boy Now',style: TextStyle(color: Colors.white, fontSize: 20),)),
                    ),
                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }

  Align middleContainer() {
    return Align(
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: shadowList,
              color: Colors.white
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Chair', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),

                    Icon(Icons.person)
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Category', style: TextStyle(color: Colors.black,fontSize: 15)),

                    Text('Band new', style: TextStyle(color: Colors.black,fontSize: 15)),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.location_on),
                    Text('Dhaka, Bangladesh'),
                  ],
                )
              ],
            ),
          ),
        );
  }
}
