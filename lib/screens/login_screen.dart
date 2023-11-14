import 'package:flutter/material.dart';
import 'package:health/screens/home_secreen.dart';
import '../screens/sigup_scrren.dart';
import '../components/curve_cliper.dart';
import 'main_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool secourText = true;
  @override
  Widget build(BuildContext context) {
    TextEditingController nu1 = new TextEditingController();
    TextEditingController pass = new TextEditingController();

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.blue[200],
        child:
            // Material(
            //   color: Colors.blue[200],
            //   child:
            ListView(
          children: [
            ClipPath(
              clipper: CurveCliper(),
              child: Image(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
                image: AssetImage('assets/images/sehatey-logo.jpg'),
              ),
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '! منظور جديد لصحتك ',
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 28,
                    )),
                  ),
                ),
                Text(
                  'تابع حالتك الصحية من أدوية،إجازات مريضة،وأنشطتك البدنية في منصة واحده',
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 400,
                    child: TextFormField(
                      autovalidateMode:  AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.red,

                      controller: nu1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintStyle: TextStyle(fontFamily: 'GoogleFonts.rubik'),
                          filled: true,
                          suffixIcon: Icon(Icons.perm_identity),
                          hintText: 'رقم الهوية الوطنية'),
                      textAlign: TextAlign.end,
                      onTap: (){
                        setState(() {

                        });
                      },
                      validator: (value) {
                        if(Icon == Icons.perm_identity){
                          if (value!.isEmpty)return "يجب كتابة رقم الهوية";

                        }
                      },
                    ),
                  ),
                ),
                // ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 400,
                    child: TextField(
                      controller: pass,
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
                        suffixIcon: Icon(Icons.lock),
                        hintText: 'كلمة المرور',
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'هل نسيت كلمة المرور؟',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          ' تغير كلمة المرور',
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ))
                  ],
                ),
                // ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    child: MaterialButton(
                      height: 50,
                      onPressed: () {
                        // if (nu1.text == "مازن العريقي" &&
                        //     pass.text == "775577941")
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainScreen(),
                            ));
                        // else
                        //   return print("object");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.login_sharp,
                            color: Colors.white,
                          ),
                          Text(
                            ' تسجيل الدخول',
                            style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 19,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue[100],
                    ),
                    child: MaterialButton(
                      height: 50,
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => sigup(),
                            ));
                      },
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
                    )),

                SizedBox(
                  height: 20,
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'بالضغط على تسجيل او إنشاء حساب، فانت توافق على',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          '        الشروط والاحكام',
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.blueGrey[700]),
                          ),
                        )),
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'وانك قد قرات',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          '  سياسة الخصوصية',
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.blueGrey[700]),
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ],
          // ),
        ),
      ),
    );
  }
}
