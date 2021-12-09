#cd ~/Documents/gitClone/openMVS_build/bin

Base=/home/qys/Documents/project/models/weiShengZhi_night/dense
InputFile=${Base}/openMVS_scene
WorkDir=${Base}/openMVS_scene
Image=${Base}/images


#./DensifyPointCloud -i ${InputFile}/scene.mvs -w ${WorkDir}
#./DensifyPointCloud -i ${InputFile}/scene.mvs -o ./scene_densPC ${WorkDir}

ReconstructMesh -i  ${InputFile}/scene.mvs -o ./dense -w ${WorkDir} --export-type obj


TextureMesh -i  ${InputFile}/dense.mvs -o ./dense_texture_v1 -w ${WorkDir}  --export-type obj
