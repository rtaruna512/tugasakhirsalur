import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  Color salur1 = const Color(0xff014753);
  Color salur2 = const Color(0xcc014753);
  Color gradientGLight = const Color(0xffD7E14C);
  Color gradientGdark = const Color(0xff041417);
  Color salurwidgetbg = const Color(0xb3D2DDAF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: salur1,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 15,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: <Widget>[
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileMenu()));
                    },
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: ExactAssetImage('assets/images/avatarplaceholder.jpg'),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nama Pengguna',
                        style: TextStyle(
                          fontSize: 23
                        ),
                      ),
                      Text(
                        'E-mail Pengguna',
                        style: TextStyle(
                          fontSize: 12
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 15,),

            RawMaterialButton(
              padding: EdgeInsets.symmetric(horizontal: 15),
              onPressed: () {

              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: salurwidgetbg
                ),
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Text(
                      'Akun',
                      style: TextStyle(
                          fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),

            SizedBox(height: 15,),

            RawMaterialButton(
              padding: EdgeInsets.symmetric(horizontal: 15),
              onPressed: () {

              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: salurwidgetbg
                ),
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Text(
                      '',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),

            SizedBox(height: 15,),

            RawMaterialButton(
              padding: EdgeInsets.symmetric(horizontal: 15),
              onPressed: () {

              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: salurwidgetbg
                ),
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Text(
                      'Pengaturan',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),

            SizedBox(height: 15,),

            RawMaterialButton(
              padding: EdgeInsets.symmetric(horizontal: 15),
              onPressed: () {

              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: salurwidgetbg
                ),
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Text(
                      'Keluar',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),

            SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }
}
