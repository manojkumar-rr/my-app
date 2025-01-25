# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY src/ ./src

# Expose the application port (optional, depending on your app)
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
