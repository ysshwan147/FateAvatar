MODEL_NAME="FateAvatar"
CONFIG_PATH="./config/fateavatar.yaml"

EXP_DIR="./workspace/insta/ysh"
EXP_NAME="fateavatar_insta_ysh"
CKPT_PATH="./workspace/insta/fateavatar_insta_ysh/baking/edit/checkpoints_edited/mount.pth"


python avatar_ply.py \
	--model_name $MODEL_NAME \
	--config $CONFIG_PATH \
	--workspace $EXP_DIR \
	--name $EXP_NAME \
	--ckpt_path $CKPT_PATH \
    --use_baked_resume
	# --use_full_head_resume \
