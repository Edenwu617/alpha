abstract_data TrainDataset train_user_list nu_info
title 是提前处理了？存在item_info
MF 等是原始实现，本文的linear在AlphaRec实现
python main.py --rs_type General --clear_checkpoints --saveID tau_0.15_v3_mlp_ --dataset amazon_movie --model_name AlphaRec --n_layers 2 --patience 20 --cuda 1 --no_wandb --train_norm --pred_norm --neg_sample 256 --lm_model v3 --model_version mlp --tau 0.15 --infonce 1 &>logs/amazon_movie_tau_0.15_v3_mlp__2.log 

python main.py --rs_type General --clear_checkpoints --saveID mf --no_wandb --dataset amazon_movie --model_name MF --n_layers 0 --patience 20 --cuda 0 --Ks 5 &> logs/amazon_movie_origin_mf.log