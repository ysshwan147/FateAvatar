MODEL_NAME="FateAvatar"
CONFIG_PATH="./config/fateavatar.yaml"
DATASET_PATH="./data/insta/ysh"
EXP_DIR="./workspace/insta/ysh"
EXP_NAME="fateavatar_insta_ysh"

python train_mono_avatar.py --model_name $MODEL_NAME --config $CONFIG_PATH --root_path $DATASET_PATH \
    --workspace $EXP_DIR --name $EXP_NAME

python train_generate_pseudo.py --model_name $MODEL_NAME --config $CONFIG_PATH --workspace $EXP_DIR \
    --name $EXP_NAME

# python train_full_avatar.py --model_name $MODEL_NAME --config $CONFIG_PATH --root_path $DATASET_PATH \
#     --workspace $EXP_DIR --name $EXP_NAME

python train_neural_baking.py --config $CONFIG_PATH --root_path $DATASET_PATH \
    --workspace $EXP_DIR --name $EXP_NAME


python avatar_edit_baked.py \
    --config $CONFIG_PATH \
    --root_path $DATASET_PATH \
    --workspace $EXP_DIR \
    --name $EXP_NAME \
    --style_name "mount"
