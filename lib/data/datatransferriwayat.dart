class RiwayatTransfer {
  String bankAsal;
  String bankTujuan;
  String rekeneingTujuan;
  String namaTujuan;
  String tanggalTransfer;
  String jamTransfer;
  String statusTransfer;
  String beritaTransfer;
  int nominalTransfer;

  RiwayatTransfer({
    required this.bankAsal,
    required this.bankTujuan,
    required this.rekeneingTujuan,
    required this.namaTujuan,
    required this.tanggalTransfer,
    required this.jamTransfer,
    required this.statusTransfer,
    required this.beritaTransfer,
    required this.nominalTransfer,
  });
}

List<RiwayatTransfer> transferriwayat = [
  RiwayatTransfer(
    bankAsal: 'BNI',
    bankTujuan: 'BRI',
    rekeneingTujuan: '12345671',
    namaTujuan: 'Sdr Muhammad Fadhil',
    tanggalTransfer: '1 November 2021',
    jamTransfer: '11:30',
    nominalTransfer: 80000,
    statusTransfer: 'Pengecekan',
    beritaTransfer: 'Transfer BNI ke BRI',

  ),
  RiwayatTransfer(
    bankAsal: 'Mandiri',
    bankTujuan: 'BNI',
    rekeneingTujuan: '12345672',
    namaTujuan: 'Sdr Ryan Taruna',
    tanggalTransfer: '27 Oktober 2021',
    jamTransfer: '15:00',
    nominalTransfer: 150000,
    statusTransfer: 'Sukses',
    beritaTransfer: 'Transfer Mandiri ke BNI'
  ),
  RiwayatTransfer(
    bankAsal: 'Mandiri',
    bankTujuan: 'BNI',
    rekeneingTujuan: '12345673',
    namaTujuan: 'Sdr Muhammad Fadhil',
    tanggalTransfer: '27 Oktober 2021',
    jamTransfer: '10:00',
    nominalTransfer: 80000,
    statusTransfer: 'Sukses',
    beritaTransfer: 'Transfer Mandiri ke BNI'
  ),
  RiwayatTransfer(
    bankAsal: 'BCA',
    bankTujuan: 'Mandiri',
    rekeneingTujuan: '12345674',
    namaTujuan: 'Sdr Muhammad Fadhil',
    tanggalTransfer: '15 Oktober 2021',
    jamTransfer: '16:30',
    nominalTransfer: 80000,
    statusTransfer: 'Sukses',
    beritaTransfer: 'Transfer BCA ke Mandiri'
  ),
  RiwayatTransfer(
    bankAsal: 'BSI',
    bankTujuan: 'BCA',
    rekeneingTujuan: '12345675',
    namaTujuan: 'Sdr Muhammad Fadhil',
    tanggalTransfer: '10 Oktober 2021',
    jamTransfer: '13:25',
    nominalTransfer: 80000,
    statusTransfer: 'Sukses',
    beritaTransfer: 'Transfer BSI ke BCA'
  ),
];