import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/bantuan/bantuanmain.dart';
import 'package:tugasakhirsalur/beranda.dart';
import 'package:tugasakhirsalur/password/passwordlupa.dart';
import 'package:tugasakhirsalur/register.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:tugasakhirsalur/widget/backgroundpainter.dart';
import 'package:google_fonts/google_fonts.dart';

class loginPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<loginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isHidden = true;

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
                          'Halo!\n'
                              'Selamat Datang',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 27),
                        )),

                    SizedBox(height: 50,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        decoration: BoxDecoration(
                            color: salur11,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: TextField(
                          style: GoogleFonts.poppins(
                              fontSize: 13
                          ),
                          controller: emailController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            border: InputBorder.none,
                            hintText: 'Masukkan Email',
                            hintStyle: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 13
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: salur11
                        ),
                        child: TextField(
                          style: GoogleFonts.poppins(
                              fontSize: 13
                          ),
                          obscureText: _isHidden,
                          controller: passwordController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 13
                            ),
                            suffix: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(
                                Icons.visibility,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => passwordLupa()));
                          },
                          child: Text(
                              'Lupa Password?',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  color: salur1,
                                  fontSize: 12,
                              ),

                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 30,),

                    Container(
                        height: 50,
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: ElevatedButton(
                          child: Text(
                            'MASUK',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
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
                            print(passwordController.text);
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => BerandaMenu())
                            );
                          },
                        )),

                    SizedBox(
                      height: 15,
                    ),

                    Container(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: Row(
                          children: <Widget>[
                            Text('Belum mempunyai akun Salur? ',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12)),
                            InkWell(
                              child: Text(
                                  'Daftar di sini',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      color: salur1,
                                      fontSize: 12)
                              ),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => signupPage()));
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,

                        )
                    ),
                    Spacer(),
                  ],
                ),
              ],
            )));
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

}