FROM node:11.12.0
WORKDIR /home/game-score
COPY . /home/game-score
RUN yarn config set registry https://registry.npm.taobao.org/
RUN yarn
RUN APP_NETWORK_KEY=mainnet yarn build
EXPOSE 3000
CMD yarn start