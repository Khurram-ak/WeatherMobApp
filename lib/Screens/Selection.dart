import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/Services/GeoLocator.dart';

class SelectionPage extends StatelessWidget {
  SelectionPage({Key? key}) : super(key: key);

  GeoLocator geo = new GeoLocator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 68, right: 75),
              child: Image.asset("lib/assests/Images/WelcomeText.png")),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 30, right: 1),
              child: Image.asset(
                "lib/assests/Images/Line.png",
                fit: BoxFit.fill,
              )),
          Spacer(),
          GestureDetector(
            onTap: () {
              onCurrentLocation(context);
            },
            child: Container(
                height: 72,
                margin: EdgeInsets.only(left: 15, right: 15),
                padding: EdgeInsets.only(left: 20, right: 15),
                decoration: BoxDecoration(
                    color: Color(0xffE0E0E0),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Select Current Location",
                      style: TextStyle(fontFamily: "PoppinsMed", fontSize: 20),
                    ),
                    Image.asset("lib/assests/Images/rightArrow.png")
                  ],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/selectCity");
            },
            child: Container(
                height: 72,
                margin: EdgeInsets.only(left: 15, right: 15),
                padding: EdgeInsets.only(left: 20, right: 15),
                decoration: BoxDecoration(
                    color: Color(0xff6DC9EF),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Select City",
                      style: TextStyle(
                          fontFamily: "PoppinsMed",
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Image.asset("lib/assests/Images/downArrow.png")
                  ],
                )),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  void onCurrentLocation(context) async{
    GeoLocator geoLocator =new GeoLocator();
    Position  position=await geoLocator.determinePosition();

      Navigator.pushNamed(context, "/home",arguments: {
        "position":position
      }
   );

  }
}
