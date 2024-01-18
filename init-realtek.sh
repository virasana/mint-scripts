#!/usr/bin/env bash

ethtool -K enp3s0f2 tso off
sudo ethtool -k enp3s0f2 | grep 'tcp-segmentation-offload'

