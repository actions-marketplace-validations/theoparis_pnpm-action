FROM node:current-alpine

# Install Dependencies
RUN apk add --no-cache bash curl jq

RUN curl -sL https://unpkg.com/@pnpm/self-installer | node

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["help"]