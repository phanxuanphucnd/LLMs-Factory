CUDA_VISIBLE_DEVICES=0 python src/train_bash.py \
    --stage sft \
    --do_train \
    --model_name_or_path jan-hq/Vistral-7B-Chat-DPO \
    --dataset misa_amiskt_labeled_vi \
    --template 'llama2' \
    --finetuning_type lora \
    --lora_target all \
    --output_dir ./models/misa_amiskt/v1.1/misal-7b-dpo-use_unsloth-lora-3ep \
    --overwrite_cache \
    --overwrite_output_dir \
    --per_device_train_batch_size 1 \
    --gradient_accumulation_steps 1 \
    --lr_scheduler_type cosine \
    --cutoff_len 4000 \
    --logging_steps 20 \
    --save_steps 1000 \
    --learning_rate 5e-5 \
    --num_train_epochs 3.0 \
    --plot_loss \
    --lora_rank 32 \
    --lora_alpha 16 \
    --bf16 \
    --use_unsloth