FROM node:11.1.0-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application port (if necessary)
EXPOSE 3000

# Command to run your application or tests
CMD ["npm", "test"]
