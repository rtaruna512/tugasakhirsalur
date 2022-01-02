import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhirsalur/data/datapendanaan.dart';
import 'package:tugasakhirsalur/pendanaan/pendanaanketerangan.dart';

class pendanaanCarousel extends StatelessWidget {
  Color salur1 = const Color(0xff014753);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 15,),
            Container(
              height: 600,
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  height: 20,
                ),
                scrollDirection: Axis.vertical,
                itemCount: pendanaantujuan.length,
                itemBuilder: (BuildContext context, int index) {
                  Pendanaan pendanaan = pendanaantujuan[index];
                  return RawMaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => pendanaanKeterangan(pendanaanPilihan: pendanaan,)));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5,
                              offset: Offset(0, 8),
                            )
                          ]
                      ),

                      child: Row(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 55,
                                backgroundImage: ExactAssetImage(pendanaan.avatarURL),
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
                                pendanaan.namaDebitor,
                                style: TextStyle(
                                  fontSize: 14
                                ),
                              ),

                              SizedBox(height: 5,),

                              Text(
                                pendanaan.namaUsaha,
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
                                    pendanaan.lokasi,
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
                                      pendanaan.sisaPlafond,
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
                                      pendanaan.tenor,
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
                                      pendanaan.bagihasil,
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
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
