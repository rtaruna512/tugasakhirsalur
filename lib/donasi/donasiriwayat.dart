import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:tugasakhirsalur/widget/donasiriwayatlistview.dart';


class donasiRiwayatmenu extends StatelessWidget {
  const donasiRiwayatmenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: salur1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Donasi Saya'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child:Column(
          children: [
            Flexible(
              child: Container(
                  child: donasiRiwayatListView()
              ),
            ),
          ],
        ),
      ),
    );
  }
}
