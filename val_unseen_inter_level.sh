CUDA_VISIBLE_DEVICES=0 python -m torch.distributed.launch --nproc_per_node=1 --use_env eval.py --batch_size 32 --num_workers 4 --bert_enc_num 12 --detr_enc_num 6 --backbone resnet50 --dataset referit --max_query_len 40 --eval_set inter_class_val_unseen_no_negative --eval_model /mnt/hdd/davidwong/models/TransVG/inter_class_train_no_negative/best_checkpoint.pth --output_dir /mnt/hdd/davidwong/models/TransVG/marinedet_inter_class_val_unseen_no_negative --data_root /mnt/hdd/davidwong/data/VLTVG/data --split_root /mnt/hdd/davidwong/data/VLTVG/split/data --dataset marinedet 