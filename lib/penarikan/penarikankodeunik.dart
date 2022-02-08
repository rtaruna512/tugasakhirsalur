import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhirsalur/penarikan/penarikancek.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/variables/appvariables_lib.dart';

class PenarikanKodeUnik extends StatefulWidget {
  const PenarikanKodeUnik({Key? key}) : super(key: key);

  @override
  _PenarikanKodeUnikState createState() => _PenarikanKodeUnikState();
}

class _PenarikanKodeUnikState extends State<PenarikanKodeUnik> {
  final nominalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: salur1,
        title: Text('Tarik Saldo Kode Unik'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(
                'Masukkan nominal yang Akan Ditarik',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600
                ),
              ),
            ),

            SizedBox(height: 15,),

            Container(
              child: TextFormField(
                style: GoogleFonts.poppins(
                  fontSize: 17,
                ),
                controller: nominalController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: salur7,
                    filled: true,
                    prefixText: "Rp",
                    labelText: 'Nominal Penarikan'
                ),
                keyboardType: TextInputType.number,
                validator: (nominalController){

                },
              ),
            ),
            Container(
              child: Text(
                'Minimal penarikan Rp20000.',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontStyle: FontStyle.italic,
                  color: Colors.red,
                ),
              ),
            ),

            SizedBox(height: 30,),

            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              elevation: 10,
              child: Container(
                padding: EdgeInsets.all(15),
                color: salur18,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'PENTING',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    RichText(
                      text: TextSpan(
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 13
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '*Minimal penarikan saldo ',
                            ),
                            TextSpan(
                              text: 'kode unik',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            TextSpan(
                              text: ' adalah Rp20000',
                            ),
                          ]
                      ),
                    ),
                    SizedBox(height: 5,),
                    RichText(
                      text: TextSpan(
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 13
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '*Penarikan saldo hanya dapat dikirimkan ke akun rekening yang terdatar pada aplikasi salur',
                            ),
                          ]
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 50,),

            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity,50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    )
                ),
                child: Text(
                  'TARIK SALDO SEKARANG',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600

                  ),
                ),
                onPressed: ()  {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PenarikanCek()));
                  nominalPenarikanSaldounik = int.parse(nominalController.text);
                },
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
