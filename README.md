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
membuat file baru dengan nama createproduct_form. pada form ini pengguna perlu mengisi nama produk, category produk, deskripsi produk, foto produk(opsional), harga produk, ukuran produk, dan stok produk.

Mengarahkan pengguna ke halaman form tambah produk baru ketika menekan tombol Tambah Produk pada halaman utama.
menambahkan fungsi ontap pada item card, fungsi ontap ini akan mengecek setiap kali ada tombol yang ditekan maka fungsi ini akan dijalankan. saat dijalankan kita hanya perlu mengecek tombol mana yang ditekan lalu arahkan ke page yang sesuai. pada kasus ini dicek apakh tombol yang ditekan adalah "create product" jika ya maka akan diarakan ke halaman createproduct_form

Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman form tambah produk baru.
menambahkan fungsi show dialog pada tombol save. ketika tombol save di tekan maka akan langsung mengambil data datanya dan memunculkannya sebagai sebuah pop up

Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Produk.
Ketika memilih opsi Halaman Utama, aplikasi akan mengarahkan pengguna ke halaman utama.
Ketika memilih opsi Tambah Produk, aplikasi akan mengarahkan pengguna ke halaman form tambah produk baru.
menambahkan folder widget dan membuat file baru di folder itu dengan nama left_drawer. lalu didalamnnya menambahkan 3 listile yang pertama home untuk menuju ke halaman utama, yang kedua add products yang menuju ke halaman createproduct_from dan yang terakhir view products yang nantinya akan berfungsi untuk ke halaman melihat semua produk yang saat ini masih belum dibuat jadi belum bisa diklik

Menjawab beberapa pertanyaan berikut pada README.md pada root folder (silakan modifikasi README.md yang telah kamu buat sebelumnya dan tambahkan subjudul untuk setiap tugas):

    1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
    Dalam Flutter, perbedaan utama antara Navigator.push() dan Navigator.pushReplacement() ada pada cara keduanya mengelola tumpukan halaman atau navigation stack. Navigator.push() menambahkan halaman baru di atas halaman sebelumnya sehingga pengguna masih dapat kembali menggunakan tombol Back, sedangkan Navigator.pushReplacement() menggantikan halaman saat ini dengan halaman baru dan menghapus halaman sebelumnya dari stack, sehingga pengguna tidak dapat kembali lagi. di aplikasi Goalie's safehouse, Navigator.push() cocok digunakan saat pengguna menelusuri detail produk dari daftar barang agar bisa kembali ke halaman sebelumnya, sementara Navigator.pushReplacement() lebih cocok digunakan setelah pengguna menyelesaikan proses checkoutk karena halaman checkout tidak perlu diakses kembali setelah selesai.


    2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
    Dalam membangun struktur halaman yang konsisten di seluruh aplikasi Flutter, hierarchy widget seperti Scaffold, AppBar, dan Drawer dimanfaatkan sebagai kerangka utama tampilan. Scaffold berfungsi sebagai struktur dasar setiap halaman yang menyediakan area untuk elemen penting seperti AppBar di bagian atas, body sebagai konten utama, dan Drawer sebagai menu navigasi samping. Dengan menggunakan Scaffold secara konsisten di semua halaman, tampilan aplikasi menjadi seragam dan mudah dipahami pengguna. AppBar dapat digunakan untuk menampilkan judul halaman, ikon pencarian, atau tombol kembali, sedangkan Drawer berisi daftar menu seperti Beranda, Kategori, Keranjang, dan Profil agar pengguna dapat berpindah antarhalaman dengan mudah. Dalam aplikasi Goalie's safehouse, pendekatan ini memastikan pengalaman pengguna tetap konsisten di setiap halaman, baik saat melihat produk, melakukan pembelian, maupun mengakses profil.

    3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
    Dalam desain antarmuka Flutter, penggunaan layout widget seperti Padding, SingleChildScrollView, dan ListView memiliki peran penting dalam menata tampilan form agar nyaman digunakan dan responsif di berbagai ukuran layar. Padding digunakan untuk memberikan jarak antar elemen sehingga tampilan form tidak terlihat padat dan tetap mudah dibaca. SingleChildScrollView memungkinkan seluruh isi form dapat digulir ketika kontennya lebih panjang dari layar, sehingga pengguna tetap bisa mengisi semua data tanpa terpotong. Sementara itu, ListView sangat berguna untuk menampilkan banyak elemen input secara vertikal dengan efisiensi memori karena hanya elemen yang terlihat di layar yang dirender. Dalam aplikasi Goalie's safehouse, kombinasi ketiganya saya gunakan pada halaman create product form, misalnya dengan menempatkan form input dalam ListView yang dibungkus SingleChildScrollView dan diberi Padding agar setiap field seperti nama, deskripsi, dan category tertata rapi.


    4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
    Warna tema pada aplikasi Football Shop disesuaikan melalui pengaturan ThemeData dan lebih spesifiknya di color theme. hal ini dilakukan agar warna selaras dengan identitas brand. Warna utama digunakan pada AppBar, tombol, dan ikon, sedangkan warna sekunder diterapkan pada elemen pendukung seperti teks atau highlight. Dengan penerapan warna yang konsisten di seluruh halaman, aplikasi tampil profesional dan mudah dikenali sebagai bagian dari brand Football Shop.

Melakukan add, commit, dan push ke GitHub.

## TUGAS 9
Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
menyelesaikan fitur fitur yang masih memiliki bug dari TI sebelumnya

Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
Membuat halaman login pada proyek tugas Flutter.
Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
Membuat app baru bernama authentication yang didalamnya berisi fungsi views untuk login dan register. dari sini nanti dari flutter tinggal melakukan request ke path localhost:8000/auth/login atau localhost:8000/auth/register

Membuat model kustom sesuai dengan proyek aplikasi Django.
mengambil data dari json web goalie's safehouse lalu menggunakan bantuan web quicktype untuk membuatkan modelnya dalam flutter lalu manambahkannya di lib/models/product_entry.dart

Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
Tampilkan name, price, description, thumbnail, category, dan is_featured dari masing-masing item pada halaman ini (Dapat disesuaikan dengan field yang kalian buat sebelumnya).


Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
Halaman ini dapat diakses dengan menekan salah satu card item pada halaman daftar Item.
Tampilkan seluruh atribut pada model item kamu pada halaman ini.
Tambahkan tombol untuk kembali ke halaman daftar item.

untuk halaman detail akan menampilkan seluruh atribut pada model item yang data model. data ini diambil dari list produk, jadi ketika list product memberikan semua data product dalam json, nanti data product ini akan diolah dan ditampilkan berdasarkan indexnya. jadi nanti ketika kita masuk ke product detail yang dimana disitu dibutuhkan object product maka di bagian onpressed dari product cardnya kita perlu tambahkan data object productnya.

Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.

Menjawab beberapa pertanyaan berikut pada README.md pada root folder (silakan modifikasi README.md yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).

    Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
    Penggunaan model Dart diperlukan karena JSON mentah dalam bentuk Map<String, dynamic> tidak memberikan jaminan keamanan tipe, konsistensi struktur, maupun kejelasan data yang diproses aplikasi. Tanpa model, Flutter tidak bisa mendeteksi apakah server mengirim tipe yang salah, field yang hilang, atau nilai null dan semua error itu baru muncul saat runtime, bukan saat compile. Dengan model, struktur data terdokumentasi dengan jelas, parsing lebih aman, dan perubahan API lebih mudah dikelola karena hanya perlu memperbarui satu representasi data, bukan seluruh bagian aplikasi yang memanfaatkan map mentah. Mengabaikan model mungkin terlihat lebih cepat, tetapi pada proyek yang tumbuh, itu membuat kode rentan, sulit dipelihara, dan penuh potensi bug tersembunyi.

    Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
    Package http digunakan untuk melakukan request HTTP biasa yang sifatnya stateless dan tidak menyimpan informasi sesi. Ini cocok untuk mengambil data publik yang tidak memerlukan autentikasi. Sebaliknya, CookieRequest menyediakan mekanisme penyimpanan dan pengiriman cookie secara otomatis, sehingga sangat penting ketika bekerja dengan Django yang menggunakan session-based authentication. Dengan CookieRequest, setiap request akan membawa cookie sesi yang sama sehingga server mengenali pengguna. Karena itu, http bertugas sebagai alat komunikasi dasar, sementara CookieRequest menangani autentikasi, session management, dan integrasi penuh dengan sistem login/logout Django.

    Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
    CookieRequest harus dibagikan agar seluruh komponen Flutter menggunakan instance session yang sama. Jika setiap page membuat instance CookieRequest sendiri, maka cookie yang disimpan saat login tidak akan terbawa ke halaman lain, sehingga dari perspektif server pengguna selalu terlihat “belum login.” Dengan membagikan satu instance, status autentikasi konsisten di seluruh aplikasi, seluruh request memanfaatkan cookie yang sama, dan UI dapat bereaksi terhadap perubahan status login tanpa inkonsistensi. Tanpa pendekatan ini, session akan terpecah, autentikasi gagal, dan perilaku aplikasi menjadi tidak dapat diprediksi.
    
    Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
    Agar Flutter dapat berkomunikasi dengan Django, Django harus mengizinkan host emulator Android yang menggunakan alamat 10.0.2.2 sebagai representasi dari localhost. Jika tidak ditambahkan ke ALLOWED_HOSTS, Django akan menolak request karena alasan keamanan. Selain itu, CORS harus diaktifkan agar Django mengizinkan request dari origin berbeda, khususnya pada Flutter web atau Android. Pengaturan cookie seperti SameSite=None juga diperlukan agar cookie sesi bisa dikirim pada request lintas origin. Di sisi Flutter/Android, izin Internet harus diaktifkan; tanpa itu aplikasi tidak dapat mengakses API sama sekali. Jika salah satu konfigurasi ini hilang, request bisa diblokir, cookie tidak terkirim, login gagal, atau aplikasi tidak dapat berkomunikasi dengan server.
    
    Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
    Proses dimulai ketika pengguna memasukkan data melalui widget form di Flutter. Data yang dikumpulkan akan dikirim ke Django melalui request POST menggunakan CookieRequest. Django menerima data tersebut, melakukan validasi, memproses atau menyimpannya ke database, lalu mengembalikan respons JSON. Flutter kemudian membaca respons ini, mengonversinya menjadi model Dart, memperbarui state aplikasi, dan menampilkan data hasil pemrosesan pada UI. Keseluruhan alur ini memastikan data mengalir dari input pengguna, diproses secara aman di backend, dan direpresentasikan kembali dalam tampilan yang konsisten di Flutter.

    Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
    Saat registrasi, Flutter mengirim data akun yang diisi pengguna ke Django, lalu Django membuat akun baru dan mengembalikan respons yang menandai apakah proses berhasil. Pada login, Flutter mengirim username dan password ke endpoint Django, dan Django akan memverifikasi kredensial tersebut. Jika benar, Django membuat session dan mengirim cookie kembali ke Flutter, yang disimpan oleh CookieRequest untuk digunakan pada seluruh request berikutnya. Dengan cookie ini, Django dapat mengenali pengguna pada setiap request sehingga UI Flutter dapat menampilkan menu khusus pengguna yang sudah login. Pada logout, Flutter memanggil endpoint Django yang menghapus session, dan CookieRequest menghapus cookie lokal sehingga status pengguna kembali menjadi “belum login,” memicu UI untuk menampilkan opsi login kembali.
    
    Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
Melakukan add-commit-push ke GitHub.