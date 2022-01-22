import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhirsalur/transfer/transfermetodetf.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';
import 'package:tugasakhirsalur/variables/appvariables_lib.dart';
import 'package:google_fonts/google_fonts.dart';


class TransferTujuan extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<TransferTujuan>{
  String valBankTujuan = "Tujuan Bank";
  List bankTujuan = [
    "Tujuan Bank",
    "BCA",
    "Mandiri",
    "BNI",
    "BRI",
    "BSI"
  ];
  var maxLength = 20;
  var textLength = 0;
  final nominalControllertf = TextEditingController();
  final rekeningTujuantf = TextEditingController();
  final beritaTransfer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: salur1,
          title: Text(
            "Kirim Uang",
            style: GoogleFonts.poppins(color: Colors.white),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: salur1,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 15,),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Tujuan Kirim Uang',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                        ),

                        SizedBox(height: 20,),

                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: InputDecorator(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                ),
                                child: DropdownButton<String>(
                                  underline: SizedBox(),
                                  isExpanded: true,
                                  hint: Text('Tujuan Bank'),
                                  value: valBankTujuan,
                                  icon: const Icon(Icons.arrow_drop_down),
                                  iconSize: 24,
                                  elevation: 16,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      valBankTujuan = newValue!;
                                    });
                                  },
                                  items: bankTujuan.map((value) {
                                    return DropdownMenuItem<String>(
                                      child: Text(value),
                                      value: value,
                                    );
                                  }).toList(),
                                )
                            )
                        ),

                        SizedBox(height: 20,),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: TextField(
                            controller: rekeningTujuantf,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Masukkan nomor rekening',
                              isDense: true,
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),

                        SizedBox(height: 20,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: TextField(
                                controller: nominalControllertf,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Nominal Transfer',
                                  isDense: true,
                                  prefixText: "Rp",
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'Minimal Transfer Rp10.000',
                                style: GoogleFonts.poppins(
                                  color: Colors.red,
                                  fontSize: 13
                                ),
                              ),
                            )
                          ],
                        ),

                        SizedBox(height: 10,),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: TextField(
                            controller: beritaTransfer,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Berita Transfer',
                              isDense: true,
                              suffixText: '${textLength.toString()}/${maxLength.toString()}',
                              counterText: '',
                            ),
                            maxLength: maxLength,
                            onChanged: (value){
                              setState(() {
                                textLength = value.length;
                              });
                            },
                          ),
                        ),

                        SizedBox(height:20,),
                      ]
                  ),
                ),

                
                Spacer(),
                
                Container(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity,50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
                    child: Text(
                      'LANJUT',
                      style: GoogleFonts.poppins(
                        color: Colors.black
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => transferMetodeTF()));
                      nominalTransfer = int.parse(nominalControllertf.text);
                      rekeningTransferStr = rekeningTujuantf.text;
                      beritaTransferText = beritaTransfer.text;
                    },
                  ),
                ),
              ],
            )
        )
    );
  }
}

class PembatasRibuan extends TextInputFormatter{
  static const separator = '.';
  
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if(newValue.text.length == 0){
      return newValue.copyWith(text: '');
    }
    
    String oldValueText = oldValue.text.replaceAll(separator, '');
    String newValueText = newValue.text.replaceAll(separator, '');
    
    if (oldValue.text.endsWith(separator) && oldValue.text.length == newValue.text.length + 1) {
      newValueText = newValueText.substring(0, newValueText.length - 1);
    }
    
    if (oldValueText != newValueText) {
      int selectionIndex = newValue.text.length - newValue.selection.extentOffset;
      final chars = newValueText.split('');
      
      String newString = '';
      for (int i = chars.length - 1; i >= 0; i--){
        if((chars.length - 1 - i) % 3 == 0 && i != chars.length -1)
          newString = separator + newString;
        newString = chars[i] + newString;
      }
      
      return TextEditingValue(
        text: newString.toString(),
        selection: TextSelection.collapsed(offset: newString.length - selectionIndex,),
      );
    }

    return newValue;
  }
}