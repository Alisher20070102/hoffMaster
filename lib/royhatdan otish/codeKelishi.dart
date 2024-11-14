import 'package:flutter/material.dart';

import '../Registration_srceen/UserInfo.dart';
import '../languages/Ru.dart';

class codeKelish extends StatefulWidget {
  const codeKelish({super.key});

  @override
  State<codeKelish> createState() => _codeKelishState();
}

class _codeKelishState extends State<codeKelish> {

  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  @override

  void dispose() {
    // Fokus nodlarini tozalash
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [

        SizedBox(height: 20,),
        Row(
          children: [
            SizedBox(width: 10,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RuButton()), // CodeKelish sahifasi
              );
            }, child: Text(" > ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40)),),
          ],
        ),
        SizedBox(height: 50,),
        const Padding(
          padding: EdgeInsets.only(right: 230),
          child: Text("Верификация",style: TextStyle(color: Colors.white60),
          ),
        ),
        SizedBox(height: 10,),
        Container(
            width: 320,
            height: 160,
            child: Text("Пожалуйста введите СМС-код, чтобы подтвердить ваш номер телефона",style: TextStyle(color: Colors.white,fontSize: 26),)),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(4, (index) {
          return Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: TextField(
                focusNode: _focusNodes[index],
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 24),
                keyboardType: TextInputType.number,
                maxLength: 1, // Faqat bitta raqam kiritish uchun
                decoration: InputDecoration(
                  counterText: '', // Pastdagi uzunlik indikatorini olib tashlash
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  // Foydalanuvchi raqam kiritganda keyingi katakchaga o'tish
                  if (value.isNotEmpty && index < 3) {
                    FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
                  }
                  // Oxirgi katakcha uchun klaviaturani yopish
                  else if (value.isNotEmpty && index == 3) {
                    _focusNodes[index].unfocus();
                  }
                },
              ),

            ),
          );
        }),
      ),
        SizedBox(height: 20,),

        Container(
          width: 377, // Tugma kengligi
          height: 71,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white, // Tugma matn rangi
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PersonalDataScreen()), // CodeKelish sahifasi
                );
              },
              child: Text(
                'ПРОДОЛЖИТЬ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),),
        ),



      ],
      ),
    );
  }
}
