
# Mise (mise)

Install mise (The front-end to your dev env)

## Example Usage

```json
"features": {
    "ghcr.io/rlguarino/dc-features/mise:0": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| version | Mise version to install | string | latest |

## Changelog

### 0.0.5

- Use the install script from mise.jdx.dev/install.sh.sig
- Activate mise with path activation (instead of shims)
- Default version to "latest"
- If version is "latest" install the most recent version (as defined by the install.sh current at the time of enabling the feature)

---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/rlguarino/dc-features/blob/main/src/mise/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
