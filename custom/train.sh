#!/bin/sh
python train.py $1 \
  --device=cpu \
  --compile=False \
  --eval_iters=20 \
  --log_interval=1 \
  --eval_interval=40 \
  --max_iters=120 \
  --block_size=64 \
  --batch_size=12 \
  --n_layer=4 \
  --n_head=4 \
  --n_embd=128 \
  --dropout=0.0 \
  --init_from="$2"