import 'package:flutter/material.dart';

class SmokeformPage extends StatelessWidget {
  const SmokeformPage({super.key});



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
                child: Image.asset("./asset/bg_smoke.gif",
                  fit: BoxFit.fill,),
              ),
            ),


            Positioned.fill(
                child: Container(
                  padding: EdgeInsets.only(left: 60,right: 60,top: 120,bottom: 0),
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    children: [
                      RequirementField(
                        name: "AGE:",
                      ),
                      RequirementField(
                        name: "HEIGHT:"
                      ),
                      RequirementField(
                        name: "WEIGHT(LBS):",
                      ),
                      RequirementField(
                        name: "NICOTINE INTAKE A DAY PER PACK:",
                      ),
                      RequirementField(
                        name: "YEAR OF FIRST NICOTINE INTAKE:",
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              height: 340,
                              decoration: BoxDecoration(
                                color: Colors.transparent
                              ),
                              child: Image.asset("./asset/keyboard.png",fit: BoxFit.contain,),
                            ),
                            SizedBox(width: 120,),
                            Padding(
                              padding: const EdgeInsets.only(top: 200.0),
                              child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.arrow_circle_right,size: 70,color: Colors.white,)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
            ),
          ],
        )
    );
  }
}


class RequirementField extends StatelessWidget {

     String? name;

    RequirementField({String? name}){
      this.name = name;
    }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12 ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
              child: Text(
                name ?? "",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: "roboto"
                ),
              )),
          //Expanded(child: Container()),
          Expanded(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20)
                ),
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "roboto"
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(),
          )
        ],
      ),
    );
  }
}
