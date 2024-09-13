FROM node:11.1.0-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json, then install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the application port
EXPOSE 3000

# Set the default command to run tests
CMD ["npm", "test"]
