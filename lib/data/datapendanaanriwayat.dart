class RiwayatPendanaan {
  String avatarURL;
  String namaDebitor;
  String namaUsaha;
  String lokasi;
  String tanggalPendanaan;
  String jamPendanaan;
  String statusPendanaan;
  int nominalPendanaanAkhir;


  RiwayatPendanaan({
    required this.avatarURL,
    required this.namaDebitor,
    required this.namaUsaha,
    required this.lokasi,
    required this.tanggalPendanaan,
    required this.jamPendanaan,
    required this.statusPendanaan,
    required this.nominalPendanaanAkhir
  });
}

List<RiwayatPendanaan> pendanaanriwayat = [
  RiwayatPendanaan(
    avatarURL: 'assets/images/WhatsApp Image 2022-01-12 at 19.56.15.jpeg',
    namaDebitor: 'Muhammad Ichwan Nawval',
    namaUsaha: 'Kedai Kopi',
    lokasi: 'Payakumbuh, Sumatera Barat',
    tanggalPendanaan: '3/2/2021',
    jamPendanaan: '11:30',
    statusPendanaan: 'Menunggu pembayaran',
    nominalPendanaanAkhir: 100000
  ),
  RiwayatPendanaan(
      avatarURL: 'assets/images/WhatsApp Image 2022-01-12 at 19.56.15.jpeg',
      namaDebitor: 'Muhammad Ichwan Nawval',
      namaUsaha: 'Kedai Kopi',
      lokasi: 'Payakumbuh, Sumatera Barat',
      tanggalPendanaan: '2/2/2021',
      jamPendanaan: '13:00',
      statusPendanaan: 'Sukses',
      nominalPendanaanAkhir: 200000
  ),
  RiwayatPendanaan(
      avatarURL: 'assets/images/WhatsApp Image 2022-01-12 at 19.56.15.jpeg',
      namaDebitor: 'Muhammad Ichwan Nawval',
      namaUsaha: 'Kedai Kopi',
      lokasi: 'Payakumbuh, Sumatera Barat',
      tanggalPendanaan: '2/2/2021',
      jamPendanaan: '09:00',
      statusPendanaan: 'Sukses',
      nominalPendanaanAkhir: 200000
  ),
  RiwayatPendanaan(
      avatarURL: 'assets/images/8065449799611009-Male_8.jpg',
      namaDebitor: 'Saptaji',
      namaUsaha: 'Kedai Kopi',
      lokasi: 'Payakumbuh, Sumatera Barat',
      tanggalPendanaan: '1/2/2021',
      jamPendanaan: '15:00',
      statusPendanaan: 'Sukses',
      nominalPendanaanAkhir: 200000
  ),
  RiwayatPendanaan(
      avatarURL: 'assets/images/7301399346372452-Female_8.jpg',
      namaDebitor: 'Suci Sumiarti',
      namaUsaha: 'Kedai Kopi',
      lokasi: 'Payakumbuh, Sumatera Barat',
      tanggalPendanaan: '1/2/2021',
      jamPendanaan: '10:00',
      statusPendanaan: 'Sukses',
      nominalPendanaanAkhir: 100000
  ),

];