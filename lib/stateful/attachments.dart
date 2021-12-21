import 'package:barkeaty/stateful/payment.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';




class attachments extends StatefulWidget {
  @override
  _attachmentsState createState() => _attachmentsState();
}

class _attachmentsState extends State<attachments> {
  int attachmentsNum = 0;
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
                    top: 10.h,
                    left: 6.w,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image(
                          width: 15.w,
                          height: 15.w,
                          image: const AssetImage("android/assets/down-arrow-1.png")),
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
                      height: 53.h,
                      child: Column(
                        children: [
                          SizedBox(height: 2.h,),
                          Text("ماتريد ارفاقه",style: TextStyle(
                            fontSize: 5.w,
                            //color: Colors.white,
                            fontFamily: "theFont",
                            color: const Color.fromRGBO(1, 18, 112, 1),
                          ),),
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              SizedBox(width: 3.w,),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.w),
                                  border: Border.all(color: Colors.black26, width: .8.w),),
                                width: 25.w,
                                height: 20.w,
                                child: Row(
                                  children: [
                                    Image(image: const AssetImage("android/assets/document.png"),width: 10.w,height: 10.w,),
                                    Image(image: const AssetImage("android/assets/gallery.png"),width: 10.w,height: 10.w,),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5.w,),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.w),
                                  border: Border.all(color: Colors.black26, width: .8.w),),
                                width: 25.w,
                                height: 20.w,
                                child: Row(
                                  children: [
                                    Image(image: const AssetImage("android/assets/document.png"),width: 10.w,height: 10.w,),
                                    Image(image: const AssetImage("android/assets/gallery.png"),width: 10.w,height: 10.w,),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5.w,),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.w),
                                  border: Border.all(color: Colors.black26, width: .8.w),),
                                width: 25.w,
                                height: 20.w,
                                child: Row(
                                  children: [
                                    Image(image: const AssetImage("android/assets/document.png"),width: 10.w,height: 10.w,),
                                    Image(image: const AssetImage("android/assets/gallery.png"),width: 10.w,height: 10.w,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10.w,),
                              Image(image: const AssetImage("android/assets/+.png"), width: 10.w, height: 10.w,),
                              SizedBox(width: 20.w,),
                              Image(image: const AssetImage("android/assets/+.png"), width: 10.w, height: 10.w,),
                              SizedBox(width: 20.w,),
                              Image(image: const AssetImage("android/assets/+.png"), width: 10.w, height: 10.w,),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 3.w,),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.w),
                                  border: Border.all(color: Colors.black26, width: .8.w),),
                                width: 25.w,
                                height: 20.w,
                                child: Row(
                                  children: [
                                    Image(image: AssetImage("android/assets/document.png"),width: 10.w,height: 10.w,),
                                    Image(image: AssetImage("android/assets/gallery.png"),width: 10.w,height: 10.w,),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5.w,),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.w),
                                  border: Border.all(color: Colors.black26, width: .8.w),),
                                width: 25.w,
                                height: 20.w,
                                child: Row(
                                  children: [
                                    Image(image: AssetImage("android/assets/document.png"),width: 10.w,height: 10.w,),
                                    Image(image: AssetImage("android/assets/gallery.png"),width: 10.w,height: 10.w,),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5.w,),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.w),
                                  border: Border.all(color: Colors.black26, width: .8.w),),
                                width: 25.w,
                                height: 20.w,
                                child: Row(
                                  children: [
                                    Image(image: AssetImage("android/assets/document.png"),width: 10.w,height: 10.w,),
                                    Image(image: AssetImage("android/assets/gallery.png"),width: 10.w,height: 10.w,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10.w,),
                              Image(image: const AssetImage("android/assets/+.png"), width: 10.w, height: 10.w,),
                              SizedBox(width: 20.w,),
                              Image(image: const AssetImage("android/assets/+.png"), width: 10.w, height: 10.w,),
                              SizedBox(width: 20.w,),
                              Image(image: const AssetImage("android/assets/+.png"), width: 10.w, height: 10.w,),
                            ],
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            children: [
                              SizedBox(width: 5.w,),
                              GestureDetector(
                              onTap: (){
                                showDialog();
                              },
                              child: Container(
                                width: 40.w,
                                height: 7.h,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(105, 203, 248, 1),
                                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                ),
                                child: Text("الانتقال للدفع",style: TextStyle(
                                  fontSize: 5.w,
                                  color: Colors.white,
                                  fontFamily: "theFont",
                                ),),
                              ),
                            ),
                              SizedBox(width: 5.w,),
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
            height: 35.h,
            child: SizedBox.expand(
                  child: Column(
                    children: [
                      SizedBox(height: 3.h,),
                      Image(image: const AssetImage("android/assets/about.png"),width: 20.w,height: 20.w,),
                      SizedBox(height: 1.h,),
                      Material(
                        color: Colors.white,
                        child: Text("مراجعة المرفقات المرفوعه", style: TextStyle(
                            color: Colors.blue,
                            fontFamily: "theFont",
                            fontSize: 5.w,
                          ),),
                      ),
                      SizedBox(height: 1.h,),
                      Material(
                        color: Colors.white,
                        child: Text("$attachmentsNum " ":عدد المرفقات المرفوعه", style: TextStyle(
                          fontSize: 5.w,
                          fontFamily: "theFont",
                          decoration: TextDecoration.none,
                          color: Colors.red,
                        ),),
                      ),
                      SizedBox(height: 2.h,),
                      Row(
                        children: [
                          SizedBox(width: 5.w,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => payment()),
                              );
                            },
                            child: Container(
                              width: 40.w,
                              height: 5.h,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(105, 203, 248, 1),
                                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              ),
                              child: Material(
                                color: const Color.fromRGBO(105, 203, 248, 1),
                                child: Text("الانتقال للدفع",style: TextStyle(
                                  fontSize: 5.w,
                                  color: Colors.white,
                                  fontFamily: "theFont",
                                ),),
                              ),
                            ),
                          ),
                          SizedBox(width: 5.w,),
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 40.w,
                              height: 5.h,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              ),
                              child: Material(
                                color: Colors.red,
                                child: Text("اضافة المزيد",style: TextStyle(
                                  fontSize: 5.w,
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
