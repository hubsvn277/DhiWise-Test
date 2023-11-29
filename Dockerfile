# Use the official Node.js 16 base image
FROM node:18

# Set environment variables for configuration
ENV APP_PORT=3000
ENV APP_HOST=localhost

# Set default values for environment variables
ENV DB_HOST=default-db-host
ENV DB_PORT=5432

# Set the working directory in the container
WORKDIR /app

# Clone the repository
RUN git clone https://github.com/hubsvn277/DhiWise-Test .

# Install dependencies and start the application
RUN npm install --force && npm start

# Expose the application port
EXPOSE $APP_PORT

# Add labels for better maintainability
LABEL maintainer="Your Name <your.email@example.com>"
LABEL version="1.0"

# Set the command to run the application
CMD ["npm", "start"]
