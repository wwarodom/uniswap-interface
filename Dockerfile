FROM node:14.16.0

# for caching optimisations
COPY package*.json /
RUN yarn

# Add http server
RUN yarn add serve
 
COPY . /app
WORKDIR /app

RUN yarn build

ENV PATH /app/node_modules/.bin:$PATH
ENV PORT=5000
ENV HOST=0.0.0.0 

EXPOSE 5000

CMD ["serve", "build"]