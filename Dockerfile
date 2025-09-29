# ใช้ base image ของ nginx
FROM nginx:alpine

# ลบ default config ของ nginx ออก
RUN rm -rf /usr/share/nginx/html/*

# copy index.html เข้าไปใน container
COPY index.html /usr/share/nginx/html/index.html

# ถ้ามีไฟล์ static เพิ่มเติม (CSS, JS, รูป) ก็ COPY ทั้งโฟลเดอร์
# COPY ./static /usr/share/nginx/html/static

# เปิด port 80 สำหรับเว็บ
EXPOSE 80

# รัน nginx
CMD ["nginx", "-g", "daemon off;"]
