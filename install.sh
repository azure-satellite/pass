#!/bin/bash

cd $(dirname "$0")

gpg --import key/store{,.pub}
gpg --edit-key azure.satellite@gmail.com trust quit
export PASSWORD_STORE_DIR=$PWD
