# Dev Container Features

This repository contains the following features:
|name| desc | requries mise |
|-|-|-|
|[mise](https://github.com/users/rlguarino/packages/container/package/dc-features%2Fmise)| Install Mise-en-place [mise.jdx.dev](https://mise.jdx.dev) | No |
|[node](https://github.com/rlguarino/dc-features/pkgs/container/dc-features%2Fnode)| Installs [Node](https://nodejs.org) (via [mise](https://github.com/users/rlguarino/packages/container/package/dc-features%2Fmise))| Yes | 
|[go](https://github.com/rlguarino/dc-features/pkgs/container/dc-features%2Fgo)|Install [Go](https://go.dev) (via [mise](https://github.com/users/rlguarino/packages/container/package/dc-features%2Fmise))| Yes |
|[jj](https://github.com/rlguarino/dc-features/pkgs/container/dc-features%2Fjj)|Install [jj](https://jj-vcs.github.io) (via [mise](https://github.com/users/rlguarino/packages/container/package/dc-features%2Fmise))| Yes |

## Why not just use mise.toml?

You can use a mise.toml with `ghcr.io/rlguarino/dc-features/mise:0.0.4` feature in this repository. The features that use mise under the hood install the tool globally (`mise use -g`) and therefore have some differences form using a mise.toml:

1. Binaries are built into the docker image
2. Binaries don't require mise install before they are ready

#1 is useful when paired with [prebuilding images](https://containers.dev/guide/prebuild). It allows you to build a devcontainer that dosen't need internet access when to start the devcontainer as long as you have the image.

#2 is particulary helpful when a extension needs a tool and looks for it at startup, you won't get errors before `mise install` finishes. The tools installed are just present from the beginning of the devcontainer's shell.


## Working with mise.toml

If your reposity contains a mise.toml with other tools you can use the mise feature here and install your tools with `mise install`.

To automaticlaly install your tools at container startup add `mise trust; mise install` to the `postCreateCommand` of your `devcontainer.json` file.

```json
{
    // ...
    // Use 'postCreateCommand' to run commands after the container is created.
	"postCreateCommand": "mise trust; mise install",
    //...
}
```
