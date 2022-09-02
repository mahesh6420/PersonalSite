# Set your base image here
FROM node:16-alpine as node

# Define your work directory here
WORKDIR /app

# Copy your source code to the docker container
COPY . .

# Install dependancies
RUN npm install @angular/cli
RUN npm install

# Expose the container port to outside
EXPOSE 4200

# Start your application
# Start your application
CMD ["npm", "start"]