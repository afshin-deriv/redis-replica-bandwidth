FROM perl
COPY . .
# RUN  apt-get update -yq && apt-get install -yq cpanminus && \
RUN cpanm --mirror http://cpan.cpantesters.org/ --notest --no-man-pages --installdeps  .

ENTRYPOINT ["perl", "redis_metrics.pl"]
