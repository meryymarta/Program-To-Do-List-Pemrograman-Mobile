import 'dart:io';

void main(){
  print("--- Program To-Do List ---"); 
  List<String> daftarTugas = [];

  bool (isRunning) {
    print("\nMenu:");
    print("1. Tambah Tugas Baru");
    print("2. Lihat Daftar Tugas");
    print("3. Keluar");
    stdout.write("Ketik pilihanmu (1/2/3):");

    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        stdout.write("Tugas apa yang mau ditambah? ");
        String? tugasBaru = stdin.readLineSync();
        
        if (tugasBaru != null && tugasBaru.trim().isNotEmpty) {
          daftarTugas.add(tugasBaru);
          print("Yeay! Tugas '$tugasBaru' berhasil ditambah.");
        } else {
          print("nama tugasnya jangan dikosongin ya!");
        }
        break;
        
      case '2':
      print("Fitur lihat daftar tugas sedang dibuat...");
      break;
      case 3:
      print("Terimaksih sudah menggunakan program To-Do List! Jangan lupa diselesaikan tugasnya ^^");
      isRunning = false;
      break;
      default:
      print("Pilihan kamu engga valid nih. Silakan coba lagi.");


    }

  }

  
}
