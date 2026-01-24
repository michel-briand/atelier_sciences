FROM debian:trixie-slim AS base

# stop package cleanup on exit
RUN rm /etc/apt/apt.conf.d/docker-clean

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update

RUN apt-get install -y \
    locales \
    localepurge

# Enable locales fr_FR.UTF-8 and en_US.UTF-8
# and regenerate locales
RUN for i in \
    en_US \
    fr_FR \
    ; do \
        sed -e "s/#[ ]*$i.UTF-8 UTF-8/$i.UTF-8 UTF-8/" -i /etc/locale.gen ; \
    done
RUN dpkg-reconfigure locales

# Install Emacs and LaTeX packages
RUN apt-get install -y \
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
    texlive-xetex \
    texlive-latex-extra \
    git \
    make \
    latexmk \
    less

RUN mkdir /emacs
COPY emacs-install /emacs/init.el
RUN emacs --batch --load /emacs/init.el

# Add node for github/gitea actions capability
RUN apt-get install -y \
    nodejs
