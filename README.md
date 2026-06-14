# Agentic Audit Briefs

Machine-readable and human-readable audit coverage briefs for DeFi protocols, produced by [meta-audit](https://github.com/alexdolgov/meta-audit).

Each project directory contains:
- `brief.json` — machine-readable: full contract surface, audits, coverage, TVL
- `brief.md` — human-readable: overview, narrative, tables with links
- `contracts/` — verified source code organized by chain, with per-contract READMEs

## Project Directory

| Project | TVL (DL) | Chains | Implementations | Verified | Coverage | Tier 1 | Audits | Freshness | Status | ASD |
|---|---:|---|---:|---|---:|---|---:|---|---|---:|
| [cream-finance](./cream-finance/brief.md) | $1.32M | 4 | 95 | 63/95 (66%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $2280.01M |
| [reservoir-protocol](./reservoir-protocol/brief.md) | $63.12M | 9 | 278 | 265/278 (95%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2082.66M |
| [keep3r-network](./keep3r-network/brief.md) | $3.58M | ethereum | 480 | 368/480 (77%) | 0.3% | 0.0% (-) | 1 | stale | ⚠️ declining | $2070.48M |
| [zyfai](./zyfai/brief.md) | $4.74M | 5 | 106 | 100/106 (94%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1821.98M |
| [angle](./angle/brief.md) | $2.04M | 8 | 558 | 295/558 (53%) | 2.4% | 0.0% (-) | 2 | stale | ⚠️ declining | $1398.01M |
| [singularv](./singularv/brief.md) | $2.54M | ethereum | 83 | 70/83 (84%) | 11.4% | 11.4% (ChainSecurity, Spearbit) | 5 | stale | ⚠️ declining | $1083.21M |
| [rumpel-labs](./rumpel-labs/brief.md) | $1.89M | ethereum | 115 | 101/115 (88%) | 2.0% | 0.0% (-) | 2 | aging | ⚠️ declining | $1039.27M |
| [planet](./planet/brief.md) | $1.82M | bsc | 34 | 26/34 (76%) | 7.7% | 0.0% (-) | 1 | stale | ⚠️ declining | $778.29M |
| [volta-club](./volta-club/brief.md) | $286.90K | 5 | 305 | 167/305 (55%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $777.26M |
| [bracket-protocol](./bracket-protocol/brief.md) | $3.08M | arbitrum, ethereum | 58 | 46/58 (79%) | 17.4% | 0.0% (-) | 4 | fresh | ✅ active | $619.35M |
| [mantra-dao](./mantra-dao/brief.md) | $1.60M | bsc, ethereum, polygon | 195 | 76/195 (39%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $611.01M |
| [sigma-money](./sigma-money/brief.md) | $2.83M | bsc | 235 | 192/235 (82%) | 18.8% | 17.7% (SlowMist) | 10 | fresh | ✅ active | $592.98M |
| [trevee-earn](./trevee-earn/brief.md) | $999.85K | ethereum, plasma, sonic | 29 | 28/29 (97%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $583.07M |
| [hyperwave](./hyperwave/brief.md) | $3.32M | base, ethereum, hyperliquid | 12 | 8/12 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $499.87M |
| [trust-wallet](./trust-wallet/brief.md) | $32.63M | bsc | 14 | 12/14 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $470.24M |
| [brotocol](./brotocol/brief.md) | $6.48M | 8 | 76 | 25/76 (33%) | 20.0% | 0.0% (-) | 6 | fresh | ❓ unknown | $447.56M |
| [inverse-finance](./inverse-finance/brief.md) | $41.93M | 5 | 154 | 144/154 (94%) | 11.1% | 7.6% (Code4rena, Sherlock) | 5 | fresh | ✅ active | $428.77M |
| [starknet-btc-staking](./starknet-btc-staking/brief.md) | $54.42M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | $412.19M |
| [onyx](./onyx/brief.md) | $46.62M | ethereum | 17 | 15/17 (88%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $384.43M |
| [kine-finance](./kine-finance/brief.md) | $964.57K | 4 | 35 | 33/35 (94%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $351.76M |
| [alchemix](./alchemix/brief.md) | $37.88M | 4 | 388 | 202/388 (52%) | 6.4% | 1.0% (Spearbit) | 6 | fresh | ✅ active | $338.70M |
| [tenderize](./tenderize/brief.md) | $1.10M | arbitrum, ethereum | 43 | 38/43 (88%) | 2.6% | 0.0% (-) | 2 | stale | ⚠️ declining | $332.49M |
| [zerolend](./zerolend/brief.md) | $13.19M | 7 | 614 | 383/614 (62%) | 9.2% | 0.0% (-) | 3 | stale | ⚠️ declining | $331.69M |
| [mitosis](./mitosis/brief.md) | $1.28M | 11 | 482 | 123/482 (26%) | 1.6% | 1.6% (Code4rena) | 1 | fresh | ✅ active | $330.53M |
| [nerona](./nerona/brief.md) | $5.39M | ethereum | 4 | 3/4 (75%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $326.95M |
| [rari-capital](./rari-capital/brief.md) | $1.34M | arbitrum, ethereum | 253 | 89/253 (35%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $321.37M |
| [satlayer](./satlayer/brief.md) | $1.14M | 4 | 311 | 111/311 (36%) | 4.5% | 0.0% (-) | 6 | fresh | ✅ active | $287.19M |
| [dyorswap](./dyorswap/brief.md) | $1.68M | 7 | 93 | 6/93 (6%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $270.03M |
| [debridge](./debridge/brief.md) | $3.81M | 11 | 161 | 16/161 (10%) | 61.9% | 0.0% (-) | 13 | aging | ⚠️ declining | $263.88M |
| [btcst](./btcst/brief.md) | $909.72K | bsc | 64 | 11/64 (17%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $263.69M |
| [hop-protocol](./hop-protocol/brief.md) | $3.12M | 5 | 402 | 100/402 (25%) | 10.9% | 0.0% (-) | 2 | stale | ⚠️ declining | $258.69M |
| [aethir](./aethir/brief.md) | $6.79M | ethereum | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $257.03M |
| [symbiosis](./symbiosis/brief.md) | $8.72M | cronos, ethereum, scroll | 40 | 26/40 (65%) | 15.4% | 7.7% (SlowMist) | 5 | fresh | ✅ active | $236.15M |
| [decentralized-euro](./decentralized-euro/brief.md) | $2.07M | 5 | 72 | 39/72 (54%) | 28.2% | 28.2% (ChainSecurity) | 2 | aging | ✅ active | $230.43M |
| [sphere](./sphere/brief.md) | $6.64M | 8 | 221 | 113/221 (51%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $229.38M |
| [superfarm](./superfarm/brief.md) | $1.18M | ethereum | 49 | 42/49 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $211.05M |
| [piku](./piku/brief.md) | $18.28M | ethereum | 32 | 30/32 (94%) | 13.3% | 0.0% (-) | 1 | stale | ✅ active | $189.25M |
| [angstrom](./angstrom/brief.md) | $3.06M | base, ethereum | 13 | 13/13 (100%) | 7.7% | 7.7% (Spearbit) | 1 | fresh | ⚠️ declining | $182.65M |
| [autofinance](./autofinance/brief.md) | $39.39M | 6 | 570 | 406/570 (71%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | $175.72M |
| [puffer-finance](./puffer-finance/brief.md) | $59.11M | ethereum | 65 | 44/65 (68%) | 36.4% | 22.7% (SlowMist) | 4 | stale | ⚠️ declining | $169.16M |
| [cyclone](./cyclone/brief.md) | $1.16M | bsc, ethereum, polygon | 63 | 30/63 (48%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $165.47M |
| [babydogecoin](./babydogecoin/brief.md) | $1.97M | bsc, ethereum, polygon | 17 | 17/17 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $164.86M |
| [tokenworks](./tokenworks/brief.md) | $1.59M | ethereum | 71 | 38/71 (54%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $163.62M |
| [hypersurface](./hypersurface/brief.md) | $3.05M | base, hyperliquid | 281 | 58/281 (21%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $161.03M |
| [giza](./giza/brief.md) | $13.97K | 4 | 25 | 25/25 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $159.17M |
| [avantis](./avantis/brief.md) | $45.49M | base | 61 | 16/61 (26%) | 68.8% | 0.0% (-) | 3 | aging | ⚠️ declining | $150.92M |
| [ribbon-finance](./ribbon-finance/brief.md) | $4.85M | avalanche, ethereum | 147 | 86/147 (59%) | 31.0% | 4.6% (OpenZeppelin) | 14 | stale | ⚠️ declining | $148.56M |
| [infinifi](./infinifi/brief.md) | $77.95M | bsc, ethereum, plasma | 123 | 71/123 (58%) | 0.0% | 0.0% (-) | 0 | aging | ⚠️ declining | $145.94M |
| [zircuit](./zircuit/brief.md) | $13.10M | base, ethereum | 17 | 16/17 (94%) | 25.0% | 0.0% (-) | 3 | aging | ⚠️ declining | $144.24M |
| [beanstalk](./beanstalk/brief.md) | $6.46M | arbitrum, ethereum | 244 | 167/244 (68%) | 20.4% | 1.2% (Code4rena, Cyfrin, Immunefi) | 7 | stale | ⚠️ declining | $142.55M |
| [summer.fi](./summer.fi/brief.md) | $32.92M | 5 | 484 | 279/484 (58%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $140.93M |
| [zircuit-staking](./zircuit-staking/brief.md) | $54.16M | base, ethereum | 20 | 19/20 (95%) | 21.1% | 0.0% (-) | 3 | aging | ⚠️ declining | $140.43M |
| [bio-protocol](./bio-protocol/brief.md) | $4.56M | base, ethereum | 41 | 40/41 (98%) | 10.0% | 0.0% (-) | 2 | fresh | ✅ active | $139.62M |
| [apechain-bridge](./apechain-bridge/brief.md) | $40.86M | arbitrum, ethereum | 19 | 17/19 (89%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $138.23M |
| [wavesbridge](./wavesbridge/brief.md) | $1.03M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $136.63M |
| [bitway](./bitway/brief.md) | $60.78M | bsc | 8 | 7/8 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $136.35M |
| [bitway-earn](./bitway-earn/brief.md) | $60.03M | bsc | 8 | 7/8 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $136.35M |
| [velo-finance](./velo-finance/brief.md) | $1.53M | bsc | 37 | 13/37 (35%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $117.63M |
| [concentrator](./concentrator/brief.md) | $58.65M | ethereum | 342 | 300/342 (88%) | 31.3% | 6.3% (Trail of Bits) | 33 | aging | ✅ active | $105.16M |
| [yieldseeker](./yieldseeker/brief.md) | $1.42M | base | 206 | 65/206 (32%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $102.88M |
| [mev-capital](./mev-capital/brief.md) | $54.64M | 9 | 358 | 264/358 (74%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $98.48M |
| [velvet.capital](./velvet.capital/brief.md) | $1.43M | 4 | 420 | 44/420 (10%) | 77.8% | 2.2% (Spearbit) | 13 | fresh | ⚠️ declining | $95.22M |
| [gnosis-protocol-v1](./gnosis-protocol-v1/brief.md) | $1.88M | ethereum | 113 | 76/113 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $94.39M |
| [pleasing-gold](./pleasing-gold/brief.md) | - | arbitrum, ethereum | 14 | 10/14 (71%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $93.04M |
| [blur](./blur/brief.md) | $14.96M | blast, ethereum | 21 | 16/21 (76%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $91.73M |
| [gravity-bridge](./gravity-bridge/brief.md) | $11.82M | ethereum | 117 | 39/117 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $91.30M |
| [the-idols](./the-idols/brief.md) | $4.49M | ethereum | 20 | 16/20 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $85.36M |
| [ring-protocol](./ring-protocol/brief.md) | $36.20M | 12 | 90 | 44/90 (49%) | 10.6% | 8.5% (Spearbit) | 2 | fresh | ✅ active | $83.51M |
| [zoo-finance](./zoo-finance/brief.md) | $28.63M | 5 | 75 | 38/75 (51%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $83.03M |
| [mendi-finance](./mendi-finance/brief.md) | $2.01M | linea | 39 | 28/39 (72%) | 10.7% | 3.6% (Sherlock) | 2 | fresh | 💀 dead | $79.07M |
| [mainstreet](./mainstreet/brief.md) | $81.92M | ethereum | 11 | 11/11 (100%) | 9.1% | 0.0% (-) | 1 | fresh | ✅ active | $77.75M |
| [stable-jack](./stable-jack/brief.md) | $1.23M | avalanche, sonic | 249 | 31/249 (12%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $76.85M |
| [3jane](./3jane/brief.md) | $40.71M | ethereum | 23 | 21/23 (91%) | 61.9% | 61.9% (Sherlock) | 4 | fresh | ⚠️ declining | $76.61M |
| [alphaping](./alphaping/brief.md) | $75.88M | ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $73.58M |
| [switcheo-finance](./switcheo-finance/brief.md) | $1.01M | ethereum | 63 | 45/63 (71%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $71.04M |
| [nest](./nest/brief.md) | $17.71M | 4 | 349 | 132/349 (38%) | 12.9% | 0.0% (-) | 1 | fresh | ✅ active | $69.42M |
| [aura](./aura/brief.md) | $26.15M | 9 | 497 | 251/497 (51%) | 19.4% | 8.4% (Code4rena) | 15 | stale | ✅ active | $68.25M |
| [jones-dao](./jones-dao/brief.md) | $1.32M | 5 | 502 | 340/502 (68%) | 7.0% | 0.0% (-) | 5 | stale | ✅ active | $68.03M |
| [native](./native/brief.md) | $63.31M | 10 | 80 | 37/80 (46%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $67.62M |
| [init-capital](./init-capital/brief.md) | $4.29M | blast, mantle | 99 | 23/99 (23%) | 24.0% | 0.0% (-) | 4 | stale | ⚠️ declining | $66.15M |
| [gains-network](./gains-network/brief.md) | $18.76M | arbitrum, base, polygon | 779 | 133/779 (17%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $64.68M |
| [turtle-club](./turtle-club/brief.md) | $857.95K | 4 | 516 | 340/516 (66%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $59.81M |
| [kyberswap](./kyberswap/brief.md) | $10.47M | 15 | 445 | 130/445 (29%) | 8.8% | 7.4% (ChainSecurity, Spearbit) | 6 | fresh | ⚠️ declining | $58.32M |
| [reya](./reya/brief.md) | $17.18M | 5 | 294 | 74/294 (25%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $57.29M |
| [tulipa-capital](./tulipa-capital/brief.md) | $40.98M | 4 | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $56.24M |
| [deeplock](./deeplock/brief.md) | $1.96M | bsc | 70 | 38/70 (54%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $56.17M |
| [api3](./api3/brief.md) | $55.28M | ethereum, mantle | 28 | 14/28 (50%) | 21.4% | 7.1% (Trail of Bits) | 3 | aging | ✅ active | $55.23M |
| [synfutures](./synfutures/brief.md) | $4.85M | 6 | 482 | 3/482 (1%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $52.44M |
| [armitage-by-wintermute](./armitage-by-wintermute/brief.md) | $52.01M | ethereum | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $51.81M |
| [stcyber](./stcyber/brief.md) | $1.14M | 4 | 34 | 28/34 (82%) | 3.6% | 3.6% (SlowMist) | 1 | stale | ⚠️ declining | $51.36M |
| [flying-tulip](./flying-tulip/brief.md) | $6.99M | 5 | 62 | 59/62 (95%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $51.25M |
| [republic-note](./republic-note/brief.md) | $14.22M | avalanche | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $51.20M |
| [lisk-bridge](./lisk-bridge/brief.md) | $30.24M | ethereum | 102 | 94/102 (92%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $50.94M |
| [resolv](./resolv/brief.md) | $22.38M | 7 | 80 | 65/80 (81%) | 3.1% | 3.1% (Sherlock) | 1 | aging | ❓ unknown | $50.49M |
| [cbridge](./cbridge/brief.md) | $15.02M | 21 | 1348 | 554/1348 (41%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $50.16M |
| [stakestone](./stakestone/brief.md) | $18.34M | 8 | 198 | 75/198 (38%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $49.73M |
| [ultrayield](./ultrayield/brief.md) | $63.40M | 6 | 343 | 266/343 (78%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $46.54M |
| [sophon-bridge](./sophon-bridge/brief.md) | $60.24M | ethereum | 25 | 24/25 (96%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $44.64M |
| [bancor](./bancor/brief.md) | $30.33M | ethereum | 121 | 81/121 (67%) | 23.5% | 23.5% (ChainSecurity, OpenZeppelin) | 4 | stale | ⚠️ declining | $43.79M |
| [overtime](./overtime/brief.md) | $2.07M | 5 | 201 | 141/201 (70%) | 13.1% | 0.0% (-) | 8 | aging | ⚠️ declining | $42.53M |
| [yuzu-money](./yuzu-money/brief.md) | $48.95M | plasma | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $41.02M |
| [illuvium](./illuvium/brief.md) | $6.88M | ethereum | 21 | 19/21 (90%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $39.76M |
| [asymmetry](./asymmetry/brief.md) | $2.82M | base, ethereum | 209 | 126/209 (60%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $39.68M |
| [grvt](./grvt/brief.md) | $51.18M | ethereum | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $39.14M |
| [ichi](./ichi/brief.md) | $10.70M | 18 | 616 | 112/616 (18%) | 0.9% | 0.0% (-) | 1 | stale | ✅ active | $36.12M |
| [snowbank](./snowbank/brief.md) | $4.10M | avalanche | 17 | 16/17 (94%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $36.05M |
| [katana-pre-launch](./katana-pre-launch/brief.md) | $17.49M | base, ethereum | 174 | 105/174 (60%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $35.48M |
| [nexus-mutual](./nexus-mutual/brief.md) | $78.35M | ethereum | 30 | 30/30 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $34.82M |
| [zklink-nova](./zklink-nova/brief.md) | $12.95M | 11 | 380 | 105/380 (28%) | 14.5% | 3.6% (OpenZeppelin) | 7 | aging | ⚠️ declining | $33.89M |
| [backedfi](./backedfi/brief.md) | $7.77M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $33.35M |
| [nodedao](./nodedao/brief.md) | $33.69M | ethereum | 18 | 18/18 (100%) | 38.9% | 0.0% (-) | 4 | aging | ✅ active | $33.27M |
| [obeliskbtc](./obeliskbtc/brief.md) | $7.43M | ethereum | 19 | 19/19 (100%) | 36.8% | 0.0% (-) | 1 | aging | ⚠️ declining | $33.19M |
| [eth-strategy](./eth-strategy/brief.md) | $3.88M | ethereum | 50 | 42/50 (84%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $30.76M |
| [pooltogether](./pooltogether/brief.md) | $8.44M | 8 | 153 | 106/153 (69%) | 0.9% | 0.0% (-) | 1 | unknown | ⚠️ declining | $26.91M |
| [maverick-protocol](./maverick-protocol/brief.md) | $2.20M | 6 | 93 | 15/93 (16%) | 35.3% | 17.6% (Code4rena) | 4 | stale | ⚠️ declining | $26.76M |
| [aevo](./aevo/brief.md) | $20.28M | 4 | 256 | 88/256 (34%) | 11.8% | 0.0% (-) | 4 | stale | ✅ active | $26.14M |
| [synapse](./synapse/brief.md) | $16.68M | 20 | 824 | 196/824 (24%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $25.57M |
| [trueo](./trueo/brief.md) | $4.89M | base | 32 | 32/32 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $25.54M |
| [rocksolid-network](./rocksolid-network/brief.md) | $19.76M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $24.96M |
| [keep-network](./keep-network/brief.md) | $1.46M | 5 | 225 | 125/225 (56%) | 7.9% | 3.2% (ChainSecurity, ConsenSys Diligence) | 6 | fresh | ⚠️ declining | $24.66M |
| [flock.io](./flock.io/brief.md) | $5.70M | base | 16 | 15/16 (94%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $24.37M |
| [aegis-markets](./aegis-markets/brief.md) | $1.84M | base, unichain | 16 | 13/16 (81%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $24.21M |
| [iq](./iq/brief.md) | $5.04M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $23.85M |
| [rainbow-bridge](./rainbow-bridge/brief.md) | $1.67M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $23.29M |
| [everrise](./everrise/brief.md) | $643.73K | 5 | 217 | 81/217 (37%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $23.07M |
| [ethichub](./ethichub/brief.md) | $3.58M | celo, ethereum, gnosis | 60 | 47/60 (78%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $22.73M |
| [hyperbeat](./hyperbeat/brief.md) | $47.37M | ethereum, hyperliquid | 221 | 140/221 (63%) | 10.7% | 5.0% (Certora) | 5 | fresh | ✅ active | $22.60M |
| [hope-money](./hope-money/brief.md) | $1.39M | ethereum | 19 | 19/19 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $21.98M |
| [allbridge](./allbridge/brief.md) | $21.16M | 14 | 287 | 78/287 (27%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $21.73M |
| [singularx](./singularx/brief.md) | $1.42M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $21.45M |
| [rysk-finance](./rysk-finance/brief.md) | $47.31M | arbitrum, ethereum, hyperliquid | 193 | 57/193 (30%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $21.39M |
| [flaunch](./flaunch/brief.md) | $1.46M | base, ethereum | 56 | 55/56 (98%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $21.20M |
| [wing-finance](./wing-finance/brief.md) | $27.23M | bsc, ethereum, klaytn | 189 | 22/189 (12%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $20.27M |
| [smardex-ecosystem](./smardex-ecosystem/brief.md) | $4.56M | 5 | 39 | 39/39 (100%) | 33.3% | 0.0% (-) | 4 | aging | ⚠️ declining | $20.06M |
| [reppo](./reppo/brief.md) | $3.83M | base | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | $19.77M |
| [index-coop](./index-coop/brief.md) | $12.57M | 4 | 235 | 111/235 (47%) | 13.5% | 0.9% (Code4rena) | 5 | aging | ✅ active | $19.44M |
| [dodo](./dodo/brief.md) | $11.03M | 12 | 559 | 152/559 (27%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $19.13M |
| [parasail](./parasail/brief.md) | $2.69M | arbitrum | 41 | 2/41 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $17.21M |
| [drops](./drops/brief.md) | $2.79M | ethereum | 85 | 74/85 (87%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $16.49M |
| [hemi-staking](./hemi-staking/brief.md) | $29.14M | 4 | 132 | 54/132 (41%) | 1.9% | 0.0% (-) | 1 | fresh | ✅ active | $16.42M |
| [hypha](./hypha/brief.md) | $7.38M | avalanche | 60 | 30/60 (50%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $16.37M |
| [yieldfi](./yieldfi/brief.md) | $12.05M | 9 | 22 | 14/22 (64%) | 70.6% | 70.6% (Cyfrin, Sherlock) | 3 | fresh | ✅ active | $16.26M |
| [geth](./geth/brief.md) | $12.72M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $16.17M |
| [1inch](./1inch/brief.md) | $2.89M | ethereum | 275 | 105/275 (38%) | 21.9% | 13.3% (ChainSecurity, MixBytes, OpenZeppelin, Sherlock) | 56 | fresh | ✅ active | $16.09M |
| [equilibria](./equilibria/brief.md) | $18.14M | 10 | 119 | 70/119 (59%) | 17.6% | 0.0% (-) | 5 | aging | ⚠️ declining | $15.67M |
| [pharaoh-exchange](./pharaoh-exchange/brief.md) | $38.71M | avalanche | 60 | 48/60 (80%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $15.62M |
| [thorswap](./thorswap/brief.md) | $12.58M | 7 | 45 | 30/45 (67%) | 9.1% | 0.0% (-) | 2 | stale | ❓ unknown | $15.54M |
| [t-rize](./t-rize/brief.md) | $23.00M | base | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $15.01M |
| [royco-protocol](./royco-protocol/brief.md) | $31.92M | 6 | 17 | 12/17 (71%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $13.01M |
| [makina](./makina/brief.md) | $36.80M | base, ethereum, ink | 36 | 33/36 (92%) | 90.9% | 84.8% (ChainSecurity) | 3 | fresh | ✅ active | $12.90M |
| [lets-get-hai](./lets-get-hai/brief.md) | $1.20M | optimism | 54 | 53/54 (98%) | 77.4% | 0.0% (-) | 4 | fresh | ✅ active | $12.63M |
| [sideshift](./sideshift/brief.md) | $12.70M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $12.33M |
| [looping-collective](./looping-collective/brief.md) | $11.94M | ethereum, hyperliquid | 18 | 16/18 (89%) | 25.0% | 18.8% (Spearbit) | 6 | fresh | ✅ active | $11.61M |
| [d2-finance](./d2-finance/brief.md) | $24.60M | 5 | 184 | 60/184 (33%) | 48.4% | 11.3% (Cyfrin) | 2 | aging | ✅ active | $11.49M |
| [synthetix](./synthetix/brief.md) | $32.47M | 4 | 25 | 25/25 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $11.44M |
| [alpaca-finance](./alpaca-finance/brief.md) | $46.10M | bsc | 144 | 115/144 (80%) | 57.4% | 22.6% (SlowMist) | 17 | stale | ⚠️ declining | $11.23M |
| [kleros](./kleros/brief.md) | $5.81M | 4 | 358 | 84/358 (23%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $10.69M |
| [intentx](./intentx/brief.md) | $5.67M | 4 | 65 | 34/65 (52%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $10.51M |
| [40-acres](./40-acres/brief.md) | $32.91M | 4 | 325 | 170/325 (52%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $10.02M |
| [woofi](./woofi/brief.md) | $21.33M | 12 | 200 | 84/200 (42%) | 18.8% | 0.0% (-) | 4 | aging | ⚠️ declining | $9.66M |
| [polkastarter](./polkastarter/brief.md) | $2.73M | bsc, ethereum | 3 | 3/3 (100%) | 33.3% | 0.0% (-) | 1 | stale | ✅ active | $9.61M |
| [inception](./inception/brief.md) | $5.86M | 9 | 78 | 64/78 (82%) | 24.6% | 0.0% (-) | 8 | aging | ⚠️ declining | $9.53M |
| [kaito](./kaito/brief.md) | $15.83M | base | 4 | 3/4 (75%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $9.48M |
| [dao-maker](./dao-maker/brief.md) | $1.53M | bsc, ethereum | 20 | 7/20 (35%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $9.34M |
| [across](./across/brief.md) | $20.10M | 15 | 147 | 62/147 (42%) | 26.2% | 26.2% (OpenZeppelin) | 8 | aging | ✅ active | $9.16M |
| [neku](./neku/brief.md) | $1.60M | arbitrum, moonriver | 19 | 9/19 (47%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $8.38M |
| [tau-labs](./tau-labs/brief.md) | $4.08M | ethereum, plasma | 179 | 179/179 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $8.07M |
| [set-protocol](./set-protocol/brief.md) | $8.99M | ethereum | 129 | 33/129 (26%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $7.90M |
| [sonic-gateway](./sonic-gateway/brief.md) | $45.45M | ethereum, sonic | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $7.80M |
| [the-arena](./the-arena/brief.md) | $1.52M | avalanche | 121 | 30/121 (25%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $7.76M |
| [fuel-bridge](./fuel-bridge/brief.md) | $10.58M | ethereum | 18 | 15/18 (83%) | 26.7% | 0.0% (-) | 3 | fresh | ⚠️ declining | $7.63M |
| [alphagrowth](./alphagrowth/brief.md) | $7.38M | 4 | 40 | 28/40 (70%) | 14.3% | 10.7% (ChainSecurity, Cyfrin, Spearbit) | 7 | fresh | ✅ active | $7.39M |
| [belt-finance](./belt-finance/brief.md) | $13.22M | bsc, heco, klaytn | 1331 | 60/1331 (5%) | 47.5% | 0.0% (-) | 3 | stale | ⚠️ declining | $7.12M |
| [mobox](./mobox/brief.md) | $1.25M | bsc | 323 | 12/323 (4%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $6.64M |
| [re7-labs](./re7-labs/brief.md) | $84.76M | 7 | 18 | 18/18 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $6.55M |
| [nftx](./nftx/brief.md) | $1.58M | arbitrum, ethereum | 184 | 135/184 (73%) | 11.1% | 9.6% (Code4rena) | 3 | stale | ⚠️ declining | $6.27M |
| [sx-rollup-bridge](./sx-rollup-bridge/brief.md) | $7.27M | ethereum | 151 | 86/151 (57%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $6.12M |
| [spectra](./spectra/brief.md) | $40.07M | 8 | 229 | 154/229 (67%) | 12.2% | 11.6% (Code4rena, Sherlock) | 6 | fresh | ✅ active | $5.82M |
| [ambire-wallet](./ambire-wallet/brief.md) | $11.41M | ethereum, optimism | 13 | 5/13 (38%) | 20.0% | 20.0% (Code4rena) | 9 | aging | ✅ active | $5.82M |
| [ekubo](./ekubo/brief.md) | $20.90M | ethereum | 15 | 9/15 (60%) | 44.4% | 22.2% (Code4rena) | 3 | fresh | ✅ active | $5.65M |
| [wasabi](./wasabi/brief.md) | $1.31M | 4 | 83 | 54/83 (65%) | 37.0% | 11.1% (Sherlock) | 8 | aging | ⚠️ declining | $5.48M |
| [sierra-protocol](./sierra-protocol/brief.md) | $32.68M | avalanche, ethereum | 78 | 25/78 (32%) | 4.0% | 4.0% (Spearbit) | 1 | fresh | ✅ active | $5.33M |
| [axc-gift](./axc-gift/brief.md) | $5.29M | bsc | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $5.29M |
| [stargate-finance](./stargate-finance/brief.md) | $92.29M | 21 | 294 | 42/294 (14%) | 50.0% | 0.0% (-) | 16 | stale | ✅ active | $5.16M |
| [gro](./gro/brief.md) | $4.66M | avalanche, ethereum | 134 | 46/134 (34%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $5.04M |
| [scroll-bridge](./scroll-bridge/brief.md) | $34.07M | ethereum | 32 | 30/32 (94%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $4.98M |
| [ledgity-yield](./ledgity-yield/brief.md) | $2.89M | 5 | 109 | 57/109 (52%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $4.96M |
| [yala](./yala/brief.md) | $1.83M | ethereum | 30 | 11/30 (37%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $4.62M |
| [credit-coop](./credit-coop/brief.md) | $4.59M | base, ethereum | 7 | 6/7 (86%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | $4.59M |
| [delta-financial](./delta-financial/brief.md) | $7.90M | ethereum | 53 | 39/53 (74%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $4.51M |
| [atlendis](./atlendis/brief.md) | $10.99M | polygon | 43 | 14/43 (33%) | 14.3% | 0.0% (-) | 2 | stale | ✅ active | $4.28M |
| [primefi](./primefi/brief.md) | $243.01K | base, hyperliquid | 118 | 56/118 (47%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $4.12M |
| [dango](./dango/brief.md) | $3.20M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $4.07M |
| [meta-pool](./meta-pool/brief.md) | $95.30M | aurora, ethereum | 41 | 12/41 (29%) | 50.0% | 0.0% (-) | 1 | stale | ✅ active | $3.96M |
| [stafi](./stafi/brief.md) | $3.99M | ethereum | 42 | 23/42 (55%) | 26.1% | 0.0% (-) | 4 | stale | ⚠️ declining | $3.92M |
| [swaap](./swaap/brief.md) | $4.41M | 11 | 128 | 6/128 (5%) | 25.0% | 25.0% (ChainSecurity) | 3 | stale | ⚠️ declining | $3.81M |
| [near-intents](./near-intents/brief.md) | $82.96M | gnosis | 7 | 6/7 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.72M |
| [firebot](./firebot/brief.md) | $2.42M | polygon | 33 | 25/33 (76%) | 4.0% | 0.0% (-) | 1 | stale | ❓ unknown | $3.69M |
| [hyperswap](./hyperswap/brief.md) | $14.50M | hyperliquid | 30 | 11/30 (37%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $3.68M |
| [syntropia](./syntropia/brief.md) | $4.17M | ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.66M |
| [xsy](./xsy/brief.md) | $20.97M | avalanche | 15 | 4/15 (27%) | 25.0% | 0.0% (-) | 1 | aging | ✅ active | $3.60M |
| [stakingverse](./stakingverse/brief.md) | $3.28M | ethereum, lukso | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $3.54M |
| [llama-airforce](./llama-airforce/brief.md) | $3.83M | ethereum | 93 | 60/93 (65%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.51M |
| [monstro](./monstro/brief.md) | $2.01M | base | 13 | 13/13 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $3.46M |
| [open-ticketing-ecosystem](./open-ticketing-ecosystem/brief.md) | $817.65K | base, ethereum, polygon | 32 | 32/32 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.43M |
| [lair-finance](./lair-finance/brief.md) | $4.17M | berachain | 79 | 15/79 (19%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $3.41M |
| [beradrome](./beradrome/brief.md) | $6.88M | berachain | 18 | 18/18 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.29M |
| [steer-protocol](./steer-protocol/brief.md) | $17.07M | arbitrum, base, polygon | 46 | 34/46 (74%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.26M |
| [resupply](./resupply/brief.md) | $38.67M | ethereum | 41 | 41/41 (100%) | 2.4% | 2.4% (ChainSecurity) | 3 | fresh | ✅ active | $3.18M |
| [unslashed](./unslashed/brief.md) | $2.45M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.13M |
| [alien-base](./alien-base/brief.md) | $3.91M | base | 60 | 49/60 (82%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.09M |
| [liquidloans](./liquidloans/brief.md) | $2.86M | base | 20 | 20/20 (100%) | 30.0% | 0.0% (-) | 2 | fresh | ✅ active | $3.04M |
| [parallel-protocol](./parallel-protocol/brief.md) | $3.90M | 19 | 38 | 26/38 (68%) | 3.8% | 0.0% (-) | 2 | aging | ✅ active | $2.98M |
| [pickle](./pickle/brief.md) | $4.65M | ethereum | 235 | 148/235 (63%) | 2.7% | 0.0% (-) | 2 | stale | ⚠️ declining | $2.88M |
| [morph-bridge](./morph-bridge/brief.md) | $13.44M | ethereum | 17 | 17/17 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.85M |
| [ethereal-season-zero](./ethereal-season-zero/brief.md) | $2.63M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $2.82M |
| [izumi-finance](./izumi-finance/brief.md) | $3.45M | 15 | 187 | 21/187 (11%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.76M |
| [iaero-protocol](./iaero-protocol/brief.md) | $1.56M | base | 46 | 40/46 (87%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.73M |
| [singularity-finance](./singularity-finance/brief.md) | $4.72M | base, ethereum | 10 | 10/10 (100%) | 70.0% | 0.0% (-) | 1 | fresh | ❓ unknown | $2.69M |
| [plasma-saving-vaults](./plasma-saving-vaults/brief.md) | $43.92M | plasma | 6 | 5/6 (83%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.65M |
| [sperax](./sperax/brief.md) | $2.06M | arbitrum, bsc, ethereum | 142 | 34/142 (24%) | 47.1% | 8.8% (SlowMist) | 7 | stale | ⚠️ declining | $2.63M |
| [mezo-bridge](./mezo-bridge/brief.md) | $16.86M | ethereum | 26 | 26/26 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.63M |
| [loopring](./loopring/brief.md) | $8.55M | base, ethereum | 141 | 72/141 (51%) | 8.1% | 0.0% (-) | 1 | stale | ⚠️ declining | $2.43M |
| [iotube](./iotube/brief.md) | $2.75M | bsc, ethereum, polygon | 39 | 15/39 (38%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.23M |
| [b-lucky](./b-lucky/brief.md) | $1.02M | bsc | 16 | 1/16 (6%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $2.20M |
| [revert](./revert/brief.md) | $7.43M | 8 | 84 | 18/84 (21%) | 11.1% | 0.0% (-) | 2 | aging | ✅ active | $2.09M |
| [capx-ai](./capx-ai/brief.md) | $2.22M | bsc | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $1.95M |
| [stusdt](./stusdt/brief.md) | $60.24M | ethereum | 12 | 4/12 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.87M |
| [meeds-finance](./meeds-finance/brief.md) | $1.34M | 5 | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.85M |
| [vnx](./vnx/brief.md) | $5.44M | 7 | 10 | 5/10 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.85M |
| [mm-finance](./mm-finance/brief.md) | $1.46M | arbitrum, cronos, polygon | 192 | 21/192 (11%) | 4.5% | 0.0% (-) | 1 | stale | ⚠️ declining | $1.85M |
| [xwin-finance](./xwin-finance/brief.md) | $4.94M | arbitrum, bsc, polygon | 19 | 18/19 (95%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $1.84M |
| [treehouse-protocol](./treehouse-protocol/brief.md) | $87.67M | ethereum | 77 | 68/77 (88%) | 42.6% | 16.2% (Trail of Bits) | 16 | fresh | ⚠️ declining | $1.80M |
| [dtrinity](./dtrinity/brief.md) | $2.30M | ethereum, fraxtal, sonic | 209 | 88/209 (42%) | 18.0% | 0.0% (-) | 1 | unknown | ✅ active | $1.73M |
| [eventum-bridge](./eventum-bridge/brief.md) | $2.82M | arbitrum, ethereum | 28 | 26/28 (93%) | 3.8% | 0.0% (-) | 1 | fresh | ✅ active | $1.64M |
| [clever](./clever/brief.md) | $5.61M | ethereum | 76 | 66/76 (87%) | 10.6% | 0.0% (-) | 3 | stale | ✅ active | $1.59M |
| [sqd.ai](./sqd.ai/brief.md) | $23.18M | 4 | 28 | 25/28 (89%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.58M |
| [elephant-money](./elephant-money/brief.md) | $79.15M | bsc | 346 | 153/346 (44%) | 5.9% | 0.0% (-) | 1 | stale | ⚠️ declining | $1.57M |
| [templar-dao](./templar-dao/brief.md) | $2.18M | bsc, moonriver | 41 | 26/41 (63%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.55M |
| [zircuit-finance](./zircuit-finance/brief.md) | $1.52M | base, ethereum | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.51M |
| [easedefi.org](./easedefi.org/brief.md) | $3.61M | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $1.48M |
| [seer](./seer/brief.md) | $828.65K | ethereum, gnosis | 187 | 42/187 (22%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.48M |
| [predict-fun](./predict-fun/brief.md) | $16.83M | blast, bsc | 42 | 27/42 (64%) | 7.4% | 7.4% (Cyfrin) | 2 | fresh | ✅ active | $1.47M |
| [sashimiswap](./sashimiswap/brief.md) | $4.56M | bsc, ethereum, heco | 62 | 32/62 (52%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.44M |
| [taiko-bridge](./taiko-bridge/brief.md) | $12.76M | ethereum | 56 | 48/56 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.42M |
| [shardingdao](./shardingdao/brief.md) | $6.28M | ethereum | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.38M |
| [bunny](./bunny/brief.md) | $3.32M | bsc, polygon | 101 | 73/101 (72%) | 9.6% | 0.0% (-) | 1 | stale | ⚠️ declining | $1.36M |
| [shapeshift](./shapeshift/brief.md) | $1.60M | 4 | 40 | 28/40 (70%) | 10.7% | 0.0% (-) | 2 | stale | ✅ active | $1.34M |
| [rezerve](./rezerve/brief.md) | $2.63M | ethereum, sonic | 104 | 80/104 (77%) | 1.3% | 0.0% (-) | 1 | aging | ✅ active | $1.34M |
| [reflexer](./reflexer/brief.md) | $1.83M | ethereum | 70 | 28/70 (40%) | 46.4% | 14.3% (OpenZeppelin) | 4 | stale | ⚠️ declining | $1.28M |
| [dforce](./dforce/brief.md) | $12.55M | 8 | 453 | 102/453 (23%) | 36.3% | 35.4% (Certora, ConsenSys Diligence, Trail of Bits) | 4 | stale | ⚠️ declining | $1.23M |
| [suzaku](./suzaku/brief.md) | $1.08M | avalanche | 52 | 24/52 (46%) | 8.3% | 8.3% (ChainSecurity) | 1 | stale | ✅ active | $1.18M |
| [alphax](./alphax/brief.md) | $1.48M | arbitrum, bsc, ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.15M |
| [mcdex](./mcdex/brief.md) | $943.03K | 6 | 1465 | 150/1465 (10%) | 8.3% | 0.0% (-) | 1 | aging | 💀 dead | $1.13M |
| [ocean-point](./ocean-point/brief.md) | $948.06K | ethereum | 35 | 22/35 (63%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.08M |
| [opyn](./opyn/brief.md) | $1.60M | avalanche, ethereum, polygon | 105 | 35/105 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $1.02M |
| [defil](./defil/brief.md) | $1.80M | bsc, ethereum | 52 | 38/52 (73%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $1.01M |
| [flex](./flex/brief.md) | $2.55M | ethereum | 15 | 15/15 (100%) | 33.3% | 0.0% (-) | 3 | fresh | ❓ unknown | $1.00M |
| [twyne](./twyne/brief.md) | $2.48M | ethereum | 59 | 52/59 (88%) | 3.8% | 0.0% (-) | 1 | fresh | ✅ active | $985.72K |
| [peapods-finance](./peapods-finance/brief.md) | $6.98M | 6 | 130 | 46/130 (35%) | 53.1% | 0.0% (-) | 4 | aging | ⚠️ declining | $949.46K |
| [bend](./bend/brief.md) | $12.59M | berachain, ethereum | 104 | 58/104 (56%) | 20.7% | 20.7% (Spearbit) | 2 | fresh | ✅ active | $896.83K |
| [mux-protocol](./mux-protocol/brief.md) | $9.67M | 5 | 1198 | 108/1198 (9%) | 21.7% | 0.0% (-) | 2 | aging | ✅ active | $861.97K |
| [paal-ai](./paal-ai/brief.md) | $1.61M | ethereum | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $830.13K |
| [orbit-bridge](./orbit-bridge/brief.md) | $15.31M | 6 | 24 | 5/24 (21%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $829.87K |
| [yield-yak](./yield-yak/brief.md) | $13.74M | arbitrum, avalanche, mantle | 64 | 28/64 (44%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $772.19K |
| [notional](./notional/brief.md) | $3.59M | arbitrum, ethereum | 79 | 73/79 (92%) | 19.2% | 19.2% (Sherlock) | 4 | fresh | ⚠️ declining | $755.74K |
| [glif](./glif/brief.md) | $25.41M | base | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $726.98K |
| [anthias-labs](./anthias-labs/brief.md) | $18.65M | base | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $705.35K |
| [unitas](./unitas/brief.md) | $59.86M | bsc | 12 | 5/12 (42%) | 60.0% | 60.0% (SlowMist) | 3 | fresh | ✅ active | $704.69K |
| [silo-finance](./silo-finance/brief.md) | $92.12M | 6 | 529 | 127/529 (24%) | 15.7% | 4.5% (Spearbit) | 8 | fresh | ❓ unknown | $641.32K |
| [bakeryswap](./bakeryswap/brief.md) | $2.89M | bsc | 100 | 55/100 (55%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $612.86K |
| [biswap](./biswap/brief.md) | $5.18M | 4 | 92 | 15/92 (16%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $609.28K |
| [radiant](./radiant/brief.md) | $3.85M | 4 | 390 | 147/390 (38%) | 31.6% | 26.3% (OpenZeppelin) | 6 | fresh | 💀 dead | $515.03K |
| [pulsechain](./pulsechain/brief.md) | $48.05M | ethereum | 7 | 6/7 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $475.40K |
| [pulsechain-bridge](./pulsechain-bridge/brief.md) | $48.05M | ethereum | 7 | 6/7 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $475.40K |
| [arbitrum-nova-bridge](./arbitrum-nova-bridge/brief.md) | $14.74M | ethereum | 59 | 51/59 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $447.17K |
| [apex-protocol](./apex-protocol/brief.md) | $35.17M | 8 | 210 | 90/210 (43%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $436.45K |
| [camelot](./camelot/brief.md) | $26.05M | arbitrum | 118 | 51/118 (43%) | 17.6% | 0.0% (-) | 1 | stale | ✅ active | $391.94K |
| [latch](./latch/brief.md) | $1.56M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $375.75K |
| [equalizer](./equalizer/brief.md) | $861.05K | base, fantom, sonic | 295 | 52/295 (18%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $374.84K |
| [vesper](./vesper/brief.md) | $44.44M | ethereum | 44 | 39/44 (89%) | 51.3% | 0.0% (-) | 25 | stale | ✅ active | $351.72K |
| [bmx](./bmx/brief.md) | $2.76M | base, mode, sonic | 187 | 136/187 (73%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $316.41K |
| [yieldnest](./yieldnest/brief.md) | $22.86M | 7 | 33 | 28/33 (85%) | 44.8% | 31.0% (ChainSecurity) | 12 | aging | ✅ active | $295.09K |
| [strata](./strata/brief.md) | $97.42M | ethereum | 39 | 38/39 (97%) | 31.6% | 28.9% (Cyfrin) | 3 | fresh | ✅ active | $289.60K |
| [tokenstore](./tokenstore/brief.md) | $1.33M | ethereum | 44 | 2/44 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $265.68K |
| [lynex](./lynex/brief.md) | $882.39K | linea | 45 | 44/45 (98%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $261.97K |
| [reserve-protocol](./reserve-protocol/brief.md) | $82.52M | 4 | 329 | 110/329 (33%) | 53.9% | 19.1% (Code4rena, Spearbit) | 24 | fresh | ⚠️ declining | $255.21K |
| [acryptos](./acryptos/brief.md) | $10.55M | bsc | 311 | 88/311 (28%) | 25.0% | 0.0% (-) | 4 | stale | ✅ active | $253.01K |
| [block-analitica](./block-analitica/brief.md) | $39.14M | 4 | 20 | 18/20 (90%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $252.83K |
| [babyswap](./babyswap/brief.md) | $1.34M | bsc | 113 | 65/113 (58%) | 1.5% | 0.0% (-) | 1 | stale | ✅ active | $241.08K |
| [universe-xyz](./universe-xyz/brief.md) | $1.63M | ethereum | 34 | 23/34 (68%) | 21.7% | 0.0% (-) | 2 | stale | 💀 dead | $216.12K |
| [ailayer-farm](./ailayer-farm/brief.md) | $65.67M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $211.86K |
| [bob-bridge](./bob-bridge/brief.md) | $3.57M | ethereum | 41 | 39/41 (95%) | 2.6% | 0.0% (-) | 1 | fresh | ✅ active | $202.90K |
| [rook](./rook/brief.md) | $1.45M | ethereum | 75 | 67/75 (89%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $190.12K |
| [mansory](./mansory/brief.md) | $6.18M | bsc | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $170.02K |
| [tarot](./tarot/brief.md) | $1.14M | 12 | 139 | 41/139 (29%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | $154.44K |
| [thruster](./thruster/brief.md) | $4.86M | blast | 26 | 19/26 (73%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $112.99K |
| [elyfi](./elyfi/brief.md) | $2.15M | bsc, ethereum, klaytn | 39 | 25/39 (64%) | 4.0% | 0.0% (-) | 1 | stale | 💀 dead | $103.07K |
| [ratex](./ratex/brief.md) | $3.18M | bsc | 168 | 91/168 (54%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $98.79K |
| [kromatika](./kromatika/brief.md) | $976.31K | 4 | 30 | 16/30 (53%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $83.80K |
| [b.protocol](./b.protocol/brief.md) | $1.78M | 4 | 162 | 97/162 (60%) | 5.1% | 0.0% (-) | 4 | stale | ⚠️ declining | $79.00K |
| [moola-market](./moola-market/brief.md) | $1.21M | celo | 53 | 37/53 (70%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $73.92K |
| [foxify](./foxify/brief.md) | $3.46M | arbitrum, sonic | 7 | 5/7 (71%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $72.65K |
| [csigma-finance](./csigma-finance/brief.md) | $12.66M | arbitrum, base, ethereum | 50 | 38/50 (76%) | 41.0% | 0.0% (-) | 3 | aging | ✅ active | $65.57K |
| [mento](./mento/brief.md) | $13.58M | celo | 218 | 93/218 (43%) | 61.1% | 51.6% (ChainSecurity, Cyfrin, OpenZeppelin) | 8 | fresh | ⚠️ declining | $64.99K |
| [privacy-cash](./privacy-cash/brief.md) | $1.79M | base, ethereum | 8 | 3/8 (38%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $62.79K |
| [privacy-pools](./privacy-pools/brief.md) | $8.13M | arbitrum, ethereum, optimism | 5 | 5/5 (100%) | 20.0% | 0.0% (-) | 3 | aging | ✅ active | $54.36K |
| [hegic](./hegic/brief.md) | $8.51M | arbitrum, ethereum | 76 | 40/76 (53%) | 22.5% | 0.0% (-) | 2 | stale | ✅ active | $54.07K |
| [hemi](./hemi/brief.md) | $1.26M | bsc, ethereum, optimism | 47 | 37/47 (79%) | 2.7% | 0.0% (-) | 2 | fresh | ❓ unknown | $49.57K |
| [wombat-exchange](./wombat-exchange/brief.md) | $1.65M | 8 | 96 | 50/96 (52%) | 32.7% | 7.3% (SlowMist) | 9 | aging | ⚠️ declining | $47.82K |
| [sofa.org](./sofa.org/brief.md) | $2.46M | ethereum | 38 | 36/38 (95%) | 33.3% | 30.6% (Code4rena) | 6 | aging | ⚠️ declining | $46.78K |
| [hemibtc](./hemibtc/brief.md) | $10.78M | bsc, ethereum, optimism | 46 | 36/46 (78%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $46.20K |
| [ultron-staking-hub-nft](./ultron-staking-hub-nft/brief.md) | $3.00M | 5 | 150 | 6/150 (4%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $43.46K |
| [satori-finance](./satori-finance/brief.md) | $1.27M | 6 | 40 | 6/40 (15%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $40.94K |
| [dinari](./dinari/brief.md) | $10.83M | 4 | 71 | 31/71 (44%) | 37.5% | 15.6% (Sherlock) | 3 | aging | ⚠️ declining | $36.60K |
| [stake.link](./stake.link/brief.md) | $79.77M | 4 | 71 | 46/71 (65%) | 60.9% | 45.7% (Cyfrin) | 18 | fresh | ✅ active | $35.91K |
| [seamless-protocol](./seamless-protocol/brief.md) | $46.49M | base, ethereum | 99 | 88/99 (89%) | 9.1% | 9.1% (Sherlock, Spearbit) | 5 | fresh | 💀 dead | $34.75K |
| [landx-finance](./landx-finance/brief.md) | $1.77M | ethereum | 11 | 11/11 (100%) | 27.3% | 0.0% (-) | 1 | stale | ✅ active | $27.34K |
| [neo-tokyo](./neo-tokyo/brief.md) | $882.26K | ethereum | 87 | 39/87 (45%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $26.80K |
| [gamma](./gamma/brief.md) | $3.71M | 23 | 467 | 90/467 (19%) | 27.6% | 1.9% (ConsenSys Diligence) | 8 | fresh | ✅ active | $24.28K |
| [kuma-protocol](./kuma-protocol/brief.md) | $3.08M | 4 | 53 | 32/53 (60%) | 28.1% | 28.1% (Code4rena) | 1 | stale | ✅ active | $23.14K |
| [bscswap](./bscswap/brief.md) | $4.58M | bsc | 24 | 16/24 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $20.27K |
| [mdex](./mdex/brief.md) | $1.37M | bsc, heco | 13 | 7/13 (54%) | 85.7% | 85.7% (SlowMist) | 3 | stale | ⚠️ declining | $20.17K |
| [chateau](./chateau/brief.md) | $1.04M | hyperliquid, plasma | 5 | 3/5 (60%) | 33.3% | 0.0% (-) | 1 | fresh | ✅ active | $19.06K |
| [clearpool](./clearpool/brief.md) | $34.32M | 7 | 63 | 24/63 (38%) | 7.1% | 0.0% (-) | 1 | aging | ✅ active | $17.58K |
| [etherfuse](./etherfuse/brief.md) | $654.43K | base, polygon | 26 | 5/26 (19%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $16.18K |
| [asseto-cash+](./asseto-cash+/brief.md) | $1.40M | bsc, ethereum | 4 | 3/4 (75%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $15.35K |
| [stout](./stout/brief.md) | $2.08M | sonic | 136 | 50/136 (37%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $12.61K |
| [yo-protocol](./yo-protocol/brief.md) | $42.55M | arbitrum, base, ethereum | 20 | 16/20 (80%) | 56.3% | 6.3% (Spearbit) | 5 | fresh | ⚠️ declining | $12.57K |
| [accumulated-finance](./accumulated-finance/brief.md) | $1.56M | 5 | 43 | 35/43 (81%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $12.19K |
| [pepeteam](./pepeteam/brief.md) | $1.03M | bsc, ethereum, polygon | 21 | 20/21 (95%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $11.09K |
| [anzen-finance](./anzen-finance/brief.md) | $7.53M | 5 | 47 | 39/47 (83%) | 35.9% | 0.0% (-) | 4 | aging | ⚠️ declining | $10.86K |
| [ellipsis-finance](./ellipsis-finance/brief.md) | $1.10M | bsc | 22 | 17/22 (77%) | 29.4% | 0.0% (-) | 2 | stale | 💀 dead | $8.97K |
| [lendle](./lendle/brief.md) | $1.13M | mantle | 64 | 44/64 (69%) | 43.2% | 0.0% (-) | 1 | fresh | ⚠️ declining | $5.56K |
| [hakka-finance](./hakka-finance/brief.md) | $3.70M | bsc, ethereum, polygon | 41 | 38/41 (93%) | 23.7% | 0.0% (-) | 6 | stale | ✅ active | $5.43K |
| [team-finance](./team-finance/brief.md) | $45.16M | 13 | 66 | 3/66 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $5.41K |
| [wan-bridge](./wan-bridge/brief.md) | $24.28M | 17 | 135 | 49/135 (36%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $4.60K |
| [sdai](./sdai/brief.md) | $70.69M | ethereum, gnosis | 103 | 58/103 (56%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.25K |
| [azuro](./azuro/brief.md) | $1.07M | 6 | 304 | 55/304 (18%) | 6.6% | 0.0% (-) | 3 | aging | ✅ active | $3.14K |
| [arrakis-finance](./arrakis-finance/brief.md) | $77.24M | 9 | 124 | 101/124 (81%) | 19.4% | 3.9% (Sherlock) | 6 | stale | ✅ active | $3.07K |
| [injective-bridge](./injective-bridge/brief.md) | $12.35M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.62K |
| [deltaprime](./deltaprime/brief.md) | $3.66M | arbitrum, avalanche | 482 | 173/482 (36%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.57K |
| [deri](./deri/brief.md) | $7.31M | 12 | 868 | 94/868 (11%) | 13.9% | 0.0% (-) | 6 | aging | ✅ active | $2.40K |
| [tranchess](./tranchess/brief.md) | $5.74M | bsc, ethereum, scroll | 135 | 101/135 (75%) | 23.8% | 0.0% (-) | 8 | stale | 💀 dead | $1.94K |
| [credbull](./credbull/brief.md) | $10.94M | arbitrum, polygon | 83 | 82/83 (99%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.89K |
| [superform](./superform/brief.md) | $33.18M | 6 | 158 | 117/158 (74%) | 19.7% | 0.0% (-) | 2 | fresh | ✅ active | $1.88K |
| [goose](./goose/brief.md) | $12.78M | arbitrum, ethereum, opbnb | 11 | 5/11 (45%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.57K |
| [lendflare](./lendflare/brief.md) | $1.14M | ethereum | 74 | 38/74 (51%) | 5.3% | 0.0% (-) | 1 | stale | ⚠️ declining | $1.05K |
| [shadow-exchange](./shadow-exchange/brief.md) | $5.27M | sonic | 84 | 51/84 (61%) | 21.6% | 21.6% (Spearbit) | 1 | fresh | ⚠️ declining | $999.84 |
| [spookyswap](./spookyswap/brief.md) | $1.17M | fantom, sonic | 145 | 44/145 (30%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $842.67 |
| [yamato-protocol](./yamato-protocol/brief.md) | $1.44M | ethereum | 63 | 46/63 (73%) | 47.8% | 0.0% (-) | 3 | aging | ✅ active | $818.32 |
| [proxy](./proxy/brief.md) | $19.96M | ethereum, polygon | 278 | 12/278 (4%) | 8.3% | 0.0% (-) | 1 | stale | ✅ active | $735.64 |
| [nest-credit](./nest-credit/brief.md) | $51.94M | 4 | 20 | 10/20 (50%) | 54.5% | 18.2% (Spearbit) | 3 | fresh | ✅ active | $693.42 |
| [morpheusai](./morpheusai/brief.md) | $20.74M | arbitrum, base, ethereum | 51 | 51/51 (100%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $621.83 |
| [blast-l2](./blast-l2/brief.md) | $52.15M | blast, ethereum | 295 | 89/295 (30%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $568.85 |
| [nerve](./nerve/brief.md) | $1.47M | bsc, ethereum | 66 | 22/66 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $508.66 |
| [badger-dao](./badger-dao/brief.md) | $7.77M | 4 | 40 | 37/40 (93%) | 21.6% | 8.1% (Code4rena) | 5 | stale | ❓ unknown | $396.94 |
| [rank-trading](./rank-trading/brief.md) | $1.95M | bsc | 17 | 11/17 (65%) | 27.3% | 0.0% (-) | 1 | aging | ✅ active | $343.39 |
| [thena](./thena/brief.md) | $4.50M | bsc | 131 | 108/131 (82%) | 10.2% | 2.8% (OpenZeppelin) | 2 | fresh | ⚠️ declining | $208.19 |
| [multichain](./multichain/brief.md) | $44.47M | ethereum | 17 | 14/17 (82%) | 42.9% | 0.0% (-) | 3 | stale | 💀 dead | $128.81 |
| [goplus-security](./goplus-security/brief.md) | $30.02M | 4 | 34 | 22/34 (65%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $65.34 |
| [unichain-bridge](./unichain-bridge/brief.md) | $2.19M | ethereum, unichain | 39 | 39/39 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $44.27 |
| [gondi](./gondi/brief.md) | $752.46K | ethereum, hyperliquid | 30 | 15/30 (50%) | 20.0% | 0.0% (-) | 2 | fresh | ✅ active | $35.59 |
| [ankr](./ankr/brief.md) | $17.64M | 5 | 25 | 18/25 (72%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $32.80 |
| [symmio](./symmio/brief.md) | $3.35M | 8 | 169 | 61/169 (36%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $25.48 |
| [toupee.tech](./toupee.tech/brief.md) | $4.94M | base | 29 | 25/29 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $24.29 |
| [noon](./noon/brief.md) | $30.42M | ethereum, hyperliquid, zksync-era | 40 | 30/40 (75%) | 3.3% | 0.0% (-) | 1 | aging | ✅ active | $17.99 |
| [angles](./angles/brief.md) | $1.01M | sonic | 40 | 25/40 (63%) | 4.0% | 4.0% (Spearbit) | 1 | aging | ✅ active | $7.53 |
| [acre](./acre/brief.md) | $4.27M | ethereum | 220 | 207/220 (94%) | 0.5% | 0.0% (-) | 2 | aging | ✅ active | $3.02 |
| [xfai](./xfai/brief.md) | $835.47K | linea | 54 | 20/54 (37%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.00 |
| [plasma-one](./plasma-one/brief.md) | $5.46M | plasma | 7 | 5/7 (71%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $0.62 |
| [swamp-finance](./swamp-finance/brief.md) | $1.20M | bsc | 11 | 7/11 (64%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $0.09 |
| [virtuals-protocol](./virtuals-protocol/brief.md) | $27.33M | base | 65 | 57/65 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $0.04 |
| [kinza-finance](./kinza-finance/brief.md) | $7.78M | 4 | 154 | 50/154 (32%) | 2.0% | 0.0% (-) | 1 | stale | ⚠️ declining | $0.01 |
| [syncswap-protocol](./syncswap-protocol/brief.md) | $8.24M | linea, scroll, zksync-era | 162 | 32/162 (20%) | 21.9% | 0.0% (-) | 3 | stale | ✅ active | $0.00 |
| [charm-finance](./charm-finance/brief.md) | $2.32M | 9 | 20 | 15/20 (75%) | 20.0% | 20.0% (Code4rena, Spearbit) | 4 | aging | ⚠️ declining | $0.00 |
| [snuggle](./snuggle/brief.md) | $1.00M | arbitrum, base | 88 | 51/88 (58%) | 23.5% | 0.0% (-) | 1 | fresh | ✅ active | $0.00 |
| [abracadabra](./abracadabra/brief.md) | $6.33M | 12 | 881 | 588/881 (67%) | 4.7% | 0.0% (-) | 4 | aging | ⚠️ declining | $0.00 |
| [rip.xyz](./rip.xyz/brief.md) | $1.04M | hyperliquid | 6 | 2/6 (33%) | 50.0% | 0.0% (-) | 1 | fresh | ✅ active | $0.00 |
| [0vix](./0vix/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [1sec](./1sec/brief.md) | $1.48M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [21.co](./21.co/brief.md) | $2.24 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [3f-mutual](./3f-mutual/brief.md) | $3.19M | ethereum | 38 | 35/38 (92%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [3xcalibur](./3xcalibur/brief.md) | $2.58K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [a51-finance](./a51-finance/brief.md) | $13.53K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [abc-pool](./abc-pool/brief.md) | $5.96M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [abel-finance](./abel-finance/brief.md) | $407.18K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [abyss](./abyss/brief.md) | $757.46K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [acala-euphrates](./acala-euphrates/brief.md) | $243.39K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [access-protocol](./access-protocol/brief.md) | $879.73K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [acet](./acet/brief.md) | $12.02K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [aegis](./aegis/brief.md) | $35.90M | bsc, ethereum | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [aera](./aera/brief.md) | $132.55M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [aftermath-finance](./aftermath-finance/brief.md) | $4.98M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [agile-finance](./agile-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aimstrong](./aimstrong/brief.md) | $184.80 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aitech](./aitech/brief.md) | $3.50M | bsc | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [akropolis](./akropolis/brief.md) | $5.83K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aladdin-dao](./aladdin-dao/brief.md) | $23.21K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [algoblocks](./algoblocks/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [algodex](./algodex/brief.md) | $2.72K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [algofi](./algofi/brief.md) | $651.63K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [alium-swap](./alium-swap/brief.md) | $15.04K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [alphafi](./alphafi/brief.md) | $193.33M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [alphasec](./alphasec/brief.md) | $496.73K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [alphbanx](./alphbanx/brief.md) | $391.93K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [altitude](./altitude/brief.md) | $32.96K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [altitude.fi](./altitude.fi/brief.md) | $13.71M | ethereum | 124 | 18/124 (15%) | 72.2% | 0.0% (-) | 6 | aging | ⚠️ declining | - |
| [ambient](./ambient/brief.md) | $2.70M | 5 | 30 | 17/30 (57%) | 64.7% | 0.0% (-) | 2 | stale | ⚠️ declining | - |
| [amet-finance](./amet-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [amnis-finance](./amnis-finance/brief.md) | $11.92M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [amped-finance](./amped-finance/brief.md) | $370.35 | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [ampleswap](./ampleswap/brief.md) | $16.05K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [amy-finance](./amy-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [animal-farm](./animal-farm/brief.md) | $66.92K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [antarctic](./antarctic/brief.md) | $9.96M | arbitrum | 11 | 8/11 (73%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [anvil](./anvil/brief.md) | $17.52M | ethereum | 3 | 3/3 (100%) | 100.0% | 100.0% (OpenZeppelin, Trail of Bits) | 3 | fresh | ⚠️ declining | - |
| [ao-bridge](./ao-bridge/brief.md) | $43.01M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [aperocket](./aperocket/brief.md) | $36.31K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [apollodao](./apollodao/brief.md) | $6.52K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [aptin-finance](./aptin-finance/brief.md) | $13.98M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aqua-protocol](./aqua-protocol/brief.md) | $112.27 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aquabank](./aquabank/brief.md) | $850.20K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [arbitrum-exchange](./arbitrum-exchange/brief.md) | $11.87K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [arcade.xyz](./arcade.xyz/brief.md) | $5.12M | ethereum | 60 | 43/60 (72%) | 67.4% | 30.2% (Trail of Bits) | 10 | stale | ⚠️ declining | - |
| [arcadia-finance](./arcadia-finance/brief.md) | $7.21M | base, optimism, unichain | 55 | 52/55 (95%) | 63.5% | 53.8% (Sherlock) | 12 | fresh | ✅ active | - |
| [arch](./arch/brief.md) | $479.45K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [arche](./arche/brief.md) | $2.32K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [arche-protocol](./arche-protocol/brief.md) | $6.38K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [archerswap](./archerswap/brief.md) | $46.61K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [arenaswap](./arenaswap/brief.md) | $31.22K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [argano](./argano/brief.md) | $3.98 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [aria-protocol](./aria-protocol/brief.md) | $181.05K | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [arkis](./arkis/brief.md) | $76.03M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [artura-finance](./artura-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aspida](./aspida/brief.md) | $1.90K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [asseto-aoabt](./asseto-aoabt/brief.md) | $24.28M | avalanche | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [astake](./astake/brief.md) | $514.74K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [atlantis](./atlantis/brief.md) | $13.61K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [atlantis-loans](./atlantis-loans/brief.md) | $42.00K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [atoll](./atoll/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [atrium](./atrium/brief.md) | $390.93K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [augmented-finance](./augmented-finance/brief.md) | $326.65 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [augur](./augur/brief.md) | $1.67M | ethereum | 39 | 39/39 (100%) | 64.1% | 15.4% (ChainSecurity) | 4 | stale | ✅ active | - |
| [aurigami](./aurigami/brief.md) | $819.01K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [auro-finance](./auro-finance/brief.md) | $5.41K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aurora-plus](./aurora-plus/brief.md) | $1.68M | aurora | 31 | 3/31 (10%) | 33.3% | 0.0% (-) | 2 | stale | ✅ active | - |
| [autofarm](./autofarm/brief.md) | $5.60M | 14 | 17 | 9/17 (53%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [avalaunch](./avalaunch/brief.md) | $6.84M | avalanche | 38 | 13/38 (34%) | 84.6% | 0.0% (-) | 13 | stale | ✅ active | - |
| [avalon-labs](./avalon-labs/brief.md) | $550.83M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [avely-finance](./avely-finance/brief.md) | $45.01K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [avnu](./avnu/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [avon-megavault](./avon-megavault/brief.md) | $36.60K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [axedao](./axedao/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aztec-connect](./aztec-connect/brief.md) | $4.31M | ethereum | 8 | 8/8 (100%) | 37.5% | 0.0% (-) | 2 | stale | ✅ active | - |
| [backbone-labs](./backbone-labs/brief.md) | $232.54K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [baksdao](./baksdao/brief.md) | $181.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ball-exchange](./ball-exchange/brief.md) | $0.04 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [baptswap](./baptswap/brief.md) | $5.21K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [based-finance](./based-finance/brief.md) | $189.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [baseline-protocol](./baseline-protocol/brief.md) | $69.26M | base, blast, ethereum | 112 | 4/112 (4%) | 25.0% | 0.0% (-) | 1 | aging | ✅ active | - |
| [basemax](./basemax/brief.md) | $0.02 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [basisos](./basisos/brief.md) | $24.21K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [bass-exchange](./bass-exchange/brief.md) | $248.45K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bayswap](./bayswap/brief.md) | $9.97K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [beam-dex](./beam-dex/brief.md) | $846.77 | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [beamswap](./beamswap/brief.md) | $26.09K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [becoswap](./becoswap/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bedrock](./bedrock/brief.md) | $306.57M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [belief-market](./belief-market/brief.md) | $35.21 | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [bella-protocol](./bella-protocol/brief.md) | $150.22K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [benddao](./benddao/brief.md) | $7.15M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bido-finance](./bido-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bifi](./bifi/brief.md) | $7.43M | avalanche, ethereum, klaytn | 170 | 45/170 (26%) | 30.4% | 0.0% (-) | 3 | stale | ✅ active | - |
| [bifrost-liquid-staking](./bifrost-liquid-staking/brief.md) | $16.70M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bigone](./bigone/brief.md) | $35.10M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bima-cdp](./bima-cdp/brief.md) | $5.32M | bsc, ethereum, sonic | 37 | 29/37 (78%) | 51.6% | 51.6% (Cyfrin, Spearbit) | 3 | aging | ✅ active | - |
| [binance-staked-eth](./binance-staked-eth/brief.md) | $6145.36M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [binance-staked-sol](./binance-staked-sol/brief.md) | $725.81M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [binaryx-platform](./binaryx-platform/brief.md) | $8.65M | polygon | 133 | 25/133 (19%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [binlayer](./binlayer/brief.md) | $386.35 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bitchill](./bitchill/brief.md) | $19.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [bitlo](./bitlo/brief.md) | $16.66M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitmap-game](./bitmap-game/brief.md) | $36.88K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitomato](./bitomato/brief.md) | $2.60M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitty](./bitty/brief.md) | $5.52K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitu-protocol](./bitu-protocol/brief.md) | $19.55M | bsc | 5 | 5/5 (100%) | 60.0% | 60.0% (SlowMist) | 2 | stale | ✅ active | - |
| [bitvenus](./bitvenus/brief.md) | $20.90M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitzy](./bitzy/brief.md) | $49.15K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [blackhole](./blackhole/brief.md) | $29.69M | avalanche | 86 | 45/86 (52%) | 31.1% | 31.1% (Code4rena) | 3 | fresh | ⚠️ declining | - |
| [blasterswap](./blasterswap/brief.md) | $302.51K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [blend](./blend/brief.md) | $213.08M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [blend-money](./blend-money/brief.md) | $8.55K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [blueshift](./blueshift/brief.md) | $3.45M | kava, polygon | 23 | 2/23 (9%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [bnpl-pay](./bnpl-pay/brief.md) | $23.19K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [boba-bridge](./boba-bridge/brief.md) | $2.79M | ethereum | 57 | 45/57 (79%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [bondappetit](./bondappetit/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bondlink-finance](./bondlink-finance/brief.md) | $151.99K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [boneswap](./boneswap/brief.md) | $1.36K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bonsai-strike](./bonsai-strike/brief.md) | $6.41K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bonsaidao-ecosystem](./bonsaidao-ecosystem/brief.md) | $995.67K | 4 | 201 | 96/201 (48%) | 5.2% | 0.0% (-) | 3 | aging | ✅ active | - |
| [bonzo-finance](./bonzo-finance/brief.md) | $22.97M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [bookusd](./bookusd/brief.md) | $39.22K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [boringdao](./boringdao/brief.md) | $275.70K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [boros](./boros/brief.md) | $10.31M | arbitrum | 2 | 2/2 (100%) | 100.0% | 100.0% (ChainSecurity) | 3 | fresh | ✅ active | - |
| [botto](./botto/brief.md) | $2.92M | base, ethereum | 19 | 14/19 (74%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [bounce.tech](./bounce.tech/brief.md) | $1.12M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [bouncebit-pre-launch-farm](./bouncebit-pre-launch-farm/brief.md) | $0.12 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bouncebit-prime](./bouncebit-prime/brief.md) | $11.94M | bsc, ethereum | 9 | 2/9 (22%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [brahma-vaults-(sunset)](./brahma-vaults-(sunset)/brief.md) | $22.37K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [brasa-finance](./brasa-finance/brief.md) | $1.16M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [brickken](./brickken/brief.md) | $42.20M | 4 | 31 | 7/31 (23%) | 20.0% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [bridge-mutual](./bridge-mutual/brief.md) | $56.21K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bridgers](./bridgers/brief.md) | $1.72M | 16 | 11 | 1/11 (9%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [bright-union](./bright-union/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [broswap](./broswap/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [brownfi](./brownfi/brief.md) | $123.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bscstation](./bscstation/brief.md) | $1.92K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [btcfi](./btcfi/brief.md) | $9.64M | base | 15 | 1/15 (7%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [btse](./btse/brief.md) | $1.53M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bucket-protocol](./bucket-protocol/brief.md) | $65.13M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [buffaloswap](./buffaloswap/brief.md) | $14.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [buffer-finance](./buffer-finance/brief.md) | $178.17 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bulbaswap](./bulbaswap/brief.md) | $9.04M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bundie](./bundie/brief.md) | $54.46 | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [bunnypark](./bunnypark/brief.md) | $0.45 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [burve](./burve/brief.md) | $41.74K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [burve-protocol](./burve-protocol/brief.md) | $10.50K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [butter-network](./butter-network/brief.md) | $1.28M | 12 | 10 | 2/10 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [buttonwood](./buttonwood/brief.md) | $380.49K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bydfi](./bydfi/brief.md) | $72.15M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [byte-exchange](./byte-exchange/brief.md) | $41.68M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [c14](./c14/brief.md) | $2.57K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cache.gold](./cache.gold/brief.md) | $525.93K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [caddy-finance](./caddy-finance/brief.md) | $173.42 | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [cana-holdings-california-carbon-credits](./cana-holdings-california-carbon-credits/brief.md) | $886.31K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [canopy](./canopy/brief.md) | $1.34M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [canto-lending](./canto-lending/brief.md) | $3.03M | canto, ethereum | 84 | 2/84 (2%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [carbon-defi](./carbon-defi/brief.md) | $2.92M | 4 | 158 | 52/158 (33%) | 30.9% | 27.3% (ChainSecurity) | 4 | aging | ✅ active | - |
| [carina](./carina/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [carrot](./carrot/brief.md) | $288.88K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [catsluck](./catsluck/brief.md) | $2.96K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cavalre](./cavalre/brief.md) | $10.19K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cellana-finance](./cellana-finance/brief.md) | $520.50K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cells-finance](./cells-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [centrifuge](./centrifuge/brief.md) | $1797.94M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cex.io](./cex.io/brief.md) | $12.10M | bsc, ethereum, polygon | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [cgo-finance](./cgo-finance/brief.md) | $1.23M | cronos | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [chadfinance](./chadfinance/brief.md) | $78.23 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [chain-fusion](./chain-fusion/brief.md) | $18.16M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [chainflip](./chainflip/brief.md) | $35.88M | arbitrum, ethereum | 12 | 11/12 (92%) | 27.3% | 27.3% (Trail of Bits) | 1 | stale | ✅ active | - |
| [chainge-finance](./chainge-finance/brief.md) | $12.14M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [chaingpt](./chaingpt/brief.md) | $3.83M | 8 | 94 | 8/94 (9%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [champion-finance](./champion-finance/brief.md) | $23.86 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [chat3](./chat3/brief.md) | $6.21K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [chedda-finance](./chedda-finance/brief.md) | $7.76K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cherrylend](./cherrylend/brief.md) | $6.60K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [chewyswap](./chewyswap/brief.md) | $9.55K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [chfry-finance](./chfry-finance/brief.md) | $18.68K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [chi-protocol](./chi-protocol/brief.md) | $7.77K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [chiliswap](./chiliswap/brief.md) | $561.21 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [choice-exchange](./choice-exchange/brief.md) | $308.91K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [chromatic-protocol](./chromatic-protocol/brief.md) | $3.39K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [circuit](./circuit/brief.md) | $198.70K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [citadelswap](./citadelswap/brief.md) | $3.85K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [citrea-bridge](./citrea-bridge/brief.md) | $6.64M | ethereum | 3 | 2/3 (67%) | 50.0% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [clarity](./clarity/brief.md) | $308.21K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [clave](./clave/brief.md) | $7.38K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [clober](./clober/brief.md) | $516.46K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [coin8](./coin8/brief.md) | $53.74M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [coinsquare](./coinsquare/brief.md) | $8.99M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [coinstore](./coinstore/brief.md) | $62.21M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [coinw](./coinw/brief.md) | $1.11M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [colafactory](./colafactory/brief.md) | $673.56 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [colend-protocol](./colend-protocol/brief.md) | $4.19M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [collection.xyz](./collection.xyz/brief.md) | $652.52 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [commodo](./commodo/brief.md) | $5.27K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [concrete](./concrete/brief.md) | $789.88M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [conic-finance](./conic-finance/brief.md) | $52.38K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [convex-finance](./convex-finance/brief.md) | $657.98M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [conveyor](./conveyor/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [copump](./copump/brief.md) | $1.66K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [core-bridge](./core-bridge/brief.md) | $3.82M | 6 | 6 | 1/6 (17%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [corepound](./corepound/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [coti-treasury](./coti-treasury/brief.md) | $9.89M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cougarswap](./cougarswap/brief.md) | $54.37K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cozy-finance](./cozy-finance/brief.md) | $1.97M | ethereum, optimism | 64 | 6/64 (9%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [crabada](./crabada/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cron-finance](./cron-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cropper](./cropper/brief.md) | $113.08K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [crown-finance](./crown-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cryptex-finance](./cryptex-finance/brief.md) | $631.36K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [crypto.com-liquid-staking](./crypto.com-liquid-staking/brief.md) | $20.02M | cronos, ethereum | 2 | 1/2 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [cvi-finance](./cvi-finance/brief.md) | $131.47K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cyberperp](./cyberperp/brief.md) | $26.96K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cyborgswap](./cyborgswap/brief.md) | $28.42K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cybro](./cybro/brief.md) | $103.90K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [cyclo](./cyclo/brief.md) | $183.26K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [cytonic-airdrop-campaign](./cytonic-airdrop-campaign/brief.md) | $175.34K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dackieswap](./dackieswap/brief.md) | $52.54K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [darkcrypto](./darkcrypto/brief.md) | $19.77K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [darkness](./darkness/brief.md) | $7.65K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [ddex](./ddex/brief.md) | $526.43K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [decibel](./decibel/brief.md) | $41.88M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [deepbook](./deepbook/brief.md) | $12.91M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [defi-kingdoms](./defi-kingdoms/brief.md) | $7.69M | harmony, klaytn, metis | 8 | 1/8 (13%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [defi-swap](./defi-swap/brief.md) | $870.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [defichain-dex](./defichain-dex/brief.md) | $1.17M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [defiplaza](./defiplaza/brief.md) | $126.31K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [defirex](./defirex/brief.md) | $4.61K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [defituna](./defituna/brief.md) | $4.63M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [defrost](./defrost/brief.md) | $81.45K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [degate](./degate/brief.md) | $159.34 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dehive](./dehive/brief.md) | $114.51K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [deltatrade](./deltatrade/brief.md) | $92.37K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [demeter](./demeter/brief.md) | $281.27K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [denet-file-token](./denet-file-token/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [depth](./depth/brief.md) | $1.17M | heco | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [derivadex](./derivadex/brief.md) | $1.62M | ethereum | 8 | 6/8 (75%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [desyn-protocol](./desyn-protocol/brief.md) | $1.40M | ethereum, linea, mode | 15 | 5/15 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [dev-protocol](./dev-protocol/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [devil-finance](./devil-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dexalot](./dexalot/brief.md) | $7.90M | avalanche, bsc | 6 | 6/6 (100%) | 16.7% | 0.0% (-) | 2 | stale | ✅ active | - |
| [dexible-v2](./dexible-v2/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dexilla](./dexilla/brief.md) | $133.27 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dexioprotocol](./dexioprotocol/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dexlyn-labs](./dexlyn-labs/brief.md) | $80.39K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [dflow](./dflow/brief.md) | $1.49M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dfs-network](./dfs-network/brief.md) | $96.03K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dfx-finance](./dfx-finance/brief.md) | $110.95K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dipcoin](./dipcoin/brief.md) | $4.40M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ditto](./ditto/brief.md) | $33.10K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [djed-stablecoin](./djed-stablecoin/brief.md) | $5.37M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dnax](./dnax/brief.md) | $3.35M | bsc | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [dogeclaw](./dogeclaw/brief.md) | $11.49 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dolomite](./dolomite/brief.md) | $664.24M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [domination-finance](./domination-finance/brief.md) | $1.27M | 4 | 30 | 20/30 (67%) | 75.0% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [dooar](./dooar/brief.md) | $4.52M | bsc, ethereum, polygon | 6 | 2/6 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [dot-dot-finance](./dot-dot-finance/brief.md) | $3.09K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [doubler](./doubler/brief.md) | $107.03K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dpex](./dpex/brief.md) | $142.46 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [drachma-exchange](./drachma-exchange/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [drift](./drift/brief.md) | $187.88M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dsf.finance](./dsf.finance/brief.md) | $477.07K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dtx](./dtx/brief.md) | $5.44K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dungeonswap](./dungeonswap/brief.md) | $28.40K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dxsale](./dxsale/brief.md) | $17.94M | 12 | 358 | 8/358 (2%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [dyson-finance](./dyson-finance/brief.md) | $80.63K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [earnium](./earnium/brief.md) | $31.77K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [earnmos](./earnmos/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [eclipsefi](./eclipsefi/brief.md) | $15.30K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [egas-swap](./egas-swap/brief.md) | $18.60M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [elara](./elara/brief.md) | $12.23K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [electra](./electra/brief.md) | $81.74K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [elfi-protocol](./elfi-protocol/brief.md) | $3.44M | arbitrum, base | 2406 | 88/2406 (4%) | 29.5% | 29.5% (Sherlock) | 1 | aging | ⚠️ declining | - |
| [emiswap](./emiswap/brief.md) | $33.55K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [empmoney](./empmoney/brief.md) | $181.96K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [emu](./emu/brief.md) | $2.42 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [endur](./endur/brief.md) | $9.42M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [enjoyoors](./enjoyoors/brief.md) | $11.26K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [enosys](./enosys/brief.md) | $17.16M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [ensuro](./ensuro/brief.md) | $490.64K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [enzo-finance](./enzo-finance/brief.md) | $22.37K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [equilibre](./equilibre/brief.md) | $6.90M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [equito-finance](./equito-finance/brief.md) | $7.95 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [eralend](./eralend/brief.md) | $72.98 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [ethereal-dex](./ethereal-dex/brief.md) | $30.72M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [etherex](./etherex/brief.md) | $1.36M | linea | 58 | 45/58 (78%) | 36.2% | 36.2% (Spearbit) | 1 | fresh | ⚠️ declining | - |
| [etherflip](./etherflip/brief.md) | $1.58M | ethereum | 7 | 6/7 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [ethos](./ethos/brief.md) | $1.89M | base, ethereum | 27 | 20/27 (74%) | 30.0% | 30.0% (Sherlock) | 1 | aging | ✅ active | - |
| [etmc](./etmc/brief.md) | $6.82K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [eversol](./eversol/brief.md) | $9.54K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [everything](./everything/brief.md) | $710.21K | arbitrum | 14 | 6/14 (43%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [evolve](./evolve/brief.md) | $554.15 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [evoq-finance](./evoq-finance/brief.md) | $268.06 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [exactly](./exactly/brief.md) | $3.99M | base, ethereum, optimism | 65 | 44/65 (68%) | 63.6% | 9.1% (OpenZeppelin, Sherlock) | 31 | fresh | ✅ active | - |
| [exmo](./exmo/brief.md) | $2.84M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [exponent](./exponent/brief.md) | $63.98M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [exsat-staking-btc](./exsat-staking-btc/brief.md) | $137.63M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [extra-finance](./extra-finance/brief.md) | $32.30M | base, berachain, optimism | 268 | 17/268 (6%) | 5.3% | 5.3% (Sherlock) | 1 | aging | ✅ active | - |
| [ezmanager](./ezmanager/brief.md) | $312.09K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [fairfi](./fairfi/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [farm-hero](./farm-hero/brief.md) | $5.10K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [feather](./feather/brief.md) | $15.86M | celo, klaytn, sei | 10 | 9/10 (90%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [ferro](./ferro/brief.md) | $4.92M | cronos | 21 | 0/21 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [fiamma](./fiamma/brief.md) | $1.15M | 8 | 33 | 12/33 (36%) | 16.7% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [filfi](./filfi/brief.md) | $121.84K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [firebird](./firebird/brief.md) | $17.76K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [firelight](./firelight/brief.md) | $80.32M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [fiva](./fiva/brief.md) | $42.94K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [flamingo](./flamingo/brief.md) | $2.15M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [flashstake](./flashstake/brief.md) | $36.64K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [flexa](./flexa/brief.md) | $1.37M | ethereum | 2 | 2/2 (100%) | 100.0% | 100.0% (Trail of Bits) | 2 | stale | ⚠️ declining | - |
| [flipster](./flipster/brief.md) | $33.01M | klaytn | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [fluxion-network](./fluxion-network/brief.md) | $2.38M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [folks-finance](./folks-finance/brief.md) | $89.34M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [fomo3d](./fomo3d/brief.md) | $1.98M | ethereum | 24 | 11/24 (46%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [forgeyields](./forgeyields/brief.md) | $1.27M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [fortifi](./fortifi/brief.md) | $349.00K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [four.meme](./four.meme/brief.md) | $4.62M | bsc | 5 | 1/5 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [fractal-protocol](./fractal-protocol/brief.md) | $10.89K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [frankencoin](./frankencoin/brief.md) | $70.00M | ethereum | 5 | 5/5 (100%) | 80.0% | 80.0% (ChainSecurity, Code4rena) | 5 | aging | ✅ active | - |
| [freebie-life-finance](./freebie-life-finance/brief.md) | $32.66 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [friend3](./friend3/brief.md) | $67.16K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [fringe-finance](./fringe-finance/brief.md) | $45.14K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [froggy-protocol](./froggy-protocol/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [fuji-finance](./fuji-finance/brief.md) | $144.60K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [fulcrom](./fulcrom/brief.md) | $10.94M | cronos, zksync-era | 79 | 0/79 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [full-sail](./full-sail/brief.md) | $481.27K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [fx-protocol](./fx-protocol/brief.md) | $227.34M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [fxdao](./fxdao/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [fxdx](./fxdx/brief.md) | $2.54K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [fyde-protocol](./fyde-protocol/brief.md) | $255.90K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [galaxy-curation](./galaxy-curation/brief.md) | $67.50M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [gale](./gale/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [gate-us](./gate-us/brief.md) | $49.10M | 7 | 9 | 0/9 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [gearbox](./gearbox/brief.md) | $36.88M | 4 | 195 | 100/195 (51%) | 53.0% | 50.0% (ChainSecurity, ConsenSys Diligence, MixBytes) | 31 | fresh | ⚠️ declining | - |
| [geist-finance](./geist-finance/brief.md) | $153.46K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gemkeeper](./gemkeeper/brief.md) | $20.49K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [generic.money](./generic.money/brief.md) | $3.74M | ethereum | 12 | 11/12 (92%) | 81.8% | 81.8% (Spearbit) | 1 | fresh | ⚠️ declining | - |
| [get-protocol](./get-protocol/brief.md) | $122.81K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [geyser](./geyser/brief.md) | $93.22K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gimo](./gimo/brief.md) | $8.66M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [gin-finance](./gin-finance/brief.md) | $8.33K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [giveth](./giveth/brief.md) | $115.80K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [glitter-finance](./glitter-finance/brief.md) | $13.02 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [glori-finance](./glori-finance/brief.md) | $42.08 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [goat-protocol](./goat-protocol/brief.md) | $26.37K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gogocoin](./gogocoin/brief.md) | $2.20K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [goldfinger](./goldfinger/brief.md) | $0.00 | bsc | 5 | 4/5 (80%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [goldsand-by-inshallah](./goldsand-by-inshallah/brief.md) | $231.10K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [goldstation](./goldstation/brief.md) | $1.76M | avalanche, klaytn | 7 | 1/7 (14%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [goledo](./goledo/brief.md) | $3.50K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gomble-games](./gomble-games/brief.md) | $14.73 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [goodentry](./goodentry/brief.md) | $70.46K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [goose-finance](./goose-finance/brief.md) | $249.86K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [goosefx](./goosefx/brief.md) | $1.54K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [grape-finance](./grape-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gravis-finance](./gravis-finance/brief.md) | $33.05K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [gravity](./gravity/brief.md) | $8.44K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [gravity-finance](./gravity-finance/brief.md) | $90.37K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gridex](./gridex/brief.md) | $54.05K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [growihf](./growihf/brief.md) | $8.39M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [gudchain](./gudchain/brief.md) | $75.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gumball-protocol](./gumball-protocol/brief.md) | $248.27K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [guru-network-dao](./guru-network-dao/brief.md) | $1.93M | 9 | 61 | 24/61 (39%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [gyroscope-protocol](./gyroscope-protocol/brief.md) | $500.18K | 10 | 233 | 148/233 (64%) | 21.3% | 1.3% (Trail of Bits) | 6 | aging | ⚠️ declining | - |
| [h2-finance](./h2-finance/brief.md) | $3.57M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hakutora](./hakutora/brief.md) | $23.80M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [halofi](./halofi/brief.md) | $22.07K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [hanji-protocol](./hanji-protocol/brief.md) | $727.85K | base | 381 | 6/381 (2%) | 16.7% | 0.0% (-) | 2 | aging | ⚠️ declining | - |
| [harbor](./harbor/brief.md) | $94.13K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [harmonix-finance](./harmonix-finance/brief.md) | $4.87M | 4 | 127 | 9/127 (7%) | 10.0% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [harvest-finance](./harvest-finance/brief.md) | $12.93M | 5 | 445 | 265/445 (60%) | 46.4% | 0.0% (-) | 5 | aging | ⚠️ declining | - |
| [harvest-flow](./harvest-flow/brief.md) | $523.96K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [hashdao-finance](./hashdao-finance/brief.md) | $1.64M | arbitrum, optimism | 50 | 16/50 (32%) | 55.6% | 0.0% (-) | 3 | stale | 💀 dead | - |
| [hashkey-global](./hashkey-global/brief.md) | $13.43M | ethereum, scroll | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hashking](./hashking/brief.md) | $335.22K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hashport](./hashport/brief.md) | $1.54M | 10 | 21 | 13/21 (62%) | 100.0% | 0.0% (-) | 3 | stale | 💀 dead | - |
| [hastra](./hastra/brief.md) | $402.82M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hbarsuite](./hbarsuite/brief.md) | $3.84M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [hectagon](./hectagon/brief.md) | $0.49 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [heliswap](./heliswap/brief.md) | $94.48K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [helix](./helix/brief.md) | $1.48M | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [helix-finance](./helix-finance/brief.md) | $11.00M | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [henjin-dex](./henjin-dex/brief.md) | $1.24K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hera-finance](./hera-finance/brief.md) | $6.24M | arbitrum, ethereum, metis | 37 | 11/37 (30%) | 27.3% | 0.0% (-) | 3 | stale | ✅ active | - |
| [hiyield](./hiyield/brief.md) | $2.73M | avalanche, canto, ethereum | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hodltree](./hodltree/brief.md) | $1.84K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [holdstation](./holdstation/brief.md) | $19.73K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [honeyfarm](./honeyfarm/brief.md) | $1.02K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [hopr](./hopr/brief.md) | $1.43M | gnosis | 81 | 23/81 (28%) | 4.3% | 4.3% (ChainSecurity) | 1 | stale | ✅ active | - |
| [horizondex](./horizondex/brief.md) | $60.34K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [hotcoin](./hotcoin/brief.md) | $5.60M | scroll | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hourglass](./hourglass/brief.md) | $139.93K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [houses-of-rome](./houses-of-rome/brief.md) | $0.00 | moonriver | 51 | 6/51 (12%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [hskhodlium](./hskhodlium/brief.md) | $1.51M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [huckleberry](./huckleberry/brief.md) | $31.92K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [humble-defi](./humble-defi/brief.md) | $52.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hundred-finance](./hundred-finance/brief.md) | $1.58M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hurricaneswap](./hurricaneswap/brief.md) | $11.22K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hybra](./hybra/brief.md) | $1.59M | hyperliquid | 81 | 15/81 (19%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hyper-finance](./hyper-finance/brief.md) | $34.93K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hyperbloom](./hyperbloom/brief.md) | $92.90K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [hyperdrive-hl](./hyperdrive-hl/brief.md) | $2.78M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [hyperion](./hyperion/brief.md) | $21.07M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [hypertrade](./hypertrade/brief.md) | $94.63K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hyphen](./hyphen/brief.md) | $100.36K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [ibtc-finance](./ibtc-finance/brief.md) | $254.53 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [ibtc-network](./ibtc-network/brief.md) | $158.72 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ifpool](./ifpool/brief.md) | $80.70K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [immutable-zkevm](./immutable-zkevm/brief.md) | $28.54M | ethereum | 9 | 9/9 (100%) | 22.2% | 0.0% (-) | 1 | aging | ✅ active | - |
| [impermax-finance](./impermax-finance/brief.md) | $735.87K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [infinite-trading-protocol](./infinite-trading-protocol/brief.md) | $429.15K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [infinityname](./infinityname/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [influpia](./influpia/brief.md) | $2.96K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [infrared-finance](./infrared-finance/brief.md) | $50.68M | berachain, bsc | 27 | 15/27 (56%) | 100.0% | 66.7% (Spearbit) | 14 | fresh | ✅ active | - |
| [infusion](./infusion/brief.md) | $72.58K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [initiadex](./initiadex/brief.md) | $3.03M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ink-bridge](./ink-bridge/brief.md) | $59.29M | ethereum, ink, optimism | 68 | 25/68 (37%) | 44.0% | 44.0% (Spearbit, Trail of Bits) | 5 | aging | ✅ active | - |
| [ink-protocol](./ink-protocol/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [interest-labs](./interest-labs/brief.md) | $2.11K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [interest-protocol](./interest-protocol/brief.md) | $1.26M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [intswap](./intswap/brief.md) | $1.38K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [intuition](./intuition/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [invar-finance](./invar-finance/brief.md) | $261.96 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [invariant](./invariant/brief.md) | $238.28K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ionic-protocol](./ionic-protocol/brief.md) | $2.04M | bsc, mode | 420 | 55/420 (13%) | 1.8% | 0.0% (-) | 1 | stale | 💀 dead | - |
| [iotabee](./iotabee/brief.md) | $3.18K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [iron-bank](./iron-bank/brief.md) | $676.15K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ithaca-protocol](./ithaca-protocol/brief.md) | $12.86K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [itrust-finance](./itrust-finance/brief.md) | $365.75K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [jbc.finance](./jbc.finance/brief.md) | $397.80 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [jetswap](./jetswap/brief.md) | $323.09K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [jiko](./jiko/brief.md) | $116.29K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [jito](./jito/brief.md) | $642.52M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [jpg-store](./jpg-store/brief.md) | $130.04K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [juicebox](./juicebox/brief.md) | $8.63M | 8 | 77 | 68/77 (88%) | 19.1% | 16.2% (Code4rena) | 6 | stale | ✅ active | - |
| [justlend](./justlend/brief.md) | $3321.01M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [k2](./k2/brief.md) | $4.66M | ethereum | 30 | 21/30 (70%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [kafe-finance](./kafe-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [kaio](./kaio/brief.md) | $60.81M | 4 | 35 | 4/35 (11%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [kalax](./kalax/brief.md) | $127.79K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kalmy-app](./kalmy-app/brief.md) | $31.93K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kandle-finance](./kandle-finance/brief.md) | $0.07 | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [kannagi-finance](./kannagi-finance/brief.md) | $72.20 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kaskad](./kaskad/brief.md) | $2.55M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [kasu](./kasu/brief.md) | $10.55M | base | 22 | 20/22 (91%) | 100.0% | 100.0% (ChainSecurity) | 2 | aging | ✅ active | - |
| [kava-earn](./kava-earn/brief.md) | $1.57M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [kava-lend](./kava-lend/brief.md) | $10.63M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [kava-liquid](./kava-liquid/brief.md) | $1.55M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [kava-mint](./kava-mint/brief.md) | $11.06M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [kawaiiswap](./kawaiiswap/brief.md) | $798.68 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [keeta-bridge](./keeta-bridge/brief.md) | $1.06M | base | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [keiko-finance](./keiko-finance/brief.md) | $45.40K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [keom-protocol](./keom-protocol/brief.md) | $115.46K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [keyring](./keyring/brief.md) | $6.22M | avalanche, ethereum | 73 | 47/73 (64%) | 17.0% | 12.8% (Certora, ChainSecurity, Cyfrin, Spearbit) | 15 | fresh | ✅ active | - |
| [kiloex](./kiloex/brief.md) | $2.45M | base, bsc, manta | 110 | 7/110 (6%) | 14.3% | 0.0% (-) | 1 | aging | ✅ active | - |
| [kinetic](./kinetic/brief.md) | $59.94M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [king-protocol](./king-protocol/brief.md) | $1.54M | 5 | 16 | 5/16 (31%) | 60.0% | 0.0% (-) | 2 | aging | ✅ active | - |
| [kingdefi](./kingdefi/brief.md) | $35.69K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kintsu](./kintsu/brief.md) | $2.16M | hyperliquid | 12 | 0/12 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | - |
| [klaybank](./klaybank/brief.md) | $298.92K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [klaystation](./klaystation/brief.md) | $1.45M | klaytn | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [klayswap](./klayswap/brief.md) | $3.85M | klaytn | 22 | 0/22 (0%) | 0.0% | 0.0% (-) | 0 | aging | ⚠️ declining | - |
| [klend](./klend/brief.md) | $5.80K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [knightswap](./knightswap/brief.md) | $904.58K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kodiak](./kodiak/brief.md) | $29.04M | - | 0 | - | 0.0% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [kogefarm](./kogefarm/brief.md) | $138.22K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [kokomo-finance](./kokomo-finance/brief.md) | $2.01K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [kolibri](./kolibri/brief.md) | $740.77K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [kongswap](./kongswap/brief.md) | $2.38M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kryptodex](./kryptodex/brief.md) | $669.65 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kyex](./kyex/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [kyrios-finance](./kyrios-finance/brief.md) | $197.51 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [l2x.pro](./l2x.pro/brief.md) | $1.43K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [laari-finance](./laari-finance/brief.md) | $0.04 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [lake-protocol](./lake-protocol/brief.md) | $44.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [lander](./lander/brief.md) | $21.81K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [larix](./larix/brief.md) | $1.01M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [latteswap](./latteswap/brief.md) | $54.94K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [layerakira](./layerakira/brief.md) | $736.58 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [layerbank](./layerbank/brief.md) | $20.55M | 5 | 91 | 14/91 (15%) | 50.0% | 0.0% (-) | 2 | fresh | ⚠️ declining | - |
| [lbank](./lbank/brief.md) | $9.76M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [legacy-canary-protocol](./legacy-canary-protocol/brief.md) | $5.89K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [levex](./levex/brief.md) | $10.51M | bsc, ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [levvy-finance](./levvy-finance/brief.md) | $46.23K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [libero-financial](./libero-financial/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [likwid](./likwid/brief.md) | $52.66K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [liminal](./liminal/brief.md) | $24.93M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [linear-protocol](./linear-protocol/brief.md) | $59.63M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [linx-app](./linx-app/brief.md) | $129.86K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [liondex](./liondex/brief.md) | $0.38 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [liquidity-house](./liquidity-house/brief.md) | $1.44M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [liquis](./liquis/brief.md) | $71.53K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [liquity](./liquity/brief.md) | $217.00M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [liqwid](./liqwid/brief.md) | $27.35M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [lisa-finance](./lisa-finance/brief.md) | $356.79K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [llamapay](./llamapay/brief.md) | $21.01M | 18 | 20 | 6/20 (30%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [lns](./lns/brief.md) | $11.51K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [lockon](./lockon/brief.md) | $1.05M | arbitrum, polygon | 23 | 16/23 (70%) | 56.3% | 0.0% (-) | 4 | fresh | ✅ active | - |
| [locus-finance](./locus-finance/brief.md) | $43.95K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [looksrare](./looksrare/brief.md) | $27.89K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [lorenzo-protocol](./lorenzo-protocol/brief.md) | $540.55M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [lotus-finance](./lotus-finance/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [ltv-protocol](./ltv-protocol/brief.md) | $12.61K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [luckychip](./luckychip/brief.md) | $532.07 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [lumenswap](./lumenswap/brief.md) | $6.33M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [lumin-finance](./lumin-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [lusd-chickenbonds](./lusd-chickenbonds/brief.md) | $1.50M | ethereum | 22 | 19/22 (86%) | 36.8% | 0.0% (-) | 7 | stale | ⚠️ declining | - |
| [magik-finance](./magik-finance/brief.md) | $3.53K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [magma](./magma/brief.md) | $4.49M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [magma-finance-almm](./magma-finance-almm/brief.md) | $1.13K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [magma-staking](./magma-staking/brief.md) | $1.16M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [magpie-ecosystem](./magpie-ecosystem/brief.md) | $19.12M | 8 | 218 | 156/218 (72%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [maha.xyz](./maha.xyz/brief.md) | $2.62 | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [maia-dao-ecosystem](./maia-dao-ecosystem/brief.md) | $189.36K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mama](./mama/brief.md) | $49.25 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manarium](./manarium/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manga-fi](./manga-fi/brief.md) | $5.76K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mangrove](./mangrove/brief.md) | $4.26M | 4 | 68 | 41/68 (60%) | 22.0% | 14.6% (ChainSecurity) | 5 | aging | ✅ active | - |
| [manta-atlantic-stake](./manta-atlantic-stake/brief.md) | $5.46M | ethereum, manta | 109 | 68/109 (62%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manta-cedefi](./manta-cedefi/brief.md) | $26.48M | manta | 17 | 15/17 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manta-pacific](./manta-pacific/brief.md) | $21.11M | ethereum, manta | 12 | 10/12 (83%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [mantisswap](./mantisswap/brief.md) | $182.88K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mantle-restaking](./mantle-restaking/brief.md) | $60.85M | ethereum, mantle | 25 | 21/25 (84%) | 59.1% | 18.2% (MixBytes) | 8 | fresh | ⚠️ declining | - |
| [margin-zero](./margin-zero/brief.md) | $21.44K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [margined-protocol](./margined-protocol/brief.md) | $265.20K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [marginly](./marginly/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [match-finance](./match-finance/brief.md) | $2.15K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [matstake](./matstake/brief.md) | $4.67M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [maya-protocol](./maya-protocol/brief.md) | $10.17M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [meld-gold](./meld-gold/brief.md) | $9.69M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [merchant-moe](./merchant-moe/brief.md) | $37.26M | mantle | 53 | 26/53 (49%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [merkle-trade](./merkle-trade/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [merlinswap](./merlinswap/brief.md) | $6.89M | merlin | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [meson](./meson/brief.md) | $1.10M | blast, merlin | 129 | 2/129 (2%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [metadao](./metadao/brief.md) | $13.05M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [metastable](./metastable/brief.md) | $2.07M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [metastrike](./metastrike/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [metavault](./metavault/brief.md) | $10.79K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [metera-protocol](./metera-protocol/brief.md) | $4.71K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mev-protocol](./mev-protocol/brief.md) | $80.72K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mezo-earn](./mezo-earn/brief.md) | $46.89M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [milkomeda-c1-djed](./milkomeda-c1-djed/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [milkomeda-macc](./milkomeda-macc/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [milkyway-protocol](./milkyway-protocol/brief.md) | $2.51M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [minefi](./minefi/brief.md) | $1.41M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [minerswap](./minerswap/brief.md) | $0.13 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [minimax](./minimax/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mint-club](./mint-club/brief.md) | $598.00K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [minto](./minto/brief.md) | $3.76M | bsc, ethereum, heco | 9 | 6/9 (67%) | 16.7% | 0.0% (-) | 1 | stale | ✅ active | - |
| [minu](./minu/brief.md) | $0.17 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mirakle-defi](./mirakle-defi/brief.md) | $0.06 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mito-finance](./mito-finance/brief.md) | $435.18K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [moar-market](./moar-market/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mobius-exchange](./mobius-exchange/brief.md) | $9.91K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [mode-bridge](./mode-bridge/brief.md) | $6.12M | ethereum, mode | 100 | 34/100 (34%) | 2.9% | 0.0% (-) | 1 | aging | ⚠️ declining | - |
| [mojitoswap](./mojitoswap/brief.md) | $629.85K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mole](./mole/brief.md) | $8.58M | avalanche | 49 | 3/49 (6%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [molecular](./molecular/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [monday-trade](./monday-trade/brief.md) | $686.61K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [moneyonchain](./moneyonchain/brief.md) | $43.71M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [monox](./monox/brief.md) | $10.94K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [monroe-protocol](./monroe-protocol/brief.md) | $6.44K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [moonbase-alpha](./moonbase-alpha/brief.md) | $2.59K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mooniswap](./mooniswap/brief.md) | $414.42K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [moonlander](./moonlander/brief.md) | $30.03M | cronos | 11 | 0/11 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [moonwell](./moonwell/brief.md) | $130.34M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [moonwell-apollo](./moonwell-apollo/brief.md) | $844.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [moraswap](./moraswap/brief.md) | $5.92K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [more-markets](./more-markets/brief.md) | $10.33M | 4 | 21 | 20/21 (95%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [moremoney](./moremoney/brief.md) | $7.51K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mortgagefi](./mortgagefi/brief.md) | $777.90K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mountain-protocol](./mountain-protocol/brief.md) | $1.40M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [movegpt](./movegpt/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [moveposition](./moveposition/brief.md) | $7.09M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mr.-lightspeed-creator-coin](./mr.-lightspeed-creator-coin/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mu-digital](./mu-digital/brief.md) | $19.42M | ethereum | 12 | 12/12 (100%) | 100.0% | 100.0% (SlowMist) | 1 | fresh | ✅ active | - |
| [mugenfinance](./mugenfinance/brief.md) | $3.35M | arbitrum | 12 | 10/12 (83%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [mvl-staking](./mvl-staking/brief.md) | $1.10M | ethereum | 49 | 2/49 (4%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [myso](./myso/brief.md) | $28.05K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mystic-finance](./mystic-finance/brief.md) | $5.79M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [mytrade](./mytrade/brief.md) | $7.63K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [myx-finance](./myx-finance/brief.md) | $986.03K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nabla-finance](./nabla-finance/brief.md) | $87.98K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nado](./nado/brief.md) | $49.33M | ink | 22 | 0/22 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [narbet](./narbet/brief.md) | $9.73K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [navi-protocol](./navi-protocol/brief.md) | $275.73M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nawa-protocol](./nawa-protocol/brief.md) | $4.09M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [nbx](./nbx/brief.md) | $1.82M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [neemo-finance](./neemo-finance/brief.md) | $1.12M | ethereum | 14 | 1/14 (7%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [nemo](./nemo/brief.md) | $76.12K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nemoswap](./nemoswap/brief.md) | $65.52K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [neony-exchange](./neony-exchange/brief.md) | $412.93K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [neopin](./neopin/brief.md) | $40.20M | ethereum, klaytn, polygon | 104 | 1/104 (1%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [neptune-finance](./neptune-finance/brief.md) | $5.93M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [netswap](./netswap/brief.md) | $1.34M | metis | 48 | 24/48 (50%) | 20.8% | 0.0% (-) | 2 | stale | ⚠️ declining | - |
| [netweave-finance](./netweave-finance/brief.md) | $12.29K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [neuralai](./neuralai/brief.md) | $1.22M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [neutra-finance](./neutra-finance/brief.md) | $3.21K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [neutral-trade](./neutral-trade/brief.md) | $18.62M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nex](./nex/brief.md) | $114.19 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nexus-protocol](./nexus-protocol/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nf3-ape](./nf3-ape/brief.md) | $3.38K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nftfi](./nftfi/brief.md) | $10.10K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nimbora](./nimbora/brief.md) | $338.50K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nirvana](./nirvana/brief.md) | $2.71M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nlx-protocol](./nlx-protocol/brief.md) | $760.75 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nodeops](./nodeops/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [nolus-protocol](./nolus-protocol/brief.md) | $509.95K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nomiswap](./nomiswap/brief.md) | $1.42M | bsc | 47 | 19/47 (40%) | 15.8% | 0.0% (-) | 1 | stale | ⚠️ declining | - |
| [nonkyc](./nonkyc/brief.md) | $5.37M | 4 | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [nostra](./nostra/brief.md) | $6.82M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nucleus](./nucleus/brief.md) | $38.09M | ethereum | 6 | 6/6 (100%) | 50.0% | 33.3% (Spearbit) | 5 | fresh | ✅ active | - |
| [nuls](./nuls/brief.md) | $7.33M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [numisme](./numisme/brief.md) | $309.08 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nx-finance](./nx-finance/brief.md) | $1.88M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nxd-protocol](./nxd-protocol/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [o.lab](./o.lab/brief.md) | $37.59K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [o2-exchange](./o2-exchange/brief.md) | $2.16M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [o3-swap](./o3-swap/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [obsidian](./obsidian/brief.md) | $1.38M | cronos | 6 | 0/6 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [ocp-finance](./ocp-finance/brief.md) | $10.23K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [octopus-network](./octopus-network/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [odos](./odos/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [odyssey-finance](./odyssey-finance/brief.md) | $9.22M | base, ethereum, optimism | 82 | 77/82 (94%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [okcoin](./okcoin/brief.md) | $25.77M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [olive](./olive/brief.md) | $46.47K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [olive-network](./olive-network/brief.md) | $66.68K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [olivedao](./olivedao/brief.md) | $7.67K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [omnibtc](./omnibtc/brief.md) | $1.92M | 7 | 18 | 9/18 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [omnipool](./omnipool/brief.md) | $324.39 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [onchaingm](./onchaingm/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [oni-exchange](./oni-exchange/brief.md) | $1.29K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [oortswap](./oortswap/brief.md) | $940.86 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [openeden](./openeden/brief.md) | $225.38M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [openledger](./openledger/brief.md) | $104.03K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [openleverage](./openleverage/brief.md) | $88.94K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [opensea](./opensea/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [opensky-finance](./opensky-finance/brief.md) | $15.79K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [opinion](./opinion/brief.md) | $5.77M | bsc, ethereum | 8 | 6/8 (75%) | 66.7% | 0.0% (-) | 4 | fresh | ⚠️ declining | - |
| [orangex](./orangex/brief.md) | $33.70M | base, ethereum | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [orbiter-one](./orbiter-one/brief.md) | $77.01K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [orchai](./orchai/brief.md) | $307.48K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [orcus-finance](./orcus-finance/brief.md) | $362.32K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [osl](./osl/brief.md) | $92.56M | scroll | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [osmosis-dex](./osmosis-dex/brief.md) | $18.53M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ostium](./ostium/brief.md) | $47.18M | arbitrum | 17 | 17/17 (100%) | 47.1% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [otsea](./otsea/brief.md) | $393.82K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [outcome-finance](./outcome-finance/brief.md) | $1.33M | boba, ethereum, polygon | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [overnight-finance](./overnight-finance/brief.md) | $10.01M | 10 | 4353 | 0/4353 (0%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [oxiswap](./oxiswap/brief.md) | $0.17 | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [p2pb2b](./p2pb2b/brief.md) | $4.84M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pact](./pact/brief.md) | $2.48M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [padswap](./padswap/brief.md) | $107.26K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [paimon](./paimon/brief.md) | $12.73M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [paladin-finance](./paladin-finance/brief.md) | $22.24K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [palladium-protocol](./palladium-protocol/brief.md) | $1.50K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [palmswap](./palmswap/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [palmy-finance](./palmy-finance/brief.md) | $14.97K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pandora](./pandora/brief.md) | $8.94K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pangea-swap](./pangea-swap/brief.md) | $6.40K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pangolin](./pangolin/brief.md) | $3.77M | avalanche | 163 | 26/163 (16%) | 53.8% | 0.0% (-) | 9 | aging | ⚠️ declining | - |
| [paradex](./paradex/brief.md) | $27.28M | ethereum | 5 | 2/5 (40%) | 50.0% | 0.0% (-) | 1 | aging | ⚠️ declining | - |
| [paragonsdao](./paragonsdao/brief.md) | $6.50M | base, ethereum | 6 | 6/6 (100%) | 16.7% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [paryonusd](./paryonusd/brief.md) | $412.57K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [paxe-protocol](./paxe-protocol/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [pay-protocol](./pay-protocol/brief.md) | $1.42M | ethereum | 8 | 0/8 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [pbg](./pbg/brief.md) | $12.34K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pegasusdollar](./pegasusdollar/brief.md) | $14.04K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pell-network](./pell-network/brief.md) | $238.47K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pembrock-finance](./pembrock-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [perpl](./perpl/brief.md) | $1.18M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [phoenix](./phoenix/brief.md) | $1.19M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [phoenix-bonds](./phoenix-bonds/brief.md) | $470.08K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [phoenix-defi-hub](./phoenix-defi-hub/brief.md) | $1.58M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [phuture](./phuture/brief.md) | $30.20K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [piggybank](./piggybank/brief.md) | $2.42M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pika-protocol](./pika-protocol/brief.md) | $402.55K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pionex](./pionex/brief.md) | $37.13M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pippi](./pippi/brief.md) | $75.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ploutos-money](./ploutos-money/brief.md) | $483.11 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pnetwork](./pnetwork/brief.md) | $13.10M | 4 | 12 | 11/12 (92%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [polkamarkets](./polkamarkets/brief.md) | $12.57K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [polydex](./polydex/brief.md) | $2.80K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [polygon-zkevm-bridge](./polygon-zkevm-bridge/brief.md) | $69.38M | ethereum | 14 | 14/14 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [polygonfarm-finance](./polygonfarm-finance/brief.md) | $51.48K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [polynomial-protocol](./polynomial-protocol/brief.md) | $5.29M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [polyo-exchange](./polyo-exchange/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [polywhale-finance](./polywhale-finance/brief.md) | $101.65K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pond0x](./pond0x/brief.md) | $2.06M | ethereum | 16 | 11/16 (69%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [poolshark](./poolshark/brief.md) | $60.46K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [poolside](./poolside/brief.md) | $30.61K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [potatoswap](./potatoswap/brief.md) | $5.17M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [powercity](./powercity/brief.md) | $3.25M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [powh3d](./powh3d/brief.md) | $3.47M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [predictcoin](./predictcoin/brief.md) | $117.74 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [prime-staking](./prime-staking/brief.md) | $2.47M | base | 10 | 3/10 (30%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [prime-vaults](./prime-vaults/brief.md) | $11.03K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [print3r](./print3r/brief.md) | $9.82 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [prism-protocol](./prism-protocol/brief.md) | $2.68K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [probit-global](./probit-global/brief.md) | $11.03M | fantom | 3 | 0/3 (0%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [psyoptions](./psyoptions/brief.md) | $462.90K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pu239](./pu239/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [puddingswap](./puddingswap/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pulsar-swap](./pulsar-swap/brief.md) | $11.10K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pulse-rate](./pulse-rate/brief.md) | $23.80K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pump-party](./pump-party/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pumpbase](./pumpbase/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pumpspace](./pumpspace/brief.md) | $3.87M | avalanche | 666 | 6/666 (1%) | 33.3% | 0.0% (-) | 2 | aging | ✅ active | - |
| [punks-terminal](./punks-terminal/brief.md) | $1.49M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [puzzleswaporg](./puzzleswaporg/brief.md) | $1.38M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pv01](./pv01/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pyron](./pyron/brief.md) | $2.12M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [q-borrowing](./q-borrowing/brief.md) | $6.57K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [qao](./qao/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [qian](./qian/brief.md) | $3.75K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [qidao](./qidao/brief.md) | $2.64M | 20 | 298 | 0/298 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [quantum-unit](./quantum-unit/brief.md) | $29.17 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [qubit](./qubit/brief.md) | $14.75K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [quipuswap](./quipuswap/brief.md) | $454.89K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [quoll](./quoll/brief.md) | $18.29K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [raccoon-finance](./raccoon-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [raft](./raft/brief.md) | $13.52K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [rage-protocol](./rage-protocol/brief.md) | $232.88K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rage-trade-v1](./rage-trade-v1/brief.md) | $5.99 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [railgun](./railgun/brief.md) | $312.54M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [rain](./rain/brief.md) | $26.14M | arbitrum | 29 | 28/29 (97%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [reddex](./reddex/brief.md) | $4.76M | bsc, ethereum | 5 | 4/5 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [rehold](./rehold/brief.md) | $11.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [renec-lend](./renec-lend/brief.md) | $5.09K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [revault](./revault/brief.md) | $1.96M | bsc | 75 | 20/75 (27%) | 45.0% | 0.0% (-) | 1 | stale | ⚠️ declining | - |
| [revoluzion](./revoluzion/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [rex-staking](./rex-staking/brief.md) | $2.01M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rhea-finance](./rhea-finance/brief.md) | $207.97M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [rheo](./rheo/brief.md) | $33.31K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [rho](./rho/brief.md) | $2.31M | arbitrum, ethereum | 35 | 1/35 (3%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [rifts-finance](./rifts-finance/brief.md) | $18.57K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [ringfi](./ringfi/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [risex](./risex/brief.md) | $4.29M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rivera-money](./rivera-money/brief.md) | $766.74 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [robiniaswap](./robiniaswap/brief.md) | $19.16K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rocifi](./rocifi/brief.md) | $46.45K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [roe-finance](./roe-finance/brief.md) | $4.20K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [roguex](./roguex/brief.md) | $29.92K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rollie-finance](./rollie-finance/brief.md) | $4.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rollup-finance](./rollup-finance/brief.md) | $77.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ronin-bridge](./ronin-bridge/brief.md) | $3.72M | ethereum | 15 | 9/15 (60%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [rooster-protocol](./rooster-protocol/brief.md) | $2.23M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [root-finance](./root-finance/brief.md) | $1.58K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rosen-bridge](./rosen-bridge/brief.md) | $2.11M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [roseonx](./roseonx/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [router-protocol](./router-protocol/brief.md) | $9.86K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [rsk-bridge](./rsk-bridge/brief.md) | $1.03M | ethereum | 13 | 12/13 (92%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [rswap](./rswap/brief.md) | $48.23K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rubic](./rubic/brief.md) | $148.21K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ruby.exchange](./ruby.exchange/brief.md) | $151.82K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ryze-protocol](./ryze-protocol/brief.md) | $328.83K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ryze.fi](./ryze.fi/brief.md) | $6.35K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [saber](./saber/brief.md) | $4.59M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sable-finance](./sable-finance/brief.md) | $625.58K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [saddle-finance](./saddle-finance/brief.md) | $777.23K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [safe](./safe/brief.md) | $64.02M | ethereum | 12 | 11/12 (92%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [sakefinance](./sakefinance/brief.md) | $2.39M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [salvor](./salvor/brief.md) | $660.53K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sanctum](./sanctum/brief.md) | $1159.77M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [satoshi-perps](./satoshi-perps/brief.md) | $4.57K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [saucerswap](./saucerswap/brief.md) | $32.90M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [savvy](./savvy/brief.md) | $126.42K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [scallop](./scallop/brief.md) | $38.17M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [sceptre-liquid](./sceptre-liquid/brief.md) | $20.03M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [scream](./scream/brief.md) | $1.29M | fantom | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [scrub-money](./scrub-money/brief.md) | $7.16M | arbitrum, kava | 20 | 1/20 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [sector-finance](./sector-finance/brief.md) | $55.75K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [secured-finance](./secured-finance/brief.md) | $629.77K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [seeder-finance](./seeder-finance/brief.md) | $3.06K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [seedify](./seedify/brief.md) | $32.11K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [segment-finance](./segment-finance/brief.md) | $524.72K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [seneca](./seneca/brief.md) | $11.68K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sentiment](./sentiment/brief.md) | $1.20M | arbitrum | 297 | 30/297 (10%) | 73.3% | 46.7% (Sherlock) | 6 | aging | 💀 dead | - |
| [serum](./serum/brief.md) | $15.31M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [shape-bridge](./shape-bridge/brief.md) | $760.43K | ethereum | 27 | 23/27 (85%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [sherpa](./sherpa/brief.md) | $605.97K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [shield](./shield/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [shield-protocol](./shield-protocol/brief.md) | $37.58K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [shift-protocol](./shift-protocol/brief.md) | $842.24K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [shiny](./shiny/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [shoebill-finance](./shoebill-finance/brief.md) | $420.98K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sicx](./sicx/brief.md) | $1.27M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sir](./sir/brief.md) | $85.16K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sirius-finance](./sirius-finance/brief.md) | $7.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [skale-network-bridge](./skale-network-bridge/brief.md) | $560.67K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [skate-fi](./skate-fi/brief.md) | $112.27K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [skcs](./skcs/brief.md) | $25.15K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [slender](./slender/brief.md) | $124.20 | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [smartcoin](./smartcoin/brief.md) | $949.57 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [smartcredit](./smartcredit/brief.md) | $769.26K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [smilee-finance](./smilee-finance/brief.md) | $1.12M | arbitrum, berachain | 194 | 30/194 (15%) | 23.3% | 23.3% (Spearbit) | 2 | aging | ✅ active | - |
| [smoothy](./smoothy/brief.md) | $478.57K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [solace](./solace/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [solana-farm](./solana-farm/brief.md) | $249.73 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [solayer](./solayer/brief.md) | $12.99M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [solera](./solera/brief.md) | $8.36M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [solid](./solid/brief.md) | $69.20K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [solidly-labs](./solidly-labs/brief.md) | $187.31K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [solstice](./solstice/brief.md) | $508.18M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [solyard](./solyard/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sonic-market](./sonic-market/brief.md) | $3.30K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [sophon-farm](./sophon-farm/brief.md) | $6.80M | ethereum | 1 | 1/1 (100%) | 100.0% | 100.0% (Sherlock) | 3 | aging | ✅ active | - |
| [sorare-bridge](./sorare-bridge/brief.md) | $3.02M | ethereum | 54 | 34/54 (63%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [sorta-finance](./sorta-finance/brief.md) | $107.90K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sosovalue](./sosovalue/brief.md) | $89.06M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sovryn](./sovryn/brief.md) | $38.32M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sovryn-bridge](./sovryn-bridge/brief.md) | $2.53M | ethereum | 48 | 5/48 (10%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [spacebar](./spacebar/brief.md) | $635.43 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [spacefi](./spacefi/brief.md) | $1.46M | scroll, zksync-era | 38 | 0/38 (0%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [sparkdex](./sparkdex/brief.md) | $29.41M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [sparklex](./sparklex/brief.md) | $5.42K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [spartan](./spartan/brief.md) | $6.32K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [spectrum-protocol](./spectrum-protocol/brief.md) | $8.45K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [spherium](./spherium/brief.md) | $0.01 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [spice-protocol](./spice-protocol/brief.md) | $1.53K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [spiko](./spiko/brief.md) | $1161.06M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [spinup](./spinup/brief.md) | $406.34K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [spiraldao](./spiraldao/brief.md) | $6.40M | ethereum, zksync-era | 56 | 25/56 (45%) | 44.0% | 0.0% (-) | 3 | stale | 💀 dead | - |
| [spiritswap](./spiritswap/brief.md) | $337.65K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [splash-protocol](./splash-protocol/brief.md) | $5.15M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [splashing-stake](./splashing-stake/brief.md) | $6.19M | sei | 8 | 4/8 (50%) | 75.0% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [sport.fun](./sport.fun/brief.md) | $3.54M | base | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [springx](./springx/brief.md) | $23.49K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [sprinter](./sprinter/brief.md) | $940.72K | base | 4 | 4/4 (100%) | 100.0% | 50.0% (Spearbit) | 3 | fresh | ✅ active | - |
| [squadswap](./squadswap/brief.md) | $1.53M | 6 | 214 | 37/214 (17%) | 63.2% | 0.0% (-) | 4 | aging | ✅ active | - |
| [ssap](./ssap/brief.md) | $1.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stablecoin-for-impact](./stablecoin-for-impact/brief.md) | $20.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stablecomp](./stablecomp/brief.md) | $1.11K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stablehodl](./stablehodl/brief.md) | $6.96M | bsc, ethereum, polygon | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [stader](./stader/brief.md) | $229.89M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stake.ly](./stake.ly/brief.md) | $16.19K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stakehound](./stakehound/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [standx](./standx/brief.md) | $48.27M | bsc | 17 | 7/17 (41%) | 57.1% | 0.0% (-) | 5 | fresh | ⚠️ declining | - |
| [stargate](./stargate/brief.md) | $5.92M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [starkdefi](./starkdefi/brief.md) | $87.85K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [starlay-finance](./starlay-finance/brief.md) | $199.46K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [starterra](./starterra/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stcelo](./stcelo/brief.md) | $1.24M | celo | 21 | 12/21 (57%) | 50.0% | 0.0% (-) | 3 | aging | ✅ active | - |
| [stealthpad](./stealthpad/brief.md) | $5.91 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stfil](./stfil/brief.md) | $5.51M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stobox](./stobox/brief.md) | $15.12M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stratis-liquid-staking](./stratis-liquid-staking/brief.md) | $413.90K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stratis-mstrax](./stratis-mstrax/brief.md) | $2.04M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stream-finance](./stream-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [streamflow](./streamflow/brief.md) | $699.97M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stride-hyperlane](./stride-hyperlane/brief.md) | $0.33 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [strike-finance-perpetuals](./strike-finance-perpetuals/brief.md) | $4.88M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [stroom](./stroom/brief.md) | $16.32K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [sturdy](./sturdy/brief.md) | $371.22K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sui-rewards-me](./sui-rewards-me/brief.md) | $1.12K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [suibridge](./suibridge/brief.md) | $34.80M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [suidollar-basis](./suidollar-basis/brief.md) | $250.53K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sumer.money](./sumer.money/brief.md) | $1.85M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sun](./sun/brief.md) | $209.29M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sunny](./sunny/brief.md) | $2.51M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [superearn](./superearn/brief.md) | $10.13M | ethereum, klaytn | 95 | 27/95 (28%) | 55.6% | 37.0% (Spearbit) | 3 | fresh | ✅ active | - |
| [superfluid](./superfluid/brief.md) | $5.13M | 10 | 397 | 89/397 (22%) | 20.8% | 5.2% (Trail of Bits) | 6 | fresh | ✅ active | - |
| [superhero-dex](./superhero-dex/brief.md) | $772.36 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [supernova](./supernova/brief.md) | $2.12M | ethereum | 47 | 47/47 (100%) | 48.9% | 0.0% (-) | 1 | fresh | ⚠️ declining | - |
| [supswap](./supswap/brief.md) | $19.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [surf-lending](./surf-lending/brief.md) | $4.45M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [surf-protocol](./surf-protocol/brief.md) | $6.00K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [surfswap](./surfswap/brief.md) | $117.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sushi](./sushi/brief.md) | $96.09M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [swap.io-clmm](./swap.io-clmm/brief.md) | $2.07K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [swappi](./swappi/brief.md) | $1.88M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [swapscanner](./swapscanner/brief.md) | $3.10M | klaytn | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [swapwizard](./swapwizard/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [swapx](./swapx/brief.md) | $492.43K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sweep](./sweep/brief.md) | $8.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [swell](./swell/brief.md) | $100.54M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [swellchain-bridge](./swellchain-bridge/brief.md) | $612.38K | ethereum | 24 | 24/24 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [swerve](./swerve/brief.md) | $305.21K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [swirl](./swirl/brief.md) | $4.41M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [symmetry-trade](./symmetry-trade/brief.md) | $7.33K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [synatra](./synatra/brief.md) | $2.42M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [syncyield](./syncyield/brief.md) | $0.01 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [synthswap](./synthswap/brief.md) | $16.72K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [t2t2](./t2t2/brief.md) | $7.88K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tangible](./tangible/brief.md) | $41.93M | 6 | 475 | 262/475 (55%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [tangoswap](./tangoswap/brief.md) | $14.24K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [tea-rex](./tea-rex/brief.md) | $9.53K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tealswap](./tealswap/brief.md) | $3.97K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [teleswap](./teleswap/brief.md) | $587.13K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [teller](./teller/brief.md) | $1.87M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [templar-protocol](./templar-protocol/brief.md) | $40.97M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [tender-finance](./tender-finance/brief.md) | $1.29M | arbitrum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [tensorplex](./tensorplex/brief.md) | $387.40K | ethereum | 9 | 7/9 (78%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [tg-casino](./tg-casino/brief.md) | $1.20M | ethereum | 15 | 15/15 (100%) | 6.7% | 0.0% (-) | 1 | aging | ✅ active | - |
| [thaw](./thaw/brief.md) | $7.83K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [the-parallel](./the-parallel/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [the-story-of-draco](./the-story-of-draco/brief.md) | $7.42 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [the-tokenized-bitcoin](./the-tokenized-bitcoin/brief.md) | $106.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [thedeep](./thedeep/brief.md) | $7.01M | 5 | 165 | 12/165 (7%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [themis-pro](./themis-pro/brief.md) | $1.16M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [thesauros](./thesauros/brief.md) | $50.84K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [thoreum-finance](./thoreum-finance/brief.md) | $45.09K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [throne](./throne/brief.md) | $16.85K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [timeless-finance](./timeless-finance/brief.md) | $12.37K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tinyman](./tinyman/brief.md) | $6.61M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [tizi](./tizi/brief.md) | $121.96K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tokenlabs](./tokenlabs/brief.md) | $249.30K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tokenlon](./tokenlon/brief.md) | $37.17M | ethereum | 21 | 21/21 (100%) | 57.1% | 0.0% (-) | 6 | stale | ⚠️ declining | - |
| [tonco](./tonco/brief.md) | $8.19M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tonpound](./tonpound/brief.md) | $14.64K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [tonyielding](./tonyielding/brief.md) | $88.22 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [toobit](./toobit/brief.md) | $69.15M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [topaz](./topaz/brief.md) | $1.05M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [tothemoon](./tothemoon/brief.md) | $2.40M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tower-dex](./tower-dex/brief.md) | $5.47K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [townsquare](./townsquare/brief.md) | $1.80M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [toxicdeer-finance](./toxicdeer-finance/brief.md) | $23.74K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [tren-finance](./tren-finance/brief.md) | $25.64 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [trick-or-treat-farm](./trick-or-treat-farm/brief.md) | $1.09K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [trisolaris](./trisolaris/brief.md) | $1.49M | aurora | 119 | 18/119 (15%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [tristero](./tristero/brief.md) | $353.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tropykus-finance](./tropykus-finance/brief.md) | $12.90M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [troves](./troves/brief.md) | $5.02M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [truefi](./truefi/brief.md) | $15.39M | arbitrum, ethereum | 8 | 8/8 (100%) | 37.5% | 0.0% (-) | 6 | stale | ⚠️ declining | - |
| [trufin-protocol](./trufin-protocol/brief.md) | $7.02M | ethereum | 7 | 6/7 (86%) | 66.7% | 33.3% (OpenZeppelin) | 7 | fresh | ⚠️ declining | - |
| [tulpea](./tulpea/brief.md) | $17.62K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [turboflow](./turboflow/brief.md) | $1.92M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [twin-finance](./twin-finance/brief.md) | $6.67K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [txflow](./txflow/brief.md) | $4.12M | arbitrum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [tymio](./tymio/brief.md) | $209.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [u235](./u235/brief.md) | $4.76K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [ufarm-digital](./ufarm-digital/brief.md) | $507.66K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [umee](./umee/brief.md) | $2.51M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [unchain-x](./unchain-x/brief.md) | $1.09M | bsc | 12 | 11/12 (92%) | 9.1% | 0.0% (-) | 1 | aging | ✅ active | - |
| [unclesam-protocol](./unclesam-protocol/brief.md) | $0.01 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [unicly](./unicly/brief.md) | $370.64K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [unite-finance](./unite-finance/brief.md) | $281.39K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [universal-bridge](./universal-bridge/brief.md) | $6.66M | base | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [universe-finance](./universe-finance/brief.md) | $19.89K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [uniwhale](./uniwhale/brief.md) | $33.43K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [uniwswap](./uniwswap/brief.md) | $815.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [untangled](./untangled/brief.md) | $302.81K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [untitledbank](./untitledbank/brief.md) | $242.77K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [uplift-dao](./uplift-dao/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [uranium.io](./uranium.io/brief.md) | $7.41M | ethereum | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [urdex-finance](./urdex-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [usdt0](./usdt0/brief.md) | $3612.31M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [uswap](./uswap/brief.md) | $545.91K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [usx.capital](./usx.capital/brief.md) | $763.33K | scroll | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [utonic](./utonic/brief.md) | $5.02M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [utopia](./utopia/brief.md) | $15.43K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [valas-finance](./valas-finance/brief.md) | $22.07K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [valorem](./valorem/brief.md) | $34.32 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [vaultcraft](./vaultcraft/brief.md) | $546.32K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [vaultka](./vaultka/brief.md) | $5.89K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [vaulty-finance](./vaulty-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [vedelegate](./vedelegate/brief.md) | $1.16M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [velodrome](./velodrome/brief.md) | $40.17M | celo, optimism | 52 | 47/52 (90%) | 40.4% | 40.4% (Sherlock, Spearbit) | 3 | aging | ✅ active | - |
| [velora](./velora/brief.md) | $248.18K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [veno-finance](./veno-finance/brief.md) | $37.49M | cronos, ethereum, zksync-era | 51 | 11/51 (22%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [venombridge](./venombridge/brief.md) | $860.40K | 4 | 2 | 1/2 (50%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [ventuals](./ventuals/brief.md) | $29.70M | hyperliquid | 4 | 4/4 (100%) | 100.0% | 0.0% (-) | 2 | fresh | ✅ active | - |
| [verio](./verio/brief.md) | $7.19M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [verocket](./verocket/brief.md) | $19.04K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [verse](./verse/brief.md) | $468.32K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [verus-market](./verus-market/brief.md) | $6.36M | ethereum | 33 | 1/33 (3%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [vest-markets](./vest-markets/brief.md) | $1.17M | 7 | 7 | 4/7 (57%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [vfat.io](./vfat.io/brief.md) | $36.60M | 14 | 553 | 220/553 (40%) | 10.0% | 0.0% (-) | 3 | fresh | ✅ active | - |
| [vii-finance](./vii-finance/brief.md) | $12.48K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [vmex-finance](./vmex-finance/brief.md) | $3.24K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [voltz](./voltz/brief.md) | $214.19K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wagmi](./wagmi/brief.md) | $1.25M | 12 | 334 | 0/334 (0%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [wanswap-dex](./wanswap-dex/brief.md) | $1.07M | - | 0 | - | 0.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [warp-protocol](./warp-protocol/brief.md) | $39.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [waterfall-defi](./waterfall-defi/brief.md) | $19.02K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [waterfall-finance](./waterfall-finance/brief.md) | $35.76K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [waterneuron](./waterneuron/brief.md) | $5.37M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wefi](./wefi/brief.md) | $292.38K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [weft-finance](./weft-finance/brief.md) | $488.16K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wemix.fi](./wemix.fi/brief.md) | $38.18M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [whale-loans](./whale-loans/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [whaleswap](./whaleswap/brief.md) | $2.39K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [white-whale](./white-whale/brief.md) | $517.97K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [whiteheart](./whiteheart/brief.md) | $6.31K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [winter-walrus](./winter-walrus/brief.md) | $51.08K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wise-lending](./wise-lending/brief.md) | $36.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [wisteria-swap](./wisteria-swap/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [witswap](./witswap/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [woo-x](./woo-x/brief.md) | $7.08M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [worldes](./worldes/brief.md) | $567.30 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wowswap](./wowswap/brief.md) | $34.38K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [wrapped](./wrapped/brief.md) | $20.11M | celo, ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [wrapped-bnb](./wrapped-bnb/brief.md) | $5.51M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [wstaking](./wstaking/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [xcarnival](./xcarnival/brief.md) | $2.16K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [xdollar](./xdollar/brief.md) | $65.23K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [xeleb-protocol](./xeleb-protocol/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [xfi-native-staking-protocol](./xfi-native-staking-protocol/brief.md) | $1.17M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [xpanse](./xpanse/brief.md) | $240.06K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [xrgb](./xrgb/brief.md) | $304.01 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [xswap-protocol](./xswap-protocol/brief.md) | $664.62K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [y2k-finance](./y2k-finance/brief.md) | $30.04K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [yaka-finance](./yaka-finance/brief.md) | $10.29K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ybtc.b](./ybtc.b/brief.md) | $69.27M | avalanche, bsc, ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [yei-finance](./yei-finance/brief.md) | $18.30M | sei | 47 | 38/47 (81%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [yield-protocol](./yield-protocol/brief.md) | $203.28K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [yieldly](./yieldly/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [yoshi-exchange](./yoshi-exchange/brief.md) | $6.60K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [youves](./youves/brief.md) | $35.48M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [yupana](./yupana/brief.md) | $24.53K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [zeebu](./zeebu/brief.md) | $5.21M | base, ethereum | 8 | 3/8 (38%) | 66.7% | 66.7% (Certora, OpenZeppelin) | 2 | aging | ❓ unknown | - |
| [zenlink](./zenlink/brief.md) | $3.86M | moonbeam, moonriver | 226 | 12/226 (5%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [zero-g-finance](./zero-g-finance/brief.md) | $1.75K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zerobase-cedefi](./zerobase-cedefi/brief.md) | $56.78M | 7 | 34 | 2/34 (6%) | 66.7% | 0.0% (-) | 4 | fresh | ✅ active | - |
| [zeroliquid](./zeroliquid/brief.md) | $3.43K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zeroswap](./zeroswap/brief.md) | $253.35 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zharta](./zharta/brief.md) | $2.75 | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [zircon-gamma](./zircon-gamma/brief.md) | $2.55 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zivoe](./zivoe/brief.md) | $13.86M | ethereum | 31 | 30/31 (97%) | 43.3% | 33.3% (Sherlock) | 2 | aging | ⚠️ declining | - |
| [zkswap-finance](./zkswap-finance/brief.md) | $1.22M | sonic, zksync-era | 98 | 27/98 (28%) | 11.1% | 0.0% (-) | 5 | stale | ✅ active | - |
| [zoodao](./zoodao/brief.md) | $9.03K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zoomex](./zoomex/brief.md) | $23.79M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zootopia-finance](./zootopia-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zoro-protocol](./zoro-protocol/brief.md) | $11.76K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zoth](./zoth/brief.md) | $2.20M | 5 | 43 | 32/43 (74%) | 78.1% | 0.0% (-) | 5 | fresh | ✅ active | - |
| [zyberswap](./zyberswap/brief.md) | $65.56K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |

_Generated: 2026-06-14T10:56:59.854Z_
_Projects: 1409_
