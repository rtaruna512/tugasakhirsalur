class Pendanaan {
  String avatarURL;
  String namaDebitor;
  String namaUsaha;
  String lokasi;
  String bagihasilTotal;
  String pendanaanKe;
  String penghasilanPerbulan;
  String pekerjaan;
  String sektor;
  String akad;
  int tenor;
  int plafond;
  int sisaPlafond;
  int persenbagihasil;
  int persentasePendanaan;
  int sisaHariPendanaan;



  Pendanaan({
    required this.avatarURL,
    required this.namaDebitor,
    required this.namaUsaha,
    required this.lokasi,
    required this.plafond,
    required this.sisaPlafond,
    required this.tenor,
    required this.persenbagihasil,
    required this.bagihasilTotal,
    required this.pendanaanKe,
    required this.penghasilanPerbulan,
    required this.pekerjaan,
    required this.sektor,
    required this.akad,
    required this.persentasePendanaan,
    required this.sisaHariPendanaan
  });
}

List<Pendanaan> pendanaantujuan = [
  Pendanaan(
    avatarURL: 'assets/images/WhatsApp Image 2022-01-12 at 19.56.15.jpeg',
    namaDebitor: 'Muhammad Ichwan Nawval',
    namaUsaha: 'Kedai Kopi',
    lokasi: 'Payakumbuh, Sumatera Barat',
    plafond: 5000000,
    sisaPlafond: 4000000,
    tenor: 50,
    persenbagihasil: 10,
    bagihasilTotal: 'Rp300.000',
    pendanaanKe: '3',
    penghasilanPerbulan: 'Rp4.000.000',
    pekerjaan: 'Barista',
    sektor: 'Perdagangan',
    akad: 'Perjanjian pendanaan',
    persentasePendanaan: 20,
    sisaHariPendanaan: 2,
  ),
  Pendanaan(
      avatarURL: 'assets/images/8065449799611009-Male_8.jpg',
      namaDebitor: 'Saptaji',
      namaUsaha: 'Kedai Kopi',
      lokasi: 'Payakumbuh, Sumatera Barat',
      plafond: 5000000,
      sisaPlafond: 1000000,
      tenor: 50,
      persenbagihasil: 10,
      bagihasilTotal: 'Rp300.000',
      pendanaanKe: '3',
      penghasilanPerbulan: 'Rp4.000.000',
      pekerjaan: 'Barista',
      sektor: 'Perdagangan',
      akad: 'Perjanjian pendanaan',
      persentasePendanaan: 80,
      sisaHariPendanaan: 7
  ),
  Pendanaan(
      avatarURL: 'assets/images/3823423148494587-Female_10.jpg',
      namaDebitor: 'Susan',
      namaUsaha: 'Kedai Kopi',
      lokasi: 'Payakumbuh, Sumatera Barat',
      plafond: 5000000,
      sisaPlafond: 3000000,
      tenor: 50,
      persenbagihasil: 10,
      bagihasilTotal: 'Rp300.000',
      pendanaanKe: '3',
      penghasilanPerbulan: 'Rp4.000.000',
      pekerjaan: 'Barista',
      sektor: 'Perdagangan',
      akad: 'Perjanjian pendanaan',
      persentasePendanaan: 40,
      sisaHariPendanaan: 4
  ),
  Pendanaan(
      avatarURL: 'assets/images/7301399346372452-Female_8.jpg',
      namaDebitor: 'Suci Sumiarti',
      namaUsaha: 'Kedai Kopi',
      lokasi: 'Payakumbuh, Sumatera Barat',
      plafond: 5000000,
      sisaPlafond: 500000,
      tenor: 50,
      persenbagihasil: 10,
      bagihasilTotal: 'Rp300.000',
      pendanaanKe: '3',
      penghasilanPerbulan: 'Rp4.000.000',
      pekerjaan: 'Barista',
      sektor: 'Perdagangan',
      akad: 'Perjanjian pendanaan',
      persentasePendanaan: 90,
      sisaHariPendanaan: 5
  ),
  Pendanaan(
      avatarURL: 'assets/images/08132247416911542-Female_14.jpg',
      namaDebitor: 'Erniati Susanti',
      namaUsaha: 'Kedai Kopi',
      lokasi: 'Payakumbuh, Sumatera Barat',
      plafond: 5000000,
      sisaPlafond: 2500000,
      tenor: 50,
      persenbagihasil: 10,
      bagihasilTotal: 'Rp300.000',
      pendanaanKe: '3',
      penghasilanPerbulan: 'Rp4.000.000',
      pekerjaan: 'Barista',
      sektor: 'Perdagangan',
      akad: 'Perjanjian pendanaan',
      persentasePendanaan: 50,
      sisaHariPendanaan: 10
  ),
];