import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset("assets/images/image_title.png"),
              Text("問題数を選択して「スタート」ボタンを押してください"),
              //TODO プルダウン選択肢
              Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(bottom: 16.0),
                    child: ElevatedButton.icon(
                      child: Text("スタート"),
                      onPressed: () => print("おしたで～"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purpleAccent,
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0),),
                        )
                      )
              ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
