import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   @override
  _MyAppState createState() => _MyAppState();
 }

class _MyAppState extends State<MyApp> {

  List<Map<String, dynamic>> savolJavoblar = [
    {
      "savol": "1. Who __ you ?",
      "javoblar": [
        {"matn": "are", "togrimi": true},
        {"matn": "is", "togrimi": false},
        {"matn": "that", "togrimi": false},
        {"matn": "me", "togrimi": false},
      ],
    },
    {
      "savol": "2. __ are you ?",
      "javoblar": [
        {"matn": "are", "togrimi": false},
        {"matn": "is", "togrimi": false},
        {"matn": "Who", "togrimi": true},
        {"matn": "me", "togrimi": false},
      ],
    },
    {
      "savol": "3. What ___ your name ?",
      "javoblar": [
        {"matn": "are", "togrimi": false},
        {"matn": "is", "togrimi": true},
        {"matn": "that", "togrimi": false},
        {"matn": "me", "togrimi": false},
      ],
    },
    {
      "savol": "4. My ___ is Ozodbek ?",
      "javoblar": [
        {"matn": "who", "togrimi": false},
        {"matn": "bad", "togrimi": false},
        {"matn": "that", "togrimi": false},
        {"matn": "name", "togrimi": true},
      ],
    },
    {
      "savol": "5. What ___ you want ?",
      "javoblar": [
        {"matn": "do", "togrimi": true},
        {"matn": "gone", "togrimi": false},
        {"matn": "that", "togrimi": false},
        {"matn": "me", "togrimi": false},
      ],
    },
    {
      "savol": "6. ___ is me ?",
      "javoblar": [
        {"matn": "you", "togrimi": false},
        {"matn": "is", "togrimi": false},
        {"matn": "it", "togrimi": true},
        {"matn": "me", "togrimi": false},
      ],
    },
    {
      "savol": "7. This ___ Pen ?",
      "javoblar": [
        {"matn": "are", "togrimi": false},
        {"matn": "is", "togrimi": true},
        {"matn": "that", "togrimi": false},
        {"matn": "me", "togrimi": false},
      ],
    },
    {
      "savol": "8. I ___ A Programmist ?",
      "javoblar": [
        {"matn": "are", "togrimi": false},
        {"matn": "is", "togrimi": false},
        {"matn": "am", "togrimi": true},
        {"matn": "me", "togrimi": false},
      ],
    },
  ];

  int hozirgiSavolRaqami = 0;
  int natija = 0;

  void javobLar(bool togrimi) {
    setState(() {
      hozirgiSavolRaqami++;
    });

    if (togrimi) {
      natija++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "English Quiz",
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
        body: hozirgiSavolRaqami < savolJavoblar.length ? Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                savolJavoblar[hozirgiSavolRaqami]["savol"],
                style: TextStyle(fontSize: 25.0),
              ),
              ElevatedButton(
                child: Text(
                  savolJavoblar[hozirgiSavolRaqami]["javoblar"][0] ["matn"],
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                onPressed: () => javobLar(savolJavoblar[hozirgiSavolRaqami]
                    ["javoblar"][0]["togrimi"]),
              ),
              ElevatedButton(
                child: Text(
                  savolJavoblar[hozirgiSavolRaqami]["javoblar"][1] ["matn"],
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                onPressed: () => javobLar(savolJavoblar[hozirgiSavolRaqami]
                    ["javoblar"][1]["togrimi"]),
              ),
              ElevatedButton(
                child: Text(
                  savolJavoblar[hozirgiSavolRaqami]["javoblar"][2] ["matn"],
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                onPressed: () => javobLar(savolJavoblar[hozirgiSavolRaqami]
                    ["javoblar"][2]["togrimi"]),
              ),
              ElevatedButton(
                child: Text(
                  savolJavoblar[hozirgiSavolRaqami]["javoblar"][3] ["matn"],
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                onPressed: () => javobLar(savolJavoblar[hozirgiSavolRaqami]
                    ["javoblar"][3]["togrimi"]),
              ),
            ],
          ),
        ) : Center(child: 
        Text("Natija $natija/${savolJavoblar.length}",style: TextStyle(fontSize: 30.0),),
        ),
      ),
    );
  }
}
