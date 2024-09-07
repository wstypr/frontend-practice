FROM node:lts

WORKDIR /app

COPY . .

COPY package*.json ./

RUN npm install -g pnpm@latest
RUN pnpm install
RUN pnpm build

CMD ["pnpm", "start"]

EXPOSE 5174