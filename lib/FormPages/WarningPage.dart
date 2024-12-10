import 'package:flutter/material.dart';
import 'package:quiz_fun/Ob/UserOV.dart';
import 'package:quiz_fun/main.dart';

class Warningpage extends StatefulWidget {
  const Warningpage({super.key});

  @override
  State<Warningpage> createState() => _WarningpageState();
}

class _WarningpageState extends State<Warningpage> {


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
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.6),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Alert!",
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),

                      Text(
                        "Be cautious when sharing personal information online; only use trusted platforms and avoid unnecessary acceptance of cookies or interactions with unfamiliar websites and applications. Stay vigilant to protect your data.",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.red
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )
            )
          ],
        )
    );
  }
}

class UserCard extends StatelessWidget {
  String? name;
  int? point;
  int? index;

  UserCard({String? name,int? point,int? index}){
    this.name = name;
    this.point = point;
    this.index = index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      margin: EdgeInsets.symmetric(vertical: 4),
      width: MediaQuery.of(context).size.width * 0.5,
      height: 34,
      decoration: BoxDecoration(
        color: (name==userName) ? Colors.green : Colors.blueGrey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width:30,
            height: 30,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset("./asset/ppl.jpg",fit: BoxFit.cover,),
          ),
          SizedBox(width: 22,),
          Text(name ?? "",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white
            ),),
          Spacer(),
          Text("${point! * 100} Points",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white
            ),),
          SizedBox(width: 14,),
          Text((index == 0) ? "1st" : (index == 1) ? "2nd" : (index == 2) ? "3rd" : "",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: (index == 0) ? Colors.yellow : (index == 1) ? Colors.grey: (index == 2) ? Colors.brown : Colors.white,
            ),),

        ],
      ),
    );
  }
}

