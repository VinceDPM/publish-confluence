FROM python:3.8.1

USER root

RUN pip install docutils==0.15.2

RUN pip install \
  sqlparse==0.3.0 \
  git+https://github.com/bitprophet/releases/#egg=releases \
  boto3==1.11.13 \
  Sphinx \
  sphinxcontrib-confluencebuilder \
  recommonmark \
  paramiko==2.7.1

COPY entrypoint entrypoint

ENTRYPOINT ["/entrypoint"]
