FROM node:20-alpine

WORKDIR /baemin_fe_next

COPY package.json yarn.lock ./

RUN yarn config set network-timeout 3000000
RUN yarn install --frozen-lockfile

COPY . .
RUN yarn build

EXPOSE 3000
CMD ["yarn", "start"]

# docker build . -t img-baemin_fe_next

# docker run -d -p 3002:3000 --name cons-baemin_fe_next img-baemin_fe_next