PROJECT_ROOT=${PWD}

PKG_FOLDER=modern_unix_tool
PKG_FOLDER_ABS=${PROJECT_ROOT}/${PKG_FOLDER}

TEMP=${PROJECT_ROOT}/temp

mkdir -p ${TEMP}
mkdir -p ${PKG_FOLDER_ABS}

rm -rf ${TEMP}/*
rm -rf ${PKG_FOLDER_ABS}/*

wget -c https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-musl-v0.10.1.zip
cp exa-linux-x86_64-musl-v0.10.1.zip ${TEMP}
wget -c https://github.com/sharkdp/fd/releases/download/v8.3.0/fd-v8.3.0-x86_64-unknown-linux-musl.tar.gz
cp fd-v8.3.0-x86_64-unknown-linux-musl.tar.gz ${TEMP}
wget -c https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz
cp ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz ${TEMP}


cd ${TEMP}
unzip exa-linux-x86_64-musl-v0.10.1.zip
cp bin/exa ${PKG_FOLDER_ABS}

tar xvf fd-v8.3.0-x86_64-unknown-linux-musl.tar.gz
cp fd-v8.3.0-x86_64-unknown-linux-musl/fd ${PKG_FOLDER_ABS}

tar xvf ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz
cp ripgrep-13.0.0-x86_64-unknown-linux-musl/rg ${PKG_FOLDER_ABS}



