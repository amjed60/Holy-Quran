import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/builder/SurahViewBuilder.dart';
import 'package:quran/library/lists.dart';
import 'package:quran/screen/Index.dart';
import 'package:quran/screen/azkar.dart';
import 'package:quran/screen/azkar_home.dart';
import 'package:quran/screen/hadith.dart';
import 'package:quran/library/Globals.dart' as globals;
class MyDrawer extends StatefulWidget {
 // const MyDrawer({ Key? key }) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
          
           SizedBox(height: MediaQuery.of(context).size.width/4),
            ListTile(
              leading: Icon(Icons.arrow_back_ios_new_sharp),
              title: Center(child: const Text('القرآن الكريم',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              onTap: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new Index()));
              },
            ),
                        ListTile(
              leading: Icon(Icons.arrow_back_ios_new_sharp),
              title: Center(child: const Text(' مواصلة القراءة ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
              onTap: () {
                  if (globals.lastViewedPage != null) {
        /// Push to Quran view ([int pages] represent surah page(reversed index))
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    SurahViewBuilder(pages: globals.lastViewedPage - 1)));
      }
              },
            ),
                        ListTile(
              leading: Icon(Icons.arrow_back_ios_new_sharp),
              title: Center(child: const Text('الانتقال الى العلامات ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
              onTap: () {
                 setState(() {
        /// in case Bookmarked page is null (Bookmarked page initialized in splash screen)
        if (globals.bookmarkedPage == null) {
          globals.bookmarkedPage = globals.DEFAULT_BOOKMARKED_PAGE;
        }
      });
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (context) =>
                  SurahViewBuilder(pages: globals.bookmarkedPage - 1)),
          (Route<dynamic> route) => false);
              },
            ),
           ListTile(
              leading: Icon(Icons.arrow_back_ios_new_sharp),
              title: Center(child: const Text(' الاحاديث  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
              onTap: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new Hadith()));
              },
            ),
             ListTile(leading: Icon(Icons.arrow_back_ios_new_sharp),
              
              title: Center(child: const Text(' الاذكار  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
              onTap: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new AzkarHome()));
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_back_ios_new_sharp),
              title: Center(child: const Text('سنن مهجورة',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
              onTap: () {
                 Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new Azkar(azkarList: sonan,txt:'سنن مهجورة')));
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_back_ios_new_sharp),
              title: Center(child: const Text(' الادعية  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
              onTap: () {
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new Azkar(azkarList: aladayh,txt:'الادعية')));
              },
            ),
            ListTile(
             leading: Icon(Icons.arrow_back_ios_new_sharp),
              title: Center(child: const Text('حصن المسلم',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
              onTap: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new Azkar(azkarList: meslm,txt:'حصن المسلم')));
              },
            ),
            Container(
                width: MediaQuery.of(context).size.height/2,
              height: MediaQuery.of(context).size.height/2,
                child: Image.asset('assets/wasmia.png', ))
          ],
        ),
      );
  }
}