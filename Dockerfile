FROM node:20-alpine

WORKDIR /baemin_nextjs

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . .
RUN yarn build

EXPOSE 3000
CMD ["yarn", "start"]

# docker build . -t img-next-baemin

# docker run -d -p 3002:3000 --name cons-next-baemin img-next-baemin