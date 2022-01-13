import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileMenu extends StatelessWidget {
  Color salur1 = const Color(0xff014753);
  Color salur2 = const Color(0xcc014753);
  Color salur3 = const Color(0x80d2ddaf);
  Color salur4 = const Color(0xff79834e);
  Color gradientGLight = const Color(0xffD7E14C);
  Color gradientGdark = const Color(0xff041417);
  Color salurwidgetbg = const Color(0xb3D2DDAF);
  Color salurwidgetbg2 = const Color(0xd4B3C824);
  Color salurwidgetbg3 = const Color(0x37014753);
  Color salurwidgetbg4 = const Color(0x3C014753);

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
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 15,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: ExactAssetImage('assets/images/5894220152385821-Male_6.jpg'),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Muhammad Fadhil',
                        style: GoogleFonts.poppins(
                          fontSize: 23
                        ),
                      ),
                      Text(
                        'muhammadfadhil511@gmail.com',
                        style: GoogleFonts.poppins(
                          fontSize: 12
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 30,),

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: salurwidgetbg3
              ),
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informasi Akun',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
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
                            fontSize: 18
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salurwidgetbg4,
                          ),
                          child: Text(
                            'Muhammad Fadhil',
                            style: GoogleFonts.poppins(
                                fontSize: 18
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
                              fontSize: 18
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salurwidgetbg4,
                          ),
                          child: Text(
                            'muhammadfadhil511@gmail.com',
                            style: GoogleFonts.poppins(
                                fontSize: 18
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
                              fontSize: 18
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salurwidgetbg4,
                          ),
                          child: Text(
                            '*************',
                            style: GoogleFonts.poppins(
                                fontSize: 18
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {

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
                  color: salurwidgetbg3
              ),
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informasi Pribadi',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
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
                              fontSize: 18
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salurwidgetbg4,
                          ),
                          child: Text(
                            'Muhammad Fadhil',
                            style: GoogleFonts.poppins(
                                fontSize: 18
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
                              fontSize: 18
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salurwidgetbg4,
                          ),
                          child: Text(
                            '+62 82215357968',
                            style: GoogleFonts.poppins(
                                fontSize: 18
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
                                  fontSize: 18
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
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salurwidgetbg4,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Sudah upload',
                                style: GoogleFonts.poppins(
                                    fontSize: 18
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
                                  fontSize: 18
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
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salurwidgetbg4,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Sudah upload',
                                style: GoogleFonts.poppins(
                                    fontSize: 18
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
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30,),

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: salurwidgetbg3
              ),
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informasi Akun Bank Saya',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
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
                              fontSize: 18
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salurwidgetbg4,
                          ),
                          child: Text(
                            'Bank Negara Indonesia - PT (Persero)',
                            style: GoogleFonts.poppins(
                                fontSize: 18
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
                              fontSize: 18
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salurwidgetbg4,
                          ),
                          child: Text(
                            'Sdr Muhammad Fadhil',
                            style: GoogleFonts.poppins(
                                fontSize: 18
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
                              fontSize: 18
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: salurwidgetbg4,
                          ),
                          child: Text(
                            '609162687',
                            style: GoogleFonts.poppins(
                                fontSize: 18
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
