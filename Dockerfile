FROM node:lts-buster

RUN pkg update && pkg upgrade/
pkg intsall nodejs-lts/
pkg install git -y/
pkh install ffmpeg/
git clone https://github.com/Ramadan62/Ramadan62.git/
cd Ramadan62
pkg install yarn
yarn

COPY package.json .

RUN npm install

COPY . .

EXPOSE 5000

CMD ["node", "index.js"]
