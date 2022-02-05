import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_kullanimi/SayacModel.dart';

class IkinciSayfa extends StatelessWidget {


  var sayacModelNesne = SayacModel();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ikınci Sayfa"),
      ),
      body: Center(
        child: Column(
          //
          //
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(builder: (_){
              return Text("${sayacModelNesne.sayac}");
            }),

            ElevatedButton(onPressed: (){
              sayacModelNesne.sayacArttir();

            },
                child: Text("Sayac Arttır")),
            ElevatedButton(onPressed: (){
              sayacModelNesne.sayacAzalt();

            },
                child: Text("Sayac Azalt"))

          ],
        ),
      ),

    );
  }
}
