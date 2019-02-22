awk '
{
  if($0 !~ /sudo/ && $0 ~ /cron/ && NF < 13)
  print $0
}' /var/log/syslog > /home/emak/modul1/no5.log
