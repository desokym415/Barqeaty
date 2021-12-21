// ignore_for_file: file_names, use_key_in_widget_constructors
import 'package:barkeaty/stateless/terms_conditions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class who_are_we extends StatefulWidget {
  @override
  _who_are_weState createState() => _who_are_weState();
}


class _who_are_weState extends State<who_are_we> {
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
                          Text(" مؤسسة المكتبه الذكيه سجل تجاري رقم (2050135757)"),
                          Container(
                            width: 52.w,
                            height: 10.h,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => terms_conditions()),
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
