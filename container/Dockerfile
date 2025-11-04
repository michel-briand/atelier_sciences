FROM debian:trixie-slim AS base

# stop package cleanup on exit
RUN rm /etc/apt/apt.conf.d/docker-clean

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update && \
    apt-get install -y \
curl \
gnupg \
openssh-client \
emacs-nox \
texlive-base \
texlive-binaries \
texlive-extra-utils \
texlive-font-utils \
texlive-fonts-extra \
texlive-fonts-extra-links \
texlive-fonts-recommended \
texlive-lang-french \
texlive-lang-greek \
texlive-latex-base \
texlive-latex-extra \
texlive-latex-recommended \
texlive-luatex \
texlive-metapost \
texlive-pictures \
texlive-plain-generic \
texlive-pstricks \
texlive-science \
texlive-xetex

