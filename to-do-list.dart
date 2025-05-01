void main() {
  //membuat daftar tugas

  List<Map<String, dynamic>> daftarTugas = [
    {
      'nama': 'Belajar Dart',
      'deskripsi': 'Pelajari dasar-dasar Dart',
      'selesai': false,
    },
    {
      'nama': 'Mengerjakan tugas',
      'deskripsi': 'Selesaikan tugas kuliah',
      'selesai': true,
    },
    {
      'nama': 'Bersih-bersih rumah',
      'deskripsi': 'Bersihkan kamar dan ruang tamu',
      'selesai': false,
    },
    {
      'nama': 'Beli bahan makanan',
      'deskripsi': 'Beli sayuran dan buah-buahan',
      'selesai': true,
    },
  ];

  // memfilter tugas yang sudah selesai
  List<Map<String, dynamic>> tugasSelesai =
      daftarTugas.where((tugas) => tugas['selesai'] == true).toList();
  print('Tugas yang sudah selesai:');
  tugasSelesai.forEach((tugas) => print(tugas['nama']));

  //mengubah nama tugas menjadi huruf kapital
  List<Map<String, dynamic>> tugasDalamHurufKapital =
      daftarTugas.map((tugas) {
        return {
          'nama': (tugas['nama'] as String).toUpperCase(),
          'deskripsi': tugas['deskripsi'],
          'selesai': tugas['selesai'],
        };
      }).toList();
  print('\nTugas dengan nama dalam huruf kapital:');
  tugasDalamHurufKapital.forEach((tugas) => print(tugas['nama']));

  //Menghitung Tugas yang Belum Selesai
  int jumlahTugasBelumSelesai =
      daftarTugas.where((tugas) => tugas['selesai'] == false).length;
  print('\nJumlah tugas yang belum selesai: $jumlahTugasBelumSelesai');
}
