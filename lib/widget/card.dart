import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCard extends StatelessWidget {
   String url,txt;
   double size,sizeOFIcon;
   Color col,col2;
   MyCard({this.url,this.txt,this.col,this.col2,this.size,this.sizeOFIcon});



  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      Container(
        
               decoration: BoxDecoration(
                color:Colors.grey[900]
                 ,
               
                                     // color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
         width: MediaQuery.of(context).size.width/sizeOFIcon,
              height: MediaQuery.of(context).size.width/sizeOFIcon,
        child: Stack(
          children: [
        
            Positioned(
              top:60,
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width/sizeOFIcon,
              height: MediaQuery.of(context).size.width/sizeOFIcon,
                child: Image.asset('assets/card_footer.png',color: col2, ))),
                  Padding(
                    padding: const EdgeInsets.only(right: 20,left: 0,top:10),
                    child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                            child:sizeOFIcon==3?
                             SvgPicture.asset(url,  height: MediaQuery.of(context).size.width/size,
                            
                            //allowDrawingOutsideViewBox: true,
                            )
                            :
                            SvgPicture.asset(url,  height: MediaQuery.of(context).size.width/size,
                            color: col,
                            //allowDrawingOutsideViewBox: true,
                            )
                            /* Image.asset(
                           "assets/azkar.svg",
                              width: 150,
                              fit: BoxFit.fill,
                            ),*/
                          ),
                  ),
          ],
        ),
      ),
      Text(txt,style: TextStyle(color: Colors.white),),
    ],
  );
  }
}