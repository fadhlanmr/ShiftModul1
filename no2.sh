#2-A
echo "No.2"
echo ""

echo "A.'
Ajadi=${awk -F "," '{if($7 == "2012"){a[$1]+=$10}} END {for(negara in a){print negara}}' WA_Sales_Products_2012-14.csv | sort -nr | head -1)
echo $Ajadi
echo ""
  
echo "B. "
awk -F "," '{if($7 == "2012" && $1 -eq $Ajadi){b[$4]+=$10}} END {for(proLin in b){print proLin}}' WA_Sales_Products_2012-14.csv | sort -nr | head -3
Bjadi=$(awk -F "," '{if($7 == "2012" && $1 -eq $Ajadi){b[$4]+=$10}} END {for(proLin in b){print proLin}}' WA_Sales_Products_2012-14.csv | sort -nr | head -3)
echo ""

echo "C. "
awk -F "," '{if($7 == "2012" && $1 -eq $Ajadi && $4 -eq $Bjadi){c[$6]+=$10}} END {for(prod in c){print prod}}' WA_Sales_Products_2012-14.csv | sort -nr | head-1
