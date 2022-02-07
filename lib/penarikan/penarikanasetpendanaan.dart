import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/variables/appvariables_lib.dart';

class PenarikanAsetPendanaan extends StatefulWidget {
  const PenarikanAsetPendanaan({Key? key}) : super(key: key);

  @override
  _PenarikanAsetPendanaanState createState() => _PenarikanAsetPendanaanState();
}

class _PenarikanAsetPendanaanState extends State<PenarikanAsetPendanaan> {
  final nominalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: salur1,
        title: Text('Donasi'),
        leading: IconButton(
          icon: Icon(Icons.close),
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
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Donasi yang anda berikan',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),

            SizedBox(height: 15,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                style: GoogleFonts.poppins(
                  fontSize: 20,
                ),
                controller: nominalController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: salur7,
                    filled: true,
                    prefixText: "Rp",
                    labelText: 'Nominal Donasi'
                ),
                keyboardType: TextInputType.number,
                validator: (nominalController){

                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Minimal menyalurkan Rp1000.',
                style: GoogleFonts.poppins(
                  fontStyle: FontStyle.italic,
                  color: Colors.red,
                ),
              ),
            ),

            SizedBox(height: 50,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
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
                onPressed: (){
                  nominalPenarikanAset = int.parse(nominalController.text);
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
