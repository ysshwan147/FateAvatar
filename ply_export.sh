SUBJECT="empty"

if [ -n "$1" ]; then SUBJECT=${1}; fi

MODEL_NAME="FateAvatar"
CONFIG_PATH="./config/fateavatar.yaml"

EXP_DIR="./workspace/insta/$SUBJECT"
EXP_NAME="fateavatar_insta_$SUBJECT"
CKPT_PATH="./workspace/insta/fateavatar_insta_$SUBJECT/baking/edit/checkpoints_edited/mount.pth"


python avatar_ply.py \
	--model_name $MODEL_NAME \
	--config $CONFIG_PATH \
	--workspace $EXP_DIR \
	--name $EXP_NAME \
	--ckpt_path $CKPT_PATH \
    --use_baked_resume
	# --use_full_head_resume \
