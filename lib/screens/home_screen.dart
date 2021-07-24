import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<DropdownMenuItem<int>> _menuItems = [];
  int _numberOfQuestions = 0;

  @override
  void initState() {
    super.initState();
    setMenuItems();

    _numberOfQuestions = _menuItems[0].value;
  }

  void setMenuItems() {
    _menuItems.add(DropdownMenuItem(value: 10, child: Text("10"),));
    _menuItems.add(DropdownMenuItem(value: 20, child: Text("20"),));
    _menuItems.add(DropdownMenuItem(value: 30, child: Text("30"),));

    _menuItems = add(DropdownMenuItem(value: 10, child: Text(10.toString()),))
       ..add(DropdownMenuItem(value: 10, child: Text(10.toString()),))
        ..add(DropdownMenuItem(value: 10, child: Text(10.toString()),));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset("assets/images/image_title.png"),
              SizedBox(height: 16.0,),
              Text("問題数を選択して「スタート」ボタンを押してください"),
              //TODO プルダウン選択肢
              SizedBox(height: 50.0,),
              DropdownButton(items: _menuItems,
               value: _numberOfQuestions ,
              onChanged: (value) => print(value.toString()),
              setState(() {
                _numberOfQuestions = selectedValue;
              });
              } ,
              ),
              [
                DropdownMenuItem(child: Container()),
                DropdownMenuItem(child: Container()),
                DropdownMenuItem(child: Container()),
              ],),
              Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(bottom: 16.0),
                    child: ElevatedButton.icon(
                        icon: Icon(Icons.ac_unit), // TODO あとで書き換え
                        label: Text("スタート"),
                        onPressed: () => print("おしたで～"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.purpleAccent,
                            onPrimary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(
                                  20.0),),
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
//TODO 140

}
