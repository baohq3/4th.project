FROM node:18-alpine
WORKDIR /app
RUN npm install -g npm@9

# Liệt kê file trong thư mục /app để kiểm tra
RUN ls -al /app

#COPY package*.json .
#COPY packages ./packages
#COPY themes ./themes
#COPY extensions ./extensions
#COPY public ./public
#COPY media ./media
#COPY config ./config
#COPY translations ./translations
RUN npm install
RUN npm run build

EXPOSE 80
CMD ["npm", "run", "start"]
