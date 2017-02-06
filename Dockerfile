FROM node:7.4.0

RUN useradd --user-group --create-home --shell /bin/false app

ENV HOME=/home/app
WORKDIR $HOME

RUN npm install -g @angular/cli@1.0.0-beta.30 && \
    npm install -g rxjs && \
    npm cache clean

EXPOSE 4200