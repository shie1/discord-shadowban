FROM node:latest
# Create the bot's directory
RUN mkdir -p /app
WORKDIR /app

COPY package.json /usr/src/bot
RUN npm install

COPY . /usr/src/bot

# Start the bot.
CMD ["node", "index.js"]