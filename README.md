
```markdown
# sing-box rule sets

Custom [sing-box](https://sing-box.sagernet.org/) rule sets in source JSON and compiled `.srs` binary format.

## Rule sets

| Name | Description |
|---|---|
| `server.json` | Server-side routing rules |
| `router.json` | Router-side routing rules |
| `route_v1.json` | General routing policy |
| `coherence_extra.json` | Extended coherence / anti-censorship rules |
| `coherence_extra_plus.json` | `coherence_extra` superset with additional domains |

## Building

Compile all JSON rule sets into `.srs` binaries:

```bash
./build.sh
```

This runs `sing-box rule-set compile` for each source file and places the output in `srs/`.

### Prerequisites

- [sing-box](https://sing-box.sagernet.org/installation/) CLI installed and in `$PATH`

