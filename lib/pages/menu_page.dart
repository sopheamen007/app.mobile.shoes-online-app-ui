import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modern_online_app/pages/cart_page.dart';
import 'package:modern_online_app/pages/home_page.dart';
import 'package:modern_online_app/theme/colors.dart';
import 'package:modern_online_app/widgets/app_bar.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        leading:   IconButton(icon: Icon(Icons.close,color: black,), onPressed: (){
              Navigator.pop(context);
            }),
      ),
      body: getBody(),
    );
  }
  Widget getBody(){
    List menuItems = [
      "Home",
      "New in",
      "Sale",
      "Profile",
      "Log out"
    ];
    return ListView(
      children: <Widget>[
        Padding(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 60),child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(menuItems.length, (index){
            return Padding(padding: EdgeInsets.only(bottom: 45),child: InkWell(
              onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => HomePage()), (route) => false);
                // Navigator.pop(context);
              },
              child: ElasticIn(
                duration: Duration(milliseconds: 400 * index),
                child: Text(menuItems[index],style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w600
              ),),
                          ),
            ));
          }),
        )
        )
      ],
    );
  }
}