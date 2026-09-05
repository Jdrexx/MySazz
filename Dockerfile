FROM node:22-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci --only=production && npm cache clean --force

COPY . .

RUN npm run frontend:build

# Run as an unprivileged user — the node image ships one.
RUN chown -R node:node /app && mkdir -p /data && chown -R node:node /data
USER node

EXPOSE 3000

ENV NODE_ENV=production \
    PORT=3000

CMD ["npm", "start"]
