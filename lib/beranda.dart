import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/berandascreens/beranda_main.dart';
import 'package:tugasakhirsalur/berandascreens/beranda_riwayat.dart';
import 'package:flutter/services.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';



class BerandaMenu extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<BerandaMenu>{
  int currentIndex = 0;
  final screens = [
    BerandaMenuMain(),
    BerandaRiwayat(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: salur1));
    return Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow> [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
            )
          ]
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (int value){
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.home_outlined,
                  size: 35,
                ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.history,
                  size: 35,
                ),
              label: '',
            )
          ],
        ),
      ),
    );
  }
}