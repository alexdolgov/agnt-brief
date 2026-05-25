# Agentic Audit Briefs

Machine-readable and human-readable audit coverage briefs for DeFi protocols, produced by [meta-audit](https://github.com/alexdolgov/meta-audit).

Each project directory contains:
- `brief.json` — machine-readable: full contract surface, audits, coverage, TVL
- `brief.md` — human-readable: overview, narrative, tables with links
- `contracts/` — verified source code organized by chain, with per-contract READMEs

## Project Directory

| Project | TVL (DL) | Chains | Implementations | Verified | Coverage | Tier 1 | Audits | Freshness | Status | ASD |
|---|---:|---|---:|---|---:|---|---:|---|---|---:|
| [cream-finance](./cream-finance/brief.md) | $1.68M | 4 | 95 | 63/95 (66%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | $2280.01M |
| [zyfai](./zyfai/brief.md) | $6.38M | 5 | 147 | 130/147 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1557.94M |
| [rumpel-labs](./rumpel-labs/brief.md) | $1.92M | ethereum | 135 | 120/135 (89%) | 1.7% | 0.0% (-) | 2 | aging | ⚠️ declining | $1070.08M |
| [bracket-protocol](./bracket-protocol/brief.md) | $3.09M | arbitrum, ethereum | 60 | 48/60 (80%) | 16.7% | 0.0% (-) | 4 | fresh | ✅ active | $920.58M |
| [planet](./planet/brief.md) | $1.85M | bsc | 34 | 26/34 (76%) | 7.7% | 0.0% (-) | 1 | stale | 💀 dead | $778.29M |
| [mantra-dao](./mantra-dao/brief.md) | $1.75M | ethereum, polygon | 209 | 90/209 (43%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $612.50M |
| [trevee-earn](./trevee-earn/brief.md) | $1.15M | ethereum, plasma, sonic | 29 | 28/29 (97%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $582.36M |
| [inverse-finance](./inverse-finance/brief.md) | $44.53M | 5 | 125 | 117/125 (94%) | 13.7% | 9.4% (Code4rena, Sherlock) | 5 | fresh | ❓ unknown | $428.77M |
| [debridge](./debridge/brief.md) | $4.06M | 11 | 164 | 17/164 (10%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $379.52M |
| [kine-finance](./kine-finance/brief.md) | $1.11M | 4 | 35 | 33/35 (94%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $351.76M |
| [tenderize](./tenderize/brief.md) | $1.08M | arbitrum, ethereum | 43 | 38/43 (88%) | 2.6% | 0.0% (-) | 2 | stale | ⚠️ declining | $332.49M |
| [mitosis](./mitosis/brief.md) | $1.48M | 11 | 72 | 46/72 (64%) | 4.3% | 4.3% (Code4rena) | 1 | fresh | 💀 dead | $329.08M |
| [hyperwave](./hyperwave/brief.md) | $6.37M | base, ethereum, hyperliquid | 12 | 8/12 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $322.69M |
| [rari-capital](./rari-capital/brief.md) | $1.51M | arbitrum, ethereum | 253 | 89/253 (35%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $321.37M |
| [allbridge](./allbridge/brief.md) | $27.58M | 13 | 284 | 77/284 (27%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $319.18M |
| [satlayer](./satlayer/brief.md) | $1.18M | 4 | 313 | 113/313 (36%) | 4.4% | 0.0% (-) | 6 | fresh | ⚠️ declining | $287.19M |
| [btcst](./btcst/brief.md) | $1.09M | bsc | 64 | 11/64 (17%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $263.69M |
| [hop-protocol](./hop-protocol/brief.md) | $3.62M | 5 | 402 | 100/402 (25%) | 10.9% | 10.9% (Trail of Bits) | 4 | stale | ⚠️ declining | $258.69M |
| [aethir](./aethir/brief.md) | $9.79M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $257.03M |
| [symbiosis](./symbiosis/brief.md) | $9.35M | cronos, ethereum, scroll | 40 | 26/40 (65%) | 15.4% | 7.7% (SlowMist) | 5 | fresh | ✅ active | $236.15M |
| [decentralized-euro](./decentralized-euro/brief.md) | $2.08M | 5 | 72 | 39/72 (54%) | 28.2% | 28.2% (ChainSecurity) | 2 | aging | ✅ active | $230.43M |
| [superfarm](./superfarm/brief.md) | $1.16M | ethereum | 51 | 38/51 (75%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $211.05M |
| [mezo-bridge](./mezo-bridge/brief.md) | $21.64M | ethereum | 138 | 110/138 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $203.90M |
| [zircuit-finance](./zircuit-finance/brief.md) | $1.51M | base, ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $180.12M |
| [babydogecoin](./babydogecoin/brief.md) | $2.08M | 17 | 54 | 37/54 (69%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $166.37M |
| [cyclone](./cyclone/brief.md) | $1.31M | bsc, ethereum, polygon | 86 | 40/86 (47%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $165.47M |
| [hypersurface](./hypersurface/brief.md) | $4.00M | base, hyperliquid | 242 | 39/242 (16%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $161.03M |
| [ribbon-finance](./ribbon-finance/brief.md) | $4.96M | avalanche, ethereum | 147 | 86/147 (59%) | 31.0% | 4.6% (OpenZeppelin) | 15 | stale | ⚠️ declining | $148.56M |
| [zircuit](./zircuit/brief.md) | $13.31M | base, ethereum | 17 | 16/17 (94%) | 25.0% | 0.0% (-) | 3 | aging | ⚠️ declining | $144.24M |
| [beanstalk](./beanstalk/brief.md) | $6.66M | arbitrum, ethereum | 244 | 167/244 (68%) | 20.4% | 1.2% (Code4rena, Cyfrin, Immunefi) | 7 | stale | 💀 dead | $142.55M |
| [bio-protocol](./bio-protocol/brief.md) | $4.90M | base, ethereum | 41 | 40/41 (98%) | 10.0% | 0.0% (-) | 2 | fresh | ✅ active | $139.62M |
| [wavesbridge](./wavesbridge/brief.md) | $1.04M | ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $136.63M |
| [giza](./giza/brief.md) | $4.77M | base, plasma | 16 | 16/16 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $119.21M |
| [velo-finance](./velo-finance/brief.md) | $1.74M | bsc | 28 | 4/28 (14%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $117.63M |
| [yieldseeker](./yieldseeker/brief.md) | $1.26M | base | 191 | 51/191 (27%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | $102.88M |
| [gnosis-protocol-v1](./gnosis-protocol-v1/brief.md) | $2.25M | ethereum | 112 | 75/112 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $95.88M |
| [velvet.capital](./velvet.capital/brief.md) | $1.44M | 4 | 420 | 44/420 (10%) | 77.8% | 2.2% (Spearbit) | 13 | fresh | ⚠️ declining | $95.22M |
| [blur](./blur/brief.md) | $18.88M | blast, ethereum | 17 | 12/17 (71%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $91.73M |
| [b.protocol](./b.protocol/brief.md) | $1.79M | 4 | 186 | 121/186 (65%) | 4.1% | 1.6% (Code4rena) | 5 | stale | 💀 dead | $89.13M |
| [zivoe](./zivoe/brief.md) | $13.83M | ethereum | 32 | 31/32 (97%) | 58.1% | 48.4% (Sherlock) | 3 | aging | ✅ active | $87.09M |
| [the-idols](./the-idols/brief.md) | $5.76M | ethereum | 17 | 13/17 (76%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $85.36M |
| [mendi-finance](./mendi-finance/brief.md) | $2.03M | linea | 39 | 28/39 (72%) | 10.7% | 3.6% (Sherlock) | 2 | fresh | ❓ unknown | $79.07M |
| [stable-jack](./stable-jack/brief.md) | $1.82M | avalanche, sonic | 249 | 31/249 (12%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $76.85M |
| [bridgers](./bridgers/brief.md) | $2.08M | 8 | 9 | 4/9 (44%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $71.92M |
| [nest](./nest/brief.md) | $9.33M | 4 | 349 | 132/349 (38%) | 12.9% | 0.0% (-) | 1 | fresh | ✅ active | $69.42M |
| [switcheo-finance](./switcheo-finance/brief.md) | $1.25M | ethereum | 48 | 30/48 (63%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $68.37M |
| [init-capital](./init-capital/brief.md) | $4.51M | blast, mantle | 109 | 28/109 (26%) | 20.0% | 0.0% (-) | 4 | stale | ⚠️ declining | $66.15M |
| [turtle-club](./turtle-club/brief.md) | $1.29M | 4 | 516 | 340/516 (66%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $59.81M |
| [deeplock](./deeplock/brief.md) | $2.15M | bsc | 70 | 38/70 (54%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $56.17M |
| [flying-tulip](./flying-tulip/brief.md) | $5.48M | 5 | 77 | 74/77 (96%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $52.76M |
| [synfutures](./synfutures/brief.md) | $6.31M | 6 | 482 | 4/482 (1%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $52.44M |
| [stcyber](./stcyber/brief.md) | $1.63M | 4 | 31 | 26/31 (84%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $51.36M |
| [republic-note](./republic-note/brief.md) | $16.31M | avalanche | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $51.20M |
| [stakestone](./stakestone/brief.md) | $26.05M | 8 | 183 | 60/183 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $49.73M |
| [illuvium](./illuvium/brief.md) | $9.60M | ethereum | 17 | 15/17 (88%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $39.75M |
| [universe-xyz](./universe-xyz/brief.md) | $1.65M | ethereum | 36 | 25/36 (69%) | 20.0% | 0.0% (-) | 2 | stale | 💀 dead | $38.95M |
| [carbon-defi](./carbon-defi/brief.md) | $3.51M | 4 | 157 | 53/157 (34%) | 29.8% | 26.3% (ChainSecurity) | 4 | aging | ✅ active | $36.58M |
| [snowbank](./snowbank/brief.md) | $3.77M | avalanche | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $36.05M |
| [zklink-nova](./zklink-nova/brief.md) | $13.41M | 11 | 381 | 106/381 (28%) | 15.3% | 3.6% (OpenZeppelin) | 10 | aging | ⚠️ declining | $33.89M |
| [backedfi](./backedfi/brief.md) | $8.20M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $33.35M |
| [obeliskbtc](./obeliskbtc/brief.md) | $9.05M | ethereum | 19 | 19/19 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $33.19M |
| [eth-strategy](./eth-strategy/brief.md) | $3.88M | ethereum | 49 | 41/49 (84%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $30.76M |
| [index-coop](./index-coop/brief.md) | $13.14M | 4 | 235 | 111/235 (47%) | 11.7% | 0.0% (-) | 3 | aging | ⚠️ declining | $28.18M |
| [across](./across/brief.md) | $27.73M | 15 | 143 | 58/143 (41%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $28.14M |
| [pooltogether](./pooltogether/brief.md) | $8.65M | 8 | 153 | 106/153 (69%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $26.91M |
| [maverick-protocol](./maverick-protocol/brief.md) | $2.22M | 6 | 93 | 15/93 (16%) | 35.3% | 17.6% (Code4rena) | 4 | stale | ⚠️ declining | $26.76M |
| [keep-network](./keep-network/brief.md) | $1.51M | 5 | 354 | 226/354 (64%) | 15.9% | 8.4% (ChainSecurity, ConsenSys Diligence) | 8 | fresh | 💀 dead | $26.17M |
| [rocksolid-network](./rocksolid-network/brief.md) | $25.01M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $24.96M |
| [flock.io](./flock.io/brief.md) | $10.08M | base | 15 | 14/15 (93%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $24.37M |
| [everrise](./everrise/brief.md) | $1.50M | 5 | 258 | 108/258 (42%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $23.38M |
| [tarot](./tarot/brief.md) | $1.14M | 12 | 152 | 48/152 (32%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | $22.86M |
| [ethichub](./ethichub/brief.md) | $4.05M | celo, ethereum, gnosis | 58 | 46/58 (79%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $22.68M |
| [hope-money](./hope-money/brief.md) | $1.69M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $21.98M |
| [gains-network](./gains-network/brief.md) | $19.91M | arbitrum, base, polygon | 760 | 114/760 (15%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $21.86M |
| [singularx](./singularx/brief.md) | $1.83M | ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $21.45M |
| [piku](./piku/brief.md) | $17.13M | ethereum | 29 | 27/29 (93%) | 14.8% | 0.0% (-) | 1 | aging | ✅ active | $21.37M |
| [set-protocol](./set-protocol/brief.md) | $11.62M | ethereum | 111 | 15/111 (14%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $21.20M |
| [dodo](./dodo/brief.md) | $11.98M | 12 | 569 | 162/569 (28%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $20.64M |
| [smardex-ecosystem](./smardex-ecosystem/brief.md) | $4.56M | 5 | 39 | 39/39 (100%) | 33.3% | 0.0% (-) | 4 | aging | ⚠️ declining | $20.06M |
| [reppo](./reppo/brief.md) | $6.44M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | $19.77M |
| [mcdex](./mcdex/brief.md) | $1.20M | 6 | 1492 | 167/1492 (11%) | 14.9% | 0.0% (-) | 3 | aging | 💀 dead | $19.27M |
| [yieldnest](./yieldnest/brief.md) | $23.44M | 7 | 45 | 36/45 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $19.22M |
| [mux-protocol](./mux-protocol/brief.md) | $9.85M | 5 | 1225 | 132/1225 (11%) | 18.0% | 0.0% (-) | 2 | aging | ✅ active | $19.07M |
| [katana-pre-launch](./katana-pre-launch/brief.md) | $18.64M | base, ethereum | 166 | 97/166 (58%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $18.32M |
| [parasail](./parasail/brief.md) | $3.67M | arbitrum | 41 | 2/41 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $17.21M |
| [derivadex](./derivadex/brief.md) | $1.59M | ethereum | 9 | 7/9 (78%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $16.89M |
| [drops](./drops/brief.md) | $3.33M | ethereum | 77 | 66/77 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $16.49M |
| [hypha](./hypha/brief.md) | $15.29M | avalanche | 84 | 36/84 (43%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | $16.37M |
| [yieldfi](./yieldfi/brief.md) | $12.10M | 9 | 23 | 15/23 (65%) | 66.7% | 66.7% (Cyfrin, Sherlock) | 3 | fresh | ⚠️ declining | $16.26M |
| [geth](./geth/brief.md) | $16.27M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $16.16M |
| [inception](./inception/brief.md) | $5.95M | 9 | 79 | 65/79 (82%) | 27.3% | 0.0% (-) | 10 | aging | ❓ unknown | $15.64M |
| [thorswap](./thorswap/brief.md) | $10.26M | ethereum | 34 | 23/34 (68%) | 13.0% | 0.0% (-) | 2 | stale | ❓ unknown | $15.54M |
| [t-rize](./t-rize/brief.md) | $23.00M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $15.01M |
| [superfluid](./superfluid/brief.md) | $5.21M | 10 | 412 | 104/412 (25%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $14.16M |
| [lets-get-hai](./lets-get-hai/brief.md) | $1.21M | optimism | 54 | 53/54 (98%) | 77.4% | 0.0% (-) | 4 | fresh | ✅ active | $12.63M |
| [sideshift](./sideshift/brief.md) | $15.06M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $12.33M |
| [looping-collective](./looping-collective/brief.md) | $18.12M | ethereum, hyperliquid | 14 | 12/14 (86%) | 7.7% | 0.0% (-) | 1 | fresh | ✅ active | $11.81M |
| [d2-finance](./d2-finance/brief.md) | $24.57M | 5 | 184 | 60/184 (33%) | 48.4% | 11.3% (Cyfrin) | 2 | aging | ✅ active | $11.49M |
| [clever](./clever/brief.md) | $5.72M | ethereum | 78 | 68/78 (87%) | 10.3% | 0.0% (-) | 3 | stale | ✅ active | $10.78M |
| [intentx](./intentx/brief.md) | $5.67M | base, mantle | 56 | 25/56 (45%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $10.51M |
| [polkastarter](./polkastarter/brief.md) | $2.75M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $9.61M |
| [kaito](./kaito/brief.md) | $19.86M | base | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $9.48M |
| [dao-maker](./dao-maker/brief.md) | $2.10M | ethereum | 17 | 4/17 (24%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $9.34M |
| [the-arena](./the-arena/brief.md) | $2.27M | 17 | 172 | 65/172 (38%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $9.27M |
| [neku](./neku/brief.md) | $1.60M | arbitrum | 17 | 8/17 (47%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $8.38M |
| [mobox](./mobox/brief.md) | $2.25M | 17 | 375 | 47/375 (13%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $8.15M |
| [tau-labs](./tau-labs/brief.md) | $5.02M | ethereum, plasma | 179 | 179/179 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $8.07M |
| [fuel-bridge](./fuel-bridge/brief.md) | $10.81M | ethereum | 18 | 15/18 (83%) | 26.7% | 0.0% (-) | 3 | fresh | ⚠️ declining | $7.63M |
| [rook](./rook/brief.md) | $1.45M | ethereum | 75 | 67/75 (89%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $6.79M |
| [alphagrowth](./alphagrowth/brief.md) | $8.85M | 4 | 56 | 44/56 (79%) | 18.2% | 13.6% (Certora, ChainSecurity, Cyfrin, Spearbit) | 15 | fresh | ✅ active | $6.29M |
| [nftx](./nftx/brief.md) | $1.61M | arbitrum, ethereum | 184 | 135/184 (73%) | 11.1% | 9.6% (Code4rena) | 3 | stale | ⚠️ declining | $6.27M |
| [sx-rollup-bridge](./sx-rollup-bridge/brief.md) | $6.10M | ethereum | 134 | 69/134 (51%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $6.12M |
| [ambire-wallet](./ambire-wallet/brief.md) | $6.21M | ethereum | 9 | 2/9 (22%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | $5.82M |
| [ekubo](./ekubo/brief.md) | $27.16M | ethereum | 15 | 9/15 (60%) | 44.4% | 22.2% (Code4rena) | 3 | fresh | ❓ unknown | $5.65M |
| [dango](./dango/brief.md) | $4.09M | 17 | 56 | 39/56 (70%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $5.58M |
| [wasabi](./wasabi/brief.md) | $1.33M | 4 | 83 | 54/83 (65%) | 37.0% | 11.1% (Sherlock) | 8 | aging | ❓ unknown | $5.48M |
| [axc-gift](./axc-gift/brief.md) | $5.29M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $5.29M |
| [ledgity-yield](./ledgity-yield/brief.md) | $3.19M | 5 | 108 | 56/108 (52%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $4.96M |
| [unslashed](./unslashed/brief.md) | $3.13M | ethereum | 16 | 16/16 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $4.64M |
| [yala](./yala/brief.md) | $2.24M | ethereum | 30 | 11/30 (37%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $4.62M |
| [delta-financial](./delta-financial/brief.md) | $10.48M | ethereum | 53 | 39/53 (74%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $4.51M |
| [atlendis](./atlendis/brief.md) | $10.99M | polygon | 43 | 14/43 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $4.28M |
| [dexalot](./dexalot/brief.md) | $9.31M | avalanche | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $4.21M |
| [primefi](./primefi/brief.md) | $3.28M | base, hyperliquid | 119 | 58/119 (49%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $4.12M |
| [trueo](./trueo/brief.md) | $3.80M | base | 23 | 23/23 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $4.05M |
| [stafi](./stafi/brief.md) | $4.06M | ethereum | 42 | 23/42 (55%) | 26.1% | 0.0% (-) | 4 | stale | ⚠️ declining | $3.92M |
| [swaap](./swaap/brief.md) | $4.42M | 11 | 128 | 6/128 (5%) | 25.0% | 25.0% (ChainSecurity) | 3 | stale | ⚠️ declining | $3.81M |
| [firebot](./firebot/brief.md) | $2.22M | polygon | 29 | 21/29 (72%) | 9.5% | 0.0% (-) | 2 | stale | ❓ unknown | $3.67M |
| [syntropia](./syntropia/brief.md) | $3.66M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.66M |
| [dforce](./dforce/brief.md) | $12.48M | 7 | 450 | 99/450 (22%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.61M |
| [xsy](./xsy/brief.md) | $20.97M | avalanche | 16 | 5/16 (31%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.60M |
| [stakingverse](./stakingverse/brief.md) | $4.20M | ethereum, lukso | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $3.54M |
| [llama-airforce](./llama-airforce/brief.md) | $3.90M | ethereum | 93 | 60/93 (65%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.51M |
| [monstro](./monstro/brief.md) | $3.56M | base | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $3.43M |
| [lair-finance](./lair-finance/brief.md) | $6.14M | berachain | 78 | 14/78 (18%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $3.41M |
| [open-ticketing-ecosystem](./open-ticketing-ecosystem/brief.md) | $1.38M | base, ethereum, polygon | 24 | 24/24 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $3.34M |
| [beradrome](./beradrome/brief.md) | $7.14M | berachain | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.29M |
| [steer-protocol](./steer-protocol/brief.md) | $20.90M | arbitrum | 43 | 31/43 (72%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.26M |
| [liquidloans](./liquidloans/brief.md) | $3.96M | base | 20 | 20/20 (100%) | 30.0% | 0.0% (-) | 2 | fresh | ⚠️ declining | $3.04M |
| [parallel-protocol](./parallel-protocol/brief.md) | $3.79M | 19 | 38 | 26/38 (68%) | 30.8% | 0.0% (-) | 5 | aging | ✅ active | $2.98M |
| [gro](./gro/brief.md) | $4.66M | ethereum | 124 | 36/124 (29%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.93M |
| [alien-base](./alien-base/brief.md) | $4.99M | base | 58 | 47/58 (81%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.92M |
| [pickle](./pickle/brief.md) | $4.73M | ethereum | 235 | 148/235 (63%) | 2.7% | 0.0% (-) | 2 | stale | ⚠️ declining | $2.88M |
| [ethereal-season-zero](./ethereal-season-zero/brief.md) | $2.85M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $2.82M |
| [izumi-finance](./izumi-finance/brief.md) | $3.79M | 13 | 181 | 21/181 (12%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $2.76M |
| [iaero-protocol](./iaero-protocol/brief.md) | $2.07M | base | 45 | 40/45 (89%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.72M |
| [singularity-finance](./singularity-finance/brief.md) | $5.36M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $2.69M |
| [sperax](./sperax/brief.md) | $2.20M | arbitrum, bsc, ethereum | 142 | 34/142 (24%) | 47.1% | 8.8% (SlowMist) | 7 | aging | ⚠️ declining | $2.63M |
| [loopring](./loopring/brief.md) | $10.57M | base, ethereum | 145 | 75/145 (52%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.43M |
| [iotube](./iotube/brief.md) | $3.54M | bsc, ethereum, polygon | 95 | 17/95 (18%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.23M |
| [b-lucky](./b-lucky/brief.md) | $1.04M | bsc | 16 | 1/16 (6%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $2.20M |
| [revert](./revert/brief.md) | $11.61M | 8 | 84 | 18/84 (21%) | 11.1% | 0.0% (-) | 2 | stale | ✅ active | $2.09M |
| [credit-coop](./credit-coop/brief.md) | $4.55M | base, ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | $2.08M |
| [vnx](./vnx/brief.md) | $7.47M | 7 | 10 | 5/10 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.85M |
| [mm-finance](./mm-finance/brief.md) | $1.44M | arbitrum, cronos, polygon | 192 | 21/192 (11%) | 4.5% | 0.0% (-) | 1 | stale | 💀 dead | $1.85M |
| [xwin-finance](./xwin-finance/brief.md) | $6.17M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $1.84M |
| [meeds-finance](./meeds-finance/brief.md) | $1.73M | ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.84M |
| [wan-bridge](./wan-bridge/brief.md) | $25.13M | 14 | 153 | 68/153 (44%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $1.78M |
| [dtrinity](./dtrinity/brief.md) | $2.32M | ethereum, fraxtal, sonic | 209 | 88/209 (42%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.76M |
| [eventum-bridge](./eventum-bridge/brief.md) | $2.82M | arbitrum, ethereum | 74 | 47/74 (64%) | 2.1% | 0.0% (-) | 1 | fresh | ✅ active | $1.73M |
| [minto](./minto/brief.md) | $3.83M | bsc, ethereum, heco | 11 | 8/11 (73%) | 12.5% | 0.0% (-) | 1 | stale | ❓ unknown | $1.66M |
| [templar-dao](./templar-dao/brief.md) | $2.21M | bsc | 40 | 25/40 (63%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.55M |
| [kiloex](./kiloex/brief.md) | $2.94M | base, bsc, manta | 111 | 8/111 (7%) | 12.5% | 0.0% (-) | 1 | aging | ⚠️ declining | $1.54M |
| [osmosis-dex](./osmosis-dex/brief.md) | $18.17M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $1.53M |
| [aevo](./aevo/brief.md) | $20.57M | 4 | 271 | 103/271 (38%) | 12.0% | 0.0% (-) | 6 | stale | ✅ active | $1.52M |
| [hakka-finance](./hakka-finance/brief.md) | $4.74M | ethereum | 52 | 49/52 (94%) | 18.4% | 0.0% (-) | 6 | stale | ✅ active | $1.51M |
| [wrapped](./wrapped/brief.md) | $24.56M | celo, ethereum | 16 | 16/16 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.51M |
| [kodiak](./kodiak/brief.md) | $29.85M | 17 | 53 | 36/53 (68%) | 2.8% | 0.0% (-) | 2 | aging | ⚠️ declining | $1.51M |
| [liminal](./liminal/brief.md) | $23.06M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.51M |
| [txflow](./txflow/brief.md) | $3.72M | 17 | 54 | 37/54 (69%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.51M |
| [defituna](./defituna/brief.md) | $4.06M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $1.51M |
| [sunny](./sunny/brief.md) | $2.56M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.51M |
| [defichain-dex](./defichain-dex/brief.md) | $1.18M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.51M |
| [pact](./pact/brief.md) | $2.71M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $1.51M |
| [phoenix](./phoenix/brief.md) | $1.18M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.51M |
| [flamingo](./flamingo/brief.md) | $2.27M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | $1.51M |
| [puzzleswaporg](./puzzleswaporg/brief.md) | $1.41M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.51M |
| [flexa](./flexa/brief.md) | $1.44M | ethereum | 17 | 17/17 (100%) | 11.8% | 11.8% (Trail of Bits) | 2 | stale | 💀 dead | $1.51M |
| [dflow](./dflow/brief.md) | $1.61M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.51M |
| [wanswap-dex](./wanswap-dex/brief.md) | $1.08M | 17 | 53 | 36/53 (68%) | 2.8% | 0.0% (-) | 1 | stale | ⚠️ declining | $1.51M |
| [pnetwork](./pnetwork/brief.md) | $13.10M | 4 | 25 | 24/25 (96%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $1.51M |
| [solayer](./solayer/brief.md) | $13.48M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | aging | ⚠️ declining | $1.51M |
| [larix](./larix/brief.md) | $1.03M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.51M |
| [serum](./serum/brief.md) | $15.45M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.51M |
| [hyperswap](./hyperswap/brief.md) | $14.21M | 18 | 58 | 36/58 (62%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.51M |
| [rex-staking](./rex-staking/brief.md) | $1.94M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.51M |
| [saber](./saber/brief.md) | $4.69M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.51M |
| [badger-dao](./badger-dao/brief.md) | $9.79M | 4 | 27 | 24/27 (89%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | $1.51M |
| [metadao](./metadao/brief.md) | $12.30M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $1.51M |
| [wrapped-bnb](./wrapped-bnb/brief.md) | $6.03M | 18 | 54 | 36/54 (67%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $1.51M |
| [splash-protocol](./splash-protocol/brief.md) | $5.19M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.51M |
| [coti-treasury](./coti-treasury/brief.md) | $10.55M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.51M |
| [chainge-finance](./chainge-finance/brief.md) | $12.14M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.51M |
| [lumenswap](./lumenswap/brief.md) | $6.33M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.51M |
| [nuls](./nuls/brief.md) | $7.33M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.51M |
| [benddao](./benddao/brief.md) | $7.30M | ethereum | 15 | 15/15 (100%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | $1.51M |
| [aftermath-finance](./aftermath-finance/brief.md) | $5.46M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $1.51M |
| [tinyman](./tinyman/brief.md) | $6.83M | 17 | 53 | 36/53 (68%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $1.51M |
| [seer](./seer/brief.md) | $1.53M | ethereum, gnosis | 179 | 34/179 (19%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.48M |
| [predict-fun](./predict-fun/brief.md) | $14.59M | blast, bsc | 40 | 25/40 (63%) | 8.0% | 8.0% (Cyfrin) | 2 | fresh | ❓ unknown | $1.47M |
| [sashimiswap](./sashimiswap/brief.md) | $5.00M | ethereum, heco | 61 | 31/61 (51%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.44M |
| [taiko-bridge](./taiko-bridge/brief.md) | $17.26M | ethereum | 52 | 44/52 (85%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.42M |
| [shardingdao](./shardingdao/brief.md) | $7.90M | ethereum | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.38M |
| [bunny](./bunny/brief.md) | $3.32M | bsc, polygon | 101 | 73/101 (72%) | 9.6% | 0.0% (-) | 1 | stale | 💀 dead | $1.36M |
| [shapeshift](./shapeshift/brief.md) | $1.64M | 4 | 40 | 28/40 (70%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.34M |
| [rezerve](./rezerve/brief.md) | $2.67M | ethereum, sonic | 104 | 80/104 (77%) | 1.3% | 0.0% (-) | 1 | fresh | ✅ active | $1.34M |
| [suzaku](./suzaku/brief.md) | $1.24M | avalanche | 49 | 21/49 (43%) | 4.8% | 4.8% (ChainSecurity) | 1 | stale | ✅ active | $1.18M |
| [ocean-point](./ocean-point/brief.md) | $1.07M | ethereum | 40 | 27/40 (68%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.08M |
| [opyn](./opyn/brief.md) | $2.05M | avalanche, ethereum | 103 | 33/103 (32%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.02M |
| [defil](./defil/brief.md) | $1.80M | ethereum | 51 | 37/51 (73%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $1.01M |
| [peapods-finance](./peapods-finance/brief.md) | $7.10M | 6 | 130 | 46/130 (35%) | 53.1% | 0.0% (-) | 4 | aging | ⚠️ declining | $949.46K |
| [bend](./bend/brief.md) | $12.39M | berachain, ethereum | 105 | 59/105 (56%) | 20.3% | 20.3% (Spearbit) | 2 | fresh | ❓ unknown | $896.83K |
| [paal-ai](./paal-ai/brief.md) | $1.36M | ethereum | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $830.13K |
| [notional](./notional/brief.md) | $3.59M | arbitrum, ethereum | 79 | 73/79 (92%) | 19.2% | 19.2% (Sherlock) | 5 | fresh | 💀 dead | $755.74K |
| [anthias-labs](./anthias-labs/brief.md) | $17.85M | base | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $705.35K |
| [orbit-bridge](./orbit-bridge/brief.md) | $17.87M | 5 | 22 | 5/22 (23%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $640.23K |
| [rip.xyz](./rip.xyz/brief.md) | $1.14M | hyperliquid | 8 | 4/8 (50%) | 25.0% | 0.0% (-) | 1 | fresh | ✅ active | $624.72K |
| [bakeryswap](./bakeryswap/brief.md) | $3.41M | bsc | 98 | 52/98 (53%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $612.86K |
| [biswap](./biswap/brief.md) | $5.70M | 4 | 84 | 13/84 (15%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | $609.28K |
| [arbitrum-nova-bridge](./arbitrum-nova-bridge/brief.md) | $19.20M | arbitrum, ethereum | 55 | 48/55 (87%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $447.17K |
| [camelot](./camelot/brief.md) | $27.14M | arbitrum | 127 | 52/127 (41%) | 17.3% | 0.0% (-) | 1 | stale | ✅ active | $391.94K |
| [equalizer](./equalizer/brief.md) | $1.27M | base, fantom, sonic | 292 | 50/292 (17%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $374.84K |
| [bmx](./bmx/brief.md) | $2.95M | base, mode | 184 | 133/184 (72%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $305.69K |
| [tokenstore](./tokenstore/brief.md) | $1.35M | ethereum | 44 | 2/44 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $265.68K |
| [babyswap](./babyswap/brief.md) | $1.35M | bsc | 113 | 65/113 (58%) | 1.5% | 0.0% (-) | 1 | stale | 💀 dead | $241.08K |
| [arcade.xyz](./arcade.xyz/brief.md) | $5.39M | ethereum | 61 | 44/61 (72%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $240.14K |
| [alphax](./alphax/brief.md) | $1.46M | arbitrum, ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $218.20K |
| [bob-bridge](./bob-bridge/brief.md) | $3.61M | ethereum | 53 | 49/53 (92%) | 2.0% | 0.0% (-) | 2 | fresh | ⚠️ declining | $202.90K |
| [spookyswap](./spookyswap/brief.md) | $1.39M | fantom, sonic | 150 | 50/150 (33%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | $171.99K |
| [ratex](./ratex/brief.md) | $5.39M | bsc | 168 | 91/168 (54%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $98.79K |
| [kromatika](./kromatika/brief.md) | $1.10M | 4 | 30 | 16/30 (53%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $83.80K |
| [moola-market](./moola-market/brief.md) | $1.22M | celo | 53 | 37/53 (70%) | 10.8% | 10.8% (OpenZeppelin) | 1 | stale | ⚠️ declining | $73.92K |
| [foxify](./foxify/brief.md) | $3.58M | arbitrum, sonic | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $72.65K |
| [csigma-finance](./csigma-finance/brief.md) | $12.66M | arbitrum, base, ethereum | 50 | 38/50 (76%) | 41.0% | 0.0% (-) | 3 | aging | ✅ active | $65.57K |
| [hegic](./hegic/brief.md) | $10.10M | ethereum | 63 | 26/63 (41%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $54.07K |
| [hemi](./hemi/brief.md) | $1.26M | bsc, ethereum, optimism | 47 | 37/47 (79%) | 2.7% | 0.0% (-) | 2 | fresh | ❓ unknown | $49.57K |
| [privacy-cash](./privacy-cash/brief.md) | $2.62M | base | 6 | 3/6 (50%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $48.09K |
| [wombat-exchange](./wombat-exchange/brief.md) | $1.65M | 8 | 96 | 50/96 (52%) | 32.7% | 7.3% (SlowMist) | 9 | aging | 💀 dead | $47.82K |
| [sofa.org](./sofa.org/brief.md) | $2.46M | ethereum | 38 | 36/38 (95%) | 33.3% | 30.6% (Code4rena) | 6 | aging | ⚠️ declining | $46.78K |
| [hemibtc](./hemibtc/brief.md) | $15.09M | bsc, ethereum, optimism | 47 | 37/47 (79%) | 2.7% | 0.0% (-) | 2 | fresh | ✅ active | $46.20K |
| [ultron-staking-hub-nft](./ultron-staking-hub-nft/brief.md) | $7.43M | 5 | 150 | 6/150 (4%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $43.46K |
| [satori-finance](./satori-finance/brief.md) | $1.28M | 6 | 40 | 6/40 (15%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $40.94K |
| [dinari](./dinari/brief.md) | $10.83M | 4 | 71 | 31/71 (44%) | 37.5% | 15.6% (Sherlock) | 3 | aging | ❓ unknown | $36.60K |
| [seamless-protocol](./seamless-protocol/brief.md) | $47.56M | base, ethereum | 98 | 87/98 (89%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $34.75K |
| [kuma-protocol](./kuma-protocol/brief.md) | $3.08M | 4 | 53 | 32/53 (60%) | 34.4% | 34.4% (Code4rena) | 2 | stale | ✅ active | $23.14K |
| [bscswap](./bscswap/brief.md) | $5.00M | bsc | 30 | 22/30 (73%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $20.27K |
| [mdex](./mdex/brief.md) | $1.38M | bsc, heco | 13 | 7/13 (54%) | 85.7% | 85.7% (SlowMist) | 3 | stale | 💀 dead | $20.17K |
| [chateau](./chateau/brief.md) | $1.04M | hyperliquid, plasma | 5 | 3/5 (60%) | 33.3% | 0.0% (-) | 1 | fresh | ✅ active | $19.06K |
| [stout](./stout/brief.md) | $2.04M | sonic | 132 | 46/132 (35%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $12.61K |
| [accumulated-finance](./accumulated-finance/brief.md) | $1.58M | 5 | 43 | 35/43 (81%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $12.19K |
| [pepeteam](./pepeteam/brief.md) | $1.33M | ethereum, polygon | 21 | 20/21 (95%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $11.09K |
| [anzen-finance](./anzen-finance/brief.md) | $7.59M | 5 | 48 | 40/48 (83%) | 35.0% | 0.0% (-) | 4 | aging | ⚠️ declining | $10.86K |
| [ellipsis-finance](./ellipsis-finance/brief.md) | $1.27M | bsc | 22 | 17/22 (77%) | 29.4% | 0.0% (-) | 2 | stale | 💀 dead | $8.97K |
| [lendle](./lendle/brief.md) | $1.25M | mantle | 64 | 44/64 (69%) | 43.2% | 0.0% (-) | 1 | fresh | ❓ unknown | $5.56K |
| [azuro](./azuro/brief.md) | $1.04M | 6 | 304 | 55/304 (18%) | 6.6% | 0.0% (-) | 3 | aging | ✅ active | $3.14K |
| [injective-bridge](./injective-bridge/brief.md) | $14.89M | ethereum | 9 | 3/9 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.62K |
| [tranchess](./tranchess/brief.md) | $5.74M | bsc, ethereum, scroll | 135 | 101/135 (75%) | 23.8% | 0.0% (-) | 8 | stale | 💀 dead | $1.94K |
| [credbull](./credbull/brief.md) | $10.94M | arbitrum, polygon | 83 | 82/83 (99%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.89K |
| [lendflare](./lendflare/brief.md) | $1.14M | ethereum | 74 | 38/74 (51%) | 5.3% | 0.0% (-) | 1 | stale | ⚠️ declining | $1.05K |
| [shadow-exchange](./shadow-exchange/brief.md) | $5.27M | sonic | 84 | 51/84 (61%) | 21.6% | 21.6% (Spearbit) | 1 | fresh | ⚠️ declining | $999.84 |
| [yamato-protocol](./yamato-protocol/brief.md) | $1.44M | ethereum | 63 | 46/63 (73%) | 47.8% | 0.0% (-) | 3 | aging | ✅ active | $818.32 |
| [proxy](./proxy/brief.md) | $20.23M | ethereum, polygon | 278 | 12/278 (4%) | 8.3% | 0.0% (-) | 1 | stale | ✅ active | $735.64 |
| [morpheusai](./morpheusai/brief.md) | $28.63M | arbitrum, ethereum | 47 | 47/47 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $621.83 |
| [nerve](./nerve/brief.md) | $1.50M | bsc, ethereum | 66 | 20/66 (30%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $508.66 |
| [thena](./thena/brief.md) | $4.50M | bsc | 131 | 108/131 (82%) | 10.2% | 2.8% (OpenZeppelin) | 2 | fresh | ⚠️ declining | $208.19 |
| [latch](./latch/brief.md) | $1.61M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $189.85 |
| [elyfi](./elyfi/brief.md) | $2.39M | ethereum, klaytn | 30 | 17/30 (57%) | 5.9% | 0.0% (-) | 1 | stale | 💀 dead | $175.94 |
| [ankr](./ankr/brief.md) | $22.09M | avalanche, ethereum, fantom | 32 | 22/32 (69%) | 13.6% | 0.0% (-) | 1 | aging | ✅ active | $47.39 |
| [gondi](./gondi/brief.md) | $1.40M | ethereum, hyperliquid | 33 | 18/33 (55%) | 16.7% | 0.0% (-) | 2 | fresh | ⚠️ declining | $35.59 |
| [toupee.tech](./toupee.tech/brief.md) | $6.38M | base | 29 | 25/29 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $24.29 |
| [goose](./goose/brief.md) | $12.80M | ethereum | 7 | 3/7 (43%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $7.87 |
| [angles](./angles/brief.md) | $1.07M | sonic | 40 | 25/40 (63%) | 4.0% | 4.0% (Spearbit) | 1 | aging | ⚠️ declining | $7.53 |
| [lynex](./lynex/brief.md) | $1.09M | linea | 30 | 29/30 (97%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.89 |
| [acre](./acre/brief.md) | $4.30M | ethereum | 220 | 207/220 (94%) | 0.5% | 0.0% (-) | 2 | aging | ❓ unknown | $3.02 |
| [xfai](./xfai/brief.md) | $1.04M | linea | 51 | 20/51 (39%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.00 |
| [plasma-one](./plasma-one/brief.md) | $2.17M | plasma | 7 | 5/7 (71%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $0.62 |
| [swamp-finance](./swamp-finance/brief.md) | $1.20M | bsc | 11 | 7/11 (64%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $0.09 |
| [kinza-finance](./kinza-finance/brief.md) | $7.84M | 4 | 154 | 50/154 (32%) | 2.0% | 0.0% (-) | 1 | stale | ⚠️ declining | $0.01 |
| [tokenworks](./tokenworks/brief.md) | $2.32M | ethereum | 60 | 33/60 (55%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $0.00 |
| [charm-finance](./charm-finance/brief.md) | $2.20M | 6 | 10 | 6/10 (60%) | 50.0% | 50.0% (Code4rena, Spearbit) | 4 | fresh | ❓ unknown | $0.00 |
| [snuggle](./snuggle/brief.md) | $1.29M | arbitrum, base | 89 | 52/89 (58%) | 23.1% | 0.0% (-) | 1 | fresh | ✅ active | $0.00 |
| [mansory](./mansory/brief.md) | $6.34M | bsc | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $0.00 |
| [1sec](./1sec/brief.md) | $1.46M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [3f-mutual](./3f-mutual/brief.md) | $4.07M | ethereum | 25 | 22/25 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [abc-pool](./abc-pool/brief.md) | $6.29M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [abracadabra](./abracadabra/brief.md) | $8.41M | 12 | 4388 | 0/4388 (0%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | - |
| [aegis-markets](./aegis-markets/brief.md) | $2.36M | base, unichain | 15 | 12/15 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [aitech](./aitech/brief.md) | $4.04M | bsc | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [altitude.fi](./altitude.fi/brief.md) | $13.73M | ethereum | 124 | 18/124 (15%) | 72.2% | 0.0% (-) | 6 | aging | ✅ active | - |
| [ambient](./ambient/brief.md) | $2.77M | 5 | 30 | 17/30 (57%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [amnis-finance](./amnis-finance/brief.md) | $11.93M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [angstrom](./angstrom/brief.md) | $11.35M | base, ethereum | 13 | 13/13 (100%) | 7.7% | 7.7% (Spearbit) | 1 | fresh | ✅ active | - |
| [antarctic](./antarctic/brief.md) | $9.31M | arbitrum | 11 | 8/11 (73%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [anvil](./anvil/brief.md) | $18.35M | ethereum | 3 | 3/3 (100%) | 100.0% | 100.0% (OpenZeppelin, Trail of Bits) | 3 | fresh | ❓ unknown | - |
| [arcadia-finance](./arcadia-finance/brief.md) | $7.26M | base, optimism, unichain | 55 | 52/55 (95%) | 63.5% | 53.8% (Sherlock) | 12 | fresh | ✅ active | - |
| [aria-protocol](./aria-protocol/brief.md) | $1.97M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [asseto-aoabt](./asseto-aoabt/brief.md) | $22.28M | avalanche | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [asseto-cash+](./asseto-cash+/brief.md) | $1.40M | ethereum | 2 | 1/2 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [augur](./augur/brief.md) | $1.69M | ethereum | 39 | 39/39 (100%) | 64.1% | 15.4% (ChainSecurity) | 4 | stale | ✅ active | - |
| [aurora-plus](./aurora-plus/brief.md) | $2.01M | aurora | 31 | 3/31 (10%) | 33.3% | 0.0% (-) | 2 | stale | ✅ active | - |
| [autofarm](./autofarm/brief.md) | $6.10M | 13 | 10 | 2/10 (20%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [avalaunch](./avalaunch/brief.md) | $6.95M | avalanche | 39 | 14/39 (36%) | 78.6% | 0.0% (-) | 13 | stale | ❓ unknown | - |
| [bifi](./bifi/brief.md) | $7.54M | avalanche, ethereum, klaytn | 170 | 45/170 (26%) | 30.4% | 0.0% (-) | 3 | stale | ✅ active | - |
| [bima-cdp](./bima-cdp/brief.md) | $5.36M | bsc, ethereum, sonic | 38 | 30/38 (79%) | 50.0% | 50.0% (Cyfrin, Spearbit) | 3 | fresh | ✅ active | - |
| [binaryx-platform](./binaryx-platform/brief.md) | $8.64M | polygon | 133 | 25/133 (19%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [bitlo](./bitlo/brief.md) | $16.66M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitomato](./bitomato/brief.md) | $2.61M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitu-protocol](./bitu-protocol/brief.md) | $23.14M | bsc | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [bitvenus](./bitvenus/brief.md) | $20.90M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [blackhole](./blackhole/brief.md) | $29.94M | avalanche | 86 | 45/86 (52%) | 31.1% | 31.1% (Code4rena) | 3 | fresh | ❓ unknown | - |
| [blueshift](./blueshift/brief.md) | $4.38M | kava, polygon | 42 | 8/42 (19%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [boba-bridge](./boba-bridge/brief.md) | $3.08M | ethereum | 53 | 41/53 (77%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [bonsaidao-ecosystem](./bonsaidao-ecosystem/brief.md) | $1.07M | arbitrum, base, berachain | 190 | 86/190 (45%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [bonzo-finance](./bonzo-finance/brief.md) | $22.60M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [boros](./boros/brief.md) | $10.38M | arbitrum | 2 | 2/2 (100%) | 100.0% | 100.0% (ChainSecurity) | 2 | fresh | ✅ active | - |
| [botto](./botto/brief.md) | $4.35M | base, ethereum | 19 | 14/19 (74%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bounce.tech](./bounce.tech/brief.md) | $1.41M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [bouncebit-prime](./bouncebit-prime/brief.md) | $11.94M | ethereum | 9 | 2/9 (22%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [btcfi](./btcfi/brief.md) | $11.86M | base | 15 | 1/15 (7%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [btse](./btse/brief.md) | $1.55M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bulbaswap](./bulbaswap/brief.md) | $9.10M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [butter-network](./butter-network/brief.md) | $1.43M | 11 | 6 | 2/6 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [canopy](./canopy/brief.md) | $1.47M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [canto-lending](./canto-lending/brief.md) | $3.01M | canto, ethereum | 84 | 2/84 (2%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [capx-ai](./capx-ai/brief.md) | $2.16M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [cbridge](./cbridge/brief.md) | $18.45M | 18 | 2112 | 0/2112 (0%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [cex.io](./cex.io/brief.md) | $8.58M | ethereum, polygon | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [cgo-finance](./cgo-finance/brief.md) | $1.28M | cronos | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [chain-fusion](./chain-fusion/brief.md) | $19.29M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [chaingpt](./chaingpt/brief.md) | $4.89M | 7 | 87 | 3/87 (3%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [citrea-bridge](./citrea-bridge/brief.md) | $5.13M | ethereum | 4 | 3/4 (75%) | 33.3% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [coinsquare](./coinsquare/brief.md) | $12.42M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [coinw](./coinw/brief.md) | $1.11M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [colend-protocol](./colend-protocol/brief.md) | $4.32M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [core-bridge](./core-bridge/brief.md) | $4.01M | avalanche, base | 9 | 5/9 (56%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [cozy-finance](./cozy-finance/brief.md) | $2.29M | optimism | 48 | 5/48 (10%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [defi-kingdoms](./defi-kingdoms/brief.md) | $6.45M | harmony, klaytn | 5 | 0/5 (0%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | - |
| [depth](./depth/brief.md) | $1.17M | heco | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [desyn-protocol](./desyn-protocol/brief.md) | $10.82M | ethereum, mode | 11 | 2/11 (18%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [dnax](./dnax/brief.md) | $3.54M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [domination-finance](./domination-finance/brief.md) | $1.27M | 4 | 30 | 20/30 (67%) | 75.0% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [dooar](./dooar/brief.md) | $5.14M | bsc | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [dxsale](./dxsale/brief.md) | $26.83M | 11 | 353 | 10/353 (3%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [dyorswap](./dyorswap/brief.md) | $2.03M | 7 | 93 | 5/93 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [easedefi.org](./easedefi.org/brief.md) | $4.42M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [egas-swap](./egas-swap/brief.md) | $19.34M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [elfi-protocol](./elfi-protocol/brief.md) | $3.01M | arbitrum, base | 2406 | 88/2406 (4%) | 29.8% | 29.8% (Sherlock) | 1 | aging | ❓ unknown | - |
| [endur](./endur/brief.md) | $9.72M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [enosys](./enosys/brief.md) | $28.01M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [equilibre](./equilibre/brief.md) | $6.90M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [etherex](./etherex/brief.md) | $3.60M | linea | 58 | 45/58 (78%) | 42.6% | 42.6% (Code4rena, ConsenSys Diligence, Spearbit) | 3 | fresh | ⚠️ declining | - |
| [etherflip](./etherflip/brief.md) | $1.60M | ethereum | 7 | 6/7 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [etherfuse](./etherfuse/brief.md) | $5.11M | base, polygon | 25 | 4/25 (16%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ethos](./ethos/brief.md) | $1.94M | base, ethereum | 27 | 20/27 (74%) | 30.0% | 30.0% (Sherlock) | 1 | aging | ✅ active | - |
| [everything](./everything/brief.md) | $1.08M | arbitrum | 10 | 4/10 (40%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [exmo](./exmo/brief.md) | $2.88M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [feather](./feather/brief.md) | $16.55M | celo, klaytn, sei | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [ferro](./ferro/brief.md) | $5.05M | cronos | 21 | 0/21 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [fiamma](./fiamma/brief.md) | $1.15M | 4 | 33 | 12/33 (36%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [flaunch](./flaunch/brief.md) | $2.13M | base | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [flex](./flex/brief.md) | $1.31M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [fomo3d](./fomo3d/brief.md) | $2.55M | ethereum | 23 | 10/23 (43%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [forgeyields](./forgeyields/brief.md) | $1.89M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [four.meme](./four.meme/brief.md) | $4.89M | bsc | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [fulcrom](./fulcrom/brief.md) | $13.52M | cronos, zksync-era | 80 | 0/80 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [generic.money](./generic.money/brief.md) | $3.74M | ethereum | 13 | 12/13 (92%) | 75.0% | 75.0% (Spearbit) | 1 | fresh | ✅ active | - |
| [gimo](./gimo/brief.md) | $9.07M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [goldfinger](./goldfinger/brief.md) | $23.90M | bsc | 5 | 4/5 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [goldstation](./goldstation/brief.md) | $2.26M | avalanche, klaytn | 5 | 0/5 (0%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [growihf](./growihf/brief.md) | $8.42M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [guru-network-dao](./guru-network-dao/brief.md) | $2.40M | 8 | 54 | 21/54 (39%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [gyroscope-protocol](./gyroscope-protocol/brief.md) | $1.81M | 10 | 233 | 148/233 (64%) | 21.3% | 1.3% (Trail of Bits) | 6 | fresh | 💀 dead | - |
| [h2-finance](./h2-finance/brief.md) | $3.69M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hakutora](./hakutora/brief.md) | $23.76M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hanji-protocol](./hanji-protocol/brief.md) | $2.76M | base | 289 | 6/289 (2%) | 16.7% | 0.0% (-) | 2 | aging | ✅ active | - |
| [harmonix-finance](./harmonix-finance/brief.md) | $4.89M | 4 | 127 | 9/127 (7%) | 10.0% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [hashdao-finance](./hashdao-finance/brief.md) | $1.67M | arbitrum, optimism | 51 | 17/51 (33%) | 52.6% | 0.0% (-) | 3 | stale | 💀 dead | - |
| [hashkey-global](./hashkey-global/brief.md) | $15.15M | scroll | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hashport](./hashport/brief.md) | $1.69M | 10 | 21 | 13/21 (62%) | 100.0% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [helix](./helix/brief.md) | $1.95M | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [helix-finance](./helix-finance/brief.md) | $11.00M | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hera-finance](./hera-finance/brief.md) | $5.80M | metis | 28 | 7/28 (25%) | 42.9% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [hiyield](./hiyield/brief.md) | $2.73M | avalanche, canto, ethereum | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hopr](./hopr/brief.md) | $1.17M | gnosis | 81 | 23/81 (28%) | 4.3% | 4.3% (ChainSecurity) | 2 | stale | ❓ unknown | - |
| [hotcoin](./hotcoin/brief.md) | $5.36M | scroll | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hskhodlium](./hskhodlium/brief.md) | $1.72M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hybra](./hybra/brief.md) | $1.93M | hyperliquid | 81 | 15/81 (19%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hyperdrive-hl](./hyperdrive-hl/brief.md) | $2.83M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [hyperion](./hyperion/brief.md) | $20.98M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [immutable-zkevm](./immutable-zkevm/brief.md) | $29.24M | ethereum | 11 | 11/11 (100%) | 18.2% | 0.0% (-) | 1 | aging | ✅ active | - |
| [initiadex](./initiadex/brief.md) | $3.32M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ionic-protocol](./ionic-protocol/brief.md) | $2.04M | bsc, mode | 420 | 55/420 (13%) | 1.8% | 0.0% (-) | 1 | stale | 💀 dead | - |
| [juicebox](./juicebox/brief.md) | $11.15M | 8 | 77 | 68/77 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [k2](./k2/brief.md) | $4.75M | ethereum | 30 | 21/30 (70%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [kasu](./kasu/brief.md) | $10.28M | base | 22 | 20/22 (91%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [kava-earn](./kava-earn/brief.md) | $1.66M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [kava-lend](./kava-lend/brief.md) | $11.82M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [kava-liquid](./kava-liquid/brief.md) | $1.64M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [keeta-bridge](./keeta-bridge/brief.md) | $1.08M | base | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [keyring](./keyring/brief.md) | $6.22M | avalanche, ethereum | 54 | 43/54 (80%) | 18.6% | 14.0% (Certora, ChainSecurity, Cyfrin, Spearbit) | 15 | fresh | ✅ active | - |
| [king-protocol](./king-protocol/brief.md) | $1.28M | 5 | 16 | 5/16 (31%) | 60.0% | 0.0% (-) | 2 | aging | ✅ active | - |
| [kintsu](./kintsu/brief.md) | $2.69M | hyperliquid | 12 | 0/12 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [klaystation](./klaystation/brief.md) | $2.15M | klaytn | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [klayswap](./klayswap/brief.md) | $4.84M | klaytn | 22 | 0/22 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [landx-finance](./landx-finance/brief.md) | $1.77M | ethereum | 3 | 3/3 (100%) | 100.0% | 0.0% (-) | 1 | stale | ✅ active | - |
| [layerbank](./layerbank/brief.md) | $22.07M | 4 | 91 | 13/91 (14%) | 50.0% | 0.0% (-) | 2 | fresh | 💀 dead | - |
| [lbank](./lbank/brief.md) | $9.76M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [levex](./levex/brief.md) | $11.23M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [liquidity-house](./liquidity-house/brief.md) | $1.44M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [llamapay](./llamapay/brief.md) | $26.44M | 17 | 20 | 6/20 (30%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [lockon](./lockon/brief.md) | $1.06M | arbitrum, polygon | 23 | 16/23 (70%) | 56.3% | 0.0% (-) | 4 | fresh | ✅ active | - |
| [lusd-chickenbonds](./lusd-chickenbonds/brief.md) | $1.49M | ethereum | 24 | 21/24 (88%) | 28.6% | 0.0% (-) | 6 | stale | ⚠️ declining | - |
| [magma-staking](./magma-staking/brief.md) | $1.26M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mangrove](./mangrove/brief.md) | $4.25M | 4 | 68 | 41/68 (60%) | 24.4% | 17.1% (ChainSecurity, Code4rena) | 7 | aging | ✅ active | - |
| [manta-atlantic-stake](./manta-atlantic-stake/brief.md) | $5.22M | ethereum, manta | 112 | 71/112 (63%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manta-cedefi](./manta-cedefi/brief.md) | $26.78M | manta | 17 | 15/17 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manta-pacific](./manta-pacific/brief.md) | $25.67M | ethereum, manta | 13 | 12/13 (92%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [matstake](./matstake/brief.md) | $4.77M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [meld-gold](./meld-gold/brief.md) | $11.13M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [merlinswap](./merlinswap/brief.md) | $8.66M | merlin | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [meson](./meson/brief.md) | $1.14M | blast, merlin | 129 | 2/129 (2%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [metastable](./metastable/brief.md) | $2.54M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [minefi](./minefi/brief.md) | $1.43M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mode-bridge](./mode-bridge/brief.md) | $6.18M | ethereum, mode | 100 | 34/100 (34%) | 2.9% | 0.0% (-) | 1 | aging | ⚠️ declining | - |
| [mole](./mole/brief.md) | $8.84M | avalanche | 49 | 3/49 (6%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [more-markets](./more-markets/brief.md) | $11.97M | 4 | 21 | 20/21 (95%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [morph-bridge](./morph-bridge/brief.md) | $15.79M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [mu-digital](./mu-digital/brief.md) | $19.45M | ethereum | 12 | 12/12 (100%) | 100.0% | 100.0% (SlowMist) | 1 | fresh | ✅ active | - |
| [mugenfinance](./mugenfinance/brief.md) | $3.35M | arbitrum | 12 | 10/12 (83%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [mvl-staking](./mvl-staking/brief.md) | $1.12M | ethereum | 50 | 3/50 (6%) | 33.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [mystic-finance](./mystic-finance/brief.md) | $5.46M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [nawa-protocol](./nawa-protocol/brief.md) | $4.07M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [nbx](./nbx/brief.md) | $1.82M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [neemo-finance](./neemo-finance/brief.md) | $1.44M | ethereum | 14 | 1/14 (7%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [neo-tokyo](./neo-tokyo/brief.md) | $1.11M | ethereum | 86 | 38/86 (44%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [neptune-finance](./neptune-finance/brief.md) | $6.05M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [netswap](./netswap/brief.md) | $1.36M | metis | 48 | 24/48 (50%) | 20.8% | 0.0% (-) | 2 | stale | 💀 dead | - |
| [neuralai](./neuralai/brief.md) | $1.30M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [neutral-trade](./neutral-trade/brief.md) | $18.84M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nomiswap](./nomiswap/brief.md) | $1.42M | bsc | 47 | 19/47 (40%) | 15.8% | 0.0% (-) | 1 | stale | ⚠️ declining | - |
| [nonkyc](./nonkyc/brief.md) | $5.80M | 4 | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [nostra](./nostra/brief.md) | $7.03M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [obsidian](./obsidian/brief.md) | $1.64M | cronos | 6 | 0/6 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [odyssey-finance](./odyssey-finance/brief.md) | $9.47M | base, ethereum, optimism | 79 | 74/79 (94%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [okcoin](./okcoin/brief.md) | $26.01M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [omnibtc](./omnibtc/brief.md) | $2.27M | 6 | 6 | 0/6 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [opinion](./opinion/brief.md) | $7.54M | bsc, ethereum | 6 | 4/6 (67%) | 100.0% | 0.0% (-) | 4 | fresh | ⚠️ declining | - |
| [outcome-finance](./outcome-finance/brief.md) | $1.29M | boba, ethereum, polygon | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [p2pb2b](./p2pb2b/brief.md) | $4.89M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pangolin](./pangolin/brief.md) | $3.66M | avalanche | 182 | 28/182 (15%) | 53.6% | 0.0% (-) | 10 | aging | 💀 dead | - |
| [paragonsdao](./paragonsdao/brief.md) | $6.23M | base | 2 | 2/2 (100%) | 50.0% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [pay-protocol](./pay-protocol/brief.md) | $1.08M | ethereum | 8 | 0/8 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [perpl](./perpl/brief.md) | $1.17M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [polynomial-protocol](./polynomial-protocol/brief.md) | $5.32M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [pond0x](./pond0x/brief.md) | $2.76M | ethereum | 14 | 9/14 (64%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [potatoswap](./potatoswap/brief.md) | $4.83M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [powercity](./powercity/brief.md) | $3.32M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [powh3d](./powh3d/brief.md) | $4.46M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [prime-staking](./prime-staking/brief.md) | $5.09M | base | 10 | 3/10 (30%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [privacy-pools](./privacy-pools/brief.md) | $6.66M | arbitrum, ethereum, optimism | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [probit-global](./probit-global/brief.md) | $12.65M | fantom | 3 | 0/3 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [pumpspace](./pumpspace/brief.md) | $4.03M | avalanche | 667 | 7/667 (1%) | 28.6% | 0.0% (-) | 2 | aging | ✅ active | - |
| [punks-terminal](./punks-terminal/brief.md) | $1.73M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rain](./rain/brief.md) | $3.39M | arbitrum | 28 | 27/28 (96%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [rainbow-bridge](./rainbow-bridge/brief.md) | $2.15M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [rank-trading](./rank-trading/brief.md) | $2.38M | bsc | 13 | 10/13 (77%) | 30.0% | 0.0% (-) | 1 | aging | ✅ active | - |
| [reddex](./reddex/brief.md) | $5.25M | ethereum | 5 | 4/5 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [reflexer](./reflexer/brief.md) | $2.37M | ethereum | 64 | 22/64 (34%) | 40.9% | 0.0% (-) | 3 | stale | 💀 dead | - |
| [revault](./revault/brief.md) | $1.96M | bsc | 75 | 20/75 (27%) | 45.0% | 0.0% (-) | 1 | stale | ⚠️ declining | - |
| [rho](./rho/brief.md) | $2.44M | ethereum | 32 | 2/32 (6%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [risex](./risex/brief.md) | $3.93M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ronin-bridge](./ronin-bridge/brief.md) | $4.63M | ethereum | 11 | 5/11 (45%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [rooster-protocol](./rooster-protocol/brief.md) | $2.23M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [rosen-bridge](./rosen-bridge/brief.md) | $2.11M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rsk-bridge](./rsk-bridge/brief.md) | $1.03M | ethereum | 15 | 14/15 (93%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [sakefinance](./sakefinance/brief.md) | $2.43M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sceptre-liquid](./sceptre-liquid/brief.md) | $20.33M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [scream](./scream/brief.md) | $1.29M | fantom | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [scrub-money](./scrub-money/brief.md) | $7.15M | arbitrum, kava | 19 | 1/19 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [sentiment](./sentiment/brief.md) | $1.20M | arbitrum | 297 | 30/297 (10%) | 73.3% | 46.7% (Sherlock) | 6 | aging | ❓ unknown | - |
| [shape-bridge](./shape-bridge/brief.md) | $1.07M | ethereum | 28 | 24/28 (86%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [sicx](./sicx/brief.md) | $1.30M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [smilee-finance](./smilee-finance/brief.md) | $1.83M | arbitrum, berachain | 186 | 23/186 (12%) | 4.3% | 4.3% (Spearbit) | 3 | aging | ❓ unknown | - |
| [solera](./solera/brief.md) | $8.09M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [sophon-farm](./sophon-farm/brief.md) | $7.01M | ethereum | 1 | 1/1 (100%) | 100.0% | 100.0% (Sherlock) | 3 | aging | 💀 dead | - |
| [sorare-bridge](./sorare-bridge/brief.md) | $4.03M | ethereum | 58 | 38/58 (66%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [sovryn-bridge](./sovryn-bridge/brief.md) | $2.96M | ethereum | 47 | 5/47 (11%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [spacefi](./spacefi/brief.md) | $1.48M | scroll, zksync-era | 38 | 0/38 (0%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [sparkdex](./sparkdex/brief.md) | $29.43M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [spiraldao](./spiraldao/brief.md) | $6.40M | ethereum, zksync-era | 56 | 25/56 (45%) | 44.0% | 0.0% (-) | 3 | stale | 💀 dead | - |
| [splashing-stake](./splashing-stake/brief.md) | $6.19M | sei | 8 | 4/8 (50%) | 75.0% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [sport.fun](./sport.fun/brief.md) | $3.65M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [sprinter](./sprinter/brief.md) | $1.14M | base | 4 | 4/4 (100%) | 100.0% | 50.0% (Spearbit) | 3 | fresh | ✅ active | - |
| [squadswap](./squadswap/brief.md) | $1.54M | 6 | 214 | 37/214 (17%) | 63.2% | 0.0% (-) | 4 | aging | ✅ active | - |
| [stablehodl](./stablehodl/brief.md) | $6.96M | bsc, ethereum, polygon | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [stargate](./stargate/brief.md) | $6.17M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stcelo](./stcelo/brief.md) | $1.70M | celo | 19 | 10/19 (53%) | 50.0% | 0.0% (-) | 2 | stale | ✅ active | - |
| [stfil](./stfil/brief.md) | $5.64M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stobox](./stobox/brief.md) | $15.12M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stratis-mstrax](./stratis-mstrax/brief.md) | $2.04M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sumer.money](./sumer.money/brief.md) | $1.89M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [supernova](./supernova/brief.md) | $2.16M | ethereum | 47 | 47/47 (100%) | 48.9% | 0.0% (-) | 1 | fresh | ⚠️ declining | - |
| [swappi](./swappi/brief.md) | $1.96M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [swapscanner](./swapscanner/brief.md) | $4.68M | klaytn | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [swellchain-bridge](./swellchain-bridge/brief.md) | $1.18M | ethereum | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [syncswap-protocol](./syncswap-protocol/brief.md) | $10.03M | linea, scroll, zksync-era | 158 | 31/158 (20%) | 22.6% | 0.0% (-) | 3 | stale | ✅ active | - |
| [teller](./teller/brief.md) | $1.99M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tender-finance](./tender-finance/brief.md) | $1.29M | arbitrum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [tensorplex](./tensorplex/brief.md) | $1.64M | ethereum | 6 | 4/6 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [tg-casino](./tg-casino/brief.md) | $1.18M | ethereum | 15 | 15/15 (100%) | 6.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [thedeep](./thedeep/brief.md) | $8.46M | 4 | 164 | 11/164 (7%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [themis-pro](./themis-pro/brief.md) | $1.16M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [thruster](./thruster/brief.md) | $5.82M | blast | 20 | 14/20 (70%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [tothemoon](./tothemoon/brief.md) | $3.79M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [townsquare](./townsquare/brief.md) | $1.75M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [trisolaris](./trisolaris/brief.md) | $1.34M | aurora | 119 | 18/119 (15%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [troves](./troves/brief.md) | $4.99M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [truefi](./truefi/brief.md) | $15.40M | arbitrum, ethereum | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [trufin-protocol](./trufin-protocol/brief.md) | $6.84M | ethereum | 7 | 6/7 (86%) | 66.7% | 33.3% (OpenZeppelin) | 7 | fresh | ⚠️ declining | - |
| [twyne](./twyne/brief.md) | $2.51M | ethereum | 59 | 52/59 (88%) | 9.6% | 0.0% (-) | 2 | fresh | ✅ active | - |
| [umee](./umee/brief.md) | $3.23M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [unchain-x](./unchain-x/brief.md) | $1.25M | bsc | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | aging | ✅ active | - |
| [unichain-bridge](./unichain-bridge/brief.md) | $2.92M | ethereum | 15 | 15/15 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [universal-bridge](./universal-bridge/brief.md) | $7.70M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [uranium.io](./uranium.io/brief.md) | $7.36M | ethereum | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [usx.capital](./usx.capital/brief.md) | $1.71M | scroll | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [vedelegate](./vedelegate/brief.md) | $1.22M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [ventuals](./ventuals/brief.md) | $28.76M | hyperliquid | 4 | 4/4 (100%) | 100.0% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [verio](./verio/brief.md) | $7.49M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [verus-market](./verus-market/brief.md) | $9.85M | ethereum | 32 | 0/32 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [vest-markets](./vest-markets/brief.md) | $1.23M | 5 | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [woo-x](./woo-x/brief.md) | $7.08M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [xfi-native-staking-protocol](./xfi-native-staking-protocol/brief.md) | $1.11M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [yei-finance](./yei-finance/brief.md) | $29.76M | sei | 44 | 35/44 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [zeebu](./zeebu/brief.md) | $5.39M | base, ethereum | 8 | 3/8 (38%) | 66.7% | 66.7% (Certora, OpenZeppelin) | 2 | aging | ❓ unknown | - |
| [zenlink](./zenlink/brief.md) | $5.52M | moonbeam, moonriver | 226 | 12/226 (5%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [zkswap-finance](./zkswap-finance/brief.md) | $1.25M | sonic, zksync-era | 98 | 27/98 (28%) | 11.1% | 0.0% (-) | 5 | stale | ✅ active | - |
| [zoomex](./zoomex/brief.md) | $23.79M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zoth](./zoth/brief.md) | $2.20M | 5 | 43 | 32/43 (74%) | 78.1% | 0.0% (-) | 5 | fresh | ✅ active | - |

_Generated: 2026-05-25T16:08:31.944Z_
_Projects: 539_
