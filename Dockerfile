FROM creepinson/pnpm

# Install Dependencies
RUN apk add --no-cache bash curl jq

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["help"]