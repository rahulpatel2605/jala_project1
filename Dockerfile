# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code to the container
COPY . .

# Expose port 3000 for the application
EXPOSE 3000

# Define the command to start the application
CMD [ "node", "app.js" ]
