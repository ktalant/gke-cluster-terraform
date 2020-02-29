#!/bin/bash

gcloud iam service-accounts create terraform-sa \
       --description="Used to create gke-cluster" \
       --display-name="terraform-sa"

       
