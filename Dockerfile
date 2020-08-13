FROM creepinson/pnpm

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["help"]
