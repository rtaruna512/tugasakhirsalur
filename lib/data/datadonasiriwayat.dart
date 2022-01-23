class RiwayatDonasi {
  String imgPenggalang;
  String namaPenggalang;
  String namaDonasi;
  String lokasi;
  String tanggalDonasi;
  String statusDonasi;
  String beritaDonasi;
  String bankpilihanDonasi;
  int nominalDonasi;

  RiwayatDonasi({
    required this.imgPenggalang,
    required this.namaPenggalang,
    required this.namaDonasi,
    required this.lokasi,
    required this.tanggalDonasi,
    required this.statusDonasi,
    required this.beritaDonasi,
    required this.bankpilihanDonasi,
    required this.nominalDonasi
  });
}

List<RiwayatDonasi> donasiriwayat = [
  RiwayatDonasi(
    imgPenggalang: 'assets/images/5894220152385821-Male_6.jpg',
    namaPenggalang: 'Supardi',
    namaDonasi: 'Bencana Banjir',
    lokasi: 'Desa A',
    tanggalDonasi: '5/2/2021',
    statusDonasi: 'Sukses',
    beritaDonasi: 'Donasi untuk membantu korban bencana banjir di desa A',
    bankpilihanDonasi: 'BCA',
    nominalDonasi: 100000
  ),
  RiwayatDonasi(
      imgPenggalang: 'assets/images/5894220152385821-Male_6.jpg',
      namaPenggalang: 'Supardi',
      namaDonasi: 'Bencana Banjir',
      lokasi: 'Desa A',
      tanggalDonasi: '5/2/2021',
      statusDonasi: 'Menunggu Pembayaran',
      beritaDonasi: 'Donasi untuk membantu korban bencana banjir di desa A',
      bankpilihanDonasi: 'BNI',
      nominalDonasi: 100000
  ),
  RiwayatDonasi(
      imgPenggalang: 'assets/images/5894220152385821-Male_6.jpg',
      namaPenggalang: 'Supardi',
      namaDonasi: 'Bencana Banjir',
      lokasi: 'Desa A',
      tanggalDonasi: '5/2/2021',
      statusDonasi: 'Menunggu Pembayaran',
      beritaDonasi: 'Donasi untuk membantu korban bencana banjir di desa A',
      bankpilihanDonasi: 'BCA',
      nominalDonasi: 100000
  ),
  RiwayatDonasi(
      imgPenggalang: 'assets/images/5894220152385821-Male_6.jpg',
      namaPenggalang: 'Supardi',
      namaDonasi: 'Bencana Banjir',
      lokasi: 'Desa A',
      tanggalDonasi: '5/2/2021',
      statusDonasi: 'Menunggu Pembayaran',
      beritaDonasi: 'Donasi untuk membantu korban bencana banjir di desa A',
      bankpilihanDonasi: 'BRI',
      nominalDonasi: 100000
  ),
  RiwayatDonasi(
      imgPenggalang: 'assets/images/5894220152385821-Male_6.jpg',
      namaPenggalang: 'Supardi',
      namaDonasi: 'Bencana Banjir',
      lokasi: 'Desa A',
      tanggalDonasi: '5/2/2021',
      statusDonasi: 'Gagal',
      beritaDonasi: 'Donasi untuk membantu korban bencana banjir di desa A',
      bankpilihanDonasi: 'Mandiri',
      nominalDonasi: 100000
  ),

];