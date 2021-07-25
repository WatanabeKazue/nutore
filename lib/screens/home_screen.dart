import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    print("ヨコ幅の論理ピクセル:$screenWidth");
    print("タテ幅の論理ピクセル:$screenHeight");
  }

  List<DropdownMenuItem<int>> _menuItems = [];
  int _numberOfQuestions = 0;

  @override
  void initState() {
    super.initState();
    setMenuItems();

    _numberOfQuestions = _menuItems[0].value!;
  }

  void setMenuItems() {
    //_menuItems.add(DropdownMenuItem(value: 10, child: Text("10"),));
   // _menuItems.add(DropdownMenuItem(value: 20, child: Text("20"),));
   // _menuItems.add(DropdownMenuItem(value: 30, child: Text("30"),));

    _menuItems = [(DropdownMenuItem(value: 10, child: Text(10.toString()),)),
       (DropdownMenuItem(value: 20, child: Text(20.toString()),)),
        (DropdownMenuItem(value: 30, child: Text(30.toString(),))];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              //スコア表示部分
              _scorePart(),
              //問題表示部分
              _questionPart(),
              //電卓ボタン部分
              _calcButtons(),
              //答え合わせボタン
              _answerCheckButton(),
              //戻るボタン
              _backButton(),
              ],


              //TODO スコア表示部分
             Widget _scorePart() {
              return Table(
              children: [
                TableRow(
              children: [
                Text("残り問題数", style: TextStyle(fontSize: 10.0),),
                Text("正解数", style: TextStyle(fontSize: 10.0),),
                Text("正答率", style: TextStyle(fontSize: 10.0),),
              ]
                ),

                TableRow(
                 children: []
                 ),
                ],
                )
               }
               //TODO 問題表示部分
             widget _questionPart() {}

             //TODO 電卓ボタン部分
             Widget _calcButtons() {}
             //TODO 答え合わせボタン
             Widget _answerCheckButton() {}
             //TODO 戻るボタン
             Widget _backButton() {}

              Image.asset("assets/images/image_title.png"),
              SizedBox(height: 16.0,),
              Text("問題数を選択して「スタート」ボタンを押してください"),
              //TODO プルダウン選択肢
              SizedBox(height: 50.0,),
              DropdownButton(
                items: _menuItems,
                value: _numberOfQuestions,
              onChanged: (int? selectedValue){
              _numberOfQuestions = selectedValue!;
              }, //=> print(value.toString()),
             // DropdownMenuItem(child: child),
              //  DropdownMenuItem(child: child),
              //  DropdownMenuItem(child: child),

              ),
               Expanded(
                 child: Container(
                   alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(bottom: 12.0),
                   child: RaisedButton.icon(
                     color: Colors.yellowAccent,
                     icon: Icon(Icons.skip_next),
                     onPressed: () => print("ボタンの下で～"),
                     label: Text("スタート"),
                     style: ElevatedButton.styleFrom(
                       primary:  Colors.brown,
                       onPrimary: Colors.yellowAccent,
                       shape: RoundedRectangleBorder()
                         borderRadius: BorderRadius.all(Radius.circular(10.0)),





                     )
                   ),
                 ),
               )
  ],
          ),
        ),
      ),
    );
             // DropdownB)utton(items: _menuItems,
             //  value: _numberOfQuestions ,
             // onChanged: (value) => print(value.toString()),




              //setState(() {
               // _numberOfQuestions = selectedValue;
             // });
             // } ,
             // ),
             // [
               // DropdownMenuItem(child: Container()),
               // DropdownMenuItem(child: Container()),
               // DropdownMenuItem(child: Container()),
             // ],),
              //Expanded(
                 // child: Container(
                    //alignment: Alignment.bottomCenter,
                  //  padding: EdgeInsets.only(bottom: 16.0),
                    //child: ElevatedButton.icon(
                     //   icon: Icon(Icons.ac_unit), // TODO あとで書き換え
                       // label: Text("スタート"),
                     //   onPressed: () => print("おしたで～"),
                     //   style: ElevatedButton.styleFrom(
                         //   primary: Colors.purpleAccent,
                       //     onPrimary: Colors.black,
                          //  shape: RoundedRectangleBorder(
                            //  borderRadius: BorderRadius.all(Radius.circular(
                            //      20.0),),
                        //    )
                     //   )
                 //   ),
                //  ))
          //  ],
        //  ),
      //  ),
    //  ),
  //  );
  }










//TODO 150

}
