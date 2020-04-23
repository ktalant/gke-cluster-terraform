#!/usr/bin/env bash
name=$1


gcloud iam service-accounts create $name \
    --description "$name" \
    --display-name "$name"
