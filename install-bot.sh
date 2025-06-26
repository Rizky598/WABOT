#!/data/data/com.termux/files/usr/bin/bash

# Warna buat efek
green='\033[0;32m'
nc='\033[0m'

echo -e "${green}🚀 Memulai setup BOT WhatsApp Rizky...${nc}"

# Update & install dependensi dasar
pkg update -y && pkg upgrade -y
pkg install nodejs git python -y

# Cek versi Node
echo -e "${green}✔️ Versi NodeJS: $(node -v)${nc}"

# Install PM2 untuk background task
npm install -g pm2

# Clone repo kamu (ganti kalau beda)
echo -e "${green}📥 Meng-clone project bot...${nc}"
git clone https://github.com/Rizky598/WABOT.git
cd WABOT

# Ekstrak file bot (pastikan file ada)
echo -e "${green}🗃️ Mengekstrak file bot...${nc}"
tar -xvzf archive-2025-06-26T065303Z.tar.gz

# Masuk ke folder hasil ekstrak
cd extracted_bot

# Install semua dependensi
echo -e "${green}📦 Menginstall dependencies...${nc}"
npm install

# Jalankan bot dengan pm2
echo -e "${green}🤖 Menjalankan bot di background...${nc}"
pm2 start index.js --name botwa

# Simpan agar auto-start saat boot Termux
pm2 save