import 'package:barkeaty/stateful/home.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class confirm_code extends StatefulWidget {
  @override
  _confirm_codeState createState() => _confirm_codeState();
}

class _confirm_codeState extends State<confirm_code> {
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
                  /*Container(
                        color: const Color.fromRGBO(1, 18, 112, 1),
                        height: 35.h,
                      ),*/
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
                      SizedBox(width: 70.w,),
                      Text("تأكيد",
                        style: TextStyle(
                          color: const Color.fromRGBO(1, 18, 112, 1),
                          fontFamily: "theFont",
                          fontSize: 9.w,
                        ),),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20.w,),
                      Text("برجاء ادخال رمز التحقق الذي تم ارساله على \n             الى رقم الهاتف الذي قمت باادخاله",
                        style: TextStyle(
                          color:  const Color.fromRGBO(112, 116, 162, 1),
                          fontFamily: "theFont",
                          fontSize: 4.w,
                        ),),
                    ],
                  ),
                  SizedBox(height: 8.h,),
                  Row(
                    children: [
                      SizedBox(width: 15.w,),
                      Container(
                        width: 15.w,
                        height: 12.w,
                        decoration: const BoxDecoration(
                          //color: Color.fromRGBO(245, 153, 45, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          onFieldSubmitted: (val){
                            FocusScope.of(context).focusedChild;
                          },
                          maxLength: 1,
                          style: TextStyle(
                            fontFamily: 'theFont',
                            fontSize: 4.5.w,
                            color: Colors.white,
                          ),
                          cursorColor: const Color.fromRGBO(3, 141, 151, 1),
                          decoration: InputDecoration(
                            counterText: "",
                            contentPadding: EdgeInsets.fromLTRB(6.3.w, 2.w, 2.w, 2.w),
                            isDense: true,
                            fillColor: const Color.fromRGBO(112, 116, 162, 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        width: 15.w,
                        height: 12.w,
                        decoration: const BoxDecoration(
                          //color: Color.fromRGBO(245, 153, 45, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (val){
                            FocusScope.of(context).focusedChild;
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          style: TextStyle(
                            fontFamily: 'theFont',
                            fontSize: 4.5.w,
                            color: Colors.white,
                          ),
                          cursorColor: const Color.fromRGBO(3, 141, 151, 1),
                          decoration: InputDecoration(
                            counterText: "",
                            contentPadding: EdgeInsets.fromLTRB(6.3.w, 2.w, 2.w, 2.w),
                            isDense: true,
                            fillColor: const Color.fromRGBO(112, 116, 162, 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        width: 15.w,
                        height: 12.w,
                        decoration: const BoxDecoration(
                          //color: Color.fromRGBO(245, 153, 45, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          onFieldSubmitted: (val){
                            FocusScope.of(context).focusedChild;
                          },
                          maxLength: 1,
                          style: TextStyle(
                            fontFamily: 'theFont',
                            fontSize: 4.5.w,
                            color: Colors.white,
                          ),
                          cursorColor: const Color.fromRGBO(3, 141, 151, 1),
                          decoration: InputDecoration(
                            counterText: "",
                            contentPadding: EdgeInsets.fromLTRB(6.3.w, 2.w, 2.w, 2.w),
                            isDense: true,
                            fillColor: const Color.fromRGBO(112, 116, 162, 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        width: 15.w,
                        height: 12.w,
                        decoration: const BoxDecoration(
                          //color: Color.fromRGBO(245, 153, 45, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: TextFormField(
                          textInputAction: TextInputAction.done,
                          onFieldSubmitted: (val){
                            FocusScope.of(context).unfocus();
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          style: TextStyle(
                            fontFamily: 'theFont',
                            fontSize: 4.5.w,
                            color: Colors.white,
                          ),
                          cursorColor: const Color.fromRGBO(3, 141, 151, 1),
                          decoration: InputDecoration(
                            counterText: "",
                            contentPadding: EdgeInsets.fromLTRB(6.3.w, 2.w, 2.w, 2.w),
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
                            MaterialPageRoute(builder: (context) => home()),
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
