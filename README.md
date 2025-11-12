# goalie_s_safehouse_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Tugas 7
Checklist untuk tugas ini adalah sebagai berikut:

 Membuat sebuah program Flutter baru dengan tema Football shop yang sesuai dengan tugas-tugas sebelumnya.
 dsini hanya perlu inisiasi awal dengan flutter create. saya tetap menggunakan Goalie's Safehouse untuk aplikasinya

 Membuat tiga tombol sederhana dengan ikon dan teks untuk product kamu:
 All Products
 My Products
 Create Product
 untuk checklist ini saya pertama tama memindahkan class myhomepage dari main ke menu. setelah itu saya menambahkan class itemhomepage yang berguna untuk menyimpan object button All products, my products, dan create product. di class ItemHomepage ini ada beberapa atribut yang pertama nama, icon, dan warna latar belakang buttonnya. setelah itu saya menambahkan class item card yang digunakan untuk menampilkan masih masing button.

 Mengimplementasikan warna-warna yang berbeda untuk setiap tombol:
 Warna biru untuk tombol All Products
 Warna hijau untuk tombol My Products
 Warna merah untuk tombol Create Product
 untuk warna button bisa ditambahkan di variable myhomepage karena constructor class itemhomepage meminta adanya warna button setelah itu dibagian item card untuk warnanya tinggal dipanggil lewat object atributnya.

 Memunculkan Snackbar dengan tulisan:
 "Kamu telah menekan tombol All Products" ketika tombol All Products ditekan.
 "Kamu telah menekan tombol My Products" ketika tombol My Products ditekan.
 "Kamu telah menekan tombol Create Product" ketika tombol Create Product ditekan.
 membuat class baru infocard yang isinya title dan text content dari snackbar tersebut. lalu untuk menghubungkannya ke item card agar setiap kali tombol di klik akan memunculkan infocard yang sesuai

Jawab pertanyaan-pertanyaan berikut di file README.md pada folder root:
    Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
    widget tree adalah struktur hierarki yang menggambarkan bagaimana semua widget tersusun dan saling berhubungan dalam suatu aplikasi. Setiap elemen di layar seperti teks, tombol, gambar, atau layout merupakan widget. Flutter membangun tampilan aplikasi dengan cara menyusun widget-widget ini ke dalam sebuah tree, di mana satu widget bisa berisi widget lain di dalamnya.
    
    Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
    1. MaterialApp : Widget utama aplikasi berbasis Material Design yang menyediakan tema, navigasi, dan konfigurasi global.
    2. Scaffold : Menyediakan struktur dasar halaman seperti AppBar, body, dan SnackBar.
    3. AppBar : Bilah bagian atas halaman untuk menampilkan judul aplikasi atau aksi lainnya.
    4. Text : Menampilkan teks di layar seperti nama, kelas, dan pesan sambutan.
    5. Padding : Memberikan jarak dalam (inner space) di sekitar widget child agar tidak menempel pada tepi layar.
    6. Column : Menyusun widget secara vertikal dari atas ke bawah.
    7. Row : Menyusun widget secara horizontal dari kiri ke kanan.
    8. SizedBox : Memberi jarak kosong antar widget dengan tinggi atau lebar tertentu.
    9. Center : Menempatkan widget child di posisi tengah parent-nya.
    10. GridView.count : Menampilkan kumpulan widget dalam bentuk grid dengan jumlah kolom tertentu.
    11. Card : Menampilkan kotak informasi dengan efek bayangan untuk tampilan data seperti InfoCard.
    12. Container : Widget serbaguna untuk mengatur ukuran, padding, margin, dan alignment child.
    13. Material : Menyediakan efek material seperti ripple dan sudut melengkung untuk tampilan tombol.
    14. InkWell : Memberikan efek sentuhan (ripple effect) dan menangani aksi onTap saat widget ditekan.
    15. SnackBar : Menampilkan pesan sementara di bagian bawah layar saat suatu aksi dilakukan.
    16. ScaffoldMessenger : Mengelola dan menampilkan SnackBar di dalam Scaffold.
    17. Icon : Menampilkan ikon grafis seperti shopping_cart, person, dan add.
    19. Color : Menentukan warna dari elemen seperti latar belakang ItemCard.
    20. MainAxisAlignment : Mengatur posisi widget secara horizontal (di Row) atau vertikal (di Column).
    21. CrossAxisAlignment : Mengatur alignment widget pada sumbu silang (horizontal atau vertikal).
    

    Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
    MaterialApp adalah widget utama yang digunakan untuk membangun aplikasi Flutter dengan gaya Material Design (standar desain dari Google).
    Fungsi utamanya adalah:
    Menjadi root dari struktur aplikasi Flutter.
    Menyediakan tema global (warna, font, ikon, dll) melalui properti theme.
    Mengatur navigasi dan routing antar halaman (melalui home, routes, onGenerateRoute).
    Menyediakan konteks Material Design agar widget seperti Scaffold, AppBar, FloatingActionButton, dan SnackBar dapat digunakan dengan benar.

    
    MaterialApp sering digunakan jadi widget root karena materialapp dapat menjadi “pembungkus” utama yang menyediakan semua fitur dasar Material Design, sehingga widget lain di bawahnya bisa berfungsi sebagaimana mestinya. Tanpa MaterialApp, banyak widget Material tidak akan bekerja dengan benar.

    Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
    stateless widget tidak dapat berubah setelah dibuat(statis) sedangkan stateful widget dapat berubah secara otmotis setelah dibuat(dinamis). stateless widget umumnya digunakan untuk tampilan yang tidak berubah-ubah, seperti icon dan text. stateful widget digunakan untuk tampilan yang dapat berubah-ubah seperti sebuah button, counter, form. memilih stateless atau statful widget didasarkan apakah widget ini dapat berubah ketika aplikasi digunakan baik dengan adanya interaksi user ataupun tidak.

    Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
    BuildContext adalah objek yang merepresentasikan posisi sebuah widget di dalam widget tree. buildContext berfungsi sebagai penghubung antara widget dan lingkungan tempat widget tersebut berada, sehingga widget dapat mengakses informasi dari ancestor-nya (widget di atasnya).

    Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
        
    Hot Reload memperbarui kode yang sedang dijalankan tanpa menghentikan aplikasi. Hanya bagian yang berubah di-rebuild, sehingga state (keadaan) aplikasi tetap tersimpan.
    Hot Restart menjalankan ulang seluruh aplikasi dari awal. Semua state, variabel, dan inisialisasi direset ke kondisi awal.

    Contoh penggunaannya
    Mengubah tampilan teks atau warna → cukup Hot Reload.
    Menambah variabel global atau mengubah struktur widget besar → perlu Hot Restart.

Melakukan add-commit-push ke suatu repositori baru di GitHub.


## Tugas 8

Checklist untuk tugas ini adalah sebagai berikut:

Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah produk baru dengan ketentuan sebagai berikut:
Memakai minimal tiga elemen input, yaitu name, price, dan description.
Tambahkan elemen input lain sesuai dengan model pada aplikasi Football Shop Django yang telah kamu buat (misalnya thumbnail, category, dan isFeatured).
Memiliki sebuah tombol Save.
Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:
Setiap elemen input tidak boleh kosong.
Setiap elemen input harus berisi data dengan tipe data atribut modelnya.

Mengarahkan pengguna ke halaman form tambah produk baru ketika menekan tombol Tambah Produk pada halaman utama.

Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman form tambah produk baru.

Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Produk.
Ketika memilih opsi Halaman Utama, aplikasi akan mengarahkan pengguna ke halaman utama.
Ketika memilih opsi Tambah Produk, aplikasi akan mengarahkan pengguna ke halaman form tambah produk baru.

Menjawab beberapa pertanyaan berikut pada README.md pada root folder (silakan modifikasi README.md yang telah kamu buat sebelumnya dan tambahkan subjudul untuk setiap tugas):

    Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?

    Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?

    Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.

    Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?

Melakukan add, commit, dan push ke GitHub.