import 'package:flutter/material.dart';
import 'package:quiz_fun/QuizOne/QuizThreePage.dart';
import 'package:quiz_fun/main.dart';

class QuizTwopage extends StatefulWidget {
  const QuizTwopage({super.key});

  @override
  State<QuizTwopage> createState() => _QuizTwopageState();
}

int selectValue = 5;
bool isAppear = false;

class _QuizTwopageState extends State<QuizTwopage> {
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
                      "./asset/ans_2.jpg",
                      width: 200,height: 200,
                    )
                ),
                Text(
                  "How many days does it take for the Earth to orbit the Sun?",
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
                          "355",
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
                          "365",
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
                          "356",
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
                          "375",
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
                              if(selectValue==1){
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Quizthreepage()));
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
                        (selectValue == 1) ? "Correct" : "False",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: (selectValue == 1 ) ? Colors.green :Colors.red,
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
