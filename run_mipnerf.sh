# indoor

# python train.py -s ~/data/mipnerf360/bonsai/ -m ./results/mipnerf360/bonsai/ -r 2 --use_decoupled_appearance 3
# python mesh_extract.py -m ./results/mipnerf360/bonsai/
# python mesh_extract_tetrahedra.py -m results/mipnerf360/bonsai/

python train.py -s ~/data/mipnerf360/kitchen/ -m ./results/mipnerf360/kitchen/ -r 2 --use_decoupled_appearance 3
python mesh_extract.py -m ./results/mipnerf360/kitchen/
python mesh_extract_tetrahedra.py -m results/mipnerf360/kitchen/

python train.py -s ~/data/mipnerf360/counter/ -m ./results/mipnerf360/counter/ -r 2 --use_decoupled_appearance 3
python mesh_extract.py -m ./results/mipnerf360/counter/
python mesh_extract_tetrahedra.py -m results/mipnerf360/counter/

python train.py -s ~/data/mipnerf360/room/ -m ./results/mipnerf360/room/ -r 2 --use_decoupled_appearance 3
python mesh_extract.py -m ./results/mipnerf360/room/
python mesh_extract_tetrahedra.py -m results/mipnerf360/room/

# outdoor

python train.py -s ~/data/mipnerf360/garden/ -m ./results/mipnerf360/garden/ -r 4 --use_decoupled_appearance 3
python mesh_extract.py -m ./results/mipnerf360/garden/
python mesh_extract_tetrahedra.py -m results/mipnerf360/garden/

python train.py -s ~/data/mipnerf360/bicycle/ -m ./results/mipnerf360/bicycle/ -r 4 --use_decoupled_appearance 3
python mesh_extract.py -m ./results/mipnerf360/bicycle/
python mesh_extract_tetrahedra.py -m results/mipnerf360/bicycle/

python train.py -s ~/data/mipnerf360/stump/ -m ./results/mipnerf360/stump/ -r 4 --use_decoupled_appearance 3
python mesh_extract.py -m ./results/mipnerf360/stump/
python mesh_extract_tetrahedra.py -m results/mipnerf360/stumps/

python train.py -s ~/data/mipnerf360_extra/flowers/ -m ./results/mipnerf360/flowers/ -r 4 --use_decoupled_appearance 3
python mesh_extract.py -m ./results/mipnerf360/flowers/
python mesh_extract_tetrahedra.py -m results/mipnerf360/flowers/

python train.py -s ~/data/mipnerf360_extra/treehill/ -m ./results/mipnerf360/treehill/ -r 4 --use_decoupled_appearance 3
python mesh_extract.py -m ./results/mipnerf360/treehill/
python mesh_extract_tetrahedra.py -m results/mipnerf360/treehill/