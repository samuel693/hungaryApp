import 'package:carousel_slider/carousel_slider.dart'; //for slider
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';   //change the color of status bar
import 'package:flutter_localizations/flutter_localizations.dart';  //for using arabic
import 'package:hungry1234/Data/data.dart';
import 'dart:collection';
import 'dart:math';

import 'Shop.dart';



class myApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
       return myAppState();
  }
  
  
  
}


class myAppState extends State<myApp>{






   int current_index=0;
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.amber,   //color of status bar
        statusBarIconBrightness: Brightness.dark,  //عشان الايقونات اللي في شريط الحاله تبان
    ));    //change the color of status bar




      return MaterialApp(

         debugShowCheckedModeBanner: false,


        //for using arabic
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale("ar"),
        ],
        locale: Locale("ar"),





        home:Scaffold(
            body: ListView(
                children: <Widget>[
                  Container(
                    color: Colors.amber,
                    padding: EdgeInsets.all(8.0),
                    height: 100,

                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[

                         Container(
                           child:Row (
                           children: <Widget>[

                             Icon(Icons.location_on),
                             Text("  مدينة المنيا ",
                               style: TextStyle(
                                 color:Colors.black54,
                               ),
                             ),

                           ],
                           ),


                         ),


                         Container(
                           height: 40.0,

                           child:  TextField(
                             maxLines: 1,
                             cursorColor: Colors.black45,
                             decoration: InputDecoration(

                               fillColor: Colors.white,
                               filled: true,
                               hintText: " بحث عن مطعم",
                               contentPadding: EdgeInsets.all(0),


                               border: new OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10.0),
                               ),

                               enabledBorder: new OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(10.0),
                                   borderSide: BorderSide(color: Colors.white)
                               ),

                               focusedBorder: new OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(10.0),
                                   borderSide: BorderSide(color: Colors.white)
                               ),


                               prefixIcon: Icon(Icons.search,
                                 color: Colors.amber,),

                               suffixIcon: Icon(Icons.tune,
                                 color: Colors.amber,),


                             ),
                           ),
                         ),
                       ],
                     ),
                  ),

              SizedBox(
                height: 8.0,
              ),




                  CarouselSlider(
                        height: 180,
                        autoPlay: true, //for moving between pictures automatically
                        viewportFraction:0.97,    //show one picture only
                        autoPlayInterval: Duration(seconds: 2),   //time when between moving picture
                        autoPlayAnimationDuration: Duration(milliseconds: 300),

                        items: <Widget>[

                             Builder(
                                 builder: (BuildContext context)
                                      { return Container(
                                         width: 320.0,
                                         margin: EdgeInsets.symmetric(horizontal: 5.0),
                                            child: ClipRRect(
                                               borderRadius: new BorderRadius.circular(10.0),
                                               child: Image.asset("images/5.jpg",
                                                    fit: BoxFit.fitWidth, //for picture filling box
                                               ),
                                               ),
                                               );
                                                },
                                              ),

                          Builder(
                            builder: (BuildContext context)
                            { return Container(
                              width: 320.0,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(10.0),
                                child: Image.asset("images/1.jpg",
                                  fit: BoxFit.fitWidth, //for picture filling box
                                ),
                              ),
                            );
                            },
                          ),

                          Builder(
                            builder: (BuildContext context)
                            { return Container(
                              width: 320.0,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(10.0),
                                child: Image.asset("images/3.jpg",
                                  fit: BoxFit.fitWidth, //for picture filling box
                                ),
                              ),
                            );
                            },
                          ),


                          Builder(
                            builder: (BuildContext context)
                            { return Container(
                              width: 320.0,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(10.0),
                                child: Image.asset("images/8.jpg",
                                  fit: BoxFit.fitWidth, //for picture filling box
                                ),
                              ),
                            );
                            },
                          ),



                        ],

                      onPageChanged: (int index){
                          setState(() {
                             current_index=index;
                          });
                      },
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      for(int i=0;i<4;i++)
                        Container(
                          height: 8.0,
                          width: i==current_index? 8 :4,
                          margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 1.0),

                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: i==current_index?Colors.amber : Colors.grey.shade400,
                          ),
                        ),
                 ],
      ),
                  
                  for(int i=0; i<getShops().length; i++)
                    Column(
                      children: <Widget>[
                       Padding(
                         padding: EdgeInsets.only(left: 16, right: 10,),

                         child: Row(
                           children: <Widget>[
                             Column(
                               children: <Widget>[
                                 Image.asset(getShops()[i].iconUrl,
                                   width: 55,
                                   height: 55,
                                 ),

                                 SizedBox(
                                   height: 6,

                                 ),



                                 Row(
                                   children: <Widget>[
                                     Text(getShops()[i].rating.toString(),
                                       style: TextStyle(
                                         fontSize: 12,
                                         color:Colors.grey.shade500,
                                       ),
                                     ),
                                     Icon(Icons.star,
                                       color: Colors.yellow.shade500,
                                       size: 20,
                                     ),

                                   ],
                                 ),
                               ],
                             ),

                             Container(
                               height:70 ,
                               width:1 ,
                               color:Colors.grey.shade500 ,
                               margin: EdgeInsets.only(left: 10 , right: 10,),
                             ) ,


                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[

                                 Text(getShops()[i].name,
                                   style: TextStyle(
                                     fontSize: 15.0,
                                     fontWeight:FontWeight.bold,
                                   ),
                                 ),

                                 Text(getShops()[i].getCategories() ,
                                   style: TextStyle(
                                     fontSize: 12,
                                   ),
                                 ),

                                 Text(" الحد الادني "+getShops()[i].lowerPrice.toString() +
                                     "    " +
                                     "توصيل "+ getShops()[i].deliveryPrice.toString(),

                                   style: TextStyle(
                                     fontSize: 10.0,
                                     color: Colors.grey,
                                   ),
                                 ),



                                 Row(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: <Widget>[
                                     Icon(Icons.fast_forward   ,   size: 16,),
                                     Text(" اسرع شئ")
                                   ],
                                 )


                               ],
                             ),
                             Divider(),
                           ],
                         ),
                       ) ,
                      ],
                    ),
    ],
        ),
        ),
      );
  }


  void pic(String url){

    Builder(
      builder: (BuildContext context)
      { return Container(
        width: 320.0,
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        child: ClipRRect(
          borderRadius: new BorderRadius.circular(10.0),
          child: Image.asset(url,
            fit: BoxFit.fitWidth, //for picture filling box
          ),
        ),
      );
      },
    );


  }



}
