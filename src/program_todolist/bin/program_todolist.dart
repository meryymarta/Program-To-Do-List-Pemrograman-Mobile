import 'dart:io';

void main() {
  print("--- Program To-Do List ---"); 
  
  // List data tugas
  List<String> daftarTugas = [];

  bool isRunning = true;
  
  // 1. PERULANGAN: while loop agar menu tampil terus sampai user memilih keluar
  while (isRunning) {
    print("\nMenu:");
    print("1. Tambah Tugas Baru");
    print("2. Lihat Daftar Tugas");
    print("3. Keluar");
    stdout.write("Ketik pilihanmu (1/2/3): ");

    String? pilihan = stdin.readLineSync();

    // 2. PERCABANGAN: switch-case untuk mengarahkan pilihan menu
    switch (pilihan) {
      case '1':
        stdout.write("Tugas apa yang mau ditambah? ");
        String? tugasBaru = stdin.readLineSync();
        
        // 3. PERCABANGAN: if-else untuk cek apakah input tugas kosong
        if (tugasBaru != null && tugasBaru.trim().isNotEmpty) {
          
          stdout.write("Berikan keterangan Deadline: ");
          String? deadline = stdin.readLineSync();
          
          String infoDeadline = (deadline != null && deadline.trim().isNotEmpty) ? deadline : "Tidak ada batas waktu";
          
          String tugasLengkap = "$tugasBaru (Deadline: $infoDeadline)";
          
          // Memasukkan tugas ke dalam list
          daftarTugas.add(tugasLengkap);
          print("Yeay! Tugas baru berhasil ditambah.");
          
        } else {
          print("Nama tugasnya jangan dikosongin ya!");
        }
        break;

      case '2':
        // Cek apakah list masih kosong
        if (daftarTugas.isEmpty) {
          print("Daftar tugasmu masih kosong nih. Yuk tambah dulu!");
        } else {
          print("\n--- Daftar Tugasmu ---");
          
          // 4. PERULANGAN: for loop untuk menampilkan semua isi list tugas
          for (int i = 0; i < daftarTugas.length; i++) {
            print("${i + 1}. ${daftarTugas[i]}");
          }
        }
        break;

      case '3':
        print("Terima kasih sudah menggunakan program To-Do List! Jangan lupa diselesaikan tugasnya ^^");
        isRunning = false;
        break;

      default:
        print("Pilihan kamu engga valid nih. Silakan coba lagi.");
    }
  } 
}