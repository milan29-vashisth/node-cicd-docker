FROM node:18

# Create app directory
WORKDIR /app

# Copy package files first (for caching)
COPY app/package*.json ./

# Install dependencies
RUN npm install

# Copy rest of app
COPY app/ .

# Expose port
EXPOSE 3000

# Run app
CMD ["npm", "start"]