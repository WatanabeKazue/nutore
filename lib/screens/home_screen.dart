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
          const SizedBox(
            height: 75.0,
          ),
          DropdownButton(
            items: _memuItems,
            value: _numberOfuestions,
            //null safety (T?なので型指定必要)
            //final ValueVChanged<T?>? onChanged
            //https: //api.flutter.dev/flutter/material/DropdownButton-class.html
            onChanged:
            icon: Icon(Icons.skip_next),
            label: Text("スタート"),
            onPressed: () => print("おしたで～"),
            style: ElevatedButton.styleFrom(
              primary: Icon(Icons.)

            ),


          )
          
          
          
          RaisedButton(
            child: Text("スタート"),
          ),
        )
        ],
      ),
    ),)
    ,
    );
  }
}
