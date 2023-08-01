# base alpine image with node
FROM node:17-alpine

# install bash and java
RUN apk update \
    && apk add bash \
    && apk add openjdk11-jre

WORKDIR /project

# # Run as a non root user
RUN addgroup -S gwen && adduser -S gwen -G gwen -u 4936

COPY --chown=gwen:gwen . /project/
RUN yarn install
USER gwen
CMD ["yarn", "gwen", "-b", "-c", "gwen/browsers/browserstack.conf", "gwen/features"]

