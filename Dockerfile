FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /webapp

# Copy application files into /app
COPY . .

# Install dependencies
RUN npm install

# Expose the port your app runs on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]


