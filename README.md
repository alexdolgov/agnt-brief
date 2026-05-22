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
| [mezo-bridge](./mezo-bridge/brief.md) | $21.64M | ethereum | 138 | 110/138 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $203.90M |
| [blur](./blur/brief.md) | $18.88M | blast, ethereum | 17 | 12/17 (71%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $91.73M |
| [republic-note](./republic-note/brief.md) | $16.31M | avalanche | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $51.20M |
| [stakestone](./stakestone/brief.md) | $26.05M | 8 | 183 | 60/183 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $49.73M |
| [across](./across/brief.md) | $27.73M | 15 | 143 | 58/143 (41%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $28.14M |
| [rocksolid-network](./rocksolid-network/brief.md) | $25.01M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $24.96M |
| [piku](./piku/brief.md) | $17.13M | ethereum | 29 | 27/29 (93%) | 14.8% | 0.0% (-) | 1 | aging | ✅ active | $21.37M |
| [yieldnest](./yieldnest/brief.md) | $23.44M | 7 | 89 | 68/89 (76%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $19.22M |
| [katana-pre-launch](./katana-pre-launch/brief.md) | $18.64M | base, ethereum | 166 | 97/166 (58%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $18.32M |
| [geth](./geth/brief.md) | $16.27M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $16.16M |
| [t-rize](./t-rize/brief.md) | $23.00M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $15.01M |
| [looping-collective](./looping-collective/brief.md) | $18.12M | ethereum, hyperliquid | 14 | 12/14 (86%) | 7.7% | 0.0% (-) | 1 | fresh | ✅ active | $11.81M |
| [d2-finance](./d2-finance/brief.md) | $24.57M | 5 | 184 | 60/184 (33%) | 48.4% | 11.3% (Cyfrin) | 2 | aging | ✅ active | $11.49M |
| [kaito](./kaito/brief.md) | $19.86M | base | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $9.48M |
| [ekubo](./ekubo/brief.md) | $27.16M | ethereum | 15 | 9/15 (60%) | 44.4% | 22.2% (Code4rena) | 3 | fresh | ❓ unknown | $5.65M |
| [xsy](./xsy/brief.md) | $20.97M | avalanche | 16 | 5/16 (31%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.60M |
| [steer-protocol](./steer-protocol/brief.md) | $20.90M | arbitrum | 43 | 31/43 (72%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.26M |
| [osmosis-dex](./osmosis-dex/brief.md) | $18.17M | 17 | 935 | 185/935 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $1.88M |
| [liminal](./liminal/brief.md) | $23.06M | 17 | 935 | 185/935 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.86M |
| [aevo](./aevo/brief.md) | $20.57M | 4 | 331 | 147/331 (44%) | 9.2% | 0.0% (-) | 6 | stale | ✅ active | $1.70M |
| [wrapped](./wrapped/brief.md) | $24.56M | celo, ethereum | 119 | 62/119 (52%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.70M |
| [taiko-bridge](./taiko-bridge/brief.md) | $17.26M | ethereum | 52 | 44/52 (85%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.42M |
| [anthias-labs](./anthias-labs/brief.md) | $17.85M | base | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $705.35K |
| [orbit-bridge](./orbit-bridge/brief.md) | $17.87M | 5 | 22 | 5/22 (23%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $640.23K |
| [arbitrum-nova-bridge](./arbitrum-nova-bridge/brief.md) | $19.20M | arbitrum, ethereum | 55 | 48/55 (87%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $447.17K |
| [camelot](./camelot/brief.md) | $27.14M | arbitrum | 127 | 52/127 (41%) | 17.3% | 0.0% (-) | 1 | stale | ✅ active | $391.94K |
| [seamless-protocol](./seamless-protocol/brief.md) | $47.56M | base, ethereum | 98 | 87/98 (89%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $34.75K |
| [proxy](./proxy/brief.md) | $20.23M | ethereum, polygon | 278 | 12/278 (4%) | 8.3% | 0.0% (-) | 1 | stale | ✅ active | $735.64 |
| [morpheusai](./morpheusai/brief.md) | $28.63M | arbitrum, ethereum | 47 | 47/47 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $621.83 |
| [ankr](./ankr/brief.md) | $22.09M | avalanche, ethereum, fantom | 147 | 114/147 (78%) | 0.9% | 0.9% (ChainSecurity) | 1 | stale | ✅ active | $47.39 |
| [anvil](./anvil/brief.md) | $18.35M | ethereum | 3 | 3/3 (100%) | 100.0% | 100.0% (OpenZeppelin, Trail of Bits) | 3 | fresh | ❓ unknown | - |
| [asseto-aoabt](./asseto-aoabt/brief.md) | $22.28M | avalanche | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [bitlo](./bitlo/brief.md) | $16.66M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitu-protocol](./bitu-protocol/brief.md) | $23.14M | bsc | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [bitvenus](./bitvenus/brief.md) | $20.90M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [blackhole](./blackhole/brief.md) | $29.94M | avalanche | 86 | 45/86 (52%) | 31.1% | 31.1% (Code4rena) | 3 | fresh | ❓ unknown | - |
| [bonzo-finance](./bonzo-finance/brief.md) | $22.60M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [chain-fusion](./chain-fusion/brief.md) | $19.29M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [charm-finance](./charm-finance/brief.md) | $2.20M | 5 | 7 | 3/7 (43%) | 66.7% | 66.7% (Spearbit) | 3 | fresh | ❓ unknown | - |
| [dxsale](./dxsale/brief.md) | $26.83M | 11 | 353 | 10/353 (3%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [egas-swap](./egas-swap/brief.md) | $19.34M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [enosys](./enosys/brief.md) | $28.01M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [feather](./feather/brief.md) | $16.55M | celo, klaytn, sei | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [goldfinger](./goldfinger/brief.md) | $23.90M | bsc | 5 | 4/5 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hakutora](./hakutora/brief.md) | $23.76M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [harmonix-finance](./harmonix-finance/brief.md) | $4.89M | 4 | 126 | 8/126 (6%) | 11.1% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [hyperion](./hyperion/brief.md) | $20.98M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [immutable-zkevm](./immutable-zkevm/brief.md) | $29.24M | ethereum | 11 | 11/11 (100%) | 18.2% | 0.0% (-) | 1 | aging | ✅ active | - |
| [layerbank](./layerbank/brief.md) | $22.07M | 4 | 91 | 13/91 (14%) | 50.0% | 0.0% (-) | 2 | fresh | 💀 dead | - |
| [llamapay](./llamapay/brief.md) | $26.44M | 17 | 20 | 6/20 (30%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [manta-cedefi](./manta-cedefi/brief.md) | $26.78M | manta | 17 | 15/17 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manta-pacific](./manta-pacific/brief.md) | $25.67M | ethereum, manta | 13 | 12/13 (92%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [mu-digital](./mu-digital/brief.md) | $19.45M | ethereum | 12 | 12/12 (100%) | 100.0% | 100.0% (SlowMist) | 1 | fresh | ✅ active | - |
| [neutral-trade](./neutral-trade/brief.md) | $18.84M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [okcoin](./okcoin/brief.md) | $26.01M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sceptre-liquid](./sceptre-liquid/brief.md) | $20.33M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sparkdex](./sparkdex/brief.md) | $29.43M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [ventuals](./ventuals/brief.md) | $28.76M | hyperliquid | 4 | 4/4 (100%) | 100.0% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [yei-finance](./yei-finance/brief.md) | $29.76M | sei | 44 | 35/44 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [zoomex](./zoomex/brief.md) | $23.79M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |

_Generated: 2026-05-22T20:03:39.725Z_
_Projects: 62_
