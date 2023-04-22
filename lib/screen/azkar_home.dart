import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran/widget/card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quran/widget/drawer.dart';
import 'package:quran/screen/hadith.dart';

import 'Index.dart';
import '../library/lists.dart';
import 'azkar.dart';

class AzkarHome extends StatefulWidget {
 // const AzkarHome({ Key? key }) : super(key: key);

  @override
  State<AzkarHome> createState() => _AzkarHomeState();
}

class _AzkarHomeState extends State<AzkarHome> {
 
 
  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    return  Scaffold(
           key: key,
           appBar: AppBar(
            backgroundColor: Colors.grey[850],
            centerTitle: true,
            title:Text("الاذكار",style: TextStyle(color:Colors.white ,fontSize: 20),),),
              
      body: 
     Directionality(
                  textDirection: TextDirection.rtl,
      child: Container(
        color: Colors.grey[850],
        child: Column(children: [
          SizedBox(height: MediaQuery.of(context).size.height/20,),
          
          
    Row(
      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      children: [
    
          InkWell(
        onTap: (){
           Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new Azkar(azkarList: athkaralsbaah,txt:'اذكار الصباح')));
        },child: new MyCard(url :'assets/morning_azkar.svg',txt:'اذكار الصباح',col: Colors.white60,col2: Colors.white,size:9.0,sizeOFIcon: 3,)),
      InkWell(
        onTap: (){
           Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new Azkar(azkarList: athkaralmsaa,txt:'اذكار المساء')));
        },
        child: new MyCard( url :'assets/night_azkar.svg',txt:'اذكار المساء',col:Colors.amber,col2: Colors.amber,size:8,sizeOFIcon: 3,)),
      
    ],),
    SizedBox(height: 50,),
    Row(
      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      children: [
    
            InkWell(
        onTap: (){
           Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new Azkar(azkarList: alnaby,txt:'الصلاة على النبي')));
        },child: new MyCard( url :'assets/prey_on_prophet.svg',txt:'الصلاة على النبي',col:  Colors.redAccent,col2: Colors.red,size:6,sizeOFIcon: 3,)),
         InkWell(
        onTap: (){
           Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new Azkar(azkarList: wakeup,txt:'اذكار الاستيقاظ')));
        },child: new MyCard( url :'assets/wakeup_azkar.svg',txt:'اذكار الاستيقاظ',col:  Colors.green,col2: Colors.green,size:6,sizeOFIcon: 3,)),
     
      
    ],),
      SizedBox(height: 50,),
    Row(
      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      children: [
    
     InkWell(
        onTap: (){
           Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new Azkar(azkarList: athkaralnom,txt:'اذكار النوم')));
        },child: new MyCard( url :'assets/sleeping_azkar.svg',txt:'اذكار النوم',col: Colors.green
         ,col2: Colors.green,size:8,sizeOFIcon: 3,)),
               InkWell(
        onTap: (){
           Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new Azkar(azkarList: tsabuh,txt:'تسبيح مابعد الصلاة')));
        },child: new MyCard( url :'assets/tasabih.svg',txt:'تسبيح مابعد الصلاة',col:  Colors.transparent,col2: Colors.transparent,size:4,sizeOFIcon: 3,)),
    ],)
     
        ],)),
    ),);
  }
}