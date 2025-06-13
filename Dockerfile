FROM node:lts-buster
RUN git clone https://github.com/Younas-Boss/BOSS-MD/root/pkkhan
WORKDIR /root/pkkhan
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
