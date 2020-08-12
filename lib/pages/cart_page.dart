import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modern_online_app/constant/product_data.dart';
import 'package:modern_online_app/theme/colors.dart';
import 'package:modern_online_app/widgets/app_bar.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
        Padding(padding: EdgeInsets.only(top: 40,left: 30,right: 30,bottom: 30),child:  Text("My Bag",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600
              ),),),
        Column(
          children: List.generate(3, (index){
            return FadeInDown(
               duration: Duration(milliseconds: 350 * index),
                          child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30,bottom: 30),
          child: Row(
              children: <Widget>[
                Container(      
                  decoration: BoxDecoration(
                    color: grey,
                     boxShadow: [BoxShadow(
                        spreadRadius: 0.5,
                        color: black.withOpacity(0.1),
                        blurRadius: 1
                      )],
                    borderRadius: BorderRadius.circular(20)
                  ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10,left: 25,right: 25,bottom: 25),
                                child: Column(

                                  children: <Widget>[
                                   
                                    Center(
                                  child: Container(
                    width: 120,
                    height: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/"+products[index]['img']),fit: BoxFit.cover)
                    ),
                  ),
                                ),
                             
                                  ],
                                ),
                              ),
                ),
                SizedBox(width: 20,),
                Expanded(child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(products[index]['name'],style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),),
                    SizedBox(height: 15,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                      Text("\$ "+products[index]['price'],style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),),
                    Text("x1",style: TextStyle(
                      fontSize: 14,
                      color: black.withOpacity(0.5),
                      fontWeight: FontWeight.w500
                    ),)
                   ],)
                  ],
                ))
              ],
          ),
        ),
            );
          }),
        ),
        SizedBox(height: 50,),
        Padding(padding: EdgeInsets.only(left: 30,right: 30),child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Total",style: TextStyle(
                fontSize: 22,
                color: black.withOpacity(0.5),
                fontWeight: FontWeight.w600
              ),),
             Text("\$ 508.00",style: TextStyle(
                fontSize: 22,
                
                fontWeight: FontWeight.w600
              ),),
          ],
        ),),
        SizedBox(height: 30,),
        Padding(
          
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: FlatButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: black,
            onPressed: (){

          }, child: Container(
            height: 50,
           child: Center(
             child: Text("CHECKOUT",style: TextStyle(
               color: white,
               fontSize: 15,
               fontWeight: FontWeight.w600
             ),),
           ),
          )
          ),
        )
      ],
    );
  }
}