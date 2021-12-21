import 'package:barkeaty/stateful/personal_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import "package:flutter_textfield_autocomplete/flutter_textfield_autocomplete.dart";



class destination extends StatefulWidget {
  @override
  _destinationState createState() => _destinationState();
}

class _destinationState extends State<destination> {
  List<String> _typesOfBreed = ["الديوان الملكي", "وزارة الخارجية", "وزارة الداخلية", "القضاء"]; // here you can declare your list instance.
  GlobalKey<TextFieldAutoCompleteState<String>> _textFieldAutoCompleteKey =
  new GlobalKey();
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
                      height: 65.h,
                    ),
                  ),
                  Positioned(
                    top: 26.h,
                    left: 22.w,
                    child: Text("الجهة المراد الارسال اليها",style: TextStyle(
                      fontSize: 5.5.w,
                      //color: Colors.white,
                      fontFamily: "theFont",
                      color: const Color.fromRGBO(1, 18, 112, 1),
                    ),),
                  ),
                  Positioned(
                    top: 75.h,
                    left: 12.w,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => personal_image(),
                        ),);
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
                    top: 75.h,
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
                    top: 45.h,
                    left: 23.w,
                    child: Container(
                    width: 25.h,
                    height: 25.h,
                      child: Image(
                        width: 25.h,
                        height: 25.h,
                        image: const AssetImage("android/assets/box-rita-img-02-133x125.png"),
                      ),
                  )),
                  Positioned(
                    top: 35.h,
                    left: 17.w,
                    child: SizedBox(
                      width: 65.w,
                      height: 7.h,
                      child: TextFieldAutoComplete(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: BorderSide(color: Colors.black26, width: .5.w),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: BorderSide(color: Colors.black26, width: .5.w),
                          ),
                          hintText: "اكتب هنا",
                          hintStyle: const TextStyle(
                            color: Colors.black26,
                            fontFamily: "theFont",
                          ),),
                        key: _textFieldAutoCompleteKey,
                        suggestions: _typesOfBreed,
                          itemFilter: (String item, query) {
                            return item
                                .toLowerCase()
                                .startsWith(query.toLowerCase());
                          },
                        itemSubmitted: (String item) {
                          print('selected breed $item');
                        },
                        clearOnSubmit: false,
                        itemSorter: (String a, String b) {
                          return a.compareTo(b);
                        },
                        itemBuilder: (context, String item) {
                          return Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(2.w),
                            child: Row(
                              children: [
                                SizedBox(width: 5.w,),
                                Text(
                                  item,
                                  style: const TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                      /*TextFormField(
                        onChanged: (val){},
                        enabled: true,
                        cursorColor: Colors.black26,
                          contentPadding: EdgeInsets.all(1.w),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),*/
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
}
