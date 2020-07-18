FROM node:current-alpine

# Install Dependencies
RUN apk add --no-cache bash curl jq
RUN curl -sL https://raw.githubusercontent.com/pnpm/self-installer/master/install.js | node

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["help"]