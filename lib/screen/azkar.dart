import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Azkar extends StatelessWidget {
  final List azkarList;
  final String txt;
  const Azkar({ this.azkarList,this.txt });

  @override
  Widget build(BuildContext context) {
     final key = new GlobalKey<ScaffoldState>();
    return Scaffold(
         appBar: AppBar(
            backgroundColor: Colors.grey[850],
            centerTitle: true,
            title:Text(txt,style: TextStyle(color:Colors.white ,fontSize: 20),),),
           
      body:
       Directionality(
                  textDirection: TextDirection.rtl,
        child: CarouselSlider.builder(itemCount:azkarList.length,
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
                  SizedBox(height: MediaQuery.of(context).size.height/9,),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text((index+1).toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(azkarList[index]['text'].toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ),),
                  ),
                  SizedBox(height: 100,),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(azkarList[index]['details'].toString()=="null"?"":azkarList[index]['details'].toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ),),
                  ),
                ],
              ))
            ),
      )
    );
  }
}