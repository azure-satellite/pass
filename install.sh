#!/bin/bash

cd $(dirname "$0")

gpg --import key/store{,.pub}
gpg --edit-key $(cat .gpg-id) trust quit
export PASSWORD_STORE_DIR=$PWD

pass git remote add origin git@github.com:stellarhoof/pass.git
pass git fetch
pass git branch -u origin/master
