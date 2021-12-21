//not used
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';



class reciever_data extends StatefulWidget {
  @override
  _reciever_dataState createState() => _reciever_dataState();
}

class _reciever_dataState extends State<reciever_data> {
  String dropdownValue2 = 'الرياض';
  String dropdownValue3 = 'منطقة الرياض';
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
                          height: 20.h,
                          image: const AssetImage("android/assets/barqiaty.png")),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 35.w,),
                      Text("بياناتك الشخصية",
                        style: TextStyle(
                          color: const Color.fromRGBO(1, 18, 112, 1),
                          fontFamily: "theFont",
                          fontSize: 9.w,
                        ),),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 12.w,),
                      Text("الرجاء ادخال بياناتك بالكامل حتى تتمكن من المتابعه \n                               حيث ان البيانات غير قابلة للتغيير",
                        style: TextStyle(
                          color:  const Color.fromRGBO(112, 116, 162, 1),
                          fontFamily: "theFont",
                          fontSize: 4.w,
                        ),),
                    ],
                  ),
                  SizedBox(height: 4.h,),
                  Row(
                    children: [
                      SizedBox(width: 30.w,),
                      Text("الاسم الثلاثي حسب الهويه",
                        style: TextStyle(
                          color:  const Color.fromRGBO(112, 116, 162, 1),
                          fontFamily: "theFont",
                          fontSize: 4.8.w,
                        ),),
                    ],
                  ),
                  SizedBox(height: 1.h,),
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
                          //keyboardType: TextInputType.number,
                          obscureText: true,
                          //obscuringCharacter: "x",
                          enabled: true,
                          style: TextStyle(
                            fontFamily: 'theFont',
                            fontSize: 4.w,
                            color: Colors.white,
                          ),
                          cursorColor: const Color.fromRGBO(3, 141, 151, 1),
                          decoration: InputDecoration(
                            suffixIcon: Image(
                              image: const AssetImage("android/assets/user.png"),
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
                  SizedBox(height: 2.h,),
                  Row(
                    children: [
                      SizedBox(width: 50.w,),
                      Text("البريد الالكتروني",
                        style: TextStyle(
                          color:  const Color.fromRGBO(112, 116, 162, 1),
                          fontFamily: "theFont",
                          fontSize: 4.8.w,
                        ),),
                    ],
                  ),
                  SizedBox(height: 1.h,),
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
                          //keyboardType: TextInputType.number,
                          obscureText: true,
                          //obscuringCharacter: "x",
                          enabled: true,
                          style: TextStyle(
                            fontFamily: 'theFont',
                            fontSize: 4.w,
                            color: Colors.white,
                          ),
                          cursorColor: const Color.fromRGBO(3, 141, 151, 1),
                          decoration: InputDecoration(
                            suffixIcon: Image(
                              image: const AssetImage("android/assets/email.png"),
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
                  SizedBox(height: 3.h,),
                  Row(
                    children: [
                      SizedBox(width: 8.w,),
                      Container(
                        height: 5.5.h,
                        width: 60.w,
                        //alignment: Alignment.centerLeft,
                        padding: EdgeInsets.fromLTRB(2.w, 0.0, 2.w, 0.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.w)),
                          border: Border.all(
                            width: .5.w,
                            color: const Color.fromRGBO(112, 116, 162, 1),
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            icon: Image(image: const AssetImage("android/assets/down-arrow.png"),
                              width: 5.w,height: 5.h,),
                            value: dropdownValue2,
                            //borderRadius: BorderRadius.circular(5.w),
                            style: const TextStyle(color: const Color.fromRGBO(112, 116, 162, 1),
                                fontFamily: "theFont"),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue2 = newValue!;
                              });
                            },
                            items: <String>['جده', 'الرياض', 'الدمام' ]
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Text("المدينة",
                        style: TextStyle(
                          color:  const Color.fromRGBO(112, 116, 162, 1),
                          fontFamily: "theFont",
                          fontSize: 4.8.w,
                        ),),
                    ],
                  ),
                  SizedBox(height: 3.h,),
                  Row(
                    children: [
                      SizedBox(width: 8.w),
                      Container(
                        height: 5.5.h,
                        width: 60.w,
                        //alignment: Alignment.centerLeft,
                        padding: EdgeInsets.fromLTRB(2.w, 0.0, 2.w, 0.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.w)),
                          border: Border.all(
                            width: .5.w,
                            color: const Color.fromRGBO(112, 116, 162, 1),
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            icon: Image(image: const AssetImage("android/assets/down-arrow.png"),
                              width: 5.w,height: 5.h,),
                            value: dropdownValue3,
                            //borderRadius: BorderRadius.circular(5.w),
                            style: const TextStyle(color: const Color.fromRGBO(112, 116, 162, 1),
                                fontFamily: "theFont"),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue3 = newValue!;
                              });
                            },
                            items: <String>['منطقة الرياض', 'منطقة الدمام', 'منطقة الخبر' ]
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Text("المنطقة",
                        style: TextStyle(
                          color:  const Color.fromRGBO(112, 116, 162, 1),
                          fontFamily: "theFont",
                          fontSize: 4.8.w,
                        ),),
                    ],
                  ),
                  SizedBox(height: 3.h,),
                  Row(
                    children: [
                      SizedBox(width: 10.w,),
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => reciever_data()),
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
                      SizedBox(width: 10.w,),
                      GestureDetector(
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
