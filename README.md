# Shift Modul 1 SISOP

1. 
``` bash
i=0

for filename in Downloads/nature/*.jpg
do
  base64 -d "$filename" | xxd -r > "$i"_gambar.jpg
  a=$((a+1))
done
```
- dengan menggunakan base64 -d kita dapat men-decode dari base64 ke file yang aslinya.
dalam soal ini, base64 yang sudah kita decode, berubah menjadi hexdump.

- kita lanjutkan menggunakan xxd yang dapat men-decode hex menjadi file yang aslinya.
lalu kita gunakan variabel i sebagai penamaan file agar dapat terurut.

- setelah menuliskan bash, kita masukkan perintah cronjob
``` bash
crontab -e
```
perintah cron untuk jadwal 14:14 pada tanggal 14 Februari ialah sebagai berikut
``` bash
14 14 * 2 5 ~/Downloads/no1.sh
```

2.
  A.
  ``` bash
  Ajadi=${awk -F "," '{if($7 == "2012"){a[$1]+=$10}} END {for(negara in a){print negara}}' WA_Sales_Products_2012-14.csv | sort -nr | head -1)
  echo $Ajadi
  ```
  
  - menggunakan perintah awk dengan opsi -F untuk memisahkan per kolum yang menggunakan ","
  - ``` bash if($7 == "2012"){a[$1]+=$10}``` digunakan untuk menyaring semua data yang berasal dari tahun 2012, dan memasukkan tiap banyak produk ke dalam array a[nama negara]
  - ``` bash END {for(negara in a){print negara}}``` mem-print tiap negara yang telah dimasukkan banyak produk ke tiap array negara nya
  - ``` bash WA_Sales_Products_2012-14.csv | sort -nr | head -1``` mengambil data dari csv dan diurutkan dari tertingggi (perintah -nr), lalu mengambil data paling teratas (head -1)
  
  B.
  ``` bash
  Bjadi=$(awk -F "," '{if($7 == "2012" && $1 -eq $Ajadi){b[$4]+=$10}} END {for(proLin in b){print proLin}}' WA_Sales_Products_2012-14.csv | sort -nr | head -3)
  echo $Bjadi
  ```
  
  - seperti 2.A, kita hanya membedakan dalam parameter if, yaitu menggunakan variabel dari $Ajadi sebagai hasil dari soal 2.A
  - dan juga menggunakan head -3 untuk menampilkan 3 hasil terbesar
  
  C.
  ``` bash
  awk -F "," '{if($7 == "2012" && $1 -eq $Ajadi && $4 -eq $Bjadi){c[$6]+=$10}} END {for(prod in c){print prod}}' WA_Sales_Products_2012-14.csv | sort -nr | head-1
  ```
  
  - seperti 2.A dan 2.B, yang dibedakan ialah parameter fungsi, menggunakan $Ajadi dan $Bjadi
  
-- Soal Shift SISOP modul 1 Tahun Ajaran 2018/2019
