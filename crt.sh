#!/bin/bash
# Kullanıcıdan hedef domain (target) al
echo "Lütfen hedef domain (target) girin (örn: example.com):"
read target

# Kullanıcıdan hedef domain alındı, şimdi işlem başlatılıyor
echo "Hedef domain: ${target}. Subdomain'ler alınmaya başlanıyor..."

# ASCII sanatını ekliyoruz
echo "               _ _       \ \ " 
echo "    .-\"\"\"\"\"-. / \_> /\    |/ "
echo "   /         \.'\`  \`',.--//"
echo " -(    ALİ    I      I  @@\ " 
echo "   \         /'.____.'\___|" 
echo "    '-.....-' __/ | \   (\`)"
echo "curl          /   /  / " 
echo "                 \  \ "

# Girilen hedef domaini ile curl komutunu çalıştır ve çıktıyı sub.txt dosyasına yaz
echo "crt.sh'den subdomain bilgileri alınıyor..."
curl -s "https://crt.sh/?q=%25.${target}&output=json" | jq -r '.[].name_value' | sort -u > sub.txt

# İşlem tamamlandığında kullanıcıya bilgi ver
echo "Subdomain'ler sub.txt dosyasına kaydedildi."

# Sonuç dosyasını kontrol etme
echo "Sonuçları sub.txt dosyasında bulabilirsiniz."
