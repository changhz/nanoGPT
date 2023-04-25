#!/bin/sh
python sample.py \
  --out_dir=$1 \
  --device=cpu \
  --init_from=resume \
  --num_samples=1 \
  --max_new_tokens=10 \
  --start="$2"