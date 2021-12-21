import 'package:barkeaty/stateful/destination.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class service_type extends StatefulWidget {
  @override
  _service_typeState createState() => _service_typeState();
}

class _service_typeState extends State<service_type> {
  Color color = Colors.white;
  Color color1 = Color.fromRGBO(105, 203, 248, 1);
  bool colors = true;
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
                    left: 24.w,
                    child: Text("الرجاء اختيار نوع الخدمة",style: TextStyle(
                      fontSize: 5.5.w,
                      //color: Colors.white,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
                ),
                  Positioned(
                    top: 65.h,
                    left: 15.w,
                    child: Text("ملاحظة : يتم الارسال فقط خلال ايام العمل \n                                   من الاحد الى الخميس",style: TextStyle(
                      fontSize: 4.w,
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
                          MaterialPageRoute(builder: (context) => destination()),
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
                    left: 53.w,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          if(colors == true){
                            color1 = Color.fromRGBO(105, 203, 248, 1);
                            color = Colors.white;
                            colors = false;
                          }
                          else{
                            colors = true;
                            color1 = Colors.white;
                            color = Color.fromRGBO(105, 203, 248, 1);
                          }
                        });
                      },
                      child: Container(
                        width: 18.h,
                        height: 18.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: color1,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromRGBO(105, 203, 248, 1),
                            width: .5.w,
                          ),
                        ),
                        child: Text("جهة حكومية \n      150 \n      ريال \n    للبرقية  ",style: TextStyle(
                          fontFamily: "theFont",
                          fontSize: 4.5.w,
                          color: color,
                        ),),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40.h,
                    left: 8.w,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          if(colors == true){
                            color = Colors.white;
                            color1 = Color.fromRGBO(105, 203, 248, 1);
                            colors = false;
                          }
                          else{
                            color = Color.fromRGBO(105, 203, 248, 1);
                            color1 = Colors.white;
                            colors = true;
                          }
                        });
                      },
                      child: Container(
                        width: 19.h,
                        height: 19.h,
                        decoration: BoxDecoration(
                          color: color,
                          border: Border.all(
                            color: const Color.fromRGBO(105, 203, 248, 1),
                            width: .5.w,
                          ),
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Text("شركة خاصة \n      150 \n      ريال \n    للبرقية  ",style: TextStyle(
                          fontFamily: "theFont",
                          fontSize: 4.5.w,
                          color: color1,
                        ),),
                      ),
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
