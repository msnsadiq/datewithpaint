import 'package:checkoutflutter/bigarcclass.dart';
import 'package:checkoutflutter/bottompaint.dart';
import 'package:checkoutflutter/classofpaint.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

final blackk = Colors.black;

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              CustomPaint(
                foregroundPainter: PaintItem(),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/bgi/bgii.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(top: 3, right: 8, child: Icon(Icons.search)),
              Positioned(top: 3, left: 8, child: Icon(Icons.menu)),
              Positioned(
                  top: MediaQuery.of(context).size.height * .21,
                  left: MediaQuery.of(context).size.width * .72,
                  child: CircleAvatar(
                    radius: 39,
                    backgroundColor: Colors.pink,
                    child: Icon(
                      Icons.bar_chart,
                      size: 39,
                    ),
                  )),
              Positioned(
                bottom: MediaQuery.of(context).size.height / 100,
                child: Container(
                  height: MediaQuery.of(context).size.height * .60,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: blackk,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "March",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: blackk,
                          ),
                        ],
                      ),
                      // Container(
                      //   width: 350,
                      //   height: 200,
                      //   child: CustomPaint(
                      //   painter: BottomArc(),
                      //   ),
                      // )

                      Container(
                        color: Colors.red,
                        height: 260,
                        width: 200,
                        child: CustomPaint(
                          foregroundPainter: MainArc(),
                          child: Column(
                           // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
                              child: Text(

                                "128",
                                textAlign: TextAlign.center,
                                style: TextStyle(

                                    fontSize: 59,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 57,
                                    0, 0, ),
                                  child: Text("Completed",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                              Text("64%")
                            ],
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 88.0),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //     children: [
                      //       CustomPaint(
                      //         painter: BottomArc(),
                      //       ),
                      //       CustomPaint(
                      //         painter: BottomArc(),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
