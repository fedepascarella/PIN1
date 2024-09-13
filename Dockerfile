FROM node:11.1.0-alpine

WORKDIR /app

# Copy package.json and package-lock.json first, then install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the files from your GitHub repository into /app
COPY . .

EXPOSE 3000

CMD ["npm", "test"]

