#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#
FROM mileschou/phalcon:7.3

LABEL "repository"="https://github.com/MilesChou/phalcon-action"
LABEL "homepage"="https://github.com/MilesChou/phalcon-action"
LABEL "maintainer"="MilesChou <jangconan@gmail.com>"

LABEL "com.github.actions.name"="Phalcon Action"
LABEL "com.github.actions.description"="An action for running project with Phalcon framework environment"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="green"

# Install the devtools
RUN docker-phalcon-install-devtools

COPY phalcon-dev-entrypoint /usr/local/bin/phalcon-dev-entrypoint

ENTRYPOINT ["/usr/local/bin/phalcon-dev-entrypoint"]
