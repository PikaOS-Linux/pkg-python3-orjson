# Clone Upstream
git clone https://github.com/ijl/orjson -b 3.9.1
cp -rvf ./debian ./orjson/
cd ./orjson

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
