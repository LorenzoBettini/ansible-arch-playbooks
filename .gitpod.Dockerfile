FROM gitpod/workspace-python-3.11:2024-06-17-10-03-09
# see also https://www.gitpod.io/docs/introduction/languages/python#python-versions
# see also https://hub.docker.com/r/gitpod/workspace-python-3.11/tags

# To try this before committing:
# docker build -f .gitpod.Dockerfile -t gitpod-dockerfile-test .
# docker run -it gitpod-dockerfile-test bash

RUN pip install --upgrade pip

RUN pip install ansible molecule "molecule-plugins[docker]" yamllint ansible-lint

# rsync is required by Molecule when building a Docker image from a custom file
# install-packages is a wrapper for `apt` that helps skip a few commands in the docker env.
RUN sudo install-packages \
    rsync
