#!/data/data/com.termux/files/usr/bin/bash

green='\033[0;32m'
nc='\033[0m'

echo -e "${green}✨ Selamat datang di setup BOT WhatsApp by Rizky ✨${nc}"
echo -e "📦 ${green}Mohon bersabar ya, sistem sedang menyiapkan semuanya...${nc}"

sleep 1
echo -e "🔄 ${green}Step 1: Update & Upgrade dulu...${nc}"
pkg update -y && pkg upgrade -y

sleep 1
echo -e "📥 ${green}Step 2: Install Node.js...${nc}"
pkg install nodejs -y

echo -e "🧠 ${green}Cek versi Node:$(node -v)${nc}"

sleep 1
echo -e "📦 ${green}Step 3: Install pm2 untuk background process...${nc}"
npm i -g pm2

sleep 1
echo -e "🚀 ${green}Step 4: Menjalankan bot dengan pm2...${nc}"
pm2 start index.js --name botwa

sleep 1
echo -e "📂 ${green}Step 5: Install git (optional)...${nc}"
pkg install git -y

sleep 1
echo -e "🔧 ${green}Step 6: Install semua module (npm install)...${nc}"
npm install

sleep 1
echo -e "✅ ${green}Step 7: Menjalankan bot langsung juga (node index.js)...${nc}"
node index.js