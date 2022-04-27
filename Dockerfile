FROM cypress/browsers:node16.14.0-slim-chrome99-ff97
# crea el directorio
RUN mkdir /cypress-project
# asigna el directorio de trabajo
WORKDIR /cypress-project
# copia las carpetas requeridas desde el proyecto, el punto copia en /cypress-project
COPY ./cypress.json .
COPY ./package.json .
COPY ./cypress ./cypress
RUN npm install
ENTRYPOINT ["npx","cypress", "run"]
# para pasar parametros como --spec, --env
CMD [""]

# crear la imagen:
# docker build -t  my-image:v1  .
