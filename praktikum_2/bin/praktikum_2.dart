import 'package:praktikum_2/praktikum_2.dart' as praktikum_2;

// void main() {
//   print('Hello World!');
// }

// void main() {
//   var name = 'Feri';
//   var year = 2025;
//   var bulan = ['Januari', 'Februari', 'Maret', 'April'];
//   String greetings = 'Hello Dart!';
//   int tahun = 2023;
//   print(name);
//   print(year);
//   print(bulan);
//   print(greetings);
// }

// void main() {
//   int angka = 10;
//   if (angka > 0) {
//     print("$angka adalah bilangan positif");
//   } else if (angka < 0) {
//     print("$angka adalah bilangan negatif");
//   } else {
//     print("$angka adalah nol");
//   }
// }

// void main() {
//   String hari = "Kamis";
//   switch (hari) {
//     case "Senin":
//       print("Hari ini adalah Senin");
//       break;
//     case "Selasa":
//       print("Hari ini adalah Selasa");
//       break;
//     case "Rabu":
//       print("Hari ini adalah Rabu");
//       break;
//     case "Kamis":
//       print("Hari ini adalah Kamis");
//       break;
//     case "Jumat":
//       print("Hari ini adalah Jumat");
//       break;
//     case "Sabtu":
//       print("Hari ini adalah Sabtu");
//       break;
//     case "Minggu":
//       print("Hari ini adalah Minggu");
//       break;
//     default:
//       print("Hari tidak valid");
//   }
// }

// void main() {
//   for (int i = 1; i <= 5; i++) {
//     print('ini adalah angka  ke-$i');
//   }
// }

// void main() {
//   int count = 1;
//   print("while loop");
//   while (count <= 5) {
//     print('Menggunakan while loop ke - $count');
//     count++;
//   }
// }

// void main() {
//   int count = 1;
//   print("do while loop");
//   do {
//     print("Do While loop ke-$count");
//     count++;
//   } while (count <= 5);
// }

// void main() {
//   List<String> nama_mhs = ["Arya", "Budi", "Cici"];
//   List dynamicList = [1, 'Arya', true]; //List Dinamis
//   print("\nMenampilkan isi list dengan For Each : ");
//   nama_mhs.forEach((data) {
//     print(data);
//   });
// }

// void main() {
//   var buah = ['Mangga', 'Apel', 'Jeruk', 'Manggis'];
//   var hewan = ['Ayam', 'Kelinci', 'Kucing'];
//   var allFavorites = [buah, hewan];
//   var Allfavorit = [...buah, ...hewan];
//   print(allFavorites);
//   print(Allfavorit);
// }

// void main() {
//   var angkaSet = {1, 2, 3};
//   Set<int> bilanganSet = {1, 4, 6, 4, 1};
//   print(bilanganSet);
// }

void main() {
  var kota = {
    'Semarang': 'Jawa Tengah',
    'Bandung': 'Jawa Barat',
    'Malang': 'Jawa Timur'
  };
  print(kota['Malang']);
}
