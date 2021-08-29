
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
 runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  double  natija = 0.0;
  late String numbetText1 = "";
  late String numbetText2 = "";

  void plusFun(double numberOne,NumberTwo){
    setState(() {
      natija = numberOne+NumberTwo;
    });
  }
  void minusFun(double numberOne,NumberTwo){
    setState(() {
      natija = numberOne-NumberTwo;
    });
  }
  void kopFun(double numberOne,NumberTwo){
    setState(() {
      natija = numberOne*NumberTwo;
    });
  }
  void bolishFun(double numberOne,NumberTwo){
    setState(() {
      natija = numberOne/NumberTwo;
    });
  }

  void hisoblash(String number1, String number2, String ishora){
      double numberOne = double.parse(number1);
      double numberTwo = double.parse(number2);

      switch(ishora){
        case "+": plusFun(numberOne,numberTwo);
        break;
        case "-": minusFun(numberOne,numberTwo);
        break;
        case "*": kopFun(numberOne,numberTwo);
        break;
        case ":": bolishFun(numberOne,numberTwo);
      }

      print(numberOne);
      print(numberTwo);
      print(natija);
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text("Quiz")),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Center(child: Text(natija.toString(),style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),)),
                SizedBox(height: 25),
                TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter number one',
                  hintText: 'Enter your number'
                ),
                  onChanged: (text){
                  numbetText1 = text.toString();
                  },
              ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter number two',
                      hintText: 'Enter your number'
                  ),
                  onChanged: (text){
                    numbetText2 = text.toString();
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () => hisoblash(numbetText1,numbetText2,"+"), child: Text("+")),
                    SizedBox(width: 5,),
                    ElevatedButton(onPressed: () => hisoblash(numbetText1,numbetText2,"-"), child: Text("-")),
                    SizedBox(width: 5,),
                    ElevatedButton(onPressed: () => hisoblash(numbetText1,numbetText2,"*"), child: Text("*")),
                    SizedBox(width: 5,),
                    ElevatedButton(onPressed: () => hisoblash(numbetText1,numbetText2,":"), child: Text(":")),
                  ],
                ),

              ],

            ),
          ),
        ),
    );
  }
}
