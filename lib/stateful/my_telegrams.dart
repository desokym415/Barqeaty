import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';


class my_telegrams extends StatefulWidget {
  @override
  _my_telegramsState createState() => _my_telegramsState();
}

class _my_telegramsState extends State<my_telegrams> {
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
                        image: const AssetImage("android/assets/barqiaty.png")),
                  ),
                  Positioned(
                    top: 23.5.h,
                    left: 2.w,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image(
                          width: 15.w,
                          height: 15.w,
                          image: const AssetImage("android/assets/straight-right-arrow.png")),
                    ),
                  ),
                  Positioned(
                    top: 25.h,
                    left: 18.w,
                    child:  Container(
                      width: 57.w,
                      height: 4.5.h,
                      decoration: const BoxDecoration(
                        //color: Color.fromRGBO(245, 153, 45, 1),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),
                      child: TextFormField(
                        onChanged: (val){},
                        textAlign: TextAlign.center,
                        enabled: true,
                        style: TextStyle(
                          fontFamily: 'theFont',
                          fontSize: 4.w,
                          color: Colors.white,
                        ),
                        cursorColor: const Color.fromRGBO(3, 141, 151, 1),
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.zero, // add padding to adjust icon
                            child: Icon(Icons.search,
                              color: Colors.white,
                              size: 7.w,),
                          ),
                          contentPadding: EdgeInsets.all(1.w),
                          isDense: true,
                          fillColor: const Color.fromRGBO(112, 116, 162, 1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 25.h,
                    left: 80.w,
                    child: Text("برقياتي",style: TextStyle(
                      fontSize: 5.w,
                      fontFamily: "theFont",
                      color: Colors.white,
                    ),),),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
