PKG_FOLDER=modern_unix_tool

docker run --rm -v ${PWD}/scripts:/workspace/scripts \
    -v ${PWD}/${PKG_FOLDER}:/workspace/${PKG_FOLDER} -w=/workspace \
    ubuntu:20.04 \
    bash scripts/test_in_docker.sh