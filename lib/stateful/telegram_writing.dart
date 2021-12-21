import 'package:barkeaty/stateful/attachments.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class telegram_writing extends StatefulWidget {
  @override
  _telegram_writingState createState() => _telegram_writingState();
}

class _telegram_writingState extends State<telegram_writing> {
  var text_align = TextAlign.right;
  String hintVar = "... اكتب هنا";
  Color icon1Color = Colors.black26, icon2Color = Colors.black26, icon3Color = Colors.blue, boldColor = Colors.grey;
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
                            spreadRadius: 2.w,
                            blurRadius: 2.w,
                            offset: Offset(0, 1.5.w), // changes position of shadow
                          ),
                        ],
                      ),
                      width: 92.w,
                      height: 53.h,
                    ),
                  ),
                  Positioned(
                    top: 26.h,
                    left: 35.w,
                    child: Text("ادخال نص البرقية",style: TextStyle(
                      fontSize: 5.w,
                      //color: Colors.white,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
                  ),
                  Positioned(
                    top: 68.h,
                    left: 12.w,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => attachments()),
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
                    top: 68.h,
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
                    top: 35.h,
                    left: 10.w,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.w),
                        border: Border.all(color: Colors.black26, width: .5.w),),
                      width: 80.w,
                      height: 60.w,
                    ),
                  ),
                  Positioned(
                    top: 43.h,
                    left: 10.w,
                    child: Container(
                      color: Colors.black26,
                      height: .5.w,
                      width: 80.w,
                    ),
                  ),
                  Positioned(
                    top: 36.5.h,
                    left: 13.w,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.w),
                        border: Border.all(color: Colors.black26, width: .5.w),),
                      width: 40.w,
                      height: 11.w,
                      child: Row(
                        children: [
                          SizedBox(width: 2.5.w,),
                          GestureDetector(
                              onTap: (){
                                setState(() {
                                  text_align = TextAlign.left;
                                  hintVar = "Right here...";
                                  icon1Color = Colors.blue;
                                  icon2Color = Colors.black26;
                                  icon3Color = Colors.black26;
                                });
                              },
                              child: Icon(Icons.format_align_left,
                                color: icon1Color,size: 8.w,)),
                          SizedBox(width: 2.5.w,),
                          Container(
                            height: 4.h,
                            width: .5.w,
                            color: Colors.black26,
                          ),
                          SizedBox(width: 2.5.w,),
                          GestureDetector(
                              onTap: (){
                                setState(() {
                                  text_align = TextAlign.center;
                                  hintVar = "... اكتب هنا";
                                  icon1Color = Colors.black26;
                                  icon2Color = Colors.blue;
                                  icon3Color = Colors.black26;
                                });
                              },
                              child: Icon(Icons.format_align_center,
                                color: icon2Color,size: 8.w,)),
                          SizedBox(width: 2.5.w,),
                          Container(
                            height: 4.h,
                            width: .5.w,
                            color: Colors.black26,
                          ),
                          SizedBox(width: 2.5.w,),
                          GestureDetector(
                              onTap: (){
                                setState(() {
                                  text_align = TextAlign.right;
                                  hintVar = "... اكتب هنا";
                                  icon1Color = Colors.black26;
                                  icon2Color = Colors.black26;
                                  icon3Color = Colors.blue;
                                });
                              },
                              child: Icon(Icons.format_align_right,
                                color: icon3Color,size: 8.w,)),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 43.h,
                    left: 10.w,
                    child: SizedBox(
                      width: 80.w,
                      height: 18.h,
                      child: TextFormField(
                        onChanged: (val){},
                        textAlign: text_align,
                        keyboardType: TextInputType.multiline,
                        enabled: true,
                        maxLines: null,
                        style: TextStyle(
                          fontFamily: 'theFont',
                          fontSize: 5.w,
                          color: Colors.black,
                        ),
                        cursorColor: Colors.black26,
                        decoration: InputDecoration(
                          hintText: hintVar,
                          hintStyle: const TextStyle(
                            color: Colors.black26,
                            fontFamily: "theFont",
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          /*enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.w),
                            borderSide: BorderSide(color: Colors.black26, width: .5.w),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.w),
                            borderSide: BorderSide(color: Colors.black26, width: .5.w),
                          ),*/
                          contentPadding: EdgeInsets.all(1.w),
                          /*border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.w),
                          ),*/
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 58.w,
                      top: 36.5.h,
                      child: SizedBox(
                      width: 25.w,
                      height: 5.h,
                        child: Row(
                          children: [
                            Image(image: const AssetImage("android/assets/text-along-path.png"), width: 5.w, height: 5.w,),
                            SizedBox(width: 3.w,),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  if(boldColor == Colors.grey){
                                    boldColor = Color.fromRGBO(105, 203, 248, 1);
                                  }
                                  else{
                                    boldColor = Colors.grey;
                                  }
                                });
                              },
                                child: SizedBox(
                                    width: 8.w,
                                    height: 5.h,
                                    //color: Colors.red,
                                    child: Image(image: const AssetImage("android/assets/bold-text 1.png"), color: boldColor ,width: 5.w, height: 5.w,))),
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
}
