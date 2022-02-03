import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/beranda.dart';
import 'package:tugasakhirsalur/halamanutama.dart';
import 'package:tugasakhirsalur/login.dart';
import 'package:tugasakhirsalur/register.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: GoogleFonts.poppinsTextTheme(
          ThemeData.light().textTheme,
        ),
        primaryColor: salur13,
        colorScheme: ThemeData().colorScheme.copyWith(primary: salur13),
        errorColor: Colors.red,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: 'halaman_utama',
      routes: {
        'halaman_utama': (context) => halamanUtama(),
        'halaman_regis': (context) => signupPage(),
        'halaman_login': (context) => loginPage(),
        'halaman_beranda': (context) => BerandaMenu(),
      },
    );
  }
}



