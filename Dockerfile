FROM httpd:2.4

LABEL maintainer "Raphaël D. Bittan <raphael.bittan@develeap.com>"

ENV REFRESHED_AT 2019-08-07

COPY dist /usr/local/apache2/htdocs/dist
COPY favicon.png /usr/local/apache2/htdocs/dist/
COPY index.html /usr/local/apache2/htdocs/
