import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/bantuan/bantuanmain.dart';
import 'package:tugasakhirsalur/login.dart';
import 'package:tugasakhirsalur/syaratketentuan.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:tugasakhirsalur/widget/backgroundpainter.dart';
import 'package:google_fonts/google_fonts.dart';


class signupPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<signupPage> {
  TextEditingController nameController = TextEditingController();
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
                        style: GoogleFonts.poppins(
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
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      )),
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
                        controller: nameController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Masukkan Nama Lengkap',
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15
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

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: salur11
                      ),
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: TextField(
                        style: GoogleFonts.poppins(
                            fontSize: 15
                        ),
                        obscureText: _isHidden,
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15
                          ),
                          suffix: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(
                              Icons.visibility,
                              size: 18,
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
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12)),
                  ),

                  Container(
                      child: TextButton(
                        child: Text(
                            'Syarat & Ketentuan',
                            style: GoogleFonts.poppins(
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
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12)),
                          TextButton(
                            child: Text(
                                'Masuk di sini',
                                style: GoogleFonts.poppins(
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
                  Spacer(),
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