class RiwayatPenarikan {
  String jenisPenarikan;
  String bankAsal;
  String bankTujuan;
  String namaPengguna;
  String tanggalPenarikan;
  String statusPenarikan;
  int nominalPenarikan;

  RiwayatPenarikan({
    required this.jenisPenarikan,
    required this.bankAsal,
    required this.bankTujuan,
    required this.namaPengguna,
    required this.tanggalPenarikan,
    required this.statusPenarikan,
    required this.nominalPenarikan,
  });
}

List<RiwayatPenarikan> penarikanriwayat = [
  RiwayatPenarikan(
    jenisPenarikan: 'Aset Pendanaan',
    bankAsal: 'BNI',
    bankTujuan: 'BNI',
    namaPengguna: 'Muhammad Fadhil',
    tanggalPenarikan: '5 Febuari 2022',
    statusPenarikan: 'Sukses',
    nominalPenarikan: 20000,
  ),
  RiwayatPenarikan(
    jenisPenarikan: 'Kode Unik',
    bankAsal: 'BNI',
    bankTujuan: 'BNI',
    namaPengguna: 'Muhammad Fadhil',
    tanggalPenarikan: '5 Febuari 2022',
    statusPenarikan: 'Sukses',
    nominalPenarikan: 20000,
  ),
];