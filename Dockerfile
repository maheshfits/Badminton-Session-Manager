# --- Stage 1: Builder (Install dependencies and build assets) ---
FROM node:20-alpine AS builder

# Set the working directory for the builder stage
WORKDIR /app

# Copy package.json and package-lock.json first to leverage Docker's build cache
# This layer only needs to be rebuilt if dependencies change
COPY package*.json ./

# Install dependencies (including dev dependencies needed for the build)
RUN npm install

# Copy the rest of the application source code
COPY . .

# Run your build step (e.g., if you have a frontend build)
# If your application is a simple API, you might skip this step or use 'npm run lint' etc.
# RUN npm run build 


# --- Stage 2: Production (Create the final, lightweight image) ---
# Use a smaller base image for the final product
FROM node:20-alpine AS production

# Set environment to production
ENV NODE_ENV=production

# Set the working directory for the production stage
WORKDIR /app

# Copy production-ready node_modules from the builder stage
# We only copy the node_modules needed for production, which are automatically pruned 
# when using a standard Node.js base image and 'npm install' in the builder.
COPY --from=builder /app/node_modules ./node_modules

# Copy the application source code (excluding node_modules from the source directory 
# via a .dockerignore file is highly recommended)
COPY . .

# Expose the port the app runs on (e.g., 3000)
EXPOSE 3000

# Define the command to run the application when the container starts
CMD ["npm", "start"]