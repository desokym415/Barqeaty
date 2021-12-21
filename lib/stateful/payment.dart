import 'package:barkeaty/stateful/my_telegrams.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class payment extends StatefulWidget {
  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
  bool mada = false;
  bool visa = false;
  bool bank = false;
  String madaPic = "android/assets/Mada-1.png";
  String visaPic = "android/assets/visa_PNG30.png";
  String bankPic = "android/assets/bank.png";
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: SizedBox(
              height: 115.h,
              child: Stack(
                children: [
                  Container(
                    color: const Color.fromRGBO(1, 18, 112, 1),
                    height: 20.h,
                  ),
                  Positioned(
                    top: 12.h,
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
                      height: 20.h,
                      child: Column(
                        children: [
                          SizedBox(height: 2.h,),
                          Row(
                            children: [
                              SizedBox(width: 52.w,),
                              Text("اختر طريقة الدفع",style: TextStyle(
                                fontSize: 4.5.w,
                                fontFamily: "theFont",
                                color: const Color.fromRGBO(1, 18, 112, 1),
                              ),),
                            ],
                          ),
                          Stack(
                            children: [
                              Row(
                                children: [
                                  Image(image: AssetImage(madaPic),width: 30.w,height: 28.w,),
                                  Image(image: AssetImage(visaPic),width: 30.w,height: 28.w,),
                                  Image(image: AssetImage(bankPic),width: 30.w,height: 28.w,),
                                ],
                              ),
                              Row(children: [
                                SizedBox(width: 15.w,),
                                Theme(
                                  data: ThemeData(unselectedWidgetColor: Colors.green,),
                                  child: Checkbox(
                                      focusColor: Colors.green,
                                      hoverColor: Colors.green,
                                      activeColor: Colors.green,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.w)),
                                      value: mada,
                                      onChanged: (val){
                                        setState(() {
                                          mada = val!;
                                          if(mada == true){
                                            visa = false;
                                            bank = false;
                                            madaPic = "android/assets/Mada-01.png";
                                            visaPic = "android/assets/visa_PNG30.png";
                                            bankPic = "android/assets/bank.png";
                                          }
                                        });
                                      }),
                                ),
                                SizedBox(width: 15.w,),
                                Theme(
                                  data: ThemeData(unselectedWidgetColor: Colors.green,),
                                  child: Checkbox(
                                      focusColor: Colors.green,
                                      hoverColor: Colors.green,
                                      activeColor: Colors.green,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.w)),
                                      value: visa,
                                      onChanged: (val){
                                        setState(() {
                                          visa = val!;
                                          if(visa == true){
                                            mada = false;
                                            bank = false;
                                            madaPic = "android/assets/Mada-1.png";
                                            visaPic = "android/assets/visa_PNG-1.png";
                                            bankPic = "android/assets/bank.png";
                                          }
                                        });
                                      }),
                                ),
                                SizedBox(width: 17.w,),
                                Theme(
                                  data: ThemeData(unselectedWidgetColor: Colors.green,),
                                  child: Checkbox(
                                      focusColor: Colors.green,
                                      hoverColor: Colors.green,
                                      activeColor: Colors.green,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.w)),
                                      value: bank,
                                      onChanged: (val){
                                        setState(() {
                                          bank = val!;
                                          if(bank == true){
                                            visa = false;
                                            mada = false;
                                            madaPic = "android/assets/Mada-1.png";
                                            visaPic = "android/assets/visa_PNG30.png";
                                            bankPic = "android/assets/bank-1.png";
                                          }
                                        });
                                      }),
                                ),
                              ],),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 35.h,
                      child: SizedBox(
                        width: 100.w,
                        height: 80.h,
                        //color: Colors.grey,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 55.w,),
                                Text("تفاصيل الفاتورة", style: TextStyle(
                                  fontFamily: "theFont",
                                  fontSize: 5.w,
                                  color: Colors.black,
                                ),),
                              ],
                            ),
                            SizedBox(height: 2.h,),
                            Row(
                              children: [
                                SizedBox(width: 6.w,),
                                Text( "ريال", style: TextStyle(
                                  fontFamily: "theFont",
                                  fontSize: 4.w,
                                  color: const Color.fromRGBO(1, 18, 112, 1),
                                ),),
                                SizedBox(width: 2.w,),
                                Text( "150", style: TextStyle(
                                  fontFamily: "theFont",
                                  fontSize: 4.w,
                                  color: const Color.fromRGBO(1, 18, 112, 1),
                                ),),
                                SizedBox(width: 45.w,),
                                Text("تكلفة الخدمة", style: TextStyle(
                                  fontFamily: "theFont",
                                  fontSize: 4.w,
                                  color: const Color.fromRGBO(1, 18, 112, 1),
                                ),),
                              ],
                            ),
                            SizedBox(height: 2.h,),
                            Row(
                              children: [
                                SizedBox(width: 6.w,),
                                Text( "ريال", style: TextStyle(
                                  fontFamily: "theFont",
                                  fontSize: 4.w,
                                  color: const Color.fromRGBO(1, 18, 112, 1),
                                ),),
                                SizedBox(width: 2.w,),
                                Text( "0", style: TextStyle(
                                  fontFamily: "theFont",
                                  fontSize: 4.w,
                                  color: const Color.fromRGBO(1, 18, 112, 1),
                                ),),
                                SizedBox(width: 47.w,),
                                Text("كلمات زائدة" "  0", style: TextStyle(
                                  fontFamily: "theFont",
                                  fontSize: 4.w,
                                  color: const Color.fromRGBO(1, 18, 112, 1),
                                ),),
                              ],
                            ),
                            SizedBox(height: 2.h,),
                            Row(
                              children: [
                                SizedBox(width: 6.w,),
                                Text( "ريال", style: TextStyle(
                                  fontFamily: "theFont",
                                  fontSize: 4.w,
                                  color: const Color.fromRGBO(1, 18, 112, 1),
                                ),),
                                SizedBox(width: 2.w,),
                                Text( "0", style: TextStyle(
                                  fontFamily: "theFont",
                                  fontSize: 4.w,
                                  color: const Color.fromRGBO(1, 18, 112, 1),
                                ),),
                                SizedBox(width: 51.w,),
                                Text("مرفقات" " (1)", style: TextStyle(
                                  fontFamily: "theFont",
                                  fontSize: 4.w,
                                  color: const Color.fromRGBO(1, 18, 112, 1),
                                ),),
                              ],
                            ),
                            SizedBox(height: 2.h,),
                            SizedBox(
                              width: 100.w,
                              height: 6.5.h,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 16.w,
                                    child: SizedBox(
                                      width: 70.w,
                                      height: 7.h,
                                      child: TextFormField(
                                        onChanged: (val){},
                                        textAlign: TextAlign.right,
                                        enabled: true,
                                        style: TextStyle(
                                          fontFamily: 'theFont',
                                          fontSize: 5.w,
                                          color: Colors.black,
                                        ),
                                        cursorColor: Colors.black26,
                                        decoration: InputDecoration(
                                          hintText: "كود الخصم",
                                          hintStyle: const TextStyle(
                                            color: Colors.black26,
                                            fontFamily: "theFont",
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(2.5.w),
                                            borderSide: BorderSide(color: Colors.black26, width: .5.w),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(50.0),
                                            borderSide: BorderSide(color: Colors.black26, width: .5.w),
                                          ),
                                          contentPadding: EdgeInsets.all(1.w),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 2.w,
                                    child: GestureDetector(
                                      onTap: (){
                                      },
                                      child: Container(
                                        width: 20.w,
                                        height: 6.5.h,
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(1, 18, 112, 1),
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                        ),
                                        child: Text("تفعيل",style: TextStyle(
                                          fontSize: 5.w,
                                          color: Colors.white,
                                          fontFamily: "theFont",
                                        ),),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 2.h,),
                            Row(
                              children: [
                                SizedBox(width: 6.w,),
                                Text( "ريال", style: TextStyle(
                                  fontFamily: "theFont",
                                  fontSize: 4.w,
                                  color: const Color.fromRGBO(1, 18, 112, 1),
                                ),),
                                SizedBox(width: 2.w,),
                                Text( "0", style: TextStyle(
                                  fontFamily: "theFont",
                                  fontSize: 4.w,
                                  color: const Color.fromRGBO(1, 18, 112, 1),
                                ),),
                                SizedBox(width: 60.w,),
                                Text("خصم", style: TextStyle(
                                  fontFamily: "theFont",
                                  fontSize: 4.w,
                                  color: const Color.fromRGBO(1, 18, 112, 1),
                                ),),
                              ],
                            ),
                            SizedBox(height: 2.h,),
                            Row(
                              children: [
                                SizedBox(width: 6.w,),
                                Text( "ريال", style: TextStyle(
                                  fontFamily: "theFont",
                                  fontSize: 4.w,
                                  color: const Color.fromRGBO(1, 18, 112, 1),
                                ),),
                                SizedBox(width: 2.w,),
                                Text( "150", style: TextStyle(
                                  fontFamily: "theFont",
                                  fontSize: 4.w,
                                  color: const Color.fromRGBO(1, 18, 112, 1),
                                ),),
                                SizedBox(width: 40.w,),
                                Text("المبلغ الاجمالي", style: TextStyle(
                                  fontFamily: "theFont",
                                  fontSize: 4.w,
                                  color: const Color.fromRGBO(1, 18, 112, 1),
                                ),),
                              ],
                            ),
                            SizedBox(height: 2.h,),
                            Row(
                              children: [
                                SizedBox(width: 5.w,),
                                Text("تحتفظ المؤسسة بحق رفض ارسال اي برقية وسيتم اعادة \n                                       مبلغ الخدمة كاملا في هذه الحاله",
                                style: TextStyle(
                                  fontSize: 3.5.w,
                                  fontFamily: "theFont",
                                  color: Colors.red,
                                ),),
                                SizedBox(width: .5.w,),
                                Container(
                                  width: 4.w,
                                  height: 4.w,
                                  decoration:BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2.h,),
                            Row(
                              children: [
                                SizedBox(width: 12.w,),
                                Text("عملية الدفع تتم عن طريق دفع معتمدة من مؤسسة\n                                                         النقد السعودي",
                                  style: TextStyle(
                                    fontSize: 3.5.w,
                                    fontFamily: "theFont",
                                    color: Colors.red,
                                  ),),
                                SizedBox(width: 3.w,),
                                Container(
                                  width: 4.w,
                                  height: 4.w,
                                  decoration:const BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2.h,),
                            Row(
                              children: [
                                SizedBox(width: 12.w,),
                                Text("بالظغط على زر الدفع تفوض مؤسسة المكتبة الذكية\n                                             بارسال البرقية نيابة عنك",
                                  style: TextStyle(
                                    fontSize: 3.5.w,
                                    fontFamily: "theFont",
                                    color: Colors.red,
                                  ),),
                                Container(
                                  width: 4.w,
                                  height: 4.h,
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Row(
                          children: [
                            SizedBox(width: 20.w,),
                            GestureDetector(
                              onTap: (){
                                showDialog();
                              },
                              child: Container(
                                width: 60.w,
                                height: 6.h,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(105, 203, 248, 1),
                                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                ),
                                child: Text("الدفع",style: TextStyle(
                                  fontSize: 5.w,
                                  color: Colors.white,
                                  fontFamily: "theFont",
                                ),),
                              ),
                            ),
                          ],
                        ),
                          ],
                  ),
                      ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
  void showDialog() {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 700),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 68.h,
            child: SizedBox.expand(
              child: Column(
                children: [
                  SizedBox(height: 3.h,),
                  Image(image: const AssetImage("android/assets/Path 91.png"),
                    width: 20.w,
                    height: 20.w,),
                  SizedBox(height: 1.h,),
                  Row(
                    children: [
                      SizedBox(width: 42.w,),
                      Material(
                        color: Colors.white,
                        child: Text("تنويه", style: TextStyle(
                          color: const Color.fromRGBO(105, 203, 248, 1),
                          fontFamily: "theFont",
                          fontSize: 8.w,
                        ),),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h,),
                  Material(
                    color: Colors.white,
                    child: Text("عميلنا العزيز الارسال يتم عن طريق البريد السعودي بريد الممتاز وهو اسرع وافضل \n    طريقة ممكنة وقد يترتب بعض التأخير الخارج عن الادارة بسبب الاجراءات الاحترازية\n                                                                                                         لفايروس كورونا", style: TextStyle(
                      fontFamily: "theFont",
                      fontSize: 3.w,
                      color: Colors.black
                    ),),
                  ),
                  SizedBox(height: 2.h,),
                  Material(
                    color: Colors.white,
                    child: Text("ملاحظة: يتم الارسال فقط خلال ايام العمل من الاحد الى الخميس", style: TextStyle(
                        fontFamily: "theFont",
                        fontSize: 3.w,
                        color: Colors.red
                    ),),
                  ),
                  SizedBox(height: 2.h,),
                  Material(
                    color: Colors.white,
                    child: Text("دورنا فقط ارسال المعاملة ولسنا مسؤولين عن تجاوب \n الجهه المعنيه مع محتوى البرقية", style: TextStyle(
                        fontFamily: "theFont",
                        fontSize: 3.w,
                        color: Colors.red
                    ),),
                  ),
                  SizedBox(height: 1.h,),
                  Material(
                    color: Colors.white,
                    child: Text("سيتم تزويدك برابط تتبع الشحنة وارساله الى الرقم الذي قمت باادخاله والتحقق \n                                                                منه في المنصه فور استلامه من البريد \n                                                           حيث ان عملية الارسال تستغرق يومي عمل \n                     عملية تسليم البريد للجهه المعنيه تتبع لكل جهه وللبريد السعودي", style: TextStyle(
                        fontFamily: "theFont",
                        fontSize: 3.w,
                        color: Colors.black
                    ),),
                  ),
                  SizedBox(height: 4.h,),
                  Row(
                    children: [
                      SizedBox(width: 30.w,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => my_telegrams()),
                          );
                        },
                        child: Container(
                          width: 40.w,
                          height: 7.h,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(105, 203, 248, 1),
                            borderRadius: BorderRadius.all(
                                Radius.circular(20.0)),
                          ),
                          child: Material(
                            color: const Color.fromRGBO(105, 203, 248, 1),
                            child: Text("موافق", style: TextStyle(
                              fontSize: 7.w,
                              color: Colors.white,
                              fontFamily: "theFont",
                            ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            color: Colors.white,
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }
}
