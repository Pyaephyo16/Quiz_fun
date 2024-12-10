import 'package:flutter/material.dart';
import 'package:quiz_fun/FormPages/LeaderBoardPage.dart';
import 'package:quiz_fun/FormPages/second_input_form.dart';
import 'package:quiz_fun/QuizOne/QuizTwoPage.dart';
import 'package:quiz_fun/main.dart';

class Quiztwelvepage extends StatefulWidget {
  const Quiztwelvepage({super.key});

  @override
  State<Quiztwelvepage> createState() => _QuiztwelvepageState();
}

int selectValue = 5;
bool isAppear = false;

class _QuiztwelvepageState extends State<Quiztwelvepage> {
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
                      "./asset/ans_12.jpg",
                      width: 200,height: 200,
                    )
                ),
                Text(
                  "Which planet has the most gravity?",
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
                          "Mars",
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
                          "Earth",
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
                          "Moon",
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
                          "Jupiter",
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
                              if(selectValue==3){
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
                            _showAlert(context);
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
                        (selectValue == 3) ? "Correct" : "False",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: (selectValue == 3 ) ? Colors.green :Colors.red,
                        ),),
                    )),

              ],
            ),
          )
        ],
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Congratulation!'),
          content: Text('You Completed All Sections'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Leaderboardpage()));
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }}
