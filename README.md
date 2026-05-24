# Agentic Audit Briefs

Machine-readable and human-readable audit coverage briefs for DeFi protocols, produced by [meta-audit](https://github.com/alexdolgov/meta-audit).

Each project directory contains:
- `brief.json` — machine-readable: full contract surface, audits, coverage, TVL
- `brief.md` — human-readable: overview, narrative, tables with links
- `contracts/` — verified source code organized by chain, with per-contract READMEs

## Project Directory

| Project | TVL (DL) | Chains | Implementations | Verified | Coverage | Tier 1 | Audits | Freshness | Status | ASD |
|---|---:|---|---:|---|---:|---|---:|---|---|---:|
| [zyfai](./zyfai/brief.md) | $6.38M | 5 | 147 | 130/147 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1557.94M |
| [inverse-finance](./inverse-finance/brief.md) | $44.53M | 5 | 125 | 117/125 (94%) | 13.7% | 9.4% (Code4rena, Sherlock) | 5 | fresh | ❓ unknown | $428.77M |
| [debridge](./debridge/brief.md) | $4.06M | 11 | 164 | 17/164 (10%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $379.52M |
| [hyperwave](./hyperwave/brief.md) | $6.37M | base, ethereum, hyperliquid | 12 | 8/12 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $322.69M |
| [allbridge](./allbridge/brief.md) | $27.58M | 13 | 284 | 77/284 (27%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $319.18M |
| [hop-protocol](./hop-protocol/brief.md) | $3.62M | 5 | 402 | 100/402 (25%) | 10.9% | 10.9% (Trail of Bits) | 4 | stale | ⚠️ declining | $258.69M |
| [aethir](./aethir/brief.md) | $9.79M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $257.03M |
| [symbiosis](./symbiosis/brief.md) | $9.35M | cronos, ethereum, scroll | 137 | 69/137 (50%) | 5.8% | 2.9% (SlowMist) | 5 | fresh | ✅ active | $236.15M |
| [mezo-bridge](./mezo-bridge/brief.md) | $21.64M | ethereum | 138 | 110/138 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $203.90M |
| [hypersurface](./hypersurface/brief.md) | $4.00M | base, hyperliquid | 242 | 39/242 (16%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $161.03M |
| [ribbon-finance](./ribbon-finance/brief.md) | $4.96M | avalanche, ethereum | 195 | 130/195 (67%) | 20.6% | 3.1% (OpenZeppelin) | 15 | stale | ⚠️ declining | $148.56M |
| [zircuit](./zircuit/brief.md) | $13.31M | base, ethereum | 17 | 16/17 (94%) | 25.0% | 0.0% (-) | 3 | aging | ⚠️ declining | $144.24M |
| [bio-protocol](./bio-protocol/brief.md) | $4.90M | base, ethereum | 41 | 40/41 (98%) | 10.0% | 0.0% (-) | 2 | fresh | ✅ active | $139.62M |
| [giza](./giza/brief.md) | $4.77M | base, plasma | 16 | 16/16 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $119.21M |
| [blur](./blur/brief.md) | $18.88M | blast, ethereum | 17 | 12/17 (71%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $91.73M |
| [zivoe](./zivoe/brief.md) | $13.83M | ethereum | 32 | 31/32 (97%) | 58.1% | 48.4% (Sherlock) | 3 | aging | ✅ active | $87.09M |
| [the-idols](./the-idols/brief.md) | $5.76M | ethereum | 17 | 13/17 (76%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $85.36M |
| [nest](./nest/brief.md) | $9.33M | 4 | 349 | 132/349 (38%) | 12.9% | 0.0% (-) | 1 | fresh | ✅ active | $69.42M |
| [init-capital](./init-capital/brief.md) | $4.51M | blast, mantle | 109 | 28/109 (26%) | 20.0% | 0.0% (-) | 4 | stale | ⚠️ declining | $66.15M |
| [flying-tulip](./flying-tulip/brief.md) | $5.48M | 5 | 152 | 133/152 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $53.12M |
| [synfutures](./synfutures/brief.md) | $6.31M | 6 | 482 | 4/482 (1%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $52.44M |
| [republic-note](./republic-note/brief.md) | $16.31M | avalanche | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $51.20M |
| [stakestone](./stakestone/brief.md) | $26.05M | 8 | 183 | 60/183 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $49.73M |
| [illuvium](./illuvium/brief.md) | $9.60M | ethereum | 17 | 15/17 (88%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $39.75M |
| [snowbank](./snowbank/brief.md) | $3.77M | avalanche | 108 | 12/108 (11%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $36.05M |
| [zklink-nova](./zklink-nova/brief.md) | $13.41M | 11 | 443 | 136/443 (31%) | 12.1% | 2.8% (OpenZeppelin) | 10 | aging | ⚠️ declining | $33.89M |
| [backedfi](./backedfi/brief.md) | $8.20M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $33.35M |
| [obeliskbtc](./obeliskbtc/brief.md) | $9.05M | ethereum | 19 | 19/19 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $33.19M |
| [eth-strategy](./eth-strategy/brief.md) | $3.88M | ethereum | 49 | 41/49 (84%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $30.76M |
| [index-coop](./index-coop/brief.md) | $13.14M | 4 | 235 | 111/235 (47%) | 11.7% | 0.0% (-) | 3 | aging | ⚠️ declining | $28.18M |
| [across](./across/brief.md) | $27.73M | 15 | 143 | 58/143 (41%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $28.14M |
| [pooltogether](./pooltogether/brief.md) | $8.65M | 8 | 153 | 106/153 (69%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $26.91M |
| [rocksolid-network](./rocksolid-network/brief.md) | $25.01M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $24.96M |
| [flock.io](./flock.io/brief.md) | $10.08M | base | 15 | 14/15 (93%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $24.37M |
| [ethichub](./ethichub/brief.md) | $4.05M | celo, ethereum, gnosis | 58 | 46/58 (79%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $22.68M |
| [piku](./piku/brief.md) | $17.13M | ethereum | 29 | 27/29 (93%) | 14.8% | 0.0% (-) | 1 | aging | ✅ active | $21.37M |
| [set-protocol](./set-protocol/brief.md) | $11.62M | ethereum | 111 | 15/111 (14%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $21.20M |
| [smardex-ecosystem](./smardex-ecosystem/brief.md) | $4.56M | 5 | 39 | 39/39 (100%) | 33.3% | 0.0% (-) | 4 | aging | ⚠️ declining | $20.06M |
| [reppo](./reppo/brief.md) | $6.44M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | $19.77M |
| [yieldnest](./yieldnest/brief.md) | $23.44M | 7 | 89 | 68/89 (76%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $19.22M |
| [katana-pre-launch](./katana-pre-launch/brief.md) | $18.64M | base, ethereum | 166 | 97/166 (58%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $18.32M |
| [parasail](./parasail/brief.md) | $3.67M | arbitrum | 41 | 2/41 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $17.21M |
| [hypha](./hypha/brief.md) | $15.29M | avalanche | 84 | 36/84 (43%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | $16.37M |
| [yieldfi](./yieldfi/brief.md) | $12.10M | 9 | 23 | 15/23 (65%) | 66.7% | 66.7% (Cyfrin, Sherlock) | 3 | fresh | ⚠️ declining | $16.26M |
| [geth](./geth/brief.md) | $16.27M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $16.16M |
| [inception](./inception/brief.md) | $5.95M | 9 | 79 | 65/79 (82%) | 27.3% | 0.0% (-) | 10 | aging | ❓ unknown | $15.64M |
| [thorswap](./thorswap/brief.md) | $10.26M | ethereum | 34 | 23/34 (68%) | 13.0% | 0.0% (-) | 2 | stale | ❓ unknown | $15.54M |
| [t-rize](./t-rize/brief.md) | $23.00M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $15.01M |
| [sideshift](./sideshift/brief.md) | $15.06M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $12.33M |
| [looping-collective](./looping-collective/brief.md) | $18.12M | ethereum, hyperliquid | 14 | 12/14 (86%) | 7.7% | 0.0% (-) | 1 | fresh | ✅ active | $11.81M |
| [d2-finance](./d2-finance/brief.md) | $24.57M | 5 | 184 | 60/184 (33%) | 48.4% | 11.3% (Cyfrin) | 2 | aging | ✅ active | $11.49M |
| [clever](./clever/brief.md) | $5.72M | ethereum | 78 | 68/78 (87%) | 10.3% | 0.0% (-) | 3 | stale | ✅ active | $10.78M |
| [intentx](./intentx/brief.md) | $5.67M | base, mantle | 56 | 25/56 (45%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $10.51M |
| [kaito](./kaito/brief.md) | $19.86M | base | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $9.48M |
| [tau-labs](./tau-labs/brief.md) | $5.02M | ethereum, plasma | 179 | 179/179 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $8.07M |
| [fuel-bridge](./fuel-bridge/brief.md) | $10.81M | ethereum | 18 | 15/18 (83%) | 26.7% | 0.0% (-) | 3 | fresh | ⚠️ declining | $7.63M |
| [alphagrowth](./alphagrowth/brief.md) | $8.85M | 4 | 135 | 109/135 (81%) | 8.3% | 6.4% (Certora, ChainSecurity, Cyfrin, Spearbit) | 15 | fresh | ✅ active | $6.65M |
| [sx-rollup-bridge](./sx-rollup-bridge/brief.md) | $6.10M | ethereum | 134 | 69/134 (51%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $6.12M |
| [dango](./dango/brief.md) | $4.09M | 17 | 906 | 187/906 (21%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $5.93M |
| [ambire-wallet](./ambire-wallet/brief.md) | $6.21M | ethereum | 9 | 2/9 (22%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | $5.82M |
| [ekubo](./ekubo/brief.md) | $27.16M | ethereum | 15 | 9/15 (60%) | 44.4% | 22.2% (Code4rena) | 3 | fresh | ❓ unknown | $5.65M |
| [axc-gift](./axc-gift/brief.md) | $5.29M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $5.29M |
| [delta-financial](./delta-financial/brief.md) | $10.48M | ethereum | 53 | 39/53 (74%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $4.51M |
| [atlendis](./atlendis/brief.md) | $10.99M | polygon | 43 | 14/43 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $4.28M |
| [dexalot](./dexalot/brief.md) | $9.31M | avalanche | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $4.21M |
| [trueo](./trueo/brief.md) | $3.80M | base | 23 | 23/23 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $4.05M |
| [stafi](./stafi/brief.md) | $4.06M | ethereum | 42 | 23/42 (55%) | 26.1% | 0.0% (-) | 4 | stale | ⚠️ declining | $3.92M |
| [swaap](./swaap/brief.md) | $4.42M | 11 | 128 | 6/128 (5%) | 25.0% | 25.0% (ChainSecurity) | 3 | stale | ⚠️ declining | $3.81M |
| [syntropia](./syntropia/brief.md) | $3.66M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.66M |
| [dforce](./dforce/brief.md) | $12.48M | 7 | 450 | 99/450 (22%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.61M |
| [xsy](./xsy/brief.md) | $20.97M | avalanche | 16 | 5/16 (31%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.60M |
| [stakingverse](./stakingverse/brief.md) | $4.20M | ethereum, lukso | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $3.54M |
| [llama-airforce](./llama-airforce/brief.md) | $3.90M | ethereum | 93 | 60/93 (65%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.51M |
| [lair-finance](./lair-finance/brief.md) | $6.14M | berachain | 78 | 14/78 (18%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $3.41M |
| [beradrome](./beradrome/brief.md) | $7.14M | berachain | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.29M |
| [steer-protocol](./steer-protocol/brief.md) | $20.90M | arbitrum | 43 | 31/43 (72%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.26M |
| [liquidloans](./liquidloans/brief.md) | $3.96M | base | 20 | 20/20 (100%) | 30.0% | 0.0% (-) | 2 | fresh | ⚠️ declining | $3.04M |
| [parallel-protocol](./parallel-protocol/brief.md) | $3.79M | 19 | 38 | 26/38 (68%) | 30.8% | 0.0% (-) | 5 | aging | ✅ active | $2.98M |
| [gro](./gro/brief.md) | $4.66M | ethereum | 124 | 36/124 (29%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.93M |
| [alien-base](./alien-base/brief.md) | $4.99M | base | 58 | 47/58 (81%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.92M |
| [izumi-finance](./izumi-finance/brief.md) | $3.79M | 13 | 181 | 21/181 (12%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $2.76M |
| [singularity-finance](./singularity-finance/brief.md) | $5.36M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $2.69M |
| [loopring](./loopring/brief.md) | $10.57M | base, ethereum | 145 | 75/145 (52%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.43M |
| [revert](./revert/brief.md) | $11.61M | 8 | 84 | 18/84 (21%) | 11.1% | 0.0% (-) | 2 | stale | ✅ active | $2.09M |
| [credit-coop](./credit-coop/brief.md) | $4.55M | base, ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | $2.08M |
| [osmosis-dex](./osmosis-dex/brief.md) | $18.17M | 17 | 935 | 185/935 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $1.88M |
| [liminal](./liminal/brief.md) | $23.06M | 17 | 935 | 185/935 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.86M |
| [txflow](./txflow/brief.md) | $3.72M | 17 | 905 | 186/905 (21%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.86M |
| [defituna](./defituna/brief.md) | $4.06M | 17 | 904 | 185/904 (20%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $1.86M |
| [solayer](./solayer/brief.md) | $13.48M | 17 | 935 | 185/935 (20%) | 0.0% | 0.0% (-) | 0 | aging | ⚠️ declining | $1.85M |
| [hyperswap](./hyperswap/brief.md) | $14.21M | 18 | 940 | 185/940 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.85M |
| [serum](./serum/brief.md) | $15.45M | 17 | 935 | 185/935 (20%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.85M |
| [saber](./saber/brief.md) | $4.69M | 17 | 904 | 185/904 (20%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.85M |
| [badger-dao](./badger-dao/brief.md) | $9.79M | 4 | 330 | 120/330 (36%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.85M |
| [coti-treasury](./coti-treasury/brief.md) | $10.55M | 17 | 935 | 185/935 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.85M |
| [metadao](./metadao/brief.md) | $12.30M | 17 | 935 | 185/935 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.85M |
| [splash-protocol](./splash-protocol/brief.md) | $5.19M | 17 | 904 | 185/904 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.85M |
| [chainge-finance](./chainge-finance/brief.md) | $12.14M | 17 | 935 | 185/935 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.85M |
| [aftermath-finance](./aftermath-finance/brief.md) | $5.46M | 17 | 904 | 185/904 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $1.85M |
| [wrapped-bnb](./wrapped-bnb/brief.md) | $6.03M | 18 | 905 | 185/905 (20%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $1.85M |
| [vnx](./vnx/brief.md) | $7.47M | 7 | 10 | 5/10 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.85M |
| [lumenswap](./lumenswap/brief.md) | $6.33M | 17 | 904 | 185/904 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.85M |
| [nuls](./nuls/brief.md) | $7.33M | 17 | 904 | 185/904 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.85M |
| [tinyman](./tinyman/brief.md) | $6.83M | 17 | 904 | 185/904 (20%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $1.85M |
| [xwin-finance](./xwin-finance/brief.md) | $6.17M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $1.84M |
| [pnetwork](./pnetwork/brief.md) | $13.10M | 4 | 355 | 109/355 (31%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $1.82M |
| [aevo](./aevo/brief.md) | $20.57M | 4 | 331 | 147/331 (44%) | 9.2% | 0.0% (-) | 6 | stale | ✅ active | $1.70M |
| [wrapped](./wrapped/brief.md) | $24.56M | celo, ethereum | 119 | 62/119 (52%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.70M |
| [hakka-finance](./hakka-finance/brief.md) | $4.74M | ethereum | 103 | 84/103 (82%) | 10.7% | 0.0% (-) | 6 | stale | ✅ active | $1.69M |
| [benddao](./benddao/brief.md) | $7.30M | ethereum | 67 | 51/67 (76%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | $1.69M |
| [minto](./minto/brief.md) | $3.83M | bsc, ethereum, heco | 11 | 8/11 (73%) | 12.5% | 0.0% (-) | 1 | stale | ❓ unknown | $1.66M |
| [predict-fun](./predict-fun/brief.md) | $14.59M | blast, bsc | 40 | 25/40 (63%) | 8.0% | 8.0% (Cyfrin) | 2 | fresh | ❓ unknown | $1.47M |
| [sashimiswap](./sashimiswap/brief.md) | $5.00M | ethereum, heco | 61 | 31/61 (51%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.44M |
| [taiko-bridge](./taiko-bridge/brief.md) | $17.26M | ethereum | 52 | 44/52 (85%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.42M |
| [shardingdao](./shardingdao/brief.md) | $7.90M | ethereum | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.38M |
| [peapods-finance](./peapods-finance/brief.md) | $7.10M | 6 | 130 | 46/130 (35%) | 53.1% | 0.0% (-) | 4 | aging | ⚠️ declining | $949.46K |
| [bend](./bend/brief.md) | $12.39M | berachain, ethereum | 105 | 59/105 (56%) | 20.3% | 20.3% (Spearbit) | 2 | fresh | ❓ unknown | $896.83K |
| [anthias-labs](./anthias-labs/brief.md) | $17.85M | base | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $705.35K |
| [orbit-bridge](./orbit-bridge/brief.md) | $17.87M | 5 | 22 | 5/22 (23%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $640.23K |
| [biswap](./biswap/brief.md) | $5.70M | 4 | 84 | 13/84 (15%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | $609.28K |
| [arbitrum-nova-bridge](./arbitrum-nova-bridge/brief.md) | $19.20M | arbitrum, ethereum | 55 | 48/55 (87%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $447.17K |
| [camelot](./camelot/brief.md) | $27.14M | arbitrum | 127 | 52/127 (41%) | 17.3% | 0.0% (-) | 1 | stale | ✅ active | $391.94K |
| [keyring](./keyring/brief.md) | $6.22M | avalanche, ethereum | 134 | 109/134 (81%) | 8.3% | 6.4% (Certora, ChainSecurity, Cyfrin, Spearbit) | 15 | fresh | ✅ active | $348.76K |
| [arcade.xyz](./arcade.xyz/brief.md) | $5.39M | ethereum | 61 | 44/61 (72%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $240.14K |
| [bob-bridge](./bob-bridge/brief.md) | $3.61M | ethereum | 53 | 49/53 (92%) | 2.0% | 0.0% (-) | 2 | fresh | ⚠️ declining | $202.90K |
| [ratex](./ratex/brief.md) | $5.39M | bsc | 168 | 91/168 (54%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $98.79K |
| [csigma-finance](./csigma-finance/brief.md) | $12.66M | arbitrum, base, ethereum | 50 | 38/50 (76%) | 41.0% | 0.0% (-) | 3 | aging | ✅ active | $65.57K |
| [hegic](./hegic/brief.md) | $10.10M | ethereum | 63 | 26/63 (41%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $54.07K |
| [hemibtc](./hemibtc/brief.md) | $15.09M | bsc, ethereum, optimism | 47 | 37/47 (79%) | 2.7% | 0.0% (-) | 2 | fresh | ✅ active | $46.20K |
| [ultron-staking-hub-nft](./ultron-staking-hub-nft/brief.md) | $7.43M | 5 | 150 | 6/150 (4%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $43.46K |
| [dinari](./dinari/brief.md) | $10.83M | 4 | 71 | 31/71 (44%) | 37.5% | 15.6% (Sherlock) | 3 | aging | ❓ unknown | $36.60K |
| [seamless-protocol](./seamless-protocol/brief.md) | $47.56M | base, ethereum | 98 | 87/98 (89%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $34.75K |
| [bscswap](./bscswap/brief.md) | $5.00M | bsc | 30 | 22/30 (73%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $20.27K |
| [anzen-finance](./anzen-finance/brief.md) | $7.59M | 5 | 48 | 40/48 (83%) | 35.0% | 0.0% (-) | 4 | aging | ⚠️ declining | $10.86K |
| [injective-bridge](./injective-bridge/brief.md) | $14.89M | ethereum | 9 | 3/9 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.62K |
| [tranchess](./tranchess/brief.md) | $5.74M | bsc, ethereum, scroll | 135 | 101/135 (75%) | 23.8% | 0.0% (-) | 8 | stale | 💀 dead | $1.94K |
| [credbull](./credbull/brief.md) | $10.94M | arbitrum, polygon | 83 | 82/83 (99%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.89K |
| [shadow-exchange](./shadow-exchange/brief.md) | $5.27M | sonic | 84 | 51/84 (61%) | 21.6% | 21.6% (Spearbit) | 1 | fresh | ⚠️ declining | $999.84 |
| [proxy](./proxy/brief.md) | $20.23M | ethereum, polygon | 278 | 12/278 (4%) | 8.3% | 0.0% (-) | 1 | stale | ✅ active | $735.64 |
| [morpheusai](./morpheusai/brief.md) | $28.63M | arbitrum, ethereum | 47 | 47/47 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $621.83 |
| [thena](./thena/brief.md) | $4.50M | bsc | 358 | 155/358 (43%) | 7.1% | 1.9% (OpenZeppelin) | 2 | fresh | ⚠️ declining | $208.89 |
| [ankr](./ankr/brief.md) | $22.09M | avalanche, ethereum, fantom | 147 | 114/147 (78%) | 0.9% | 0.9% (ChainSecurity) | 1 | stale | ✅ active | $47.39 |
| [toupee.tech](./toupee.tech/brief.md) | $6.38M | base | 29 | 25/29 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $24.29 |
| [goose](./goose/brief.md) | $12.80M | ethereum | 7 | 3/7 (43%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $7.87 |
| [acre](./acre/brief.md) | $4.30M | ethereum | 220 | 207/220 (94%) | 0.5% | 0.0% (-) | 2 | aging | ❓ unknown | $3.02 |
| [kinza-finance](./kinza-finance/brief.md) | $7.84M | 4 | 154 | 50/154 (32%) | 2.0% | 0.0% (-) | 1 | stale | ⚠️ declining | $0.01 |
| [mansory](./mansory/brief.md) | $6.34M | bsc | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $0.00 |
| [3f-mutual](./3f-mutual/brief.md) | $4.07M | ethereum | 25 | 22/25 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [abc-pool](./abc-pool/brief.md) | $6.29M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aitech](./aitech/brief.md) | $4.04M | bsc | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [altitude.fi](./altitude.fi/brief.md) | $13.73M | ethereum | 124 | 18/124 (15%) | 72.2% | 0.0% (-) | 6 | aging | ✅ active | - |
| [amnis-finance](./amnis-finance/brief.md) | $11.93M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [angstrom](./angstrom/brief.md) | $11.35M | base, ethereum | 13 | 13/13 (100%) | 7.7% | 7.7% (Spearbit) | 1 | fresh | ✅ active | - |
| [antarctic](./antarctic/brief.md) | $9.31M | arbitrum | 11 | 8/11 (73%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [anvil](./anvil/brief.md) | $18.35M | ethereum | 3 | 3/3 (100%) | 100.0% | 100.0% (OpenZeppelin, Trail of Bits) | 3 | fresh | ❓ unknown | - |
| [arcadia-finance](./arcadia-finance/brief.md) | $7.26M | base, optimism, unichain | 55 | 52/55 (95%) | 63.5% | 53.8% (Sherlock) | 12 | fresh | ✅ active | - |
| [asseto-aoabt](./asseto-aoabt/brief.md) | $22.28M | avalanche | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [autofarm](./autofarm/brief.md) | $6.10M | 13 | 426 | 18/426 (4%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [avalaunch](./avalaunch/brief.md) | $6.95M | avalanche | 39 | 14/39 (36%) | 78.6% | 0.0% (-) | 13 | stale | ❓ unknown | - |
| [bifi](./bifi/brief.md) | $7.54M | avalanche, ethereum, klaytn | 170 | 45/170 (26%) | 30.4% | 0.0% (-) | 3 | stale | ✅ active | - |
| [bima-cdp](./bima-cdp/brief.md) | $5.36M | bsc, ethereum, sonic | 38 | 30/38 (79%) | 50.0% | 50.0% (Cyfrin, Spearbit) | 3 | fresh | ✅ active | - |
| [binaryx-platform](./binaryx-platform/brief.md) | $8.64M | polygon | 133 | 25/133 (19%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [bitlo](./bitlo/brief.md) | $16.66M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitu-protocol](./bitu-protocol/brief.md) | $23.14M | bsc | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [bitvenus](./bitvenus/brief.md) | $20.90M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [blackhole](./blackhole/brief.md) | $29.94M | avalanche | 86 | 45/86 (52%) | 31.1% | 31.1% (Code4rena) | 3 | fresh | ❓ unknown | - |
| [blueshift](./blueshift/brief.md) | $4.38M | kava, polygon | 42 | 8/42 (19%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [bonzo-finance](./bonzo-finance/brief.md) | $22.60M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [boros](./boros/brief.md) | $10.38M | arbitrum | 2 | 2/2 (100%) | 100.0% | 100.0% (ChainSecurity) | 2 | fresh | ✅ active | - |
| [botto](./botto/brief.md) | $4.35M | base, ethereum | 19 | 14/19 (74%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bouncebit-prime](./bouncebit-prime/brief.md) | $11.94M | ethereum | 9 | 2/9 (22%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [btcfi](./btcfi/brief.md) | $11.86M | base | 15 | 1/15 (7%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [bulbaswap](./bulbaswap/brief.md) | $9.10M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cex.io](./cex.io/brief.md) | $8.58M | ethereum, polygon | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [chain-fusion](./chain-fusion/brief.md) | $19.29M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [chaingpt](./chaingpt/brief.md) | $4.89M | 7 | 87 | 3/87 (3%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [charm-finance](./charm-finance/brief.md) | $2.20M | 5 | 7 | 3/7 (43%) | 66.7% | 66.7% (Spearbit) | 3 | fresh | ❓ unknown | - |
| [citrea-bridge](./citrea-bridge/brief.md) | $5.13M | ethereum | 4 | 3/4 (75%) | 33.3% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [coinsquare](./coinsquare/brief.md) | $12.42M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [colend-protocol](./colend-protocol/brief.md) | $4.32M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [core-bridge](./core-bridge/brief.md) | $4.01M | avalanche, base | 9 | 5/9 (56%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [defi-kingdoms](./defi-kingdoms/brief.md) | $6.45M | harmony, klaytn | 5 | 0/5 (0%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | - |
| [desyn-protocol](./desyn-protocol/brief.md) | $10.82M | ethereum, mode | 11 | 2/11 (18%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [dooar](./dooar/brief.md) | $5.14M | bsc | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [dxsale](./dxsale/brief.md) | $26.83M | 11 | 353 | 10/353 (3%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [easedefi.org](./easedefi.org/brief.md) | $4.42M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [egas-swap](./egas-swap/brief.md) | $19.34M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [endur](./endur/brief.md) | $9.72M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [enosys](./enosys/brief.md) | $28.01M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [equilibre](./equilibre/brief.md) | $6.90M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [etherfuse](./etherfuse/brief.md) | $5.11M | base, polygon | 25 | 4/25 (16%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [feather](./feather/brief.md) | $16.55M | celo, klaytn, sei | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [ferro](./ferro/brief.md) | $5.05M | cronos | 21 | 0/21 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [four.meme](./four.meme/brief.md) | $4.89M | bsc | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [fulcrom](./fulcrom/brief.md) | $13.52M | cronos, zksync-era | 80 | 0/80 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [generic.money](./generic.money/brief.md) | $3.74M | ethereum | 13 | 12/13 (92%) | 75.0% | 75.0% (Spearbit) | 1 | fresh | ✅ active | - |
| [gimo](./gimo/brief.md) | $9.07M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [goldfinger](./goldfinger/brief.md) | $23.90M | bsc | 5 | 4/5 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [growihf](./growihf/brief.md) | $8.42M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [h2-finance](./h2-finance/brief.md) | $3.69M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hakutora](./hakutora/brief.md) | $23.76M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [harmonix-finance](./harmonix-finance/brief.md) | $4.89M | 4 | 127 | 9/127 (7%) | 10.0% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [hashkey-global](./hashkey-global/brief.md) | $15.15M | scroll | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [helix-finance](./helix-finance/brief.md) | $11.00M | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hera-finance](./hera-finance/brief.md) | $5.80M | metis | 28 | 7/28 (25%) | 42.9% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [hotcoin](./hotcoin/brief.md) | $5.36M | scroll | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hyperion](./hyperion/brief.md) | $20.98M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [immutable-zkevm](./immutable-zkevm/brief.md) | $29.24M | ethereum | 11 | 11/11 (100%) | 18.2% | 0.0% (-) | 1 | aging | ✅ active | - |
| [juicebox](./juicebox/brief.md) | $11.15M | 8 | 77 | 68/77 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [k2](./k2/brief.md) | $4.75M | ethereum | 30 | 21/30 (70%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [kasu](./kasu/brief.md) | $10.28M | base | 22 | 20/22 (91%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [kava-lend](./kava-lend/brief.md) | $11.82M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [klayswap](./klayswap/brief.md) | $4.84M | klaytn | 22 | 0/22 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [layerbank](./layerbank/brief.md) | $22.07M | 4 | 91 | 13/91 (14%) | 50.0% | 0.0% (-) | 2 | fresh | 💀 dead | - |
| [lbank](./lbank/brief.md) | $9.76M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [levex](./levex/brief.md) | $11.23M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [llamapay](./llamapay/brief.md) | $26.44M | 17 | 20 | 6/20 (30%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [mangrove](./mangrove/brief.md) | $4.25M | 4 | 68 | 41/68 (60%) | 24.4% | 17.1% (ChainSecurity, Code4rena) | 7 | aging | ✅ active | - |
| [manta-atlantic-stake](./manta-atlantic-stake/brief.md) | $5.22M | ethereum, manta | 112 | 71/112 (63%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manta-cedefi](./manta-cedefi/brief.md) | $26.78M | manta | 17 | 15/17 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manta-pacific](./manta-pacific/brief.md) | $25.67M | ethereum, manta | 13 | 12/13 (92%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [matstake](./matstake/brief.md) | $4.77M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [meld-gold](./meld-gold/brief.md) | $11.13M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [merlinswap](./merlinswap/brief.md) | $8.66M | merlin | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mode-bridge](./mode-bridge/brief.md) | $6.18M | ethereum, mode | 100 | 34/100 (34%) | 2.9% | 0.0% (-) | 1 | aging | ⚠️ declining | - |
| [mole](./mole/brief.md) | $8.84M | avalanche | 49 | 3/49 (6%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [more-markets](./more-markets/brief.md) | $11.97M | 4 | 21 | 20/21 (95%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [morph-bridge](./morph-bridge/brief.md) | $15.79M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [mu-digital](./mu-digital/brief.md) | $19.45M | ethereum | 12 | 12/12 (100%) | 100.0% | 100.0% (SlowMist) | 1 | fresh | ✅ active | - |
| [mystic-finance](./mystic-finance/brief.md) | $5.46M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [nawa-protocol](./nawa-protocol/brief.md) | $4.07M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [neptune-finance](./neptune-finance/brief.md) | $6.05M | ethereum | 73 | 19/73 (26%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [neutral-trade](./neutral-trade/brief.md) | $18.84M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nonkyc](./nonkyc/brief.md) | $5.80M | 4 | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [nostra](./nostra/brief.md) | $7.03M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [odyssey-finance](./odyssey-finance/brief.md) | $9.47M | base, ethereum, optimism | 79 | 74/79 (94%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [okcoin](./okcoin/brief.md) | $26.01M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [opinion](./opinion/brief.md) | $7.54M | bsc, ethereum | 6 | 4/6 (67%) | 100.0% | 0.0% (-) | 4 | fresh | ⚠️ declining | - |
| [p2pb2b](./p2pb2b/brief.md) | $4.89M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pangolin](./pangolin/brief.md) | $3.66M | avalanche | 182 | 28/182 (15%) | 53.6% | 0.0% (-) | 10 | aging | 💀 dead | - |
| [paragonsdao](./paragonsdao/brief.md) | $6.23M | base | 2 | 2/2 (100%) | 50.0% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [polynomial-protocol](./polynomial-protocol/brief.md) | $5.32M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [potatoswap](./potatoswap/brief.md) | $4.83M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [powh3d](./powh3d/brief.md) | $4.46M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [prime-staking](./prime-staking/brief.md) | $5.09M | base | 10 | 3/10 (30%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [privacy-pools](./privacy-pools/brief.md) | $6.66M | arbitrum, ethereum, optimism | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [probit-global](./probit-global/brief.md) | $12.65M | fantom | 3 | 0/3 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [pumpspace](./pumpspace/brief.md) | $4.03M | avalanche | 763 | 7/763 (1%) | 28.6% | 0.0% (-) | 2 | aging | ✅ active | - |
| [reddex](./reddex/brief.md) | $5.25M | ethereum | 5 | 4/5 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [risex](./risex/brief.md) | $3.93M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ronin-bridge](./ronin-bridge/brief.md) | $4.63M | ethereum | 11 | 5/11 (45%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [sceptre-liquid](./sceptre-liquid/brief.md) | $20.33M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [scrub-money](./scrub-money/brief.md) | $7.15M | arbitrum, kava | 19 | 1/19 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [solera](./solera/brief.md) | $8.09M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [sophon-farm](./sophon-farm/brief.md) | $7.01M | ethereum | 1 | 1/1 (100%) | 100.0% | 100.0% (Sherlock) | 3 | aging | 💀 dead | - |
| [sorare-bridge](./sorare-bridge/brief.md) | $4.03M | ethereum | 58 | 38/58 (66%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [sparkdex](./sparkdex/brief.md) | $29.43M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [spiraldao](./spiraldao/brief.md) | $6.40M | ethereum, zksync-era | 56 | 25/56 (45%) | 44.0% | 0.0% (-) | 3 | stale | 💀 dead | - |
| [splashing-stake](./splashing-stake/brief.md) | $6.19M | sei | 8 | 4/8 (50%) | 75.0% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [sport.fun](./sport.fun/brief.md) | $3.65M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [stablehodl](./stablehodl/brief.md) | $6.96M | bsc, ethereum, polygon | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [stargate](./stargate/brief.md) | $6.17M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stfil](./stfil/brief.md) | $5.64M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stobox](./stobox/brief.md) | $15.12M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [swapscanner](./swapscanner/brief.md) | $4.68M | klaytn | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [syncswap-protocol](./syncswap-protocol/brief.md) | $10.03M | linea, scroll, zksync-era | 158 | 31/158 (20%) | 22.6% | 0.0% (-) | 3 | stale | ✅ active | - |
| [thedeep](./thedeep/brief.md) | $8.46M | 4 | 164 | 11/164 (7%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [thruster](./thruster/brief.md) | $5.82M | blast | 20 | 14/20 (70%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [tothemoon](./tothemoon/brief.md) | $3.79M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [troves](./troves/brief.md) | $4.99M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [truefi](./truefi/brief.md) | $15.40M | arbitrum, ethereum | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [trufin-protocol](./trufin-protocol/brief.md) | $6.84M | ethereum | 7 | 6/7 (86%) | 66.7% | 33.3% (OpenZeppelin) | 7 | fresh | ⚠️ declining | - |
| [universal-bridge](./universal-bridge/brief.md) | $7.70M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [uranium.io](./uranium.io/brief.md) | $7.36M | ethereum | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [ventuals](./ventuals/brief.md) | $28.76M | hyperliquid | 4 | 4/4 (100%) | 100.0% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [verio](./verio/brief.md) | $7.49M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [verus-market](./verus-market/brief.md) | $9.85M | ethereum | 32 | 0/32 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [woo-x](./woo-x/brief.md) | $7.08M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [yei-finance](./yei-finance/brief.md) | $29.76M | sei | 44 | 35/44 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [zeebu](./zeebu/brief.md) | $5.39M | base, ethereum | 8 | 3/8 (38%) | 66.7% | 66.7% (Certora, OpenZeppelin) | 2 | aging | ❓ unknown | - |
| [zenlink](./zenlink/brief.md) | $5.52M | moonbeam, moonriver | 226 | 12/226 (5%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [zoomex](./zoomex/brief.md) | $23.79M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |

_Generated: 2026-05-24T03:46:03.093Z_
_Projects: 282_
