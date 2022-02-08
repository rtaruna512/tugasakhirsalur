class RiwayatPendanaan {
  String avatarURL;
  String namaDebitor;
  String namaUsaha;
  String lokasi;
  String tanggalPendanaan;
  String tanggalJatuhTempo;
  String statusPendanaan;
  String keteranganpembayaran;
  String penghasilanPerbulan;
  String pekerjaan;
  String sektor;
  String akad;
  int persenbagihasil;
  int tenor;
  int pembayaranke;
  int nominalPendanaanAkhir;
  int nominalPokok;
  int nominalBagiHasil;


  RiwayatPendanaan({
    required this.avatarURL,
    required this.namaDebitor,
    required this.namaUsaha,
    required this.lokasi,
    required this.tanggalPendanaan,
    required this.statusPendanaan,
    required this.nominalPendanaanAkhir,
    required this.tenor,
    required this.pembayaranke,
    required this.persenbagihasil,
    required this.akad,
    required this.pekerjaan,
    required this.penghasilanPerbulan,
    required this.nominalPokok,
    required this.sektor,
    required this.keteranganpembayaran,
    required this.nominalBagiHasil,
    required this.tanggalJatuhTempo
  });
}

List<RiwayatPendanaan> pendanaanriwayat = [
  RiwayatPendanaan(
    avatarURL: 'assets/images/WhatsApp Image 2022-01-12 at 19.56.15.jpeg',
    namaDebitor: 'Muhammad Ichwan Nawval',
    namaUsaha: 'Kedai Kopi',
    lokasi: 'Payakumbuh, Sumatera Barat',
    tanggalPendanaan: '5/2/2022',
    tanggalJatuhTempo: '5/1/2023',
    statusPendanaan: 'Menunggu Pembayaran',
    keteranganpembayaran: 'Aktif',
    nominalPendanaanAkhir: 100000,
    tenor: 50,
    pembayaranke: 2,
    persenbagihasil: 10,
    akad: 'Perjanjian Pendanaan',
    pekerjaan: 'Barista',
    penghasilanPerbulan: 'Rp4000000',
    nominalPokok: 2000,
    nominalBagiHasil: 200,
    sektor: 'Perdagangan',
  ),
];