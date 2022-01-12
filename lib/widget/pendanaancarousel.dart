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

                              Container(
                                width: 175,
                                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all()
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Sisa Plafond',
                                          style: TextStyle(
                                              fontSize: 12
                                          ),
                                        ),

                                        SizedBox(height: 5,),

                                        Text(
                                          'Tenor',
                                          style: TextStyle(
                                              fontSize: 12
                                          ),
                                        ),

                                        SizedBox(height: 5,),

                                        Text(
                                          'Bagi Hasil',
                                          style: TextStyle(
                                              fontSize: 12
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          pendanaan.sisaPlafond,
                                          style: TextStyle(
                                              fontSize: 12
                                          ),
                                        ),

                                        SizedBox(height: 5,),

                                        Text(
                                          pendanaan.tenor,
                                          style: TextStyle(
                                              fontSize: 12
                                          ),
                                        ),

                                        SizedBox(height: 5,),

                                        Text(
                                          pendanaan.bagihasil,
                                          style: TextStyle(
                                              fontSize: 12
                                          ),
                                        ),
                                      ],
                                    )
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
