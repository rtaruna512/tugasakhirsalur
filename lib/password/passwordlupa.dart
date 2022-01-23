import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/bantuan/bantuanmain.dart';
import 'package:tugasakhirsalur/login.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:tugasakhirsalur/widget/backgroundpainter.dart';
import 'package:google_fonts/google_fonts.dart';

class passwordLupa extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<passwordLupa> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.help_outline),
              iconSize: 40,
              color: Colors.black,
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BantuanMain()
                    )
                );
              },
            )
          ],
        ),
        body: Padding(
            padding: EdgeInsets.all(0),
            child: Stack(
              children: [
                BackgroundPainter(),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.fromLTRB(30,0,30,0),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Lupa Password?',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 27),
                        )),
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.fromLTRB(30,0,30,0),
                        child: Text(
                          'Anda dapat mereset password anda disini',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        )),

                    SizedBox(height: 50,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                            color: salur11,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: TextField(
                          style: GoogleFonts.poppins(
                              fontSize: 15
                          ),
                          controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Masukkan Email',
                            hintStyle: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 15
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),

                    Container(
                        height: 50,
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: ElevatedButton(
                          child: Text(
                            'Reset Password',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              primary: salur1
                          ),
                          onPressed: () {
                            print(emailController.text);
                            showDialog(context: context, builder: (BuildContext context) => AlertDialog(
                              backgroundColor: salur14,
                              contentPadding: EdgeInsets.all(15),
                              content: Container(
                                height: 125,
                                child: Column(
                                  children: [
                                    Text(
                                      'Silahkan periksa email anda untuk tahap selanjutnya',
                                      style: GoogleFonts.poppins(
                                      ),
                                    ),
                                    SizedBox(height: 15,),
                                    TextButton(onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => loginPage()));
                                    },
                                      child: Text(
                                        'Oke',
                                        style: GoogleFonts.poppins(
                                          color: salur1,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),)
                                  ],
                                ),
                              ),
                            ));
                          },
                        )
                    ),
                    Spacer(),
                  ],
                ),
              ],
            )));
  }
}