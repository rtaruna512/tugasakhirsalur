import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/bantuanmain.dart';
import 'package:tugasakhirsalur/beranda.dart';
import 'package:tugasakhirsalur/main.dart';


class loginPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<loginPage> {
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
                    padding: EdgeInsets.fromLTRB(30,0,30,0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Halo!\n'
                          'Selamat Datang\n',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
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
                  padding: EdgeInsets.fromLTRB(30,10,30,0),
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
                  padding:EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: TextButton(
                    onPressed: (){
                      //forgot password screen
                    },
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Lupa Password?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: salur1,
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: ElevatedButton(
                      child: Text('MASUK'),
                      style: ElevatedButton.styleFrom(
                        primary: salur1
                      ),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BerandaMenu())
                        );
                      },
                    )),

                SizedBox(
                  height: 15,
                ),

                Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Row(
                      children: <Widget>[
                        Text('Belum mempunyai akun Salur?',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12)),
                        TextButton(
                          child: Text(
                              'Daftar di sini',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: salur1,
                                  fontSize: 12)
                          ),
                          onPressed: () {
                            changeMenuSignup(context);
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

  void changeMenuSignup(BuildContext ctx) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
      return signupPage();
    },),);
  }

}