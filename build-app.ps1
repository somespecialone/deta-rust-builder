docker run --rm --name rustc --mount type=bind,source=.,target=/app somespecialone/deta-rust-builder:latest cargo build --release
