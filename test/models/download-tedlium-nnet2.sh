#! /bin/bash

BASE_URL="https://phon.ioc.ee/~tanela/tedlium_nnet_ms_sp_online.tgz"
TMP_FILE="/tmp/nnet2_model.tgz"

curl -C - -o $TMP_FILE $BASE_URL
tar -zxvf $TMP_FILE
