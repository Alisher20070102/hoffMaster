// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: UserAgreementScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
//
// class UserAgreementScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Пользовательское соглашение',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 20),
//               Expanded(
//                 child: Container(
//                   padding: EdgeInsets.all(16.0),
//                   decoration: BoxDecoration(
//                     color: Colors.grey[900],
//                     borderRadius: BorderRadius.circular(16.0),
//                   ),
//                   child: Scrollbar(
//                     thumbVisibility: true, // Makes scrollbar visible
//                     child: SingleChildScrollView(
//                       child: Text(
//                         'Регистрируясь в Приложении, вы подтверждаете, что прочитали, поняли и согласны с условиями настоящего Пользовательского соглашения, а также с правилами сбора и использования Вашей информации, изложенными в Политике конфиденциальности. Если Вы не согласны с какими-либо статьями, содержащимися в настоящем Соглашении, пожалуйста, не используйте Приложение.\n\n1. ОБЩИЕ ПОЛОЖЕНИЯ\n\n1.1 Мобильное приложение (далее - "Приложение") предоставляет функциональные возможности, доступные Пользователям через Магазин приложений, которые соглашаются с условиями настоящего Соглашения. Приложение представляет собой информационно-поисковую систему, разработанную и поддерживаемую разработчиком на платформах Android и Apple iOS.\n\nПри нажатии кнопки Принимаю, вы подтверждаете, что вы прочли и согласны с Пользовательским соглашением.',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Нажимая кнопку Принимаю, вы подтверждаете что вы прочли и согласны с Пользовательским соглашением',
//                 style: TextStyle(
//                   color: Colors.white70,
//                   fontSize: 14,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 10),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.black, backgroundColor: Colors.white,
//                   padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                 ),
//                 onPressed: () {
//                   // Handle acceptance action here
//                 },
//                 child: Text(
//                   'ПРИНИМАЮ',
//                   style: TextStyle(fontSize: 16),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
