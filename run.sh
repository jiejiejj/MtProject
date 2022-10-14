export BASE_PATH="/home/huangjie/MtProject"
cd ${BASE_PATH}
eval "$(conda shell.bash hook)"
conda activate py38_apex
nohup python3.8 -u -m torch.distributed.launch --nproc_per_node=1 --master_port=59006 run.py \
-c config.json -t train > ./outputs/run_history/baseline.out 2>&1 &
#nohup python run.py -c config.json -t train > ./outputs/run_history/baseline.out 2>&1 &
    #-u -m torch.distributed.launch --nproc_per_node=4 --master_port=59006 run.py \
