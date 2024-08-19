import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? seciliButon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  seciliButon = 'SOL';
                });
                //uygulamanın durumunda bir şeyleri değiştirdiğimizde setState kullanırız.
                print(seciliButon);
              },
              child: Container(
                width: 100,
                height: 200,
                color:
                    seciliButon == 'SOL' ? Colors.blueAccent : Colors.blueGrey,
                child: Text(
                  seciliButon == 'SOL' ? "AKTİF BUTON" : "PASİF BUTON",
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  //uygulamanın durumunda bir şeyleri değiştirdiğimizde setState kullanırız.
                  seciliButon = "SAĞ";
                });

                print(seciliButon);
              },
              child: Container(
                width: 100,
                height: 200,
                color:
                    seciliButon == 'SAĞ' ? Colors.blueAccent : Colors.blueGrey,
                //TEKRAR BİR METİN VS KULLANCAĞIMIZ ZAMAN CONTAİNER IN ÇOCUGU
                //OLARAK AÇMAMIZ LAZIM.
                child: Text(
                  seciliButon == 'SAĞ' ? "AKTİF BUTON" : "PASİF BUTON",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
