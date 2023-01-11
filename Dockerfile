FROM node:latest
# Create the bot's directory
RUN mkdir -p /app
WORKDIR /app

COPY package.json /app
RUN npm install

COPY . /app

# Start the bot.
CMD ["node", "index.js"]