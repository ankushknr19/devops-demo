#Choose base OS and install Node JS
FROM node:18-alpine

#create a project directory
WORKDIR /app

#copy files required for to initialize the project
COPY package*.json .

#install project dependencies
RUN npm install

#copy application code
COPY src src

#expose the port that the application will run on
EXPOSE 8080

#use a non-root user
USER node

#Run the application
CMD ["node", "src/index.js"]
