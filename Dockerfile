# FROM node:16

# WORKDIR /Frontend/usr/src/app

# COPY ./Frontend/package*.json ./



# RUN npm install -g npm@9.6.6

# RUN npm install
# ENV REACT_APP_BACKEND_URL=http://backend:5000
# COPY ./Frontend .

# CMD [ "npm", "start" ]



FROM node:18

WORKDIR usr/src/app

COPY package*.json ./

RUN npm install -g npm@9.6.6

RUN npm install

COPY . .

CMD [ "npm", "start" ]