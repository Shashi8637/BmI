import 'package:flutter/material.dart';


class page_02 extends StatelessWidget {
     page_02({Key? key}) : super(key: key);
  String BMI_value ="18.5";
  String Intro = "Normal";
  String MSG = "You Have Perfect BMI !";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF101428),
      appBar: AppBar(
        title: Center(child: const Text("BMI  CALCULATOR")),
        backgroundColor: Color((0xFF101428),),
        elevation: 0,

      ),
      body: Container(
        margin:EdgeInsets.all(10) ,
        child: Column(
          children: [
            Text("Your Result",
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 50),
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF232336),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(Intro,
                    style: TextStyle(
                      color: Color(0xFF7ED779),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  Text(BMI_value,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 90,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(MSG,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color:Color(0xFFca1b53),
          ),
          alignment: Alignment.center,
          child: const Text("RE CALCULATE",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
