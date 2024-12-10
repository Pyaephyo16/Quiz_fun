import 'package:flutter/material.dart';
import 'package:quiz_fun/QuizOne/QuizOnePage.dart';
import 'package:quiz_fun/main.dart';

class FirstInputFormPage extends StatelessWidget {
  const FirstInputFormPage({super.key});



  @override
  Widget build(BuildContext context) {

    TextEditingController nameController = TextEditingController();

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
                        "Name",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 2,),
                      Container(

                        child: TextField(
                          controller: nameController,
                        decoration: InputDecoration(
                          hintText: "Enter Your Name here..."
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
                        "Email",
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
                              hintText: "Enter Your Email here..."
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: OutlinedButton(
                        onPressed: (){
                          userName = nameController.text;
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Quizonepage()));
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
