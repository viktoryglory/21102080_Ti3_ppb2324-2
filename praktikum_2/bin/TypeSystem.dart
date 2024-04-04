//TypeSystem.dart
void main() {
  //Generic
  List<int> bilangan = [1, 2, 3, 4, 5];
  List<String> kata = ['Informatika', 'Flutter', 'Pemrograman'];
  List dynamicList = [1, 2, 3, 'empat']; // List<dynamic>

  print('List bilangan: $bilangan');
  print('List kata: $kata');
  print('List dynamic: $dynamicList');

  //type Inference
  Map<String, dynamic> jurusan = {'prodi': 'Informatika', 'angkatan': 2020};
  //---Menampilkan nilai dari Map
  print('Program Studi: ${jurusan['prodi']}');
  print('Angkatan: ${jurusan['angkatan']}');
  //---Mengubah nilai dalam Map
  jurusan['angkatan'] = 2021;
  print('Angkatan (setelah diubah): ${jurusan['angkatan']}');
}
