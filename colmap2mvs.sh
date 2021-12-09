Base=/home/qys/Documents/project/models/weiShengZhi_night/dense
InputFile=${Base}/openMVS_scene
WorkDir=${Base}/openMVS_scene
Image=${Base}/images

InterfaceCOLMAP -i ${Base} -o ${InputFile}/scene.mvs 


#ReconstructMesh -i  ${InputFile}/scene.mvs -o ./dense -w ${WorkDir} --export-type obj 
#./TextureMesh -i  ${InputFile}/dense.mvs  --export-type obj
