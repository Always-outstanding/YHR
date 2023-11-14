import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/screens/login_screen.dart';

class sigup extends StatefulWidget {
  const sigup({super.key});

  @override
  State<sigup> createState() => _sigupState();
}

class _sigupState extends State<sigup> {
  bool secourText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: Text(
        //     'تسجيل حساب جديد',
        //     style: GoogleFonts.rubik(
        //         textStyle: TextStyle(
        //       fontWeight: FontWeight.w600,
        //       fontSize: 20,
        //     )),
        //   ),
        //   actions: [
        //     IconButton(
        //       icon: Icon(Icons.arrow_back_ios_new),
        //       onPressed: () {
        //         Navigator.pushReplacement(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => LoginScreen(),
        //             ));
        //       },
        //     )
        //   ],
        // ),
        body: ListView(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomRight,
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ));
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(height: 40),
                  Container(
                    // alignment: Alignment.,
                    child: Text(
                      '! عرفنا بنفسك أكثر   ',
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                      )),textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '  أدخل رقم الهوية/ رقم الجوال/ وتاريخ الميلاد/ وعنوان البريد الالكتروني /وكلمة المرور',
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 8,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 400,
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                // keyboardType: ,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintStyle: TextStyle(fontFamily: 'GoogleFonts.rubik'),
                    filled: true,
                    suffixIcon: Icon(Icons.person_4_sharp),
                    hintText: 'الاسم '),
                textAlign: TextAlign.end,
                onTap: () {
                  setState(() {

                  });
                },
                validator: (value) {
                  if(Icon==Icons.person_4_sharp){
                    // if (value!.isEmpty)return "يجب كتابة الاسم كاملا";
                    // if (value!.length >12 )return "رقم الهوية كبير";
                    // if (value!.length < 12)return "رقم الهوية صغير";
                    return "يجب كتابة الاسم كاملا";
                  }
                },
              ),
            ),
            // SizedBox(height: 20),
            Container(
              width: 400,
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                // keyboardType: ,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintStyle: TextStyle(fontFamily: 'GoogleFonts.rubik'),
                    filled: true,
                    suffixIcon: Icon(Icons.perm_identity),
                    hintText: 'رقم الهوية الوطنية'),
                textAlign: TextAlign.end,
                onTap: () {
                  setState(() {

                  });
                },
                validator: (value) {
                  if(Icon==Icons.perm_identity){
                    if (value!.isEmpty)return "يجب كتابة رقم الهوية";
                    // if (value!.length >12 )return "رقم الهوية كبير";
                    // if (value!.length < 12)return "رقم الهوية صغير";
                  }
                },
              ),
            ),
            Container(
              width: 400,
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                // keyboardType: ,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintStyle: TextStyle(fontFamily: 'GoogleFonts.rubik'),
                    filled: true,
                    suffixIcon: Icon(Icons.mobile_friendly),
                    hintText: 'رقم الجوال '),
                textAlign: TextAlign.end,
                onTap: () {
                  setState(() {

                  });
                },
                validator: (value) {
                  if(Icon==Icons.mobile_friendly){
                    if (value!.isEmpty)return "يجب كتابة رقم الحوال";
                    if (value!.length >9 )return "رقم الجوال كبير";
                    if (value!.length < 9)return "رقم الجوال صغير";
                  }
                },
              ),
            ),
            Container(
              width: 400,
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                // keyboardType:  ,

                cursorColor: Colors.red,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintStyle: TextStyle(fontFamily: 'GoogleFonts.rubik'),
                    filled: true,
                    suffixIcon: Icon(Icons.date_range_outlined),
                    hintText: 'تاريخ الميلاد  '),
                textAlign: TextAlign.end,
                onTap: () {
                  setState(() {

                  });
                },
                validator: (value) {
                  if(Icon==Icons.date_range_outlined){
                    if (value!.isEmpty)return "يجب تحديد تاريخ الميلاد";
                    // if (value!.length >12 )return "رقم الهوية كبير";
                    // if (value!.length < 12)return "رقم الهوية صغير";
                  }
                },
              ),
            ),
            Container(
              width: 400,
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                // keyboardType: ,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintStyle: TextStyle(fontFamily: 'GoogleFonts.rubik'),
                    filled: true,
                    suffixIcon: Icon(Icons.alternate_email_rounded),
                    hintText: 'البريد الالكتروني  '),
                textAlign: TextAlign.end,
                onTap: () {
                  setState(() {

                  });
                },
                validator: (value) {
                  if(Icon==Icons.alternate_email_rounded){
                    if (value!.isEmpty)return "يجب كتابة البريد الالكتروني";
                    // if (value!.length >12 )return "رقم الهوية كبير";
                    // if (value!.length < 12)return "رقم الهوية صغير";
                  }
                },
              ),
            ),
            Container(
              width: 400,
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                // keyboardType: ,
                cursorColor: Colors.red,
                obscureText: secourText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintStyle: TextStyle(fontFamily: 'GoogleFonts.rubik'),
                  prefixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          secourText = !secourText;
                        });
                      },
                      icon: Icon(secourText
                          ? Icons.visibility_off
                          : Icons.visibility)),
                  suffixIcon: Icon(Icons.lock),
                  hintText: 'كلمة المرور',
                ),
                textAlign: TextAlign.end,
                onTap: () {
                  setState(() {

                  });
                },
                validator: (value) {
                  if(Icon==Icons.lock){
                    if (value!.isEmpty)return "يجب كتابة كلمة المرور";
                    // if (value!.length >12 )return "رقم الهوية كبير";
                    if (value!.length < 6)return "كلمة المرور ضعيفة";
                  }
                },
              ),
            ),
            Container(
              width: 400,
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                // keyboardType: ,
                cursorColor: Colors.red,
                obscureText: secourText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintStyle: TextStyle(fontFamily: 'GoogleFonts.rubik'),
                  filled: true,
                  prefixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          secourText = !secourText;
                        });
                      },
                      icon: Icon(secourText
                          ? Icons.visibility_off
                          : Icons.visibility)),
                  suffixIcon: Icon(Icons.lock_outline),
                  hintText: 'تأكيد كلمة المرور',
                ),
                textAlign: TextAlign.end,
                onTap: () {
                  setState(() {

                  });
                },
                validator: (value) {
                  if(Icon==Icons.lock_outline){
                    if (value!.isEmpty)return "يجب كتابة كلمة المرور";
                    // if (value!.length >12 )return "رقم الهوية كبير";
                    if (value!.length < 6)return "كلمة المرور ضعيفة";
                  }
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text(
                    'هل لديك حساب ؟',
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: Text(
                        'تسجيل الدخول',
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 300,
              margin: EdgeInsets.symmetric(horizontal: 60),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue[100],
              ),
              child: MaterialButton(
                height: 60,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      color: Colors.blue,
                    ),
                    Text(
                      ' إنشاء حساب',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    // isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    context: context,
                    builder: (context) => ListView(
                      children: [
                        Container(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.black,
                              )),
                        ),
                        Column(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ListTile(
                              title: Text("mazen", textAlign: TextAlign.right),
                            ),
                            ListTile(
                              title: Text("mazen", textAlign: TextAlign.right),
                            ),
                            ListTile(
                              title: Text("mazen", textAlign: TextAlign.right),
                            ),
                            ListTile(
                              title: Text("mazen", textAlign: TextAlign.right),
                            ),
                            ListTile(
                              title: Text("mazen", textAlign: TextAlign.right),
                            ),
                            ListTile(
                              title: Text("mazen", textAlign: TextAlign.right),
                            ),
                            ListTile(
                              title: Text("mazen", textAlign: TextAlign.right),
                            ),
                            ListTile(
                              title: Text("mazen", textAlign: TextAlign.right),
                            ),
                            ListTile(
                              title: Text("mazen", textAlign: TextAlign.right),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'تواصل معنا',
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ))
          ],
        ),
      ],
    ));
  }
}
