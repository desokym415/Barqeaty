import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class return_policy extends StatelessWidget {
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
                        height: 57.h,
                      ),
                    ),
                    Positioned(
                      top: 26.h,
                      left: 33.w,
                      child: Text("سياسة الارجاع",style: TextStyle(
                        fontSize: 6.w,
                        //color: Colors.white,
                        fontFamily: "theFont",
                        color: const Color.fromRGBO(1, 18, 112, 1),
                      ),),
                    ),
                    Positioned(
                      top: 32.h,
                      left: 10.w,
                      child: Text("لخدمة عملائنا الكرام فان الاسترجاع متاح لجميع العملاء في جميع مدن \n                              المملكة العربية السعودية وفق الاشتراطات التالية",style: TextStyle(
                        fontSize: 3.w,
                        fontFamily: "theFont",
                        color: const Color.fromRGBO(1, 18, 112, 1),
                      ),),
                    ),
                    Positioned(
                      top: 38.h,
                      left: 44.w,
                    child: Text("حال طلب الاسترجاع قبل ارسال البرقية",style: TextStyle(
                        fontSize: 3.w,
                        fontFamily: "theFont",
                        color: const Color.fromRGBO(1, 18, 112, 1),
                      ),),
                    ),
                    Positioned(
                      top: 40.5.h,
                      left: 16.w,
                      child: Text("في حال كانت البرقية مرفوضة من قبلنا لأي سبب من الاسباب",style: TextStyle(
                        fontSize: 3.w,
                        fontFamily: "theFont",
                        color: const Color.fromRGBO(1, 18, 112, 1),
                      ),),
                    ),
                    Positioned(
                      top: 43.h,
                      left: 6.w,
                      child: Text("يجب على العميل طلب الالغاء عبر الواتس اب خلال نفس يوم العمل من \n                                                          طلب البرقية حتى يتم ارجاع المبلغ",style: TextStyle(
                        fontSize: 3.w,
                        fontFamily: "theFont",
                        color: const Color.fromRGBO(1, 18, 112, 1),
                      ),),
                    ),
                    Positioned(
                      top: 51.h,
                      left: 51.w,
                      child: Text("( التحقق من دفع المبلغ من طرفه",style: TextStyle(
                        fontSize: 3.w,
                        fontFamily: "theFont",
                        color: const Color.fromRGBO(1, 18, 112, 1),
                      ),),
                    ),
                    Positioned(
                      top: 48.5.h,
                      left: 10.w,
                      child: Text("تخضع عملية ارجاع المبالغ لوصول المبلغ المدفوع من قبل العميل (او",style: TextStyle(
                        fontSize: 3.w,
                        fontFamily: "theFont",
                        color: const Color.fromRGBO(1, 18, 112, 1),
                      ),),
                    ),
                    Positioned(
                      top: 53.5.h,
                      left: 7.w,
                      child: Text("تتم اعادة الدفعه فور التأكد من وصولها وتحتاج مدة 15 يوما . لمعالجتها \n                                                                                               مع البنوك",style: TextStyle(
                        fontSize: 3.w,
                        fontFamily: "theFont",
                        color: const Color.fromRGBO(1, 18, 112, 1),
                      ),),
                    ),
                    Positioned(
                      top: 59.h,
                      left: 19.w,
                      child: Text("ولا يحق للعميل استرجاع المبلغ في اي حالة من الاحالات التالية",style: TextStyle(
                        fontSize: 3.w,
                        fontFamily: "theFont",
                        color: const Color.fromRGBO(1, 18, 112, 1),
                      ),),
                    ),
                    Positioned(
                      top: 61.9.h,
                      left: 39.2.w,
                      child: Text("المستلم النهائي ليس في موقع التسليم",style: TextStyle(
                        fontSize: 3.w,
                        fontFamily: "theFont",
                        color: const Color.fromRGBO(1, 18, 112, 1),
                      ),),
                    ),
                    Positioned(
                      top: 64.5.h,
                      left: 45.w,
                      child: Text("المستلم النهائي لا يملك اثبات هويه",style: TextStyle(
                        fontSize: 3.w,
                        fontFamily: "theFont",
                        color: const Color.fromRGBO(1, 18, 112, 1),
                      ),),
                    ),
                    Positioned(
                      top: 67.h,
                      left: 34.7.w,
                      child: Text("عنوان غير مكتمل - لا اجابة - او معلومات خاطئة",style: TextStyle(
                        fontSize: 3.w,
                        fontFamily: "theFont",
                        color: const Color.fromRGBO(1, 18, 112, 1),
                      ),),
                    ),
                    Positioned(
                      top: 69.5.h,
                      left: 25.5.w,
                      child: Text("المستلم النهائي رفض استلام البرقية او طلب اعادتها",style: TextStyle(
                        fontSize: 3.w,
                        fontFamily: "theFont",
                        color: const Color.fromRGBO(1, 18, 112, 1),
                      ),),
                    ),
                    Positioned(
                      top: 72.5.h,
                      left: 35.5.w,
                      child: Text("المستلم النهائي طلب التسليم في وقت اخر",style: TextStyle(
                        fontSize: 3.w,
                        fontFamily: "theFont",
                        color: const Color.fromRGBO(1, 18, 112, 1),
                      ),),
                    ),
                    Positioned(
                      top: 38.h,
                      left: 92.w,
                      child: Text("1\n2\n3\n\n4\n\n5\n\n\n1\n2\n3\n4\n5",style: TextStyle(
                        fontSize: 3.w,
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
