#!/bin/bash

cd $(dirname "$0")

gpg --import key/store{,.pub}
gpg --edit-key $(cat .gpg-id) trust quit
