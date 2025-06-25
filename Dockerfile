# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install any dependencies
RUN npm install

# Bundle app source
COPY . .

# Define environment variable
ENV NODE_ENV=production

# Expose port
EXPOSE 8080

# Run the application
CMD ["node", "app.js"]