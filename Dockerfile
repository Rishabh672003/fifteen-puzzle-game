# Step 1: Use an official Node.js image as the base image
FROM node:18-alpine

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json (if available) to install dependencies
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application source code into the container
COPY . .

# RUN npm install -D webpack-cli
# RUN npx webpack build --config webpack.prod.js

# Step 6: Expose the port the app will run on
EXPOSE 3000

# Step 7: Define the command to start the application
CMD ["node", "server.js"]
