// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:weather_app/Services/GeoLocator.dart';
// import 'package:weather_app/Services/WeatherApi.dart';
//
// class Home extends StatefulWidget {
//   Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   GeoLocator geoLocator = new GeoLocator();
//   WeatherApi weatherApi = new WeatherApi();
//   Map<String, dynamic>? response;
//   String? Country, Area, Condition;
//   double? Temp;
//   bool isDay = true;
//
//   @override
//   void initState() {
//     super.initState();
//     Future<Position> position = geoLocator.determinePosition();
//     position.then((value) async => {
//           response = await weatherApi.GetCurrentLocation(position: value),
//           print(response),
//           setState(() {
//             Country = response!["country"];
//             Area = response!["area"];
//             Condition = response!["condition"];
//             Temp = response!["temperature"];
//             if (response!["isDay"] == 1) {
//               isDay == true;
//             } else {
//               isDay == false;
//             }
//           })
//         });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//       width: double.infinity,
//       child: Column(
//         children: [
//           Container(
//             child: Stack(
//               children: [
//                 Image.asset(
//                   "lib/assests/Images/homeBg.png",
//                   fit: BoxFit.cover,
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height * 65 / 100,
//                 ),
//                 Positioned(
//                   top: 65,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       GestureDetector(
//                           onTap: () {
//                             Navigator.pop(context);
//                           },
//                           child: Image.asset("lib/assests/Images/refresh.png")),
//                       Text(
//                         "$Country",
//                         style:const TextStyle(
//                             fontSize: 23,
//                             color: Colors.white,
//                             fontFamily: "PoppinsMed"),
//                       ),
//                       const SizedBox(
//                         width: 5,
//                       )
//                       // Image.asset("lib/assests/Images/downArrow.png"),
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                     top: 167,
//                     left: 187,
//                     child: Column(
//                       children: [
//                         Text(
//                           "$Temp°",
//                           style:const TextStyle(
//                               fontSize: 73,
//                               color: Colors.white,
//                               fontFamily: "PoppinsMed"),
//                         ),
//                         Text(
//                           "${isDay ? "Day" : "Night"} , $Condition",
//                           style:const TextStyle(
//                               fontSize: 23,
//                               color: Colors.white,
//                               fontFamily: "PoppinsMed"),
//                         ),
//                       ],
//                     )),
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 40,
//           ),
//           Container(
//             margin: EdgeInsets.only(left: 25, right: 25),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const  Text(
//                   "Today",
//                   style: TextStyle(fontFamily: "PoppinsMed", fontSize: 18),
//                 ),
//                 Text(
//                   "$Area , $Country",
//                   style: TextStyle(fontFamily: "PoppinsMed", fontSize: 18),
//                 ),
//               ],
//             ),
//           ),
//           const  SizedBox(
//             height: 30,
//           ),
//
//           Container(
//             margin: EdgeInsets.only(left: 22,right: 22),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   children: [
//                     Text("Now"),
//                     SizedBox(height: 10,),
//                     Image.asset("lib/assests/Images/cloud.png"),
//                     SizedBox(height: 10,),
//                     Text("22"),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Text("Now"),
//                     SizedBox(height: 10,),
//                     Image.asset("lib/assests/Images/cloud.png"),
//                     SizedBox(height: 10,),
//                     Text("22"),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Text("Now"),
//                     SizedBox(height: 10,),
//                     Image.asset("lib/assests/Images/cloud.png"),
//                     SizedBox(height: 10,),
//                     Text("22"),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Text("Now"),
//                     SizedBox(height: 10,),
//                     Image.asset("lib/assests/Images/cloud.png"),
//                     SizedBox(height: 10,),
//                     Text("22"),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Text("Now"),
//                     SizedBox(height: 10,),
//                     Image.asset("lib/assests/Images/cloud.png"),
//                     SizedBox(height: 10,),
//                     Text("22"),
//                   ],
//                 ),
//
//               ],
//             ),
//           )
//         ],
//       ),
//       // height: double.infinity,
//     ));
//   }
// }
