FROM python:2-alpine3.8
MAINTAINER Bobby McKinnon "bmk@compado.com"
EXPOSE 5000 5001
ADD ./requirements.txt /sixpack/
RUN apk add build-base; \
  pip install -r /sixpack/requirements.txt
VOLUME /sixpack
ENV PYTHONPATH=/sixpack \
  SIXPACK_CONFIG=/sixpack/docker-config.yml \
  SIXPACK_PORT=5000
CMD /sixpack/bin/sixpack
