FROM node:stretch-slim

# Keep Apollo Server neat UI
# ENV NODE_ENV=production

WORKDIR /app

# COPY files needed by npm install
COPY ["package.json", "package-lock.json*", "./"]

#RUN npm install --production
RUN npm install

# Copy downloaded files to the image
COPY . .

CMD [ "node", "index.js" ]