FROM node:latest

LABEL version="2.0.0"
LABEL repository="http://github.com/creepinson/pnpm"
LABEL homepage="http://github.com/creepinson/pnpm"
LABEL maintainer="Theo Paris <theoparisdesigns@gmail.com>"

COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

RUN curl -L https://unpkg.com/@pnpm/self-installer | node

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
