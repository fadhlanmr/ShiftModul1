kecil='abcdefghiujklmnopqrstuvwxyz'
gede='ABCDEFGHIJKLMNOPQRSTUVWXYZ'

jam=`date | awk -F ":" '{print $1}' | awk '{print $4}'`
pukul=`date | awk '{print $4}' | awk -F ":" '{print $1":"$2}'`
tanggal=`date | awk '{print $3"-"$2"-"$6}'`

tr "$kecil$gede" "$(kecil:jam)$(kecil:0:n)$(gede:n)$(gede:0:n)" <<< 'cat /var/log/syslog' > ~/modul1/$jam" "$tanggal
