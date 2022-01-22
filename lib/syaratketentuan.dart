import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasakhirsalur/variables/appcolors_lib.dart';

class SyaratKetentuan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: salur1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: RichText(text: TextSpan(
          text: 'Syarat & Ketentuan Umum Salur',
          style: GoogleFonts.poppins(
            fontSize: 20
        ),
        ),
        ),
        toolbarHeight: 75,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Container(
                child: Text(
                  'Halaman ini berisi tentang ketentuan dan prasyarat umum dari penggunaan aplikasi dan Layanan Kami oleh Anda (“Syarat -Syarat dan Ketentuan Umum”). Syarat dan Ketentuan Umum ini wajib Anda baca secara hati-hati sebelum menggunakan aplikasi dan Layanan Kami. Apabila Anda tidak menyetujui Syarat dan Ketentuan Umum ini, harap tidak menggunakan aplikasi dan Layanan kami',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.justify,
                )
            ),

            SizedBox(height: 15,),

            Container(
              child: Text(
                'Dengan melakukan akses pada Platform, Anda menyatakan telah membaca, mengerti dan setuju untuk mengikatkan diri pada Syarat dan Ketentuan ini. Jika Anda tidak menyetujui Syarat dan Ketentuan ini, maka Anda tidak diperkenankan untuk mengakses Platform atau menggunakan Fitur. Syarat dan Ketentuan ini dapat dianggap sebagai perjanjian yang menjadi acuan untuk mengatur syarat dan ketentuan lainnya.',
                style: GoogleFonts.poppins(
                  fontSize: 14
                ),
                textAlign: TextAlign.justify,
              ),
            ),

            SizedBox(height: 15,),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'I. Tentang Salur',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Salur merupakan suatu aplikasi yang berfungsi sebagai media perantara layanan pendanaan bersama berbasis teknologi, transaksi donasi antara penggalang dengan donatur dan transfer antar rekening bank.',
                    style: GoogleFonts.poppins(
                        fontSize: 14
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    'Salur dalam menjalankan tugasnya sebagai penyelenggara transaksi hanya bertanggung jawab untuk memastikan terlaksananya transaksi sesuai dengan Perintah dan ketentuan Hukum Yang Berlaku.',
                    style: GoogleFonts.poppins(
                        fontSize: 14
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'II. Definisi',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 10,),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '"Akun" ',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                          )
                        ),
                        TextSpan(
                          text: 'adalah identitas unik yang digunakan untuk mengklasifikasikan Anda dan mencatat kegiatan Anda dalam aplikasi dan Layanan kami yang dilakukan dengan cara pendaftaran pada aplikasi Kami.',

                        )
                      ]
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '"Anda" ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          TextSpan(
                            text: 'berarti perorangan, badan usaha, dan badan hukum yang bertindak sebagai pengguna aplikasi.',
                          )
                        ]
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '"Informasi Pribadi" ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          TextSpan(
                            text: 'berarti informasi atau data dari Pengguna yang dapat digunakan untuk mengidentifikasi pengguna.',
                          )
                        ]
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '"Kami" ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          TextSpan(
                            text: 'berarti ungkapan yang merujuk pada Salur.',
                          )
                        ]
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '"Pendana" ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          TextSpan(
                            text: 'adalah perorangan atau badan hukum yang ingin menjadi pendana kepada Penerima.',
                          )
                        ]
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '"Penerima Dana" ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          TextSpan(
                            text: 'adalah perorangan atau badan hukum yang menerima dana.',
                          )
                        ]
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '"Perjanjian Pendanaan" ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          TextSpan(
                            text: 'merupakan Perjanjian Pendanaan antara Pemberi dan Penerima Dana dengan kesepakatan untuk memberi pinjaman dan Salur berperan sebagai perantara.',
                          )
                        ]
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '"Perjanjian" ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          TextSpan(
                            text: 'merupakan keseluruhan yang terdiri dari Syarat dan Ketentuan Umum dan Perjanjian Pendanaan.',
                          )
                        ]
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '"Penggalangan Dana" ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          TextSpan(
                            text: 'adalah proses pengumpulan Dana dari perorangan, kelompok atau lainnya.',
                          )
                        ]
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '"Dana" ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          TextSpan(
                            text: 'adalah sumbangan berbentuk uang yang dinyatakan dalam mata uang Rupiah.',
                          )
                        ]
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '"Rekening Bank" ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          TextSpan(
                            text: 'merupakan rekening atas nama Pengguna pada institusi perbankan.',
                          )
                        ]
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '"Rekening Salur" ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          TextSpan(
                            text: 'berarti rekening beratas namakan Salur pada institusi perbankan dengan nomor rekening tercantum pada tampilan “Kirim Uang” pada Platform.',
                          )
                        ]
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'III. Ketentuan Salur',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Untuk dapat mengaskses aplikasi Anda harus membuat akun dengan mendaftarkan diri pada sistem dengan mengklik “Daftar di sini”. untuk menjalankan semua produk yang ada di aplikasi anda wajib mengisi data pribadi secara lengkap dan jujur di halaman Akun. Kami tidak bertanggung jawab atas akibat yang terjadi apabila terdapat informasi yang tidak benar, tidak akurat, mengenai data pribadi yang Anda berikan pada Akun yang menyebabkan kerugian pada Anda.',
                    style: GoogleFonts.poppins(
                        fontSize: 14
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    'Apabila Anda tidak bersedia untuk memberikan Informasi data pribadi, Kami berhak untuk membatasi penggunaan Anda terhadap aplikasi dan Fitur di dalamnya. Dengan ini menyatakan bahwa Anda telah menyetujui dan mampu untuk mengikatkan diri dalam sebuah perjanjian yang sah menurut hukum.',
                    style: GoogleFonts.poppins(
                        fontSize: 14
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    'Jika Anda telah terdaftar pada aplikasi, Anda tidak dapat melakukan pendaftaran Akun berikutnya dengan menggunakan data pribadi yang sama kecuali jika Kami memberi izin bagi Anda untuk melakukan hal tersebut.',
                    style: GoogleFonts.poppins(
                        fontSize: 14
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    'Jika terdapat perubahan atas setiap informasi dan data pada Akun Anda, maka Anda wajib segera memperbarui informasi mengenai diri Anda. Anda menjamin bahwa seluruh informasi dan data yang tercatat dalam sistem Kami, merupakan informasi dan data yang paling terkini.',
                    style: GoogleFonts.poppins(
                        fontSize: 14
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    'Anda dilarang untuk melakukan tindakan apapun yang dapat merusak atau mengganggu sistem Kami. Anda bertanggung jawab atas keamanan dan kerahasiaan Akun termasuk di dalamnya email dan password Anda. Maka dari itu, Anda dengan ini menyatakan bahwa Kami tidak bertanggung jawab atas kerugian ataupun kendala yang timbul atas penyalahgunaan Akun Anda yang diakibatkan oleh kelalaian atau kesalahan Anda.',
                    style: GoogleFonts.poppins(
                        fontSize: 14
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    'Apabila terdapat indikasi penyalahgunaan atas Akun Anda, Kami hanya dapat membantu Anda untuk memeriksa, menangguhkan, atau menghentikan penyalahgunaan akses terhadap Akun setelah Anda memberitahukan kepada Kami mengenai hal tersebut melalui email atau sarana komunikasi lainnya yang kami sediakan dari waktu ke waktu. Kami akan menganggap setiap Perintah atau Transaksi yang dilakukan melalui Akun Anda sebagai permintaan yang sah dari Anda.',
                    style: GoogleFonts.poppins(
                        fontSize: 14
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'IV. Persyaratan Umur',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Untuk dapat menggunakan Layanan aplikasi Kami, Anda harus berusia lebih dari 17 tahun untuk layanan “Kirim Uang”dan donasi, lebih dari 21 tahun layanan pendanaan.',
                    style: GoogleFonts.poppins(
                        fontSize: 14
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'V. Biaya Operasional dan Biaya Tambahan',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 10,),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'A. Pendanaan: ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          TextSpan(
                            text: 'Pajak dan biaya-biaya lainnya yang timbul sehubungan dengan Layanan pendanaan akan menjadi beban dan tanggung jawab masing-masing pihak sesuai peraturan yang berlaku.',

                          )
                        ]
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'B. Donasi:  ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          TextSpan(
                            text: 'Dana yang diperoleh dari Campaign melalui layanan donasi akan dikenakan biaya administrasi sebesar 5% (lima persen). “Salur” tidak mengenakan biaya administrasi (0%) kategori bencana alam atau keadaan yang ditetapkan sebagai bencana oleh pemerintah.',
                          )
                        ]
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'C. Kirim Uang: ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          TextSpan(
                            text: 'Setiap transaksi kirim uang yang dilakukan akan dikenakan biaya administrasi dengan metode kode unik sebesar 3 digit.',
                          )
                        ]
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'VI. Keseluruhan Perjanjian',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Syarat dan Ketentuan Umum, Kebijakan Privasi dan Perjanjian Pendanaan merupakan keseluruhan perjanjian antara Anda dan Kami.',
                    style: GoogleFonts.poppins(
                        fontSize: 14
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'VII. Hubungi Kami',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Apabila anda mempunyai keluhan terkait penggunaan Layanan Kami atau Data Pribadi anda telah dilanggar oleh Kami, atau Anda ingin melakukan komunikasi dengan Kami terkait dengan Data Pribadi, anda dapat menghubungi Kami di: ',
                    style: GoogleFonts.poppins(
                        fontSize: 14
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    'Email: salurapp@gmail.com',
                    style: GoogleFonts.poppins(
                        fontSize: 14
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),

          ],
        )
    )
    );
  }
}