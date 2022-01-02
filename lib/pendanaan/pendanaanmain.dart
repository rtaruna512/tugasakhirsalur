import 'package:flutter/material.dart';
import 'package:tugasakhirsalur/pendanaan/pendanaanpasar.dart';

class pendanaanBeranda extends StatefulWidget {
  @override
  _pendanaanBerandaState createState() => _pendanaanBerandaState();
}

class _pendanaanBerandaState extends State<pendanaanBeranda> {
  Color salur1 = const Color(0xff014753);
  Color salur2 = const Color(0xcc014753);
  Color salur3 = const Color(0x80d2ddaf);
  Color salur4 = const Color(0xff79834e);
  Color gradientGLight = const Color(0xffD7E14C);
  Color gradientGdark = const Color(0xff041417);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Pendanaan',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 15,),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
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
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 15,
                      )
                    ]
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
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/mastercard.png',
                          height: 45,
                          width: 45,
                          fit: BoxFit.fitWidth,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            
            SizedBox(height: 30,),
            
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: salur1,
              child: Text(
                'Portfolio saya',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Spacer(),

            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 30),
              child:
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => pendanaanPasar()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  child:
                  Row(
                    children: [
                      Spacer(),

                      Icon(
                        Icons.house_outlined,
                        color: Colors.black,
                      ),

                      SizedBox(width: 10,),

                      Text(
                        "Lihat Pasar Pendanaan",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),

                      Spacer(),
                    ],
                  ),
              ),
            ),
            SizedBox(height: 30,)

          ],
        ),
      ),
    );
  }
}
