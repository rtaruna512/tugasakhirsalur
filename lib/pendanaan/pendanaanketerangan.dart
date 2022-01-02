import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhirsalur/data/datapendanaan.dart';

class pendanaanKeterangan extends StatefulWidget {
  final Pendanaan pendanaanPilihan;

  pendanaanKeterangan({required this.pendanaanPilihan});
  @override
  _pendanaanKeteranganState createState() => _pendanaanKeteranganState();
}

class _pendanaanKeteranganState extends State<pendanaanKeterangan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tentang Mitra',
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
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 55,
                    backgroundImage: ExactAssetImage(widget.pendanaanPilihan.avatarURL),
                  ),
                  SizedBox(height: 50,),
                  Text(
                    '*Minimal Pendanaan Rp100.000',
                    style: TextStyle(
                        fontSize: 8,
                        fontStyle: FontStyle.italic
                    ),
                  )
                ],
              ),

              SizedBox(width: 10,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    widget.pendanaanPilihan.namaDebitor,
                    style: TextStyle(
                        fontSize: 14
                    ),
                  ),

                  SizedBox(height: 5,),

                  Text(
                    widget.pendanaanPilihan.namaUsaha,
                    style: TextStyle(
                        fontSize: 12
                    ),
                  ),

                  SizedBox(height: 5,),

                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 12,
                      ),
                      Text(
                        widget.pendanaanPilihan.lokasi,
                        style: TextStyle(
                            fontSize: 12
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 5,),

                  Container(
                    width: 175,
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Sisa Plafond',
                          style: TextStyle(
                              fontSize: 12
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text(
                          widget.pendanaanPilihan.sisaPlafond,
                          style: TextStyle(
                              fontSize: 12
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 5,),

                  Container(
                    width: 175,
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Tenor',
                          style: TextStyle(
                              fontSize: 12
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text(
                          widget.pendanaanPilihan.tenor,
                          style: TextStyle(
                              fontSize: 12
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 5,),

                  Container(
                    width: 175,
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Bagi Hasil',
                          style: TextStyle(
                              fontSize: 12
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text(
                          widget.pendanaanPilihan.bagihasil,
                          style: TextStyle(
                              fontSize: 12
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 5,),

                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
