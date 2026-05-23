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
| [aethir](./aethir/brief.md) | $9.79M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $257.03M |
| [symbiosis](./symbiosis/brief.md) | $9.35M | cronos, ethereum, scroll | 137 | 69/137 (50%) | 5.8% | 2.9% (SlowMist) | 5 | fresh | ✅ active | $236.15M |
| [mezo-bridge](./mezo-bridge/brief.md) | $21.64M | ethereum | 138 | 110/138 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $203.90M |
| [zircuit](./zircuit/brief.md) | $13.31M | base, ethereum | 17 | 16/17 (94%) | 25.0% | 0.0% (-) | 3 | aging | ⚠️ declining | $144.24M |
| [blur](./blur/brief.md) | $18.88M | blast, ethereum | 17 | 12/17 (71%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $91.73M |
| [zivoe](./zivoe/brief.md) | $13.83M | ethereum | 32 | 31/32 (97%) | 58.1% | 48.4% (Sherlock) | 3 | aging | ✅ active | $87.09M |
| [nest](./nest/brief.md) | $9.33M | 4 | 349 | 132/349 (38%) | 12.9% | 0.0% (-) | 1 | fresh | ✅ active | $69.42M |
| [republic-note](./republic-note/brief.md) | $16.31M | avalanche | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $51.20M |
| [stakestone](./stakestone/brief.md) | $26.05M | 8 | 183 | 60/183 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $49.73M |
| [illuvium](./illuvium/brief.md) | $9.60M | ethereum | 17 | 15/17 (88%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $39.75M |
| [zklink-nova](./zklink-nova/brief.md) | $13.41M | 11 | 443 | 136/443 (31%) | 12.1% | 2.8% (OpenZeppelin) | 10 | aging | ⚠️ declining | $33.89M |
| [backedfi](./backedfi/brief.md) | $8.20M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $33.35M |
| [obeliskbtc](./obeliskbtc/brief.md) | $9.05M | ethereum | 19 | 19/19 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $33.19M |
| [index-coop](./index-coop/brief.md) | $13.14M | 4 | 235 | 111/235 (47%) | 11.7% | 0.0% (-) | 3 | aging | ⚠️ declining | $28.18M |
| [across](./across/brief.md) | $27.73M | 15 | 143 | 58/143 (41%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $28.14M |
| [pooltogether](./pooltogether/brief.md) | $8.65M | 8 | 153 | 106/153 (69%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $26.91M |
| [rocksolid-network](./rocksolid-network/brief.md) | $25.01M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $24.96M |
| [flock.io](./flock.io/brief.md) | $10.08M | base | 15 | 14/15 (93%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $24.37M |
| [piku](./piku/brief.md) | $17.13M | ethereum | 29 | 27/29 (93%) | 14.8% | 0.0% (-) | 1 | aging | ✅ active | $21.37M |
| [set-protocol](./set-protocol/brief.md) | $11.62M | ethereum | 111 | 15/111 (14%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $21.20M |
| [yieldnest](./yieldnest/brief.md) | $23.44M | 7 | 89 | 68/89 (76%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $19.22M |
| [katana-pre-launch](./katana-pre-launch/brief.md) | $18.64M | base, ethereum | 166 | 97/166 (58%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $18.32M |
| [hypha](./hypha/brief.md) | $15.29M | avalanche | 84 | 36/84 (43%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | $16.37M |
| [yieldfi](./yieldfi/brief.md) | $12.10M | 9 | 23 | 15/23 (65%) | 66.7% | 66.7% (Cyfrin, Sherlock) | 3 | fresh | ⚠️ declining | $16.26M |
| [geth](./geth/brief.md) | $16.27M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $16.16M |
| [thorswap](./thorswap/brief.md) | $10.26M | ethereum | 34 | 23/34 (68%) | 13.0% | 0.0% (-) | 2 | stale | ❓ unknown | $15.54M |
| [t-rize](./t-rize/brief.md) | $23.00M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $15.01M |
| [sideshift](./sideshift/brief.md) | $15.06M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $12.33M |
| [looping-collective](./looping-collective/brief.md) | $18.12M | ethereum, hyperliquid | 14 | 12/14 (86%) | 7.7% | 0.0% (-) | 1 | fresh | ✅ active | $11.81M |
| [d2-finance](./d2-finance/brief.md) | $24.57M | 5 | 184 | 60/184 (33%) | 48.4% | 11.3% (Cyfrin) | 2 | aging | ✅ active | $11.49M |
| [kaito](./kaito/brief.md) | $19.86M | base | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $9.48M |
| [fuel-bridge](./fuel-bridge/brief.md) | $10.81M | ethereum | 18 | 15/18 (83%) | 26.7% | 0.0% (-) | 3 | fresh | ⚠️ declining | $7.63M |
| [alphagrowth](./alphagrowth/brief.md) | $8.85M | 4 | 135 | 109/135 (81%) | 8.3% | 6.4% (Certora, ChainSecurity, Cyfrin, Spearbit) | 15 | fresh | ✅ active | $6.65M |
| [ekubo](./ekubo/brief.md) | $27.16M | ethereum | 15 | 9/15 (60%) | 44.4% | 22.2% (Code4rena) | 3 | fresh | ❓ unknown | $5.65M |
| [delta-financial](./delta-financial/brief.md) | $10.48M | ethereum | 53 | 39/53 (74%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $4.51M |
| [atlendis](./atlendis/brief.md) | $10.99M | polygon | 43 | 14/43 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $4.28M |
| [dexalot](./dexalot/brief.md) | $9.31M | avalanche | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $4.21M |
| [dforce](./dforce/brief.md) | $12.48M | 7 | 450 | 99/450 (22%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.61M |
| [xsy](./xsy/brief.md) | $20.97M | avalanche | 16 | 5/16 (31%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.60M |
| [steer-protocol](./steer-protocol/brief.md) | $20.90M | arbitrum | 43 | 31/43 (72%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.26M |
| [loopring](./loopring/brief.md) | $10.57M | base, ethereum | 145 | 75/145 (52%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.43M |
| [revert](./revert/brief.md) | $11.61M | 8 | 84 | 18/84 (21%) | 11.1% | 0.0% (-) | 2 | stale | ✅ active | $2.09M |
| [osmosis-dex](./osmosis-dex/brief.md) | $18.17M | 17 | 935 | 185/935 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $1.88M |
| [liminal](./liminal/brief.md) | $23.06M | 17 | 935 | 185/935 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.86M |
| [solayer](./solayer/brief.md) | $13.48M | 17 | 935 | 185/935 (20%) | 0.0% | 0.0% (-) | 0 | aging | ⚠️ declining | $1.85M |
| [hyperswap](./hyperswap/brief.md) | $14.21M | 18 | 940 | 185/940 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.85M |
| [serum](./serum/brief.md) | $15.45M | 17 | 935 | 185/935 (20%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.85M |
| [badger-dao](./badger-dao/brief.md) | $9.79M | 4 | 330 | 120/330 (36%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.85M |
| [coti-treasury](./coti-treasury/brief.md) | $10.55M | 17 | 935 | 185/935 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.85M |
| [metadao](./metadao/brief.md) | $12.30M | 17 | 935 | 185/935 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.85M |
| [chainge-finance](./chainge-finance/brief.md) | $12.14M | 17 | 935 | 185/935 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.85M |
| [vnx](./vnx/brief.md) | $7.47M | 7 | 10 | 5/10 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.85M |
| [nuls](./nuls/brief.md) | $7.33M | 17 | 904 | 185/904 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.85M |
| [pnetwork](./pnetwork/brief.md) | $13.10M | 4 | 355 | 109/355 (31%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $1.82M |
| [aevo](./aevo/brief.md) | $20.57M | 4 | 331 | 147/331 (44%) | 9.2% | 0.0% (-) | 6 | stale | ✅ active | $1.70M |
| [wrapped](./wrapped/brief.md) | $24.56M | celo, ethereum | 119 | 62/119 (52%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.70M |
| [benddao](./benddao/brief.md) | $7.30M | ethereum | 67 | 51/67 (76%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | $1.69M |
| [predict-fun](./predict-fun/brief.md) | $14.59M | blast, bsc | 40 | 25/40 (63%) | 8.0% | 8.0% (Cyfrin) | 2 | fresh | ❓ unknown | $1.47M |
| [taiko-bridge](./taiko-bridge/brief.md) | $17.26M | ethereum | 52 | 44/52 (85%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.42M |
| [shardingdao](./shardingdao/brief.md) | $7.90M | ethereum | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.38M |
| [bend](./bend/brief.md) | $12.39M | berachain, ethereum | 105 | 59/105 (56%) | 20.3% | 20.3% (Spearbit) | 2 | fresh | ❓ unknown | $896.83K |
| [anthias-labs](./anthias-labs/brief.md) | $17.85M | base | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $705.35K |
| [orbit-bridge](./orbit-bridge/brief.md) | $17.87M | 5 | 22 | 5/22 (23%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $640.23K |
| [arbitrum-nova-bridge](./arbitrum-nova-bridge/brief.md) | $19.20M | arbitrum, ethereum | 55 | 48/55 (87%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $447.17K |
| [camelot](./camelot/brief.md) | $27.14M | arbitrum | 127 | 52/127 (41%) | 17.3% | 0.0% (-) | 1 | stale | ✅ active | $391.94K |
| [csigma-finance](./csigma-finance/brief.md) | $12.66M | arbitrum, base, ethereum | 50 | 38/50 (76%) | 41.0% | 0.0% (-) | 3 | aging | ✅ active | $65.57K |
| [hegic](./hegic/brief.md) | $10.10M | ethereum | 63 | 26/63 (41%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $54.07K |
| [hemibtc](./hemibtc/brief.md) | $15.09M | bsc, ethereum, optimism | 47 | 37/47 (79%) | 2.7% | 0.0% (-) | 2 | fresh | ✅ active | $46.20K |
| [ultron-staking-hub-nft](./ultron-staking-hub-nft/brief.md) | $7.43M | 5 | 150 | 6/150 (4%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $43.46K |
| [dinari](./dinari/brief.md) | $10.83M | 4 | 71 | 31/71 (44%) | 37.5% | 15.6% (Sherlock) | 3 | aging | ❓ unknown | $36.60K |
| [seamless-protocol](./seamless-protocol/brief.md) | $47.56M | base, ethereum | 98 | 87/98 (89%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $34.75K |
| [anzen-finance](./anzen-finance/brief.md) | $7.59M | 5 | 48 | 40/48 (83%) | 35.0% | 0.0% (-) | 4 | aging | ⚠️ declining | $10.86K |
| [injective-bridge](./injective-bridge/brief.md) | $14.89M | ethereum | 9 | 3/9 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.62K |
| [credbull](./credbull/brief.md) | $10.94M | arbitrum, polygon | 83 | 82/83 (99%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.89K |
| [proxy](./proxy/brief.md) | $20.23M | ethereum, polygon | 278 | 12/278 (4%) | 8.3% | 0.0% (-) | 1 | stale | ✅ active | $735.64 |
| [morpheusai](./morpheusai/brief.md) | $28.63M | arbitrum, ethereum | 47 | 47/47 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $621.83 |
| [ankr](./ankr/brief.md) | $22.09M | avalanche, ethereum, fantom | 147 | 114/147 (78%) | 0.9% | 0.9% (ChainSecurity) | 1 | stale | ✅ active | $47.39 |
| [goose](./goose/brief.md) | $12.80M | ethereum | 7 | 3/7 (43%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $7.87 |
| [kinza-finance](./kinza-finance/brief.md) | $7.84M | 4 | 154 | 50/154 (32%) | 2.0% | 0.0% (-) | 1 | stale | ⚠️ declining | $0.01 |
| [altitude.fi](./altitude.fi/brief.md) | $13.73M | ethereum | 124 | 18/124 (15%) | 72.2% | 0.0% (-) | 6 | aging | ✅ active | - |
| [amnis-finance](./amnis-finance/brief.md) | $11.93M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [angstrom](./angstrom/brief.md) | $11.35M | base, ethereum | 13 | 13/13 (100%) | 7.7% | 7.7% (Spearbit) | 1 | fresh | ✅ active | - |
| [antarctic](./antarctic/brief.md) | $9.31M | arbitrum | 11 | 8/11 (73%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [anvil](./anvil/brief.md) | $18.35M | ethereum | 3 | 3/3 (100%) | 100.0% | 100.0% (OpenZeppelin, Trail of Bits) | 3 | fresh | ❓ unknown | - |
| [asseto-aoabt](./asseto-aoabt/brief.md) | $22.28M | avalanche | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [bifi](./bifi/brief.md) | $7.54M | avalanche, ethereum, klaytn | 170 | 45/170 (26%) | 30.4% | 0.0% (-) | 3 | stale | ✅ active | - |
| [binaryx-platform](./binaryx-platform/brief.md) | $8.64M | polygon | 133 | 25/133 (19%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [bitlo](./bitlo/brief.md) | $16.66M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitu-protocol](./bitu-protocol/brief.md) | $23.14M | bsc | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [bitvenus](./bitvenus/brief.md) | $20.90M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [blackhole](./blackhole/brief.md) | $29.94M | avalanche | 86 | 45/86 (52%) | 31.1% | 31.1% (Code4rena) | 3 | fresh | ❓ unknown | - |
| [bonzo-finance](./bonzo-finance/brief.md) | $22.60M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [boros](./boros/brief.md) | $10.38M | arbitrum | 2 | 2/2 (100%) | 100.0% | 100.0% (ChainSecurity) | 2 | fresh | ✅ active | - |
| [bouncebit-prime](./bouncebit-prime/brief.md) | $11.94M | ethereum | 9 | 2/9 (22%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [btcfi](./btcfi/brief.md) | $11.86M | base | 15 | 1/15 (7%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [bulbaswap](./bulbaswap/brief.md) | $9.10M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cex.io](./cex.io/brief.md) | $8.58M | ethereum, polygon | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [chain-fusion](./chain-fusion/brief.md) | $19.29M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [charm-finance](./charm-finance/brief.md) | $2.20M | 5 | 7 | 3/7 (43%) | 66.7% | 66.7% (Spearbit) | 3 | fresh | ❓ unknown | - |
| [coinsquare](./coinsquare/brief.md) | $12.42M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [desyn-protocol](./desyn-protocol/brief.md) | $10.82M | ethereum, mode | 11 | 2/11 (18%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [dxsale](./dxsale/brief.md) | $26.83M | 11 | 353 | 10/353 (3%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [egas-swap](./egas-swap/brief.md) | $19.34M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [endur](./endur/brief.md) | $9.72M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [enosys](./enosys/brief.md) | $28.01M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [feather](./feather/brief.md) | $16.55M | celo, klaytn, sei | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [fulcrom](./fulcrom/brief.md) | $13.52M | cronos, zksync-era | 80 | 0/80 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [gimo](./gimo/brief.md) | $9.07M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [goldfinger](./goldfinger/brief.md) | $23.90M | bsc | 5 | 4/5 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [growihf](./growihf/brief.md) | $8.42M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hakutora](./hakutora/brief.md) | $23.76M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [harmonix-finance](./harmonix-finance/brief.md) | $4.89M | 4 | 126 | 8/126 (6%) | 11.1% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [hashkey-global](./hashkey-global/brief.md) | $15.15M | scroll | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [helix-finance](./helix-finance/brief.md) | $11.00M | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hyperion](./hyperion/brief.md) | $20.98M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [immutable-zkevm](./immutable-zkevm/brief.md) | $29.24M | ethereum | 11 | 11/11 (100%) | 18.2% | 0.0% (-) | 1 | aging | ✅ active | - |
| [juicebox](./juicebox/brief.md) | $11.15M | 8 | 77 | 68/77 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [kasu](./kasu/brief.md) | $10.28M | base | 22 | 20/22 (91%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [kava-lend](./kava-lend/brief.md) | $11.82M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [layerbank](./layerbank/brief.md) | $22.07M | 4 | 91 | 13/91 (14%) | 50.0% | 0.0% (-) | 2 | fresh | 💀 dead | - |
| [lbank](./lbank/brief.md) | $9.76M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [levex](./levex/brief.md) | $11.23M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [llamapay](./llamapay/brief.md) | $26.44M | 17 | 20 | 6/20 (30%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [manta-cedefi](./manta-cedefi/brief.md) | $26.78M | manta | 17 | 15/17 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manta-pacific](./manta-pacific/brief.md) | $25.67M | ethereum, manta | 13 | 12/13 (92%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [meld-gold](./meld-gold/brief.md) | $11.13M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [merlinswap](./merlinswap/brief.md) | $8.66M | merlin | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mole](./mole/brief.md) | $8.84M | avalanche | 49 | 3/49 (6%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [more-markets](./more-markets/brief.md) | $11.97M | 4 | 21 | 20/21 (95%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [morph-bridge](./morph-bridge/brief.md) | $15.79M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [mu-digital](./mu-digital/brief.md) | $19.45M | ethereum | 12 | 12/12 (100%) | 100.0% | 100.0% (SlowMist) | 1 | fresh | ✅ active | - |
| [neutral-trade](./neutral-trade/brief.md) | $18.84M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [odyssey-finance](./odyssey-finance/brief.md) | $9.47M | base, ethereum, optimism | 79 | 74/79 (94%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [okcoin](./okcoin/brief.md) | $26.01M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [opinion](./opinion/brief.md) | $7.54M | bsc, ethereum | 6 | 4/6 (67%) | 100.0% | 0.0% (-) | 4 | fresh | ⚠️ declining | - |
| [probit-global](./probit-global/brief.md) | $12.65M | fantom | 3 | 0/3 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [sceptre-liquid](./sceptre-liquid/brief.md) | $20.33M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [solera](./solera/brief.md) | $8.09M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [sparkdex](./sparkdex/brief.md) | $29.43M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [stobox](./stobox/brief.md) | $15.12M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [syncswap-protocol](./syncswap-protocol/brief.md) | $10.03M | linea, scroll, zksync-era | 158 | 31/158 (20%) | 22.6% | 0.0% (-) | 3 | stale | ✅ active | - |
| [thedeep](./thedeep/brief.md) | $8.46M | 4 | 164 | 11/164 (7%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [truefi](./truefi/brief.md) | $15.40M | arbitrum, ethereum | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [universal-bridge](./universal-bridge/brief.md) | $7.70M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [uranium.io](./uranium.io/brief.md) | $7.36M | ethereum | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [ventuals](./ventuals/brief.md) | $28.76M | hyperliquid | 4 | 4/4 (100%) | 100.0% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [verio](./verio/brief.md) | $7.49M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [verus-market](./verus-market/brief.md) | $9.85M | ethereum | 32 | 0/32 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [yei-finance](./yei-finance/brief.md) | $29.76M | sei | 44 | 35/44 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [zoomex](./zoomex/brief.md) | $23.79M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |

_Generated: 2026-05-23T09:28:30.952Z_
_Projects: 152_
