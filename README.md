# Deta Rust Builder

> [!NOTE]
> Image name is `somespecialone/deta-rust-builder`
> 
> [Docker link](https://hub.docker.com/r/somespecialone/deta-rust-builder)

## Why? 🤔

For now [Deta Space Micro](https://deta.space/docs/en/build/reference/runtime) runtime have installed `glibc 2.27`.

So for Rust applications to work on it, they need to be built on similar systems `(Ubuntu 18.04 glibc 2.27)`.
Building on `Deta Space` with its pipeline exceeds the timeout (also for now).
For this purpose, I create a docker image where such applications can be easily built.

## How?

[Command](./build-app.sh) to run in application directory:

```sh
docker run --rm --name rustc --mount type=bind,source="$(pwd)",target=/app somespecialone/deta-rust-builder:latest cargo build --release
```

For [Windows](./build-app.ps1) users
or [Docker engine version >=23](https://docs.docker.com/engine/reference/commandline/run/#volume):

```sh
docker run --rm --name rustc --mount type=bind,source=.,target=/app somespecialone/deta-rust-builder:latest cargo build --release
```

## Example usage

* [random-user-agent](https://github.com/somespecialone/random-user-agent/blob/6b705208b08d07c2626c38d6383ba6d5dc40492f/.github/workflows/deploy.yml#L21)
