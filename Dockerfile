# Use the latest Node.js 14 image
FROM node:alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies including Vite
RUN npm install

# Copy the entire project directory to the working directory
COPY . .

# Expose port 3000 (default Vite development port)
EXPOSE 3000

# Command to start the development server with Vite
CMD ["npm", "run", "dev"]
