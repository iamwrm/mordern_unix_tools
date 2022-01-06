PROJECT_ROOT=${PWD}

mkdir -p temp
mkdir -p bin

rm -rf temp/*
rm -rf bin/*

wget -c https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-musl-v0.10.1.zip
cp exa-linux-x86_64-musl-v0.10.1.zip temp
wget -c https://github.com/sharkdp/fd/releases/download/v8.3.0/fd-v8.3.0-x86_64-unknown-linux-musl.tar.gz
cp fd-v8.3.0-x86_64-unknown-linux-musl.tar.gz temp
wget -c https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz
cp ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz temp


cd temp
unzip exa-linux-x86_64-musl-v0.10.1.zip
cp bin/exa ${PROJECT_ROOT}/bin/

tar xvf fd-v8.3.0-x86_64-unknown-linux-musl.tar.gz
cp fd-v8.3.0-x86_64-unknown-linux-musl/fd ${PROJECT_ROOT}/bin/

tar xvf ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz
cp ripgrep-13.0.0-x86_64-unknown-linux-musl/rg ${PROJECT_ROOT}/bin/



