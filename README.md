# Agentic Audit Briefs

Machine-readable and human-readable audit coverage briefs for DeFi protocols, produced by [meta-audit](https://github.com/alexdolgov/meta-audit).

Each project directory contains:
- `brief.json` — machine-readable: full contract surface, audits, coverage, TVL
- `brief.md` — human-readable: overview, narrative, tables with links
- `contracts/` — verified source code organized by chain, with per-contract READMEs

## Project Directory

| Project | TVL (DL) | Chains | Implementations | Verified | Coverage | Tier 1 | Audits | Freshness | Status | ASD |
|---|---:|---|---:|---|---:|---|---:|---|---|---:|
| [reservoir-protocol](./reservoir-protocol/brief.md) | $63.12M | 9 | 106 | 95/106 (90%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2061.15M |
| [keep3r-network](./keep3r-network/brief.md) | $3.58M | ethereum | 52 | 52/52 (100%) | 1.9% | 0.0% (-) | 1 | stale | ⚠️ declining | $2004.27M |
| [zyfai](./zyfai/brief.md) | $4.74M | 5 | 77 | 76/77 (99%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1696.25M |
| [angle](./angle/brief.md) | $2.04M | 8 | 123 | 102/123 (83%) | 2.9% | 0.0% (-) | 2 | stale | ⚠️ declining | $1213.48M |
| [rumpel-labs](./rumpel-labs/brief.md) | $1.50M | ethereum | 55 | 54/55 (98%) | 1.9% | 0.0% (-) | 1 | aging | ⚠️ declining | $1023.03M |
| [bracket-protocol](./bracket-protocol/brief.md) | $3.04M | arbitrum, ethereum | 19 | 18/19 (95%) | 33.3% | 0.0% (-) | 2 | fresh | ✅ active | $619.35M |
| [volta-club](./volta-club/brief.md) | $286.90K | avalanche, ethereum | 66 | 65/66 (98%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $612.49M |
| [trevee-earn](./trevee-earn/brief.md) | $999.85K | ethereum, plasma, sonic | 29 | 29/29 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $583.07M |
| [hyperwave](./hyperwave/brief.md) | $3.32M | base, ethereum, hyperliquid | 13 | 9/13 (69%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $499.87M |
| [trust-wallet](./trust-wallet/brief.md) | $32.63M | bsc | 10 | 9/10 (90%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $470.24M |
| [brotocol](./brotocol/brief.md) | $6.48M | 8 | 43 | 23/43 (53%) | 17.4% | 0.0% (-) | 6 | fresh | ✅ active | $447.56M |
| [starknet-btc-staking](./starknet-btc-staking/brief.md) | $43.88M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $412.19M |
| [cream-finance](./cream-finance/brief.md) | $1.32M | 4 | 19 | 18/19 (95%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $355.75M |
| [alchemix](./alchemix/brief.md) | $31.91M | 4 | 99 | 88/99 (89%) | 15.9% | 4.5% (Spearbit) | 5 | fresh | ✅ active | $337.39M |
| [zerolend](./zerolend/brief.md) | $13.19M | 7 | 206 | 162/206 (79%) | 17.9% | 0.0% (-) | 3 | stale | ⚠️ declining | $331.62M |
| [nerona](./nerona/brief.md) | $5.39M | ethereum | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $326.95M |
| [tenderize](./tenderize/brief.md) | $782.03K | arbitrum, ethereum | 16 | 15/16 (94%) | 13.3% | 0.0% (-) | 2 | stale | ⚠️ declining | $313.35M |
| [inverse-finance](./inverse-finance/brief.md) | $34.42M | 5 | 64 | 64/64 (100%) | 12.5% | 7.8% (Code4rena, Sherlock) | 5 | fresh | ✅ active | $286.87M |
| [mantra-dao](./mantra-dao/brief.md) | $1.60M | bsc, ethereum, polygon | 149 | 53/149 (36%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $279.01M |
| [dyorswap](./dyorswap/brief.md) | $1.68M | 7 | 47 | 5/47 (11%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $270.03M |
| [debridge](./debridge/brief.md) | $2.78M | 11 | 60 | 47/60 (78%) | 48.9% | 0.0% (-) | 13 | aging | ⚠️ declining | $263.88M |
| [btcst](./btcst/brief.md) | $909.72K | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $263.69M |
| [aethir](./aethir/brief.md) | $6.79M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $257.03M |
| [symbiosis](./symbiosis/brief.md) | $8.54M | 7 | 48 | 38/48 (79%) | 47.4% | 34.2% (SlowMist) | 8 | fresh | ✅ active | $236.15M |
| [sphere](./sphere/brief.md) | $6.64M | 4 | 11 | 10/11 (91%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $229.11M |
| [kyberswap](./kyberswap/brief.md) | $8.90M | 15 | 297 | 123/297 (41%) | 10.6% | 8.9% (ChainSecurity, Spearbit) | 9 | fresh | ⚠️ declining | $224.42M |
| [angstrom](./angstrom/brief.md) | $3.06M | base, ethereum | 13 | 13/13 (100%) | 7.7% | 7.7% (Spearbit) | 1 | fresh | ⚠️ declining | $182.65M |
| [piku](./piku/brief.md) | $18.28M | ethereum | 54 | 52/54 (96%) | 7.7% | 0.0% (-) | 1 | stale | ✅ active | $172.09M |
| [decentralized-euro](./decentralized-euro/brief.md) | $1.84M | 4 | 30 | 29/30 (97%) | 37.9% | 37.9% (ChainSecurity) | 2 | aging | ✅ active | $171.19M |
| [mitosis](./mitosis/brief.md) | $1.28M | 11 | 115 | 77/115 (67%) | 2.6% | 2.6% (Code4rena) | 1 | fresh | ✅ active | $170.69M |
| [superfarm](./superfarm/brief.md) | $931.02K | ethereum | 17 | 17/17 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $167.21M |
| [babydogecoin](./babydogecoin/brief.md) | $1.97M | bsc, ethereum | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $164.86M |
| [tokenworks](./tokenworks/brief.md) | $1.59M | ethereum | 70 | 37/70 (53%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $163.62M |
| [hypersurface](./hypersurface/brief.md) | $3.05M | base, hyperliquid | 235 | 43/235 (18%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $161.02M |
| [autofinance](./autofinance/brief.md) | $39.39M | 6 | 280 | 226/280 (81%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | $155.39M |
| [avantis](./avantis/brief.md) | $36.22M | base | 21 | 20/21 (95%) | 80.0% | 0.0% (-) | 3 | aging | ⚠️ declining | $150.92M |
| [ribbon-finance](./ribbon-finance/brief.md) | $4.05M | avalanche, ethereum | 23 | 19/23 (83%) | 31.6% | 0.0% (-) | 4 | stale | ⚠️ declining | $148.22M |
| [infinifi](./infinifi/brief.md) | $77.95M | bsc, ethereum, plasma | 110 | 64/110 (58%) | 0.0% | 0.0% (-) | 0 | aging | ⚠️ declining | $145.94M |
| [zircuit](./zircuit/brief.md) | $9.64M | base, ethereum | 22 | 20/22 (91%) | 30.0% | 0.0% (-) | 6 | aging | ⚠️ declining | $144.24M |
| [beanstalk](./beanstalk/brief.md) | $5.15M | arbitrum, ethereum | 44 | 39/44 (89%) | 7.7% | 5.1% (Code4rena, Cyfrin, Immunefi) | 6 | stale | ⚠️ declining | $142.55M |
| [giza](./giza/brief.md) | $13.97K | 4 | 19 | 19/19 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $140.58M |
| [zircuit-staking](./zircuit-staking/brief.md) | $41.48M | base, ethereum | 13 | 12/13 (92%) | 33.3% | 0.0% (-) | 4 | aging | ⚠️ declining | $140.43M |
| [bio-protocol](./bio-protocol/brief.md) | $4.31M | base, ethereum | 33 | 32/33 (97%) | 9.4% | 0.0% (-) | 2 | fresh | ✅ active | $139.62M |
| [apechain-bridge](./apechain-bridge/brief.md) | $40.86M | arbitrum, ethereum | 15 | 15/15 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $138.23M |
| [wavesbridge](./wavesbridge/brief.md) | $353.35K | arbitrum, bsc, ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $136.63M |
| [bitway](./bitway/brief.md) | $60.78M | bsc | 8 | 7/8 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $136.35M |
| [bitway-earn](./bitway-earn/brief.md) | $60.03M | bsc | 7 | 6/7 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $136.35M |
| [velo-finance](./velo-finance/brief.md) | $1.53M | bsc | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $117.63M |
| [velvet.capital](./velvet.capital/brief.md) | $6.84M | base, bsc, ethereum | 17 | 8/17 (47%) | 62.5% | 0.0% (-) | 4 | fresh | ⚠️ declining | $95.22M |
| [gnosis-protocol-v1](./gnosis-protocol-v1/brief.md) | $1.88M | ethereum | 18 | 18/18 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $94.39M |
| [yieldseeker](./yieldseeker/brief.md) | $1.42M | base | 114 | 59/114 (52%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $93.91M |
| [gravity-bridge](./gravity-bridge/brief.md) | $11.82M | ethereum | 29 | 28/29 (97%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $91.30M |
| [mev-capital](./mev-capital/brief.md) | $54.64M | 9 | 71 | 68/71 (96%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $86.80M |
| [the-idols](./the-idols/brief.md) | $4.49M | ethereum | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $85.36M |
| [ring-protocol](./ring-protocol/brief.md) | $24.91M | 12 | 65 | 43/65 (66%) | 37.2% | 27.9% (SlowMist, Spearbit) | 5 | fresh | ✅ active | $83.51M |
| [zoo-finance](./zoo-finance/brief.md) | $28.63M | 5 | 46 | 25/46 (54%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $83.03M |
| [mainstreet](./mainstreet/brief.md) | $81.92M | ethereum | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $77.75M |
| [stable-jack](./stable-jack/brief.md) | $1.23M | avalanche, sonic | 28 | 17/28 (61%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $76.84M |
| [3jane](./3jane/brief.md) | $46.36M | ethereum | 17 | 17/17 (100%) | 76.5% | 76.5% (Sherlock) | 4 | fresh | ⚠️ declining | $76.61M |
| [alphaping](./alphaping/brief.md) | $75.88M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $73.58M |
| [api3](./api3/brief.md) | $48.59M | ethereum, mantle | 20 | 19/20 (95%) | 15.8% | 5.3% (Trail of Bits) | 3 | aging | ❓ unknown | $72.23M |
| [switcheo-finance](./switcheo-finance/brief.md) | $1.01M | ethereum | 18 | 18/18 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $69.84M |
| [nest](./nest/brief.md) | $17.71M | bsc, ethereum, hyperliquid | 49 | 45/49 (92%) | 35.6% | 0.0% (-) | 1 | fresh | ✅ active | $69.41M |
| [blur](./blur/brief.md) | $14.96M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $68.53M |
| [aura](./aura/brief.md) | $11.80M | 9 | 281 | 101/281 (36%) | 23.1% | 11.1% (Code4rena) | 15 | stale | ✅ active | $68.25M |
| [bunny](./bunny/brief.md) | $3.05M | bsc | 18 | 18/18 (100%) | 38.9% | 0.0% (-) | 1 | stale | ⚠️ declining | $67.80M |
| [native](./native/brief.md) | $63.31M | 6 | 70 | 42/70 (60%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $67.56M |
| [jones-dao](./jones-dao/brief.md) | $1.32M | 4 | 49 | 46/49 (94%) | 13.0% | 0.0% (-) | 4 | stale | ✅ active | $67.28M |
| [init-capital](./init-capital/brief.md) | $2.45M | blast, mantle | 9 | 6/9 (67%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $66.15M |
| [satlayer](./satlayer/brief.md) | $219.19K | 4 | 91 | 67/91 (74%) | 7.5% | 0.0% (-) | 6 | fresh | ✅ active | $64.67M |
| [deeplock](./deeplock/brief.md) | $1.96M | bsc | 19 | 15/19 (79%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $56.17M |
| [hop-protocol](./hop-protocol/brief.md) | $3.12M | 6 | 64 | 45/64 (70%) | 20.0% | 20.0% (Trail of Bits) | 4 | stale | ⚠️ declining | $54.78M |
| [gains-network](./gains-network/brief.md) | $18.76M | arbitrum, base, polygon | 26 | 26/26 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $53.82M |
| [b.protocol](./b.protocol/brief.md) | $1.76M | 4 | 17 | 15/17 (88%) | 6.7% | 0.0% (-) | 2 | stale | ⚠️ declining | $53.75M |
| [synfutures](./synfutures/brief.md) | $4.85M | 4 | 36 | 2/36 (6%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $52.41M |
| [armitage-by-wintermute](./armitage-by-wintermute/brief.md) | $52.01M | ethereum | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $51.81M |
| [stcyber](./stcyber/brief.md) | $1.14M | 4 | 19 | 17/19 (89%) | 5.9% | 5.9% (SlowMist) | 1 | stale | ⚠️ declining | $51.36M |
| [republic-note](./republic-note/brief.md) | $14.22M | avalanche | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $51.20M |
| [lisk-bridge](./lisk-bridge/brief.md) | $30.24M | ethereum | 40 | 38/40 (95%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $50.91M |
| [flying-tulip](./flying-tulip/brief.md) | $6.99M | 5 | 51 | 48/51 (94%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $50.76M |
| [resolv](./resolv/brief.md) | $22.38M | 7 | 80 | 65/80 (81%) | 3.1% | 3.1% (Sherlock) | 1 | aging | ❓ unknown | $50.49M |
| [stakestone](./stakestone/brief.md) | $18.34M | 8 | 86 | 51/86 (59%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $49.72M |
| [overtime](./overtime/brief.md) | $2.07M | 5 | 75 | 69/75 (92%) | 7.2% | 0.0% (-) | 3 | aging | ⚠️ declining | $42.53M |
| [turtle-club](./turtle-club/brief.md) | $857.95K | 4 | 183 | 155/183 (85%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $41.93M |
| [tulipa-capital](./tulipa-capital/brief.md) | $40.98M | base, berachain, ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $40.79M |
| [illuvium](./illuvium/brief.md) | $6.88M | ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $39.76M |
| [asymmetry](./asymmetry/brief.md) | $2.82M | base, ethereum | 84 | 71/84 (85%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $39.67M |
| [grvt](./grvt/brief.md) | $51.18M | ethereum | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $39.14M |
| [sophon-bridge](./sophon-bridge/brief.md) | $60.24M | ethereum | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $39.13M |
| [reya](./reya/brief.md) | $17.18M | 5 | 5 | 4/5 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $37.85M |
| [snowbank](./snowbank/brief.md) | $4.10M | avalanche | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $36.05M |
| [ichi](./ichi/brief.md) | $10.70M | 13 | 126 | 39/126 (31%) | 12.5% | 0.0% (-) | 3 | stale | ✅ active | $35.94M |
| [katana-pre-launch](./katana-pre-launch/brief.md) | $17.49M | base, ethereum | 53 | 49/53 (92%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $35.47M |
| [nexus-mutual](./nexus-mutual/brief.md) | $78.35M | ethereum | 23 | 23/23 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $34.82M |
| [backedfi](./backedfi/brief.md) | $7.77M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $31.19M |
| [eth-strategy](./eth-strategy/brief.md) | $3.88M | ethereum | 40 | 33/40 (83%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $30.39M |
| [pooltogether](./pooltogether/brief.md) | $8.20M | 8 | 67 | 36/67 (54%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $26.83M |
| [maverick-protocol](./maverick-protocol/brief.md) | $1.77M | 6 | 31 | 15/31 (48%) | 37.5% | 25.0% (Code4rena) | 4 | stale | ⚠️ declining | $26.76M |
| [synapse](./synapse/brief.md) | $11.75M | 19 | 236 | 106/236 (45%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $25.57M |
| [trueo](./trueo/brief.md) | $4.89M | base | 28 | 28/28 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $25.54M |
| [keep-network](./keep-network/brief.md) | $1.08M | 5 | 187 | 109/187 (58%) | 6.4% | 2.7% (ChainSecurity, ConsenSys Diligence) | 6 | fresh | ⚠️ declining | $24.66M |
| [aegis-markets](./aegis-markets/brief.md) | $1.84M | base, unichain | 16 | 14/16 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $24.21M |
| [iq](./iq/brief.md) | $3.71M | ethereum, fraxtal | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $23.85M |
| [rainbow-bridge](./rainbow-bridge/brief.md) | $1.67M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $23.29M |
| [ultrayield](./ultrayield/brief.md) | $63.40M | 6 | 69 | 65/69 (94%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $23.11M |
| [everrise](./everrise/brief.md) | $643.73K | 5 | 39 | 34/39 (87%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $23.07M |
| [hope-money](./hope-money/brief.md) | $1.39M | ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $21.98M |
| [allbridge](./allbridge/brief.md) | $21.16M | 13 | 110 | 31/110 (28%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $21.72M |
| [flaunch](./flaunch/brief.md) | $1.46M | base, ethereum | 40 | 39/40 (98%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $21.20M |
| [wing-finance](./wing-finance/brief.md) | $27.23M | bsc, ethereum, klaytn | 37 | 6/37 (16%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $20.27M |
| [smardex-ecosystem](./smardex-ecosystem/brief.md) | $2.76M | 5 | 20 | 20/20 (100%) | 20.0% | 0.0% (-) | 4 | aging | ⚠️ declining | $20.06M |
| [reppo](./reppo/brief.md) | $3.83M | base | 2 | 1/2 (50%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | $19.77M |
| [index-coop](./index-coop/brief.md) | $9.03M | 4 | 41 | 24/41 (59%) | 12.5% | 0.0% (-) | 2 | aging | ✅ active | $19.58M |
| [concentrator](./concentrator/brief.md) | $63.56M | ethereum | 131 | 121/131 (92%) | 16.5% | 0.8% (Trail of Bits) | 19 | aging | ✅ active | $19.31M |
| [dodo](./dodo/brief.md) | $11.03M | 10 | 79 | 74/79 (94%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $19.13M |
| [ethichub](./ethichub/brief.md) | $3.58M | celo, ethereum, gnosis | 19 | 17/19 (89%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $18.51M |
| [parasail](./parasail/brief.md) | $2.69M | arbitrum | 27 | 1/27 (4%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $17.21M |
| [qidao](./qidao/brief.md) | $2.65M | 20 | 814 | 76/814 (9%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $16.47M |
| [geth](./geth/brief.md) | $12.72M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $16.17M |
| [1inch](./1inch/brief.md) | $2.41M | ethereum | 33 | 22/33 (67%) | 40.9% | 18.2% (ChainSecurity, MixBytes, OpenZeppelin) | 42 | fresh | ✅ active | $16.08M |
| [pharaoh-exchange](./pharaoh-exchange/brief.md) | $38.71M | avalanche | 61 | 50/61 (82%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $15.62M |
| [thorswap](./thorswap/brief.md) | $12.58M | 4 | 14 | 13/14 (93%) | 23.1% | 0.0% (-) | 2 | stale | ❓ unknown | $15.54M |
| [t-rize](./t-rize/brief.md) | $23.00M | base | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $15.01M |
| [royco-protocol](./royco-protocol/brief.md) | $31.92M | 6 | 15 | 13/15 (87%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $12.98M |
| [makina](./makina/brief.md) | $36.13M | base, ethereum, ink | 44 | 41/44 (93%) | 92.7% | 82.9% (ChainSecurity) | 3 | fresh | ✅ active | $12.90M |
| [lets-get-hai](./lets-get-hai/brief.md) | $985.11K | optimism | 25 | 24/25 (96%) | 66.7% | 0.0% (-) | 4 | fresh | ✅ active | $12.60M |
| [sideshift](./sideshift/brief.md) | $12.70M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $12.33M |
| [cyclone](./cyclone/brief.md) | $1.16M | bsc, ethereum, polygon | 32 | 23/32 (72%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $11.94M |
| [d2-finance](./d2-finance/brief.md) | $25.66M | arbitrum, base, berachain | 152 | 58/152 (38%) | 50.8% | 10.2% (Cyfrin) | 2 | aging | ✅ active | $11.49M |
| [synthetix](./synthetix/brief.md) | $32.47M | 4 | 19 | 19/19 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $11.44M |
| [alpaca-finance](./alpaca-finance/brief.md) | $41.66M | bsc | 17 | 17/17 (100%) | 35.3% | 11.8% (SlowMist) | 4 | stale | ⚠️ declining | $11.23M |
| [equilibria](./equilibria/brief.md) | $12.92M | 10 | 74 | 53/74 (72%) | 20.7% | 0.0% (-) | 3 | aging | ⚠️ declining | $11.05M |
| [kleros](./kleros/brief.md) | $5.81M | 4 | 358 | 84/358 (23%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $10.69M |
| [azuro](./azuro/brief.md) | $1.64M | 6 | 129 | 43/129 (33%) | 9.1% | 0.0% (-) | 3 | aging | ✅ active | $9.78M |
| [polkastarter](./polkastarter/brief.md) | $2.73M | bsc, ethereum | 2 | 2/2 (100%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | $9.61M |
| [kaito](./kaito/brief.md) | $15.83M | base | 4 | 3/4 (75%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $9.48M |
| [dao-maker](./dao-maker/brief.md) | $1.53M | bsc, ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $9.34M |
| [across](./across/brief.md) | $20.10M | 15 | 104 | 65/104 (63%) | 13.4% | 13.4% (OpenZeppelin) | 6 | aging | ✅ active | $9.10M |
| [40-acres](./40-acres/brief.md) | $32.91M | 4 | 195 | 128/195 (66%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $8.73M |
| [woofi](./woofi/brief.md) | $17.35M | 11 | 47 | 27/47 (57%) | 29.6% | 0.0% (-) | 3 | aging | ⚠️ declining | $8.70M |
| [hyperbeat](./hyperbeat/brief.md) | $33.76M | ethereum, hyperliquid | 105 | 53/105 (50%) | 26.4% | 13.2% (Certora) | 5 | fresh | ✅ active | $8.57M |
| [neku](./neku/brief.md) | $1.60M | arbitrum, moonriver | 17 | 8/17 (47%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $8.38M |
| [set-protocol](./set-protocol/brief.md) | $8.99M | ethereum | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $7.89M |
| [the-arena](./the-arena/brief.md) | $1.52M | avalanche | 40 | 27/40 (68%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $7.76M |
| [mobox](./mobox/brief.md) | $1.25M | bsc | 8 | 6/8 (75%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $6.64M |
| [re7-labs](./re7-labs/brief.md) | $84.76M | 6 | 16 | 16/16 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $6.55M |
| [nftx](./nftx/brief.md) | $1.24M | arbitrum, ethereum | 51 | 50/51 (98%) | 12.0% | 10.0% (Code4rena) | 3 | stale | ⚠️ declining | $6.14M |
| [sx-rollup-bridge](./sx-rollup-bridge/brief.md) | $7.27M | ethereum | 17 | 16/17 (94%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $6.12M |
| [ambire-wallet](./ambire-wallet/brief.md) | $11.41M | ethereum | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $5.82M |
| [ekubo](./ekubo/brief.md) | $20.90M | ethereum | 14 | 8/14 (57%) | 37.5% | 12.5% (Code4rena) | 3 | fresh | ✅ active | $5.65M |
| [wasabi](./wasabi/brief.md) | $1.04M | 4 | 62 | 51/62 (82%) | 43.1% | 25.5% (Sherlock) | 8 | aging | ⚠️ declining | $5.48M |
| [stargate-finance](./stargate-finance/brief.md) | $84.17M | 21 | 72 | 31/72 (43%) | 60.0% | 0.0% (-) | 14 | stale | ✅ active | $5.16M |
| [pleasing-gold](./pleasing-gold/brief.md) | - | arbitrum, ethereum | 11 | 7/11 (64%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $4.94M |
| [yala](./yala/brief.md) | $1.83M | ethereum | 20 | 6/20 (30%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $4.62M |
| [credit-coop](./credit-coop/brief.md) | $4.59M | base, ethereum | 8 | 7/8 (88%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | $4.59M |
| [atlendis](./atlendis/brief.md) | $10.99M | polygon | 6 | 4/6 (67%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $4.28M |
| [primefi](./primefi/brief.md) | $243.01K | base, hyperliquid | 84 | 50/84 (60%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $4.12M |
| [meta-pool](./meta-pool/brief.md) | $69.74M | aurora, ethereum | 12 | 2/12 (17%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $3.96M |
| [stafi](./stafi/brief.md) | $3.16M | ethereum | 15 | 10/15 (67%) | 30.0% | 0.0% (-) | 2 | stale | ⚠️ declining | $3.92M |
| [swaap](./swaap/brief.md) | $4.09M | 9 | 43 | 4/43 (9%) | 25.0% | 25.0% (ChainSecurity) | 2 | stale | ⚠️ declining | $3.81M |
| [near-intents](./near-intents/brief.md) | $82.96M | gnosis | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.72M |
| [firebot](./firebot/brief.md) | $2.42M | polygon | 33 | 25/33 (76%) | 4.0% | 0.0% (-) | 1 | stale | ❓ unknown | $3.69M |
| [hyperswap](./hyperswap/brief.md) | $14.50M | hyperliquid | 24 | 9/24 (38%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $3.68M |
| [summer.fi](./summer.fi/brief.md) | $32.92M | 5 | 70 | 59/70 (84%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $3.66M |
| [xsy](./xsy/brief.md) | $20.97M | avalanche, base | 12 | 9/12 (75%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $3.60M |
| [llama-airforce](./llama-airforce/brief.md) | $1.33M | ethereum | 58 | 37/58 (64%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.48M |
| [monstro](./monstro/brief.md) | $2.01M | base | 13 | 13/13 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $3.46M |
| [open-ticketing-ecosystem](./open-ticketing-ecosystem/brief.md) | $817.65K | base, ethereum, polygon | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.43M |
| [yieldfi](./yieldfi/brief.md) | $10.77M | 9 | 37 | 29/37 (78%) | 65.6% | 65.6% (Cyfrin, Sherlock) | 3 | fresh | ✅ active | $3.41M |
| [lair-finance](./lair-finance/brief.md) | $4.17M | berachain | 61 | 16/61 (26%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $3.41M |
| [beradrome](./beradrome/brief.md) | $6.88M | berachain | 11 | 11/11 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.29M |
| [steer-protocol](./steer-protocol/brief.md) | $17.07M | arbitrum, base | 5 | 3/5 (60%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $3.26M |
| [resupply](./resupply/brief.md) | $38.67M | ethereum | 39 | 39/39 (100%) | 2.6% | 2.6% (ChainSecurity) | 3 | fresh | ✅ active | $3.18M |
| [alien-base](./alien-base/brief.md) | $3.91M | base | 26 | 26/26 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $3.09M |
| [liquidloans](./liquidloans/brief.md) | $2.86M | base | 20 | 20/20 (100%) | 30.0% | 0.0% (-) | 2 | fresh | ✅ active | $3.04M |
| [gro](./gro/brief.md) | $4.66M | avalanche, ethereum | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.93M |
| [pickle](./pickle/brief.md) | $4.06M | 5 | 31 | 31/31 (100%) | 6.5% | 0.0% (-) | 2 | stale | ⚠️ declining | $2.87M |
| [morph-bridge](./morph-bridge/brief.md) | $13.44M | ethereum | 11 | 11/11 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.85M |
| [ethereal-season-zero](./ethereal-season-zero/brief.md) | $2.63M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $2.82M |
| [izumi-finance](./izumi-finance/brief.md) | $3.45M | 14 | 45 | 20/45 (44%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.76M |
| [iaero-protocol](./iaero-protocol/brief.md) | $1.56M | base | 31 | 29/31 (94%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.73M |
| [singularity-finance](./singularity-finance/brief.md) | $4.72M | base, ethereum | 10 | 10/10 (100%) | 70.0% | 0.0% (-) | 1 | fresh | ❓ unknown | $2.69M |
| [b-lucky](./b-lucky/brief.md) | $1.09M | bsc | 19 | 2/19 (11%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $2.67M |
| [plasma-saving-vaults](./plasma-saving-vaults/brief.md) | $43.92M | plasma | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.65M |
| [mezo-bridge](./mezo-bridge/brief.md) | $16.86M | ethereum | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.63M |
| [rari-capital](./rari-capital/brief.md) | $1.34M | ethereum | 20 | 19/20 (95%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $2.59M |
| [loopring](./loopring/brief.md) | $8.55M | base, ethereum | 67 | 20/67 (30%) | 15.0% | 0.0% (-) | 1 | stale | ⚠️ declining | $2.43M |
| [aevo](./aevo/brief.md) | $18.89M | 4 | 21 | 14/21 (67%) | 40.0% | 0.0% (-) | 5 | stale | ✅ active | $2.21M |
| [bancor](./bancor/brief.md) | $24.32M | ethereum | 96 | 72/96 (75%) | 25.0% | 23.6% (ChainSecurity, ConsenSys Diligence, OpenZeppelin) | 6 | stale | ⚠️ declining | $2.18M |
| [iotube](./iotube/brief.md) | $2.75M | bsc, ethereum, polygon | 15 | 13/15 (87%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.02M |
| [capx-ai](./capx-ai/brief.md) | $2.22M | bsc | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $1.95M |
| [meeds-finance](./meeds-finance/brief.md) | $1.34M | 5 | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.85M |
| [mm-finance](./mm-finance/brief.md) | $1.26M | arbitrum, cronos, polygon | 30 | 9/30 (30%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $1.85M |
| [xwin-finance](./xwin-finance/brief.md) | $4.94M | arbitrum, bsc, polygon | 28 | 26/28 (93%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $1.84M |
| [treehouse-protocol](./treehouse-protocol/brief.md) | $65.97M | ethereum | 20 | 19/20 (95%) | 36.8% | 5.3% (Trail of Bits) | 10 | fresh | ⚠️ declining | $1.80M |
| [tau-labs](./tau-labs/brief.md) | $4.08M | ethereum, plasma | 74 | 74/74 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $1.73M |
| [eventum-bridge](./eventum-bridge/brief.md) | $2.82M | arbitrum, ethereum | 21 | 17/21 (81%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $1.64M |
| [sperax](./sperax/brief.md) | $1.87M | arbitrum, ethereum | 10 | 9/10 (90%) | 33.3% | 11.1% (SlowMist) | 5 | stale | ⚠️ declining | $1.63M |
| [sqd.ai](./sqd.ai/brief.md) | $23.18M | 4 | 28 | 25/28 (89%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.58M |
| [elephant-money](./elephant-money/brief.md) | $74.83M | bsc | 49 | 47/49 (96%) | 8.5% | 0.0% (-) | 1 | stale | ⚠️ declining | $1.57M |
| [templar-dao](./templar-dao/brief.md) | $2.18M | bsc, moonriver | 11 | 10/11 (91%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.55M |
| [zircuit-finance](./zircuit-finance/brief.md) | $1.52M | base, ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.51M |
| [seer](./seer/brief.md) | $828.65K | ethereum, gnosis | 25 | 24/25 (96%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.48M |
| [hypha](./hypha/brief.md) | $7.38M | avalanche | 23 | 19/23 (83%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $1.45M |
| [predict-fun](./predict-fun/brief.md) | $16.83M | blast, bsc | 39 | 24/39 (62%) | 8.3% | 8.3% (Cyfrin) | 2 | fresh | ✅ active | $1.45M |
| [shardingdao](./shardingdao/brief.md) | $6.28M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.38M |
| [planet](./planet/brief.md) | $1.68M | bsc | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $1.35M |
| [rezerve](./rezerve/brief.md) | $2.45M | 4 | 95 | 74/95 (78%) | 1.4% | 0.0% (-) | 1 | aging | ✅ active | $1.34M |
| [reflexer](./reflexer/brief.md) | $1.83M | ethereum | 5 | 5/5 (100%) | 40.0% | 20.0% (OpenZeppelin) | 2 | stale | ⚠️ declining | $1.28M |
| [alphagrowth](./alphagrowth/brief.md) | $7.38M | base, ethereum | 29 | 23/29 (79%) | 17.4% | 13.0% (ChainSecurity, Cyfrin, Spearbit) | 7 | fresh | ✅ active | $1.24M |
| [suzaku](./suzaku/brief.md) | $1.08M | avalanche | 49 | 21/49 (43%) | 9.5% | 9.5% (ChainSecurity) | 1 | stale | ✅ active | $1.18M |
| [wagmi](./wagmi/brief.md) | $1.25M | 11 | 113 | 26/113 (23%) | 7.7% | 7.7% (Sherlock) | 12 | stale | ⚠️ declining | $1.15M |
| [ocean-point](./ocean-point/brief.md) | $948.06K | ethereum | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $1.08M |
| [defil](./defil/brief.md) | $1.80M | ethereum | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $1.00M |
| [flex](./flex/brief.md) | $2.55M | ethereum | 15 | 15/15 (100%) | 33.3% | 0.0% (-) | 3 | fresh | ❓ unknown | $1.00M |
| [alphax](./alphax/brief.md) | $1.48M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $933.75K |
| [bend](./bend/brief.md) | $12.91M | berachain, ethereum | 71 | 48/71 (68%) | 20.8% | 20.8% (Spearbit) | 1 | fresh | ✅ active | $896.83K |
| [peapods-finance](./peapods-finance/brief.md) | $6.33M | 6 | 94 | 36/94 (38%) | 56.8% | 0.0% (-) | 4 | aging | ⚠️ declining | $891.94K |
| [baseline-protocol](./baseline-protocol/brief.md) | $106.16M | base, blast, ethereum | 38 | 5/38 (13%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $836.66K |
| [paal-ai](./paal-ai/brief.md) | $1.30M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $830.13K |
| [orbit-bridge](./orbit-bridge/brief.md) | $15.31M | 5 | 6 | 3/6 (50%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $820.68K |
| [yield-yak](./yield-yak/brief.md) | $13.74M | arbitrum, avalanche, mantle | 15 | 12/15 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $772.19K |
| [anthias-labs](./anthias-labs/brief.md) | $18.65M | base | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $705.35K |
| [unitas](./unitas/brief.md) | $59.86M | bsc | 12 | 5/12 (42%) | 60.0% | 60.0% (SlowMist) | 3 | fresh | ✅ active | $704.69K |
| [silo-finance](./silo-finance/brief.md) | $66.95M | 6 | 313 | 98/313 (31%) | 21.4% | 6.1% (Spearbit) | 8 | fresh | ❓ unknown | $641.32K |
| [biswap](./biswap/brief.md) | $5.18M | 4 | 24 | 8/24 (33%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $609.28K |
| [bakeryswap](./bakeryswap/brief.md) | $2.89M | bsc | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $606.61K |
| [pulsechain](./pulsechain/brief.md) | $48.05M | ethereum | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $475.40K |
| [pulsechain-bridge](./pulsechain-bridge/brief.md) | $48.05M | ethereum | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $475.40K |
| [radiant](./radiant/brief.md) | $1.88M | 4 | 360 | 152/360 (42%) | 32.7% | 27.6% (OpenZeppelin) | 6 | fresh | 💀 dead | $460.07K |
| [camelot](./camelot/brief.md) | $22.86M | arbitrum | 33 | 27/33 (82%) | 11.1% | 0.0% (-) | 1 | stale | ✅ active | $391.94K |
| [latch](./latch/brief.md) | $1.56M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $375.75K |
| [equalizer](./equalizer/brief.md) | $861.05K | base, fantom, sonic | 176 | 49/176 (28%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $374.84K |
| [dforce](./dforce/brief.md) | $12.55M | 8 | 39 | 33/39 (85%) | 75.8% | 75.8% (Trail of Bits) | 1 | stale | ⚠️ declining | $366.93K |
| [shapeshift](./shapeshift/brief.md) | $1.24M | 4 | 14 | 14/14 (100%) | 14.3% | 0.0% (-) | 1 | stale | ✅ active | $353.69K |
| [vesper](./vesper/brief.md) | $41.88M | ethereum | 13 | 13/13 (100%) | 61.5% | 0.0% (-) | 19 | stale | ✅ active | $351.12K |
| [depth](./depth/brief.md) | $1.16M | bsc, heco | 4 | 3/4 (75%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $342.71K |
| [dtrinity](./dtrinity/brief.md) | $2.30M | ethereum, fraxtal, sonic | 99 | 72/99 (73%) | 15.1% | 0.0% (-) | 1 | unknown | ✅ active | $313.87K |
| [bmx](./bmx/brief.md) | $2.76M | base, mode, sonic | 61 | 60/61 (98%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $305.69K |
| [ellipsis-finance](./ellipsis-finance/brief.md) | $1.10M | bsc | 15 | 15/15 (100%) | 26.7% | 0.0% (-) | 2 | stale | 💀 dead | $297.85K |
| [easedefi.org](./easedefi.org/brief.md) | $3.61M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $296.26K |
| [yieldnest](./yieldnest/brief.md) | $20.17M | 7 | 18 | 16/18 (89%) | 47.1% | 23.5% (ChainSecurity) | 8 | aging | ✅ active | $295.09K |
| [tokenstore](./tokenstore/brief.md) | $1.05M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $265.68K |
| [babyswap](./babyswap/brief.md) | $1.28M | bsc | 24 | 23/24 (96%) | 4.3% | 0.0% (-) | 1 | stale | ✅ active | $234.96K |
| [universe-xyz](./universe-xyz/brief.md) | $1.19M | ethereum | 7 | 7/7 (100%) | 14.3% | 0.0% (-) | 1 | stale | 💀 dead | $216.12K |
| [ailayer-farm](./ailayer-farm/brief.md) | $65.67M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $211.86K |
| [blackhole](./blackhole/brief.md) | $10.59M | avalanche | 59 | 39/59 (66%) | 25.6% | 25.6% (Code4rena) | 3 | fresh | ⚠️ declining | $204.02K |
| [bob-bridge](./bob-bridge/brief.md) | $2.69M | ethereum | 26 | 26/26 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $202.90K |
| [mansory](./mansory/brief.md) | $6.18M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $170.02K |
| [tarot](./tarot/brief.md) | $991.80K | 11 | 66 | 9/66 (14%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | $154.41K |
| [bifi](./bifi/brief.md) | $6.96M | 4 | 15 | 7/15 (47%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $140.01K |
| [lynex](./lynex/brief.md) | $882.39K | linea | 15 | 15/15 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $136.06K |
| [elyfi](./elyfi/brief.md) | $2.15M | bsc, ethereum, klaytn | 11 | 9/11 (82%) | 11.1% | 0.0% (-) | 1 | stale | 💀 dead | $100.63K |
| [ratex](./ratex/brief.md) | $3.18M | bsc | 65 | 17/65 (26%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $98.79K |
| [puffer-finance](./puffer-finance/brief.md) | $46.53M | ethereum | 10 | 10/10 (100%) | 10.0% | 10.0% (SlowMist) | 4 | stale | ⚠️ declining | $97.59K |
| [acryptos](./acryptos/brief.md) | $10.55M | bsc | 19 | 17/19 (89%) | 47.1% | 0.0% (-) | 3 | stale | ✅ active | $85.69K |
| [kromatika](./kromatika/brief.md) | $976.31K | 4 | 16 | 8/16 (50%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $83.80K |
| [moola-market](./moola-market/brief.md) | $1.14M | celo | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $73.92K |
| [drops](./drops/brief.md) | $2.79M | ethereum | 14 | 14/14 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $68.77K |
| [rook](./rook/brief.md) | $1.45M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $68.17K |
| [sashimiswap](./sashimiswap/brief.md) | $4.56M | ethereum, heco | 28 | 5/28 (18%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $67.79K |
| [mento](./mento/brief.md) | $13.58M | celo | 48 | 32/48 (67%) | 69.7% | 60.6% (ChainSecurity, Cyfrin, OpenZeppelin) | 7 | fresh | ⚠️ declining | $64.99K |
| [privacy-pools](./privacy-pools/brief.md) | $8.13M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $54.36K |
| [cbridge](./cbridge/brief.md) | $15.02M | 20 | 217 | 145/217 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $52.10K |
| [reserve-protocol](./reserve-protocol/brief.md) | $64.24M | 4 | 234 | 87/234 (37%) | 58.9% | 21.1% (Code4rena, Spearbit) | 24 | fresh | ⚠️ declining | $49.10K |
| [wombat-exchange](./wombat-exchange/brief.md) | $1.55M | 8 | 58 | 45/58 (78%) | 31.9% | 10.6% (SlowMist) | 8 | aging | ⚠️ declining | $47.82K |
| [ultron-staking-hub-nft](./ultron-staking-hub-nft/brief.md) | $3.00M | 5 | 10 | 1/10 (10%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $43.46K |
| [satori-finance](./satori-finance/brief.md) | $1.27M | 6 | 15 | 4/15 (27%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $40.94K |
| [stake.link](./stake.link/brief.md) | $67.10M | 4 | 23 | 20/23 (87%) | 55.0% | 35.0% (Cyfrin) | 13 | fresh | ✅ active | $35.90K |
| [seamless-protocol](./seamless-protocol/brief.md) | $37.15M | base, ethereum | 23 | 23/23 (100%) | 21.7% | 21.7% (Sherlock, Spearbit) | 5 | fresh | ⚠️ declining | $29.43K |
| [dinari](./dinari/brief.md) | $10.83M | 4 | 64 | 49/64 (77%) | 24.5% | 10.2% (Sherlock) | 3 | aging | ⚠️ declining | $27.59K |
| [landx-finance](./landx-finance/brief.md) | $1.77M | ethereum | 9 | 9/9 (100%) | 22.2% | 0.0% (-) | 1 | stale | ✅ active | $27.34K |
| [neo-tokyo](./neo-tokyo/brief.md) | $882.26K | ethereum | 23 | 23/23 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $26.80K |
| [singularv](./singularv/brief.md) | $1.49M | ethereum | 49 | 49/49 (100%) | 40.8% | 40.8% (Certora, ChainSecurity, OpenZeppelin, Spearbit) | 21 | fresh | ⚠️ declining | $23.92K |
| [kuma-protocol](./kuma-protocol/brief.md) | $3.08M | 4 | 9 | 9/9 (100%) | 11.1% | 11.1% (Code4rena) | 1 | stale | ✅ active | $22.13K |
| [mdex](./mdex/brief.md) | $1.29M | bsc, heco | 6 | 5/6 (83%) | 80.0% | 80.0% (SlowMist) | 3 | stale | ⚠️ declining | $20.17K |
| [chateau](./chateau/brief.md) | $1.04M | hyperliquid, plasma | 5 | 3/5 (60%) | 33.3% | 0.0% (-) | 1 | fresh | ✅ active | $19.06K |
| [etherfuse](./etherfuse/brief.md) | $654.43K | base, polygon | 10 | 3/10 (30%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $16.18K |
| [hemi](./hemi/brief.md) | $566.21K | bsc, ethereum, optimism | 22 | 21/22 (95%) | 4.8% | 0.0% (-) | 2 | fresh | ⚠️ declining | $16.12K |
| [asseto-cash+](./asseto-cash+/brief.md) | $1.40M | ethereum | 4 | 3/4 (75%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $15.35K |
| [hemibtc](./hemibtc/brief.md) | $10.78M | bsc, ethereum, optimism | 30 | 23/30 (77%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $13.26K |
| [stout](./stout/brief.md) | $2.08M | sonic | 32 | 18/32 (56%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $12.61K |
| [accumulated-finance](./accumulated-finance/brief.md) | $1.09M | 5 | 26 | 23/26 (88%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $12.19K |
| [clearpool](./clearpool/brief.md) | $34.32M | 7 | 9 | 5/9 (56%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $10.71K |
| [clever](./clever/brief.md) | $4.39M | ethereum | 22 | 21/22 (95%) | 19.0% | 0.0% (-) | 3 | stale | ✅ active | $10.61K |
| [ledgity-yield](./ledgity-yield/brief.md) | $2.89M | 5 | 61 | 30/61 (49%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $8.17K |
| [lendle](./lendle/brief.md) | $541.72K | mantle | 10 | 9/10 (90%) | 33.3% | 0.0% (-) | 1 | fresh | ⚠️ declining | $5.56K |
| [hakka-finance](./hakka-finance/brief.md) | $3.70M | bsc, ethereum, polygon | 13 | 13/13 (100%) | 38.5% | 0.0% (-) | 5 | stale | ✅ active | $5.43K |
| [wan-bridge](./wan-bridge/brief.md) | $24.28M | 16 | 49 | 34/49 (69%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $4.40K |
| [king-protocol](./king-protocol/brief.md) | $1.14M | 4 | 15 | 3/15 (20%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $3.67K |
| [injective-bridge](./injective-bridge/brief.md) | $12.35M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $2.62K |
| [tender-finance](./tender-finance/brief.md) | $1.16M | arbitrum | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.00K |
| [tranchess](./tranchess/brief.md) | $4.70M | bsc, ethereum, scroll | 40 | 38/40 (95%) | 18.4% | 0.0% (-) | 6 | stale | 💀 dead | $1.94K |
| [credbull](./credbull/brief.md) | $10.94M | arbitrum, polygon | 11 | 11/11 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | $1.83K |
| [yuzu-money](./yuzu-money/brief.md) | $48.95M | plasma | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $1.80K |
| [belt-finance](./belt-finance/brief.md) | $11.77M | bsc, heco, klaytn | 843 | 52/843 (6%) | 50.0% | 0.0% (-) | 4 | stale | ⚠️ declining | $1.70K |
| [team-finance](./team-finance/brief.md) | $45.16M | 12 | 21 | 4/21 (19%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.52K |
| [spookyswap](./spookyswap/brief.md) | $1.17M | fantom, sonic | 90 | 24/90 (27%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $842.67 |
| [proxy](./proxy/brief.md) | $16.43M | ethereum, polygon | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $735.64 |
| [nest-credit](./nest-credit/brief.md) | $51.94M | 4 | 19 | 9/19 (47%) | 60.0% | 20.0% (Spearbit) | 3 | fresh | ✅ active | $693.42 |
| [blast-l2](./blast-l2/brief.md) | $52.15M | blast, ethereum | 295 | 89/295 (30%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $568.85 |
| [nerve](./nerve/brief.md) | $1.47M | bsc, ethereum | 36 | 20/36 (56%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $508.66 |
| [badger-dao](./badger-dao/brief.md) | $7.77M | 4 | 27 | 25/27 (93%) | 20.0% | 4.0% (Code4rena) | 2 | stale | ❓ unknown | $396.94 |
| [hemi-staking](./hemi-staking/brief.md) | $29.14M | 4 | 65 | 28/65 (43%) | 3.6% | 0.0% (-) | 1 | fresh | ✅ active | $391.21 |
| [rank-trading](./rank-trading/brief.md) | $1.95M | bsc | 8 | 5/8 (63%) | 40.0% | 0.0% (-) | 1 | aging | ✅ active | $343.39 |
| [goose](./goose/brief.md) | $12.78M | arbitrum, ethereum, opbnb | 6 | 5/6 (83%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $333.28 |
| [harmonix-finance](./harmonix-finance/brief.md) | $4.26M | arbitrum, ethereum, hyperliquid | 24 | 9/24 (38%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $302.21 |
| [multichain](./multichain/brief.md) | $38.28M | ethereum | 7 | 7/7 (100%) | 71.4% | 0.0% (-) | 3 | stale | 💀 dead | $128.81 |
| [hegic](./hegic/brief.md) | $8.51M | arbitrum, ethereum | 18 | 18/18 (100%) | 33.3% | 0.0% (-) | 2 | stale | ✅ active | $79.12 |
| [superform](./superform/brief.md) | $25.92M | 5 | 93 | 90/93 (97%) | 54.4% | 40.0% (Spearbit) | 8 | fresh | ✅ active | $72.40 |
| [gondi](./gondi/brief.md) | $752.46K | ethereum, hyperliquid | 25 | 14/25 (56%) | 21.4% | 0.0% (-) | 2 | fresh | ✅ active | $35.59 |
| [goplus-security](./goplus-security/brief.md) | $30.02M | 4 | 13 | 12/13 (92%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $34.65 |
| [ankr](./ankr/brief.md) | $17.64M | 5 | 17 | 14/17 (82%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $32.80 |
| [bscswap](./bscswap/brief.md) | $4.58M | bsc | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $11.61 |
| [angles](./angles/brief.md) | $672.84K | sonic | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $7.53 |
| [opyn](./opyn/brief.md) | $1.60M | avalanche, ethereum | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $5.44 |
| [symmio](./symmio/brief.md) | $3.35M | 8 | 166 | 78/166 (47%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $1.00 |
| [arrakis-finance](./arrakis-finance/brief.md) | $69.23M | 9 | 52 | 47/52 (90%) | 4.2% | 0.0% (-) | 1 | stale | ✅ active | $0.68 |
| [plasma-one](./plasma-one/brief.md) | $5.46M | plasma | 4 | 2/4 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $0.62 |
| [toupee.tech](./toupee.tech/brief.md) | $4.94M | base | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $0.49 |
| [mux-protocol](./mux-protocol/brief.md) | $8.32M | 5 | 161 | 37/161 (23%) | 24.3% | 0.0% (-) | 2 | aging | ✅ active | $0.21 |
| [deri](./deri/brief.md) | $6.07M | 11 | 197 | 27/197 (14%) | 14.3% | 0.0% (-) | 2 | aging | ✅ active | $0.12 |
| [deltaprime](./deltaprime/brief.md) | $3.66M | arbitrum, avalanche | 142 | 104/142 (73%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $0.09 |
| [kinza-finance](./kinza-finance/brief.md) | $6.76M | 4 | 13 | 8/13 (62%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $0.01 |
| [sofa.org](./sofa.org/brief.md) | $2.07M | ethereum | 12 | 12/12 (100%) | 58.3% | 50.0% (Code4rena) | 6 | aging | ⚠️ declining | $0.00 |
| [syncswap-protocol](./syncswap-protocol/brief.md) | $8.24M | linea, scroll, zksync-era | 40 | 15/40 (38%) | 33.3% | 0.0% (-) | 3 | stale | ✅ active | $0.00 |
| [charm-finance](./charm-finance/brief.md) | $2.32M | 6 | 7 | 5/7 (71%) | 60.0% | 60.0% (Code4rena, Spearbit) | 4 | aging | ⚠️ declining | $0.00 |
| [xfai](./xfai/brief.md) | $835.47K | linea | 6 | 2/6 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $0.00 |
| [unichain-bridge](./unichain-bridge/brief.md) | $2.19M | ethereum, unichain | 21 | 21/21 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $0.00 |
| [rip.xyz](./rip.xyz/brief.md) | $879.29K | hyperliquid | 5 | 1/5 (20%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $0.00 |
| [anzen-finance](./anzen-finance/brief.md) | $7.91M | 5 | 26 | 23/26 (88%) | 26.1% | 0.0% (-) | 4 | aging | ⚠️ declining | $0.00 |
| [0vix](./0vix/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [1sec](./1sec/brief.md) | $1.44M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [21.co](./21.co/brief.md) | $2.24 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [3f-mutual](./3f-mutual/brief.md) | $3.19M | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [3xcalibur](./3xcalibur/brief.md) | $2.58K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [a51-finance](./a51-finance/brief.md) | $13.53K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [abc-pool](./abc-pool/brief.md) | $4.93M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [abel-finance](./abel-finance/brief.md) | $407.18K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [abracadabra](./abracadabra/brief.md) | $6.33M | 12 | 206 | 169/206 (82%) | 5.3% | 0.0% (-) | 4 | aging | 💀 dead | - |
| [abyss](./abyss/brief.md) | $757.46K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [acala-euphrates](./acala-euphrates/brief.md) | $243.39K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [access-protocol](./access-protocol/brief.md) | $879.73K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [acet](./acet/brief.md) | $12.02K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [acre](./acre/brief.md) | $3.43M | ethereum | 54 | 41/54 (76%) | 2.4% | 0.0% (-) | 4 | aging | ✅ active | - |
| [aegis](./aegis/brief.md) | $35.90M | bsc, ethereum | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [aera](./aera/brief.md) | $132.55M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [aftermath-finance](./aftermath-finance/brief.md) | $3.73M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [agile-finance](./agile-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aimstrong](./aimstrong/brief.md) | $184.80 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aitech](./aitech/brief.md) | $3.50M | bsc | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
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
| [altitude.fi](./altitude.fi/brief.md) | $7.61M | ethereum | 8 | 5/8 (63%) | 40.0% | 0.0% (-) | 4 | aging | ⚠️ declining | - |
| [ambient](./ambient/brief.md) | $1.79M | 4 | 10 | 3/10 (30%) | 33.3% | 0.0% (-) | 2 | stale | ⚠️ declining | - |
| [amet-finance](./amet-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [amnis-finance](./amnis-finance/brief.md) | $4.81M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [amped-finance](./amped-finance/brief.md) | $370.35 | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [ampleswap](./ampleswap/brief.md) | $16.05K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [amy-finance](./amy-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [animal-farm](./animal-farm/brief.md) | $66.92K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [antarctic](./antarctic/brief.md) | $9.96M | arbitrum | 7 | 6/7 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [anvil](./anvil/brief.md) | $11.20M | ethereum | 2 | 2/2 (100%) | 100.0% | 100.0% (OpenZeppelin, Trail of Bits) | 3 | fresh | ⚠️ declining | - |
| [ao-bridge](./ao-bridge/brief.md) | $43.01M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [aperocket](./aperocket/brief.md) | $36.31K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [apex-protocol](./apex-protocol/brief.md) | $35.17M | 4 | 46 | 32/46 (70%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [apollodao](./apollodao/brief.md) | $6.52K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [aptin-finance](./aptin-finance/brief.md) | $13.98M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aqua-protocol](./aqua-protocol/brief.md) | $112.27 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aquabank](./aquabank/brief.md) | $850.20K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [arbitrum-exchange](./arbitrum-exchange/brief.md) | $11.87K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [arbitrum-nova-bridge](./arbitrum-nova-bridge/brief.md) | $14.74M | ethereum | 11 | 11/11 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [arcade.xyz](./arcade.xyz/brief.md) | $4.79M | ethereum | 12 | 12/12 (100%) | 83.3% | 41.7% (Trail of Bits) | 9 | stale | ⚠️ declining | - |
| [arcadia-finance](./arcadia-finance/brief.md) | $6.21M | base, optimism, unichain | 61 | 58/61 (95%) | 51.7% | 44.8% (Sherlock) | 12 | fresh | ✅ active | - |
| [arch](./arch/brief.md) | $479.45K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [arche](./arche/brief.md) | $2.32K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [arche-protocol](./arche-protocol/brief.md) | $6.38K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [archerswap](./archerswap/brief.md) | $46.61K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [arenaswap](./arenaswap/brief.md) | $31.22K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [argano](./argano/brief.md) | $3.98 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [aria-protocol](./aria-protocol/brief.md) | $0.00 | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [arkis](./arkis/brief.md) | $76.03M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [artura-finance](./artura-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aspida](./aspida/brief.md) | $1.90K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [asseto-aoabt](./asseto-aoabt/brief.md) | $24.28M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [astake](./astake/brief.md) | $514.74K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [atlantis](./atlantis/brief.md) | $13.61K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [atlantis-loans](./atlantis-loans/brief.md) | $42.00K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [atoll](./atoll/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [atrium](./atrium/brief.md) | $390.93K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [augmented-finance](./augmented-finance/brief.md) | $326.65 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [augur](./augur/brief.md) | $1.33M | ethereum | 4 | 4/4 (100%) | 100.0% | 50.0% (ChainSecurity) | 4 | stale | ✅ active | - |
| [aurigami](./aurigami/brief.md) | $819.01K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [auro-finance](./auro-finance/brief.md) | $5.41K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aurora-plus](./aurora-plus/brief.md) | $1.68M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [autofarm](./autofarm/brief.md) | $5.60M | 9 | 11 | 3/11 (27%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [avalaunch](./avalaunch/brief.md) | $5.76M | avalanche | 7 | 4/7 (57%) | 100.0% | 0.0% (-) | 12 | stale | ✅ active | - |
| [avalon-labs](./avalon-labs/brief.md) | $550.83M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [avely-finance](./avely-finance/brief.md) | $45.01K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [avnu](./avnu/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [avon-megavault](./avon-megavault/brief.md) | $36.60K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [axc-gift](./axc-gift/brief.md) | $5.29M | bsc | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [axedao](./axedao/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aztec-connect](./aztec-connect/brief.md) | $4.31M | ethereum | 8 | 8/8 (100%) | 37.5% | 0.0% (-) | 2 | stale | ✅ active | - |
| [backbone-labs](./backbone-labs/brief.md) | $232.54K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [baksdao](./baksdao/brief.md) | $181.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ball-exchange](./ball-exchange/brief.md) | $0.04 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [baptswap](./baptswap/brief.md) | $5.21K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [based-finance](./based-finance/brief.md) | $189.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
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
| [benddao](./benddao/brief.md) | $5.87M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bido-finance](./bido-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bifrost-liquid-staking](./bifrost-liquid-staking/brief.md) | $16.70M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bigone](./bigone/brief.md) | $28.62M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bima-cdp](./bima-cdp/brief.md) | $6.51M | bsc, ethereum, sonic | 19 | 15/19 (79%) | 40.0% | 40.0% (Cyfrin, Spearbit) | 3 | aging | ✅ active | - |
| [binance-staked-eth](./binance-staked-eth/brief.md) | $6145.36M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [binance-staked-sol](./binance-staked-sol/brief.md) | $725.81M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [binaryx-platform](./binaryx-platform/brief.md) | $8.65M | polygon | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [binlayer](./binlayer/brief.md) | $386.35 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bitchill](./bitchill/brief.md) | $19.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [bitlo](./bitlo/brief.md) | $13.22M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitmap-game](./bitmap-game/brief.md) | $36.88K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitomato](./bitomato/brief.md) | $1.52K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitty](./bitty/brief.md) | $5.52K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitu-protocol](./bitu-protocol/brief.md) | $19.55M | bsc | 3 | 3/3 (100%) | 66.7% | 66.7% (SlowMist) | 2 | stale | ✅ active | - |
| [bitvenus](./bitvenus/brief.md) | $19.37M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitzy](./bitzy/brief.md) | $49.15K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [blasterswap](./blasterswap/brief.md) | $302.51K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [blend](./blend/brief.md) | $213.08M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [blend-money](./blend-money/brief.md) | $8.55K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [block-analitica](./block-analitica/brief.md) | $39.14M | 4 | 11 | 11/11 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [blueshift](./blueshift/brief.md) | $3.45M | kava, polygon | 3 | 0/3 (0%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [bnpl-pay](./bnpl-pay/brief.md) | $23.19K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [boba-bridge](./boba-bridge/brief.md) | $2.79M | ethereum | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [bondappetit](./bondappetit/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bondlink-finance](./bondlink-finance/brief.md) | $151.99K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [boneswap](./boneswap/brief.md) | $1.36K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bonsai-strike](./bonsai-strike/brief.md) | $6.41K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bonsaidao-ecosystem](./bonsaidao-ecosystem/brief.md) | $995.67K | arbitrum, berachain | 38 | 38/38 (100%) | 5.3% | 0.0% (-) | 1 | aging | ✅ active | - |
| [bonzo-finance](./bonzo-finance/brief.md) | $21.01M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [bookusd](./bookusd/brief.md) | $39.22K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [boringdao](./boringdao/brief.md) | $275.70K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [boros](./boros/brief.md) | $9.75M | arbitrum | 2 | 2/2 (100%) | 100.0% | 100.0% (ChainSecurity) | 3 | fresh | ✅ active | - |
| [botto](./botto/brief.md) | $2.92M | base, ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [bounce.tech](./bounce.tech/brief.md) | $473.97K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [bouncebit-pre-launch-farm](./bouncebit-pre-launch-farm/brief.md) | $0.12 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bouncebit-prime](./bouncebit-prime/brief.md) | $11.94M | bsc, ethereum | 5 | 2/5 (40%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [brahma-vaults-(sunset)](./brahma-vaults-(sunset)/brief.md) | $22.37K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [brasa-finance](./brasa-finance/brief.md) | $1.16M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [brickken](./brickken/brief.md) | $42.20M | base, ethereum, polygon | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [bridge-mutual](./bridge-mutual/brief.md) | $56.21K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bridgers](./bridgers/brief.md) | $1.72M | 16 | 11 | 1/11 (9%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [bright-union](./bright-union/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [broswap](./broswap/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [brownfi](./brownfi/brief.md) | $123.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bscstation](./bscstation/brief.md) | $1.92K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [btcfi](./btcfi/brief.md) | $9.64M | base | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [btse](./btse/brief.md) | $1.26M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bucket-protocol](./bucket-protocol/brief.md) | $57.93M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [buffaloswap](./buffaloswap/brief.md) | $14.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [buffer-finance](./buffer-finance/brief.md) | $178.17 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bulbaswap](./bulbaswap/brief.md) | $8.14M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bundie](./bundie/brief.md) | $54.46 | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [bunnypark](./bunnypark/brief.md) | $0.45 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [burve](./burve/brief.md) | $41.74K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [burve-protocol](./burve-protocol/brief.md) | $10.50K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [butter-network](./butter-network/brief.md) | $1.28M | 11 | 15 | 8/15 (53%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [buttonwood](./buttonwood/brief.md) | $380.49K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bydfi](./bydfi/brief.md) | $72.15M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [byte-exchange](./byte-exchange/brief.md) | $35.65M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [c14](./c14/brief.md) | $2.57K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cache.gold](./cache.gold/brief.md) | $525.93K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [caddy-finance](./caddy-finance/brief.md) | $173.42 | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [cana-holdings-california-carbon-credits](./cana-holdings-california-carbon-credits/brief.md) | $886.31K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [canopy](./canopy/brief.md) | $853.52K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [canto-lending](./canto-lending/brief.md) | $3.03M | canto, ethereum | 83 | 1/83 (1%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [carbon-defi](./carbon-defi/brief.md) | $2.35M | 5 | 28 | 11/28 (39%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [carina](./carina/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [carrot](./carrot/brief.md) | $288.88K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [catsluck](./catsluck/brief.md) | $2.96K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cavalre](./cavalre/brief.md) | $10.19K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cellana-finance](./cellana-finance/brief.md) | $520.50K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cells-finance](./cells-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [centrifuge](./centrifuge/brief.md) | $1797.94M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cex.io](./cex.io/brief.md) | $12.10M | bsc, ethereum, polygon | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [cgo-finance](./cgo-finance/brief.md) | $1.05M | cronos | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [chadfinance](./chadfinance/brief.md) | $78.23 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [chain-fusion](./chain-fusion/brief.md) | $18.16M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [chainflip](./chainflip/brief.md) | $36.39M | arbitrum, ethereum | 11 | 11/11 (100%) | 27.3% | 27.3% (Trail of Bits) | 2 | stale | ✅ active | - |
| [chainge-finance](./chainge-finance/brief.md) | $12.14M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [chaingpt](./chaingpt/brief.md) | $3.83M | 6 | 33 | 6/33 (18%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
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
| [citrea-bridge](./citrea-bridge/brief.md) | $4.77M | ethereum | 3 | 2/3 (67%) | 50.0% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [clarity](./clarity/brief.md) | $308.21K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [clave](./clave/brief.md) | $7.38K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [clober](./clober/brief.md) | $516.46K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [coin8](./coin8/brief.md) | $45.83M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [coinsquare](./coinsquare/brief.md) | $8.99M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [coinstore](./coinstore/brief.md) | $54.84M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [coinw](./coinw/brief.md) | $517.58K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [colafactory](./colafactory/brief.md) | $673.56 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [colend-protocol](./colend-protocol/brief.md) | $2.89M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [collection.xyz](./collection.xyz/brief.md) | $652.52 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [commodo](./commodo/brief.md) | $5.27K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [concrete](./concrete/brief.md) | $789.88M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [conic-finance](./conic-finance/brief.md) | $52.38K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [convex-finance](./convex-finance/brief.md) | $657.98M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [conveyor](./conveyor/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [copump](./copump/brief.md) | $1.66K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [core-bridge](./core-bridge/brief.md) | $3.82M | 6 | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [corepound](./corepound/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [coti-treasury](./coti-treasury/brief.md) | $8.07M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cougarswap](./cougarswap/brief.md) | $54.37K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cozy-finance](./cozy-finance/brief.md) | $1.97M | ethereum, optimism | 13 | 0/13 (0%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [crabada](./crabada/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cron-finance](./cron-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cropper](./cropper/brief.md) | $113.08K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [crown-finance](./crown-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cryptex-finance](./cryptex-finance/brief.md) | $631.36K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [crypto.com-liquid-staking](./crypto.com-liquid-staking/brief.md) | $20.02M | cronos | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [csigma-finance](./csigma-finance/brief.md) | $12.66M | arbitrum, base, ethereum | 42 | 31/42 (74%) | 46.9% | 0.0% (-) | 2 | aging | ✅ active | - |
| [cvi-finance](./cvi-finance/brief.md) | $131.47K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cyberperp](./cyberperp/brief.md) | $26.96K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cyborgswap](./cyborgswap/brief.md) | $28.42K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cybro](./cybro/brief.md) | $103.90K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [cyclo](./cyclo/brief.md) | $183.26K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [cytonic-airdrop-campaign](./cytonic-airdrop-campaign/brief.md) | $175.34K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dackieswap](./dackieswap/brief.md) | $52.54K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dango](./dango/brief.md) | $3.20M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [darkcrypto](./darkcrypto/brief.md) | $19.77K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [darkness](./darkness/brief.md) | $7.65K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [ddex](./ddex/brief.md) | $526.43K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [decibel](./decibel/brief.md) | $41.45M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [deepbook](./deepbook/brief.md) | $12.91M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [defi-kingdoms](./defi-kingdoms/brief.md) | $7.69M | harmony, klaytn, metis | 8 | 1/8 (13%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [defi-swap](./defi-swap/brief.md) | $870.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [defichain-dex](./defichain-dex/brief.md) | $2.06M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [defiplaza](./defiplaza/brief.md) | $126.31K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [defirex](./defirex/brief.md) | $4.61K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [defituna](./defituna/brief.md) | $3.12M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [defrost](./defrost/brief.md) | $81.45K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [degate](./degate/brief.md) | $159.34 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dehive](./dehive/brief.md) | $114.51K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [delta-financial](./delta-financial/brief.md) | $7.90M | ethereum | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [deltatrade](./deltatrade/brief.md) | $92.37K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [demeter](./demeter/brief.md) | $281.27K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [denet-file-token](./denet-file-token/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [derivadex](./derivadex/brief.md) | $1.62M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [desyn-protocol](./desyn-protocol/brief.md) | $1.40M | ethereum, mode | 12 | 3/12 (25%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [dev-protocol](./dev-protocol/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [devil-finance](./devil-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dexalot](./dexalot/brief.md) | $7.90M | avalanche, bsc | 4 | 4/4 (100%) | 25.0% | 0.0% (-) | 2 | stale | ✅ active | - |
| [dexible-v2](./dexible-v2/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dexilla](./dexilla/brief.md) | $133.27 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dexioprotocol](./dexioprotocol/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dexlyn-labs](./dexlyn-labs/brief.md) | $80.39K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [dflow](./dflow/brief.md) | $1.64M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dfs-network](./dfs-network/brief.md) | $96.03K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dfx-finance](./dfx-finance/brief.md) | $110.95K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dipcoin](./dipcoin/brief.md) | $4.40M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ditto](./ditto/brief.md) | $33.10K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [djed-stablecoin](./djed-stablecoin/brief.md) | $5.37M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dnax](./dnax/brief.md) | $3.35M | bsc | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [dogeclaw](./dogeclaw/brief.md) | $11.49 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dolomite](./dolomite/brief.md) | $664.24M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [domination-finance](./domination-finance/brief.md) | $1.29M | base, boba, polygon | 17 | 10/17 (59%) | 60.0% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [dooar](./dooar/brief.md) | $4.52M | bsc, ethereum, polygon | 6 | 2/6 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [dot-dot-finance](./dot-dot-finance/brief.md) | $3.09K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [doubler](./doubler/brief.md) | $107.03K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dpex](./dpex/brief.md) | $142.46 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [drachma-exchange](./drachma-exchange/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [drift](./drift/brief.md) | $187.88M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dsf.finance](./dsf.finance/brief.md) | $477.07K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dtx](./dtx/brief.md) | $5.44K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dungeonswap](./dungeonswap/brief.md) | $28.40K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dxsale](./dxsale/brief.md) | $17.94M | 10 | 33 | 1/33 (3%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [dyson-finance](./dyson-finance/brief.md) | $80.63K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [earnium](./earnium/brief.md) | $31.77K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [earnmos](./earnmos/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [eclipsefi](./eclipsefi/brief.md) | $15.30K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [egas-swap](./egas-swap/brief.md) | $14.49M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [elara](./elara/brief.md) | $12.23K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [electra](./electra/brief.md) | $81.74K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [elfi-protocol](./elfi-protocol/brief.md) | $2.90M | arbitrum, base | 430 | 2/430 (0%) | 0.0% | 0.0% (-) | 0 | aging | ⚠️ declining | - |
| [emiswap](./emiswap/brief.md) | $33.55K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [empmoney](./empmoney/brief.md) | $181.96K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [emu](./emu/brief.md) | $2.42 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [endur](./endur/brief.md) | $7.19M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [enjoyoors](./enjoyoors/brief.md) | $11.26K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [enosys](./enosys/brief.md) | $17.16M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [ensuro](./ensuro/brief.md) | $490.64K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [enzo-finance](./enzo-finance/brief.md) | $22.37K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [equilibre](./equilibre/brief.md) | $6.90M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [equito-finance](./equito-finance/brief.md) | $7.95 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [eralend](./eralend/brief.md) | $72.98 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [ethereal-dex](./ethereal-dex/brief.md) | $26.18M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [etherex](./etherex/brief.md) | $1.36M | linea | 51 | 43/51 (84%) | 40.0% | 40.0% (Spearbit) | 1 | fresh | ⚠️ declining | - |
| [etherflip](./etherflip/brief.md) | $1.24M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ethos](./ethos/brief.md) | $1.43M | base | 14 | 9/14 (64%) | 22.2% | 22.2% (Sherlock) | 1 | aging | ✅ active | - |
| [etmc](./etmc/brief.md) | $6.82K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [eversol](./eversol/brief.md) | $9.54K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [everything](./everything/brief.md) | $710.21K | arbitrum | 7 | 4/7 (57%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [evolve](./evolve/brief.md) | $554.15 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [evoq-finance](./evoq-finance/brief.md) | $268.06 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [exactly](./exactly/brief.md) | $4.41M | base, ethereum, optimism | 20 | 19/20 (95%) | 57.9% | 0.0% (-) | 18 | fresh | ✅ active | - |
| [exmo](./exmo/brief.md) | $1.08M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [exponent](./exponent/brief.md) | $63.98M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [exsat-staking-btc](./exsat-staking-btc/brief.md) | $137.63M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [extra-finance](./extra-finance/brief.md) | $26.71M | base, berachain, optimism | 14 | 9/14 (64%) | 22.2% | 11.1% (Sherlock) | 2 | fresh | ✅ active | - |
| [ezmanager](./ezmanager/brief.md) | $312.09K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [fairfi](./fairfi/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [farm-hero](./farm-hero/brief.md) | $5.10K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [feather](./feather/brief.md) | $15.86M | celo, klaytn, sei | 10 | 9/10 (90%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [ferro](./ferro/brief.md) | $4.92M | cronos | 21 | 0/21 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [fiamma](./fiamma/brief.md) | $1.15M | 8 | 34 | 18/34 (53%) | 16.7% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [filfi](./filfi/brief.md) | $121.84K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [firebird](./firebird/brief.md) | $17.76K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [firelight](./firelight/brief.md) | $67.47M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [fiva](./fiva/brief.md) | $42.94K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [flamingo](./flamingo/brief.md) | $1.64M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [flashstake](./flashstake/brief.md) | $36.64K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [flexa](./flexa/brief.md) | $892.85K | ethereum | 2 | 2/2 (100%) | 100.0% | 100.0% (ConsenSys Diligence, Trail of Bits) | 2 | stale | ⚠️ declining | - |
| [flipster](./flipster/brief.md) | $33.01M | klaytn | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [flock.io](./flock.io/brief.md) | $5.70M | base | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [fluxion-network](./fluxion-network/brief.md) | $2.38M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [folks-finance](./folks-finance/brief.md) | $89.34M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [fomo3d](./fomo3d/brief.md) | $1.98M | ethereum | 5 | 4/5 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [forgeyields](./forgeyields/brief.md) | $1.28M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [fortifi](./fortifi/brief.md) | $349.00K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [four.meme](./four.meme/brief.md) | $4.62M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [foxify](./foxify/brief.md) | $3.46M | sonic | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [fractal-protocol](./fractal-protocol/brief.md) | $10.89K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [frankencoin](./frankencoin/brief.md) | $62.11M | ethereum | 3 | 3/3 (100%) | 66.7% | 66.7% (ChainSecurity, Code4rena) | 5 | aging | ✅ active | - |
| [freebie-life-finance](./freebie-life-finance/brief.md) | $32.66 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [friend3](./friend3/brief.md) | $67.16K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [fringe-finance](./fringe-finance/brief.md) | $45.14K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [froggy-protocol](./froggy-protocol/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [fuel-bridge](./fuel-bridge/brief.md) | $9.34M | ethereum | 2 | 2/2 (100%) | 50.0% | 0.0% (-) | 2 | fresh | ⚠️ declining | - |
| [fuji-finance](./fuji-finance/brief.md) | $144.60K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [fulcrom](./fulcrom/brief.md) | $10.94M | cronos, zksync-era | 56 | 0/56 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [full-sail](./full-sail/brief.md) | $481.27K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [fx-protocol](./fx-protocol/brief.md) | $227.34M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [fxdao](./fxdao/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [fxdx](./fxdx/brief.md) | $2.54K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [fyde-protocol](./fyde-protocol/brief.md) | $255.90K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [galaxy-curation](./galaxy-curation/brief.md) | $69.71M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [gale](./gale/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [gamma](./gamma/brief.md) | $3.06M | 20 | 403 | 82/403 (20%) | 30.3% | 2.2% (ConsenSys Diligence) | 8 | fresh | ✅ active | - |
| [gate-us](./gate-us/brief.md) | $49.10M | 7 | 9 | 0/9 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [gearbox](./gearbox/brief.md) | $29.45M | 4 | 53 | 51/53 (96%) | 68.6% | 68.6% (ChainSecurity, ConsenSys Diligence, MixBytes) | 29 | fresh | ⚠️ declining | - |
| [geist-finance](./geist-finance/brief.md) | $153.46K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gemkeeper](./gemkeeper/brief.md) | $20.49K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [generic.money](./generic.money/brief.md) | $1.15M | ethereum | 9 | 9/9 (100%) | 88.9% | 88.9% (Spearbit) | 1 | fresh | ⚠️ declining | - |
| [get-protocol](./get-protocol/brief.md) | $122.81K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [geyser](./geyser/brief.md) | $93.22K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gimo](./gimo/brief.md) | $5.31M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [gin-finance](./gin-finance/brief.md) | $8.33K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [giveth](./giveth/brief.md) | $115.80K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [glif](./glif/brief.md) | $25.41M | base | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [glitter-finance](./glitter-finance/brief.md) | $13.02 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [glori-finance](./glori-finance/brief.md) | $42.08 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [goat-protocol](./goat-protocol/brief.md) | $26.37K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gogocoin](./gogocoin/brief.md) | $2.20K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [goldfinger](./goldfinger/brief.md) | $0.00 | bsc | 6 | 5/6 (83%) | 100.0% | 0.0% (-) | 6 | fresh | ✅ active | - |
| [goldsand-by-inshallah](./goldsand-by-inshallah/brief.md) | $231.10K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [goldstation](./goldstation/brief.md) | $1.76M | avalanche, klaytn | 5 | 0/5 (0%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
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
| [growihf](./growihf/brief.md) | $8.67M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [gudchain](./gudchain/brief.md) | $75.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gumball-protocol](./gumball-protocol/brief.md) | $248.27K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [guru-network-dao](./guru-network-dao/brief.md) | $1.93M | 8 | 55 | 21/55 (38%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [gyroscope-protocol](./gyroscope-protocol/brief.md) | $406.91K | 10 | 55 | 51/55 (93%) | 11.8% | 0.0% (-) | 2 | aging | ⚠️ declining | - |
| [h2-finance](./h2-finance/brief.md) | $2.19M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hakutora](./hakutora/brief.md) | $27.89M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [halofi](./halofi/brief.md) | $22.07K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [hanji-protocol](./hanji-protocol/brief.md) | $727.85K | base | 374 | 5/374 (1%) | 0.0% | 0.0% (-) | 0 | aging | ⚠️ declining | - |
| [harbor](./harbor/brief.md) | $94.13K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [harvest-finance](./harvest-finance/brief.md) | $12.16M | 5 | 23 | 18/23 (78%) | 55.6% | 0.0% (-) | 5 | aging | ⚠️ declining | - |
| [harvest-flow](./harvest-flow/brief.md) | $523.96K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [hashdao-finance](./hashdao-finance/brief.md) | $1.30M | arbitrum, optimism | 6 | 6/6 (100%) | 50.0% | 0.0% (-) | 3 | stale | 💀 dead | - |
| [hashkey-global](./hashkey-global/brief.md) | $13.43M | scroll | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hashking](./hashking/brief.md) | $335.22K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hashport](./hashport/brief.md) | $998.03K | 9 | 20 | 13/20 (65%) | 100.0% | 0.0% (-) | 3 | stale | 💀 dead | - |
| [hastra](./hastra/brief.md) | $402.82M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hbarsuite](./hbarsuite/brief.md) | $3.84M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [hectagon](./hectagon/brief.md) | $0.49 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [heliswap](./heliswap/brief.md) | $94.48K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [helix](./helix/brief.md) | $1.48M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [helix-finance](./helix-finance/brief.md) | $11.00M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [henjin-dex](./henjin-dex/brief.md) | $1.24K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hera-finance](./hera-finance/brief.md) | $6.24M | arbitrum, ethereum, metis | 37 | 11/37 (30%) | 27.3% | 0.0% (-) | 3 | stale | ✅ active | - |
| [hiyield](./hiyield/brief.md) | $2.73M | avalanche, canto, ethereum | 3 | 0/3 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hodltree](./hodltree/brief.md) | $1.84K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [holdstation](./holdstation/brief.md) | $19.73K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [honeyfarm](./honeyfarm/brief.md) | $1.02K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [hopr](./hopr/brief.md) | $1.40M | gnosis | 14 | 13/14 (93%) | 7.7% | 7.7% (ChainSecurity) | 2 | stale | ✅ active | - |
| [horizondex](./horizondex/brief.md) | $60.34K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [hotcoin](./hotcoin/brief.md) | $5.60M | scroll | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hourglass](./hourglass/brief.md) | $139.93K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [houses-of-rome](./houses-of-rome/brief.md) | $0.00 | moonriver | 13 | 13/13 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [hskhodlium](./hskhodlium/brief.md) | $391.74K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [huckleberry](./huckleberry/brief.md) | $31.92K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [humble-defi](./humble-defi/brief.md) | $52.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hundred-finance](./hundred-finance/brief.md) | $1.58M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hurricaneswap](./hurricaneswap/brief.md) | $11.22K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hybra](./hybra/brief.md) | $1.59M | hyperliquid | 66 | 10/66 (15%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [hyper-finance](./hyper-finance/brief.md) | $34.93K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hyperbloom](./hyperbloom/brief.md) | $92.90K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [hyperdrive-hl](./hyperdrive-hl/brief.md) | $2.23M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [hyperion](./hyperion/brief.md) | $11.11M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [hypertrade](./hypertrade/brief.md) | $94.63K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hyphen](./hyphen/brief.md) | $100.36K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [ibtc-finance](./ibtc-finance/brief.md) | $254.53 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [ibtc-network](./ibtc-network/brief.md) | $158.72 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ifpool](./ifpool/brief.md) | $80.70K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [immutable-zkevm](./immutable-zkevm/brief.md) | $25.11M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [impermax-finance](./impermax-finance/brief.md) | $735.87K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [inception](./inception/brief.md) | $4.63M | 8 | 12 | 9/12 (75%) | 66.7% | 0.0% (-) | 2 | aging | ⚠️ declining | - |
| [infinite-trading-protocol](./infinite-trading-protocol/brief.md) | $429.15K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [infinityname](./infinityname/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [influpia](./influpia/brief.md) | $2.96K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [infrared-finance](./infrared-finance/brief.md) | $30.22M | berachain, bsc | 8 | 8/8 (100%) | 100.0% | 50.0% (Spearbit) | 10 | fresh | ✅ active | - |
| [infusion](./infusion/brief.md) | $72.58K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [initiadex](./initiadex/brief.md) | $2.16M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ink-bridge](./ink-bridge/brief.md) | $36.39M | ethereum, ink, optimism | 70 | 27/70 (39%) | 40.7% | 40.7% (Sherlock, Spearbit, Trail of Bits) | 6 | aging | ✅ active | - |
| [ink-protocol](./ink-protocol/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [intentx](./intentx/brief.md) | $5.67M | arbitrum, base, mantle | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [interest-labs](./interest-labs/brief.md) | $2.11K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [interest-protocol](./interest-protocol/brief.md) | $1.26M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [intswap](./intswap/brief.md) | $1.38K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [intuition](./intuition/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [invar-finance](./invar-finance/brief.md) | $261.96 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [invariant](./invariant/brief.md) | $238.28K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ionic-protocol](./ionic-protocol/brief.md) | $2.04M | bsc, mode | 9 | 8/9 (89%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | - |
| [iotabee](./iotabee/brief.md) | $3.18K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [iron-bank](./iron-bank/brief.md) | $676.15K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ithaca-protocol](./ithaca-protocol/brief.md) | $12.86K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [itrust-finance](./itrust-finance/brief.md) | $365.75K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [jbc.finance](./jbc.finance/brief.md) | $397.80 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [jetswap](./jetswap/brief.md) | $323.09K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [jiko](./jiko/brief.md) | $116.29K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [jito](./jito/brief.md) | $642.52M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [jpg-store](./jpg-store/brief.md) | $130.04K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [juicebox](./juicebox/brief.md) | $8.63M | 8 | 57 | 49/57 (86%) | 14.3% | 10.2% (Code4rena) | 4 | stale | ✅ active | - |
| [justlend](./justlend/brief.md) | $3321.01M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [k2](./k2/brief.md) | $3.73M | ethereum | 12 | 5/12 (42%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [kafe-finance](./kafe-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [kaio](./kaio/brief.md) | $60.81M | sei | 5 | 0/5 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [kalax](./kalax/brief.md) | $127.79K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kalmy-app](./kalmy-app/brief.md) | $31.93K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kandle-finance](./kandle-finance/brief.md) | $0.07 | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [kannagi-finance](./kannagi-finance/brief.md) | $72.20 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kaskad](./kaskad/brief.md) | $2.55M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [kasu](./kasu/brief.md) | $10.55M | base | 4 | 4/4 (100%) | 100.0% | 100.0% (ChainSecurity) | 1 | aging | ✅ active | - |
| [kava-earn](./kava-earn/brief.md) | $1.20M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [kava-lend](./kava-lend/brief.md) | $10.63M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [kava-liquid](./kava-liquid/brief.md) | $1.17M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [kava-mint](./kava-mint/brief.md) | $11.06M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [kawaiiswap](./kawaiiswap/brief.md) | $798.68 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [keeta-bridge](./keeta-bridge/brief.md) | $1.34M | base | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [keiko-finance](./keiko-finance/brief.md) | $45.40K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [keom-protocol](./keom-protocol/brief.md) | $115.46K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [keyring](./keyring/brief.md) | $6.22M | avalanche, ethereum | 51 | 39/51 (76%) | 20.5% | 15.4% (Certora, ChainSecurity, Cyfrin, Spearbit) | 15 | fresh | ✅ active | - |
| [kiloex](./kiloex/brief.md) | $2.18M | 4 | 40 | 18/40 (45%) | 16.7% | 11.1% (SlowMist) | 4 | aging | ⚠️ declining | - |
| [kine-finance](./kine-finance/brief.md) | $964.57K | 4 | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [kinetic](./kinetic/brief.md) | $59.94M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [kingdefi](./kingdefi/brief.md) | $35.69K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kintsu](./kintsu/brief.md) | $2.16M | hyperliquid | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | - |
| [klaybank](./klaybank/brief.md) | $298.92K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [klaystation](./klaystation/brief.md) | $1.45M | klaytn | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [klayswap](./klayswap/brief.md) | $3.85M | klaytn | 22 | 0/22 (0%) | 0.0% | 0.0% (-) | 0 | aging | ⚠️ declining | - |
| [klend](./klend/brief.md) | $5.80K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [knightswap](./knightswap/brief.md) | $904.58K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kodiak](./kodiak/brief.md) | $20.61M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
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
| [larix](./larix/brief.md) | $829.11K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [latteswap](./latteswap/brief.md) | $54.94K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [layerakira](./layerakira/brief.md) | $736.58 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [layerbank](./layerbank/brief.md) | $20.55M | 5 | 74 | 13/74 (18%) | 46.2% | 0.0% (-) | 2 | fresh | ⚠️ declining | - |
| [lbank](./lbank/brief.md) | $9.19M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [legacy-canary-protocol](./legacy-canary-protocol/brief.md) | $5.89K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [lendflare](./lendflare/brief.md) | $987.55K | ethereum | 3 | 3/3 (100%) | 33.3% | 0.0% (-) | 1 | stale | ⚠️ declining | - |
| [levex](./levex/brief.md) | $10.51M | bsc, ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [levvy-finance](./levvy-finance/brief.md) | $46.23K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [libero-financial](./libero-financial/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [likwid](./likwid/brief.md) | $52.66K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [liminal](./liminal/brief.md) | $26.99M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [linear-protocol](./linear-protocol/brief.md) | $59.63M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [linx-app](./linx-app/brief.md) | $129.86K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [liondex](./liondex/brief.md) | $0.38 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [liquidity-house](./liquidity-house/brief.md) | $1.23M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [liquis](./liquis/brief.md) | $71.53K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [liquity](./liquity/brief.md) | $217.00M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [liqwid](./liqwid/brief.md) | $27.35M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [lisa-finance](./lisa-finance/brief.md) | $356.79K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [llamapay](./llamapay/brief.md) | $21.01M | 14 | 13 | 5/13 (38%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [lns](./lns/brief.md) | $11.51K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [lockon](./lockon/brief.md) | $907.84K | arbitrum, polygon | 13 | 10/13 (77%) | 90.0% | 0.0% (-) | 4 | fresh | ✅ active | - |
| [locus-finance](./locus-finance/brief.md) | $43.95K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [looksrare](./looksrare/brief.md) | $27.89K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [looping-collective](./looping-collective/brief.md) | $11.94M | ethereum, hyperliquid | 10 | 8/10 (80%) | 50.0% | 37.5% (Spearbit) | 6 | fresh | ✅ active | - |
| [lorenzo-protocol](./lorenzo-protocol/brief.md) | $540.55M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [lotus-finance](./lotus-finance/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [ltv-protocol](./ltv-protocol/brief.md) | $12.61K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [luckychip](./luckychip/brief.md) | $532.07 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [lumenswap](./lumenswap/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [lumin-finance](./lumin-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [lusd-chickenbonds](./lusd-chickenbonds/brief.md) | $1.50M | ethereum | 5 | 5/5 (100%) | 60.0% | 0.0% (-) | 6 | stale | ⚠️ declining | - |
| [magik-finance](./magik-finance/brief.md) | $3.53K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [magma](./magma/brief.md) | $4.49M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [magma-finance-almm](./magma-finance-almm/brief.md) | $1.13K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [magma-staking](./magma-staking/brief.md) | $1.00M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [magpie-ecosystem](./magpie-ecosystem/brief.md) | $19.12M | 8 | 89 | 83/89 (93%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [maha.xyz](./maha.xyz/brief.md) | $2.62 | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [maia-dao-ecosystem](./maia-dao-ecosystem/brief.md) | $189.36K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mama](./mama/brief.md) | $49.25 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manarium](./manarium/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manga-fi](./manga-fi/brief.md) | $5.76K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mangrove](./mangrove/brief.md) | $4.26M | 4 | 26 | 21/26 (81%) | 28.6% | 23.8% (ChainSecurity, Code4rena) | 7 | aging | ✅ active | - |
| [manta-atlantic-stake](./manta-atlantic-stake/brief.md) | $5.46M | ethereum, manta | 105 | 64/105 (61%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manta-cedefi](./manta-cedefi/brief.md) | $26.48M | manta | 17 | 15/17 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manta-pacific](./manta-pacific/brief.md) | $21.11M | ethereum, manta | 9 | 7/9 (78%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [mantisswap](./mantisswap/brief.md) | $182.88K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mantle-restaking](./mantle-restaking/brief.md) | $60.85M | ethereum | 9 | 8/9 (89%) | 55.6% | 22.2% (MixBytes) | 7 | fresh | ⚠️ declining | - |
| [margin-zero](./margin-zero/brief.md) | $21.44K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [margined-protocol](./margined-protocol/brief.md) | $265.20K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [marginly](./marginly/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [match-finance](./match-finance/brief.md) | $2.15K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [matstake](./matstake/brief.md) | $3.75M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [maya-protocol](./maya-protocol/brief.md) | $10.17M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mcdex](./mcdex/brief.md) | $943.03K | 6 | 70 | 30/70 (43%) | 16.7% | 0.0% (-) | 2 | aging | 💀 dead | - |
| [meld-gold](./meld-gold/brief.md) | $9.69M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mendi-finance](./mendi-finance/brief.md) | $1.66M | linea | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [merchant-moe](./merchant-moe/brief.md) | $21.56M | mantle | 16 | 10/16 (63%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [merkle-trade](./merkle-trade/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [merlinswap](./merlinswap/brief.md) | $6.89M | merlin | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [meson](./meson/brief.md) | $491.41K | 9 | 22 | 4/22 (18%) | 20.0% | 20.0% (Trail of Bits) | 3 | stale | ✅ active | - |
| [metadao](./metadao/brief.md) | $12.02M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [metastable](./metastable/brief.md) | $1.52M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [metastrike](./metastrike/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [metavault](./metavault/brief.md) | $10.79K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [metera-protocol](./metera-protocol/brief.md) | $4.71K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mev-protocol](./mev-protocol/brief.md) | $80.72K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mezo-earn](./mezo-earn/brief.md) | $46.89M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [milkomeda-c1-djed](./milkomeda-c1-djed/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [milkomeda-macc](./milkomeda-macc/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [milkyway-protocol](./milkyway-protocol/brief.md) | $2.51M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [minefi](./minefi/brief.md) | $1.07M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [minerswap](./minerswap/brief.md) | $0.13 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [minimax](./minimax/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mint-club](./mint-club/brief.md) | $598.00K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [minto](./minto/brief.md) | $3.76M | bsc, heco | 6 | 3/6 (50%) | 33.3% | 0.0% (-) | 1 | stale | ✅ active | - |
| [minu](./minu/brief.md) | $0.17 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mirakle-defi](./mirakle-defi/brief.md) | $0.06 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mito-finance](./mito-finance/brief.md) | $435.18K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [moar-market](./moar-market/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mobius-exchange](./mobius-exchange/brief.md) | $9.91K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [mode-bridge](./mode-bridge/brief.md) | $5.07M | ethereum, mode | 75 | 23/75 (31%) | 4.3% | 0.0% (-) | 1 | aging | ⚠️ declining | - |
| [mojitoswap](./mojitoswap/brief.md) | $629.85K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mole](./mole/brief.md) | $8.58M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [molecular](./molecular/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [monday-trade](./monday-trade/brief.md) | $686.61K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [moneyonchain](./moneyonchain/brief.md) | $34.70M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
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
| [morpheusai](./morpheusai/brief.md) | $20.74M | arbitrum, base, ethereum | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [mortgagefi](./mortgagefi/brief.md) | $777.90K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mountain-protocol](./mountain-protocol/brief.md) | $1.40M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [movegpt](./movegpt/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [moveposition](./moveposition/brief.md) | $7.09M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mr.-lightspeed-creator-coin](./mr.-lightspeed-creator-coin/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mu-digital](./mu-digital/brief.md) | $21.58M | ethereum | 7 | 7/7 (100%) | 85.7% | 85.7% (SlowMist) | 1 | fresh | ✅ active | - |
| [mugenfinance](./mugenfinance/brief.md) | $3.35M | arbitrum | 12 | 10/12 (83%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [mvl-staking](./mvl-staking/brief.md) | $863.71K | ethereum | 5 | 2/5 (40%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [myso](./myso/brief.md) | $28.05K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mystic-finance](./mystic-finance/brief.md) | $4.98M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [mytrade](./mytrade/brief.md) | $7.63K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [myx-finance](./myx-finance/brief.md) | $986.03K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nabla-finance](./nabla-finance/brief.md) | $87.98K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nado](./nado/brief.md) | $49.33M | ink | 22 | 0/22 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [narbet](./narbet/brief.md) | $9.73K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [navi-protocol](./navi-protocol/brief.md) | $275.73M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nawa-protocol](./nawa-protocol/brief.md) | $4.17M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [nbx](./nbx/brief.md) | $1.59M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [neemo-finance](./neemo-finance/brief.md) | $1.12M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [nemo](./nemo/brief.md) | $76.12K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nemoswap](./nemoswap/brief.md) | $65.52K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [neony-exchange](./neony-exchange/brief.md) | $412.93K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [neopin](./neopin/brief.md) | $40.20M | ethereum, klaytn, polygon | 48 | 0/48 (0%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [neptune-finance](./neptune-finance/brief.md) | $5.93M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [netswap](./netswap/brief.md) | $1.21M | metis | 47 | 23/47 (49%) | 21.7% | 0.0% (-) | 2 | stale | ⚠️ declining | - |
| [netweave-finance](./netweave-finance/brief.md) | $12.29K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [neuralai](./neuralai/brief.md) | $1.21M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [neutra-finance](./neutra-finance/brief.md) | $3.21K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [neutral-trade](./neutral-trade/brief.md) | $14.16M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nex](./nex/brief.md) | $114.19 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nexus-protocol](./nexus-protocol/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nf3-ape](./nf3-ape/brief.md) | $3.38K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nftfi](./nftfi/brief.md) | $10.10K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nimbora](./nimbora/brief.md) | $338.50K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nirvana](./nirvana/brief.md) | $2.71M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nlx-protocol](./nlx-protocol/brief.md) | $760.75 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nodedao](./nodedao/brief.md) | $25.13M | ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [nodeops](./nodeops/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [nolus-protocol](./nolus-protocol/brief.md) | $509.95K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nomiswap](./nomiswap/brief.md) | $1.40M | bsc | 7 | 7/7 (100%) | 28.6% | 0.0% (-) | 1 | stale | ⚠️ declining | - |
| [nonkyc](./nonkyc/brief.md) | $5.37M | 4 | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [noon](./noon/brief.md) | $34.05M | ethereum, hyperliquid, zksync-era | 23 | 18/23 (78%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [nostra](./nostra/brief.md) | $5.73M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [notional](./notional/brief.md) | $3.58M | arbitrum, ethereum | 18 | 18/18 (100%) | 38.9% | 38.9% (Sherlock) | 4 | fresh | ⚠️ declining | - |
| [nucleus](./nucleus/brief.md) | $28.65M | ethereum | 6 | 6/6 (100%) | 50.0% | 33.3% (Spearbit) | 5 | fresh | ✅ active | - |
| [nuls](./nuls/brief.md) | $7.33M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [numisme](./numisme/brief.md) | $309.08 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nx-finance](./nx-finance/brief.md) | $1.88M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nxd-protocol](./nxd-protocol/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [o.lab](./o.lab/brief.md) | $37.59K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [o2-exchange](./o2-exchange/brief.md) | $2.16M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [o3-swap](./o3-swap/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [obeliskbtc](./obeliskbtc/brief.md) | $7.43M | ethereum | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | aging | ⚠️ declining | - |
| [obsidian](./obsidian/brief.md) | $1.38M | cronos | 6 | 0/6 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [ocp-finance](./ocp-finance/brief.md) | $10.23K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [octopus-network](./octopus-network/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [odos](./odos/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [odyssey-finance](./odyssey-finance/brief.md) | $9.22M | base, ethereum, optimism | 58 | 58/58 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [okcoin](./okcoin/brief.md) | $21.65M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [olive](./olive/brief.md) | $46.47K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [olive-network](./olive-network/brief.md) | $66.68K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [olivedao](./olivedao/brief.md) | $7.67K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [omnibtc](./omnibtc/brief.md) | $1.92M | 7 | 19 | 10/19 (53%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [omnipool](./omnipool/brief.md) | $324.39 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [onchaingm](./onchaingm/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [oni-exchange](./oni-exchange/brief.md) | $1.29K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [onyx](./onyx/brief.md) | $46.62M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [oortswap](./oortswap/brief.md) | $940.86 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [openeden](./openeden/brief.md) | $225.38M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [openledger](./openledger/brief.md) | $104.03K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [openleverage](./openleverage/brief.md) | $88.94K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [opensea](./opensea/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [opensky-finance](./opensky-finance/brief.md) | $15.79K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [opinion](./opinion/brief.md) | $5.77M | bsc, ethereum | 8 | 6/8 (75%) | 66.7% | 0.0% (-) | 4 | fresh | ⚠️ declining | - |
| [orangex](./orangex/brief.md) | $33.70M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [orbiter-one](./orbiter-one/brief.md) | $77.01K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [orchai](./orchai/brief.md) | $307.48K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [orcus-finance](./orcus-finance/brief.md) | $362.32K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [osl](./osl/brief.md) | $92.56M | scroll | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [osmosis-dex](./osmosis-dex/brief.md) | $15.33M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ostium](./ostium/brief.md) | $47.18M | arbitrum | 28 | 28/28 (100%) | 53.6% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [otsea](./otsea/brief.md) | $393.82K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [outcome-finance](./outcome-finance/brief.md) | $1.05M | boba, ethereum | 4 | 3/4 (75%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [overnight-finance](./overnight-finance/brief.md) | $9.99M | 8 | 47 | 29/47 (62%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [oxiswap](./oxiswap/brief.md) | $0.17 | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [p2pb2b](./p2pb2b/brief.md) | $4.40M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pact](./pact/brief.md) | $2.33M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [padswap](./padswap/brief.md) | $107.26K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [paimon](./paimon/brief.md) | $12.73M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [paladin-finance](./paladin-finance/brief.md) | $22.24K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [palladium-protocol](./palladium-protocol/brief.md) | $1.50K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [palmswap](./palmswap/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [palmy-finance](./palmy-finance/brief.md) | $14.97K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pandora](./pandora/brief.md) | $8.94K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pangea-swap](./pangea-swap/brief.md) | $6.40K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pangolin](./pangolin/brief.md) | $3.06M | avalanche | 19 | 11/19 (58%) | 45.5% | 0.0% (-) | 4 | aging | ⚠️ declining | - |
| [paradex](./paradex/brief.md) | $27.28M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [paragonsdao](./paragonsdao/brief.md) | $6.50M | base, ethereum | 4 | 4/4 (100%) | 25.0% | 0.0% (-) | 2 | aging | ✅ active | - |
| [parallel-protocol](./parallel-protocol/brief.md) | $3.90M | 19 | 34 | 26/34 (76%) | 34.6% | 0.0% (-) | 5 | aging | ✅ active | - |
| [paryonusd](./paryonusd/brief.md) | $412.57K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [paxe-protocol](./paxe-protocol/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [pay-protocol](./pay-protocol/brief.md) | $277.35K | ethereum | 8 | 0/8 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [pbg](./pbg/brief.md) | $12.34K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pegasusdollar](./pegasusdollar/brief.md) | $14.04K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pell-network](./pell-network/brief.md) | $238.47K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pembrock-finance](./pembrock-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pepeteam](./pepeteam/brief.md) | $1.03M | bsc, polygon | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [perpl](./perpl/brief.md) | $1.43M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [phoenix](./phoenix/brief.md) | $1.06M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [phoenix-bonds](./phoenix-bonds/brief.md) | $470.08K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [phoenix-defi-hub](./phoenix-defi-hub/brief.md) | $1.58M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [phuture](./phuture/brief.md) | $30.20K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [piggybank](./piggybank/brief.md) | $2.42M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pika-protocol](./pika-protocol/brief.md) | $402.55K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pionex](./pionex/brief.md) | $95.59M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pippi](./pippi/brief.md) | $75.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ploutos-money](./ploutos-money/brief.md) | $483.11 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pnetwork](./pnetwork/brief.md) | $13.10M | polygon | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [polkamarkets](./polkamarkets/brief.md) | $12.57K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [polydex](./polydex/brief.md) | $2.80K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [polygon-zkevm-bridge](./polygon-zkevm-bridge/brief.md) | $69.38M | ethereum | 11 | 11/11 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [polygonfarm-finance](./polygonfarm-finance/brief.md) | $51.48K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [polynomial-protocol](./polynomial-protocol/brief.md) | $5.29M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [polyo-exchange](./polyo-exchange/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [polywhale-finance](./polywhale-finance/brief.md) | $101.65K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pond0x](./pond0x/brief.md) | $2.06M | ethereum | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [poolshark](./poolshark/brief.md) | $60.46K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [poolside](./poolside/brief.md) | $30.61K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [potatoswap](./potatoswap/brief.md) | $3.97M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [powercity](./powercity/brief.md) | $2.39M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [powh3d](./powh3d/brief.md) | $3.47M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [predictcoin](./predictcoin/brief.md) | $117.74 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [prime-staking](./prime-staking/brief.md) | $2.47M | base | 6 | 1/6 (17%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [prime-vaults](./prime-vaults/brief.md) | $11.03K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [print3r](./print3r/brief.md) | $9.82 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [prism-protocol](./prism-protocol/brief.md) | $2.68K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [privacy-cash](./privacy-cash/brief.md) | $1.79M | base, ethereum | 6 | 1/6 (17%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [probit-global](./probit-global/brief.md) | $11.03M | fantom | 3 | 0/3 (0%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [psyoptions](./psyoptions/brief.md) | $462.90K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pu239](./pu239/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [puddingswap](./puddingswap/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pulsar-swap](./pulsar-swap/brief.md) | $11.10K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pulse-rate](./pulse-rate/brief.md) | $23.80K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pump-party](./pump-party/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pumpbase](./pumpbase/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pumpspace](./pumpspace/brief.md) | $3.33M | avalanche | 365 | 5/365 (1%) | 40.0% | 0.0% (-) | 2 | aging | ✅ active | - |
| [punks-terminal](./punks-terminal/brief.md) | $985.47K | ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [puzzleswaporg](./puzzleswaporg/brief.md) | $1.07M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pv01](./pv01/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pyron](./pyron/brief.md) | $2.12M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [q-borrowing](./q-borrowing/brief.md) | $6.57K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [qao](./qao/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [qian](./qian/brief.md) | $3.75K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [quantum-unit](./quantum-unit/brief.md) | $29.17 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [qubit](./qubit/brief.md) | $14.75K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [quipuswap](./quipuswap/brief.md) | $454.89K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [quoll](./quoll/brief.md) | $18.29K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [raccoon-finance](./raccoon-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [raft](./raft/brief.md) | $13.52K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [rage-protocol](./rage-protocol/brief.md) | $232.88K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rage-trade-v1](./rage-trade-v1/brief.md) | $5.99 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [railgun](./railgun/brief.md) | $312.54M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [rain](./rain/brief.md) | $26.14M | arbitrum | 31 | 30/31 (97%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [reddex](./reddex/brief.md) | $4.76M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rehold](./rehold/brief.md) | $11.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [renec-lend](./renec-lend/brief.md) | $5.09K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [revault](./revault/brief.md) | $1.96M | bsc | 66 | 20/66 (30%) | 40.0% | 0.0% (-) | 1 | stale | ⚠️ declining | - |
| [revert](./revert/brief.md) | $7.43M | 7 | 74 | 15/74 (20%) | 87.5% | 25.0% (Spearbit) | 11 | fresh | ✅ active | - |
| [revoluzion](./revoluzion/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [rex-staking](./rex-staking/brief.md) | $1.54M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rhea-finance](./rhea-finance/brief.md) | $207.97M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [rheo](./rheo/brief.md) | $33.31K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [rho](./rho/brief.md) | $2.31M | arbitrum, ethereum | 28 | 1/28 (4%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [rifts-finance](./rifts-finance/brief.md) | $18.57K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [ringfi](./ringfi/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [risex](./risex/brief.md) | $7.10M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rivera-money](./rivera-money/brief.md) | $766.74 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [robiniaswap](./robiniaswap/brief.md) | $19.16K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rocifi](./rocifi/brief.md) | $46.45K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [rocksolid-network](./rocksolid-network/brief.md) | $19.76M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [roe-finance](./roe-finance/brief.md) | $4.20K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [roguex](./roguex/brief.md) | $29.92K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rollie-finance](./rollie-finance/brief.md) | $4.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rollup-finance](./rollup-finance/brief.md) | $77.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ronin-bridge](./ronin-bridge/brief.md) | $3.72M | ethereum | 4 | 3/4 (75%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [rooster-protocol](./rooster-protocol/brief.md) | $2.36M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [root-finance](./root-finance/brief.md) | $1.58K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rosen-bridge](./rosen-bridge/brief.md) | $1.42M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [roseonx](./roseonx/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [router-protocol](./router-protocol/brief.md) | $9.86K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [rsk-bridge](./rsk-bridge/brief.md) | $1.03M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rswap](./rswap/brief.md) | $48.23K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rubic](./rubic/brief.md) | $148.21K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ruby.exchange](./ruby.exchange/brief.md) | $151.82K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rysk-finance](./rysk-finance/brief.md) | $47.31M | arbitrum, ethereum, hyperliquid | 68 | 38/68 (56%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [ryze-protocol](./ryze-protocol/brief.md) | $328.83K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ryze.fi](./ryze.fi/brief.md) | $6.35K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [saber](./saber/brief.md) | $3.97M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sable-finance](./sable-finance/brief.md) | $625.58K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [saddle-finance](./saddle-finance/brief.md) | $777.23K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [safe](./safe/brief.md) | $64.02M | ethereum | 12 | 11/12 (92%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [sakefinance](./sakefinance/brief.md) | $1.87M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [salvor](./salvor/brief.md) | $660.53K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sanctum](./sanctum/brief.md) | $1159.77M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [satoshi-perps](./satoshi-perps/brief.md) | $4.57K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [saucerswap](./saucerswap/brief.md) | $28.92M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [savvy](./savvy/brief.md) | $126.42K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [scallop](./scallop/brief.md) | $28.35M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [sceptre-liquid](./sceptre-liquid/brief.md) | $17.24M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [scream](./scream/brief.md) | $1.29M | fantom | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [scroll-bridge](./scroll-bridge/brief.md) | $34.07M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [scrub-money](./scrub-money/brief.md) | $7.16M | kava | 18 | 0/18 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [sdai](./sdai/brief.md) | $70.69M | ethereum, gnosis | 13 | 13/13 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [sector-finance](./sector-finance/brief.md) | $55.75K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [secured-finance](./secured-finance/brief.md) | $629.77K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [seeder-finance](./seeder-finance/brief.md) | $3.06K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [seedify](./seedify/brief.md) | $32.11K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [segment-finance](./segment-finance/brief.md) | $524.72K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [seneca](./seneca/brief.md) | $11.68K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sentiment](./sentiment/brief.md) | $1.20M | arbitrum | 2 | 2/2 (100%) | 100.0% | 50.0% (Sherlock) | 2 | aging | 💀 dead | - |
| [serum](./serum/brief.md) | $14.33M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [shadow-exchange](./shadow-exchange/brief.md) | $3.82M | sonic | 21 | 21/21 (100%) | 23.8% | 23.8% (Spearbit) | 1 | fresh | ⚠️ declining | - |
| [shape-bridge](./shape-bridge/brief.md) | $760.43K | ethereum | 14 | 12/14 (86%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [sherpa](./sherpa/brief.md) | $605.97K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [shield](./shield/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [shield-protocol](./shield-protocol/brief.md) | $37.58K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [shift-protocol](./shift-protocol/brief.md) | $842.24K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [shiny](./shiny/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [shoebill-finance](./shoebill-finance/brief.md) | $420.98K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sicx](./sicx/brief.md) | $1.02M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sierra-protocol](./sierra-protocol/brief.md) | $34.48M | avalanche, ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [sigma-money](./sigma-money/brief.md) | $2.83M | bsc | 187 | 146/187 (78%) | 26.0% | 24.7% (SlowMist) | 10 | fresh | ✅ active | - |
| [singularx](./singularx/brief.md) | $1.42M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [sir](./sir/brief.md) | $85.16K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sirius-finance](./sirius-finance/brief.md) | $7.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [skale-network-bridge](./skale-network-bridge/brief.md) | $560.67K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [skate-fi](./skate-fi/brief.md) | $112.27K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [skcs](./skcs/brief.md) | $25.15K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [slender](./slender/brief.md) | $124.20 | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [smartcoin](./smartcoin/brief.md) | $949.57 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [smartcredit](./smartcredit/brief.md) | $769.26K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [smilee-finance](./smilee-finance/brief.md) | $1.12M | arbitrum, berachain | 191 | 28/191 (15%) | 17.9% | 17.9% (Spearbit) | 2 | aging | ✅ active | - |
| [smoothy](./smoothy/brief.md) | $478.57K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [snuggle](./snuggle/brief.md) | $1.00M | arbitrum, base | 23 | 23/23 (100%) | 52.2% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [solace](./solace/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [solana-farm](./solana-farm/brief.md) | $249.73 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [solayer](./solayer/brief.md) | $9.59M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [solera](./solera/brief.md) | $6.63M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [solid](./solid/brief.md) | $69.20K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [solidly-labs](./solidly-labs/brief.md) | $187.31K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [solstice](./solstice/brief.md) | $508.18M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [solyard](./solyard/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sonic-gateway](./sonic-gateway/brief.md) | $45.45M | sonic | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [sonic-market](./sonic-market/brief.md) | $3.30K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [sophon-farm](./sophon-farm/brief.md) | $5.53M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [sorare-bridge](./sorare-bridge/brief.md) | $3.02M | ethereum | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [sorta-finance](./sorta-finance/brief.md) | $107.90K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sosovalue](./sosovalue/brief.md) | $89.06M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sovryn](./sovryn/brief.md) | $30.78M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sovryn-bridge](./sovryn-bridge/brief.md) | $2.53M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [spacebar](./spacebar/brief.md) | $635.43 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [spacefi](./spacefi/brief.md) | $1.31M | scroll, zksync-era | 29 | 0/29 (0%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [sparkdex](./sparkdex/brief.md) | $27.03M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [sparklex](./sparklex/brief.md) | $5.42K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [spartan](./spartan/brief.md) | $6.32K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [spectra](./spectra/brief.md) | $40.07M | 8 | 90 | 73/90 (81%) | 12.3% | 11.0% (Code4rena, Sherlock) | 6 | fresh | ✅ active | - |
| [spectrum-protocol](./spectrum-protocol/brief.md) | $8.45K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [spherium](./spherium/brief.md) | $0.01 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [spice-protocol](./spice-protocol/brief.md) | $1.53K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [spiko](./spiko/brief.md) | $1161.06M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [spinup](./spinup/brief.md) | $406.34K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [spiraldao](./spiraldao/brief.md) | $6.42M | ethereum, zksync-era | 12 | 7/12 (58%) | 42.9% | 0.0% (-) | 1 | stale | 💀 dead | - |
| [spiritswap](./spiritswap/brief.md) | $337.65K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [splash-protocol](./splash-protocol/brief.md) | $3.63M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [splashing-stake](./splashing-stake/brief.md) | $4.31M | sei | 7 | 6/7 (86%) | 66.7% | 0.0% (-) | 1 | fresh | ✅ active | - |
| [sport.fun](./sport.fun/brief.md) | $3.54M | base | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [springx](./springx/brief.md) | $23.49K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [sprinter](./sprinter/brief.md) | $923.97K | base | 4 | 4/4 (100%) | 100.0% | 50.0% (Spearbit) | 3 | fresh | ✅ active | - |
| [squadswap](./squadswap/brief.md) | $1.36M | base, blast, bsc | 84 | 28/84 (33%) | 64.3% | 0.0% (-) | 4 | aging | ✅ active | - |
| [ssap](./ssap/brief.md) | $1.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stablecoin-for-impact](./stablecoin-for-impact/brief.md) | $20.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stablecomp](./stablecomp/brief.md) | $1.11K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stablehodl](./stablehodl/brief.md) | $6.96M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stader](./stader/brief.md) | $229.89M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stake.ly](./stake.ly/brief.md) | $16.19K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stakehound](./stakehound/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stakingverse](./stakingverse/brief.md) | $3.28M | lukso | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [standx](./standx/brief.md) | $43.19M | bsc | 14 | 7/14 (50%) | 57.1% | 0.0% (-) | 5 | fresh | ⚠️ declining | - |
| [stargate](./stargate/brief.md) | $4.32M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [starkdefi](./starkdefi/brief.md) | $87.85K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [starlay-finance](./starlay-finance/brief.md) | $199.46K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [starterra](./starterra/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stcelo](./stcelo/brief.md) | $1.24M | celo | 3 | 3/3 (100%) | 66.7% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [stealthpad](./stealthpad/brief.md) | $5.91 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stfil](./stfil/brief.md) | $4.20M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stobox](./stobox/brief.md) | $15.12M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [strata](./strata/brief.md) | $89.94M | ethereum | 25 | 24/25 (96%) | 37.5% | 33.3% (Cyfrin) | 3 | fresh | ✅ active | - |
| [stratis-liquid-staking](./stratis-liquid-staking/brief.md) | $413.90K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stratis-mstrax](./stratis-mstrax/brief.md) | $1.95M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stream-finance](./stream-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [streamflow](./streamflow/brief.md) | $699.97M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stride-hyperlane](./stride-hyperlane/brief.md) | $0.33 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [strike-finance-perpetuals](./strike-finance-perpetuals/brief.md) | $4.88M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [stroom](./stroom/brief.md) | $16.32K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [sturdy](./sturdy/brief.md) | $371.22K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stusdt](./stusdt/brief.md) | $60.24M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sui-rewards-me](./sui-rewards-me/brief.md) | $1.12K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [suibridge](./suibridge/brief.md) | $34.80M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [suidollar-basis](./suidollar-basis/brief.md) | $250.53K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sumer.money](./sumer.money/brief.md) | $1.42M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sun](./sun/brief.md) | $209.29M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sunny](./sunny/brief.md) | $2.14M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [superearn](./superearn/brief.md) | $10.13M | ethereum, klaytn | 165 | 99/165 (60%) | 38.4% | 21.2% (Spearbit) | 3 | fresh | ✅ active | - |
| [superfluid](./superfluid/brief.md) | $4.04M | 10 | 249 | 77/249 (31%) | 20.0% | 6.3% (Trail of Bits) | 6 | fresh | ✅ active | - |
| [superhero-dex](./superhero-dex/brief.md) | $772.36 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [supernova](./supernova/brief.md) | $1.35M | ethereum | 34 | 34/34 (100%) | 44.1% | 0.0% (-) | 1 | fresh | ⚠️ declining | - |
| [supswap](./supswap/brief.md) | $19.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [surf-lending](./surf-lending/brief.md) | $4.45M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [surf-protocol](./surf-protocol/brief.md) | $6.00K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [surfswap](./surfswap/brief.md) | $117.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sushi](./sushi/brief.md) | $96.09M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [swamp-finance](./swamp-finance/brief.md) | $1.07M | bsc | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [swap.io-clmm](./swap.io-clmm/brief.md) | $2.07K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [swappi](./swappi/brief.md) | $1.61M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [swapscanner](./swapscanner/brief.md) | $3.10M | klaytn | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [swapwizard](./swapwizard/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [swapx](./swapx/brief.md) | $492.43K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sweep](./sweep/brief.md) | $8.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [swell](./swell/brief.md) | $100.54M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [swellchain-bridge](./swellchain-bridge/brief.md) | $612.38K | ethereum | 21 | 21/21 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [swerve](./swerve/brief.md) | $305.21K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [swirl](./swirl/brief.md) | $4.41M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [symmetry-trade](./symmetry-trade/brief.md) | $7.33K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [synatra](./synatra/brief.md) | $2.42M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [syncyield](./syncyield/brief.md) | $0.01 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [synthswap](./synthswap/brief.md) | $16.72K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [syntropia](./syntropia/brief.md) | $4.17M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [t2t2](./t2t2/brief.md) | $7.88K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [taiko-bridge](./taiko-bridge/brief.md) | $12.76M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tangible](./tangible/brief.md) | $41.93M | 6 | 472 | 267/472 (57%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [tangoswap](./tangoswap/brief.md) | $14.24K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [tea-rex](./tea-rex/brief.md) | $9.53K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tealswap](./tealswap/brief.md) | $3.97K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [teleswap](./teleswap/brief.md) | $587.13K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [teller](./teller/brief.md) | $1.34M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [templar-protocol](./templar-protocol/brief.md) | $40.97M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [tensorplex](./tensorplex/brief.md) | $387.40K | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tg-casino](./tg-casino/brief.md) | $1.20M | ethereum | 4 | 4/4 (100%) | 50.0% | 0.0% (-) | 3 | stale | ✅ active | - |
| [thaw](./thaw/brief.md) | $7.83K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [the-parallel](./the-parallel/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [the-story-of-draco](./the-story-of-draco/brief.md) | $7.42 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [the-tokenized-bitcoin](./the-tokenized-bitcoin/brief.md) | $106.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [thedeep](./thedeep/brief.md) | $7.01M | 4 | 118 | 13/118 (11%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [themis-pro](./themis-pro/brief.md) | $1.16M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [thena](./thena/brief.md) | $3.32M | bsc, opbnb | 29 | 29/29 (100%) | 10.3% | 3.4% (OpenZeppelin) | 2 | fresh | ⚠️ declining | - |
| [thesauros](./thesauros/brief.md) | $50.84K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [thoreum-finance](./thoreum-finance/brief.md) | $45.09K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [throne](./throne/brief.md) | $16.85K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [thruster](./thruster/brief.md) | $4.86M | blast | 11 | 11/11 (100%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [timeless-finance](./timeless-finance/brief.md) | $12.37K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tinyman](./tinyman/brief.md) | $5.85M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [tizi](./tizi/brief.md) | $121.96K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tokenlabs](./tokenlabs/brief.md) | $249.30K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tokenlon](./tokenlon/brief.md) | $32.02M | ethereum | 10 | 10/10 (100%) | 50.0% | 0.0% (-) | 5 | stale | ⚠️ declining | - |
| [tonco](./tonco/brief.md) | $8.19M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tonpound](./tonpound/brief.md) | $14.64K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [tonyielding](./tonyielding/brief.md) | $88.22 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [toobit](./toobit/brief.md) | $61.52M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [topaz](./topaz/brief.md) | $1.05M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [tothemoon](./tothemoon/brief.md) | $6.76M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tower-dex](./tower-dex/brief.md) | $5.47K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [townsquare](./townsquare/brief.md) | $2.33M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [toxicdeer-finance](./toxicdeer-finance/brief.md) | $23.74K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [tren-finance](./tren-finance/brief.md) | $25.64 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [trick-or-treat-farm](./trick-or-treat-farm/brief.md) | $1.09K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [trisolaris](./trisolaris/brief.md) | $1.23M | aurora | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [tristero](./tristero/brief.md) | $353.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tropykus-finance](./tropykus-finance/brief.md) | $12.90M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [troves](./troves/brief.md) | $4.11M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [truefi](./truefi/brief.md) | $15.38M | arbitrum, ethereum | 6 | 6/6 (100%) | 16.7% | 0.0% (-) | 3 | stale | ⚠️ declining | - |
| [trufin-protocol](./trufin-protocol/brief.md) | - | ethereum | 2 | 2/2 (100%) | 50.0% | 50.0% (OpenZeppelin) | 4 | fresh | ⚠️ declining | - |
| [tulpea](./tulpea/brief.md) | $17.62K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [turboflow](./turboflow/brief.md) | $1.92M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [twin-finance](./twin-finance/brief.md) | $6.67K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [twyne](./twyne/brief.md) | $4.06M | ethereum | 63 | 56/63 (89%) | 12.5% | 0.0% (-) | 2 | fresh | ✅ active | - |
| [txflow](./txflow/brief.md) | $4.12M | arbitrum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [tymio](./tymio/brief.md) | $209.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [u235](./u235/brief.md) | $4.76K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [ufarm-digital](./ufarm-digital/brief.md) | $507.66K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [umee](./umee/brief.md) | $105.42K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [unchain-x](./unchain-x/brief.md) | $1.09M | bsc | 12 | 11/12 (92%) | 9.1% | 0.0% (-) | 1 | aging | ✅ active | - |
| [unclesam-protocol](./unclesam-protocol/brief.md) | $0.01 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [unicly](./unicly/brief.md) | $370.64K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [unite-finance](./unite-finance/brief.md) | $281.39K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [universal-bridge](./universal-bridge/brief.md) | $6.66M | base | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | - |
| [universe-finance](./universe-finance/brief.md) | $19.89K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [uniwhale](./uniwhale/brief.md) | $33.43K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [uniwswap](./uniwswap/brief.md) | $815.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [unslashed](./unslashed/brief.md) | $2.45M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [untangled](./untangled/brief.md) | $302.81K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [untitledbank](./untitledbank/brief.md) | $242.77K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [uplift-dao](./uplift-dao/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [uranium.io](./uranium.io/brief.md) | $7.41M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [urdex-finance](./urdex-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [usdt0](./usdt0/brief.md) | $3612.31M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [uswap](./uswap/brief.md) | $545.91K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [usx.capital](./usx.capital/brief.md) | $763.47K | scroll | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [utonic](./utonic/brief.md) | $5.02M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [utopia](./utopia/brief.md) | $15.43K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [valas-finance](./valas-finance/brief.md) | $22.07K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [valorem](./valorem/brief.md) | $34.32 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [vaultcraft](./vaultcraft/brief.md) | $546.32K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [vaultka](./vaultka/brief.md) | $5.89K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [vaulty-finance](./vaulty-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [vedelegate](./vedelegate/brief.md) | $828.87K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [velodrome](./velodrome/brief.md) | $33.86M | optimism | 15 | 15/15 (100%) | 80.0% | 80.0% (Sherlock, Spearbit) | 3 | aging | ✅ active | - |
| [velora](./velora/brief.md) | $248.18K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [veno-finance](./veno-finance/brief.md) | $37.49M | cronos, ethereum, zksync-era | 44 | 5/44 (11%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [venombridge](./venombridge/brief.md) | $860.40K | 4 | 2 | 1/2 (50%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [ventuals](./ventuals/brief.md) | $28.43M | hyperliquid | 4 | 4/4 (100%) | 100.0% | 0.0% (-) | 2 | fresh | ✅ active | - |
| [verio](./verio/brief.md) | $4.40M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [verocket](./verocket/brief.md) | $19.04K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [verse](./verse/brief.md) | $468.32K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [verus-market](./verus-market/brief.md) | $6.36M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [vest-markets](./vest-markets/brief.md) | $1.17M | arbitrum, bsc, zksync-era | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [vfat.io](./vfat.io/brief.md) | $26.85M | 14 | 355 | 194/355 (55%) | 13.0% | 0.0% (-) | 3 | fresh | ✅ active | - |
| [vii-finance](./vii-finance/brief.md) | $12.48K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [virtuals-protocol](./virtuals-protocol/brief.md) | $27.33M | base | 46 | 46/46 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [vmex-finance](./vmex-finance/brief.md) | $3.24K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [vnx](./vnx/brief.md) | $5.44M | 7 | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [voltz](./voltz/brief.md) | $214.19K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wanswap-dex](./wanswap-dex/brief.md) | $936.35K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [warp-protocol](./warp-protocol/brief.md) | $39.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [waterfall-defi](./waterfall-defi/brief.md) | $19.02K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [waterfall-finance](./waterfall-finance/brief.md) | $35.76K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [waterneuron](./waterneuron/brief.md) | $5.37M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wefi](./wefi/brief.md) | $292.38K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [weft-finance](./weft-finance/brief.md) | $488.16K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wemix.fi](./wemix.fi/brief.md) | $33.91M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [whale-loans](./whale-loans/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [whaleswap](./whaleswap/brief.md) | $2.39K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [white-whale](./white-whale/brief.md) | $517.97K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [whiteheart](./whiteheart/brief.md) | $6.31K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [winter-walrus](./winter-walrus/brief.md) | $51.08K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wise-lending](./wise-lending/brief.md) | $36.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [wisteria-swap](./wisteria-swap/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [witswap](./witswap/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [woo-x](./woo-x/brief.md) | $5.28M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [worldes](./worldes/brief.md) | $567.30 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wowswap](./wowswap/brief.md) | $34.38K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [wrapped](./wrapped/brief.md) | $20.11M | celo | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | - |
| [wrapped-bnb](./wrapped-bnb/brief.md) | $5.51M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [wstaking](./wstaking/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [xcarnival](./xcarnival/brief.md) | $2.16K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [xdollar](./xdollar/brief.md) | $65.23K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [xeleb-protocol](./xeleb-protocol/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [xfi-native-staking-protocol](./xfi-native-staking-protocol/brief.md) | $1.31M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [xpanse](./xpanse/brief.md) | $240.06K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [xrgb](./xrgb/brief.md) | $304.01 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [xswap-protocol](./xswap-protocol/brief.md) | $664.62K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [y2k-finance](./y2k-finance/brief.md) | $30.04K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [yaka-finance](./yaka-finance/brief.md) | $10.29K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [yamato-protocol](./yamato-protocol/brief.md) | $1.12M | ethereum | 22 | 7/22 (32%) | 28.6% | 0.0% (-) | 1 | aging | ✅ active | - |
| [ybtc.b](./ybtc.b/brief.md) | $69.27M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [yei-finance](./yei-finance/brief.md) | $18.30M | sei | 14 | 14/14 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [yield-protocol](./yield-protocol/brief.md) | $203.28K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [yieldly](./yieldly/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [yo-protocol](./yo-protocol/brief.md) | $34.89M | arbitrum, base, ethereum | 18 | 18/18 (100%) | 44.4% | 5.6% (Spearbit) | 5 | fresh | ⚠️ declining | - |
| [yoshi-exchange](./yoshi-exchange/brief.md) | $6.60K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [youves](./youves/brief.md) | $35.48M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [yupana](./yupana/brief.md) | $24.53K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [zeebu](./zeebu/brief.md) | $4.56M | base, ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [zenlink](./zenlink/brief.md) | $3.86M | moonbeam, moonriver | 7 | 5/7 (71%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | - |
| [zero-g-finance](./zero-g-finance/brief.md) | $1.75K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zerobase-cedefi](./zerobase-cedefi/brief.md) | $56.78M | 7 | 11 | 6/11 (55%) | 71.4% | 0.0% (-) | 4 | fresh | ✅ active | - |
| [zeroliquid](./zeroliquid/brief.md) | $3.43K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zeroswap](./zeroswap/brief.md) | $253.35 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zharta](./zharta/brief.md) | $2.75 | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [zircon-gamma](./zircon-gamma/brief.md) | $2.55 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zivoe](./zivoe/brief.md) | $13.86M | ethereum | 18 | 18/18 (100%) | 38.9% | 22.2% (Sherlock) | 2 | aging | ⚠️ declining | - |
| [zklink-nova](./zklink-nova/brief.md) | $10.42M | 10 | 62 | 45/62 (73%) | 17.8% | 8.9% (OpenZeppelin) | 10 | aging | ⚠️ declining | - |
| [zkswap-finance](./zkswap-finance/brief.md) | $991.69K | sonic, zksync-era | 52 | 11/52 (21%) | 18.2% | 0.0% (-) | 5 | stale | ✅ active | - |
| [zoodao](./zoodao/brief.md) | $9.03K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zoomex](./zoomex/brief.md) | $24.65M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zootopia-finance](./zootopia-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zoro-protocol](./zoro-protocol/brief.md) | $11.76K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zoth](./zoth/brief.md) | $2.20M | 5 | 11 | 6/11 (55%) | 50.0% | 0.0% (-) | 4 | fresh | ✅ active | - |
| [zyberswap](./zyberswap/brief.md) | $65.56K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |

_Generated: 2026-06-18T09:30:16.991Z_
_Projects: 1409_
