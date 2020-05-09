FROM docker.pkg.github.com/julioarruda/pushimagetoregistry/ubuntu1804:1589062404

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]