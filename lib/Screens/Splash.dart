import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    _navigateToApp();
  }

  _navigateToApp()async{
    await Future.delayed(Duration(seconds: 5));
    setState(() {
      Navigator.pushNamed(context, '/selection');

    });

  }
  @override
  Widget build(BuildContext context)  {
     Future.delayed(Duration(seconds: 3));
    // setState(() {
    //   Navigator.pushNamed(context,'/selection');
    // });
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 90 / 100,
              child: Image.asset("lib/assests/Images/Frame.png")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 10 / 100,
                  child: Text(
                    "Powered By Tech Idara",
                    style: TextStyle(fontSize: 18, fontFamily: "PoppinsMed"),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
