import 'package:flutter/material.dart';
import 'package:root/const/const.dart';

class MyNavBar extends StatefulWidget {
  @override
  _MyNavBarState createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      padding: EdgeInsets.only(left: 30, right: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.home,
              size: 20,
              color: firstColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.data_usage,
              size: 20,
              color: Colors.grey.shade400,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_active_outlined,
              size: 20,
              color: Colors.grey.shade400,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              size: 20,
              color: Colors.grey.shade400,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
