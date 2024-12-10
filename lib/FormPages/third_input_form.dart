import 'package:flutter/material.dart';
import 'package:quiz_fun/QuizOne/QuizOnePage.dart';
import 'package:quiz_fun/QuizThree/QuizNinePage.dart';

class ThirdInputFormPage extends StatelessWidget {
  const ThirdInputFormPage({super.key});

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
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 40),
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ///Name
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Date of Birth",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 2,),
                          Container(

                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Enter Your Date of Birth here..."
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12,),
                      ///Email
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Postcode",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 2,),
                          Container(

                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Enter Your Postcode here..."
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 22),
                        child: OutlinedButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Quizninepage()));
                            },
                            child: Text("Next",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),)),
                      ),
                    ],
                  ),
                )
            )
          ],
        )
    );
  }
}
