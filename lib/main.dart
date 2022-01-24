import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/login.dart';
import 'package:tugasakhirsalur/register.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:tugasakhirsalur/widget/backgroundpainter.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MaterialApp(
    theme: ThemeData(
        brightness: Brightness.light,
        textTheme: GoogleFonts.poppinsTextTheme(
          ThemeData.light().textTheme,
        ),
        primaryColor: salur13,
        colorScheme: ThemeData().colorScheme.copyWith(primary: salur13),
        errorColor: Colors.red,
        scaffoldBackgroundColor: Colors.white,
    ),
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(0),
            child: Stack(
              children: [
                BackgroundPainter(),

                Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 60),
                  child: Column(
                    children: <Widget>[
                      Spacer(),

                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              primary: salur1
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'BUAT AKUN',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => signupPage()));
                            },
                          )
                      ),

                      SizedBox(height: 20,),

                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'MASUK',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => loginPage()));
                            },
                          )
                      ),

                      SizedBox(height: 50,),
                    ],
                  ),
                ),
              ],
            )
        )
    );
  }
}


