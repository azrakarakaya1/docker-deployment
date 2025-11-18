# Official Nginx imajını temel alır
FROM nginx:stable-alpine

# Default Nginx statik dosyalarını siler
RUN rm -rf /usr/share/nginx/html/*

# Root için giriş sayfası
COPY index.html /usr/share/nginx/html/index.html

# İki app i de Nginx in html klasörüne kopyalar
COPY url-launcher /usr/share/nginx/html/url-launcher
COPY qr-generator /usr/share/nginx/html/qr-generator

# Container ın 80 numaralı portunu dışa açar
EXPOSE 80

# Nginx i ön planda çalıştırır
CMD ["nginx", "-g", "daemon off;"]