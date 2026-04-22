arr=("24" "37" "40" "55" "63" "65" "69" "83" "97" "105" "106" "110" "114" "118" "122")

for item in ${arr[*]}
    do
        echo python train.py -s ~/data/dtu/scan$item/ -m ./results/dtu/scan$item/ -r 2 --use_decoupled_appearance 3
        python train.py -s ~/data/dtu/scan$item/ -m ./results/dtu/scan$item/ -r 2 --use_decoupled_appearance 3
        echo python mesh_extract.py -m ./results/dtu/scan$item/
        python mesh_extract.py -m ./results/dtu/scan$item/
        echo python mesh_extract_tetrahedra.py -m results/dtu/scan$item/
        python mesh_extract_tetrahedra.py -m results/dtu/scan$item/
        # echo python render.py -m results/dtu/scan$item/
        # python render.py -m results/dtu/scan$item/
        # echo python metric.py -m results/dtu/scan$item/
        # python metric.py -m results/dtu/scan$item/
        # echo python evaluate_dtu_mesh.py -m results/dtu/scan$item/
        # python evaluate_dtu_mesh.py -m results/dtu/scan$item/
    done