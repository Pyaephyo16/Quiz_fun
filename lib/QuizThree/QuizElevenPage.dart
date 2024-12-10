import 'package:flutter/material.dart';
import 'package:quiz_fun/QuizOne/QuizTwoPage.dart';
import 'package:quiz_fun/QuizThree/QuizTenPage.dart';
import 'package:quiz_fun/QuizThree/QuizTwelvePage.dart';
import 'package:quiz_fun/main.dart';

class Quizelevenpage extends StatefulWidget {
  const Quizelevenpage({super.key});

  @override
  State<Quizelevenpage> createState() => _QuizelevenpageState();
}

int selectValue = 5;
bool isAppear = false;

class _QuizelevenpageState extends State<Quizelevenpage> {
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
                      "./asset/ans_11.jpeg",
                      width: 200,height: 200,
                    )
                ),
                Text(
                  "In what fairy tale does a pumpkin turn into a carriage?",
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
                          "Cinderella",
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
                          "Snow White",
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
                          "Ariel",
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
                          "Belle",
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Quiztwelvepage()));
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
                          color: (selectValue == 0 ) ? Colors.green :Colors.red,
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
