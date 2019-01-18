#!/bin/bash

# download data
wget https://s3.us-east-2.amazonaws.com/criteo-uplift-dataset/criteo-uplift.csv.gz

# unzip 
gunzip criteo-uplift.csv.gz

# create google storage bucket via UI. 
gsutil cp criteo-uplift.csv gs://uplift-criteo

# might need to run this auth command
gcloud auth login

# go to BigQuery UI and select create dataset, then create table (import from google stroage). I used auto select schema