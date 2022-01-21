import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/bantuan/bantuanmain.dart';
import 'package:tugasakhirsalur/beranda.dart';
import 'package:tugasakhirsalur/register.dart';
import 'package:tugasakhirsalur/widget/backgroundpainter.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        brightness: Brightness.light,
        textTheme: GoogleFonts.poppinsTextTheme(
          ThemeData.light().textTheme,
        ),
        primaryColor: Colors.lightGreen,
        colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.lightGreen),
        errorColor: Colors.red,
    ),
    home: loginPage(),
  ));
}

class loginPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<loginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isHidden = true;
  Color salur1 = const Color(0xff014753);
  Color salurwidgetbg2 = const Color(0x66a7a7a7);

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
              iconSize: 50,
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
                              'Selamat Datang\n',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                            color: salurwidgetbg2,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: TextField(
                          style: GoogleFonts.poppins(
                              fontSize: 20
                          ),
                          controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Masukkan Email',
                            hintStyle: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 20
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
                            color: salurwidgetbg2
                        ),
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: TextField(
                          obscureText: _isHidden,
                          controller: passwordController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 20
                            ),
                            suffix: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(
                                Icons.visibility,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      padding:EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: TextButton(
                        onPressed: (){
                          //forgot password screen
                        },
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                  'Lupa Password?',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    color: salur1,
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    Container(
                        height: 50,
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: ElevatedButton(
                          child: Text('MASUK'),
                          style: ElevatedButton.styleFrom(
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
                            Text('Belum mempunyai akun Salur?',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12)),
                            TextButton(
                              child: Text(
                                  'Daftar di sini',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      color: salur1,
                                      fontSize: 12)
                              ),
                              onPressed: () {
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