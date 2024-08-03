#!/bin/bash -ue
cd /workspace/Prot_Pipeline/Prot_Pipeline/Dockerfiles
docker build -t blastp_image -f Dockerfile_blastp .
