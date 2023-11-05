docker run --rm --name rustc --mount type=bind,source="$(pwd)",target=/app deta-rust-builder cargo build --release
