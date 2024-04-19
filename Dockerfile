# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Bundle app source inside Docker image
COPY . .

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run npm run serve when the container launches
CMD ["npm", "run", "serve"]