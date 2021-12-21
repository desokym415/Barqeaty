import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';



class about_app extends StatelessWidget {
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
                      height: 72.h,
                    ),
                  ),
                  Positioned(
                    top: 26.h,
                    left: 42.w,
                    child: Text("من نحن",style: TextStyle(
                      fontSize: 6.w,
                      //color: Colors.white,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
                  ),
                  Positioned(
                    top: 32.h,
                    left: 10.w,
                    child: Text("            مؤسسة المكتبة الذكية سجل تجاري رقم (2050135757)  \n                                         ومقرها في المملكة العربية السعودية\n \n ويعتبر تطبيق برقيتي احد التطبيقات التي نتشارك فيها مع المجتمع \n        لتقديم تطبيقات رقمية في مجالات متعددة تساهم في خدمة \n                                                                                والتسهيل عليهم \n \n \n \n   العمل على تمكين وصناعة ادوات ومنصات مبتكره لعملائنا وتمكن\n                                                                                  التحول الرقمي \n \n \n \n \n                                                        نقدم ابعاد اكثر اثراء لحياة الناس \n\n\n\n\n\n           ان نكون جديرين بالثقه فقيمة الصدق والامانة وخدمة الاخرين \n          على خصوصية المستخدم من اهم مانحرص على ان نكون عليه",style: TextStyle(
                      fontSize: 3.w,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
                  ),
                  Positioned(
                    top: 49.h,
                    left: 78.w,
                    child: Text("رؤيتنا \n\n\n\n غايتنا \n\n\n قيمنا",style: TextStyle(
                      fontSize: 5.w,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
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
