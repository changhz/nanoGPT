#!/bin/sh
python sample.py \
  --out_dir=$1 \
  --device=cpu \
  --init_from=resume \
  --start="What is the answer to life, the universe, and everything?" \
  --num_samples=5 --max_new_tokens=100