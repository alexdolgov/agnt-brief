# Agentic Audit Briefs

Machine-readable and human-readable audit coverage briefs for DeFi protocols, produced by [meta-audit](https://github.com/alexdolgov/meta-audit).

Each project directory contains:
- `brief.json` — machine-readable: full contract surface, audits, coverage, TVL
- `brief.md` — human-readable: overview, narrative, tables with links
- `contracts/` — verified source code organized by chain, with per-contract READMEs

## Project Directory

| Project | TVL (DL) | Chains | Implementations | Verified | Coverage | Tier 1 | Audits | Freshness | Status | ASD |
|---|---:|---|---:|---|---:|---|---:|---|---|---:|
| [cream-finance](./cream-finance/brief.md) | $1.66M | 4 | 94 | 62/94 (66%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $2280.01M |
| [reservoir-protocol](./reservoir-protocol/brief.md) | $75.10M | 9 | 278 | 265/278 (95%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2082.66M |
| [keep3r-network](./keep3r-network/brief.md) | $3.67M | ethereum | 480 | 367/480 (76%) | 0.3% | 0.0% (-) | 1 | stale | ⚠️ declining | $2070.48M |
| [zyfai](./zyfai/brief.md) | $6.49M | 5 | 105 | 99/105 (94%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1557.53M |
| [angle](./angle/brief.md) | $3.71M | 7 | 547 | 284/547 (52%) | 1.7% | 0.0% (-) | 1 | stale | ⚠️ declining | $1397.79M |
| [singularv](./singularv/brief.md) | $2.54M | ethereum | 83 | 70/83 (84%) | 11.4% | 11.4% (ChainSecurity, Spearbit) | 5 | stale | ⚠️ declining | $1083.21M |
| [rumpel-labs](./rumpel-labs/brief.md) | $1.89M | ethereum | 115 | 101/115 (88%) | 2.0% | 0.0% (-) | 2 | aging | ⚠️ declining | $1039.27M |
| [volta-club](./volta-club/brief.md) | $1.28M | avalanche, ethereum | 316 | 178/316 (56%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $976.19M |
| [planet](./planet/brief.md) | $1.82M | bsc | 34 | 26/34 (76%) | 7.7% | 0.0% (-) | 1 | stale | ⚠️ declining | $778.29M |
| [bracket-protocol](./bracket-protocol/brief.md) | $3.08M | arbitrum, ethereum | 58 | 46/58 (79%) | 17.4% | 0.0% (-) | 4 | fresh | ✅ active | $619.35M |
| [mantra-dao](./mantra-dao/brief.md) | $1.74M | ethereum, polygon | 195 | 76/195 (39%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $610.99M |
| [sigma-money](./sigma-money/brief.md) | $3.09M | bsc | 231 | 188/231 (81%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $593.37M |
| [trevee-earn](./trevee-earn/brief.md) | $1.15M | ethereum, plasma, sonic | 15 | 14/15 (93%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $582.18M |
| [jones-dao](./jones-dao/brief.md) | $1.46M | 5 | 502 | 340/502 (68%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $519.75M |
| [trust-wallet](./trust-wallet/brief.md) | $39.04M | bsc | 5 | 3/5 (60%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $470.22M |
| [inverse-finance](./inverse-finance/brief.md) | $41.93M | 5 | 154 | 144/154 (94%) | 11.1% | 7.6% (Code4rena, Sherlock) | 5 | fresh | ✅ active | $428.77M |
| [starknet-btc-staking](./starknet-btc-staking/brief.md) | $54.42M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | $412.19M |
| [onyx](./onyx/brief.md) | $58.89M | ethereum | 16 | 14/16 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $384.43M |
| [kine-finance](./kine-finance/brief.md) | $1.09M | 4 | 35 | 33/35 (94%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $351.76M |
| [alchemix](./alchemix/brief.md) | $37.88M | 4 | 388 | 202/388 (52%) | 6.4% | 1.0% (Spearbit) | 6 | fresh | ✅ active | $338.70M |
| [tenderize](./tenderize/brief.md) | $1.10M | arbitrum, ethereum | 43 | 38/43 (88%) | 2.6% | 0.0% (-) | 2 | stale | ⚠️ declining | $332.49M |
| [mitosis](./mitosis/brief.md) | $1.49M | 11 | 66 | 43/66 (65%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $329.00M |
| [hyperwave](./hyperwave/brief.md) | $6.38M | base, ethereum, hyperliquid | 11 | 7/11 (64%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $322.69M |
| [rari-capital](./rari-capital/brief.md) | $1.51M | arbitrum, ethereum | 253 | 89/253 (35%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $321.37M |
| [satlayer](./satlayer/brief.md) | $1.14M | 4 | 311 | 111/311 (36%) | 4.5% | 0.0% (-) | 6 | fresh | ✅ active | $287.19M |
| [debridge](./debridge/brief.md) | $3.81M | 11 | 161 | 16/161 (10%) | 61.9% | 0.0% (-) | 13 | aging | ⚠️ declining | $263.88M |
| [btcst](./btcst/brief.md) | $1.06M | bsc | 64 | 11/64 (17%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $263.69M |
| [hop-protocol](./hop-protocol/brief.md) | $3.58M | 5 | 402 | 100/402 (25%) | 10.9% | 0.0% (-) | 2 | stale | ⚠️ declining | $258.69M |
| [aethir](./aethir/brief.md) | $9.18M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $257.03M |
| [symbiosis](./symbiosis/brief.md) | $8.72M | cronos, ethereum, scroll | 40 | 26/40 (65%) | 15.4% | 7.7% (SlowMist) | 5 | fresh | ✅ active | $236.15M |
| [decentralized-euro](./decentralized-euro/brief.md) | $2.07M | 5 | 72 | 39/72 (54%) | 28.2% | 28.2% (ChainSecurity) | 2 | aging | ✅ active | $230.43M |
| [sphere](./sphere/brief.md) | $6.68M | 5 | 217 | 109/217 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $229.38M |
| [superfarm](./superfarm/brief.md) | $1.18M | ethereum | 49 | 42/49 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $211.05M |
| [autofinance](./autofinance/brief.md) | $48.30M | 5 | 570 | 406/570 (71%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $175.72M |
| [puffer-finance](./puffer-finance/brief.md) | $59.11M | ethereum | 65 | 44/65 (68%) | 36.4% | 22.7% (SlowMist) | 4 | stale | ⚠️ declining | $169.16M |
| [cyclone](./cyclone/brief.md) | $1.30M | bsc, ethereum, polygon | 63 | 30/63 (48%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $165.47M |
| [babydogecoin](./babydogecoin/brief.md) | $2.08M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $164.86M |
| [hypersurface](./hypersurface/brief.md) | $4.02M | base, hyperliquid | 242 | 39/242 (16%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $161.03M |
| [avantis](./avantis/brief.md) | $45.49M | base | 61 | 16/61 (26%) | 68.8% | 0.0% (-) | 3 | aging | ⚠️ declining | $150.92M |
| [ribbon-finance](./ribbon-finance/brief.md) | $4.85M | avalanche, ethereum | 147 | 86/147 (59%) | 31.0% | 4.6% (OpenZeppelin) | 14 | stale | ⚠️ declining | $148.56M |
| [infinifi](./infinifi/brief.md) | $90.23M | bsc, ethereum, plasma | 114 | 68/114 (60%) | 0.0% | 0.0% (-) | 0 | aging | ⚠️ declining | $145.94M |
| [zircuit](./zircuit/brief.md) | $13.10M | base, ethereum | 17 | 16/17 (94%) | 25.0% | 0.0% (-) | 3 | aging | ⚠️ declining | $144.24M |
| [beanstalk](./beanstalk/brief.md) | $6.46M | arbitrum, ethereum | 244 | 167/244 (68%) | 20.4% | 1.2% (Code4rena, Cyfrin, Immunefi) | 7 | stale | ⚠️ declining | $142.55M |
| [summer.fi](./summer.fi/brief.md) | $47.58M | 5 | 482 | 276/482 (57%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $140.93M |
| [zircuit-staking](./zircuit-staking/brief.md) | $54.16M | base, ethereum | 20 | 19/20 (95%) | 21.1% | 0.0% (-) | 3 | aging | ⚠️ declining | $140.43M |
| [bio-protocol](./bio-protocol/brief.md) | $4.56M | base, ethereum | 41 | 40/41 (98%) | 10.0% | 0.0% (-) | 2 | fresh | ✅ active | $139.62M |
| [apechain-bridge](./apechain-bridge/brief.md) | $44.92M | ethereum | 9 | 7/9 (78%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $138.23M |
| [wavesbridge](./wavesbridge/brief.md) | $1.03M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $136.63M |
| [bitway](./bitway/brief.md) | $60.78M | bsc | 8 | 7/8 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $136.35M |
| [bitway-earn](./bitway-earn/brief.md) | $62.23M | bsc | 8 | 7/8 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $136.35M |
| [giza](./giza/brief.md) | $4.63M | base, plasma | 16 | 16/16 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $119.21M |
| [velo-finance](./velo-finance/brief.md) | $1.77M | bsc | 28 | 4/28 (14%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $117.63M |
| [concentrator](./concentrator/brief.md) | $58.65M | ethereum | 342 | 300/342 (88%) | 31.3% | 6.3% (Trail of Bits) | 33 | aging | ✅ active | $105.16M |
| [yieldseeker](./yieldseeker/brief.md) | $1.29M | base | 190 | 50/190 (26%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $102.88M |
| [velvet.capital](./velvet.capital/brief.md) | $1.43M | 4 | 420 | 44/420 (10%) | 77.8% | 2.2% (Spearbit) | 13 | fresh | ⚠️ declining | $95.22M |
| [gnosis-protocol-v1](./gnosis-protocol-v1/brief.md) | $2.23M | ethereum | 110 | 73/110 (66%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $94.39M |
| [blur](./blur/brief.md) | $18.57M | blast, ethereum | 17 | 12/17 (71%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $91.73M |
| [gravity-bridge](./gravity-bridge/brief.md) | $12.14M | ethereum | 152 | 74/152 (49%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $91.30M |
| [pleasing-gold](./pleasing-gold/brief.md) | $87.87M | arbitrum | 8 | 4/8 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $88.09M |
| [the-idols](./the-idols/brief.md) | $5.67M | ethereum | 17 | 13/17 (76%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $85.36M |
| [ring-protocol](./ring-protocol/brief.md) | $36.20M | 12 | 90 | 44/90 (49%) | 10.6% | 8.5% (Spearbit) | 2 | fresh | ✅ active | $83.51M |
| [zoo-finance](./zoo-finance/brief.md) | $41.36M | 4 | 58 | 22/58 (38%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $83.03M |
| [mendi-finance](./mendi-finance/brief.md) | $2.01M | linea | 39 | 28/39 (72%) | 10.7% | 3.6% (Sherlock) | 2 | fresh | 💀 dead | $79.07M |
| [stable-jack](./stable-jack/brief.md) | $1.79M | avalanche, sonic | 249 | 31/249 (12%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $76.85M |
| [3jane](./3jane/brief.md) | $40.71M | ethereum | 23 | 21/23 (91%) | 61.9% | 61.9% (Sherlock) | 4 | fresh | ⚠️ declining | $76.61M |
| [nest](./nest/brief.md) | $12.59M | 4 | 349 | 132/349 (38%) | 12.9% | 0.0% (-) | 1 | fresh | ✅ active | $69.42M |
| [switcheo-finance](./switcheo-finance/brief.md) | $1.23M | ethereum | 47 | 29/47 (62%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $68.28M |
| [aura](./aura/brief.md) | $26.15M | 9 | 497 | 251/497 (51%) | 19.4% | 8.4% (Code4rena) | 15 | stale | ✅ active | $68.25M |
| [native](./native/brief.md) | $65.17M | 10 | 80 | 37/80 (46%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $67.62M |
| [init-capital](./init-capital/brief.md) | $4.29M | blast, mantle | 99 | 23/99 (23%) | 24.0% | 0.0% (-) | 4 | stale | ⚠️ declining | $66.15M |
| [turtle-club](./turtle-club/brief.md) | $1.23M | 4 | 516 | 340/516 (66%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $59.81M |
| [kyberswap](./kyberswap/brief.md) | $10.47M | 15 | 445 | 130/445 (29%) | 8.8% | 7.4% (ChainSecurity, Spearbit) | 6 | fresh | ⚠️ declining | $58.32M |
| [reya](./reya/brief.md) | $17.80M | 5 | 293 | 73/293 (25%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $57.29M |
| [deeplock](./deeplock/brief.md) | $2.14M | bsc | 70 | 38/70 (54%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $56.17M |
| [tulipa-capital](./tulipa-capital/brief.md) | $49.29M | avalanche, base, ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $55.69M |
| [api3](./api3/brief.md) | $55.28M | ethereum, mantle | 28 | 14/28 (50%) | 21.4% | 7.1% (Trail of Bits) | 3 | aging | ✅ active | $55.23M |
| [synfutures](./synfutures/brief.md) | $6.28M | 6 | 481 | 3/481 (1%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $52.44M |
| [armitage-by-wintermute](./armitage-by-wintermute/brief.md) | $51.05M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $51.81M |
| [stcyber](./stcyber/brief.md) | $1.54M | 4 | 31 | 26/31 (84%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $51.36M |
| [flying-tulip](./flying-tulip/brief.md) | $5.81M | 5 | 62 | 59/62 (95%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $51.25M |
| [republic-note](./republic-note/brief.md) | $16.05M | avalanche | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $51.20M |
| [lisk-bridge](./lisk-bridge/brief.md) | $38.11M | ethereum | 96 | 87/96 (91%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $50.94M |
| [stakestone](./stakestone/brief.md) | $23.27M | 8 | 183 | 60/183 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $49.73M |
| [bancor](./bancor/brief.md) | $30.33M | ethereum | 121 | 81/121 (67%) | 23.5% | 23.5% (ChainSecurity, OpenZeppelin) | 4 | stale | ⚠️ declining | $43.79M |
| [overtime](./overtime/brief.md) | $3.01M | 5 | 200 | 140/200 (70%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $42.48M |
| [yuzu-money](./yuzu-money/brief.md) | $50.94M | plasma | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $41.02M |
| [illuvium](./illuvium/brief.md) | $9.07M | ethereum | 16 | 14/16 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $39.75M |
| [asymmetry](./asymmetry/brief.md) | $3.56M | ethereum | 203 | 120/203 (59%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $37.15M |
| [ichi](./ichi/brief.md) | $12.78M | 18 | 616 | 112/616 (18%) | 0.9% | 0.0% (-) | 1 | stale | ✅ active | $36.12M |
| [snowbank](./snowbank/brief.md) | $3.74M | avalanche | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $36.05M |
| [zklink-nova](./zklink-nova/brief.md) | $12.95M | 11 | 380 | 105/380 (28%) | 14.5% | 3.6% (OpenZeppelin) | 7 | aging | ⚠️ declining | $33.89M |
| [backedfi](./backedfi/brief.md) | $8.20M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $33.35M |
| [nodedao](./nodedao/brief.md) | $33.69M | ethereum | 18 | 18/18 (100%) | 38.9% | 0.0% (-) | 4 | aging | ✅ active | $33.27M |
| [obeliskbtc](./obeliskbtc/brief.md) | $8.95M | ethereum | 19 | 19/19 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $33.19M |
| [eth-strategy](./eth-strategy/brief.md) | $3.88M | ethereum | 49 | 41/49 (84%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $30.76M |
| [across](./across/brief.md) | $26.93M | 15 | 142 | 58/142 (41%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $28.14M |
| [pooltogether](./pooltogether/brief.md) | $8.44M | 8 | 153 | 106/153 (69%) | 0.9% | 0.0% (-) | 1 | unknown | ⚠️ declining | $26.91M |
| [maverick-protocol](./maverick-protocol/brief.md) | $2.20M | 6 | 93 | 15/93 (16%) | 35.3% | 17.6% (Code4rena) | 4 | stale | ⚠️ declining | $26.76M |
| [aevo](./aevo/brief.md) | $20.28M | 4 | 256 | 88/256 (34%) | 11.8% | 0.0% (-) | 4 | stale | ✅ active | $26.14M |
| [synapse](./synapse/brief.md) | $16.68M | 20 | 824 | 196/824 (24%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $25.57M |
| [rocksolid-network](./rocksolid-network/brief.md) | $24.22M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $24.96M |
| [keep-network](./keep-network/brief.md) | $1.46M | 5 | 225 | 125/225 (56%) | 7.9% | 3.2% (ChainSecurity, ConsenSys Diligence) | 6 | fresh | ⚠️ declining | $24.66M |
| [flock.io](./flock.io/brief.md) | $9.77M | base | 15 | 14/15 (93%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $24.37M |
| [iq](./iq/brief.md) | $5.04M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $23.85M |
| [everrise](./everrise/brief.md) | $1.49M | 5 | 210 | 73/210 (35%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $23.07M |
| [ethichub](./ethichub/brief.md) | $4.03M | celo, ethereum, gnosis | 58 | 46/58 (79%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $22.68M |
| [hyperbeat](./hyperbeat/brief.md) | $47.37M | ethereum, hyperliquid | 221 | 140/221 (63%) | 10.7% | 5.0% (Certora) | 5 | fresh | ✅ active | $22.60M |
| [hope-money](./hope-money/brief.md) | $1.67M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $21.98M |
| [gains-network](./gains-network/brief.md) | $18.58M | arbitrum, base, polygon | 760 | 114/760 (15%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $21.86M |
| [singularx](./singularx/brief.md) | $1.80M | ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $21.45M |
| [rysk-finance](./rysk-finance/brief.md) | $57.74M | arbitrum, ethereum, hyperliquid | 186 | 57/186 (31%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $21.39M |
| [piku](./piku/brief.md) | $17.20M | ethereum | 29 | 27/29 (93%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $21.37M |
| [wing-finance](./wing-finance/brief.md) | $32.46M | bsc, ethereum, klaytn | 179 | 11/179 (6%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $20.27M |
| [smardex-ecosystem](./smardex-ecosystem/brief.md) | $4.56M | 5 | 39 | 39/39 (100%) | 33.3% | 0.0% (-) | 4 | aging | ⚠️ declining | $20.06M |
| [reppo](./reppo/brief.md) | $5.83M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | $19.77M |
| [index-coop](./index-coop/brief.md) | $12.57M | 4 | 235 | 111/235 (47%) | 13.5% | 0.9% (Code4rena) | 5 | aging | ✅ active | $19.44M |
| [allbridge](./allbridge/brief.md) | $26.55M | 13 | 282 | 75/282 (27%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $19.33M |
| [dodo](./dodo/brief.md) | $12.65M | 12 | 552 | 145/552 (26%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $19.13M |
| [parasail](./parasail/brief.md) | $3.60M | arbitrum | 41 | 2/41 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $17.21M |
| [drops](./drops/brief.md) | $3.30M | ethereum | 77 | 66/77 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $16.49M |
| [hemi-staking](./hemi-staking/brief.md) | $36.92M | 4 | 120 | 42/120 (35%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $16.42M |
| [hypha](./hypha/brief.md) | $14.62M | avalanche | 60 | 30/60 (50%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $16.37M |
| [yieldfi](./yieldfi/brief.md) | $12.05M | 9 | 22 | 14/22 (64%) | 70.6% | 70.6% (Cyfrin, Sherlock) | 3 | fresh | ✅ active | $16.26M |
| [geth](./geth/brief.md) | $16.05M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $16.16M |
| [1inch](./1inch/brief.md) | $2.89M | ethereum | 275 | 105/275 (38%) | 21.9% | 13.3% (ChainSecurity, MixBytes, OpenZeppelin, Sherlock) | 56 | fresh | ✅ active | $16.09M |
| [equilibria](./equilibria/brief.md) | $18.14M | 10 | 119 | 70/119 (59%) | 17.6% | 0.0% (-) | 5 | aging | ⚠️ declining | $15.67M |
| [thorswap](./thorswap/brief.md) | $16.73M | ethereum | 34 | 23/34 (68%) | 13.0% | 0.0% (-) | 2 | stale | ❓ unknown | $15.54M |
| [t-rize](./t-rize/brief.md) | $23.00M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $15.01M |
| [makina](./makina/brief.md) | $36.80M | base, ethereum, ink | 36 | 33/36 (92%) | 90.9% | 84.8% (ChainSecurity) | 3 | fresh | ✅ active | $12.90M |
| [lets-get-hai](./lets-get-hai/brief.md) | $1.20M | optimism | 54 | 53/54 (98%) | 77.4% | 0.0% (-) | 4 | fresh | ✅ active | $12.63M |
| [sideshift](./sideshift/brief.md) | $15.00M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $12.33M |
| [looping-collective](./looping-collective/brief.md) | $15.63M | ethereum, hyperliquid | 14 | 12/14 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $11.81M |
| [d2-finance](./d2-finance/brief.md) | $24.60M | 5 | 184 | 60/184 (33%) | 48.4% | 11.3% (Cyfrin) | 2 | aging | ✅ active | $11.49M |
| [alpaca-finance](./alpaca-finance/brief.md) | $46.10M | bsc | 144 | 115/144 (80%) | 57.4% | 22.6% (SlowMist) | 17 | stale | ⚠️ declining | $11.23M |
| [intentx](./intentx/brief.md) | $5.67M | base, mantle | 56 | 25/56 (45%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $10.51M |
| [spectra](./spectra/brief.md) | $50.95M | 8 | 214 | 139/214 (65%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $10.46M |
| [synthetix](./synthetix/brief.md) | $41.67M | 4 | 13 | 13/13 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $10.27M |
| [40-acres](./40-acres/brief.md) | $40.57M | 4 | 325 | 170/325 (52%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $10.02M |
| [woofi](./woofi/brief.md) | $21.33M | 12 | 200 | 84/200 (42%) | 18.8% | 0.0% (-) | 4 | aging | ⚠️ declining | $9.66M |
| [polkastarter](./polkastarter/brief.md) | $3.00M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $9.61M |
| [inception](./inception/brief.md) | $5.86M | 9 | 78 | 64/78 (82%) | 24.6% | 0.0% (-) | 8 | aging | ⚠️ declining | $9.53M |
| [kaito](./kaito/brief.md) | $18.72M | base | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $9.48M |
| [dao-maker](./dao-maker/brief.md) | $2.00M | ethereum | 17 | 4/17 (24%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $9.34M |
| [neku](./neku/brief.md) | $1.60M | arbitrum | 17 | 8/17 (47%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $8.38M |
| [tau-labs](./tau-labs/brief.md) | $4.98M | ethereum, plasma | 179 | 179/179 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $8.07M |
| [sonic-gateway](./sonic-gateway/brief.md) | $67.15M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $7.80M |
| [the-arena](./the-arena/brief.md) | $2.20M | avalanche | 119 | 29/119 (24%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $7.76M |
| [fuel-bridge](./fuel-bridge/brief.md) | $10.58M | ethereum | 18 | 15/18 (83%) | 26.7% | 0.0% (-) | 3 | fresh | ⚠️ declining | $7.63M |
| [belt-finance](./belt-finance/brief.md) | $13.22M | bsc, heco, klaytn | 1331 | 60/1331 (5%) | 47.5% | 0.0% (-) | 3 | stale | ⚠️ declining | $7.12M |
| [mobox](./mobox/brief.md) | $2.14M | bsc | 323 | 12/323 (4%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $6.64M |
| [alphagrowth](./alphagrowth/brief.md) | $8.53M | 4 | 55 | 43/55 (78%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $6.29M |
| [nftx](./nftx/brief.md) | $1.58M | arbitrum, ethereum | 184 | 135/184 (73%) | 11.1% | 9.6% (Code4rena) | 3 | stale | ⚠️ declining | $6.27M |
| [sx-rollup-bridge](./sx-rollup-bridge/brief.md) | $6.37M | ethereum | 133 | 68/133 (51%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $6.12M |
| [ambire-wallet](./ambire-wallet/brief.md) | $9.90M | ethereum | 9 | 2/9 (22%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $5.82M |
| [ekubo](./ekubo/brief.md) | $27.32M | ethereum | 15 | 9/15 (60%) | 44.4% | 22.2% (Code4rena) | 3 | fresh | ✅ active | $5.65M |
| [sophon-bridge](./sophon-bridge/brief.md) | $83.96M | ethereum | 10 | 9/10 (90%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $5.51M |
| [wasabi](./wasabi/brief.md) | $1.31M | 4 | 83 | 54/83 (65%) | 37.0% | 11.1% (Sherlock) | 8 | aging | ⚠️ declining | $5.48M |
| [sierra-protocol](./sierra-protocol/brief.md) | $32.68M | avalanche, ethereum | 78 | 25/78 (32%) | 4.0% | 4.0% (Spearbit) | 1 | fresh | ✅ active | $5.33M |
| [axc-gift](./axc-gift/brief.md) | $5.29M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $5.29M |
| [stargate-finance](./stargate-finance/brief.md) | $92.29M | 21 | 294 | 42/294 (14%) | 50.0% | 0.0% (-) | 16 | stale | ✅ active | $5.16M |
| [scroll-bridge](./scroll-bridge/brief.md) | $40.53M | ethereum | 32 | 30/32 (94%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $4.98M |
| [ledgity-yield](./ledgity-yield/brief.md) | $3.19M | 5 | 107 | 55/107 (51%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $4.96M |
| [yala](./yala/brief.md) | $2.20M | ethereum | 30 | 11/30 (37%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $4.62M |
| [delta-financial](./delta-financial/brief.md) | $10.31M | ethereum | 53 | 39/53 (74%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $4.51M |
| [atlendis](./atlendis/brief.md) | $10.99M | polygon | 43 | 14/43 (33%) | 14.3% | 0.0% (-) | 2 | stale | ✅ active | $4.28M |
| [primefi](./primefi/brief.md) | $233.17K | base, hyperliquid | 117 | 56/117 (48%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $4.12M |
| [dango](./dango/brief.md) | $3.87M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $4.07M |
| [trueo](./trueo/brief.md) | $3.76M | base | 23 | 23/23 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $4.05M |
| [meta-pool](./meta-pool/brief.md) | $95.30M | aurora, ethereum | 41 | 12/41 (29%) | 50.0% | 0.0% (-) | 1 | stale | ✅ active | $3.96M |
| [stafi](./stafi/brief.md) | $3.99M | ethereum | 42 | 23/42 (55%) | 26.1% | 0.0% (-) | 4 | stale | ⚠️ declining | $3.92M |
| [swaap](./swaap/brief.md) | $4.41M | 11 | 128 | 6/128 (5%) | 25.0% | 25.0% (ChainSecurity) | 3 | stale | ⚠️ declining | $3.81M |
| [near-intents](./near-intents/brief.md) | $79.03M | gnosis | 7 | 6/7 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.72M |
| [firebot](./firebot/brief.md) | $2.26M | polygon | 29 | 21/29 (72%) | 4.8% | 0.0% (-) | 1 | stale | ❓ unknown | $3.67M |
| [syntropia](./syntropia/brief.md) | $3.66M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.66M |
| [dforce](./dforce/brief.md) | $12.48M | 7 | 449 | 98/449 (22%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.61M |
| [xsy](./xsy/brief.md) | $20.97M | avalanche | 15 | 4/15 (27%) | 25.0% | 0.0% (-) | 1 | aging | ✅ active | $3.60M |
| [stakingverse](./stakingverse/brief.md) | $4.03M | ethereum, lukso | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $3.54M |
| [llama-airforce](./llama-airforce/brief.md) | $3.83M | ethereum | 93 | 60/93 (65%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.51M |
| [monstro](./monstro/brief.md) | $3.39M | base | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $3.43M |
| [lair-finance](./lair-finance/brief.md) | $5.55M | berachain | 78 | 14/78 (18%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $3.41M |
| [open-ticketing-ecosystem](./open-ticketing-ecosystem/brief.md) | $1.34M | base, ethereum, polygon | 24 | 24/24 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.34M |
| [beradrome](./beradrome/brief.md) | $7.00M | berachain | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.29M |
| [steer-protocol](./steer-protocol/brief.md) | $20.47M | arbitrum | 43 | 31/43 (72%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.26M |
| [unslashed](./unslashed/brief.md) | $3.07M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.13M |
| [liquidloans](./liquidloans/brief.md) | $3.92M | base | 20 | 20/20 (100%) | 30.0% | 0.0% (-) | 2 | fresh | ✅ active | $3.04M |
| [parallel-protocol](./parallel-protocol/brief.md) | $3.77M | 19 | 38 | 26/38 (68%) | 3.8% | 0.0% (-) | 2 | stale | ✅ active | $2.98M |
| [gro](./gro/brief.md) | $4.66M | ethereum | 124 | 36/124 (29%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.93M |
| [alien-base](./alien-base/brief.md) | $4.73M | base | 58 | 47/58 (81%) | 0.0% | 0.0% (-) | 0 | aging | ⚠️ declining | $2.92M |
| [pickle](./pickle/brief.md) | $4.65M | ethereum | 235 | 148/235 (63%) | 2.7% | 0.0% (-) | 2 | stale | ⚠️ declining | $2.88M |
| [ethereal-season-zero](./ethereal-season-zero/brief.md) | $2.85M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $2.82M |
| [izumi-finance](./izumi-finance/brief.md) | $3.83M | 13 | 181 | 21/181 (12%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.76M |
| [iaero-protocol](./iaero-protocol/brief.md) | $1.98M | base | 45 | 40/45 (89%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.72M |
| [singularity-finance](./singularity-finance/brief.md) | $5.99M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $2.69M |
| [plasma-saving-vaults](./plasma-saving-vaults/brief.md) | $45.45M | plasma | 6 | 5/6 (83%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.65M |
| [sperax](./sperax/brief.md) | $2.06M | arbitrum, bsc, ethereum | 142 | 34/142 (24%) | 47.1% | 8.8% (SlowMist) | 7 | stale | ⚠️ declining | $2.63M |
| [mezo-bridge](./mezo-bridge/brief.md) | $21.29M | ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.63M |
| [loopring](./loopring/brief.md) | $10.46M | base, ethereum | 145 | 75/145 (52%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.43M |
| [iotube](./iotube/brief.md) | $3.29M | bsc, ethereum, polygon | 39 | 15/39 (38%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.23M |
| [b-lucky](./b-lucky/brief.md) | $1.02M | bsc | 16 | 1/16 (6%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $2.20M |
| [revert](./revert/brief.md) | $11.63M | 8 | 84 | 18/84 (21%) | 11.1% | 0.0% (-) | 2 | stale | ✅ active | $2.09M |
| [credit-coop](./credit-coop/brief.md) | $4.56M | base, ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.08M |
| [stusdt](./stusdt/brief.md) | $64.95M | ethereum | 10 | 4/10 (40%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.87M |
| [vnx](./vnx/brief.md) | $6.00M | 7 | 10 | 5/10 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.85M |
| [mm-finance](./mm-finance/brief.md) | $1.46M | arbitrum, cronos, polygon | 192 | 21/192 (11%) | 4.5% | 0.0% (-) | 1 | stale | ⚠️ declining | $1.85M |
| [xwin-finance](./xwin-finance/brief.md) | $6.11M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $1.84M |
| [meeds-finance](./meeds-finance/brief.md) | $1.69M | ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.84M |
| [treehouse-protocol](./treehouse-protocol/brief.md) | $87.67M | ethereum | 77 | 68/77 (88%) | 42.6% | 16.2% (Trail of Bits) | 16 | fresh | ⚠️ declining | $1.80M |
| [dtrinity](./dtrinity/brief.md) | $2.37M | ethereum, fraxtal, sonic | 209 | 88/209 (42%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.76M |
| [eventum-bridge](./eventum-bridge/brief.md) | $2.82M | arbitrum, ethereum | 28 | 26/28 (93%) | 3.8% | 0.0% (-) | 1 | fresh | ✅ active | $1.64M |
| [clever](./clever/brief.md) | $5.61M | ethereum | 76 | 66/76 (87%) | 10.6% | 0.0% (-) | 3 | stale | ✅ active | $1.59M |
| [re7-labs](./re7-labs/brief.md) | $82.89M | 4 | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.58M |
| [elephant-money](./elephant-money/brief.md) | $79.15M | bsc | 346 | 153/346 (44%) | 5.9% | 0.0% (-) | 1 | stale | ⚠️ declining | $1.57M |
| [templar-dao](./templar-dao/brief.md) | $2.23M | bsc | 40 | 25/40 (63%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.55M |
| [zircuit-finance](./zircuit-finance/brief.md) | $1.51M | base, ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.51M |
| [badger-dao](./badger-dao/brief.md) | $9.79M | 4 | 27 | 24/27 (89%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | $1.51M |
| [seer](./seer/brief.md) | $1.54M | ethereum, gnosis | 179 | 34/179 (19%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.48M |
| [predict-fun](./predict-fun/brief.md) | $14.59M | blast, bsc | 40 | 25/40 (63%) | 8.0% | 8.0% (Cyfrin) | 2 | fresh | ❓ unknown | $1.47M |
| [sashimiswap](./sashimiswap/brief.md) | $4.99M | ethereum, heco | 61 | 31/61 (51%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.44M |
| [taiko-bridge](./taiko-bridge/brief.md) | $16.77M | ethereum | 52 | 44/52 (85%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.42M |
| [shardingdao](./shardingdao/brief.md) | $7.78M | ethereum | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.38M |
| [bunny](./bunny/brief.md) | $3.32M | bsc, polygon | 101 | 73/101 (72%) | 9.6% | 0.0% (-) | 1 | stale | ⚠️ declining | $1.36M |
| [set-protocol](./set-protocol/brief.md) | $11.12M | ethereum | 109 | 13/109 (12%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $1.36M |
| [shapeshift](./shapeshift/brief.md) | $1.60M | 4 | 40 | 28/40 (70%) | 10.7% | 0.0% (-) | 2 | stale | ✅ active | $1.34M |
| [rezerve](./rezerve/brief.md) | $2.63M | ethereum, sonic | 104 | 80/104 (77%) | 1.3% | 0.0% (-) | 1 | aging | ✅ active | $1.34M |
| [suzaku](./suzaku/brief.md) | $1.23M | avalanche | 49 | 21/49 (43%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.18M |
| [mcdex](./mcdex/brief.md) | $1.19M | 6 | 1465 | 150/1465 (10%) | 8.3% | 0.0% (-) | 1 | stale | 💀 dead | $1.13M |
| [ocean-point](./ocean-point/brief.md) | $1.14M | ethereum | 40 | 27/40 (68%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.08M |
| [opyn](./opyn/brief.md) | $2.02M | avalanche, ethereum | 103 | 33/103 (32%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $1.02M |
| [defil](./defil/brief.md) | $1.80M | ethereum | 51 | 37/51 (73%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $1.01M |
| [twyne](./twyne/brief.md) | $2.48M | ethereum | 59 | 52/59 (88%) | 3.8% | 0.0% (-) | 1 | fresh | ✅ active | $985.72K |
| [peapods-finance](./peapods-finance/brief.md) | $6.98M | 6 | 130 | 46/130 (35%) | 53.1% | 0.0% (-) | 4 | aging | ⚠️ declining | $949.46K |
| [bend](./bend/brief.md) | $12.59M | berachain, ethereum | 104 | 58/104 (56%) | 20.7% | 20.7% (Spearbit) | 2 | fresh | ✅ active | $896.83K |
| [mux-protocol](./mux-protocol/brief.md) | $9.67M | 5 | 1198 | 108/1198 (9%) | 21.7% | 0.0% (-) | 2 | aging | ✅ active | $861.97K |
| [paal-ai](./paal-ai/brief.md) | $1.61M | ethereum | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $830.13K |
| [notional](./notional/brief.md) | $3.59M | arbitrum, ethereum | 79 | 73/79 (92%) | 19.2% | 19.2% (Sherlock) | 4 | fresh | ⚠️ declining | $755.74K |
| [glif](./glif/brief.md) | $33.72M | base | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $726.98K |
| [anthias-labs](./anthias-labs/brief.md) | $21.65M | base | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $705.35K |
| [silo-finance](./silo-finance/brief.md) | $92.12M | 6 | 529 | 127/529 (24%) | 15.7% | 4.5% (Spearbit) | 8 | fresh | ❓ unknown | $641.32K |
| [orbit-bridge](./orbit-bridge/brief.md) | $17.46M | 5 | 22 | 5/22 (23%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $640.23K |
| [bakeryswap](./bakeryswap/brief.md) | $3.41M | bsc | 98 | 52/98 (53%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $612.86K |
| [biswap](./biswap/brief.md) | $5.64M | 4 | 84 | 13/84 (15%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $609.28K |
| [radiant](./radiant/brief.md) | $3.85M | 4 | 390 | 147/390 (38%) | 31.6% | 26.3% (OpenZeppelin) | 6 | fresh | 💀 dead | $515.03K |
| [arbitrum-nova-bridge](./arbitrum-nova-bridge/brief.md) | $18.91M | ethereum | 54 | 47/54 (87%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $447.17K |
| [apex-protocol](./apex-protocol/brief.md) | $36.24M | 7 | 206 | 87/206 (42%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $436.41K |
| [camelot](./camelot/brief.md) | $26.05M | arbitrum | 118 | 51/118 (43%) | 17.6% | 0.0% (-) | 1 | stale | ✅ active | $391.94K |
| [equalizer](./equalizer/brief.md) | $1.08M | base, fantom, sonic | 292 | 50/292 (17%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $374.84K |
| [vesper](./vesper/brief.md) | $44.44M | ethereum | 44 | 39/44 (89%) | 51.3% | 0.0% (-) | 25 | stale | ✅ active | $351.72K |
| [katana-pre-launch](./katana-pre-launch/brief.md) | $18.42M | base, ethereum | 165 | 96/165 (58%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $307.62K |
| [bmx](./bmx/brief.md) | $2.67M | base, mode | 184 | 133/184 (72%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $305.69K |
| [yieldnest](./yieldnest/brief.md) | $22.86M | 7 | 33 | 28/33 (85%) | 44.8% | 31.0% (ChainSecurity) | 12 | aging | ✅ active | $295.09K |
| [strata](./strata/brief.md) | $97.42M | ethereum | 39 | 38/39 (97%) | 31.6% | 28.9% (Cyfrin) | 3 | fresh | ✅ active | $289.60K |
| [tokenstore](./tokenstore/brief.md) | $1.33M | ethereum | 44 | 2/44 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $265.68K |
| [reserve-protocol](./reserve-protocol/brief.md) | $82.52M | 4 | 329 | 110/329 (33%) | 53.9% | 19.1% (Code4rena, Spearbit) | 24 | fresh | ⚠️ declining | $255.21K |
| [acryptos](./acryptos/brief.md) | $10.55M | bsc | 311 | 88/311 (28%) | 25.0% | 0.0% (-) | 4 | stale | ✅ active | $253.01K |
| [block-analitica](./block-analitica/brief.md) | $49.60M | 4 | 18 | 16/18 (89%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $252.83K |
| [babyswap](./babyswap/brief.md) | $1.34M | bsc | 113 | 65/113 (58%) | 1.5% | 0.0% (-) | 1 | stale | ✅ active | $241.08K |
| [alphax](./alphax/brief.md) | $1.49M | arbitrum, ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $218.20K |
| [universe-xyz](./universe-xyz/brief.md) | $1.63M | ethereum | 34 | 23/34 (68%) | 21.7% | 0.0% (-) | 2 | stale | 💀 dead | $216.12K |
| [ailayer-farm](./ailayer-farm/brief.md) | $76.40M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $211.86K |
| [bob-bridge](./bob-bridge/brief.md) | $3.57M | ethereum | 41 | 39/41 (95%) | 2.6% | 0.0% (-) | 1 | fresh | ✅ active | $202.90K |
| [rook](./rook/brief.md) | $1.45M | ethereum | 73 | 65/73 (89%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $190.12K |
| [tarot](./tarot/brief.md) | $1.14M | 12 | 139 | 41/139 (29%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | $154.44K |
| [ratex](./ratex/brief.md) | $5.22M | bsc | 166 | 89/166 (54%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $98.79K |
| [kromatika](./kromatika/brief.md) | $1.09M | 4 | 30 | 16/30 (53%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $83.80K |
| [b.protocol](./b.protocol/brief.md) | $1.78M | 4 | 162 | 97/162 (60%) | 5.1% | 0.0% (-) | 4 | stale | ⚠️ declining | $79.00K |
| [moola-market](./moola-market/brief.md) | $1.21M | celo | 53 | 37/53 (70%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $73.92K |
| [foxify](./foxify/brief.md) | $3.57M | arbitrum, sonic | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $72.65K |
| [csigma-finance](./csigma-finance/brief.md) | $12.66M | arbitrum, base, ethereum | 50 | 38/50 (76%) | 41.0% | 0.0% (-) | 3 | aging | ✅ active | $65.57K |
| [hegic](./hegic/brief.md) | $10.02M | ethereum | 63 | 26/63 (41%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $54.07K |
| [hemi](./hemi/brief.md) | $1.26M | bsc, ethereum, optimism | 47 | 37/47 (79%) | 2.7% | 0.0% (-) | 2 | fresh | ❓ unknown | $49.57K |
| [privacy-cash](./privacy-cash/brief.md) | $2.48M | base | 6 | 3/6 (50%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $48.09K |
| [wombat-exchange](./wombat-exchange/brief.md) | $1.65M | 8 | 96 | 50/96 (52%) | 32.7% | 7.3% (SlowMist) | 9 | aging | ⚠️ declining | $47.82K |
| [sofa.org](./sofa.org/brief.md) | $2.46M | ethereum | 38 | 36/38 (95%) | 33.3% | 30.6% (Code4rena) | 6 | aging | ⚠️ declining | $46.78K |
| [hemibtc](./hemibtc/brief.md) | $14.85M | bsc, ethereum, optimism | 46 | 36/46 (78%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $46.20K |
| [ultron-staking-hub-nft](./ultron-staking-hub-nft/brief.md) | $7.09M | 5 | 150 | 6/150 (4%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $43.46K |
| [satori-finance](./satori-finance/brief.md) | $1.28M | 6 | 40 | 6/40 (15%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $40.94K |
| [dinari](./dinari/brief.md) | $10.83M | 4 | 71 | 31/71 (44%) | 37.5% | 15.6% (Sherlock) | 3 | aging | ⚠️ declining | $36.60K |
| [stake.link](./stake.link/brief.md) | $79.77M | 4 | 71 | 46/71 (65%) | 60.9% | 45.7% (Cyfrin) | 18 | fresh | ✅ active | $35.91K |
| [seamless-protocol](./seamless-protocol/brief.md) | $46.49M | base, ethereum | 99 | 88/99 (89%) | 9.1% | 9.1% (Sherlock, Spearbit) | 5 | fresh | 💀 dead | $34.75K |
| [gamma](./gamma/brief.md) | $3.71M | 23 | 467 | 90/467 (19%) | 27.6% | 1.9% (ConsenSys Diligence) | 8 | fresh | ✅ active | $24.28K |
| [kuma-protocol](./kuma-protocol/brief.md) | $3.09M | 4 | 53 | 32/53 (60%) | 28.1% | 28.1% (Code4rena) | 1 | stale | ✅ active | $23.14K |
| [bscswap](./bscswap/brief.md) | $5.01M | bsc | 30 | 22/30 (73%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $20.27K |
| [mdex](./mdex/brief.md) | $1.37M | bsc, heco | 13 | 7/13 (54%) | 85.7% | 85.7% (SlowMist) | 3 | stale | ⚠️ declining | $20.17K |
| [chateau](./chateau/brief.md) | $1.04M | hyperliquid, plasma | 5 | 3/5 (60%) | 33.3% | 0.0% (-) | 1 | fresh | ✅ active | $19.06K |
| [stout](./stout/brief.md) | $2.07M | sonic | 132 | 46/132 (35%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $12.61K |
| [yo-protocol](./yo-protocol/brief.md) | $42.55M | arbitrum, base, ethereum | 20 | 16/20 (80%) | 56.3% | 6.3% (Spearbit) | 5 | fresh | ⚠️ declining | $12.57K |
| [accumulated-finance](./accumulated-finance/brief.md) | $1.56M | 5 | 43 | 35/43 (81%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $12.19K |
| [pepeteam](./pepeteam/brief.md) | $1.32M | ethereum, polygon | 21 | 20/21 (95%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $11.09K |
| [anzen-finance](./anzen-finance/brief.md) | $7.53M | 5 | 47 | 39/47 (83%) | 35.9% | 0.0% (-) | 4 | aging | ⚠️ declining | $10.86K |
| [clearpool](./clearpool/brief.md) | $42.18M | 7 | 61 | 21/61 (34%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $10.71K |
| [ellipsis-finance](./ellipsis-finance/brief.md) | $1.20M | bsc | 22 | 17/22 (77%) | 29.4% | 0.0% (-) | 2 | stale | 💀 dead | $8.97K |
| [lendle](./lendle/brief.md) | $1.13M | mantle | 64 | 44/64 (69%) | 43.2% | 0.0% (-) | 1 | fresh | ⚠️ declining | $5.56K |
| [hakka-finance](./hakka-finance/brief.md) | $4.64M | ethereum | 37 | 34/37 (92%) | 26.5% | 0.0% (-) | 6 | stale | ✅ active | $5.43K |
| [team-finance](./team-finance/brief.md) | $53.00M | 11 | 66 | 3/66 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $4.82K |
| [wan-bridge](./wan-bridge/brief.md) | $26.05M | 14 | 129 | 44/129 (34%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $4.60K |
| [azuro](./azuro/brief.md) | $1.07M | 6 | 304 | 55/304 (18%) | 6.6% | 0.0% (-) | 3 | aging | ✅ active | $3.14K |
| [arrakis-finance](./arrakis-finance/brief.md) | $77.24M | 9 | 124 | 101/124 (81%) | 19.4% | 3.9% (Sherlock) | 6 | stale | ✅ active | $3.07K |
| [injective-bridge](./injective-bridge/brief.md) | $15.11M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.62K |
| [deltaprime](./deltaprime/brief.md) | $4.25M | arbitrum, avalanche | 482 | 173/482 (36%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.57K |
| [deri](./deri/brief.md) | $7.31M | 12 | 868 | 94/868 (11%) | 13.9% | 0.0% (-) | 6 | aging | ✅ active | $2.40K |
| [tranchess](./tranchess/brief.md) | $5.74M | bsc, ethereum, scroll | 135 | 101/135 (75%) | 23.8% | 0.0% (-) | 8 | stale | 💀 dead | $1.94K |
| [credbull](./credbull/brief.md) | $10.94M | arbitrum, polygon | 83 | 82/83 (99%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.89K |
| [superform](./superform/brief.md) | $33.18M | 6 | 158 | 117/158 (74%) | 19.7% | 0.0% (-) | 2 | fresh | ✅ active | $1.88K |
| [lendflare](./lendflare/brief.md) | $1.14M | ethereum | 74 | 38/74 (51%) | 5.3% | 0.0% (-) | 1 | stale | ⚠️ declining | $1.05K |
| [shadow-exchange](./shadow-exchange/brief.md) | $5.27M | sonic | 84 | 51/84 (61%) | 21.6% | 21.6% (Spearbit) | 1 | fresh | ⚠️ declining | $999.84 |
| [spookyswap](./spookyswap/brief.md) | $1.35M | fantom, sonic | 136 | 35/136 (26%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $841.67 |
| [yamato-protocol](./yamato-protocol/brief.md) | $1.44M | ethereum | 63 | 46/63 (73%) | 47.8% | 0.0% (-) | 3 | aging | ✅ active | $818.32 |
| [proxy](./proxy/brief.md) | $19.96M | ethereum, polygon | 278 | 12/278 (4%) | 8.3% | 0.0% (-) | 1 | stale | ✅ active | $735.64 |
| [morpheusai](./morpheusai/brief.md) | $29.56M | arbitrum, ethereum | 47 | 47/47 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $621.83 |
| [nerve](./nerve/brief.md) | $1.50M | bsc, ethereum | 66 | 20/66 (30%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $508.66 |
| [superearn](./superearn/brief.md) | $40.34M | ethereum, klaytn | 94 | 25/94 (27%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $295.42 |
| [thena](./thena/brief.md) | $4.50M | bsc | 131 | 108/131 (82%) | 10.2% | 2.8% (OpenZeppelin) | 2 | fresh | ⚠️ declining | $208.19 |
| [latch](./latch/brief.md) | $1.61M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $189.85 |
| [elyfi](./elyfi/brief.md) | $2.39M | ethereum, klaytn | 30 | 17/30 (57%) | 5.9% | 0.0% (-) | 1 | stale | 💀 dead | $175.94 |
| [multichain](./multichain/brief.md) | $44.47M | ethereum | 17 | 14/17 (82%) | 42.9% | 0.0% (-) | 3 | stale | 💀 dead | $128.81 |
| [gondi](./gondi/brief.md) | $1.37M | ethereum, hyperliquid | 30 | 15/30 (50%) | 20.0% | 0.0% (-) | 2 | fresh | ✅ active | $35.59 |
| [symmio](./symmio/brief.md) | $3.51M | 8 | 168 | 60/168 (36%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $24.48 |
| [toupee.tech](./toupee.tech/brief.md) | $6.29M | base | 29 | 25/29 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $24.29 |
| [noon](./noon/brief.md) | $30.42M | ethereum, hyperliquid, zksync-era | 40 | 30/40 (75%) | 3.3% | 0.0% (-) | 1 | aging | ✅ active | $17.99 |
| [goose](./goose/brief.md) | $12.80M | ethereum | 7 | 3/7 (43%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $7.87 |
| [angles](./angles/brief.md) | $1.01M | sonic | 40 | 25/40 (63%) | 4.0% | 4.0% (Spearbit) | 1 | aging | ✅ active | $7.53 |
| [royco-protocol](./royco-protocol/brief.md) | $35.41M | 6 | 14 | 9/14 (64%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $7.16 |
| [lynex](./lynex/brief.md) | $1.07M | linea | 30 | 29/30 (97%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.89 |
| [acre](./acre/brief.md) | $4.27M | ethereum | 220 | 207/220 (94%) | 0.5% | 0.0% (-) | 2 | aging | ✅ active | $3.02 |
| [xfai](./xfai/brief.md) | $1.03M | linea | 48 | 17/48 (35%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.00 |
| [plasma-one](./plasma-one/brief.md) | $2.44M | plasma | 7 | 5/7 (71%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $0.62 |
| [swamp-finance](./swamp-finance/brief.md) | $1.20M | bsc | 11 | 7/11 (64%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $0.09 |
| [virtuals-protocol](./virtuals-protocol/brief.md) | $37.95M | base | 65 | 57/65 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $0.04 |
| [kinza-finance](./kinza-finance/brief.md) | $7.78M | 4 | 154 | 50/154 (32%) | 2.0% | 0.0% (-) | 1 | stale | ⚠️ declining | $0.01 |
| [tokenworks](./tokenworks/brief.md) | $2.14M | ethereum | 60 | 33/60 (55%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $0.00 |
| [charm-finance](./charm-finance/brief.md) | $2.34M | 6 | 10 | 6/10 (60%) | 50.0% | 50.0% (Code4rena, Spearbit) | 4 | aging | ⚠️ declining | $0.00 |
| [snuggle](./snuggle/brief.md) | $1.30M | arbitrum, base | 88 | 51/88 (58%) | 23.5% | 0.0% (-) | 1 | fresh | ✅ active | $0.00 |
| [rip.xyz](./rip.xyz/brief.md) | $1.04M | hyperliquid | 6 | 2/6 (33%) | 50.0% | 0.0% (-) | 1 | fresh | ✅ active | $0.00 |
| [mansory](./mansory/brief.md) | $6.29M | bsc | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $0.00 |
| [1sec](./1sec/brief.md) | $1.48M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [3f-mutual](./3f-mutual/brief.md) | $3.88M | ethereum | 21 | 18/21 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [abc-pool](./abc-pool/brief.md) | $5.96M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [abracadabra](./abracadabra/brief.md) | $8.07M | 12 | 2568 | 0/2568 (0%) | 0.0% | 0.0% (-) | 0 | aging | 💀 dead | - |
| [aegis](./aegis/brief.md) | $35.80M | ethereum | 6 | 5/6 (83%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [aegis-markets](./aegis-markets/brief.md) | $2.33M | base, unichain | 15 | 12/15 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [aftermath-finance](./aftermath-finance/brief.md) | $4.98M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aitech](./aitech/brief.md) | $3.96M | bsc | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [alphaping](./alphaping/brief.md) | $67.87M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [altitude.fi](./altitude.fi/brief.md) | $13.71M | ethereum | 124 | 18/124 (15%) | 72.2% | 0.0% (-) | 6 | aging | ⚠️ declining | - |
| [ambient](./ambient/brief.md) | $2.70M | 5 | 30 | 17/30 (57%) | 64.7% | 0.0% (-) | 2 | stale | ⚠️ declining | - |
| [amnis-finance](./amnis-finance/brief.md) | $11.92M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [angstrom](./angstrom/brief.md) | $11.26M | base, ethereum | 13 | 13/13 (100%) | 7.7% | 7.7% (Spearbit) | 1 | fresh | ⚠️ declining | - |
| [ankr](./ankr/brief.md) | $21.69M | avalanche, ethereum, fantom | 6 | 2/6 (33%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [antarctic](./antarctic/brief.md) | $9.58M | arbitrum | 11 | 8/11 (73%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [anvil](./anvil/brief.md) | $17.52M | ethereum | 3 | 3/3 (100%) | 100.0% | 100.0% (OpenZeppelin, Trail of Bits) | 3 | fresh | ⚠️ declining | - |
| [ao-bridge](./ao-bridge/brief.md) | $54.04M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [arcade.xyz](./arcade.xyz/brief.md) | $5.12M | ethereum | 60 | 43/60 (72%) | 67.4% | 30.2% (Trail of Bits) | 10 | stale | ⚠️ declining | - |
| [arcadia-finance](./arcadia-finance/brief.md) | $7.21M | base, optimism, unichain | 55 | 52/55 (95%) | 63.5% | 53.8% (Sherlock) | 12 | fresh | ✅ active | - |
| [aria-protocol](./aria-protocol/brief.md) | $181.05K | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [asseto-aoabt](./asseto-aoabt/brief.md) | $22.28M | avalanche | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [asseto-cash+](./asseto-cash+/brief.md) | $1.40M | ethereum | 2 | 1/2 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [augur](./augur/brief.md) | $1.67M | ethereum | 39 | 39/39 (100%) | 64.1% | 15.4% (ChainSecurity) | 4 | stale | ✅ active | - |
| [aurora-plus](./aurora-plus/brief.md) | $2.27M | aurora | 31 | 3/31 (10%) | 33.3% | 0.0% (-) | 2 | stale | ✅ active | - |
| [autofarm](./autofarm/brief.md) | $6.05M | 13 | 10 | 2/10 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [avalaunch](./avalaunch/brief.md) | $6.84M | avalanche | 38 | 13/38 (34%) | 84.6% | 0.0% (-) | 13 | stale | ✅ active | - |
| [baseline-protocol](./baseline-protocol/brief.md) | $69.26M | base, blast, ethereum | 112 | 4/112 (4%) | 25.0% | 0.0% (-) | 1 | aging | ✅ active | - |
| [benddao](./benddao/brief.md) | $7.15M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bifi](./bifi/brief.md) | $7.43M | avalanche, ethereum, klaytn | 170 | 45/170 (26%) | 30.4% | 0.0% (-) | 3 | stale | ✅ active | - |
| [bigone](./bigone/brief.md) | $35.10M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bima-cdp](./bima-cdp/brief.md) | $5.32M | bsc, ethereum, sonic | 37 | 29/37 (78%) | 51.6% | 51.6% (Cyfrin, Spearbit) | 3 | aging | ✅ active | - |
| [binaryx-platform](./binaryx-platform/brief.md) | $8.64M | polygon | 133 | 25/133 (19%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [bitlo](./bitlo/brief.md) | $16.66M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitomato](./bitomato/brief.md) | $2.60M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitu-protocol](./bitu-protocol/brief.md) | $22.27M | bsc | 4 | 4/4 (100%) | 75.0% | 75.0% (SlowMist) | 2 | stale | ✅ active | - |
| [bitvenus](./bitvenus/brief.md) | $20.90M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [blackhole](./blackhole/brief.md) | $29.69M | avalanche | 86 | 45/86 (52%) | 31.1% | 31.1% (Code4rena) | 3 | fresh | ⚠️ declining | - |
| [blueshift](./blueshift/brief.md) | $4.32M | kava, polygon | 23 | 2/23 (9%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [boba-bridge](./boba-bridge/brief.md) | $3.04M | ethereum | 53 | 41/53 (77%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [bonsaidao-ecosystem](./bonsaidao-ecosystem/brief.md) | $1.08M | arbitrum, base, berachain | 190 | 86/190 (45%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [bonzo-finance](./bonzo-finance/brief.md) | $22.97M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [boros](./boros/brief.md) | $10.31M | arbitrum | 2 | 2/2 (100%) | 100.0% | 100.0% (ChainSecurity) | 3 | fresh | ✅ active | - |
| [botto](./botto/brief.md) | $4.11M | base, ethereum | 18 | 13/18 (72%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [bounce.tech](./bounce.tech/brief.md) | $1.12M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [bouncebit-prime](./bouncebit-prime/brief.md) | $11.94M | ethereum | 9 | 2/9 (22%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [brickken](./brickken/brief.md) | $41.68M | 4 | 29 | 4/29 (14%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [bridgers](./bridgers/brief.md) | $1.60M | 8 | 6 | 1/6 (17%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [brotocol](./brotocol/brief.md) | $12.24M | 8 | 214 | 0/214 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [btcfi](./btcfi/brief.md) | $11.76M | base | 15 | 1/15 (7%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [btse](./btse/brief.md) | $1.53M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bucket-protocol](./bucket-protocol/brief.md) | $65.13M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bulbaswap](./bulbaswap/brief.md) | $9.04M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [butter-network](./butter-network/brief.md) | $1.23M | 11 | 6 | 2/6 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [bydfi](./bydfi/brief.md) | $92.69M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [byte-exchange](./byte-exchange/brief.md) | $41.68M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [canopy](./canopy/brief.md) | $1.34M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [canto-lending](./canto-lending/brief.md) | $3.03M | canto, ethereum | 84 | 2/84 (2%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [capx-ai](./capx-ai/brief.md) | $2.14M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [carbon-defi](./carbon-defi/brief.md) | $2.92M | 4 | 158 | 52/158 (33%) | 30.9% | 27.3% (ChainSecurity) | 4 | aging | ✅ active | - |
| [cbridge](./cbridge/brief.md) | $18.23M | 18 | 2007 | 0/2007 (0%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [cex.io](./cex.io/brief.md) | $7.65M | ethereum, polygon | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [cgo-finance](./cgo-finance/brief.md) | $1.23M | cronos | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [chain-fusion](./chain-fusion/brief.md) | $18.60M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [chainflip](./chainflip/brief.md) | $35.88M | arbitrum, ethereum | 12 | 11/12 (92%) | 27.3% | 27.3% (Trail of Bits) | 1 | stale | ✅ active | - |
| [chainge-finance](./chainge-finance/brief.md) | $12.14M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [chaingpt](./chaingpt/brief.md) | $4.61M | 7 | 87 | 3/87 (3%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [citrea-bridge](./citrea-bridge/brief.md) | $6.64M | ethereum | 3 | 2/3 (67%) | 50.0% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [coin8](./coin8/brief.md) | $53.74M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [coinsquare](./coinsquare/brief.md) | $12.08M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [coinstore](./coinstore/brief.md) | $62.21M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [coinw](./coinw/brief.md) | $1.11M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [colend-protocol](./colend-protocol/brief.md) | $4.19M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [core-bridge](./core-bridge/brief.md) | $4.02M | avalanche, base | 6 | 2/6 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [coti-treasury](./coti-treasury/brief.md) | $9.89M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cozy-finance](./cozy-finance/brief.md) | $2.30M | optimism | 48 | 5/48 (10%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [crypto.com-liquid-staking](./crypto.com-liquid-staking/brief.md) | $25.39M | cronos | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [decibel](./decibel/brief.md) | $41.88M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [defi-kingdoms](./defi-kingdoms/brief.md) | $7.71M | harmony, klaytn | 5 | 0/5 (0%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [defichain-dex](./defichain-dex/brief.md) | $1.17M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [defituna](./defituna/brief.md) | $4.63M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [depth](./depth/brief.md) | $1.17M | heco | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [derivadex](./derivadex/brief.md) | $1.62M | ethereum | 8 | 6/8 (75%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [desyn-protocol](./desyn-protocol/brief.md) | $10.73M | ethereum, mode | 11 | 2/11 (18%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [dexalot](./dexalot/brief.md) | $9.50M | avalanche | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 2 | stale | ✅ active | - |
| [dflow](./dflow/brief.md) | $1.49M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dnax](./dnax/brief.md) | $3.54M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [domination-finance](./domination-finance/brief.md) | $1.27M | 4 | 30 | 20/30 (67%) | 75.0% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [dooar](./dooar/brief.md) | $5.11M | bsc | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [dxsale](./dxsale/brief.md) | $25.97M | 11 | 352 | 9/352 (3%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [dyorswap](./dyorswap/brief.md) | $2.24M | 7 | 93 | 5/93 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [easedefi.org](./easedefi.org/brief.md) | $4.37M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [egas-swap](./egas-swap/brief.md) | $18.60M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [elfi-protocol](./elfi-protocol/brief.md) | $3.44M | arbitrum, base | 2406 | 88/2406 (4%) | 29.5% | 29.5% (Sherlock) | 1 | aging | ⚠️ declining | - |
| [endur](./endur/brief.md) | $9.42M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [enosys](./enosys/brief.md) | $26.90M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [equilibre](./equilibre/brief.md) | $6.90M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [ethereal-dex](./ethereal-dex/brief.md) | $30.72M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [etherex](./etherex/brief.md) | $3.58M | linea | 58 | 45/58 (78%) | 36.2% | 36.2% (Spearbit) | 1 | fresh | ⚠️ declining | - |
| [etherflip](./etherflip/brief.md) | $1.58M | ethereum | 7 | 6/7 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [etherfuse](./etherfuse/brief.md) | $5.41M | base, polygon | 25 | 4/25 (16%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [ethos](./ethos/brief.md) | $1.89M | base, ethereum | 27 | 20/27 (74%) | 30.0% | 30.0% (Sherlock) | 1 | aging | ✅ active | - |
| [everything](./everything/brief.md) | $945.26K | arbitrum | 10 | 4/10 (40%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [exactly](./exactly/brief.md) | $3.99M | base, ethereum, optimism | 65 | 44/65 (68%) | 63.6% | 9.1% (OpenZeppelin, Sherlock) | 31 | fresh | ✅ active | - |
| [exmo](./exmo/brief.md) | $2.84M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [extra-finance](./extra-finance/brief.md) | $32.30M | base, berachain, optimism | 268 | 17/268 (6%) | 5.3% | 5.3% (Sherlock) | 1 | aging | ✅ active | - |
| [feather](./feather/brief.md) | $16.54M | klaytn, sei | 2 | 1/2 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [ferro](./ferro/brief.md) | $5.04M | cronos | 21 | 0/21 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [fiamma](./fiamma/brief.md) | $1.15M | 4 | 33 | 12/33 (36%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [firelight](./firelight/brief.md) | $80.32M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [flamingo](./flamingo/brief.md) | $2.15M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [flaunch](./flaunch/brief.md) | $2.10M | base | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [flex](./flex/brief.md) | $611.66K | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [flexa](./flexa/brief.md) | $1.37M | ethereum | 2 | 2/2 (100%) | 100.0% | 100.0% (Trail of Bits) | 2 | stale | ⚠️ declining | - |
| [flipster](./flipster/brief.md) | $35.95M | klaytn | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [fomo3d](./fomo3d/brief.md) | $2.52M | ethereum | 23 | 10/23 (43%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [forgeyields](./forgeyields/brief.md) | $1.83M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [four.meme](./four.meme/brief.md) | $4.90M | bsc | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [frankencoin](./frankencoin/brief.md) | $70.00M | ethereum | 5 | 5/5 (100%) | 80.0% | 80.0% (ChainSecurity, Code4rena) | 5 | aging | ✅ active | - |
| [fulcrom](./fulcrom/brief.md) | $13.32M | cronos, zksync-era | 79 | 0/79 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [galaxy-curation](./galaxy-curation/brief.md) | $67.50M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [gate-us](./gate-us/brief.md) | $56.45M | 7 | 9 | 0/9 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [gearbox](./gearbox/brief.md) | $36.88M | 4 | 195 | 100/195 (51%) | 53.0% | 50.0% (ChainSecurity, ConsenSys Diligence, MixBytes) | 31 | fresh | ⚠️ declining | - |
| [generic.money](./generic.money/brief.md) | $3.74M | ethereum | 12 | 11/12 (92%) | 81.8% | 81.8% (Spearbit) | 1 | fresh | ⚠️ declining | - |
| [gimo](./gimo/brief.md) | $8.66M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [goldfinger](./goldfinger/brief.md) | $0.00 | bsc | 5 | 4/5 (80%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [goldstation](./goldstation/brief.md) | $2.15M | avalanche, klaytn | 5 | 0/5 (0%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [goplus-security](./goplus-security/brief.md) | $32.76M | 4 | 23 | 11/23 (48%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [growihf](./growihf/brief.md) | $8.39M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [grvt](./grvt/brief.md) | $55.39M | ethereum | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [guru-network-dao](./guru-network-dao/brief.md) | $2.31M | 8 | 54 | 21/54 (39%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [gyroscope-protocol](./gyroscope-protocol/brief.md) | $500.18K | 10 | 233 | 148/233 (64%) | 21.3% | 1.3% (Trail of Bits) | 6 | aging | ⚠️ declining | - |
| [h2-finance](./h2-finance/brief.md) | $3.57M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hakutora](./hakutora/brief.md) | $23.80M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hanji-protocol](./hanji-protocol/brief.md) | $2.74M | base | 289 | 6/289 (2%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [harmonix-finance](./harmonix-finance/brief.md) | $4.87M | 4 | 127 | 9/127 (7%) | 10.0% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [harvest-finance](./harvest-finance/brief.md) | $12.93M | 5 | 445 | 265/445 (60%) | 46.4% | 0.0% (-) | 5 | aging | ⚠️ declining | - |
| [hashdao-finance](./hashdao-finance/brief.md) | $1.64M | arbitrum, optimism | 50 | 16/50 (32%) | 55.6% | 0.0% (-) | 3 | stale | 💀 dead | - |
| [hashkey-global](./hashkey-global/brief.md) | $15.09M | scroll | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hashport](./hashport/brief.md) | $1.54M | 10 | 21 | 13/21 (62%) | 100.0% | 0.0% (-) | 3 | stale | 💀 dead | - |
| [helix](./helix/brief.md) | $1.50M | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [helix-finance](./helix-finance/brief.md) | $11.00M | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hera-finance](./hera-finance/brief.md) | $6.51M | metis | 28 | 7/28 (25%) | 42.9% | 0.0% (-) | 3 | stale | ✅ active | - |
| [hiyield](./hiyield/brief.md) | $2.73M | avalanche, canto, ethereum | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hopr](./hopr/brief.md) | $1.16M | gnosis | 81 | 23/81 (28%) | 4.3% | 4.3% (ChainSecurity) | 1 | stale | ✅ active | - |
| [hotcoin](./hotcoin/brief.md) | $5.39M | scroll | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [houses-of-rome](./houses-of-rome/brief.md) | $0.00 | moonriver | 51 | 6/51 (12%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [hskhodlium](./hskhodlium/brief.md) | $1.51M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hybra](./hybra/brief.md) | $1.82M | hyperliquid | 81 | 15/81 (19%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hyperdrive-hl](./hyperdrive-hl/brief.md) | $2.78M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [hyperion](./hyperion/brief.md) | $21.07M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [hyperswap](./hyperswap/brief.md) | $17.37M | hyperliquid | 5 | 0/5 (0%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [immutable-zkevm](./immutable-zkevm/brief.md) | $28.54M | ethereum | 9 | 9/9 (100%) | 22.2% | 0.0% (-) | 1 | aging | ✅ active | - |
| [infrared-finance](./infrared-finance/brief.md) | $50.68M | berachain, bsc | 27 | 15/27 (56%) | 100.0% | 66.7% (Spearbit) | 14 | fresh | ✅ active | - |
| [initiadex](./initiadex/brief.md) | $3.03M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ink-bridge](./ink-bridge/brief.md) | $59.29M | ethereum, ink, optimism | 68 | 25/68 (37%) | 44.0% | 44.0% (Spearbit, Trail of Bits) | 5 | aging | ✅ active | - |
| [ionic-protocol](./ionic-protocol/brief.md) | $2.04M | bsc, mode | 420 | 55/420 (13%) | 1.8% | 0.0% (-) | 1 | stale | 💀 dead | - |
| [juicebox](./juicebox/brief.md) | $11.04M | 8 | 77 | 68/77 (88%) | 5.9% | 0.0% (-) | 1 | stale | ✅ active | - |
| [k2](./k2/brief.md) | $4.66M | ethereum | 30 | 21/30 (70%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [kaio](./kaio/brief.md) | $60.80M | 4 | 35 | 4/35 (11%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [kasu](./kasu/brief.md) | $10.29M | base | 22 | 20/22 (91%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [kava-earn](./kava-earn/brief.md) | $1.57M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [kava-lend](./kava-lend/brief.md) | $7.79M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [kava-liquid](./kava-liquid/brief.md) | $1.55M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [kava-mint](./kava-mint/brief.md) | $52.16M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [keeta-bridge](./keeta-bridge/brief.md) | $1.06M | base | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [keyring](./keyring/brief.md) | $6.22M | avalanche, ethereum | 53 | 42/53 (79%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [kiloex](./kiloex/brief.md) | $2.45M | base, bsc, manta | 110 | 7/110 (6%) | 14.3% | 0.0% (-) | 1 | aging | ✅ active | - |
| [king-protocol](./king-protocol/brief.md) | $1.54M | 5 | 16 | 5/16 (31%) | 60.0% | 0.0% (-) | 2 | aging | ✅ active | - |
| [kintsu](./kintsu/brief.md) | $2.35M | hyperliquid | 12 | 0/12 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | - |
| [klaystation](./klaystation/brief.md) | $0.00 | klaytn | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [klayswap](./klayswap/brief.md) | $4.51M | klaytn | 22 | 0/22 (0%) | 0.0% | 0.0% (-) | 0 | aging | ⚠️ declining | - |
| [kodiak](./kodiak/brief.md) | $29.04M | - | 0 | - | 0.0% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [landx-finance](./landx-finance/brief.md) | $1.77M | ethereum | 3 | 3/3 (100%) | 100.0% | 0.0% (-) | 1 | stale | ✅ active | - |
| [larix](./larix/brief.md) | $1.01M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [layerbank](./layerbank/brief.md) | $23.19M | 4 | 91 | 13/91 (14%) | 50.0% | 0.0% (-) | 2 | fresh | ⚠️ declining | - |
| [lbank](./lbank/brief.md) | $9.76M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [levex](./levex/brief.md) | $10.91M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [liminal](./liminal/brief.md) | $24.93M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [liquidity-house](./liquidity-house/brief.md) | $1.44M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [llamapay](./llamapay/brief.md) | $25.78M | 17 | 19 | 5/19 (26%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [lockon](./lockon/brief.md) | $1.05M | arbitrum, polygon | 23 | 16/23 (70%) | 56.3% | 0.0% (-) | 4 | fresh | ✅ active | - |
| [lumenswap](./lumenswap/brief.md) | $6.33M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [lusd-chickenbonds](./lusd-chickenbonds/brief.md) | $1.49M | ethereum | 24 | 21/24 (88%) | 28.6% | 0.0% (-) | 6 | stale | ⚠️ declining | - |
| [magma-staking](./magma-staking/brief.md) | $1.16M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [magpie-ecosystem](./magpie-ecosystem/brief.md) | $24.65M | 8 | 662 | 0/662 (0%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [mainstreet](./mainstreet/brief.md) | $78.18M | ethereum | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [mangrove](./mangrove/brief.md) | $4.26M | 4 | 68 | 41/68 (60%) | 22.0% | 14.6% (ChainSecurity) | 5 | aging | ✅ active | - |
| [manta-atlantic-stake](./manta-atlantic-stake/brief.md) | $5.41M | ethereum, manta | 109 | 68/109 (62%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manta-cedefi](./manta-cedefi/brief.md) | $26.70M | manta | 17 | 15/17 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manta-pacific](./manta-pacific/brief.md) | $24.65M | ethereum, manta | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [mantle-restaking](./mantle-restaking/brief.md) | $79.69M | ethereum | 8 | 5/8 (63%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [matstake](./matstake/brief.md) | $4.67M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [meld-gold](./meld-gold/brief.md) | $11.13M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [mento](./mento/brief.md) | $19.58M | celo, ethereum | 180 | 0/180 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [merchant-moe](./merchant-moe/brief.md) | $37.26M | mantle | 53 | 26/53 (49%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [merlinswap](./merlinswap/brief.md) | $8.43M | merlin | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [meson](./meson/brief.md) | $1.10M | blast, merlin | 129 | 2/129 (2%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [metadao](./metadao/brief.md) | $13.05M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [metastable](./metastable/brief.md) | $2.07M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mev-capital](./mev-capital/brief.md) | $67.02M | 8 | 783 | 240/783 (31%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [mezo-earn](./mezo-earn/brief.md) | $55.18M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [minefi](./minefi/brief.md) | $1.41M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [minto](./minto/brief.md) | $3.80M | bsc, ethereum, heco | 9 | 6/9 (67%) | 16.7% | 0.0% (-) | 1 | stale | ✅ active | - |
| [mode-bridge](./mode-bridge/brief.md) | $6.12M | ethereum, mode | 100 | 34/100 (34%) | 2.9% | 0.0% (-) | 1 | aging | ⚠️ declining | - |
| [mole](./mole/brief.md) | $8.79M | avalanche | 49 | 3/49 (6%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [moneyonchain](./moneyonchain/brief.md) | $43.71M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [moonlander](./moonlander/brief.md) | $31.41M | cronos | 11 | 0/11 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [more-markets](./more-markets/brief.md) | $11.46M | 4 | 21 | 20/21 (95%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [morph-bridge](./morph-bridge/brief.md) | $15.68M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [mu-digital](./mu-digital/brief.md) | $19.42M | ethereum | 12 | 12/12 (100%) | 100.0% | 100.0% (SlowMist) | 1 | fresh | ✅ active | - |
| [mugenfinance](./mugenfinance/brief.md) | $3.35M | arbitrum | 12 | 10/12 (83%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [mvl-staking](./mvl-staking/brief.md) | $1.10M | ethereum | 49 | 2/49 (4%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [mystic-finance](./mystic-finance/brief.md) | $5.79M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [nado](./nado/brief.md) | $54.96M | ink | 22 | 0/22 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [nawa-protocol](./nawa-protocol/brief.md) | $4.09M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [nbx](./nbx/brief.md) | $1.82M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [neemo-finance](./neemo-finance/brief.md) | $1.37M | ethereum | 14 | 1/14 (7%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [neo-tokyo](./neo-tokyo/brief.md) | $1.04M | ethereum | 86 | 38/86 (44%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [neopin](./neopin/brief.md) | $55.37M | ethereum, klaytn, polygon | 100 | 1/100 (1%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [neptune-finance](./neptune-finance/brief.md) | $6.05M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [nerona](./nerona/brief.md) | $7.94M | ethereum | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [nest-credit](./nest-credit/brief.md) | $50.51M | 4 | 16 | 6/16 (38%) | 57.1% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [netswap](./netswap/brief.md) | $1.34M | metis | 48 | 24/48 (50%) | 20.8% | 0.0% (-) | 2 | stale | ⚠️ declining | - |
| [neuralai](./neuralai/brief.md) | $1.22M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [neutral-trade](./neutral-trade/brief.md) | $18.62M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nexus-mutual](./nexus-mutual/brief.md) | $95.92M | ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [nomiswap](./nomiswap/brief.md) | $1.42M | bsc | 47 | 19/47 (40%) | 15.8% | 0.0% (-) | 1 | stale | ⚠️ declining | - |
| [nonkyc](./nonkyc/brief.md) | $5.73M | 4 | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [nostra](./nostra/brief.md) | $6.82M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nucleus](./nucleus/brief.md) | $38.09M | ethereum | 6 | 6/6 (100%) | 50.0% | 33.3% (Spearbit) | 5 | fresh | ✅ active | - |
| [nuls](./nuls/brief.md) | $7.33M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [obsidian](./obsidian/brief.md) | $1.60M | cronos | 6 | 0/6 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [odyssey-finance](./odyssey-finance/brief.md) | $10.18M | base, ethereum, optimism | 79 | 74/79 (94%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [okcoin](./okcoin/brief.md) | $25.77M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [omnibtc](./omnibtc/brief.md) | $2.20M | 6 | 6 | 0/6 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [opinion](./opinion/brief.md) | $7.32M | bsc, ethereum | 6 | 4/6 (67%) | 100.0% | 0.0% (-) | 4 | fresh | ⚠️ declining | - |
| [orangex](./orangex/brief.md) | $39.84M | base, ethereum | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [osl](./osl/brief.md) | $41.49M | scroll | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [osmosis-dex](./osmosis-dex/brief.md) | $18.53M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ostium](./ostium/brief.md) | $41.78M | arbitrum | 17 | 17/17 (100%) | 47.1% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [outcome-finance](./outcome-finance/brief.md) | $1.33M | boba, ethereum, polygon | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [overnight-finance](./overnight-finance/brief.md) | $10.01M | 10 | 4353 | 0/4353 (0%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [p2pb2b](./p2pb2b/brief.md) | $4.84M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pact](./pact/brief.md) | $2.48M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pangolin](./pangolin/brief.md) | $3.77M | avalanche | 163 | 26/163 (16%) | 53.8% | 0.0% (-) | 9 | aging | ⚠️ declining | - |
| [paradex](./paradex/brief.md) | $33.26M | ethereum | 5 | 2/5 (40%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [paragonsdao](./paragonsdao/brief.md) | $6.36M | base | 2 | 2/2 (100%) | 50.0% | 0.0% (-) | 2 | aging | ✅ active | - |
| [pay-protocol](./pay-protocol/brief.md) | $1.42M | ethereum | 8 | 0/8 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [perpl](./perpl/brief.md) | $1.18M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pharaoh-exchange](./pharaoh-exchange/brief.md) | $50.26M | avalanche | 48 | 36/48 (75%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [phoenix](./phoenix/brief.md) | $1.19M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pionex](./pionex/brief.md) | $37.13M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pnetwork](./pnetwork/brief.md) | $13.10M | arbitrum, gnosis, polygon | 10 | 9/10 (90%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [polygon-zkevm-bridge](./polygon-zkevm-bridge/brief.md) | $77.97M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [polynomial-protocol](./polynomial-protocol/brief.md) | $5.34M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [pond0x](./pond0x/brief.md) | $2.87M | ethereum | 14 | 9/14 (64%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [potatoswap](./potatoswap/brief.md) | $5.17M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [powercity](./powercity/brief.md) | $3.25M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [powh3d](./powh3d/brief.md) | $4.36M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [prime-staking](./prime-staking/brief.md) | $4.77M | base | 10 | 3/10 (30%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [privacy-pools](./privacy-pools/brief.md) | $6.62M | arbitrum, ethereum, optimism | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 3 | aging | ✅ active | - |
| [probit-global](./probit-global/brief.md) | $12.83M | fantom | 3 | 0/3 (0%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [pulsechain](./pulsechain/brief.md) | $51.98M | ethereum | 5 | 4/5 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [pulsechain-bridge](./pulsechain-bridge/brief.md) | $51.98M | ethereum | 5 | 4/5 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [pumpspace](./pumpspace/brief.md) | $3.87M | avalanche | 666 | 6/666 (1%) | 33.3% | 0.0% (-) | 2 | aging | ✅ active | - |
| [punks-terminal](./punks-terminal/brief.md) | $1.49M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [puzzleswaporg](./puzzleswaporg/brief.md) | $1.38M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [qidao](./qidao/brief.md) | $3.04M | 20 | 298 | 0/298 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [rain](./rain/brief.md) | $9.23M | arbitrum | 28 | 27/28 (96%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [rainbow-bridge](./rainbow-bridge/brief.md) | $2.11M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [rank-trading](./rank-trading/brief.md) | $2.33M | bsc | 13 | 10/13 (77%) | 30.0% | 0.0% (-) | 1 | aging | ✅ active | - |
| [reddex](./reddex/brief.md) | $4.19M | ethereum | 5 | 4/5 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [reflexer](./reflexer/brief.md) | $2.32M | ethereum | 64 | 22/64 (34%) | 40.9% | 0.0% (-) | 3 | stale | ⚠️ declining | - |
| [resupply](./resupply/brief.md) | $41.84M | ethereum | 1 | 1/1 (100%) | 100.0% | 100.0% (ChainSecurity) | 3 | fresh | ✅ active | - |
| [revault](./revault/brief.md) | $1.96M | bsc | 75 | 20/75 (27%) | 45.0% | 0.0% (-) | 1 | stale | ⚠️ declining | - |
| [rex-staking](./rex-staking/brief.md) | $2.01M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rho](./rho/brief.md) | $2.47M | ethereum | 31 | 1/31 (3%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [risex](./risex/brief.md) | $4.29M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ronin-bridge](./ronin-bridge/brief.md) | $4.55M | ethereum | 11 | 5/11 (45%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [rooster-protocol](./rooster-protocol/brief.md) | $2.23M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [rosen-bridge](./rosen-bridge/brief.md) | $2.11M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rsk-bridge](./rsk-bridge/brief.md) | $1.03M | ethereum | 15 | 14/15 (93%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [saber](./saber/brief.md) | $4.59M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [safe](./safe/brief.md) | $99.27M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [sakefinance](./sakefinance/brief.md) | $2.39M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [saucerswap](./saucerswap/brief.md) | $32.90M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [scallop](./scallop/brief.md) | $38.17M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [sceptre-liquid](./sceptre-liquid/brief.md) | $20.03M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [scream](./scream/brief.md) | $1.29M | fantom | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [scrub-money](./scrub-money/brief.md) | $6.75M | arbitrum, kava | 19 | 1/19 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [sdai](./sdai/brief.md) | $72.00M | gnosis | 91 | 46/91 (51%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [sentiment](./sentiment/brief.md) | $1.20M | arbitrum | 297 | 30/297 (10%) | 73.3% | 46.7% (Sherlock) | 6 | aging | 💀 dead | - |
| [serum](./serum/brief.md) | $15.31M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [shape-bridge](./shape-bridge/brief.md) | $1.06M | ethereum | 26 | 22/26 (85%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [sicx](./sicx/brief.md) | $1.27M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [smilee-finance](./smilee-finance/brief.md) | $1.74M | arbitrum, berachain | 186 | 23/186 (12%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [solayer](./solayer/brief.md) | $12.99M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [solera](./solera/brief.md) | $8.36M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [sophon-farm](./sophon-farm/brief.md) | $6.80M | ethereum | 1 | 1/1 (100%) | 100.0% | 100.0% (Sherlock) | 3 | aging | ✅ active | - |
| [sorare-bridge](./sorare-bridge/brief.md) | $3.95M | ethereum | 58 | 38/58 (66%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [sovryn](./sovryn/brief.md) | $38.32M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sovryn-bridge](./sovryn-bridge/brief.md) | $2.87M | ethereum | 47 | 5/47 (11%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [spacefi](./spacefi/brief.md) | $1.46M | scroll, zksync-era | 38 | 0/38 (0%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [sparkdex](./sparkdex/brief.md) | $29.41M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [spiraldao](./spiraldao/brief.md) | $6.40M | ethereum, zksync-era | 56 | 25/56 (45%) | 44.0% | 0.0% (-) | 3 | stale | 💀 dead | - |
| [splash-protocol](./splash-protocol/brief.md) | $5.15M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [splashing-stake](./splashing-stake/brief.md) | $6.19M | sei | 8 | 4/8 (50%) | 75.0% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [sport.fun](./sport.fun/brief.md) | $3.68M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [sprinter](./sprinter/brief.md) | $940.72K | base | 4 | 4/4 (100%) | 100.0% | 50.0% (Spearbit) | 3 | fresh | ✅ active | - |
| [squadswap](./squadswap/brief.md) | $1.53M | 6 | 214 | 37/214 (17%) | 63.2% | 0.0% (-) | 4 | aging | ✅ active | - |
| [stablehodl](./stablehodl/brief.md) | $6.96M | bsc, ethereum, polygon | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [standx](./standx/brief.md) | $48.27M | bsc | 17 | 7/17 (41%) | 57.1% | 0.0% (-) | 5 | fresh | ⚠️ declining | - |
| [stargate](./stargate/brief.md) | $5.92M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stcelo](./stcelo/brief.md) | $1.60M | celo | 19 | 10/19 (53%) | 50.0% | 0.0% (-) | 2 | stale | ✅ active | - |
| [stfil](./stfil/brief.md) | $5.51M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stobox](./stobox/brief.md) | $15.12M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stratis-mstrax](./stratis-mstrax/brief.md) | $2.04M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [suibridge](./suibridge/brief.md) | $41.86M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [sumer.money](./sumer.money/brief.md) | $1.85M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sunny](./sunny/brief.md) | $2.51M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [superfluid](./superfluid/brief.md) | $5.13M | 10 | 397 | 89/397 (22%) | 20.8% | 5.2% (Trail of Bits) | 6 | fresh | ✅ active | - |
| [supernova](./supernova/brief.md) | $2.12M | ethereum | 47 | 47/47 (100%) | 48.9% | 0.0% (-) | 1 | fresh | ⚠️ declining | - |
| [swappi](./swappi/brief.md) | $1.88M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [swapscanner](./swapscanner/brief.md) | $4.38M | klaytn | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [swell](./swell/brief.md) | $130.10M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [swellchain-bridge](./swellchain-bridge/brief.md) | $1.16M | ethereum | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [syncswap-protocol](./syncswap-protocol/brief.md) | $9.69M | linea, scroll, zksync-era | 157 | 30/157 (19%) | 23.3% | 0.0% (-) | 3 | stale | ✅ active | - |
| [tangible](./tangible/brief.md) | $42.24M | 6 | 475 | 262/475 (55%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [teller](./teller/brief.md) | $1.87M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tender-finance](./tender-finance/brief.md) | $1.29M | arbitrum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [tensorplex](./tensorplex/brief.md) | $1.62M | ethereum | 6 | 4/6 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [tg-casino](./tg-casino/brief.md) | $1.20M | ethereum | 15 | 15/15 (100%) | 6.7% | 0.0% (-) | 1 | aging | ✅ active | - |
| [thedeep](./thedeep/brief.md) | $8.22M | 4 | 164 | 11/164 (7%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [themis-pro](./themis-pro/brief.md) | $1.16M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [thruster](./thruster/brief.md) | $5.73M | blast | 20 | 14/20 (70%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [tinyman](./tinyman/brief.md) | $6.61M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [tokenlon](./tokenlon/brief.md) | $37.17M | ethereum | 21 | 21/21 (100%) | 57.1% | 0.0% (-) | 6 | stale | ⚠️ declining | - |
| [toobit](./toobit/brief.md) | $69.15M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tothemoon](./tothemoon/brief.md) | $2.40M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [townsquare](./townsquare/brief.md) | $1.80M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [trisolaris](./trisolaris/brief.md) | $1.49M | aurora | 119 | 18/119 (15%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [troves](./troves/brief.md) | $5.02M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [truefi](./truefi/brief.md) | $15.39M | arbitrum, ethereum | 8 | 8/8 (100%) | 37.5% | 0.0% (-) | 6 | stale | ⚠️ declining | - |
| [trufin-protocol](./trufin-protocol/brief.md) | $7.02M | ethereum | 7 | 6/7 (86%) | 66.7% | 33.3% (OpenZeppelin) | 7 | fresh | ⚠️ declining | - |
| [txflow](./txflow/brief.md) | $3.76M | arbitrum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [ultrayield](./ultrayield/brief.md) | $87.63M | 6 | 4520 | 0/4520 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [umee](./umee/brief.md) | $2.51M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [unchain-x](./unchain-x/brief.md) | $1.21M | bsc | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | aging | ✅ active | - |
| [unichain-bridge](./unichain-bridge/brief.md) | $2.75M | ethereum | 15 | 15/15 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [unitas](./unitas/brief.md) | $83.17M | bsc | 9 | 3/9 (33%) | 100.0% | 100.0% (SlowMist) | 3 | fresh | ✅ active | - |
| [universal-bridge](./universal-bridge/brief.md) | $7.68M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [uranium.io](./uranium.io/brief.md) | $7.38M | ethereum | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [usx.capital](./usx.capital/brief.md) | $1.31M | scroll | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [vedelegate](./vedelegate/brief.md) | $1.16M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [velodrome](./velodrome/brief.md) | $40.17M | celo, optimism | 52 | 47/52 (90%) | 40.4% | 40.4% (Spearbit) | 2 | aging | ✅ active | - |
| [veno-finance](./veno-finance/brief.md) | $42.84M | cronos, ethereum, zksync-era | 49 | 9/49 (18%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [ventuals](./ventuals/brief.md) | $29.70M | hyperliquid | 4 | 4/4 (100%) | 100.0% | 0.0% (-) | 2 | fresh | ✅ active | - |
| [verio](./verio/brief.md) | $7.19M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [verus-market](./verus-market/brief.md) | $9.65M | ethereum | 32 | 0/32 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [vest-markets](./vest-markets/brief.md) | $1.66M | 5 | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [vfat.io](./vfat.io/brief.md) | $36.60M | 14 | 553 | 220/553 (40%) | 10.0% | 0.0% (-) | 3 | fresh | ✅ active | - |
| [wagmi](./wagmi/brief.md) | $2.32M | 12 | 334 | 0/334 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [wanswap-dex](./wanswap-dex/brief.md) | $1.07M | - | 0 | - | 0.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [wemix.fi](./wemix.fi/brief.md) | $38.18M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [woo-x](./woo-x/brief.md) | $7.08M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wrapped](./wrapped/brief.md) | $23.88M | celo | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [wrapped-bnb](./wrapped-bnb/brief.md) | $6.01M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [xfi-native-staking-protocol](./xfi-native-staking-protocol/brief.md) | $1.17M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ybtc.b](./ybtc.b/brief.md) | $83.93M | bsc | 12 | 0/12 (0%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [yei-finance](./yei-finance/brief.md) | $32.33M | sei | 44 | 35/44 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [yield-yak](./yield-yak/brief.md) | $16.58M | avalanche, mantle | 8 | 0/8 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [zeebu](./zeebu/brief.md) | $5.21M | base, ethereum | 8 | 3/8 (38%) | 66.7% | 66.7% (Certora, OpenZeppelin) | 2 | aging | ❓ unknown | - |
| [zenlink](./zenlink/brief.md) | $5.34M | moonbeam, moonriver | 226 | 12/226 (5%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [zerobase-cedefi](./zerobase-cedefi/brief.md) | $58.32M | 6 | 7 | 5/7 (71%) | 66.7% | 0.0% (-) | 2 | fresh | ✅ active | - |
| [zerolend](./zerolend/brief.md) | $16.14M | 8 | 565 | 0/565 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [zivoe](./zivoe/brief.md) | $13.83M | ethereum | 31 | 30/31 (97%) | 43.3% | 33.3% (Sherlock) | 2 | aging | ⚠️ declining | - |
| [zkswap-finance](./zkswap-finance/brief.md) | $1.22M | sonic, zksync-era | 98 | 27/98 (28%) | 11.1% | 0.0% (-) | 5 | stale | ✅ active | - |
| [zoomex](./zoomex/brief.md) | $23.79M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zoth](./zoth/brief.md) | $2.20M | 5 | 43 | 32/43 (74%) | 78.1% | 0.0% (-) | 5 | fresh | ✅ active | - |

_Generated: 2026-06-11T03:48:22.829Z_
_Projects: 713_
