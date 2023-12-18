FROM fedora

RUN dnf install ansible -y
RUN dnf install git-all -y
RUN dnf install stow -y
RUN dnf install nodejs -y

RUN groupadd -g 1000 tester
RUN useradd -m -g tester -u 1000 -s /bin/bash tester

USER tester

ENV USER=tester

WORKDIR /home/tester/.dotfiles/
COPY ./ /home/tester/.dotfiles

