FROM node:16-alpine

WORKDIR /app

COPY package.json .

RUN corepack enable

RUN pnpm install

COPY . .

CMD ["pnpm", "run", "build"]