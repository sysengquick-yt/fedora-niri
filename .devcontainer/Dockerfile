# start from python 3.11
FROM python:3.11-slim

# set useful environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHONDONTWRITEBYTECODE=1

# upgrade all packages
RUN apt-get update && apt-get upgrade -y

# install required packages
RUN apt-get install -y --no-install-recommends \
    bash-completion \
    iputils-ping \
    git \
    less \
    openssh-client \
    sshpass \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# install ansible packages
RUN python3 -m pip install 'ansible-core<2.17' ansible-lint

# enable git bash completion
RUN echo ". /etc/bash_completion" >> /root/.bashrc

# add better prompt
COPY .devcontainer/prompt.sh /etc/profile.d/prompt.sh
RUN echo ". /etc/profile.d/prompt.sh" >> /root/.bashrc

# install ansible collections
COPY collections/requirements.yml /tmp/
RUN ansible-galaxy collection install -r /tmp/requirements.yml \
  && rm -f /tmp/requirements.yml

# use bash instead of python as our default command
CMD ["/bin/bash"]
