#!/bin/sh

options=(
    --splice-config --cmvn-config --lda-matrix --global-cmvn-stats
    --diag-ubm --ivector-extractor --mfcc-config
    --ivector-extraction-config
)

model=$1
if [ ! -d "$model" ]; then
    echo "Usage: $0 new-speech-model-path"
    echo "The model must be in the same path as this script, models/"
    exit 1
fi

for file in $model/conf/*.conf; do
    echo "fixing $file..."
    /bin/cp $file $file.orig
    for option in "${options[@]}"; do
        perl -i -pe "s{^$option=.*/(ivector_extractor|conf/[^/]+)}{$option=models/$model/\$1}" $file
    done
done

echo "updating latest symlink to $model"
/bin/ln -f -s $model latest
