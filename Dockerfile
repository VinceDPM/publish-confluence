FROM python:3.8.1

USER root

RUN pip install -r requirements.txt

RUN pip install \
  sphinxcontrib-confluencebuilder \
  recommonmark \

COPY entrypoint entrypoint

ENTRYPOINT ["/entrypoint"]
