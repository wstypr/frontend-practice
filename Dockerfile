FROM node:lts

WORKDIR /app

COPY . .

COPY package*.json ./

RUN npm install -g pnpm@latest
RUN npm install -g serve@latest
RUN pnpm install
RUN pnpm build

CMD ["pnpm", "start"]

EXPOSE 3000