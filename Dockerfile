# using Node v10
FROM node:10

# Create app directory
WORKDIR /usr/src/lafs

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm install -g @angular/cli
RUN npm install
# If you are building your code for production
# Run npm ci --only=production

# Bundle app source
COPY . .

# Expose port 4200 outside container
EXPOSE 4200
# Command used to start the application
CMD ["ng", "serve", "--host=0.0.0.0"]
