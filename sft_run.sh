deepspeed --num_gpus  --master_port=9901 src/train_bash.py \
    --deepspeed configs/ds_config.json \
    --stage sft \
    --do_train \
    --model_name_or_path Viet-Mistral/Vistral-7B-Chat \
    --dataset makt_labeled_7k7_vi \
    --template 'llama2' \
    --finetuning_type lora \
    --lora_target all \
    --output_dir models/AMIS/misa-vistral-7b-chat-lora-4ep-lr5e5-r32-alpha16-7k7 \
    --overwrite_cache \
    --overwrite_output_dir \
    --per_device_train_batch_size 1 \
    --gradient_accumulation_steps 1 \
    --lr_scheduler_type cosine \
    --cutoff_len 4000 \
    --logging_steps 20 \
    --save_steps 1000 \
    --learning_rate 5e-5 \
    --num_train_epochs 4 \
    --plot_loss \
    --lora_rank 32 \
    --lora_alpha 16 \
    --fp16 \
    --use_unsloth