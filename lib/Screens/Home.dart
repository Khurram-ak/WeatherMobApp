import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/Modal/WeatherModal.dart';
import 'package:weather_app/Services/WeatherApi.dart';

class Home extends StatefulWidget {
  Position? position;
  String? city;

  Home({this.position, this.city});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isDay = true;
  WeatherApi weatherApi = WeatherApi();
  String? Country, Area, Condition;
  double? Temp;
  Hour? hr1, hr2, hr3, hr4, hr5;

  void initState() {
    super.initState();
    if (widget.position != null) {
      weatherApi.GetCurrent(position: widget.position)
          .then((value) => setState(() {
                Country = value["country"];
                Area = value["area"];
                Condition = value["condition"];
                Temp = value["temperature"];
                if (value["isDay"] == 1) {
                  isDay == true;
                } else {
                  isDay == false;
                }
              }));
      weatherApi.GetForecast(position: widget.position).then((value) => {
            if (value != null)
              {
                setState((){
                hr1= value['hour1'];
                hr2= value['hour2'];
                hr3= value['hour3'];
                hr4= value['hour4'];
                hr5= value['hour5'];
              })
              }
          });
    } else if (widget.city != null) {
      weatherApi.GetCurrent(city: widget.city).then((value) => setState(() {
            Country = value["country"];
            Area = value["area"];
            Condition = value["condition"];
            Temp = value["temperature"];
            if (value["isDay"] == 1) {
              isDay == true;
            } else {
              isDay == false;
            }
          }));
    }
  print(hr1!.tempC);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //bgImg
          Container(
            height: MediaQuery.of(context).size.height * 70 / 100,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/assests/Images/homeBg.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 56),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("lib/assests/Images/refresh.png"),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "$Country",
                            style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                                fontFamily: "PoppinsMed"),
                          ),
                          Image.asset("lib/assests/Images/downArrow.png"),
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      )
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 105),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "$Temp°",
                          style: const TextStyle(
                              fontSize: 73,
                              color: Colors.white,
                              fontFamily: "PoppinsBold"),
                        ),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(top: 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${isDay ? "Day" : "Night"} , $Condition",
                          style: const TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontFamily: "PoppinsMed"),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          //Forecast
          Container(
            margin: EdgeInsets.only(top: 45, left: 23, right: 23),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "TODAY",
                    style: TextStyle(fontSize: 19, fontFamily: "PoppinsMed"),
                  ),
                  Text(
                    "$Area , $Country",
                    style: TextStyle(fontSize: 15, fontFamily: "PoppinsMed"),
                  ),
                ],
              ),
              SizedBox(
                height: 36,
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Now"),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset("lib/assests/Images/cloud.png"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("${hr1!.tempC ?? 0}"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Now"),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset("lib/assests/Images/cloud.png"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("${hr2!.tempC ?? 0}"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Now"),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset("lib/assests/Images/cloud.png"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("${hr3!.tempC ?? 0}"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Now"),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset("lib/assests/Images/cloud.png"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("${hr4!.tempC ?? 0}"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Now"),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset("lib/assests/Images/cloud.png"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("${hr5!.tempC ?? 0}"),
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
