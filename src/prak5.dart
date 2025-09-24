void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  var angka = (10, 20);
  var hasilTukar = tukar(angka);
  print('Sebelum ditukar: $angka');
  print('Sesudah ditukar: $hasilTukar');

  (String, int) mahasiswa = ('Michelle Dorani', 2341720113);
  print(mahasiswa);

  var mahasiswa2 = ('Michelle Dorani', 2341720113, a: 2, b: true);

  print(mahasiswa2.$1); 
  print(mahasiswa2.a); 
  print(mahasiswa2.b); 
  print(mahasiswa2.$2);
}


