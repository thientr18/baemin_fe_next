FROM node:20-alpine

WORKDIR /baemin_fe_next

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . .
RUN yarn build

EXPOSE 3000
CMD ["yarn", "start"]

# docker build . -t img-beamin-fe-next

# docker run -d -p 3002:3000 --name cons-beamin-fe-next img-beamin-fe-next