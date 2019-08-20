#!bin/bash
set -ex
python3.5 -m visdom.server -p 8097 &
env no_proxy=localhost  python3.5 train.py --dataroot ./datasets/cityscapes --name cityscapes_pix2pix --model pix2pix --netG unet_256 --direction BtoA --lambda_L1 100 --dataset_mode aligned --norm batch --pool_size 0
