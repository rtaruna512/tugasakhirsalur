import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/data/datadonasi.dart';
import 'package:tugasakhirsalur/donasi/donasimetodetf.dart';
import 'package:tugasakhirsalur/variables/appvariables_lib.dart';

class DonasiInput extends StatefulWidget {
  late final Donasi donasiPilihan;

  @override
  _DonasiInputState createState() => _DonasiInputState();
}

class _DonasiInputState extends State<DonasiInput> {
  Color salur1 = const Color(0xff014753);
  Color salurwidgetbg = const Color(0xb3D2DDAF);
  final nominalControllerd = TextEditingController();

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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                style: TextStyle(
                  fontSize: 25,
                ),
                controller: nominalControllerd,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: salurwidgetbg,
                  filled: true,
                  prefixText: "Rp",
                  labelText: 'Nominal Donasi'
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                  'Minimal menyalurkan Rp1000.',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.red,
                ),
              ),
            ),

            SizedBox(height: 30,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Berikan pesan kepada penerima',
                style: TextStyle(
                  fontSize: 16
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: salur1,
                    width: 2
                  )
                ),
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    isDense: true,
                    hintText: 'Tulis dukungan dan doa kepada penerima',
                    hintStyle: TextStyle(
                      fontSize: 14
                    ),
                  ),
                  maxLength: 100,

                ),
              ),
            ),

            SizedBox(height: 30,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity,50),
                ),
                child: Text(
                  'Lanjutkan pembayaran',
                  style: TextStyle(
                      color: Colors.black
                  ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DonasiMetodeTF()));
                  nominalDonasi = int.parse(nominalControllerd.text);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
