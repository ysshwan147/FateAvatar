SUBJECT="empty"

if [ -n "$1" ]; then SUBJECT=${1}; fi

MODEL_NAME="FateAvatar"
CONFIG_PATH="./config/fateavatar.yaml"

EXP_DIR="./workspace/insta/$SUBJECT"
EXP_NAME="fateavatar_insta_$SUBJECT"
STYLE_NAME="mount"
CKPT_PATH="$EXP_DIR/baking/edit/checkpoints_edited/$STYLE_NAME.pth"


python avatar_ply.py \
	--model_name $MODEL_NAME \
	--config $CONFIG_PATH \
	--workspace $EXP_DIR \
	--name $EXP_NAME \
	--ckpt_path $CKPT_PATH \
	--subject $SUBJECT \
    --use_baked_resume
	# --use_full_head_resume \
