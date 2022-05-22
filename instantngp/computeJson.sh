#  从图像到符合nerf的json文件

scripybase=~/Documents/qys/code/instant-ngp
model=98degree

python ${scripybase}/scripts/colmap2nerf.py --run_colmap --images ${scripybase}/data/nerf/${model}/images/ --out ${scripybase}/data/nerf/${model}/transforms.json --aabb 2

# 如果从已知的colmap位姿开始计算
# python ${scripybase}/scripts/colmap2nerf.py  --images ${scripybase}/data/nerf/${model}/images/ --text ${scripts}/data/${model}/sparse /
#    --out ../data/nerf/${model}/transforms.json --aabb 4