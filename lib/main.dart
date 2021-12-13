import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/bantuanmain.dart';
import 'package:tugasakhirsalur/login.dart';
import 'package:tugasakhirsalur/syaratketentuan.dart';
import 'dart:ui' as ui;

import 'package:tugasakhirsalur/widget/backgroundpainter.dart';



void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.lightGreen,
      colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.lightGreen),
      errorColor: Colors.red
    ),
    home: signupPage(),
  ));
}

class signupPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<signupPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isHidden = true;
  Color salur1 = const Color(0xff014753);
  Color gradientGLight = const Color(0xffD7E14C);
  Color gradientGdark = const Color(0xff041417);
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
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.fromLTRB(30,0,30,0),
                        child: Text(
                          'Ayo bergabung dengan Salur!',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.fromLTRB(30,0,30,0),
                        child: Text(
                          'Lengkapi Informasimu untuk\n'
                              'menjadi anggota di Salur.\n',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
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
                          style: TextStyle(
                            fontSize: 20
                          ),
                          controller: nameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Masukkan Nama Lengkap',
                            hintStyle: TextStyle(
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
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                            color: salurwidgetbg2,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: TextField(
                          style: TextStyle(
                              fontSize: 20
                          ),
                          controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Masukkan Email',
                            hintStyle: TextStyle(
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
                            hintStyle: TextStyle(
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
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                      alignment: Alignment.center,
                      child: Text('Dengan mendaftar anda menyetujui',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12)),
                    ),

                    Container(
                        child: TextButton(
                          child: Text(
                              'Syarat & Ketentuan',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: salur1,
                                  fontSize: 12,)
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SyaratKetentuan())
                            );
                          },
                        )),

                    Container(
                        height: 50,
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: ElevatedButton(
                          child: Text('Daftar'),
                          onPressed: () {
                            print(nameController.text);
                            print(passwordController.text);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: salur1,
                          ),
                        )),

                    SizedBox(
                      height: 15,
                    ),

                    Container(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: Row(
                          children: <Widget>[
                            Text('Sudah punya akun Salur?',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12)),
                            TextButton(
                              child: Text(
                                  'Masuk di sini',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: salur1,
                                      fontSize: 12)
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => loginPage())
                                );
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        )
                    ),
                  ],
                ),
              ],
            )
        ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

}