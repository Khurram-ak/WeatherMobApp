import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                decoration:const BoxDecoration(
                    color: Colors.grey,
                    image:  DecorationImage(
                        image: AssetImage('lib/assests/Images/homeBg.png',)
                    )),
                child: Stack(
                  children: [
                    Image.asset("lib/assests/Images/homeBg.png",fit: BoxFit.cover,width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height *75/100,),
                    Positioned(child:
                    Row(
                      children: [
                        Image.asset("lib/assests/Images/refresh.png"),
                        SizedBox(width: 150,),
                        Text("Australia",style: TextStyle(fontSize: 23,color: Colors.white,fontFamily: "PoppinsMed"),),
                        Image.asset("lib/assests/Images/downArrow.png"),
                      ],
                    ),top:65,left:20),
                    Positioned(child:
                    Column(
                      children: [
                        Text("12",style: TextStyle( fontSize: 73,color: Colors.white,fontFamily: "PoppinsMed"),),
                        Text("Sunny Day",style: TextStyle(fontSize: 23,color: Colors.white,fontFamily: "PoppinsMed"),),
                      ],
                    ),top:167,left:187),

                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                margin: EdgeInsets.only(left: 25,right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Today",style: TextStyle(fontFamily: "PoppinsMed",fontSize: 18),),
                    Text("Karachi, Pakistan",style: TextStyle(fontFamily: "PoppinsMed",fontSize: 18),),
                  ],
                ),
              ),
              SizedBox(height: 30,),

              Container(
                margin: EdgeInsets.only(left: 22,right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Now"),
                        SizedBox(height: 10,),
                        Image.asset("lib/assests/Images/cloud.png"),
                        SizedBox(height: 10,),
                        Text("22"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Now"),
                        SizedBox(height: 10,),
                        Image.asset("lib/assests/Images/cloud.png"),
                        SizedBox(height: 10,),
                        Text("22"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Now"),
                        SizedBox(height: 10,),
                        Image.asset("lib/assests/Images/cloud.png"),
                        SizedBox(height: 10,),
                        Text("22"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Now"),
                        SizedBox(height: 10,),
                        Image.asset("lib/assests/Images/cloud.png"),
                        SizedBox(height: 10,),
                        Text("22"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Now"),
                        SizedBox(height: 10,),
                        Image.asset("lib/assests/Images/cloud.png"),
                        SizedBox(height: 10,),
                        Text("22"),
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
          // height: double.infinity,
        )

    );
  }
}
