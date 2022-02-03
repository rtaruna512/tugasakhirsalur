import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhirsalur/login.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';

class SuksesRegAlert extends StatelessWidget {
  const SuksesRegAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(30),
      backgroundColor: salur1,
      key: key,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Akun berhasil terdaftar!',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(80, 40),
                alignment: Alignment.center
            ),
            onPressed: () {
              Route newRoute = MaterialPageRoute(builder: (context) => loginPage());
              Navigator.pushReplacement(context, newRoute);
            },
            child: const Center(
                child: Text('Ok', style: TextStyle(fontWeight: FontWeight.w600),)),
          )
        ],
      ),
    );
  }
}
