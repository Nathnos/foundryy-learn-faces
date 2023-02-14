export MODEL_NAME="runwayml/stable-diffusion-v1-5"
export DATA_DIR="cropped_selfies"

accelerate launch textual_inversion.py \
  --pretrained_model_name_or_path=$MODEL_NAME \
  --train_data_dir=$DATA_DIR \
  --learnable_property="object" \
  --placeholder_token="<@>" --initializer_token="@" \
  --resolution=512 \
  --train_batch_size=5 \
  --gradient_accumulation_steps=1 \
  --max_train_steps=2000 \
  --learning_rate=0.01 --scale_lr \
  --lr_scheduler="linear" \
  --lr_warmup_steps=10 \
  --output_dir="embeddings"
