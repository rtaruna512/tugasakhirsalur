class Donasi {
  String imageURL;
  String judulDonasi;
  String lokasi;
  String keterangan;

  Donasi({
    required this.imageURL,
    required this.judulDonasi,
    required this.lokasi,
    required this.keterangan,
  });
}

List<Donasi> donasitujuan = [
  Donasi(
    imageURL: 'assets/images/longsor1.jpg',
    judulDonasi: 'Bencana Longsor',
    lokasi: 'Desa A',
    keterangan: 'Lorem ipsum'
  ),
  Donasi(
    imageURL: 'assets/images/banjir1.jpg',
    judulDonasi: 'Bencana Banjir di Desa',
    lokasi: 'Desa B',
    keterangan: 'dolor sit'
  ),
  Donasi(
    imageURL: 'assets/images/sakit1.jpg',
    judulDonasi: 'Perjuangan Melawan Penyakit',
    lokasi: 'Kota A',
    keterangan: 'amet, consectetur'
  )
];