import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/donasibni.dart';
import 'package:tugasakhirsalur/donasibri.dart';
import 'package:tugasakhirsalur/donasibsi.dart';
import 'package:tugasakhirsalur/donasimandiri.dart';
import 'package:tugasakhirsalur/variables/appvariables_lib.dart';
import 'package:tugasakhirsalur/donasibca.dart';

class DonasiMetodeTF extends StatefulWidget {
  @override
  _DonasiMetodeTFState createState() => _DonasiMetodeTFState();
}

class _DonasiMetodeTFState extends State<DonasiMetodeTF> {
  Color salur1 = const Color(0xff014753);
  Color salurwidgetbg = const Color(0x80D2DDAF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: salur1,
        title: Text('Pilih Metode donasi'),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 30, 15, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: salur1,
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 15,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Nominal yang akan di donasi:',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),

                    SizedBox(height: 15,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Rp$nominalDonasi',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),

                    SizedBox(height: 15,),
                  ],
                ),
              ),

              SizedBox(height: 15,),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightGreen,
                ),
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Transfer Bank',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Spacer(),
                    Text('(Proses 1-10 menit)')
                  ],
                ),
              ),

              SizedBox(height: 15),

              RawMaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => donasiBCA()));
                },
                elevation: 2,
                child:
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: salurwidgetbg,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3)
                      )
                    ]
                  ),
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/bca.png',
                        height: 25,
                        width: 100,
                        alignment: Alignment.centerLeft,
                      ),
                      SizedBox(width: 15,),
                      Text(
                        'BCA',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),

              SizedBox(height: 15,),

              RawMaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => donasiMandiri()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: salurwidgetbg
                  ),
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/mandiri.png',
                        height: 25,
                        width: 100,
                        alignment: Alignment.centerLeft,
                      ),
                      SizedBox(width: 15,),
                      Text(
                        'Mandiri',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),

              SizedBox(height: 15,),

              RawMaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => donasiBNI()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: salurwidgetbg
                  ),
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/bni.png',
                        height: 25,
                        width: 100,
                        alignment: Alignment.centerLeft,
                      ),
                      SizedBox(width: 15,),
                      Text(
                        'BNI',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),

              SizedBox(height: 15,),

              RawMaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => donasiBRI()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: salurwidgetbg
                  ),
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/bri.png',
                        height: 25,
                        width: 100,
                        alignment: Alignment.centerLeft,
                      ),
                      SizedBox(width: 15,),
                      Text(
                        'BRI',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),

              SizedBox(height: 15,),

              RawMaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => donasiBSI()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: salurwidgetbg
                  ),
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/bsi.png',
                        height: 25,
                        width: 100,
                        alignment: Alignment.centerLeft,
                      ),
                      SizedBox(width: 15,),
                      Text(
                        'BSI',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),

              SizedBox(height: 15,),

            ],
          ),
        ),
      ),
    );
  }
}
