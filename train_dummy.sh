#!/usr/bin/env bash
./run_wav2vec2_pretrain_flax.py \
    --output_dir="./dummy" \
    --num_train_epochs="1" \
    --per_device_train_batch_size="4" \
    --per_device_eval_batch_size="4" \
    --learning_rate="5e-4" \
    --weight_decay="0.01" \
    --warmup_steps="200" \
    --model_name_or_path="./" \
    --dataset_name="common_voice" \
    --dataset_config_name="cnh" \
    --preprocessing_num_workers="96" \
    --max_duration_in_seconds="20.0" \
    --adam_beta1="0.9" \
    --adam_beta2="0.98" \
    --pad_to_multiple_of="16384" \
    --validation_split_percentage="50" \
    --speech_file_column="path" \
    --dtype="bfloat16" \
	--cache_dir="./data_cache_dummy/" \
    --push_to_hub