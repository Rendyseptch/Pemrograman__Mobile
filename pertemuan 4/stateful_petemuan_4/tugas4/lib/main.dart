import 'package:flutter/material.dart';
import 'package:tugas4/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  final inputController = TextEditingController();
  String _newValue = "Kelvin";
  double _result = 0;

  var listItem = ["Kelvin", "Reamur"];

  void perhitunganSuhu() {
    setState(() {
      _inputUser = double.parse(inputController.text);
      if (_newValue == "Kelvin")
        _result = _inputUser + 273;
      else
        _result = (4 / 5) * _inputUser;
      listViewItem.add("$_inputUser Celcius = $_result $_newValue");
    });
  }

  void convertTemperature() {}

  List<String> listViewItem = [];

  void dropdownOnChanged(String changeValue) {
    setState(() {
      _newValue = changeValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          child: Column(
            children: [
              TextFormField(
                controller: inputController,
                keyboardType:
                    TextInputType.number, // Menggunakan inputController
                decoration: InputDecoration(
                  labelText: 'Masukkan Suhu',
                ),
              ),

              //container sub ke 2
              Container(
                child: Column(
                  children: [
                    DropdownButton<String>(
                      items: listItem.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      value: _newValue,
                      onChanged: (changeValue) {
                        setState(() {
                          _newValue = changeValue!;
                          perhitunganSuhu();
                        });
                      },
                    ),
                    Result(result: _result)
                  ],
                ),
              ),

              SizedBox(
                child: Container(
                  width: double
                      .infinity, // Menambahkan ini untuk memanjangkan button
                  child: ElevatedButton(
                    onPressed: perhitunganSuhu,
                    child: Text(
                      "Konversi Suhu",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
              ),
              //container jejeran 3
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'Riwayat Konversi',
                  style: TextStyle(fontSize: 20),
                ),
              ),

              Expanded(
                child: ListView(
                  children: listViewItem.map((String value) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 15),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
            //JEJERAN 3
          ),
        ),
      ),
    );
  }
}
