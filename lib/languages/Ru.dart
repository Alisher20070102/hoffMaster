import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../Registration_srceen/UserInfo.dart';
import '../royhatdan otish/codeKelishi.dart'; // Import qilingan joy

class RuButton extends StatefulWidget {
  const RuButton({super.key});

  @override
  State<RuButton> createState() => _RuButtonState();
}

class _RuButtonState extends State<RuButton> {
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
            "Авторизация",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Введите ваш номер телефона, чтобы создать или войти в аккаунт',
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
                labelText: 'Номер телефона',
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
                        title: Text('Ошибка'),
                        content: Text('Пожалуйста, введите полный номер телефона.'),
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
                    MaterialPageRoute(builder: (context) => codeKelish()), // CodeKelish sahifasi
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white, // Tugma matn rangi
              ),
              child: Text(
                'ПРОДОЛЖИТЬ',
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
