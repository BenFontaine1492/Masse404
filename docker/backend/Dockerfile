FROM node:20.19.0-alpine

WORKDIR /app

# Install dependencies
COPY backend/package*.json ./
RUN npm ci

# Copy source code
COPY backend/ .

# Expose backend API port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
