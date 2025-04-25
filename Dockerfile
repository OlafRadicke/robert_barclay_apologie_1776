# BUILD ENV ###################################################################
FROM alpine:3.20 AS build
ARG TARGET_URL=https://apologie.the-independent-friend.de
ARG HUGO_SRC=/tmp/hugo_src
ARG HUGO_PUB=/tmp/hugo_public

COPY ./hugo  ${HUGO_SRC}

RUN apk add \
		curl \
		git \
		hugo

RUN mkdir -p ${HUGO_SRC} \
		${HUGO_PUB}

RUN hugo version
RUN hugo \
		--panicOnWarning \
		--source ${HUGO_SRC} \
		--destination ${HUGO_PUB} \
		--baseURL ${TARGET_URL}

# RUN ENV #####################################################################

FROM nginx:1.25-alpine
ARG HUGO_PUB=/tmp/hugo_public
COPY --from=build ${HUGO_PUB}  /usr/share/nginx/html
