FROM nginx:1.27-alpine
COPY index.html style.css game.js /usr/share/nginx/html/
COPY assets.zip /tmp/assets.zip
RUN apk add --no-cache unzip \
    && unzip -q /tmp/assets.zip -d /usr/share/nginx/html/ \
    && rm /tmp/assets.zip
EXPOSE 80
