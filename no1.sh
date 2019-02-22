i=0

for filename in Downloads/nature/*.jpg
do
  base64 -d "$filename" | xxd -r > "$i"_gambar.jpg
  a=$((a+1))
done
