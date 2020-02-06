#!/bin/bash

awk -f ./convert-to-bind.awk ec2-hostnames.txt > ec2-bind.txt
