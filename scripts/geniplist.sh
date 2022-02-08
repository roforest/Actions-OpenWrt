wget -c http://ftp.apnic.net/stats/apnic/delegated-apnic-latest
cat delegated-apnic-latest | awk -F '|' '/CN/&&/ipv4/ {print $4 "/" 32-log($5)/log(2)}' | tee all_cn.txt
cat delegated-apnic-latest | awk -F '|' '/JP/&&/ipv4/ {print $4 "/" 32-log($5)/log(2)}' | tee all_jp.txt
cat delegated-apnic-latest | awk -F '|' '/KR/&&/ipv4/ {print $4 "/" 32-log($5)/log(2)}' | tee all_kr.txt
cat delegated-apnic-latest | awk -F '|' '/TW/&&/ipv4/ {print $4 "/" 32-log($5)/log(2)}' | tee all_tw.txt
rm -f delegated-apnic-latest
wget -c -q https://gaoyifan.github.io/china-operator-ip/chinanet.txt -O ./chinatelecom.txt
wget -c -q https://gaoyifan.github.io/china-operator-ip/unicom.txt -O ./unicom_cnc.txt
wget -c -q https://gaoyifan.github.io/china-operator-ip/cmcc.txt -O ./cmcc.txt
wget -c -q https://gaoyifan.github.io/china-operator-ip/tietong.txt -O ./crtc.txt
wget -c -q https://gaoyifan.github.io/china-operator-ip/cernet.txt -O ./cernet.txt
