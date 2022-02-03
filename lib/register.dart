import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:tugasakhirsalur/bantuan/bantuanmain.dart';
import 'package:tugasakhirsalur/login.dart';
import 'package:tugasakhirsalur/syaratketentuan.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:tugasakhirsalur/variables/appvariables_lib.dart';
import 'package:tugasakhirsalur/widget/backgroundpainter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/widget/error_alertbox.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tugasakhirsalur/widget/suskesreg_alertbox.dart';


class signupPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<signupPage> {
  bool _isHidden = true;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  late String nama;
  late String email;
  late String password;
  bool showSpinner = false;

  void _registerUser()async{
    User? currentUser;
    await _auth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
    ).then((auth){
      currentUser = auth.user;
      userId = currentUser!.uid;
      userEmail = currentUser!.email!;
      getName = _nameController.text.trim();
      saveUserToFirebase();
    }).catchError((error){
      showDialog(context: context, builder: (con) {
        return const ErrorAlertDialog(message: 'Mohon lengkapi data pendaftaran akun.');
      });
    });

    if (currentUser != null){
      showDialog(context: context, builder: (con){
        return SuksesRegAlert();
      });
    }
  }

  void saveUserToFirebase(){
    Map<String, dynamic> userInfo = {
      'namaPengguna': _nameController.text.trim(),
      'userId': userId,
      "time": DateTime.now(),
      'status': "active",

    };
    FirebaseFirestore.instance.collection("users").doc(userId).set(userInfo);
  }


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
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
            padding: EdgeInsets.all(0),
            child: Stack(
              children: [
                BackgroundPainter(),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          'Ayo bergabung dengan Salur!',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 27),
                        )),

                    SizedBox(height: 15,),

                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          'Lengkapi Informasimu untuk\n'
                              'menjadi anggota di Salur.',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        )),

                    SizedBox(height: 15,),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        decoration: BoxDecoration(
                            color: salur11,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: TextField(
                          style: GoogleFonts.poppins(
                              fontSize: 13
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            border: InputBorder.none,
                            hintText: 'Masukkan Nama Lengkap',
                            hintStyle: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 13
                            ),
                          ),
                          onChanged: (value) {
                            _nameController.text = value;
                          },
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        decoration: BoxDecoration(
                            color: salur11,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: TextField(
                          style: GoogleFonts.poppins(
                              fontSize: 13
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            border: InputBorder.none,
                            hintText: 'Masukkan Email',
                            hintStyle: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 13
                            ),
                          ),
                          onChanged: (value) {
                            _emailController.text = value;
                          },
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
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
                          onChanged: (value) {
                            _passwordController.text = value;
                          },
                        ),
                      ),
                    ),

                    SizedBox(height: 50,),

                    Column(
                      children: [
                        Text('Dengan mendaftar anda menyetujui',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 12)),
                        InkWell(
                          child: Text(
                              'Syarat & Ketentuan',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: salur1,
                                fontSize: 12,)
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SyaratKetentuan())
                            );
                          },
                        ),
                      ],
                    ),

                    SizedBox(height: 15,),

                    Container(
                        height: 50,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: ElevatedButton(
                          child: Text(
                            'DAFTAR',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onPressed: () {
                            _registerUser();
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              primary: salur1
                          ),
                        )),

                    SizedBox(
                      height: 15,
                    ),

                    Container(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: Row(
                          children: <Widget>[
                            Text('Sudah punya akun Salur? ',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12)),
                            InkWell(
                              child: Text(
                                  'Masuk di sini',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      color: salur1,
                                      fontSize: 12)
                              ),
                              onTap: () {
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
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

}