import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../Services/GeoLocator.dart';

class SelectCity extends StatelessWidget {
  SelectCity({Key? key}) : super(key: key);

  List<String> Cities = [
    "Karachi",
    "Sydney",
    "Lahore",
    "London",
    "Toronto",
    "Male",
    "Kolkata",
    'Paris',
    'New York',
    "Moscow",
    'Dubai',
    'Tokyo'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/selection");
            },
            child: Container(
                margin: EdgeInsets.only(top: 80, left: 20),
                child: Image.asset("lib/assests/Images/leftArrow.png")),
          ),
          Container(
              margin: EdgeInsets.only(top: 10, left: 22),
              child: const Text(
                "Select City",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "PoppinsMed",
                ),
              )),
          Container(
            margin: EdgeInsets.only(top: 20, left: 22, right: 22),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.grey, width: 1)),
            padding: EdgeInsets.all(8),
            child: const TextField(
              style: TextStyle(color: Colors.white, fontSize: 15),
              decoration: InputDecoration(
                  hintText: "Enter Your City Name",
                  hintStyle: TextStyle(color: Color(0xFF8F8F9E), fontSize: 16),
                  border: InputBorder.none),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 75,
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF6F6F6)),
            padding: EdgeInsets.all(5),
            child: GestureDetector(
              onTap: () {
                onCurrentLocation(context);
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Image.asset('lib/assests/Images/LocationIcon.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Current Location",
                    style: TextStyle(fontFamily: "PoppinsMed", fontSize: 19),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: Cities.length ?? 0,
                itemBuilder: (ctx, idx) => cityWidget(ctx, idx)),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  void onCurrentLocation(context) async {
    GeoLocator geoLocator = new GeoLocator();
    Position position = await geoLocator.determinePosition();

    Navigator.pushNamed(context, "/home", arguments: {"position": position});
  }

  Widget cityWidget(BuildContext ctx, int idx) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(ctx, "/home",arguments: {
          "city":Cities[idx]
        });
      },
      child: Container(
          width: MediaQuery.of(ctx).size.width,
          height: 75,
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Color(0xffF6F6F6)),
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Text(
                Cities[idx],
                style: TextStyle(fontFamily: "PoppinsMed", fontSize: 17),
              ),
            ],
          )),
    );
  }
}
