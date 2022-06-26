import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 90/100 ,
            child:Image.asset("lib/assests/Images/Frame.png")
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 10/100 ,
                  child:Text("Powered By Tech Idara",style: TextStyle(fontSize: 18,fontFamily: "PoppinsMed"),)
              ),
            ],
          )
        ],

      ),
    );
  }
}
