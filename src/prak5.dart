void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var angka = (10, 20);
  var hasilTukar = tukar(angka);
  print('Sebelum ditukar: $angka');
  print('Sesudah ditukar: $hasilTukar');
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
