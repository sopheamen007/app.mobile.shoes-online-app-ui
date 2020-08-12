import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modern_online_app/pages/cart_page.dart';
import 'package:modern_online_app/pages/menu_page.dart';
import 'package:modern_online_app/theme/colors.dart';

Widget getAppBar(context){
    return AppBar(
        elevation: 0,
        backgroundColor: white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: SvgPicture.asset("assets/images/burger_icon.svg"),onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                fullscreenDialog: true,
                builder: (_) => MenuPage()));
        }),
            Row(
              children: <Widget>[
                IconButton(icon: SvgPicture.asset("assets/images/search_icon.svg"), onPressed: (){
            
          }),
          IconButton(icon: SvgPicture.asset("assets/images/filter_icon.svg"), onPressed: (){
            
          }),
          IconButton(icon: Container(
            child: Center(
              child: Text("3",style: TextStyle(
                color: white,
                fontSize: 13,
                fontWeight: FontWeight.w600
              ),),
            ),
            decoration: BoxDecoration(
              color: black,
              shape: BoxShape.circle
            ),
          ), onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => CartPage()));
          }),
              ],
            )
          ],
        ),
      );
  }