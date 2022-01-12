import 'package:flutter/material.dart';

class pendanaanExpansionPanelAktif extends StatefulWidget {
  const pendanaanExpansionPanelAktif({Key? key}) : super(key: key);

  @override
  _pendanaanExpansionPanelAktifState createState() => _pendanaanExpansionPanelAktifState();
}

class _pendanaanExpansionPanelAktifState extends State<pendanaanExpansionPanelAktif> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 10),
            child: ExpansionPanelList(
              animationDuration: Duration(milliseconds: 500),
              expandedHeaderPadding: EdgeInsets.only(bottom: 0),
              elevation: 1,
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Pendanaan Aktif',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                        ),
                      ),
                    );
                  },
                  body: Container(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5,),

                                Text(
                                  'Bagi hasil',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),

                                SizedBox(height: 10,),

                                Text(
                                  'Pendanaan ke',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),

                                SizedBox(height: 10,),

                                Text(
                                  'Angsuran Mingguan',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),

                                SizedBox(height: 10,),

                                Text(
                                  'Penghasilan perbulan',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),

                                SizedBox(height: 10,),

                                Text(
                                  'Pekerjaan',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),

                                SizedBox(height: 10,),

                                Text(
                                  'Sektor',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),

                                SizedBox(height: 5,),
                              ],
                            ),

                            Spacer(),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 5,),

                                Text(
                                  'a',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),

                                SizedBox(height: 10,),

                                Text(
                                  'b',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),

                                SizedBox(height: 10,),

                                Text(
                                  'c',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),

                                SizedBox(height: 10,),

                                Text(
                                  'd',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),

                                SizedBox(height: 10,),

                                Text(
                                  'e',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),

                                SizedBox(height: 10,),

                                Text(
                                  'f',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),

                                SizedBox(height: 5,),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ),
                  isExpanded: false,
                ),
              ],
              expansionCallback: (int item, bool status) {
                setState(() {
                  expanded = !expanded;
                });
              },
            ),
          );
        },
      ),
    );
  }

}
