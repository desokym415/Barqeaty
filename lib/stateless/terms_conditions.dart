import 'package:barkeaty/stateful/home.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class terms_conditions extends StatefulWidget {
  @override
  _terms_conditionsState createState() => _terms_conditionsState();
}

class _terms_conditionsState extends State<terms_conditions> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          backgroundColor: const Color.fromRGBO(239, 245, 255, 1),
          body: SingleChildScrollView(
            child: SizedBox(
              width: 100.w,
              height: 100.h,
              child: Stack(
                children: [
                  Container(
                    height: 40.h,
                    width: 100.w,
                    color: Colors.blue,
                  ),
                  Positioned(
                    top: 25.h,
                    left: 5.w,
                    child: Container(
                      width: 90.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.w),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text("من نحن"),
                          Text("A7a"),
                          Container(
                            width: 52.w,
                            height: 10.h,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => home()),
                                );
                              },
                              child: Stack(
                                children: [
                                  Image(
                                    width: 50.w,
                                    height: 50.w,
                                    image: const AssetImage("android/assets/Rectangle -1.png"),),
                                  Positioned(
                                      top: 2.h,
                                      left: 15.w,
                                      child: Text("التالي",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 8.w,
                                      ),)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8.h,
                    left: 20.w,
                    child: Row(
                      children: [
                        Image(
                          width: 20.w,
                          height: 30.w,
                          image: const AssetImage("android/assets/Path 91.png"),),
                        SizedBox(
                          width: 30.w,
                          height: 8.h,
                          child: Stack(
                            children: [
                              Text("Barqiaty",style: TextStyle(
                                fontSize: 7.w,
                                color: Colors.white,
                              ),),
                              Positioned(
                                top: 2.4.h,
                                child: Text("برقيتي",style: TextStyle(
                                  fontSize: 7.w,
                                  color: Colors.white,
                                ),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
