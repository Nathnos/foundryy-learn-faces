export MODEL_NAME="runwayml/stable-diffusion-v1-5"
export DATA_DIR="cropped_selfies"

accelerate launch textual_inversion.py \
  --pretrained_model_name_or_path=$MODEL_NAME \
  --train_data_dir=$DATA_DIR \
  --learnable_property="object" \
  --placeholder_token="<@>" --initializer_token="@" \
  --resolution=512 \
  --train_batch_size=2 \
  --gradient_accumulation_steps=1 \
  --max_train_steps=2500 \
  --learning_rate=0.008 --scale_lr \
  --lr_scheduler="linear" \
  --lr_warmup_steps=0 \
  --num_train_epochs=1 \
  --checkpointing_steps=500 \
  --output_dir="embeddings"
