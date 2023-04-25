#!/bin/sh
python train.py $1 \
  --eval_interval=2 \
  --device=cpu \
  --compile=False \
  --eval_iters=20 \
  --log_interval=1 \
  --block_size=64 \
  --batch_size=12 \
  --n_layer=4 \
  --n_head=4 \
  --n_embd=128 \
  --max_iters=10 \
  --lr_decay_iters=2000 \
  --dropout=0.0 \
  $2