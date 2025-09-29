# ใช้ Node.js เวอร์ชัน LTS
FROM node:18-alpine

# ตั้ง working directory
WORKDIR /app

# คัดลอกไฟล์ package.json และติดตั้ง dependencies
COPY package*.json ./
RUN npm install

# คัดลอก source code ทั้งหมด
COPY . .

# เปิด port 3000 (หรือ port ที่ app ของคุณใช้)
EXPOSE 3000

# คำสั่งเริ่มรัน
CMD ["npm", "start"]
