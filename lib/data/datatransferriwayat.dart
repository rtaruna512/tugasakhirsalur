class RiwayatTransfer {
  String bankAsal;
  String bankTujuan;
  String namaTujuan;
  String tanggalTransfer;
  String nominalTransfer;
  String statusTransfer;

  RiwayatTransfer({
    required this.bankAsal,
    required this.bankTujuan,
    required this.namaTujuan,
    required this.tanggalTransfer,
    required this.nominalTransfer,
    required this.statusTransfer
  });
}

List<RiwayatTransfer> transferriwayat = [
  RiwayatTransfer(
    bankAsal: 'BNI',
    bankTujuan: 'BRI',
    namaTujuan: 'Sdr Muhammad Fadhil',
    tanggalTransfer: '1 November 2021',
    nominalTransfer: 'Rp80.000',
    statusTransfer: 'Pengecekan',
  ),
  RiwayatTransfer(
    bankAsal: 'Mandiri',
    bankTujuan: 'BNI',
    namaTujuan: 'Sdr Ryan Taruna',
    tanggalTransfer: '27 Oktober 2021',
    nominalTransfer: 'Rp150.000',
    statusTransfer: 'Sukses',
  ),
  RiwayatTransfer(
    bankAsal: 'Mandiri',
    bankTujuan: 'BNI',
    namaTujuan: 'Sdr Muhammad Fadhil',
    tanggalTransfer: '27 Oktober 2021',
    nominalTransfer: 'Rp80.000',
    statusTransfer: 'Sukses',
  ),
  RiwayatTransfer(
    bankAsal: 'BCA',
    bankTujuan: 'Mandiri',
    namaTujuan: 'Sdr Muhammad Fadhil',
    tanggalTransfer: '15 Oktober 2021',
    nominalTransfer: 'Rp80.000',
    statusTransfer: 'Sukses',
  ),
  RiwayatTransfer(
    bankAsal: 'BSI',
    bankTujuan: 'BCA',
    namaTujuan: 'Sdr Muhammad Fadhil',
    tanggalTransfer: '10 Oktober 2021',
    nominalTransfer: 'Rp80.000',
    statusTransfer: 'Sukses',
  ),
];