RELEASE="--release"

if [ -z "$1" ]; then
    RELEASE=""
else
    RELEASE="--release"
fi

rustup target add x86_64-apple-darwin x86_64-unknown-linux-gnu x86_64-pc-windows-msvc

cargo build $RELEASE # Mac OSX ARM Version
cargo build $RELEASE --target=x86_64-apple-darwin # Mac OSX AMD Version
cargo build $RELEASE --target=x86_64-unknown-linux-gnu # Linux 
cargo build $RELEASE --target=x86_64-pc-windows-msvc # Windows

cbindgen --config cbindgen.toml --crate seagort_engine --lang c --output lib_seagort.hrustu