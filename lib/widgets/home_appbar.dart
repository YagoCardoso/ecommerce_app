import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.arrow_back_ios_outlined,
            size: 30,
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Agora",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Outlet",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Badge(
              backgroundColor: Colors.green,
              label: Text("3", style: TextStyle(color: Colors.white)),
              padding: EdgeInsets.all(7),
              child: InkWell(
                onTap: () {},
                child: Icon(Icons.shopping_bag_outlined,
                    size: 30, color: Colors.black),
              )),
        ],
      ),
    );
  }
}
