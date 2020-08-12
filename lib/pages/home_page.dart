import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modern_online_app/constant/product_data.dart';
import 'package:modern_online_app/pages/cart_page.dart';
import 'package:modern_online_app/pages/product_detail_page.dart';

import 'package:modern_online_app/theme/colors.dart';
import 'package:modern_online_app/widgets/app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: getAppBar(context),
      body: getBody(),
    );
  }
  
  Widget getBody(){
    return ListView(
      children: <Widget>[
        
        Padding(
          padding: const EdgeInsets.only(top: 40,left: 30,right: 30,bottom: 20),
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Shoes",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600
              ),),
              Row(
                children: <Widget>[
                  Text("Sort by",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),),
                  SizedBox(width: 8,),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Icon(Icons.keyboard_arrow_down),
                  )
                ],
              )
            ],
          ),
        ),
        Column(children: List.generate(products.length, (index){
          return FadeInDown(
            duration: Duration(milliseconds: 350 * index),
                      child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => ProductDetailPage(
                  id: products[index]['id'].toString(),
                  name: products[index]['name'],
                  img: products[index]['img'],
                  price: products[index]['price'],
                  mulImg: products[index]['mul_img'],
                  sizes: products[index]['sizes'],
                )));
              },
                          child: Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: grey,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [BoxShadow(
                          spreadRadius: 1,
                          color: black.withOpacity(0.1),
                          blurRadius: 2
                        )]
                      ),
                      child: Column(
                        children: <Widget>[
                          Center(
                            child: Container(
                              width: 280,
                              height: 180,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/"+products[index]['img']),fit: BoxFit.cover)
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Text(products[index]['name'],style: TextStyle(
                            fontSize:17,
                            fontWeight: FontWeight.w600
                          ),),
                          SizedBox(height: 15,),
                          Text("\$ "+products[index]['price'],style: TextStyle(
                            fontSize:16,
                            fontWeight: FontWeight.w500
                          ),),
                          SizedBox(height: 25,)
                        ],
                        
                      ),
                    ),
                    Positioned(
                      right: 10,
                      child: IconButton(icon: SvgPicture.asset("assets/images/heart_icon.svg"), onPressed: null))
                  ],
                )
              ),
            ),
        ),
          );
        }))
      ],
    );
  }
}