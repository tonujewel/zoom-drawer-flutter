import 'package:flutter/material.dart';
import 'package:hidden_drawer/Utils/Configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.only(top: 50, left: 10,bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Jewel Rana', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
                  Text('active status', style: TextStyle(color: Colors.white, fontSize: 14)),
                ],
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: drawerItems.map((element) => Row(
                children: [
                  Icon(element['icon'], color: Colors.white),
                  SizedBox(width: 15,),
                  Text(element['title'], style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),),
                ],
              )).toList()
            ),
          ),
          Row(
            children: [
              Icon(Icons.settings,color: Colors.white),
              SizedBox(width: 10),
              Text('Settings', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(width: 10),
              Container(width: 2,height: 20,color: Colors.white),
              SizedBox(width: 10),
              Text('Log out', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
            ],
          )
        ],
      ),
    );
  }
}
