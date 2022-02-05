import 'package:flutter/material.dart';
import 'package:mobx_kullanimi/IkinciSayfa.dart';

import 'SayacModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //
        primarySwatch: Colors.blue,
      ),
      home: AnaSayfa(), 
    );
  }
}



class AnaSayfa extends StatelessWidget {
  var sayacModelNesne = SayacModel();


  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
        child: Column(
          //
          //
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("${sayacModelNesne.sayac}"),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => IkinciSayfa()));

            },
                child: Text("Geçiş yap"))

          ],
        ),
      ),

    );
  }
}
