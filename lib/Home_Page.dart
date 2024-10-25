//  import 'package:flutter/cupertino.dart';
//  import 'package:flutter/material.dart';
//
//  class LanguageSelectionScreen extends StatelessWidget {
//  const LanguageSelectionScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;
//     double screenWidth =  MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             const Center(
//               child: Text(
//                 'Tilni Tanlang / Выберите язык',
//                 style: TextStyle(fontSize: 24, color: Colors.white),
//               ),
//             ),
//             SizedBox(height: screenHeight * 0.05),
//             LanguageTile(
//               language: 'O\'zbek tili',
//               flagPath: 'assets/uzbekistan_flag.png', // add your flag image here
//               onTap: () {
//                 // Handle Uzbek language selection
//               },
//             ),
//             SizedBox(height: screenHeight * 0.02),
//             LanguageTile(
//               language: 'Русский язык',
//               flagPath: 'assets/russian_flag.png', // add your flag image here
//               onTap: () {
//                 // Handle Russian language selection
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// // class LanguageTile extends StatelessWidget {
// //   final String language;
// //   final String flagPath;
// //   final VoidCallback onTap;
// //
// //   const LanguageTile({
// //     Key? key,
// //     required this.language,
// //     required this.flagPath,
// //     required this.onTap,
// //   }) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     double screenHeight = MediaQuery.of(context).size.height;
// //
// //     return GestureDetector(
// //       onTap: onTap,
// //       child: Container(
// //         padding: EdgeInsets.symmetric(vertical: screenHeight * 0.05),
// //         decoration: BoxDecoration(
// //           color: Colors.grey[900],
// //           borderRadius: BorderRadius.circular(16),
// //         ),
// //         child: Row(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             // Image.asset(
// //             //   flagPath,
// //             //   width: 40,
// //             //   height: 40,
// //             // ),
// //             // const SizedBox(width: 16),
// //             Text(
// //               language,
// //               style: const TextStyle(fontSize: 20, color: Colors.white),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
// //
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// //
// // class HomePage extends StatefulWidget {
// //     const HomePage({super.key});
// //
// //     @override
// //     State<HomePage> createState() => _HomePageState();
// //   }
// //
// //   class _HomePageState extends State<HomePage> {
// //     @override
// //     Widget build(BuildContext context) {
// //       return Scaffold(
// //         appBar:AppBar(),
// //         body: Container(
// //           child: Center(
// //             child: Text("This is home page"),
// //           ),
// //         )
// //         ,
// //       ) ;
// //     }
// //   }
