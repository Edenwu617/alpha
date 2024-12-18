nohup python main.py --rs_type General --clear_checkpoints --saveID mf --no_wandb --dataset amazon_movie --model_name MF --n_layers 0 --patience 20 --cuda 0 --Ks 5 &> logs/amazon_movie_origin_mf.log &
nohup python main.py --rs_type General --clear_checkpoints --saveID lgn --no_wandb --dataset amazon_movie --model_name LightGCN --n_layers 2 --patience 20 --cuda 1 --Ks 5 &> logs/amazon_movie_origin_lgn.log &
nohup python main.py --rs_type General --clear_checkpoints --saveID mvae --no_wandb --dataset amazon_movie --model_name MultVAE --n_layers 0 --patience 20 --cuda 2 --Ks 5 &> logs/amazon_movie_origin_mvae.log &
nohup python main.py --rs_type General --test_only --no_wandb --model_name Pop --dataset amazon_movie --Ks 5 &> logs/amazon_movie_pop.log &
python main.py --rs_type General --test_only --no_wandb --model_name Random --dataset amazon_movie --Ks 5
