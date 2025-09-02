nama saya : Wahyu Dwi Ardhani
usia : 20 Tahun
berat badan : 59.0 kg
tinggi badan : 163 cm
prodi saya : teknik informatika
kelas 5if3
status mahasiswa = inaktive = aktive

# deskripsi singkat program
Input data: nama, jam kerja, upah per jam, dan status karyawan (tetap/kontrak).
Hitung gaji kotor = jam kerja × upah per jam.
Tentukan pajak:
Tetap → 10% dari gaji kotor
Kontrak → 5% dari gaji kotor
Hitung gaji bersih = gaji kotor – pajak.
Cetak hasil berupa slip gaji lengkap (nama, jam kerja, upah, status, gaji kotor, pajak, gaji bersih).

# intruksi cara menjalankan program
pertama - tama deklarasi data karyawan
nama → menyimpan nama karyawan (String).
jamKerja → jumlah jam kerja dalam seminggu (int).
upahPerJam → upah yang diterima per jam (double).
statusTetap → status karyawan, apakah tetap (true) atau kontrak (false) (bool).

kemudian kita menghitung gaji kotor yaitu "double gajikotor" = jam kerja * upah perjam;

menghitung pajak
Jika karyawan tetap (true) → pajak = 10% dari gaji kotor.

Jika kontrak (false) → pajak = 5% dari gaji kotor

menghitung gaji bersih "double gajibersih" = gajikotor - pajak;

menampilkan slip gaji
Program mencetak hasil dalam format slip gaji:
Nama karyawan
Jam kerja
Upah per jam
Status karyawan (Tetap/Kontrak)
Gaji kotor
Pajak
Gaji bersih 
dan berikut contoh output dari program
Nama Karyawan : kawa
Jam Kerja     : 20 jam/minggu
Upah per Jam  : Rp 25000.0
Status        : Tetap
Gaji Kotor    : Rp 500000.0
Pajak         : Rp 50000.0
Gaji Bersih   : Rp 450000.0
# 