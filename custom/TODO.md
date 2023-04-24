since i only have a crappy laptop, i have installed the cutting edge Pytorch Nightly as suggested in [here](/README.md).

now, i want to see how it performs following the quick start guide.

# TODO: follow the quick start guide

- [x] run `$ python data/shakespeare_char/prepare.py`
  > the script separates the data into `train` set for training and `val` set for validation
  [x] i have to add dataset related files to `.gitignore` because it's disturbing to track them
- [x] now the data has been prepared, i need to run the training using train.sh
  - [x] i wonder what [the config file](/config/train_shakespeare_char.py) does, so i will take a look on it
  - [x] i also need to inspect the [train.py](/train.py) file
    > so at line 76, it reads the config file and use the variables defined in it
  - [x] i wonder if i need to change anything in the config file to suit the hardware of my crappy laptop
    > i realised that the config needed for my laptop have already been specified in the [train.sh](/custom/train.sh)
  - [x] run `sh ./custom/train.sh`
    > i started the training process, in each iteration, i can see that the loss gradually decreases, it feels somewhat satisfying
    > i wonder if i can stop the training at anytime
    > after 2000 iterations, the checkpoint is saved with loss value 1.6985
    > the checkpoint file is `ckpt.pt`
    > i need to ignore the output folder since i don't want to track anything inside it
- [x] i successfully run train.sh, i wonder what i should do now, so i checkout the [readme](/README.md) again
  > according to readme, i need to run `python sample.py --out_dir=out-shakespeare-char --device=cpu`
  > i wonder what [it](/sample.py) does
    it loads the [configurator](/configurator.py)
  > after running sample.py, some gibberish is generated
  > i wonder how i should use the val.bin (maybe it has nothing to do here)
    the val.bin is only used [here](/train.py)