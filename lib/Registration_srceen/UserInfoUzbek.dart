import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: PersonalDataScreen2(),
    );
  }
}

class PersonalDataScreen2 extends StatefulWidget {
  @override
  _PersonalDataScreenState createState() => _PersonalDataScreenState();
}

class _PersonalDataScreenState extends State<PersonalDataScreen2> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  String? selectedRegion;
  String? selectedCity;
  String? selectedProfession;
  DateTime? selectedDate;

  final List<String> professions = ['Программист', 'Дизайнер', 'Учитель', 'Инженер' 'Моляр',  'Пилотчик',  'Паркетчик', 'Электрик', 'Сантехник',];
  final List<String> regions = ['Ташкентская область', 'Самаркандская область', ' Андижонская область',  'Бухарская область',   'Джизакская область', ' Навоийская область',  'Наманганская область',  'Сырдарьинская область',  'Ферганская область', 'Хорезмская область',  '',  ];
  final List<String> cities = ['Ташкент', 'Самарканд', 'Бухара', 'Самарканд', 'Андижон', 'Джизаx', 'Навоий', 'Наманган', 'Сырдарьи',  'Ферганa', 'Хорезм', ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    // Dynamically adjust padding and text size
    final double padding = screenWidth * 0.05;
    final double textSize = screenWidth * 0.06;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding, vertical: screenHeight * 0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Shaxsiy malumotlar',
              style: TextStyle(color: Colors.white, fontSize: textSize),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.03),
            // Name TextField
            _buildTextField(nameController, 'Ism', screenWidth),
            SizedBox(height: screenHeight * 0.02),
            // Last Name TextField
            _buildTextField(lastNameController, 'Familiya', screenWidth),
            SizedBox(height: screenHeight * 0.02),
            // Date of Birth Picker
            GestureDetector(
              onTap: () => _selectDate(context),
              child: Container(
                height: screenHeight * 0.07,
                padding: EdgeInsets.symmetric(horizontal: padding),
                decoration: BoxDecoration(
                  color: Colors.grey[900], // Darker background color for the container
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  selectedDate == null
                      ? 'Tugulgan sana '
                      : '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            // Region Dropdown
            _buildDropdown('Viloyat', regions, selectedRegion, (String? newValue) {
              setState(() {
                selectedRegion = newValue;
              });
            }, screenWidth),
            SizedBox(height: screenHeight * 0.02),
            // City Dropdown
            _buildDropdown('Shahar/ поселок', cities, selectedCity, (String? newValue) {
              setState(() {
                selectedCity = newValue;
              });
            }, screenWidth),
            SizedBox(height: screenHeight * 0.02),
            // Profession Dropdown
            _buildDropdown('Ваша профессия', professions, selectedProfession, (String? newValue) {
              setState(() {
                selectedProfession = newValue;
              });
            }, screenWidth),
            SizedBox(height: screenHeight * 0.04),
            // Finish Registration Button
            ElevatedButton(
              onPressed: () {
                // Add your onPressed logic here
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, // Text color for the button
                backgroundColor: Colors.white, // White background for the button
                minimumSize: Size(double.infinity, screenHeight * 0.07),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text('Registratsiyani tugatish ', style: TextStyle(fontSize: textSize * 0.8)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hintText, double screenWidth) {
    return Container(
      height: screenWidth * 0.13,
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
      decoration: BoxDecoration(
        color: Colors.grey[900], // Darker background color for the TextField container
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[400]), // Light gray hint text
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildDropdown(String hint, List<String> items, String? selectedValue, ValueChanged<String?> onChanged, double screenWidth) {
    return Container(
      height: screenWidth * 0.13,
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
      decoration: BoxDecoration(
        color: Colors.grey[900], // Darker background color for the dropdown container
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButton<String>(
        value: selectedValue,
        hint: Text(hint, style: TextStyle(color: Colors.grey[400])), // Light gray hint text
        dropdownColor: Colors.grey[800],
        isExpanded: true,
        icon: Icon(Icons.arrow_drop_down, color: Colors.white),
        style: TextStyle(color: Colors.white),
        underline: SizedBox(),
        onChanged: onChanged,
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
