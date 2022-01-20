class Donasi {
  String imageURL;
  String imagePenggalang;
  String judulDonasi;
  String lokasi;
  String keterangan;
  String namaPenggalang;
  String statusPenggalang;
  int sisaHariDonasi;
  int targetPenggalangan;
  int penggalanganTerkumpul;
  int totalDonor;

  Donasi({
    required this.imageURL,
    required this.imagePenggalang,
    required this.judulDonasi,
    required this.lokasi,
    required this.keterangan,
    required this.namaPenggalang,
    required this.statusPenggalang,
    required this.penggalanganTerkumpul,
    required this.targetPenggalangan,
    required this.sisaHariDonasi,
    required this.totalDonor
  });
}

List<Donasi> donasitujuan = [
  Donasi(
    imageURL: 'assets/images/longsor1.jpg',
    imagePenggalang: 'assets/images/5894220152385821-Male_6.jpg',
    judulDonasi: 'Bencana Longsor',
    lokasi: 'Desa A',
    keterangan: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    namaPenggalang: 'Supardi',
    statusPenggalang: 'terverifikasi',
    penggalanganTerkumpul: 200000,
    targetPenggalangan: 1000000,
    sisaHariDonasi: 20,
    totalDonor: 20,
  ),
  Donasi(
    imageURL: 'assets/images/banjir1.jpg',
    imagePenggalang: 'assets/images/7301399346372452-Female_8.jpg',
    judulDonasi: 'Bencana Banjir di Desa',
    lokasi: 'Desa B',
    keterangan: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.',
    namaPenggalang: 'Susi',
    statusPenggalang: 'terverifikasi',
    penggalanganTerkumpul: 500000,
    targetPenggalangan: 1750000,
    sisaHariDonasi: 7,
    totalDonor: 35,
  ),
  Donasi(
    imageURL: 'assets/images/sakit1.jpg',
    imagePenggalang: 'assets/images/WhatsApp Image 2022-01-12 at 19.56.15.jpeg',
    judulDonasi: 'Perjuangan Melawan Penyakit',
    lokasi: 'Kota A',
    keterangan: 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur',
    namaPenggalang: 'Budi',
    statusPenggalang: 'terverifikasi',
    penggalanganTerkumpul: 950000,
    targetPenggalangan: 1200000,
    sisaHariDonasi: 3,
    totalDonor: 48,
  )
];