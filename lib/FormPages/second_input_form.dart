import 'package:flutter/material.dart';
import 'package:quiz_fun/QuizOne/QuizOnePage.dart';

int groupValue = 2;

class SecondInputFormPage extends StatefulWidget {
  const SecondInputFormPage({super.key});

  @override
  State<SecondInputFormPage> createState() => _SecondInputFormPageState();
}

class _SecondInputFormPageState extends State<SecondInputFormPage> {
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
                            "Phone Number",
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
                                  hintText: "Enter Your Phone here..."
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16,),
                      ///Email
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sexual Orientation",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height:6,),
                          Row(
                            children: [
                              Text(
                                "Male",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              Radio(
                                  value: 0,
                                  groupValue: groupValue,
                                  onChanged: (data){
                                    setState(() {
                                      groupValue = 0;
                                    });
                                  }),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Female",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              Radio(
                                  value: 1,
                                  groupValue: groupValue,
                                  onChanged: (data){
                                    setState(() {
                                      groupValue = 1;
                                    });
                                  }),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 22),
                        child: OutlinedButton(
                            onPressed: (){
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
