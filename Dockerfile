FROM node:16-alpine

# Create app directory
WORKDIR /my-app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "index.js" ]

#there is no start command here for npm start. For it to work, I'll have to add the below code.
#"start": "node index.js" in the script section of package.json 
