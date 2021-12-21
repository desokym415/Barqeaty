// ignore_for_file: file_names, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class telegram_terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: SizedBox(
              height: 160.h,
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
                      height: 130.h,
                    ),
                  ),
                  Positioned(
                    top: 26.h,
                    left: 18.w,
                    child: Text("الشروط والاحكام لارسال البرقية",style: TextStyle(
                      fontSize: 5.w,
                      //color: Colors.white,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
                  ),
                  Positioned(
                    top: 32.h,
                    left: 74.w,
                    child: Text("منصة برقيتي",style: TextStyle(
                      fontSize: 3.w,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
                  ),
                  Positioned(
                    top: 34.5.h,
                    left: 6.w,
                    child: Text("هي منصه تسهل عليك الارسال وارفاق المرفقات ودورنا في هذه المنصه \n  هو ايصال صوتك للجهه المطلوبه وينتهي دورنا بتسليم البريد السعودي \nبمنطقة الدمام والبريد يقوم بتسليم البرقية للجهه المحددة على مستوى \n                                                                                                      .المملكة",style: TextStyle(
                      fontSize: 3.w,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
                  ),
                  Positioned(
                    top: 45.h,
                    left: 88.w,
                    child: Text("link",style: TextStyle(
                      fontSize: 3.w,
                      fontFamily: "theFont",
                      color: Colors.blue,
                    ),),
                  ),
                  Positioned(
                    top: 47.h,
                    left: 53.w,
                    child: Text("ملاحظات بخصوص عملية الارسال",style: TextStyle(
                      fontSize: 3.w,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(105, 203, 248, 1),
                    ),),
                  ),
                  Positioned(
                    top: 50.h,
                    left: 7.w,
                    child: Text("يتم تسليم الشحنات للبريد السعودي بمنطقة الدمام خلال يومين عمل -\nايام العمل من الاحد الى الخميس (يوم الجمعه والسبت لا يتم احتسابه)",style: TextStyle(
                      fontSize: 3.w,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
                  ),
                  Positioned(
                    top: 55.2.h,
                    left: 1.2.w,
                    child: Text("       الاتفاقية مع البريد السعودي بتوصيل الشحنات الى الجهه المحدده خلال -\n           خمسة ايام عمل وهذا لا ينطبق في ايام الاعياد اليوم الوطني وشهر\n              رمضان والمواسم وبعض الجهات التي تطلب اذونات عند الدخول لها\n                       اي تأخير في عملية توصيل البرقيات يتحملها البريد السعودي -\n                        لا  علاقة لمنصتن بتحاوب الجهه المطلوبة مع محتوى البرقية -",style: TextStyle(
                      fontSize: 3.w,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
                  ),
                  Positioned(
                    top: 69.h,
                    left: 50.w,
                    child: Text("ملاحظات بخصوص استرجاع المبلغ",style: TextStyle(
                      fontSize: 3.w,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(105, 203, 248, 1),
                    ),),
                  ),
                  Positioned(
                    top: 72.5.h,
                    left: 19.w,
                    child: Text("لا يحق للعميل استرجاع المبلغ في اي حالة من الاحالات التالية",style: TextStyle(
                      fontSize: 3.w,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
                  ),
                  Positioned(
                    top: 75.h,
                    left: 40.w,
                    child: Text("المستلم النهائي ليس في موقع التسليم",style: TextStyle(
                      fontSize: 3.w,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
                  ),
                  Positioned(
                    top: 77.5.h,
                    left: 46.w,
                    child: Text("المستلم النهائي لا يملك اثبات هويه",style: TextStyle(
                      fontSize: 3.w,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
                  ),
                  Positioned(
                    top: 80.h,
                    left: 34.7.w,
                    child: Text("عنوان غير مكتمل - لا اجابة - او معلومات خاطئة",style: TextStyle(
                      fontSize: 3.w,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
                  ),
                  Positioned(
                    top: 82.5.h,
                    left: 25.5.w,
                    child: Text("المستلم النهائي رفض استلام البرقية او طلب اعادتها",style: TextStyle(
                      fontSize: 3.w,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
                  ),
                  Positioned(
                    top: 85.2.h,
                    left: 35.5.w,
                    child: Text("المستلم النهائي طلب التسليم في وقت اخر",style: TextStyle(
                      fontSize: 3.w,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
                  ),
                  Positioned(
                    top: 90.h,
                    left: 5.w,
                    child: Text("         لا يمكن الغاء البرقية بعد استلامها من قبل البريد السعودي مطلقا \n   للمؤسسة الحق في الاطلاع على محتوى البرقية والتصرف بما يقتضي\n                                                                                                          الامر \n                           حفاظا على خصوصية العميل يتم حذف محتويات البرقية\n                                                                     بعد ثلاث اشهر على تسجيله \n                                                                                                     ملاحظة",style: TextStyle(
                      fontSize: 3.w,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(105, 203, 248, 1),
                    ),),
                  ),
                  Positioned(
                    top: 106.h,
                    left: 7.w,
                    child: Text("هذه الخدمة خيار يسهل عليك الارسال وننصح من يريد ان يرسل ان يتدرج \n                                                                بحيث تكون خياراته بهذا الترتيب \n                                                                                              الخيار الاول \n   الارسال من خلال البوابة الالكترونية للبوابة المراد الارسال لها مباشر \n                                                                    وهذه ستكون اسرع ومجانا \n                                                                                            الخيار الثاني \n    طباعة الاوراق المطلوبة وتسليمها الى اقرب نقطة بريد سعودي لك \n                                                                                            الخيار الثالث \n                                                عن طريق الاتصال بالبرقية الهاتفيه 969 \n                                                                                            الخيار الرابع\n                          الارسال من خلال منصة برقيتي ونحن نمكنك من ارفا\n                           للجهه التي قمت بتحديدها من خلال البريد السعودي \n                                        باالامكان التواصل مع الدعم الفني من خلال \n                                                                  واتس اب: 01551334645 \n                                              وسيتم الرد عليك في اقرب وقت ممكن \n                  نشكركم على ثقتكم بنا ونسعى الى تقديم الافضل لكم\n                                                                                   ونسعد بخدمتكم",style: TextStyle(
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
