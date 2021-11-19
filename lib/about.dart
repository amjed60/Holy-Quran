import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class About extends StatelessWidget {
//  const About({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: 
     Column(
              children: [

                
       SizedBox( 
         height: MediaQuery.of(context).size.height/2,
             child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                       " تم برمجة وتصميم هذا التطبيق من قبل مجدسوفت للتطبيقات والانظمة المحدودة",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
               // SizedBox(height: 10,),
 GestureDetector(
                          onTap: () async {
                            await launch("https://amjedprofile.000webhostapp.com/#/");
                          },
                          child: Image.asset(
                            'assets/playstore2.png',
                            fit: BoxFit.fill,
                          width: 150, // height: 100,
                            //      color: Colors
                            //         .green, // widget.Level.id_lev == "1" ? mainBlue : Colors.white,
                          ),
                        ),
                SizedBox(height: 10,),
                
                Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () async {
                              await launch("https://www.facebook.com/profile.php?id=100010937678378");
                            },
                            child: Icon(
                              Icons.facebook_outlined,
                              color: Colors.blue,
                              size: 50,
                            )),
                            //
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () async {
                            await launch("https://t.me/amjedqhtan");
                          },
                          child: Image.asset(
                            'assets/telegram.png',
                            fit: BoxFit.fill,
                            width: 44, // height: 100,
                            //      color: Colors
                            //         .green, // widget.Level.id_lev == "1" ? mainBlue : Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () async {
                            final link = WhatsAppUnilink(
                                phoneNumber:
                                '+967777905259',// ,
                                text: "السلام عليكم ورحمة الله \n    "+"لقد اتيت من تطبيق القران الكريم");
                            // Convert the WhatsAppUnilink instance to a string.
                            // Use either Dart's string interpolation or the toString() method.
                            // The "launch" method is part of "url_launcher".
                            await launch('$link');
                            //
                          },
                          
                          child: Image.asset(
                            'assets/whatsapp.png',
                            fit: BoxFit.fill,
                            width: 50, // height: 100,
                            //      color: Colors
                            //         .green, // widget.Level.id_lev == "1" ? mainBlue : Colors.white,
                          ),
                        ),
                         SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () async {
                           await launch('https://github.com/amjed60');
                            //
                          },
                          
                          child: Image.asset(
                            'assets/github.png',
                            fit: BoxFit.fill,
                            width: 40, // height: 100,
                            //      color: Colors
                            //         .green, // widget.Level.id_lev == "1" ? mainBlue : Colors.white,
                          ),
                        ),
                         SizedBox(
                          width: 20,
                        ),
                          GestureDetector(
                                             onTap: ()async {
                                             String hi="Hi Amjed",v="Icomming from Al quran Alkarim";
                                            final Uri params = Uri(
  scheme: 'mailto',
  path: "amjd606070@gmail.com",
  query: 'subject=${hi}&body=${v}',
);

var url = params.toString();
if (await canLaunch(url)) {
  await launch(url);
} else {
  throw 'Could not launch $url';

    }
                                              // await launch('islamiccentremedina@gmail.com');
                                            },
                                            child: Image.asset(
                                                'assets/gmail.png',
                                                fit: BoxFit.fill,
                                                width: 44, // height: 100,
                                                //      color: Colors
                                                //         .green, // widget.Level.id_lev == "1" ? mainBlue : Colors.white,
                                              ),)
                      ],
                    ),
           
         
            ],),
          //  SizedBox(height: 100,),
                 
    
    );
  }
}