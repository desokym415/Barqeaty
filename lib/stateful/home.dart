import 'package:barkeaty/stateful/my_telegrams.dart';
import 'package:barkeaty/stateful/service_type.dart';
import 'package:barkeaty/stateful/sign_in.dart';
import 'package:barkeaty/stateless/about_app.dart';
import 'package:barkeaty/stateless/government_entity_list.dart';
import 'package:barkeaty/stateless/personal_companies_list.dart';
import 'package:barkeaty/stateless/return_policy.dart';
import 'package:barkeaty/stateless/telegram-terms.dart';
import 'package:barkeaty/stateless/telegram_templates.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _bellVisability = true, _rectVisability = true, _rect2Visability = false;
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          key: _scaffoldKey,
          backgroundColor: Colors.red,
          endDrawer: SizedBox(
            width: 73.w,
            child: Drawer(
              child: Container(
                color: const Color.fromRGBO(105, 203, 248, 1),
                child: Column(
                  children: [
                    SizedBox(height: 7.h,),
                    Row(
                      children: [
                        SizedBox(width: 6.w,),
                        GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: Image(
                              width: 10.w,
                              height: 10.w,
                              image: const AssetImage("android/assets/menu-1.png"),
                            )),
                        SizedBox(width: 6.w,),
                        Text("1235684684684",style: TextStyle(
                          fontSize: 5.w,
                          color: Colors.white,
                          fontFamily: "theFont",
                        ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h,),
                    Container(
                      width: 60.w,
                      height: .5.w,
                      color: const Color.fromRGBO(1, 18, 112, .3),),
                    SizedBox(height: 4.h,),
                    Row(
                      children: [
                        SizedBox(width: 23.5.w,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => return_policy()),
                            );
                          },
                          child: Text("سياسة الارجاع",style: TextStyle(
                            fontSize: 5.w,
                            color: Colors.white,
                            fontFamily: "theFont",
                          ),
                          ),
                        ),
                        SizedBox(width: 5.w,),
                        Image(
                          width: 8.w,
                          height: 8.w,
                          image: const AssetImage("android/assets/return-box.png"),),
                      ],
                    ),
                    SizedBox(height: 4.h,),
                    Row(
                      children: [
                        SizedBox(width: 23.5.w,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => telegram_terms()),
                            );
                          },
                          child: Text("شروط البرقية",style: TextStyle(
                            fontSize: 5.w,
                            color: Colors.white,
                            fontFamily: "theFont",
                          ),
                          ),
                        ),
                        SizedBox(width: 5.w,),
                        Image(
                          width: 8.w,
                          height: 8.w,
                          image: const AssetImage("android/assets/accept.png"),),
                      ],
                    ),
                    SizedBox(height: 4.h,),
                    Row(
                      children: [
                        SizedBox(width: 7.w,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => government_entity_list()),
                            );
                          },
                          child: Text("قائمة الجهات الحكومية",style: TextStyle(
                            fontSize: 5.w,
                            color: Colors.white,
                            fontFamily: "theFont",
                          ),
                          ),
                        ),
                        SizedBox(width: 5.w,),
                        Image(
                          width: 8.w,
                          height: 8.w,
                          image: const AssetImage("android/assets/shield.png"),),
                      ],
                    ),
                    SizedBox(height: 4.h,),
                    Row(
                      children: [
                        SizedBox(width: 9.w,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => personal_companies_list()),
                            );
                          },
                          child: Text("قائمة الشركات الخاصة",style: TextStyle(
                            fontSize: 5.w,
                            color: Colors.white,
                            fontFamily: "theFont",
                          ),
                          ),
                        ),
                        SizedBox(width: 5.w,),
                        Image(
                          width: 8.w,
                          height: 8.w,
                          image: const AssetImage("android/assets/Bs.png"),),
                      ],
                    ),
                    SizedBox(height: 4.h,),
                    Row(
                      children: [
                        SizedBox(width: 7.w,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => telegram_templates()),
                            );
                          },
                          child: Text("نماذج البرقيات الجاهزة",style: TextStyle(
                            fontSize: 5.w,
                            color: Colors.white,
                            fontFamily: "theFont",
                          ),
                          ),
                        ),
                        SizedBox(width: 5.w,),
                        Image(
                          width: 8.w,
                          height: 8.w,
                          image: const AssetImage("android/assets/message (1).png"),),
                      ],
                    ),
                    SizedBox(height: 4.h,),
                    Row(
                      children: [
                        SizedBox(width: 29.8.w,),
                        GestureDetector(
                             onTap: (){
                              Navigator.push(context,
                               MaterialPageRoute(builder: (context) => about_app()),
                            );
                             },
                          child: Text("عن التطبيق",style: TextStyle(
                            fontSize: 5.w,
                            color: Colors.white,
                            fontFamily: "theFont",
                          ),
                          ),
                        ),
                        SizedBox(width: 5.w,),
                        Image(
                          width: 8.w,
                          height: 8.w,
                          image: const AssetImage("android/assets/information.png"),),
                      ],
                    ),
                    SizedBox(height: 4.h,),
                    Row(
                      children: [
                        SizedBox(width: 23.w,),
                        Text("تسجيل الخروج",style: TextStyle(
                          fontSize: 5.w,
                          color: Colors.white,
                          fontFamily: "theFont",
                        ),
                        ),
                        SizedBox(width: 5.w,),
                        Image(
                          width: 8.w,
                          height: 8.w,
                          image: const AssetImage("android/assets/log-out.png"),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: SizedBox(
            child: Stack(
              children: [
                Row(
                  children: [
                    Container(
                      width: 67.w,
                      color: const Color.fromRGBO(1, 18, 112, 1), //blue
                    ),
                    Container(width: 33.w,color: const Color.fromRGBO(105, 203, 248, 1),)
                  ],
                ),
                //ارسال برقية
                Positioned(
                    left: 20.w,
                    top: 30.h,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => service_type()),
                          );
                          },
                        child: SizedBox(
                          child: Stack(
                            children: [
                              Image(
                                width: 73.w,
                                height: 30.w,
                                image: const AssetImage("android/assets/Rectangle 72.png"),
                              ),
                              Positioned(
                                left: 18.w,
                                top: 3.5.h,
                                child: Text("إرسال برقية",style: TextStyle(
                                  fontFamily: "theFont",
                                  color: const Color.fromRGBO(1, 18, 112, 1),
                                  fontSize: 7.w,
                                ),),
                              ),
                              Positioned(
                                  left: 60.w,
                                  top: 5.5.h,
                                  child: Image(
                                width: 6.w,
                                height: 6.w,
                                image: const AssetImage("android/assets/down-arrow 2.png"),))
                            ],
                          ),
                        ))),
                //برقياتي
                Positioned(
                    left: 20.w,
                    top: 50.h,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => my_telegrams()),
                          );
                        },
                        child: SizedBox(
                          child: Stack(
                            children: [
                              Image(
                                width: 73.w,
                                height: 30.w,
                                image: const AssetImage("android/assets/Rectangle 72.png"),
                              ),
                              Positioned(
                                left: 25.w,
                                top: 3.5.h,
                                child: Text("برقياتي",style: TextStyle(
                                  fontFamily: "theFont",
                                  color: const Color.fromRGBO(1, 18, 112, 1),
                                  fontSize: 7.w,
                                ),),
                              ),
                              Positioned(
                                  left: 60.w,
                                  top: 5.5.h,
                                  child: Image(
                                    width: 6.w,
                                    height: 6.w,
                                    image: AssetImage("android/assets/down-arrow 2.png"),))
                            ],
                          ),
                        ))),
                //notifications
                Visibility(
                  visible: _bellVisability,
                  child: Positioned(
                      left: 10.w,
                      top: 8.h,
                      child: GestureDetector(
                          onTap: (){
                          },
                          child: Image(
                            width: 10.w,
                            height: 10.w,
                            image: const AssetImage("android/assets/bell.png"),
                          ))),
                ),
                //open Drawer
                Positioned(
                    left: 80.w,
                    top: 8.h,
                    child: GestureDetector(
                    onTap: (){
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                    child: Image(
                      width: 10.w,
                      height: 10.w,
                      image: const AssetImage("android/assets/menu.png"),
                    ))),
              ],
            ),
          ),
        );
      },
    );
  }
}
