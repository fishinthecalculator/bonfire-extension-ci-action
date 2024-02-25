FROM docker:latest as runtime
LABEL "repository"="https://github.com/fishinthecalculator/publish-docker-image-action"
LABEL "maintainer"="Giacomo Leidi"
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

FROM runtime
