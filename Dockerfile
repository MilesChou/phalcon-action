FROM mileschou/phalcon

LABEL "repository"="https://github.com/MilesChou/actions-phalcon"
LABEL "homepage"="https://github.com/MilesChou/actions-phalcon"
LABEL "maintainer"="Miles Chou <jangconan@gmail.com>"

LABEL "com.github.actions.name"="Run with Phalcon"
LABEL "com.github.actions.description"="An action for running project with Phalcon framework environment"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="black"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
