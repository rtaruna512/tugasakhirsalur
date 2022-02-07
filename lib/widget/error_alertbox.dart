import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorAlertDialog extends StatelessWidget {
  final String message;
  const ErrorAlertDialog({Key? key, required this.message}) : super(key: key);

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
            message,
            style: GoogleFonts.poppins(
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
              Navigator.pop(context);
            },
            child: Center(
                child: Text('Ok', style: GoogleFonts.poppins(fontWeight: FontWeight.w600),)),
          )
        ],
      ),
    );
  }
}
