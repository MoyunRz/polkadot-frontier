
rm -rf /tmp/eve /tmp/bob /tmp/alice

#cargo clean

cargo build --release

cp target/release/frontier-template-node build/

./build/frontier-template-node build-spec --disable-default-bootnode --chain local > build/customSpec.json

./build/frontier-template-node build-spec --chain=build/customSpec.json --raw --disable-default-bootnode > build/customSpecRaw.json