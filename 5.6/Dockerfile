#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#
FROM mileschou/phalcon:5.6-alpine

LABEL repository="https://github.com/MilesChou/phalcon-action" \
    homepage="https://github.com/MilesChou/phalcon-action"

# Install the devtools
RUN docker-phalcon-install-devtools

COPY phalcon-dev-entrypoint /usr/local/bin/phalcon-dev-entrypoint

ENTRYPOINT ["/usr/local/bin/phalcon-dev-entrypoint"]
