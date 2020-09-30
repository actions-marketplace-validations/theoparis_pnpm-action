FROM creepinson/alpine-pnpm

RUN apk add bash
RUN pnpm i -g @throw-out-error/data-cli

WORKDIR /usr/src/app

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["help"]
