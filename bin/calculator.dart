import 'dart:io';
 double _readNumber(String label) {
 while (true) {
 stdout.write('$label: ');
 final input = stdin.readLineSync();
 if (input == null) continue;
 final value = double.tryParse(input.trim());
 if (value != null) return value;
 print('INPUT TIDAK FALID. MASUKAN ANGKA!.');
 }
 }
void main() {
 while (true) {
 print('\n[ TUGAS | KRISNO GATSUSAN WIJAYA KUSUMA | 1125170077 ]');
 print('\n<<=== KALKULATOR SEDERHANA ===>>');
 print('');
 print('1 [+] TAMBAH');
 print('2 [-] KURANG');
 print('3 [*] KALI');
 print('4 [/] BAGI');
 print('5 [X] KELUAR');
 stdout.write('PILIH ANGKA 1 S/D 5');
 print('');
 print('');
 stdout.write('MASUKAN ANGKA PILIHAN : ');
 final pilih = stdin.readLineSync()?.trim();
 if (pilih == '5') {
 print('BYE!');
 return;
 }
 final a = _readNumber('MASUKAN ANGKA PERTAMA ');
 final b = _readNumber('MASUKAN ANGKA KEDUA ');
 switch (pilih) {
 case '1':
 print('HASIL PENJUMLAHAN [+] : ${a+b}');
 break;
 case '2':
 print('HASIL PENGURANGAN [-] : ${a-b}');
 case '3':
 print('HASIL PERKALIAN [*] : ${a*b}');
 case '4':
 print('HASIL PEMBAGIAN [/] : ${a/b}');
 default:
 print('PILIHAN TIDAK DIKENAL.');
 }
 }
}