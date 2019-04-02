#!/bin/bash

cd $(dirname "$0")

gpg --import store{,.pub}
gpg --edit-key $(cat .gpg-id) trust quit
