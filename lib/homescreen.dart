

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


import 'components/mybutton.dart';
import 'constant.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var input='';
  var result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                        child: Text(input.toString() ,style: const TextStyle(fontSize: 30,color: whiteColor,),)),
                    SizedBox(height: 10,),
                    Text(result.toString() ,style: const TextStyle(fontSize: 30,color: whiteColor,),),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Button1(title: 'AC',onPress: (){
                        input='';
                        result='';
                        setState(() {

                        });
                      },),
                      Button1(title: '+/-',onPress: (){
                        input+='+/-';
                        setState(() {

                        });
                      }),
                      Button1(title: '%',onPress: (){input+='%';
                      setState(() {

                      });}),
                      Button1(title: '/',onPress: (){input+=' /';
                      setState(() {

                      });},color: Colors.orange,),

                    ],
                  ),
                  Row(
                    children: [
                      Button1(title: '7',onPress: (){
                        input+='7';
                        setState(() {

                        });
                      },),
                      Button1(title: '8',onPress: (){
                        input+='8';
                        setState(() {

                        });
                      }),
                      Button1(title: '9',onPress: (){
                        input+='9';
                        setState(() {

                        });
                      }),
                      Button1(title: 'x',onPress: (){
                        input+='x';
                        setState(() {

                        });
                      },color: Colors.orange,),

                    ],
                  ),
                  Row(
                    children: [
                      Button1(title: '4',onPress: (){
                        input+='4';
                        setState(() {

                        });
                      },),
                      Button1(title: '5',onPress: (){
                        input+='5';
                        setState(() {

                        });
                      }),
                      Button1(title: '6',onPress: (){
                        input+='6';
                        setState(() {

                        });
                      }),
                      Button1(title: '-',onPress: (){
                        input+='-';
                        setState(() {

                        });
                      },color: Colors.orange,),

                    ],
                  ),
                  Row(
                    children: [
                      Button1(title: '1',onPress: (){ input+='1';
                      setState(() {

                      });},),
                      Button1(title: '2',onPress: (){ input+='2';
                      setState(() {

                      });}),
                      Button1(title: '3',onPress: (){ input+='3';
                      setState(() {

                      });}),
                      Button1(title: '+ ',onPress: (){ input+='+';
                      setState(() {

                      });},color: Colors.orange,),

                    ],
                  ),
                  Row(
                    children: [
                      Button1(title: '0',onPress: (){ input+='0';
                      setState(() {

                      });},),
                      Button1(title: '.',onPress: (){
                        input+='.';
                        setState(() {

                        });
                      }),
                      Button1(title: 'DEL',onPress: (){
                        input=input.substring(0,input.length-1);
                        setState(() {

                        });
                      }),
                      Button1(title: '= ',onPress: (){
                        equal();
                        setState(() {

                        });
                      },color: Colors.orange,),

                    ],
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
  void equal(){
    String finalinput=input.replaceAll('x', '*');
    Parser p= Parser();
    Expression expression=p.parse(finalinput);
    ContextModel contextModel=ContextModel();
    double eval=expression.evaluate(EvaluationType.REAL, contextModel);
    result=eval.toString();

}
}



