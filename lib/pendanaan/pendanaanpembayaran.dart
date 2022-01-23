import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/data/datapendanaan.dart';
import 'package:tugasakhirsalur/pendanaan/pendanaanmain.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:tugasakhirsalur/variables/appvariables_lib.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class pendanaanPembayaran extends StatefulWidget {
  final Pendanaan pendanaanTerpilih;

  pendanaanPembayaran({required this.pendanaanTerpilih});
  @override
  _pendanaanPembayaranState createState() => _pendanaanPembayaranState();
}

class _pendanaanPembayaranState extends State<pendanaanPembayaran> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pembayaran Pendanaan',
          style: GoogleFonts.poppins(
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
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [BoxShadow(
                            blurRadius: 10,
                            color: Colors.black26,
                            offset: Offset(0,6),)
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: ExactAssetImage(widget.pendanaanTerpilih.avatarURL),

                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: 10,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        widget.pendanaanTerpilih.namaDebitor,
                        style: GoogleFonts.poppins(
                            fontSize: 17
                        ),
                      ),
                      Text(
                        widget.pendanaanTerpilih.namaUsaha,
                        style: GoogleFonts.poppins(
                            fontSize: 13
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 14,
                          ),
                          Text(
                            widget.pendanaanTerpilih.lokasi,
                            style: GoogleFonts.poppins(
                                fontSize: 14
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all()
                ),
                child:
                Row(
                  children: [
                    Spacer(),
                    Text(
                      'Lakukan pembayaran dalam ',
                      style: GoogleFonts.poppins(
                          fontSize: 13
                      ),
                    ),
                    Text(
                      '01:00:00',
                      style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 13,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),

            SizedBox(height: 15),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all()
                ),
                padding: EdgeInsets.all(15),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Pembayaran plafond',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),

                    SizedBox(height: 10,),

                    Container(
                      height: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: salur13
                      ),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Rp',
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            nominalPendanaanAkhir.toString(),
                            style: GoogleFonts.poppins(
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
            ),

            SizedBox(height: 15),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all()
                ),
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lakukan Pembayaran',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
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
                            style: GoogleFonts.poppins(
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
                                style: GoogleFonts.poppins(
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
                            style: GoogleFonts.poppins(
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
                                style: GoogleFonts.poppins(
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
                            style: GoogleFonts.poppins(
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
                                style: GoogleFonts.poppins(
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
                            style: GoogleFonts.poppins(
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
                                style: GoogleFonts.poppins(
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
                            style: GoogleFonts.poppins(
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
                                style: GoogleFonts.poppins(
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
            ),

            SizedBox(height: 15,),

            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => pendanaanBeranda()));
              },
              child: Text(
                'Kembali ke halaman pendanaan',
                style: GoogleFonts.poppins(
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
