import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Registration_srceen/UserInfo.dart';
import '../Registration_srceen/UserInfoUzbek.dart';

class uzbButton extends StatefulWidget {
  const uzbButton({super.key});

  @override
  State<uzbButton> createState() => _uzbButtonState();
}

class _uzbButtonState extends State<uzbButton> {
  final TextEditingController _phoneController = TextEditingController(); // Telefon raqami uchun controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Center(
            child: Image.asset('assets/flog/logoHoff.png'),
          ),
          SizedBox(height: 30),
          Text(
            "Tasdiqlash",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Hisob yaratish yoki unga kirish uchun telefon raqamingizni kiriting',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 330,
            height: 68,
            child: TextField(
              controller: _phoneController, // Controllerni o'rnatish
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly, // Faqat raqam kiritiladi
                LengthLimitingTextInputFormatter(9), // Maksimal uzunlik 9 raqam
              ],
              decoration: InputDecoration(
                labelText: 'Telefon raqam',
                prefixText: '+998 ',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 377, // Tugma kengligi
            height: 71, // Tugma balandligi
            child: ElevatedButton(
              onPressed: () {
                if (_phoneController.text.length < 9) { // Agar raqam to'liq kiritilmagan bo'lsa
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Xato'),
                        content: Text('Iltimos, to‘liq telefon raqamingizni kiriting.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Dialogni yopish
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  // Telefon raqami to'liq kiritilgan bo'lsa, codeKelish sahifasiga o'tish
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PersonalDataScreen2()), // CodeKelish sahifasi
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white, // Tugma matn rangi
              ),
              child: Text(
                'DAVOM ETISH',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
