#!/usr/bin/env bash

#export LC_ALL=en_US.UTF-8
#export LANG=en_US.UTF-8


aws ec2 describe-instances --query 'Reservations[].Instances[].[PublicIpAddress,PrivateIpAddress]' --region=us-west-1 --output table
----------------------------------
|        DescribeInstances       |
+--------------+-----------------+
|  54.67.55.30 |  172.31.30.246  |
+--------------+-----------------+
aws ec2 describe-instances --query 'Reservations[].Instances[].[PublicIpAddress,PrivateIpAddress]' --region=us-west-2 --output table
-------------------------------------
|         DescribeInstances         |
+-----------------+-----------------+
|  35.160.99.161  |  172.31.12.3    |
|  35.160.39.119  |  172.31.13.235  |
|  35.160.248.79  |  172.31.12.101  |
|  35.160.249.16  |  172.31.0.50    |
|  35.160.197.14  |  172.31.10.124  |
|  35.160.141.139 |  172.31.3.32    |
|  35.160.233.152 |  172.31.4.57    |
|  35.160.208.227 |  172.31.9.123   |
+-----------------+-----------------+
aws ec2 describe-instances --query 'Reservations[].Instances[].[PublicIpAddress,PrivateIpAddress]' --region=us-east-1 --output table
-------------------------------------
|         DescribeInstances         |
+-----------------+-----------------+
|  184.72.67.35   |  172.31.56.221  |
|  54.164.205.107 |  172.31.20.20   |
|  54.86.131.84   |  172.31.57.89   |
|  184.72.121.195 |  172.31.58.251  |
|  184.72.121.112 |  172.31.55.59   |
|  184.72.121.178 |  172.31.53.195  |
|  54.163.36.174  |  172.31.54.248  |
|  54.234.229.72  |  172.31.53.215  |
+-----------------+-----------------+

#North California: (West1)
54.67.55.30

Oregon: (West2)
msc: 35.160.99.161
all: 35.160.99.161 35.160.197.14 35.160.39.119 35.160.248.79 35.160.249.16 35.160.141.139 35.160.233.152 35.160.208.227

N.Virginia: (East1)
msc: 54.164.205.107
all: 54.164.205.107 184.72.67.35 54.86.131.84 184.72.121.195 184.72.121.112 184.72.121.178 54.163.36.174 54.234.229.72

Interleaved:
35.160.99.161 54.164.205.107 35.160.197.14 184.72.67.35 35.160.39.119 54.86.131.84 35.160.248.79 184.72.121.195 35.160.249.16 184.72.121.112 35.160.141.139 184.72.121.178 35.160.233.152 54.163.36.174 35.160.208.227 54.234.229.72


