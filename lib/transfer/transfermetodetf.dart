import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/transfer/transferbsi.dart';
import 'package:tugasakhirsalur/transfer/transferbca.dart';
import 'package:tugasakhirsalur/transfer/transferbni.dart';
import 'package:tugasakhirsalur/transfer/transferbri.dart';
import 'package:tugasakhirsalur/transfer/transfermandiri.dart';
import 'package:tugasakhirsalur/variables/appvariables_lib.dart';

class transferMetodeTF extends StatefulWidget {
  @override
  _transferMetodeTFState createState() => _transferMetodeTFState();
}

class _transferMetodeTFState extends State<transferMetodeTF> {
  Color salur1 = const Color(0xff014753);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: salur1,
        title: Text('Pilih Metode Transfer'),
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
                        'Nominal yang akan di Transfer:',
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
                        'Rp$nominalTransfer',
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

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => transferBCA()));
                },
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[350],
                  ),
                  child: Container(
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
              ),

              SizedBox(height: 15,),

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => transferMandiri()));
                },
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[350],
                  ),
                  child: Container(
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
              ),

              SizedBox(height: 15,),

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => transferBNI()));
                },
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[350],
                  ),
                  child: Container(
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
              ),

              SizedBox(height: 15,),

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => transferBRI()));
                },
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[350],
                  ),
                  child: Container(
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
              ),

              SizedBox(height: 15,),

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => transferBSI()));
                },
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[350],
                  ),
                  child: Container(
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
              ),

              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}
