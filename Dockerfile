FROM debian:stretch

RUN apt-get update \
        && apt-get install -y \
        gawk \
        perl \
        sed \
        git \
        python3 \
        python3-pip \
        pandoc \
        biber \
        latexmk \
        texlive \
        texlive-science \
        texlive-fonts-extra \
        texlive-generic-recommended \
        texlive-bibtex-extra

RUN pip3 install rst2html5

WORKDIR "/zips"
ENTRYPOINT ["make", "all"]
