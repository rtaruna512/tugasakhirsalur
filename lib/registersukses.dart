import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class suksesRegister extends StatefulWidget {
  const suksesRegister({Key? key}) : super(key: key);

  @override
  _suksesRegisterState createState() => _suksesRegisterState();
}

class _suksesRegisterState extends State<suksesRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      child: Center(
        child: Text(
          'Registrasi Sukses!'
        ),
      ),
    );
  }
}
