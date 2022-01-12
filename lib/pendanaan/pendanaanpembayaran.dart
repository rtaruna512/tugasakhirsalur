import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/data/datapendanaan.dart';
import 'package:tugasakhirsalur/pendanaan/pendanaanmain.dart';
import 'package:tugasakhirsalur/variables/appvariables_lib.dart';
import 'package:flutter/services.dart';

class pendanaanPembayaran extends StatefulWidget {
  final Pendanaan pendanaanTerpilih;

  pendanaanPembayaran({required this.pendanaanTerpilih});
  @override
  _pendanaanPembayaranState createState() => _pendanaanPembayaranState();
}

class _pendanaanPembayaranState extends State<pendanaanPembayaran> {
  Color salur1 = const Color(0xff014753);
  Color salur2 = const Color(0xcc014753);
  Color salur3 = const Color(0x80d2ddaf);
  Color salur4 = const Color(0xff79834e);
  Color gradientGLight = const Color(0xffD7E14C);
  Color gradientGdark = const Color(0xff041417);
  Color salurwidgetbg = const Color(0xb3D2DDAF);
  Color salurwidgetbg2 = const Color(0xd4B3C824);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pembayaran Pendanaan',
          style: TextStyle(
              color: Colors.black
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: ExactAssetImage(widget.pendanaanTerpilih.avatarURL),
                    ),
                  ],
                ),

                SizedBox(width: 10,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.pendanaanTerpilih.namaDebitor,
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),

                    SizedBox(height: 5,),

                    Text(
                      widget.pendanaanTerpilih.namaUsaha,
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),

                    SizedBox(height: 5,),

                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 13,
                        ),
                        Text(
                          widget.pendanaanTerpilih.lokasi,
                          style: TextStyle(
                              fontSize: 12
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),

            SizedBox(height: 15,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all()
                ),
                child:
                Row(
                  children: [
                    Spacer(),
                    Text(
                      'Lakukan pembayaran dalam',
                      style: TextStyle(
                          fontSize: 17
                      ),
                    ),
                    Spacer(),
                    Text(
                      '01:00:00',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 17
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),

            SizedBox(height: 15),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all()
              ),
              padding: EdgeInsets.all(15),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pembayaran',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        'Total plafon',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Rp5.000.000',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10,),

                  Divider(
                    color: Colors.black,
                    thickness: 1.5,
                  ),

                  SizedBox(height: 10,),

                  Container(
                    height: 50,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightGreen
                    ),
                    child:
                    Row(
                      children: [
                        Text(
                          'TOTAL',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Rp5.000.000',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),

            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all()
              ),
              padding: EdgeInsets.all(15),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lakukan Pembayaran',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10,),

                  Container(
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/bca.png',
                              height: 25,
                              width: 100,
                              alignment: Alignment.centerLeft,
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          '$rekeningBCA',
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                        Spacer(),
                        RawMaterialButton(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: rekeningBCA));
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tersalin ke clipboard!')));
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15, 6, 15, 6),
                            decoration: BoxDecoration(
                              color: Colors.grey
                            ),
                            child: Text(
                              'Salin',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/mandiri.png',
                          height: 25,
                          width: 100,
                          alignment: Alignment.centerLeft,
                        ),
                        Spacer(),
                        Text(
                          '$rekeningMandiri',
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                        Spacer(),
                        RawMaterialButton(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: rekeningMandiri));
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tersalin ke clipboard!')));
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15, 6, 15, 6),
                            decoration: BoxDecoration(
                                color: Colors.grey
                            ),
                            child: Text(
                              'Salin',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/bni.png',
                          height: 25,
                          width: 100,
                          alignment: Alignment.centerLeft,
                        ),
                        Spacer(),
                        Text(
                          '$rekeningBNI',
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                        Spacer(),
                        RawMaterialButton(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: rekeningBNI));
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tersalin ke clipboard!')));
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15, 6, 15, 6),
                            decoration: BoxDecoration(
                                color: Colors.grey
                            ),
                            child: Text(
                              'Salin',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/bri.png',
                          height: 25,
                          width: 100,
                          alignment: Alignment.centerLeft,
                        ),
                        Spacer(),
                        Text(
                          '$rekeningBRI',
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                        Spacer(),
                        RawMaterialButton(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: rekeningBRI));
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tersalin ke clipboard!')));
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15, 6, 15, 6),
                            decoration: BoxDecoration(
                                color: Colors.grey
                            ),
                            child: Text(
                              'Salin',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/bsi.png',
                          height: 25,
                          width: 100,
                          alignment: Alignment.centerLeft,
                        ),
                        Spacer(),
                        Text(
                          '$rekeningBSI',
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                        Spacer(),
                        RawMaterialButton(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: rekeningBSI));
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tersalin ke clipboard!')));
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15, 6, 15, 6),
                            decoration: BoxDecoration(
                                color: Colors.grey
                            ),
                            child: Text(
                              'Salin',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black
                              ),
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

            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => pendanaanBeranda()));
              },
              child: Text(
                'Kembali ke halaman pendanaan',
                style: TextStyle(
                  fontSize: 18,
                  color: salur1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
