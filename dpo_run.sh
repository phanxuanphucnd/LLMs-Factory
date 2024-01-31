deepspeed --num_gpus 4 --master_port=9901 src/train_bash.py \
    --deepspeed configs/ds_config.json \
    --stage dpo \
    --do_train \
    --model_name_or_path Viet-Mistral/Vistral-7B-Chat \
    --adapter_name_or_path models/AMIS/misa-vistral-7b-chat-use_unsloth-lora-3ep-lr5e5-r32-alpha16 \
    --create_new_adapter \
    --dataset comparison_amiskt_vi \
    --template 'llama2' \
    --finetuning_type lora \
    --lora_target all \
    --output_dir models/DPO/misa-vistral-7b-chat-use_unsloth-lora-3ep-lr5e5-r32-alpha16-DPO \
    --per_device_train_batch_size 2 \
    --gradient_accumulation_steps 2 \
    --lr_scheduler_type cosine \
    --logging_steps 20 \
    --save_steps 1000 \
    --learning_rate 1e-5 \
    --num_train_epochs 3 \
    --plot_loss \
    --fp16 \
    --use_unsloth