# codelab04_dart_part3

Praktikum 1
- Langkah 1:

    ![alt text](img/Prak1_Lngkh1.jpg?raw=true)

- langkah 2:

    ![alt text](img/Prak1_Lngkh2.jpg?raw=true)

    Ketika kode Dart tersebut dijalankan, program akan membuat list dengan tiga elemen [1, 2, 3], lalu menggunakan assert untuk memastikan panjang list adalah 3 dan nilai pada indeks ke-1 adalah 2. Karena kondisi benar, program lanjut mencetak panjang list (3) dan elemen pada indeks ke-1 (2). Setelah itu, nilai pada indeks ke-1 diubah menjadi 1, assert kembali memastikan perubahan berhasil, lalu program mencetak nilai baru (1). Jadi hasil akhirnya di konsol adalah angka 3, 2, dan 1, tanpa error karena semua assert terpenuhi.

- Langkah 3: 

    ![alt text](img/Prak1_Lngkh3.jpg?raw=true)
    ![alt text](img/Prak1_Lngkh3a.jpg?raw=true)

    Saat kode dijalankan, program akan error. Memang awalnya List.filled(5, null) membuat list dengan panjang tetap 5 dan semua elemen bernilai null. assert pertama (mengecek panjang = 5) dan assert kedua (mengecek elemen indeks ke-1 = null) sebenarnya benar. Namun, masalah muncul ketika kita mencoba menyimpan string ke dalam list, misalnya "Michelle Dorani Shiba" atau "2341720113". Secara default, list tersebut bertipe List<Object?>, sehingga saat null-safety aktif Dart akan menolak assignment string ke dalam list yang sejak awal diisi null. Akibatnya, program tidak akan melanjutkan eksekusi dan berhenti dengan error tipe data.

- Perbaikan:

    ![alt text](img/Prak1_Lngkh3b.jpg?raw=true)
    ![alt text](img/Prak1_Lngkh3c.jpg?raw=true)

    Pada kode yang sudah diperbaiki, list didefinisikan sebagai List<String?>.filled(5, null), sehingga setiap elemennya boleh berisi String maupun null. Perbaikan ini penting karena kode sebelumnya hanya menggunakan List.filled(5, null) yang menghasilkan List<Object?> dan akan error saat diisi dengan string. Dengan tipe yang jelas, program berhasil membuat list berisi 5 elemen null, lalu elemen pada indeks ke-1 dan ke-2 dapat diubah menjadi string tanpa masalah. Hasil eksekusi menampilkan panjang list (5), nilai null pada awalnya, lalu isi baru "Michelle Dorani Shiba" dan "2341720113".

Praktikum 2
- Langkah 1:

    ![alt text](img/Prak2_Lngkh1.jpg?raw=true)

- langkah 2:

    ![alt text](img/Prak2_Lngkh2.jpg?raw=true)
    
    Saat kode tersebut dijalankan, program membuat sebuah set berisi lima elemen string: 'fluorine', 'chlorine', 'bromine', 'iodine', dan 'astatine'. Karena yang digunakan adalah kurung kurawal {} dengan elemen unik, Dart mengenalinya sebagai struktur data Set, bukan List atau Map. Ketika dipanggil print(halogens);, program akan menampilkan seluruh isi set tersebut. Namun, urutan elemen yang muncul tidak selalu sama seperti saat didefinisikan, karena Set di Dart tidak menjamin urutan tetap. Pada kode ini tidak terdapat error.

- Langkah 3: 

    ![alt text](img/Prak2_Lngkh3.jpg?raw=true)
    ![alt text](img/Prak2_Lngkh3a.jpg?raw=true)

    Ketika kode tersebut dijalankan, program pertama membuat sebuah Set bernama halogens berisi lima elemen string, lalu mencetak isinya (urutan bisa berbeda karena Set tidak menjamin urutan). Setelah itu, names1 dibuat dengan sintaks <String>{}, sehingga bertipe Set<String> kosong. names2 juga dideklarasikan sebagai Set<String> kosong dengan notasi {}. Sedangkan names3 hanya menggunakan {} tanpa tipe, sehingga Dart menganggapnya sebagai Map kosong, bukan Set. Oleh karena itu, hasil cetak menunjukkan: isi halogens berupa kumpulan elemen, names1 dan names2 sebagai set kosong ({}), serta names3 sebagai map kosong ({}). Pada kode ini tidak terdapat error.

- Tambahan:

    ![alt text](img/Prak2_Lngkh3b.jpg?raw=true)
    ![alt text](img/Prak2_Lngkh3c.jpg?raw=true)

    Pada kode ini:
    - names1 diberi elemen dengan fungsi .add() (menambah satu elemen).
    - names2 diberi beberapa elemen sekaligus dengan .addAll().
    - Variabel names3 (Map kosong) sudah dihapus agar tidak membingungkan.

Praktikum 3
- Langkah 1:

    ![alt text](img/Prak3_Lngkh1.jpg?raw=true)

- langkah 2:

    ![alt text](img/Prak3_Lngkh2.jpg?raw=true)

    Saat kode tersebut dijalankan, program membuat dua buah map. Map gifts memiliki key berupa string ('first', 'second', 'fifth') dengan value berupa string dan angka, sedangkan map nobleGases memiliki key berupa angka (2, 10, 18) dengan value berupa string dan angka. Ketika dipanggil print(gifts); dan print(nobleGases);, program akan menampilkan pasangan key–value dari masing-masing map sesuai isi yang didefinisikan. Hasilnya terlihat seperti dictionary: {'first': 'partridge', 'second': 'turtledoves', 'fifth': 1} dan {2: 'helium', 10: 'neon', 18: 2}. Pada kode ini tidak terdapat error.

- Langkah 3: 

    ![alt text](img/Prak3_Lngkh3.jpg?raw=true)
    ![alt text](img/Prak3_Lngkh3a.jpg?raw=true)

    Saat kode dijalankan, program membuat dua map awal (gifts dan nobleGases) lalu memperbarui nilainya: pada gifts, key 'fifth' yang awalnya bernilai 1 diganti menjadi 'golden rings', sedangkan pada nobleGases, key 18 yang awalnya bernilai 2 diubah menjadi 'argon'. Dua map kosong lain (mhs1 dan mhs2) hanya dideklarasikan tanpa digunakan. Hasil cetak akhirnya menampilkan gifts sebagai {first: partridge, second: turtledoves, fifth: golden rings} dan nobleGases sebagai {2: helium, 10: neon, 18: argon}. Pada kode ini tidak terdapat error.

- Tambahan:

    ![alt text](img/Prak3_Lngkh3b.jpg?raw=true)
    ![alt text](img/Prak3_Lngkh3c.jpg?raw=true)

    Pada kode yang sudah diperbarui, setiap map (gifts, nobleGases, mhs1, dan mhs2) ditambahkan pasangan key–value berisi nama dan NIM. Pada gifts ditambahkan key 'name' dan 'nim', pada nobleGases ditambahkan key angka baru 20 dan 21, sedangkan pada mhs1 dan mhs2 yang awalnya kosong juga diisi dengan data nama dan NIM.

Praktikum 4
- Langkah 1:

    ![alt text](img/Prak4_Lngkh1.jpg?raw=true)

- langkah 2:

    ![alt text](img/Prak4_Lngkh2.jpg?raw=true)

    Saat kode tersebut dijalankan, program akan error karena mencoba mencetak variabel list1 yang sebenarnya tidak pernah didefinisikan di dalam kode. Variabel yang ada hanya list dan list2, sehingga pemanggilan print(list1); menimbulkan undefined name error.

- Perbaikan:

    ![alt text](img/Prak4_Lngkh2a.jpg?raw=true)
    ![alt text](img/Prak4_Lngkh2b.jpg?raw=true)

    Perbaikan dilakukan pada baris print(list1); yang sebelumnya salah karena variabel list1 tidak pernah didefinisikan, diganti menjadi print(list); agar sesuai dengan variabel yang ada. Setelah diperbaiki, program akan mencetak isi list yaitu [1, 2, 3], kemudian list2 yang berisi [0, 1, 2, 3] hasil dari menambahkan elemen 0 di depan dengan operator spread (...), serta mencetak panjang list2 yang bernilai 4.

- Langkah 3: 

    ![alt text](img/Prak4_Lngkh3.jpg?raw=true)
    ![alt text](img/Prak4_Lngkh3a.jpg?raw=true)

    Kode tersebut tidak bisa dijalankan karena error di baris list1 = [1, 2, null];. Masalahnya, variabel list1 belum pernah dideklarasikan sebelumnya.

- Perbaikan:

    ![alt text](img/Prak4_Lngkh3b.jpg?raw=true)
    ![alt text](img/Prak4_Lngkh3c.jpg?raw=true)

    Pada kode yang diperbaiki, penambahan kata kunci var pada deklarasi list1 (var list1 = [1, 2, null];) dilakukan karena sebelumnya variabel tersebut belum pernah didefinisikan sehingga menyebabkan error. Setelah diperbaiki, program berjalan normal: list berisi [1, 2, 3], list2 berisi [0, 1, 2, 3] dengan panjang 4, list1 berisi [1, 2, null], dan list3 berisi [0, 1, 2, null] dengan panjang 4 berkat penggunaan operator spread null-aware ...?.

- Tambahan:

    ![alt text](img/Prak4_Lngkh3d.jpg?raw=true)
    ![alt text](img/Prak4_Lngkh3e.jpg?raw=true)

    Pada kode ini ditambahkan variabel baru nim yang berisi deretan angka sesuai NIM, kemudian dibuat variabel listNIM menggunakan Spread Operator (...nim) sehingga setiap elemen dari nim disalin ke dalam list baru. Dengan penambahan ini, selain menampilkan list bawaan (list, list2, list1, dan list3), program juga dapat menampilkan list khusus berisi NIM, sehingga memperlihatkan cara penggunaan Spread Operator untuk menyalin isi list lain ke dalam variabel baru.

- Langkah 4:

    ![alt text](img/Prak4_Lngkh4.jpg?raw=true)
    ![alt text](img/Prak4_Lngkh4a.jpg?raw=true)

    Kode tersebut error karena variabel promoActive belum didefinisikan saat digunakan pada list nav.

- Perbaikan:

    ![alt text](img/Prak4_Lngkh4b.jpg?raw=true)
    ![alt text](img/Prak4_Lngkh4c.jpg?raw=true)
    ![alt text](img/Prak4_Lngkh4d.jpg?raw=true)
    ![alt text](img/Prak4_Lngkh4e.jpg?raw=true)

    Perbaikan dilakukan dengan menambahkan deklarasi var promoActive = true; sebelum pembuatan list nav, karena sebelumnya variabel tersebut belum ada sehingga menyebabkan error. Setelah diperbaiki, program berjalan normal: menampilkan isi list [1, 2, 3], list [0, 1, 2, 3] dengan panjang 4, list [1, 2, null], list [0, 1, 2, null] dengan panjang 4, dan list nav berisi ['Home', 'Furniture', 'Plants', 'Outlet'] jika promoActive bernilai true. Namun jika promoActive diubah menjadi false, maka 'Outlet' tidak ditambahkan sehingga isi nav hanya ['Home', 'Furniture', 'Plants'].

- Langkah 5:

    ![alt text](img/Prak4_Lngkh5.jpg?raw=true)
    ![alt text](img/Prak4_Lngkh5a.jpg?raw=true)

    Kode tersebut akan error pada bagian nav2 karena kondisi if (login case 'Manager') tidak valid: variabel login belum pernah dideklarasikan dan sintaks case tidak bisa digunakan langsung di dalam list literal.

- Perbaikan:

    ![alt text](img/Prak4_Lngkh5b.jpg?raw=true)
    ![alt text](img/Prak4_Lngkh5c.jpg?raw=true)
    ![alt text](img/Prak4_Lngkh5d.jpg?raw=true)
    ![alt text](img/Prak4_Lngkh5e.jpg?raw=true)

    Perbaikan dilakukan dengan menambahkan deklarasi variabel login = 'Manager' dan mengganti sintaks salah if (login case 'Manager') menjadi if (login == 'Manager') agar sesuai aturan Dart. Setelah perbaikan, program berjalan normal: nav mencetak ['Home', 'Furniture', 'Plants'] karena promoActive bernilai false, sedangkan nav2 mencetak ['Home', 'Furniture', 'Plants', 'Inventory'] jika login bernilai 'Manager'. Jika variabel login memiliki kondisi lain, misalnya 'Admin', maka 'Inventory' tidak akan ditambahkan sehingga nav2 hanya berisi ['Home', 'Furniture', 'Plants'].

- Langkah 6:

    ![alt text](img/?raw=true)
    ![alt text](img/?raw=true)

    Kode tersebut ditambahkan list komprehensi yang digunakan untuk membuat listOfStrings dari listOfInts, menghasilkan string berformat '#0', '#1', '#2', '#3'. Pada kode ini tidak terdapat error. Manfaat utama dari Collection For di Dart adalah memudahkan pembuatan list secara dinamis dengan cara yang ringkas dan mudah dibaca, karena kita bisa langsung menghasilkan elemen-elemen baru dari sebuah koleksi atau perulangan tanpa harus menulis loop terpisah. Dengan fitur ini, kode menjadi lebih efisien dan deklaratif, misalnya saat ingin mengubah list angka menjadi list string dengan format tertentu, kita cukup menuliskannya dalam satu baris menggunakan for di dalam list.

Praktikum 5
- Langkah 1:

    ![alt text](img/?raw=true)

- langkah 2:

    ![alt text](img/?raw=true)

    Ketika kode dijalankan, program error karena ada kesalahan sintaks: setelah perintah print(record) seharusnya ditutup dengan tanda titik koma ;.

- Perbaikan:

    ![alt text](img/?raw=true)
    ![alt text](img/?raw=true)

    Pada kode ini perbaikan yang dilakukan adalah menambahkan tanda titik koma (;) setelah print(record) karena sebelumnya menyebabkan error sintaks. Setelah diperbaiki, program berhasil dijalankan dan menampilkan isi record berupa tuple ('first', a: 2, b: true, 'last'). Record ini berfungsi untuk menyimpan beberapa nilai sekaligus, baik berdasarkan posisi maupun nama field, sehingga lebih ringkas dibandingkan membuat class atau map.

- Langkah 3: 

    ![alt text](img/?raw=true)
    ![alt text](img/?raw=true)

    Kode tersebut membuat sebuah record ('first', a: 2, b: true, 'last') di dalam main() lalu mencetaknya, sehingga hasil eksekusi hanya menampilkan isi record tersebut. Di luar scope main(), terdapat fungsi tukar yang bertujuan menukar posisi dua bilangan integer dalam sebuah record (int, int), menggunakan destructuring untuk memecah nilai lalu mengembalikannya dalam urutan terbalik. Namun masalahnya, fungsi tukar tidak pernah dipanggil di dalam main(), sehingga meskipun sudah didefinisikan, fungsinya tidak memberikan efek atau output apa pun saat kode dijalankan.

- Perbaikan:

    ![alt text](img/?raw=true)
    ![alt text](img/?raw=true)

    Kode tersebut sudah diperbaiki dengan menambahkan pemanggilan fungsi tukar di dalam main(), menggunakan sebuah record (10, 20) sebagai argumen. Perbaikan ini penting karena pada versi sebelumnya fungsi tukar hanya didefinisikan di luar main() tanpa pernah dijalankan, sehingga tidak menghasilkan output tambahan. Dengan perbaikan ini, program menampilkan record string dan named field, lalu memperlihatkan proses pertukaran elemen dalam record integer: mula-mula (10, 20) dan setelah dipanggil fungsi tukar, hasilnya menjadi (20, 10).

- Tambahan: 
- Langkah 4:
- Perbaikan:
- Tambahan: 
- Langkah 5:
- Perbaikan:
- Tambahan: 

Tugas Praktikum
1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!
2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
7. Jelaskan dengan contoh cara membuat return multiple value di Functions!
