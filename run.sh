export BASE_PATH="/Users/taohuadao/Downloads/MtProject"
cd ${BASE_PATH}
eval "$(conda shell.bash hook)"
conda activate daily
nohup python run.py -c config.json -t train > ./outputs/run_history/baseline.out 2>&1 &
    #-u -m torch.distributed.launch --nproc_per_node=4 --master_port=59006 run.py \
