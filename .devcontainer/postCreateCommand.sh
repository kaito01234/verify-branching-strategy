#!/bin/bash

# set alias
echo 'alias ll="ls -alF"' >> ~/.bash_aliases
echo 'alias g="git"' >> ~/.bash_aliases
echo 'alias d="docker"' >> ~/.bash_aliases
echo 'alias dc="docker compose"' >> ~/.bash_aliases
echo 'alias sso="source /workspaces/nextgen_payroll_infra/aws_connect.sh"' >> ~/.bash_aliases

# setup volta
volta setup
