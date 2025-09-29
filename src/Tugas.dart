import 'dart:io';

// Class Mahasiswa
class Mahasiswa {
  String npm;
  String nama;
  String jurusan;
  int angkatan;

  Mahasiswa(this.npm, this.nama, this.jurusan, this.angkatan);

  void tampilkanDetail() {
    print("=== Detail Mahasiswa ===");
    print("NPM      : $npm");
    print("Nama     : $nama");
    print("Jurusan  : $jurusan");
    print("Angkatan : $angkatan");
  }
}

void main() {
  List<Mahasiswa> daftarMahasiswa = [];

  print("=== Entry Data Mahasiswa ===");
  for (int i = 1; i <= 10; i++) {
    print("\nMahasiswa ke-$i");
    stdout.write("Masukkan NPM: ");
    String nim = stdin.readLineSync()!;
    stdout.write("Masukkan Nama: ");
    String nama = stdin.readLineSync()!;
    stdout.write("Masukkan Jurusan: ");
    String jurusan = stdin.readLineSync()!;
    stdout.write("Masukkan Angkatan: ");
    int angkatan = int.parse(stdin.readLineSync()!);

    daftarMahasiswa.add(Mahasiswa(nim, nama, jurusan, angkatan));
  }

  // Menu pencarian
  print("\n=== Cari Data Mahasiswa ===");
  stdout.write("Masukkan NIM atau Nama yang ingin dicari: ");
  String keyword = stdin.readLineSync()!;

  bool ditemukan = false;
  for (var mhs in daftarMahasiswa) {
    if (mhs.npm.toLowerCase() == keyword.toLowerCase() ||
        mhs.nama.toLowerCase() == keyword.toLowerCase()) {
      mhs.tampilkanDetail();
      ditemukan = true;
      break;
    }
  }

  if (!ditemukan) {
    print("Data mahasiswa dengan kata kunci '$keyword' tidak ditemukan.");
  }
}
