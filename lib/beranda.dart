import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/donasimain.dart';
import 'package:tugasakhirsalur/transfermain.dart';
import 'package:tugasakhirsalur/widget/donasicarousel.dart';
import 'package:flutter/services.dart';



class BerandaMenu extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<BerandaMenu>{
  Color salur1 = const Color(0xff014753);
  Color salur2 = const Color(0xcc014753);
  Color gradientGLight = const Color(0xffD7E14C);
  Color gradientGdark = const Color(0xff041417);
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: salur1));
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(0),
            child: ListView(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * .59,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                          ),
                          color: salur1,
                        ),
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Column(

                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Halo, Penyalur',
                                      style: TextStyle(
                                          fontSize: 17,
                                        color: Colors.grey
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                        'Selamat datang!',
                                      style: TextStyle(
                                        fontSize: 27,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                ),
                                Spacer(),
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage: ExactAssetImage('assets/images/avatarplaceholder.jpg'),
                                )
                              ],
                            ),

                            Spacer(),

                            Container(
                              width: 320,
                              height: 200,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment(0, 0),
                                  colors: <Color>[
                                    gradientGLight,
                                    gradientGdark
                                  ]
                                )
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                          'Total Aset Pendanaan',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                      SizedBox(height: 15,),
                                      Text(
                                          'Rp250.000',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 27
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),

                            SizedBox(height: 54,),
                          ],
                        ),
                      ),


                      Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .52,
                          left: 15,
                          right: 15,
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 9,vertical: 7),
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              blurRadius: 5,
                              color: Colors.black26
                            )]
                          ),
                          child: Row(
                            children: <Widget>[
                              RawMaterialButton(
                                onPressed: () {

                                },
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(
                                                color: salur1,
                                                width: 3
                                            )
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),

                                          child: Image.asset(
                                            'assets/images/funding.png',
                                            scale: 10,),
                                        ),
                                      ),
                                      Text('Pendanaan')
                                    ],
                                  ),
                                ),
                              ),

                              Spacer(),

                              RawMaterialButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => DonasiBeranda()));
                                },
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(
                                                color: salur1,
                                                width: 3
                                            )
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),

                                          child: Image.asset(
                                            'assets/images/solidarity.png',
                                            scale: 10,),
                                        ),
                                      ),
                                      Text('Donasi')
                                    ],
                                  ),
                                ),
                              ),

                              Spacer(),

                              RawMaterialButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => TransferBeranda()));
                                },
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          border: Border.all(
                                              color: salur1,
                                              width: 3
                                          )
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),

                                        child: Image.asset(
                                          'assets/images/money-transfer.png',
                                          scale: 10,),
                                      ),
                                    ),
                                    Text('Kirim Uang')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Ayo Salurkan',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: donasiCarousel(),
                  ),
                ]
            )
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
          currentIndex: _currentTab,
          onTap: (int value){
            setState(() {
              _currentTab = value;
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