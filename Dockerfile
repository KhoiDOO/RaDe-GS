FROM kohido/base_cu128_u2204:v0.0.4

WORKDIR /workspace

COPY ./submodules .
COPY ./requirements.txt .

RUN python3 -m pip install --no-cache-dir -I -r requirements.txt

ENV TORCH_CUDA_ARCH_LIST="7.0;7.5;8.0;8.6;8.9;9.0+PTX"
# ENV MAX_JOBS=1

RUN python3 -m pip install --no-cache-dir ./diff-gaussian-rasterization
RUN python3 -m pip install --no-cache-dir ./warp-patch-ncc --no-build-isolation
RUN python3 -m pip install --no-cache-dir ./simple-knn/ --no-build-isolation
RUN python3 -m pip install --no-cache-dir git+https://github.com/rahul-goel/fused-ssim/ --no-build-isolation

RUN apt-get update && apt-get install -y libcgal-dev

RUN python3 -m pip install --no-cache-dir ./tetra_triangulation/ --no-build-isolation
