import 'package:barkeaty/stateful/telegram_writing.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';



class personal_image extends StatefulWidget {
  @override
  _personal_imageState createState() => _personal_imageState();
}

class _personal_imageState extends State<personal_image> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: SizedBox(
              height: 100.h,
              child: Stack(
                children: [
                  Container(
                    color: const Color.fromRGBO(1, 18, 112, 1),
                    height: 35.h,
                  ),
                  Positioned(
                    top: 2.h,
                    left: 30.w,
                    child: Image(
                        width: 50.w,
                        height: 25.h,
                        image: AssetImage("android/assets/barqiaty.png")),
                  ),
                  Positioned(
                    top: 10.h,
                    left: 6.w,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image(
                          width: 15.w,
                          height: 15.w,
                          image: AssetImage("android/assets/down-arrow-1.png")),
                    ),
                  ),
                  Positioned(
                    top: 25.h,
                    left: 3.5.w,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      width: 92.w,
                      height: 65.h,
                    ),
                  ),
                  Positioned(
                    top: 26.h,
                    left: 14.w,
                    child: Text("الجهات الحكومية تطلب صورة الهوية \n              حتى لا يتم تهميش البرقية",style: TextStyle(
                      fontSize: 5.w,
                      //color: Colors.white,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
                  ),
                  Positioned(
                    top: 75.h,
                    left: 12.w,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => telegram_writing()),
                        );
                      },
                      child: Container(
                        width: 35.w,
                        height: 7.h,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(105, 203, 248, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                        child: Text("التالي",style: TextStyle(
                          fontSize: 6.5.w,
                          color: Colors.white,
                          fontFamily: "theFont",
                        ),),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 75.h,
                    left: 51.w,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 35.w,
                        height: 7.h,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(105, 203, 248, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                        child: Text("السابق",style: TextStyle(
                          fontSize: 6.5.w,
                          color: Colors.white,
                          fontFamily: "theFont",
                        ),),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40.h,
                    left: 20.w,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.w),
                        border: Border.all(color: Colors.black26, width: .5.w),),
                      width: 60.w,
                      height: 50.w,
                    ),
                  ),
                  Positioned(
                    top: 47.h,
                    left: 28.w,
                    child: Text("اضغط هنا لرفع صورة الهوية",style: TextStyle(
                      fontSize: 4.w,
                      fontFamily: "theFont",
                      color: Colors.black26,
                    ),),
                  ),
                  Positioned(
                    top: 65.h,
                    left: 35.w,
                    child: Text("(صور - pdf ) فقط",style: TextStyle(
                      fontSize: 4.w,
                      fontFamily: "theFont",
                      color: Colors.red,
                    ),),
                  ),
                  Positioned(
                    top: 50.h,
                    left: 43.w,
                    child: Image(
                    width: 15.w,
                    height: 15.w,
                    image: AssetImage("android/assets/driver-license-1.png",),
                  ),)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
