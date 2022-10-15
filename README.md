1. build environment:
/bin/bash build_env.sh
2. run:
/bin/bash run.sh
3. stop running:
/bin/bash kill_all.sh
4. change mode (train/eval/predict):
edit run.sh (-t)
5. change data:
edit config.json
6. test a fine-tuned model:
edit config.json, use the path to the fine-tuned model as the value of "output_model"
7. check console outputs:
outputs/run_history/baseline.out, this path can be modified in run.sh
8. check log:
cfg['outputs_path'] + cfg['time_str'] + '/' + cfg['task'] + '_run.log'