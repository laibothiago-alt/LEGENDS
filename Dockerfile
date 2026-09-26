FROM nginx:1.27-alpine
COPY index.html style.css game.js /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/
EXPOSE 80
