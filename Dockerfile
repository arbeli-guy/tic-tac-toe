# Intentionally wrong/bad practices for testing

FROM ubuntu:latest       # Warning: always tag the version explicitly
MAINTAINER Guy Arbeli    # Deprecated instruction
RUN apt-get update        # Warning: should combine with install or use --no-install-recommends
RUN pip install requests  # Warning: pin version when installing packages
ADD . /app               # Warning: use COPY instead of ADD when not extracting
USER root                # Warning: avoid running as root if possible
WHAT yes