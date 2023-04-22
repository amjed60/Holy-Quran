import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran/library/lists.dart';

class Hadith extends StatelessWidget {
 // const Hadith({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    return Scaffold(
      body:
       Directionality(
                  textDirection: TextDirection.rtl,
        child: CarouselSlider.builder(itemCount:alhadith.length,
            height: MediaQuery.of(context).size.height,
            
            autoPlay: false,reverse: false,
            
          //autoPlayInterval: Duration(seconds: 6),
          //autoPlayAnimationDuration: Duration(milliseconds: 800),
          //autoPlayCurve: Curves.fastOutSlowIn,
            itemBuilder:(BuildContext context,int index)=>Container(
              width: MediaQuery.of(context).size.width,
              
              
              decoration:  BoxDecoration(
                color: Colors.grey[800],
              borderRadius: BorderRadius.circular(15)
              
              ),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height/3,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(alhadith[index]['text'].toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ),),
                  ),
                ],
              ))
            ),
      )
    );
  }
}