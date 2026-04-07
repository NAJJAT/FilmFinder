# Use lightweight Node image
FROM node:20-alpine

# Set working directory inside container
WORKDIR /app

# Copy package.json & package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files
COPY . .

# Expose the port Vite uses
EXPOSE 5173

# Start the dev server (important: use 0.0.0.0 to be accessible from host)
CMD ["sh", "-c", "npm run dev -- --host 0.0.0.0"]
