 import 'package:flutter/cupertino.dart';
 import 'package:flutter/material.dart';
// import 'package:hoff_master/languages/Ru.dart';

import 'languages/Ru.dart';
import 'languages/Uzb.dart';

 class LanguageSelectionScreen extends StatelessWidget {
 const LanguageSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth =  MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 26,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tilni Tanlang/Выберите язык',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.05),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => uzbButton()), // Yangi sahifa
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(380, 195), // Tugmaning kengligi va balandligi
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24), // Burchak radiusi
                ),
                padding: EdgeInsets.only(top: 12, right: 20, bottom: 12, left: 20), // Padding
                // Tugma ranglarini o'zgartirish uchun kerak bo'lsa:
                backgroundColor: Color.fromARGB(255, 0, 0, 23), // Tugma fon rangi (o'zgartiring)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Tugmadagi elementlarni joylashishi
                children: [
                  Image.asset('assets/flog/UZ.png', height: 50), // Bayroq rasmi
                  SizedBox(height: 10,),
                  Text('O\'zbek tili'), // Matn
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RuButton()), // Yangi sahifa
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(380, 195), // Tugmaning kengligi va balandligi
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24), // Burchak radiusi
                ),
                padding: EdgeInsets.only(top: 12, right: 20, bottom: 12, left: 20), // Padding
                // Tugma ranglarini o'zgartirish uchun kerak bo'lsa:
                backgroundColor: Color.fromARGB(255, 0, 0, 23), // Tugma fon rangi (o'zgartiring)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Tugmadagi elementlarni joylashishi
                children: [
                  Image.asset('assets/flog/RU.png', height: 50), // Bayroq rasmi
                  SizedBox(height: 10,),
                  Text('Русский язык'), // Matn
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LanguageTile extends StatelessWidget {
  final String language;
  final String flagPath;
  final VoidCallback onTap;

  const LanguageTile({
    Key? key,
    required this.language,
    required this.flagPath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: screenHeight * 0.05),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   flagPath,
            //   width: 40,
            //   height: 40,
            // ),
            // const SizedBox(width: 16),
            Text(
              language,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}


//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class HomePage extends StatefulWidget {
//     const HomePage({super.key});
//
//     @override
//     State<HomePage> createState() => _HomePageState();
//   }
//
//   class _HomePageState extends State<HomePage> {
//     @override
//     Widget build(BuildContext context) {
//       return Scaffold(
//         appBar:AppBar(),
//         body: Container(
//           child: Center(
//             child: Text("This is home page"),
//           ),
//         )
//         ,
//       ) ;
//     }
//   }
