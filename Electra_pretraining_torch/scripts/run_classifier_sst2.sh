CURRENT_DIR=`pwd`
export BERT_BASE_DIR=$CURRENT_DIR/prev_trained_model/electra_small
export DATA_DIR=$CURRENT_DIR/datasets
export OUTPUR_DIR=$CURRENT_DIR/outputs
TASK_NAME="sst-2"
python run_classifier.py \
  --model_type=bert \
  --model_name_or_path=$BERT_BASE_DIR \
  --task_name=$TASK_NAME \
  --do_train \
  --do_eval \
  --do_lower_case \
  --data_dir=$DATA_DIR/${TASK_NAME}/ \
  --max_seq_length=128 \
  --per_gpu_train_batch_size=16 \
  --per_gpu_eval_batch_size=8 \
  --learning_rate=1e-4 \
  --num_train_epochs=3.0 \
  --logging_steps=4210 \
  --save_steps=4210 \
  --output_dir=$OUTPUR_DIR/${TASK_NAME}_output/ \
  --overwrite_output_dir \
  --seed=42

CURRENT_DIR=`pwd`
export BERT_BASE_DIR=$CURRENT_DIR/prev_trained_model/electra_base
export DATA_DIR=$CURRENT_DIR/datasets
export OUTPUR_DIR=$CURRENT_DIR/outputs
TASK_NAME="sst-2"
python run_classifier.py \
  --model_type=bert \
  --model_name_or_path=$BERT_BASE_DIR \
  --task_name=$TASK_NAME \
  --do_train \
  --do_eval \
  --do_lower_case \
  --data_dir=$DATA_DIR/${TASK_NAME}/ \
  --max_seq_length=128 \
  --per_gpu_train_batch_size=16 \
  --per_gpu_eval_batch_size=8 \
  --learning_rate=5e-5 \
  --num_train_epochs=3.0 \
  --logging_steps=4210 \
  --save_steps=4210 \
  --output_dir=$OUTPUR_DIR/${TASK_NAME}_output/ \
  --overwrite_output_dir \
  --seed=42

CURRENT_DIR=`pwd`
export BERT_BASE_DIR=$CURRENT_DIR/prev_trained_model/electra_large
export DATA_DIR=$CURRENT_DIR/datasets
export OUTPUR_DIR=$CURRENT_DIR/outputs
TASK_NAME="sst-2"
python run_classifier.py \
  --model_type=bert \
  --model_name_or_path=$BERT_BASE_DIR \
  --task_name=$TASK_NAME \
  --do_train \
  --do_eval \
  --do_lower_case \
  --data_dir=$DATA_DIR/${TASK_NAME}/ \
  --max_seq_length=128 \
  --per_gpu_train_batch_size=16 \
  --per_gpu_eval_batch_size=8 \
  --learning_rate=1e-5 \
  --num_train_epochs=3.0 \
  --logging_steps=4210 \
  --save_steps=4210 \
  --output_dir=$OUTPUR_DIR/${TASK_NAME}_output/ \
  --overwrite_output_dir \
  --seed=42