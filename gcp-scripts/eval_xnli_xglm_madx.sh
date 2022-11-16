tok="bigscience/bloom-3b"
CKPT=25000
M="/home/zhengxinyong/outputs/bloom-3b_de_pfeiffer+inv_100000samples_-1vocab_original-frozen/oscar_pfeiffer+inv_de"

python3 /home/zhengxinyong/lm-evaluation-harness/main.py \
--model bigscience \
--model_args tokenizer=$tok,pretrained=$tok,adapter_ckpt_folder=$M \
--tasks xnli_de \
--no_cache \
--device cuda:4