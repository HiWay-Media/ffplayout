FROM node:19-alpine AS dependencies
RUN apk add --no-cache libc6-compat git
WORKDIR /home/app
COPY .npmrc ./
COPY package.json ./
COPY package-lock.json ./
RUN npm install
#
FROM node:19-alpine AS builder
WORKDIR /home/app
RUN apk add --no-cache libc6-compat git
COPY --from=dependencies /home/app/node_modules ./node_modules
COPY . .
ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}
RUN npm run build
#
FROM node:19-alpine AS runner
RUN apk add --no-cache curl
WORKDIR /app
ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}
#
COPY --from=builder /home/app/ .
#EXPOSE 3000
#ENV PORT 3000
#
CMD ["node", "standalone/server.js"]
#
