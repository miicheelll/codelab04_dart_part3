void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['name'] = 'Michelle Dorani Shiba';
  gifts['nim'] = '2341720113';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases[20] = 'Michelle Dorani Shiba';
  nobleGases[21] = '2341720113';

  mhs1['name'] = 'Michelle Dorani Shiba';
  mhs1['nim'] = '2341720113';

  mhs2[1] = 'Michelle Dorani Shiba';
  mhs2[2] = '2341720113';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
