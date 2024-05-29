# Use Node.js LTS as base image
FROM node:lts-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock to the working directory
COPY package.json package-lock.json ./

# Install dependencies with npm
RUN npm install

# Copy the rest of the application
COPY . .


# RUN npm build

# Expose the port your app runs on
EXPOSE 80

# Command to run your app
CMD ["npm","start"]