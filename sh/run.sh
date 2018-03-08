#!/usr/bin/env bash
export bf='/scratch-data/mkakodka/mclv_aaai18/'
export rb="$bf/py/main.py"

nhup "python3 $rb --base-folder $bf \
--sqlite AAAI \
--double \
--log-tour \
--gpu-limit 17 \
--no-discrete \
--phase DATA \
--runs 10 \
--total-epochs 100 \
--warmup-epochs 15 \
--num-hidden 25 32 \
--method MCLV CD PCD \
--k 1 3 10 \
--batch-size 128 \
--learning-rate 1.0 0.1 0.01 0.001 \
--schedule RM10  \
--gpu-id 0 " "AAAI"