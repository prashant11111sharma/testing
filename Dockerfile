# Use Node.js 18.x LTS as the build environment
FROM node:20.10.0 AS build

# Set the working directory in the container
WORKDIR /usr/app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
#RUN npm i husky
RUN npm install --force
#RUN npm install --global pm2

# Copy the source code to the container
COPY . .

# Build the application
# RUN npm install --production
#RUN npm install -D webpack-cli
RUN npm run build 

# Use the official NGINX image as the base image
FROM nginx:latest

# Remove the default NGINX configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the NGINX configuration file to the container
COPY nginx.conf /etc/nginx/conf.d/

# Copy the build files to the NGINX HTML directory
COPY --from=build /usr/app/build/ /usr/share/nginx/html

# Set the permissions for the HTML directory and its contents
RUN chmod -R o+rX /usr/share/nginx/html

# Expose port 80
#EXPOSE 80

# Launch app with PM2
#CMD [ "start", "npm", "--", "start" ]
