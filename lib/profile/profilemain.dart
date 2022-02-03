import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/bantuan/bantuanmain.dart';
import 'package:tugasakhirsalur/password/passwordreset.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';

class ProfileMenu extends StatefulWidget {
  const ProfileMenu({Key? key}) : super(key: key);

  @override
  _ProfileMenuState createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late User user;


  @override
  void initState() {
    super.initState();
    initUser();
  }

  initUser() async {
    user = await _auth.currentUser!;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Akun'),
        centerTitle: true,
        backgroundColor: salur1,
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline),
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
        padding: EdgeInsets.all(15),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: ExactAssetImage('assets/images/5894220152385821-Male_6.jpg'),
                  ),
                  SizedBox(width: 15,),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Nama Pengguna',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text(
                          '${user.email}',
                          style: GoogleFonts.poppins(
                              fontSize: 12
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 30,),

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: salur3
              ),
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informasi Akun',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),
                  ),

                  SizedBox(height: 15,),

                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama',
                          style: GoogleFonts.poppins(
                              fontSize: 15
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salur4,
                          ),
                          child: Text(
                            'Nama Pengguna',
                            style: GoogleFonts.poppins(
                                fontSize: 15
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15,),

                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: GoogleFonts.poppins(
                              fontSize: 15
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salur4,
                          ),
                          child: Text(
                            '${user.email}',
                            style: GoogleFonts.poppins(
                                fontSize: 15
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15,),

                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style: GoogleFonts.poppins(
                              fontSize: 15
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salur4,
                          ),
                          child: Text(
                            '*************',
                            style: GoogleFonts.poppins(
                                fontSize: 15
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => passwordReset()));
                          },
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              alignment: Alignment.centerLeft
                          ),
                          child: Text(
                            'Ganti password?',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: salur1
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: salur3
              ),
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informasi Pribadi',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),
                  ),

                  SizedBox(height: 15,),

                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama',
                          style: GoogleFonts.poppins(
                              fontSize: 15
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salur4,
                          ),
                          child: Text(
                            'Nama Pengguna',
                            style: GoogleFonts.poppins(
                                fontSize: 15
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15,),

                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nomor Handphone',
                          style: GoogleFonts.poppins(
                              fontSize: 15
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salur4,
                          ),
                          child: Text(
                            '+62 82215357968',
                            style: GoogleFonts.poppins(
                                fontSize: 15
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15,),

                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'KTP',
                              style: GoogleFonts.poppins(
                                  fontSize: 15
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text(
                              '(Ketuk untuk melihat)',
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  color: Colors.grey,
                                  fontStyle: FontStyle.italic
                              ),
                            )
                          ],
                        ),
                        RawMaterialButton(
                          onPressed: () {

                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: salur4,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Sudah upload',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.visibility,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15,),

                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Selfie',
                              style: GoogleFonts.poppins(
                                  fontSize: 15
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text(
                              '(Ketuk untuk melihat)',
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  color: Colors.grey,
                                  fontStyle: FontStyle.italic
                              ),
                            ),
                          ],
                        ),
                        RawMaterialButton(
                          onPressed: () {

                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: salur4,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Sudah upload',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.visibility,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: salur3
              ),
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informasi Akun Bank Saya',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),
                  ),

                  SizedBox(height: 15,),

                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bank',
                          style: GoogleFonts.poppins(
                              fontSize: 15
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salur4,
                          ),
                          child: Text(
                            'Bank Negara Indonesia - PT (Persero)',
                            style: GoogleFonts.poppins(
                                fontSize: 15
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),

                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pemilik Akun',
                          style: GoogleFonts.poppins(
                              fontSize: 15
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salur4,
                          ),
                          child: Text(
                            'Sdr Muhammad Fadhil',
                            style: GoogleFonts.poppins(
                                fontSize: 15
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),

                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nomor Rekening',
                          style: GoogleFonts.poppins(
                              fontSize: 15
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salur4,
                          ),
                          child: Text(
                            '609162687',
                            style: GoogleFonts.poppins(
                                fontSize: 15
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 30,),

            Container(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      primary: salur1
                  ),
                  child: Text(
                    'KELUAR',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/halaman_login');
                  },
                )
            ),

            SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }
}
