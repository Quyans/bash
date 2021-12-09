cd /home/qys/Documents/gitClone/openMVG_Build/software/SfM


Base=/home/qys/Documents/project/models/weiShengZhi_night/dense
InputFile=${Base}/images
WorkDir=${Base}/openmvg

python SfM_SequentialPipeline.py ${InputFile} ${WorkDir}
