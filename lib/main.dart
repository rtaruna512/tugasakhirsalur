import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/bantuanmain.dart';
import 'package:tugasakhirsalur/login.dart';
import 'package:tugasakhirsalur/syaratketentuan.dart';



void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.lightGreen,
      colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.lightGreen),
      errorColor: Colors.red
    ),
    home: signupPage(),
  ));
}

class signupPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<signupPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isHidden = true;
  Color salur1 = const Color(0xff014753);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline),
            iconSize: 50,
            color: Colors.black,
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BantuanMain()
                  )
              );
            },
          )
        ],
      ),
        body: Padding(
            padding: EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(30,0,30,0),
                    child: Text(
                      'Ayo bergabung dengan Salur!',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(30,0,30,0),
                    child: Text(
                      'Lengkapi Informasimu untuk\n'
                          'menjadi anggota di Salur.\n',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Masukkan Nama Lengkap',
                      isDense: true,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Masukkan Email',
                      isDense: true,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: TextField(
                    obscureText: _isHidden,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      isDense: true,
                      suffix: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(Icons.visibility),
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                  alignment: Alignment.center,
                  child: Text('Dengan mendaftar anda menyetujui',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12)),
                ),

                Container(
                    child: TextButton(
                      child: Text(
                          'Syarat & Ketentuan',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: salur1,
                              fontSize: 12,)
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SyaratKetentuan())
                        );
                      },
                    )),

                Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: ElevatedButton(
                      child: Text('Daftar'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: salur1,
                      ),
                    )),

                SizedBox(
                  height: 15,
                ),

                Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Row(
                      children: <Widget>[
                        Text('Sudah punya akun Salur?',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12)),
                        TextButton(
                          child: Text(
                              'Masuk di sini',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: salur1,
                                  fontSize: 12)
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => loginPage())
                            );
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),

              ],
            )));
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

}