#!/bin/bash

cd $(dirname "$0")

gpg --import gpg/store{,.pub}
gpg --edit-key $(cat .gpg-id) trust quit
