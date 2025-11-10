# flutter_application_1

🏍️ **Deskripsi Lengkap Aplikasi “Finance Mate - Galeri 2 Stroke”**

📱 **Nama Aplikasi:**

Finance Mate - Galeri 2 Stroke**

💡 **Deskripsi Singkat:**

Aplikasi ini merupakan **aplikasi Flutter interaktif** yang menggabungkan konsep **keuangan digital (finance)** dengan **galeri motor 2-tak legendaris**.
Tujuannya adalah memberikan pengalaman visual yang menarik sekaligus informatif bagi pengguna yang ingin mengelola keuangan sekaligus menikmati tampilan motor klasik 2-tak yang terkenal di Indonesia.

🔧 **Fungsi Utama Aplikasi:**

🟦 1. **Splash Screen Animatif**

* Menampilkan logo “2TAK” dan teks “Finance Mate” dengan efek **fade-in animasi halus**.
* Memberikan kesan profesional dan modern sejak aplikasi dibuka.
* Setelah beberapa detik, pengguna otomatis diarahkan ke halaman utama (**HomeScreen**).

 🟩 2. **Home Screen (Halaman Utama)**

Halaman utama berisi tiga bagian besar yang menarik dan interaktif:

🔹 a. **Kartu Bank Digital (ATM Card Section)**

* Menggunakan **PageView.builder** agar pengguna dapat menggeser (swipe) antar kartu bank.
* Setiap kartu menampilkan:

  * Nama Bank (BRI, BNI, BCA, Mandiri, Mega, Indonesia)
  * Nomor kartu (disamarkan)
  * Saldo
  * Warna gradien dan logo bank yang berbeda.
* Kartu memiliki animasi **zoom-in** saat aktif dan **smooth transition** saat digeser, memberikan efek 3D yang elegan.

🔹 b. **Kategori Motor 2 Tak**

* Menampilkan deretan motor legendaris 2-tak seperti:

  * RX KING
  * SUZUKI RGR 150
  * SUZUKI SATRIA R120
  * YAMAHA FIZ R
  * NINJA RR
* Setiap kartu kategori memiliki efek **animasi scaling dan shadow**, serta latar belakang gambar motor yang keren.
* Pengguna bisa mengetuk salah satu kategori, dan aplikasi akan menampilkan pesan interaktif seperti:

  > “Kamu memilih RX KING”
* Warna gradien dan efek transparansi membuat tampilannya modern dan menarik secara visual.

🔹 c. **Daftar Transaksi Terbaru**

* Menampilkan riwayat transaksi dengan tampilan rapi dan dinamis.
* Setiap transaksi memiliki:

  * Nama motor
  * Nominal transaksi (+ atau -)
  * Deskripsi singkat
* Menggunakan **ListView.builder**, sehingga bisa memuat banyak data secara efisien.

---

🎨 **Tampilan dan Desain**

* Warna dominan: **biru muda, ungu, dan gradasi neon modern**.
* Menggunakan efek bayangan (**shadow**) dan transisi halus (**animation curves**).
* Setiap bagian memiliki spacing dan margin yang seimbang agar nyaman di mata.
* Desain responsif, cocok di layar HP maupun tablet.

---

🔐 **Teknologi yang Digunakan**

| Komponen             | Keterangan                                                                     |
| -------------------- | ------------------------------------------------------------------------------ |
| **Bahasa**           | Dart                                                                           |
| **Framework**        | Flutter                                                                        |
| **State Management** | StatefulWidget                                                                 |
| **Animasi**          | AnimatedScale, TweenAnimationBuilder, FadeTransition                           |
| **Asset Management** | Menggunakan folder `assets/images/` yang berisi logo dan gambar motor          |
| **UI Widgets**       | PageView, ListView, Stack, Container, Image.asset, InkWell, Scaffold, SnackBar |

---

🚀 **Tujuan Pengembangan**

Aplikasi ini dibuat untuk:

* Melatih kemampuan pengembangan aplikasi Flutter berbasis animasi dan layout kompleks.
* Menciptakan aplikasi dengan tampilan **estetis, interaktif, dan responsif**.
* Menyatukan tema **keuangan digital (finance)** dan **gaya hidup otomotif 2-tak** ke dalam satu aplikasi modern.

---

🧩 **Fitur Tambahan yang Dapat Dikembangkan**

Beberapa ide lanjutan agar aplikasi lebih lengkap:

1. 🔔 **Notifikasi saldo dan transaksi baru**
2. 🧾 **Riwayat transaksi terperinci per kategori**
3. 💳 **Tambah kartu bank baru secara dinamis**
4. ☁️ **Koneksi ke Firebase untuk menyimpan data pengguna**
5. 🌐 **Integrasi API harga motor dan berita otomotif terbaru**

---

🏁 **Kesimpulan**

Finance Mate - Galeri 2 Stroke** adalah aplikasi Flutter kreatif yang menggabungkan konsep *digital wallet* dengan *automotive gallery* 2-tak.
Aplikasi ini menonjol karena desain visualnya yang modern, animasi yang halus, serta pengalaman pengguna yang menyenangkan.

![splash screen](https://github.com/user-attachments/assets/83e1392f-84a7-4d96-a9e6-659374fc6a9c)
![atm dan 2tak](https://github.com/user-attachments/assets/17be7a64-5277-44ca-8e48-deb168223587)
![transaksi](https://github.com/user-attachments/assets/af02c1ac-62b6-42c3-aae0-530d85566a1c)

