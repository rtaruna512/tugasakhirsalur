import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/widget/pendanaanriwayatlistview.dart';


class pendanaanRiwayatmenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Transaksi Pendanaan Saya',style: TextStyle(color: Colors.black),),
        centerTitle: true,

      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child:Column(
          children: [
            Flexible(
              child: Container(
                  child: pendanaanRiwayatListView()
              ),
            ),
          ],
        ),
      ),
    );
  }
}
