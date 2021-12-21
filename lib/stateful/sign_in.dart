import 'package:barkeaty/stateful/personal_data.dart';
import 'package:barkeaty/stateful/verification_code.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class sign_in extends StatefulWidget {
  @override
  _sign_inState createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: SizedBox(
                  height: 100.h,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 30.w,),
                          Image(
                                width: 50.w,
                                height: 25.h,
                                image: AssetImage("android/assets/barqiaty.png")),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 35.w,),
                          Text("تسجيل الدخول",
                          style: TextStyle(
                            color: const Color.fromRGBO(1, 18, 112, 1),
                            fontFamily: "theFont",
                            fontSize: 9.w,
                          ),),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 32.w,),
                          Text("برجاء تسجيل الدخول للاستمرار",
                            style: TextStyle(
                              color:  const Color.fromRGBO(112, 116, 162, 1),
                              fontFamily: "theFont",
                              fontSize: 4.8.w,
                            ),),
                        ],
                      ),
                      SizedBox(height: 8.h,),
                      Row(
                        children: [
                          SizedBox(width: 50.w,),
                          Text("رقم الهوية/الاقامة",
                            style: TextStyle(
                              color:  const Color.fromRGBO(112, 116, 162, 1),
                              fontFamily: "theFont",
                              fontSize: 4.8.w,
                            ),),
                        ],
                      ),
                      SizedBox(height: 2.h,),
                      Row(
                        children: [
                          SizedBox(width: 15.w,),
                          Container(
                            width: 70.w,
                            height: 5.h,
                            decoration: const BoxDecoration(
                              //color: Color.fromRGBO(245, 153, 45, 1),
                              borderRadius: BorderRadius.all(Radius.circular(25.0)),
                            ),
                            child: TextFormField(
                              onChanged: (val){},
                              textAlign: TextAlign.right,
                              keyboardType: TextInputType.number,
                              obscureText: true,
                              obscuringCharacter: "x",
                              enabled: true,
                              style: TextStyle(
                                fontFamily: 'theFont',
                                fontSize: 4.w,
                                color: Colors.white,
                              ),
                              cursorColor: const Color.fromRGBO(3, 141, 151, 1),
                              decoration: InputDecoration(
                                suffixIcon: Image(
                                  image: const AssetImage("android/assets/driver-license.png"),
                                  width: 3.w,
                                  height: 3.w,
                                ),
                                contentPadding: EdgeInsets.all(1.w),
                                isDense: true,
                                fillColor: const Color.fromRGBO(112, 116, 162, 1),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h,),
                      Row(
                        children: [
                          SizedBox(width: 25.w,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => personal_data()),
                              );
                            },
                            child: Container(
                              width: 50.w,
                              height: 8.h,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(105, 203, 248, 1),
                                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              ),
                              child: Text("تسجيل الدخول",style: TextStyle(
                                fontSize: 6.5.w,
                                color: Colors.white,
                                fontFamily: "theFont",
                              ),),
                            ),
                          ),
                        ],
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
