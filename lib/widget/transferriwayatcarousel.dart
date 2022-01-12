import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhirsalur/data/datatransferriwayat.dart';


class transferRiwayatCarousel extends StatelessWidget {
  Color salur1 = const Color(0xff014753);
  Color salurwidgetbg2 = const Color(0x14B3C824);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 15,),
            Container(
              height: 300,
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  height: 20,
                ),
                scrollDirection: Axis.vertical,
                itemCount: transferriwayat.length,
                itemBuilder: (BuildContext context, int index) {
                  RiwayatTransfer riwayattf = transferriwayat[index];
                  return Card(
                    elevation: 10,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: salurwidgetbg2,
                          borderRadius: BorderRadius.circular(20),
                      ),

                      child: Row(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Text(
                                      riwayattf.bankAsal,
                                      style: TextStyle(
                                        fontSize: 15
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 20,
                                    ),
                                    Text(
                                      riwayattf.bankTujuan,
                                      style: TextStyle(
                                          fontSize: 15
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                riwayattf.namaTujuan,
                                style: TextStyle(
                                    fontSize: 14
                                ),
                              ),
                              Text(
                                riwayattf.tanggalTransfer,
                                style: TextStyle(
                                    fontSize: 13
                                ),
                              ),
                            ],
                          ),

                          Spacer(),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                riwayattf.nominalTransfer,
                                style: TextStyle(
                                    fontSize: 16
                                ),
                              ),

                              SizedBox(height: 5,),

                              Text(
                                riwayattf.statusTransfer,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: salur1,
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
