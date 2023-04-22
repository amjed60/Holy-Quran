import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran/widget/card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quran/widget/drawer.dart';
import 'package:quran/screen/hadith.dart';

import 'Index.dart';
import 'azkar.dart';
import 'azkar_home.dart';
import '../library/lists.dart';

class Home extends StatefulWidget {
 // const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    return  Scaffold(
           key: key,
           appBar: AppBar(
            backgroundColor: Colors.grey[850],
            centerTitle: true,
            title:Text("البيان الحقيقي",style: TextStyle(color:Colors.white ,fontSize: 20),),),
              drawer: MyDrawer( ), 
      body: 
     Directionality(
                  textDirection: TextDirection.rtl,
      child: Container(
        color: Colors.grey[850],
        child: Column(children: [
          SizedBox(height: MediaQuery.of(context).size.height/20,),
          
          
    
          CarouselSlider.builder(itemCount:aya.length,
          height: MediaQuery.of(context).size.width/2,
          autoPlay: true,
          initialPage: 0,
          aspectRatio: 16/9,
          viewportFraction: 0.8,
          pauseAutoPlayOnTouch:  Duration(seconds: 10),
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
    autoPlayInterval: Duration(seconds: 8),
    autoPlayAnimationDuration: Duration(milliseconds: 800),

    enableInfiniteScroll: false,
    autoPlayCurve: Curves.fastOutSlowIn,
          itemBuilder:(BuildContext context,int index)=>Container(
            width: MediaQuery.of(context).size.width-100,
            
            decoration:  BoxDecoration(
              color: Colors.grey[800],
            borderRadius: BorderRadius.circular(15)
            
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
               
    
       Padding(
      padding: const EdgeInsets.all(8.0),
      child:   Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween ,
      children: [
      SvgPicture.asset('assets/aya.svg',  height: MediaQuery.of(context).size.width/14,color:Colors.white,),
      SizedBox(width: 10),
      Text("آية وعبرة",style: TextStyle(color:Colors.white ),),
       
      ],
      ),
    ),
    InkWell(
      onTap: (){
         Clipboard.setData(new ClipboardData(text: "اضغط للنسخ"));
                key.currentState.showSnackBar(
                    new SnackBar(
                      backgroundColor: Colors.green,dismissDirection: DismissDirection.down,
                      content: new Text("تم النسخ للحافظة",style: TextStyle(color:Colors.white,fontSize: 20 )),));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:   SvgPicture.asset('assets/copy.svg',  height: MediaQuery.of(context).size.width/14,color:Colors.white,),
         
      ),
    ),
    
                ],),
                Text(aya[index]['text'].toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ),),
                Text(aya[index]['details'].toString(),style: TextStyle(color: Colors.white ),),
              ],
            ))
          ),
          SizedBox(height:MediaQuery.of(context).size.width/5,),
    Row(
      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      children: [
    
       InkWell(
        onTap: (){
           Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new AzkarHome()));
        },child: new MyCard(url :'assets/azkar.svg',txt:'الاذكار',col: Colors.white60,col2: Colors.white,size:9.0,sizeOFIcon: 4,)),
      InkWell(
        onTap: (){
           Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new Hadith()));
        },
        child: new MyCard( url :'assets/hadith.svg',txt:'الاحاديث',col:Colors.amber,col2: Colors.amber,size:8,sizeOFIcon: 4,)),
       InkWell(
        onTap: (){
           Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new Index()));
        },child: new MyCard( url :'assets/quran.svg',txt:'القرآن الكريم',col: Colors.green ,col2: Colors.green,size:12,sizeOFIcon: 4,)),
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
                              builder: (context) => new Azkar(azkarList: sonan,txt:'سنن مهجورة')));
        },child: new MyCard( url :'assets/sonan.svg',txt:'سنن مهجورة',col:  Colors.redAccent,col2: Colors.red,size:9,sizeOFIcon: 4,)),
       InkWell(
        onTap: (){
           Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new Azkar(azkarList: aladayh,txt:'الادعية')));
        },child: new MyCard( url :'assets/tasabih.svg',txt:'الادعية',col:  Colors.green,col2: Colors.green,size:9,sizeOFIcon: 4,)),
       InkWell(
        onTap: (){
           Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new Azkar(azkarList: meslm,txt:'حصن المسلم')));
        },child: new MyCard( url :'assets/golden.svg',txt:'حصن المسلم',col:  Colors.amber,col2: Colors.amber,size:5,sizeOFIcon: 4,)),
      
    ],)
    
        ],)),
    ),);
  }
}