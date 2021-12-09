cd /home/qys/Documents/project/models/weiShengZhi_night/dense/openmvg/reconstruction_sequential

mkdir ../openmvs
cp sfm_data.bin ../openmvs
cd ../openmvs
openMVG_main_openMVG2openMVS -i sfm_data.bin -o scene.mvs





Base=/home/qys/Documents/project/models/weiShengZhi_night/dense/openmvg/openmvs
InputFile=${Base}
WorkDir=${Base}
Image=${Base}/images

#./InterfaceCOLMAP -i ${Base} -o ${InputFile}/scene.mvs -f on


ReconstructMesh -i  ${InputFile}/scene.mvs -o ./dense -w ${WorkDir} --export-type obj 

TextureMesh -i  ${InputFile}/dense.mvs  --export-type obj
