# Shift Modul 1 SISOP

1. Pertama, kita menginstall 
``` bash
sudo apt-get install unzip 
```
untuk dapat menggunakan unzip di linux terminal.
lalu kita membuat sebuah bash script yang berisi

``` bash
i=0

for filename in Downloads/nature/*.jpg
do
  base64 -d "$filename" | xxd -r > "$i"_gambar.jpg
done
```
dengan menggunakan base64 -d kita dapat men-decode dari base64 ke file yang aslinya.
dalam soal ini, base64 yang sudah kita decode, berubah menjadi hexdump.

kita lanjutkan menggunakan xxd yang dapat men-decode hex menjadi file yang aslinya.
lalu kita gunakan variabel i sebagai penamaan file agar dapat terurut.


-- Soal Shift SISOP modul 1 Tahun Ajaran 2018/2019
