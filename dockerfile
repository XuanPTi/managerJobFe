FROM node:14

RUN npm install -g @angular/cli 

WORKDIR /frontend

COPY package.json .

RUN remove node_modules 

RUN remove package-lock.json

RUN npm install

COPY . .

EXPOSE 4200

CMD ng serve --host 0.0.0.0 