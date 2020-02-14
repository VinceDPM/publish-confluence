FROM python:3.8

USER root

RUN pip install \
  Sphinx \
  sphinxcontrib-confluencebuilder \
  recommonmark \
  flake8==3.7.9 \
  black==19.10b0 \
  sqlparse==0.3.0 \
  git+https://github.com/bitprophet/releases/#egg=releases \
  boto3==1.11.13 \
  paramiko==2.7.1

COPY entrypoint entrypoint

ENTRYPOINT ["/entrypoint"]
