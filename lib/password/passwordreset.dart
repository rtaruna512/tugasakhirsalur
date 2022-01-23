import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/bantuan/bantuanmain.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:tugasakhirsalur/widget/backgroundpainter.dart';
import 'package:google_fonts/google_fonts.dart';

class passwordReset extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<passwordReset> {
  TextEditingController passwordlamaController = TextEditingController();
  TextEditingController passwordbaruController = TextEditingController();
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
                          'Reset Password',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 27),
                        )),
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.fromLTRB(30,0,30,0),
                        child: Text(
                          'Silahkan masukkan password baru',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        )),

                    SizedBox(height: 50,),

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
                          controller: passwordbaruController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            border: InputBorder.none,
                            hintText: 'Masukkan Password Baru',
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
                          controller: passwordlamaController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            border: InputBorder.none,
                            hintText: 'Konfirmasi Password',
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
                            print(passwordbaruController);
                            print(passwordlamaController);
                            Navigator.pop(context);
                          },
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