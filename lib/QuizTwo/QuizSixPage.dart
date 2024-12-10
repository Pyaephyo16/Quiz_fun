import 'package:flutter/material.dart';
import 'package:quiz_fun/QuizOne/QuizTwoPage.dart';
import 'package:quiz_fun/QuizTwo/QuizSevenPage.dart';
import 'package:quiz_fun/main.dart';

class Quizsixpage extends StatefulWidget {
  const Quizsixpage({super.key});

  @override
  State<Quizsixpage> createState() => _QuizsixpageState();
}

int selectValue = 5;
bool isAppear = false;

class _QuizsixpageState extends State<Quizsixpage> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset("./asset/two_q.jpg",
                fit: BoxFit.fill,),
            ),
          ),

          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                    child: Image.asset(
                      "./asset/ans_6.jpeg",
                      width: 200,height: 200,
                    )
                ),
                Text(
                  "What is the name of the largest ocean on Earth?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                ///First answer line
                Row(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ///One Answer
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Pacific Ocean",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Radio(
                            value: 0,
                            groupValue: selectValue,
                            onChanged: (data){
                              setState(() {
                                selectValue = 0;
                              });
                            }),
                      ],
                    ),
                    ///Two Answer
                    Row(
                      children: [
                        Text(
                          "Atlantic Ocean",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Radio(
                            value: 1,
                            groupValue: selectValue,
                            onChanged: (data){
                              setState(() {
                                selectValue = 1;
                              });
                            }),
                      ],
                    )
                  ],
                ),
                ///Second answer line
                Row(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ///third Answer
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Indian Ocean",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Radio(
                            value: 2,
                            groupValue: selectValue,
                            onChanged: (data){
                              setState(() {
                                selectValue = 2;
                              });
                            }),
                      ],
                    ),
                    ///Forth Answer
                    Row(
                      children: [
                        Text(
                          "Arctic Ocean",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Radio(
                            value: 3,
                            groupValue: selectValue,
                            onChanged: (data){
                              setState(() {
                                selectValue = 3;
                              });
                            }),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 22),
                      child: OutlinedButton(
                          onPressed: (){
                            setState(() {
                              isAppear = true;
                              if(selectValue==0){
                                totalCorrectAnswer++;
                              }
                            });
                          },
                          child: Text("Done",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 22),
                      child: OutlinedButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Quizsevenpage()));
                          },
                          child: Text("Next",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),)),
                    ),
                  ],
                ),

                Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: Visibility(
                      visible: isAppear,
                      child: Text(
                        (selectValue == 0) ? "Correct" : "False",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: (selectValue == 0) ? Colors.green :Colors.red,
                        ),),
                    )),

              ],
            ),
          )
        ],
      ),
    );
  }
}
