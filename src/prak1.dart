void main() {
  final list = List<String?>.filled(5, null);

  assert(list.length == 5);
  assert(list[1] == null);
  print(list.length); // 5
  print(list[1]);     // null

  list[1] = "Michelle Dorani Shiba";
  list[2] = "2341720113";
  assert(list[1] == "Michelle Dorani Shiba");
  print(list[1]);     
  print(list[2]);     
}

