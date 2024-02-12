# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json into the container at /app
COPY package*.json ./

# Install dependencies in the container
RUN npm install

# Copy the rest of the application code into the container at /app
COPY . .

# Expose port  8080 for the application
EXPOSE  8080

# Define the command to run the application
CMD [ "npm", "start" ]
