FROM node:20-alpine

WORKDIR /app

# Copy dependency files first (better cache)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Vite default port
EXPOSE 5173

# Start Vite dev server and expose to host
CMD ["npm run dev"]