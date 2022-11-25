FROM debian:buster

RUN		mkdir /app
WORKDIR	app

COPY	infiniteLoop.sh /app
COPY	.vimrc ~/.vimrc

RUN ["apt-get", "update"]
RUN	apt-get install -y python3 vim python3-pip build-essential \
		libssl-dev libffi-dev python3-dev curl git emacs zsh

ARG OH_MY_ZSH_THEME=cloud
RUN set -eux; \
		sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"; \
		sed -i "s/\(^ZSH_THEME=\).*/\1$OH_MY_ZSH_THEME/" ~/.zshrc;

CMD ["bash", "infiniteLoop.sh"]
