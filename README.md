# Agentic Audit Briefs

Machine-readable and human-readable audit coverage briefs for DeFi protocols, produced by [meta-audit](https://github.com/alexdolgov/meta-audit).

Each project directory contains:
- `brief.json` — machine-readable: full contract surface, audits, coverage, TVL
- `brief.md` — human-readable: overview, narrative, tables with links
- `contracts/` — verified source code organized by chain, with per-contract READMEs

## Project Directory

| Project | TVL (DL) | Chains | Implementations | Verified | Coverage | Tier 1 | Audits | Freshness | Status | ASD |
|---|---:|---|---:|---|---:|---|---:|---|---|---:|
| [inverse-finance](./inverse-finance/brief.md) | $44.53M | 5 | 125 | 117/125 (94%) | 13.7% | 9.4% (Code4rena, Sherlock) | 5 | fresh | ❓ unknown | $428.77M |
| [allbridge](./allbridge/brief.md) | $27.58M | 13 | 284 | 77/284 (27%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $319.18M |
| [across](./across/brief.md) | $27.73M | 15 | 143 | 58/143 (41%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $28.14M |
| [ekubo](./ekubo/brief.md) | $27.16M | ethereum | 15 | 9/15 (60%) | 44.4% | 22.2% (Code4rena) | 3 | fresh | ❓ unknown | $5.65M |
| [camelot](./camelot/brief.md) | $27.14M | arbitrum | 127 | 52/127 (41%) | 17.3% | 0.0% (-) | 1 | stale | ✅ active | $391.94K |
| [seamless-protocol](./seamless-protocol/brief.md) | $47.56M | base, ethereum | 98 | 87/98 (89%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $34.75K |
| [morpheusai](./morpheusai/brief.md) | $28.63M | arbitrum, ethereum | 47 | 47/47 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $621.83 |
| [blackhole](./blackhole/brief.md) | $29.94M | avalanche | 86 | 45/86 (52%) | 31.1% | 31.1% (Code4rena) | 3 | fresh | ❓ unknown | - |
| [charm-finance](./charm-finance/brief.md) | $2.20M | 5 | 7 | 3/7 (43%) | 66.7% | 66.7% (Spearbit) | 3 | fresh | ❓ unknown | - |
| [dxsale](./dxsale/brief.md) | $26.83M | 11 | 353 | 10/353 (3%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [enosys](./enosys/brief.md) | $28.01M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [harmonix-finance](./harmonix-finance/brief.md) | $4.89M | 4 | 126 | 8/126 (6%) | 11.1% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [immutable-zkevm](./immutable-zkevm/brief.md) | $29.24M | ethereum | 11 | 11/11 (100%) | 18.2% | 0.0% (-) | 1 | aging | ✅ active | - |
| [sparkdex](./sparkdex/brief.md) | $29.43M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [ventuals](./ventuals/brief.md) | $28.76M | hyperliquid | 4 | 4/4 (100%) | 100.0% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [yei-finance](./yei-finance/brief.md) | $29.76M | sei | 44 | 35/44 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |

_Generated: 2026-05-22T12:01:21.236Z_
_Projects: 16_
