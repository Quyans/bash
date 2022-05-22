# 这是auto_int的bash  考到autoinit/experiment_scripts目录进行使用

configFile=config_fox.ini
modelname=fox
epochNumber=100

mode=$1
if [[ $mode == "train" ]];then
    echo "train"
    python train_autoint_radiance_field.py --config ./configs/${configFile}
elif [[ $mode == "render" ]];then
    echo "render"
    python train_autoint_radiance_field.py --config ./configs/${configFile} \
        --render_model ../logs/${modelname} ${epochNumber} \
        --render_output ../logs/${modelname}/output/
elif [[ $mode == "tensorboard" ]];then
    tensorboard --logdir=../logs/ --port=6006
fi
# python train_autoint_radiance_field.py --config ./configs/${configFile} \
#     --render_model ../logs/${modelname} ${epochNumber} \
#     --render_output ../logs/${modelname}/output/