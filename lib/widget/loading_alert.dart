import 'package:flutter/material.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';

class LoadingAlertDialog extends StatelessWidget {

  circularProgress(){
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 12),
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(
          salur13,
        ),
      ),
    );
  }

  final String message;
  const LoadingAlertDialog({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          circularProgress(),
          SizedBox(height: 15,),
          Text(message)
        ],
      ),
    );
  }
}
