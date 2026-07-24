# Agentic Audit Briefs

Machine-readable and human-readable audit coverage briefs for DeFi protocols, produced by [meta-audit](https://github.com/alexdolgov/meta-audit).

Each project directory contains:
- `brief.json` — machine-readable: full contract surface, audits, coverage, TVL
- `brief.md` — human-readable: overview, narrative, tables with links
- `contracts/` — verified source code organized by chain, with per-contract READMEs

## Project Directory

| Project | TVL (DL) | Chains | Implementations | Verified | Coverage | Tier 1 | Audits | Freshness | Status | ASD |
|---|---:|---|---:|---|---:|---|---:|---|---|---:|
| [angle](./angle/brief.md) | $2.28M | 9 | 1108 | 145/1108 (13%) | 2.4% | 0.0% (-) | 2 | stale | 💀 dead | $1109.45M |
| [abracadabra](./abracadabra/brief.md) | $4.64M | 12 | 398 | 232/398 (58%) | 3.5% | 0.0% (-) | 4 | aging | 💀 dead | $776.46M |
| [centrifuge](./centrifuge/brief.md) | $1799.15M | 7 | 71 | 62/71 (87%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | $727.71M |
| [beanstalk](./beanstalk/brief.md) | $4.91M | arbitrum, ethereum | 546 | 104/546 (19%) | 3.5% | 2.4% (Code4rena, Cyfrin, Immunefi) | 6 | stale | 💀 dead | $528.34M |
| [allbridge](./allbridge/brief.md) | $22.54M | 14 | 195 | 40/195 (21%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | $323.22M |
| [alchemix](./alchemix/brief.md) | $30.49M | 4 | 483 | 126/483 (26%) | 13.6% | 2.3% (Spearbit) | 5 | fresh | ⚠️ declining | $290.56M |
| [apex-protocol](./apex-protocol/brief.md) | $34.23M | 4 | 580 | 47/580 (8%) | 38.5% | 0.0% (-) | 1 | stale | ✅ active | $278.13M |
| [spiko](./spiko/brief.md) | $1099.80M | 4 | 161 | 58/161 (36%) | 10.7% | 10.7% (Trail of Bits) | 1 | stale | ❓ unknown | $276.63M |
| [aethir](./aethir/brief.md) | $6.46M | ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $173.81M |
| [apechain-bridge](./apechain-bridge/brief.md) | $47.11M | arbitrum, ethereum | 18 | 16/18 (89%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $148.16M |
| [convex-finance](./convex-finance/brief.md) | $569.50M | 4 | 122 | 106/122 (87%) | 8.2% | 1.0% (ChainSecurity) | 6 | stale | ❓ unknown | $144.23M |
| [bio-protocol](./bio-protocol/brief.md) | $4.11M | base, ethereum | 47 | 40/47 (85%) | 9.7% | 0.0% (-) | 3 | aging | ✅ active | $130.00M |
| [babydogecoin](./babydogecoin/brief.md) | $1.88M | bsc, ethereum | 21 | 10/21 (48%) | 20.0% | 0.0% (-) | 1 | fresh | ⚠️ declining | $121.44M |
| [avantis](./avantis/brief.md) | $31.30M | base | 31 | 27/31 (87%) | 82.4% | 0.0% (-) | 5 | aging | ⚠️ declining | $90.43M |
| [3jane](./3jane/brief.md) | $119.11M | ethereum | 24 | 22/24 (92%) | 64.3% | 64.3% (Sherlock) | 4 | fresh | ✅ active | $83.79M |
| [armitage-by-wintermute](./armitage-by-wintermute/brief.md) | $56.37M | ethereum | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $56.39M |
| [aura](./aura/brief.md) | $7.95M | 9 | 256 | 118/256 (46%) | 31.3% | 20.9% (Code4rena) | 17 | stale | 💀 dead | $48.09M |
| [b.protocol](./b.protocol/brief.md) | $1.75M | 4 | 99 | 32/99 (32%) | 35.0% | 20.0% (Code4rena) | 5 | stale | 💀 dead | $46.21M |
| [blur](./blur/brief.md) | $13.58M | ethereum | 22 | 2/22 (9%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $42.56M |
| [api3](./api3/brief.md) | $43.29M | 64 | 568 | 25/568 (4%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $36.88M |
| [alphaping](./alphaping/brief.md) | $39.13M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $36.69M |
| [autofinance](./autofinance/brief.md) | $31.90M | 7 | 1102 | 563/1102 (51%) | 0.9% | 0.0% (-) | 2 | aging | ❓ unknown | $33.56M |
| [ankr](./ankr/brief.md) | $18.10M | 6 | 165 | 109/165 (66%) | 0.0% | 0.0% (-) | 0 | aging | ✅ active | $33.43M |
| [asymmetry](./asymmetry/brief.md) | $2.11M | base, ethereum | 493 | 102/493 (21%) | 38.6% | 27.7% (Certora, Code4rena, Spearbit) | 13 | aging | ⚠️ declining | $24.70M |
| [aegis-markets](./aegis-markets/brief.md) | $1.69M | base, unichain | 19 | 15/19 (79%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $20.77M |
| [aladdin-dao](./aladdin-dao/brief.md) | $22.53K | 6 | 170 | 74/170 (44%) | 17.0% | 3.8% (Trail of Bits) | 16 | aging | 💀 dead | $18.04M |
| [40-acres](./40-acres/brief.md) | $48.48M | 4 | 544 | 142/544 (26%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $9.51M |
| [belt-finance](./belt-finance/brief.md) | $11.09M | bsc, heco, klaytn | 1275 | 68/1275 (5%) | 38.8% | 0.0% (-) | 6 | stale | 💀 dead | $9.22M |
| [azuro](./azuro/brief.md) | $1.48M | 6 | 1390 | 68/1390 (5%) | 7.5% | 0.0% (-) | 3 | aging | ✅ active | $9.00M |
| [usdt0](./usdt0/brief.md) | $3624.56M | 14 | 112 | 70/112 (63%) | 41.7% | 35.0% (ChainSecurity, OpenZeppelin) | 12 | fresh | ❓ unknown | $8.86M |
| [alpaca-finance](./alpaca-finance/brief.md) | $39.03M | bsc | 109 | 80/109 (73%) | 93.0% | 2.8% (SlowMist) | 17 | stale | ⚠️ declining | $8.54M |
| [dolomite](./dolomite/brief.md) | $751.37M | 7 | 172 | 134/172 (78%) | 12.1% | 8.1% (Cyfrin, OpenZeppelin) | 8 | aging | ❓ unknown | $7.00M |
| [badger-dao](./badger-dao/brief.md) | $7.27M | 4 | 672 | 26/672 (4%) | 26.3% | 5.3% (Code4rena) | 2 | stale | ❓ unknown | $6.97M |
| [alphagrowth](./alphagrowth/brief.md) | $7.32M | 4 | 46 | 26/46 (57%) | 18.8% | 12.5% (ChainSecurity, Cyfrin, Spearbit) | 7 | fresh | ✅ active | $5.94M |
| [bancor](./bancor/brief.md) | $22.65M | ethereum | 170 | 91/170 (54%) | 20.5% | 19.3% (ChainSecurity, ConsenSys Diligence, OpenZeppelin) | 6 | stale | 💀 dead | $5.52M |
| [altitude.fi](./altitude.fi/brief.md) | $7.08M | ethereum | 127 | 27/127 (21%) | 30.0% | 0.0% (-) | 7 | aging | ⚠️ declining | $5.31M |
| [atlendis](./atlendis/brief.md) | $10.99M | polygon | 40 | 9/40 (23%) | 60.0% | 0.0% (-) | 2 | stale | ⚠️ declining | $4.19M |
| [amy-finance](./amy-finance/brief.md) | $0.00 | arbitrum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | $3.97M |
| [b-lucky](./b-lucky/brief.md) | $1.02M | bsc | 19 | 2/19 (11%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | $2.65M |
| [aevo](./aevo/brief.md) | $18.16M | 4 | 267 | 90/267 (34%) | 14.0% | 0.0% (-) | 14 | stale | ❓ unknown | $2.04M |
| [alien-base](./alien-base/brief.md) | $3.34M | base | 39 | 28/39 (72%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $2.02M |
| [avalon-labs](./avalon-labs/brief.md) | $398.19M | 12 | 571 | 42/571 (7%) | 17.9% | 14.3% (SlowMist) | 6 | aging | ❓ unknown | $1.99M |
| [arcadia-finance](./arcadia-finance/brief.md) | $5.81M | base, optimism, unichain | 293 | 113/293 (39%) | 31.3% | 27.5% (Sherlock) | 12 | fresh | ✅ active | $1.87M |
| [planet](./planet/brief.md) | $1.66M | bsc | 56 | 48/56 (86%) | 8.7% | 0.0% (-) | 1 | stale | ❓ unknown | $1.33M |
| [alphax](./alphax/brief.md) | $1.48M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ✅ active | $900.20K |
| [baseline-protocol](./baseline-protocol/brief.md) | $102.32M | base, blast, ethereum | 121 | 7/121 (6%) | 66.7% | 0.0% (-) | 3 | aging | ⚠️ declining | $768.92K |
| [bend](./bend/brief.md) | $23.14M | berachain, ethereum | 97 | 53/97 (55%) | 0.0% | 0.0% (Spearbit) | 1 | fresh | ✅ active | $730.93K |
| [bonsaidao-ecosystem](./bonsaidao-ecosystem/brief.md) | $899.42K | arbitrum, base, berachain | 619 | 66/619 (11%) | 7.3% | 0.0% (-) | 5 | aging | ⚠️ declining | $661.56K |
| [anthias-labs](./anthias-labs/brief.md) | $19.43M | base | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $601.19K |
| [bakeryswap](./bakeryswap/brief.md) | $2.77M | bsc | 60 | 15/60 (25%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $525.89K |
| [alium-swap](./alium-swap/brief.md) | $14.22K | bsc | 49 | 4/49 (8%) | 50.0% | 0.0% (-) | 1 | stale | ⚠️ declining | $497.49K |
| [anzen-finance](./anzen-finance/brief.md) | $7.90M | 5 | 45 | 34/45 (76%) | 20.7% | 0.0% (-) | 4 | aging | ❓ unknown | $454.48K |
| [blackhole](./blackhole/brief.md) | $7.71M | avalanche | 97 | 74/97 (76%) | 14.9% | 14.9% (Code4rena) | 3 | aging | ⚠️ declining | $372.88K |
| [bella-protocol](./bella-protocol/brief.md) | $153.48K | 4 | 20 | 8/20 (40%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | $272.62K |
| [across](./across/brief.md) | $18.74M | 15 | 246 | 125/246 (51%) | 22.2% | 22.2% (OpenZeppelin) | 3 | stale | ❓ unknown | $226.92K |
| [biswap](./biswap/brief.md) | $5.06M | 4 | 85 | 8/85 (9%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | $225.80K |
| [angles](./angles/brief.md) | $471.73K | sonic | 25 | 10/25 (40%) | 0.0% | 0.0% (-) | 0 | aging | ⚠️ declining | $219.43K |
| [ailayer-farm](./ailayer-farm/brief.md) | $60.88M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | $204.07K |
| [babyswap](./babyswap/brief.md) | $1.30M | bsc | 86 | 38/86 (44%) | 2.6% | 0.0% (-) | 1 | stale | 💀 dead | $197.17K |
| [aperocket](./aperocket/brief.md) | $35.47K | bsc | 970 | 41/970 (4%) | 4.3% | 0.0% (-) | 1 | stale | 💀 dead | $175.29K |
| [animal-farm](./animal-farm/brief.md) | $65.99K | bsc | 151 | 20/151 (13%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | $174.89K |
| [arch](./arch/brief.md) | $214.72K | ethereum, polygon | 10 | 7/10 (70%) | 20.0% | 0.0% (-) | 1 | stale | ⚠️ declining | $153.74K |
| [bedrock](./bedrock/brief.md) | $264.22M | 14 | 68 | 57/68 (84%) | 32.4% | 0.0% (-) | 7 | aging | ✅ active | $110.49K |
| [acryptos](./acryptos/brief.md) | $10.55M | arbitrum, base, bsc | 579 | 16/579 (3%) | 50.0% | 0.0% (-) | 3 | stale | ⚠️ declining | $85.63K |
| [bookusd](./bookusd/brief.md) | $28.95K | bsc | 142 | 21/142 (15%) | 22.2% | 0.0% (-) | 1 | aging | ❓ unknown | $83.64K |
| [arrakis-finance](./arrakis-finance/brief.md) | $65.97M | 9 | 251 | 149/251 (59%) | 9.4% | 1.6% (Sherlock) | 7 | stale | ✅ active | $68.86K |
| [bass-exchange](./bass-exchange/brief.md) | $248.45K | base | 10 | 4/10 (40%) | 25.0% | 0.0% (-) | 1 | stale | ✅ active | $49.22K |
| [akropolis](./akropolis/brief.md) | $1.34K | ethereum | 6 | 2/6 (33%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | $49.01K |
| [beamswap](./beamswap/brief.md) | $40.77K | moonbeam | 144 | 28/144 (19%) | 29.6% | 0.0% (-) | 6 | stale | 💀 dead | $37.51K |
| [basisos](./basisos/brief.md) | $24.19K | arbitrum, base | 201 | 21/201 (10%) | 0.0% | 0.0% (-) | 0 | aging | ⚠️ declining | $34.10K |
| [atoll](./atoll/brief.md) | $0.00 | sonic | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | aging | 💀 dead | $19.72K |
| [aera](./aera/brief.md) | $126.12M | 4 | 222 | 144/222 (65%) | 2.7% | 1.8% (OpenZeppelin, Spearbit) | 4 | stale | ✅ active | $15.62K |
| [altitude](./altitude/brief.md) | $31.74K | 9 | 26 | 2/26 (8%) | 33.3% | 0.0% (-) | 1 | stale | ❓ unknown | $15.50K |
| [asseto-cash+](./asseto-cash+/brief.md) | $880.00K | bsc, ethereum | 15 | 14/15 (93%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | $15.36K |
| [axedao](./axedao/brief.md) | $0.00 | ethereum | 2 | 1/2 (50%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | $13.26K |
| [accumulated-finance](./accumulated-finance/brief.md) | $978.02K | 5 | 42 | 29/42 (69%) | 4.8% | 0.0% (-) | 1 | stale | ❓ unknown | $12.19K |
| [blend-money](./blend-money/brief.md) | $122.74K | 6 | 16 | 13/16 (81%) | 77.8% | 66.7% (Sherlock, Spearbit) | 11 | fresh | ⚠️ declining | $8.10K |
| [augmented-finance](./augmented-finance/brief.md) | $326.65 | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | $6.31K |
| [blasterswap](./blasterswap/brief.md) | $288.53K | blast | 4 | 3/4 (75%) | 0.0% | 0.0% (-) | 0 | stale | ⚠️ declining | $2.36K |
| [blast-l2](./blast-l2/brief.md) | $47.97M | blast, ethereum | 241 | 36/241 (15%) | 85.2% | 85.2% (OpenZeppelin, Trail of Bits) | 3 | stale | ⚠️ declining | $569.61 |
| [amped-finance](./amped-finance/brief.md) | $154.26 | base, berachain, sonic | 45 | 28/45 (62%) | 11.1% | 0.0% (-) | 2 | aging | ⚠️ declining | $9.69 |
| [bmx](./bmx/brief.md) | $2.11M | base, mode, sonic | 445 | 60/445 (13%) | 13.7% | 13.7% (Sherlock, Spearbit) | 2 | fresh | ✅ active | $1.00 |
| [0vix](./0vix/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [0x0.ai](./0x0.ai/brief.md) | $164.45K | ethereum | 6 | 6/6 (100%) | 33.3% | 0.0% (-) | 2 | unknown | ❓ unknown | - |
| [1inch](./1inch/brief.md) | $2.27M | bsc, ethereum, zksync-era | 390 | 115/390 (29%) | 100.0% | 100.0% (ConsenSys Diligence, OpenZeppelin) | 7 | fresh | ⚠️ declining | - |
| [1sec](./1sec/brief.md) | $1.40M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [21.co](./21.co/brief.md) | $2.10 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [3f](./3f/brief.md) | $13.13M | ethereum | 177 | 177/177 (100%) | 19.4% | 19.4% (ChainSecurity, ConsenSys Diligence, Spearbit) | 14 | fresh | ❓ unknown | - |
| [3f-mutual](./3f-mutual/brief.md) | $3.01M | ethereum | 13 | 10/13 (77%) | 22.2% | 0.0% (-) | 1 | stale | ✅ active | - |
| [3xcalibur](./3xcalibur/brief.md) | $2.54K | arbitrum | 18 | 14/18 (78%) | 78.6% | 0.0% (-) | 1 | stale | 💀 dead | - |
| [88mph](./88mph/brief.md) | $323.86K | ethereum, polygon | 75 | 75/75 (100%) | 39.1% | 37.7% (Code4rena, Trail of Bits) | 6 | stale | ❓ unknown | - |
| [9inch](./9inch/brief.md) | $758.68K | ethereum | 18 | 18/18 (100%) | 22.2% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [a51-finance](./a51-finance/brief.md) | $13.04K | 6 | 26 | 24/26 (92%) | 66.7% | 0.0% (-) | 7 | stale | ⚠️ declining | - |
| [aarna-protocol](./aarna-protocol/brief.md) | $501.71K | 4 | 66 | 66/66 (100%) | 12.9% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [aave](./aave/brief.md) | $32671.72M | 18 | 202 | 54/202 (27%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [aavegotchi](./aavegotchi/brief.md) | $273.28K | ethereum, polygon | 16 | 16/16 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [abc-pool](./abc-pool/brief.md) | $4.71M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [abel-finance](./abel-finance/brief.md) | $400.10K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [abstract](./abstract/brief.md) | $23.03M | ethereum | 15 | 15/15 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [abyss](./abyss/brief.md) | $683.23K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [acala-euphrates](./acala-euphrates/brief.md) | $211.62K | ethereum | 2 | 1/2 (50%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | - |
| [access-protocol](./access-protocol/brief.md) | $869.75K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [accountable](./accountable/brief.md) | $404.31M | ethereum | 18 | 18/18 (100%) | 82.4% | 82.4% (Cyfrin) | 4 | fresh | ❓ unknown | - |
| [acet](./acet/brief.md) | $8.67K | bsc | 8 | 8/8 (100%) | 37.5% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [acre](./acre/brief.md) | $3.25M | ethereum | 59 | 46/59 (78%) | 3.4% | 0.0% (-) | 4 | aging | ❓ unknown | - |
| [adamant-finance](./adamant-finance/brief.md) | $201.75K | polygon | 73 | 73/73 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [aegis](./aegis/brief.md) | $35.77M | bsc, ethereum | 22 | 20/22 (91%) | 95.0% | 0.0% (-) | 2 | fresh | ✅ active | - |
| [aequinox](./aequinox/brief.md) | $627.19K | bsc | 78 | 78/78 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aerodrome](./aerodrome/brief.md) | $310.17M | base | 67 | 67/67 (100%) | 15.4% | 15.4% (ChainSecurity, OpenZeppelin, Trail of Bits) | 11 | aging | ❓ unknown | - |
| [afi-protocol](./afi-protocol/brief.md) | $225.31M | base, ethereum | 8 | 8/8 (100%) | 37.5% | 37.5% (Spearbit) | 3 | fresh | ❓ unknown | - |
| [aftermath-finance](./aftermath-finance/brief.md) | $3.44M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [agave](./agave/brief.md) | - | gnosis | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [agile-finance](./agile-finance/brief.md) | $0.00 | cronos | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | - |
| [aimstrong](./aimstrong/brief.md) | $178.07 | arbitrum, base, bsc | 6 | 0/6 (0%) | 0.0% | 0.0% (-) | 0 | aging | ⚠️ declining | - |
| [airpuff](./airpuff/brief.md) | $432.65K | arbitrum, ethereum, mantle | 183 | 183/183 (100%) | 6.1% | 2.5% (Certora, Spearbit) | 17 | fresh | ❓ unknown | - |
| [aitech](./aitech/brief.md) | $3.04M | bsc | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [alchemist](./alchemist/brief.md) | $184.23K | ethereum | 14 | 14/14 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [algoblocks](./algoblocks/brief.md) | $0.00 | bsc | 19 | 6/19 (32%) | 20.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [algodex](./algodex/brief.md) | $2.54K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [algofi](./algofi/brief.md) | $628.07K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [alita-finance](./alita-finance/brief.md) | $221.18K | bsc | 6 | 6/6 (100%) | 33.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [allstake](./allstake/brief.md) | $758.94K | ethereum | 2 | 2/2 (100%) | 50.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [almanak](./almanak/brief.md) | $498.89K | 14 | 299 | 3/299 (1%) | - | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [alongside](./alongside/brief.md) | $355.87K | ethereum | 31 | 15/31 (48%) | 100.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [alpaca-city](./alpaca-city/brief.md) | - | ethereum | 13 | 13/13 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [alphadex](./alphadex/brief.md) | $141.39K | moonriver | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [alphafi](./alphafi/brief.md) | $182.29M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [alphasec](./alphasec/brief.md) | $456.38K | klaytn | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ✅ active | - |
| [alphbanx](./alphbanx/brief.md) | $473.11K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [alphix](./alphix/brief.md) | $299.06K | base | 3 | 3/3 (100%) | 33.3% | 33.3% (Sherlock) | 2 | fresh | ❓ unknown | - |
| [alta-finance](./alta-finance/brief.md) | - | polygon | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [alto](./alto/brief.md) | $274.26K | ethereum | 16 | 16/16 (100%) | 53.3% | 33.3% (Spearbit) | 8 | fresh | ❓ unknown | - |
| [ambient](./ambient/brief.md) | $1.75M | 5 | 19 | 15/19 (79%) | 7.7% | 0.0% (-) | 2 | stale | ⚠️ declining | - |
| [ambire-wallet](./ambire-wallet/brief.md) | $9.00M | ethereum, optimism, scroll | 24 | 2/24 (8%) | - | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [amet-finance](./amet-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [amnis-finance](./amnis-finance/brief.md) | $3.67M | ethereum | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [ampleswap](./ampleswap/brief.md) | $14.97K | bsc | 24 | 19/24 (79%) | 27.8% | 0.0% (-) | 1 | stale | ⚠️ declining | - |
| [amulet](./amulet/brief.md) | $275.44K | ethereum, optimism | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ancient8](./ancient8/brief.md) | $170.25K | ethereum | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [anemoy-capital](./anemoy-capital/brief.md) | $869.88M | celo | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [angstrom](./angstrom/brief.md) | $2.97M | base, ethereum, sepolia | 37 | 14/37 (38%) | 20.0% | 20.0% (Spearbit) | 2 | aging | ⚠️ declining | - |
| [antarctic](./antarctic/brief.md) | $9.84M | arbitrum | 13 | 9/13 (69%) | 11.1% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [ante-finance](./ante-finance/brief.md) | $322.85K | 7 | 72 | 72/72 (100%) | 79.4% | 79.4% (Trail of Bits) | 3 | stale | ❓ unknown | - |
| [antfarm-finance](./antfarm-finance/brief.md) | $217.71K | arbitrum, ethereum, polygon | 11 | 11/11 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [anvil](./anvil/brief.md) | $9.64M | ethereum | 12 | 12/12 (100%) | 63.6% | 63.6% (OpenZeppelin, Trail of Bits) | 4 | fresh | ⚠️ declining | - |
| [ao-bridge](./ao-bridge/brief.md) | $40.19M | ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ⚠️ declining | - |
| [apollodao](./apollodao/brief.md) | $5.86K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [aptin-finance](./aptin-finance/brief.md) | $13.98M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [apy-finance](./apy-finance/brief.md) | $413.79K | ethereum | 5 | 5/5 (100%) | 75.0% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [aqua-protocol](./aqua-protocol/brief.md) | $112.27 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aquabank](./aquabank/brief.md) | $750.20K | avalanche | 108 | 9/108 (8%) | 0.0% | 0.0% (-) | 2 | fresh | ✅ active | - |
| [arbitrove](./arbitrove/brief.md) | $432.77K | arbitrum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [arbitrum-bridge](./arbitrum-bridge/brief.md) | $2579.90M | arbitrum | 1 | 1/1 (100%) | 0.0% | 0.0% (Trail of Bits) | 2 | aging | ❓ unknown | - |
| [arbitrum-exchange](./arbitrum-exchange/brief.md) | $11.64K | arbitrum | 136 | 6/136 (4%) | 50.0% | 0.0% (-) | 1 | stale | 💀 dead | - |
| [arbitrum-nova-bridge](./arbitrum-nova-bridge/brief.md) | $9.91M | arbitrum, ethereum | 56 | 48/56 (86%) | 73.2% | 73.2% (Code4rena, ConsenSys Diligence, Trail of Bits) | 15 | aging | ⚠️ declining | - |
| [arbswap](./arbswap/brief.md) | $199.10K | arbitrum | 20 | 20/20 (100%) | 25.0% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [arca-labs-arcoin](./arca-labs-arcoin/brief.md) | $451.94K | ethereum | 42 | 42/42 (100%) | 0.0% | 0.0% (Certora, ChainSecurity, Spearbit) | 7 | fresh | ❓ unknown | - |
| [arcade.xyz](./arcade.xyz/brief.md) | $4.75M | ethereum | 42 | 25/42 (60%) | 54.5% | 22.7% (Trail of Bits) | 10 | stale | 💀 dead | - |
| [arche](./arche/brief.md) | $10.55K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [arche-protocol](./arche-protocol/brief.md) | $5.43K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [archerswap](./archerswap/brief.md) | $45.08K | ethereum | 10 | 0/10 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [arenaswap](./arenaswap/brief.md) | $26.70K | bsc | 7 | 2/7 (29%) | 50.0% | 0.0% (-) | 1 | stale | ⚠️ declining | - |
| [argano](./argano/brief.md) | $3.98 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [aria-protocol](./aria-protocol/brief.md) | $0.00 | bsc, ethereum | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [arkis](./arkis/brief.md) | $70.51M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [arpa-staking](./arpa-staking/brief.md) | - | ethereum | 14 | 14/14 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [artemis-finance](./artemis-finance/brief.md) | $717.50K | ethereum, metis | 20 | 20/20 (100%) | 100.0% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [artura-finance](./artura-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aspida](./aspida/brief.md) | $1.82K | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 1 | stale | 💀 dead | - |
| [asseto-aoabt](./asseto-aoabt/brief.md) | $24.28M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [astake](./astake/brief.md) | $395.72K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [atlantis](./atlantis/brief.md) | $10.12K | sonic | 17 | 9/17 (53%) | 42.9% | 0.0% (-) | 1 | aging | 💀 dead | - |
| [atlantis-loans](./atlantis-loans/brief.md) | $42.00K | avalanche, bsc | 242 | 16/242 (7%) | 33.3% | 0.0% (-) | 1 | stale | 💀 dead | - |
| [atlas-usv](./atlas-usv/brief.md) | - | polygon | 20 | 20/20 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [atomic-green](./atomic-green/brief.md) | - | arbitrum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [atrium](./atrium/brief.md) | $343.83K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [augur](./augur/brief.md) | $1.26M | ethereum | 141 | 80/141 (57%) | 39.1% | 4.3% (ChainSecurity) | 4 | stale | ✅ active | - |
| [augury-finance](./augury-finance/brief.md) | $207.19K | polygon | 22 | 22/22 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aurigami](./aurigami/brief.md) | $772.29K | aurora, ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | - |
| [auro-finance](./auro-finance/brief.md) | $4.93K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [aurora-plus](./aurora-plus/brief.md) | $1.50M | aurora | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [autofarm](./autofarm/brief.md) | $5.19M | 13 | 397 | 14/397 (4%) | 0.0% | 0.0% (-) | 0 | unknown | 💀 dead | - |
| [autoshark](./autoshark/brief.md) | $127.76K | bsc | 35 | 35/35 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [avalaunch](./avalaunch/brief.md) | $6.16M | avalanche | 41 | 16/41 (39%) | - | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [avant-protocol](./avant-protocol/brief.md) | $129.03M | avalanche, ethereum, linea | 18 | 18/18 (100%) | 50.0% | 25.0% (Cyfrin) | 7 | fresh | ❓ unknown | - |
| [avantgarde](./avantgarde/brief.md) | $399.86K | ethereum | 78 | 78/78 (100%) | 21.2% | 21.2% (Certora, ChainSecurity, Spearbit) | 9 | fresh | ❓ unknown | - |
| [avely-finance](./avely-finance/brief.md) | $41.70K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [avnu](./avnu/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [avon-megavault](./avon-megavault/brief.md) | $31.95K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [axc-gift](./axc-gift/brief.md) | - | bsc | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [axelar-network](./axelar-network/brief.md) | $132.55M | ethereum, mode | 15 | 15/15 (100%) | 40.0% | 0.0% (-) | 15 | fresh | ❓ unknown | - |
| [aztec-connect](./aztec-connect/brief.md) | $0.00 | ethereum | 4 | 2/4 (50%) | 100.0% | 0.0% (-) | 1 | stale | 💀 dead | - |
| [b2-buzz](./b2-buzz/brief.md) | $167.99M | bsc, ethereum, polygon | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [babydoge-bridge](./babydoge-bridge/brief.md) | $447.93K | bsc | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [backbone-labs](./backbone-labs/brief.md) | $177.22K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [backedfi](./backedfi/brief.md) | $7.72M | ethereum | 5 | 2/5 (40%) | 100.0% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [baksdao](./baksdao/brief.md) | $181.00 | bsc | 5 | 2/5 (40%) | 100.0% | 0.0% (-) | 1 | stale | 💀 dead | - |
| [balancer](./balancer/brief.md) | $176.90M | 4 | 151 | 151/151 (100%) | 23.5% | 22.8% (Certora, OpenZeppelin, Spearbit, Trail of Bits) | 25 | fresh | ❓ unknown | - |
| [ball-exchange](./ball-exchange/brief.md) | $0.03 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [balmy](./balmy/brief.md) | $163.59K | ethereum, optimism, polygon | 134 | 134/134 (100%) | 2.8% | 0.0% (-) | 5 | stale | ❓ unknown | - |
| [bao-finance](./bao-finance/brief.md) | - | 4 | 490 | 490/490 (100%) | 1.6% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [baptswap](./baptswap/brief.md) | $4.89K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [baryon-network](./baryon-network/brief.md) | - | bsc | 21 | 21/21 (100%) | 9.5% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [base-bridge](./base-bridge/brief.md) | $2084.35M | base, ethereum | 56 | 56/56 (100%) | 4.3% | 2.1% (Code4rena) | 20 | fresh | ❓ unknown | - |
| [based-ai](./based-ai/brief.md) | - | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [based-finance](./based-finance/brief.md) | $114.00 | fantom | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | 💀 dead | - |
| [basemax](./basemax/brief.md) | $0.00 | base | 7 | 5/7 (71%) | 25.0% | 0.0% (-) | 1 | stale | 💀 dead | - |
| [baseswap](./baseswap/brief.md) | $492.33K | base | 31 | 31/31 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [basis-cash](./basis-cash/brief.md) | $245.60K | ethereum | 38 | 38/38 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bastion](./bastion/brief.md) | $750.81K | aurora | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bayswap](./bayswap/brief.md) | $9.55K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [beam-dex](./beam-dex/brief.md) | $663.54 | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [bearnfi](./bearnfi/brief.md) | $594.00K | bsc | 90 | 90/90 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [becoswap](./becoswap/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [beefy](./beefy/brief.md) | $107.66M | arbitrum, ethereum | 4 | 4/4 (100%) | 25.0% | 0.0% (-) | 3 | fresh | ❓ unknown | - |
| [belief-market](./belief-market/brief.md) | $395.30 | bsc | 2 | 1/2 (50%) | 100.0% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [benddao](./benddao/brief.md) | $5.76M | ethereum | 507 | 8/507 (2%) | - | 0.0% (-) | 0 | stale | 💀 dead | - |
| [benqi](./benqi/brief.md) | $237.08M | avalanche | 39 | 39/39 (100%) | 37.5% | 12.5% (Code4rena, Cyfrin) | 8 | aging | ❓ unknown | - |
| [bent-finance](./bent-finance/brief.md) | - | ethereum | 54 | 54/54 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [beraborrow](./beraborrow/brief.md) | $312.96K | berachain | 101 | 101/101 (100%) | 45.3% | 42.1% (Sherlock, Spearbit) | 13 | aging | ❓ unknown | - |
| [beradrome](./beradrome/brief.md) | $6.84M | berachain | 11 | 11/11 (100%) | 55.6% | 0.0% (-) | 2 | aging | ⚠️ declining | - |
| [berapaw](./berapaw/brief.md) | $213.34K | berachain | 22 | 22/22 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [beta-finance](./beta-finance/brief.md) | $537.52K | avalanche, bsc, ethereum | 170 | 170/170 (100%) | 4.9% | 4.9% (OpenZeppelin, Trail of Bits) | 4 | stale | ❓ unknown | - |
| [biconomy.com](./biconomy.com/brief.md) | $121.71M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [bido-finance](./bido-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bifi](./bifi/brief.md) | $5.86M | 4 | 224 | 36/224 (16%) | 80.0% | 0.0% (-) | 4 | stale | ✅ active | - |
| [bifrost-liquid-staking](./bifrost-liquid-staking/brief.md) | $14.00M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bigone](./bigone/brief.md) | $27.70M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bim](./bim/brief.md) | $232.34K | base | 11 | 11/11 (100%) | 12.5% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [bima-cdp](./bima-cdp/brief.md) | $6.21M | bsc, ethereum, sonic | 28 | 19/28 (68%) | 33.3% | 33.3% (Cyfrin, Spearbit) | 3 | aging | ✅ active | - |
| [binance-staked-eth](./binance-staked-eth/brief.md) | $5815.39M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [binance-staked-sol](./binance-staked-sol/brief.md) | $749.86M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [binaryx-platform](./binaryx-platform/brief.md) | $8.68M | polygon | 157 | 66/157 (42%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [binlayer](./binlayer/brief.md) | $355.57 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bitchill](./bitchill/brief.md) | $15.33K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [bitfi](./bitfi/brief.md) | $264.65M | base, bsc, ethereum | 5 | 5/5 (100%) | 100.0% | 100.0% (SlowMist) | 5 | fresh | ❓ unknown | - |
| [bitfinex](./bitfinex/brief.md) | $15957.93M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitgert](./bitgert/brief.md) | - | bsc | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitget](./bitget/brief.md) | $4911.78M | arbitrum | 23 | 23/23 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitkan](./bitkan/brief.md) | $35.90M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitlo](./bitlo/brief.md) | $12.39M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitmap-game](./bitmap-game/brief.md) | $36.15K | merlin | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | aging | 💀 dead | - |
| [bitmart](./bitmart/brief.md) | $11.38M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitmex](./bitmex/brief.md) | $937.85M | ethereum | 14 | 14/14 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitomato](./bitomato/brief.md) | $1.42K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitty](./bitty/brief.md) | $56.74 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitu-protocol](./bitu-protocol/brief.md) | $19.55M | bsc | 3 | 3/3 (100%) | 100.0% | 100.0% (SlowMist) | 2 | stale | ✅ active | - |
| [bitvenus](./bitvenus/brief.md) | $17.39M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bitway](./bitway/brief.md) | $60.61M | bsc | 8 | 7/8 (88%) | 66.7% | 0.0% (-) | 3 | fresh | ✅ active | - |
| [bitway-earn](./bitway-earn/brief.md) | $60.61M | bsc | 8 | 7/8 (88%) | 66.7% | 0.0% (-) | 3 | fresh | ✅ active | - |
| [bitzy](./bitzy/brief.md) | $21.60K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [blackwing](./blackwing/brief.md) | $768.96K | arbitrum, ethereum | 5 | 5/5 (100%) | 33.3% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [bladeswap](./bladeswap/brief.md) | $197.73K | blast | 44 | 44/44 (100%) | 4.8% | 0.0% (-) | 2 | unknown | ❓ unknown | - |
| [blend](./blend/brief.md) | $233.60M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [block-analitica](./block-analitica/brief.md) | $39.13M | 4 | 810 | 19/810 (2%) | 47.4% | 47.4% (ChainSecurity) | 6 | stale | ❓ unknown | - |
| [blue-protocol](./blue-protocol/brief.md) | - | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [blueberry](./blueberry/brief.md) | $257.42K | ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [bluefin](./bluefin/brief.md) | $26.03M | arbitrum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [blueshift](./blueshift/brief.md) | $3.31M | kava, polygon | 26 | 6/26 (23%) | 0.0% | 0.0% (-) | 0 | stale | ✅ active | - |
| [bnpl-pay](./bnpl-pay/brief.md) | $23.19K | ethereum | 3 | 1/3 (33%) | 100.0% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [bob-bridge](./bob-bridge/brief.md) | $2.34M | ethereum, linea, sepolia | 140 | 56/140 (40%) | 0.0% | 0.0% (-) | 0 | fresh | ⚠️ declining | - |
| [bob-fusion](./bob-fusion/brief.md) | $285.35K | ethereum | 35 | 35/35 (100%) | 19.2% | 7.7% (Code4rena) | 11 | fresh | ❓ unknown | - |
| [boba-bridge](./boba-bridge/brief.md) | $2.63M | ethereum | 67 | 55/67 (82%) | 45.3% | 0.0% (-) | 4 | stale | ⚠️ declining | - |
| [boltz](./boltz/brief.md) | $282.59K | arbitrum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bondappetit](./bondappetit/brief.md) | $0.00 | ethereum | 22 | 22/22 (100%) | 90.5% | 0.0% (-) | 2 | stale | 💀 dead | - |
| [bondlink-finance](./bondlink-finance/brief.md) | $151.99K | ethereum | 6 | 3/6 (50%) | 66.7% | 0.0% (-) | 1 | aging | ✅ active | - |
| [boneswap](./boneswap/brief.md) | $1.31K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bonsai-strike](./bonsai-strike/brief.md) | $6.41K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bonzo-finance](./bonzo-finance/brief.md) | $20.97M | ethereum | 33 | 0/33 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [boringdao](./boringdao/brief.md) | $269.85K | 13 | 603 | 127/603 (21%) | 0.9% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [boros](./boros/brief.md) | $8.38M | arbitrum | 852 | 21/852 (2%) | 75.0% | 75.0% (ChainSecurity, Spearbit) | 5 | fresh | ❓ unknown | - |
| [boson-protocol](./boson-protocol/brief.md) | $869.05K | ethereum, optimism | 29 | 29/29 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [botto](./botto/brief.md) | $2.83M | base, ethereum | 9 | 4/9 (44%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bounce-finance](./bounce-finance/brief.md) | - | ethereum | 19 | 19/19 (100%) | 18.2% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [bounce.tech](./bounce.tech/brief.md) | $648.93K | base | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [bouncebit-cedefi-yield](./bouncebit-cedefi-yield/brief.md) | $284.86M | ethereum | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bouncebit-pre-launch-farm](./bouncebit-pre-launch-farm/brief.md) | $0.12 | ethereum | 144 | 2/144 (1%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bouncebit-prime](./bouncebit-prime/brief.md) | $11.44M | bsc, ethereum | 16 | 7/16 (44%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bracket-protocol](./bracket-protocol/brief.md) | $2.92M | arbitrum, ethereum | 51 | 41/51 (80%) | 24.4% | 0.0% (-) | 4 | fresh | ❓ unknown | - |
| [brahma-vaults-(sunset)](./brahma-vaults-(sunset)/brief.md) | $22.32K | blast, ethereum, polygon | 33 | 14/33 (42%) | 92.9% | 85.7% (Code4rena, Spearbit) | 12 | aging | ❓ unknown | - |
| [brasa-finance](./brasa-finance/brief.md) | $936.82K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [brickken](./brickken/brief.md) | $42.16M | 5 | 36 | 28/36 (78%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [bridge-mutual](./bridge-mutual/brief.md) | $77.20K | bsc, ethereum, polygon | 36 | 9/36 (25%) | 22.2% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [bridgers](./bridgers/brief.md) | $1.94M | 16 | 17 | 2/17 (12%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bright-union](./bright-union/brief.md) | $0.00 | ethereum | 3 | 3/3 (100%) | 100.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [broswap](./broswap/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [brotocol](./brotocol/brief.md) | $707.39K | 8 | 53 | 26/53 (49%) | 15.4% | 0.0% (-) | 6 | fresh | ❓ unknown | - |
| [brownfi](./brownfi/brief.md) | $154.06K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bscstation](./bscstation/brief.md) | $1.50K | bsc | 167 | 15/167 (9%) | 13.3% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [bscswap](./bscswap/brief.md) | $4.16M | bsc | 16 | 8/16 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [btcd](./btcd/brief.md) | $1.13M | arbitrum, ethereum | 83 | 83/83 (100%) | 6.9% | 0.0% (-) | 3 | fresh | ❓ unknown | - |
| [btcfi](./btcfi/brief.md) | $6.99M | base | 10 | 0/10 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [btcst](./btcst/brief.md) | $824.76K | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [btse](./btse/brief.md) | $1.17M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bucket-protocol](./bucket-protocol/brief.md) | $56.92M | ethereum | 7 | 0/7 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [buffaloswap](./buffaloswap/brief.md) | $13.60K | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [buffer-finance](./buffer-finance/brief.md) | $178.15 | arbitrum | 14 | 9/14 (64%) | 22.2% | 22.2% (Sherlock) | 1 | stale | ❓ unknown | - |
| [bulbaswap](./bulbaswap/brief.md) | $7.89M | ethereum | 13 | 0/13 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bundie](./bundie/brief.md) | $41.38 | 5 | 84 | 15/84 (18%) | 57.1% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [bundles](./bundles/brief.md) | $583.10K | ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bunicorn](./bunicorn/brief.md) | - | bsc | 40 | 40/40 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [bunni](./bunni/brief.md) | $325.90K | base, bsc, ethereum | 24 | 24/24 (100%) | 45.8% | 45.8% (Cyfrin, Trail of Bits) | 3 | aging | ❓ unknown | - |
| [bunny](./bunny/brief.md) | $2.92M | bsc | 142 | 109/142 (77%) | 6.5% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [bunnypark](./bunnypark/brief.md) | $0.46 | bsc | 97 | 3/97 (3%) | 33.3% | 33.3% (SlowMist) | 2 | stale | ❓ unknown | - |
| [burgerswap](./burgerswap/brief.md) | $142.21K | bsc | 185 | 52/185 (28%) | 27.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [burve](./burve/brief.md) | $32.27K | berachain | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [burve-protocol](./burve-protocol/brief.md) | $10.50K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [butter-network](./butter-network/brief.md) | $1.32M | 11 | 12 | 8/12 (67%) | 100.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [buttonwood](./buttonwood/brief.md) | $300.03K | base, ethereum | 13 | 9/13 (69%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [buzz-farming](./buzz-farming/brief.md) | $188.35M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [bydfi](./bydfi/brief.md) | $72.15M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [byte-exchange](./byte-exchange/brief.md) | $33.84M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [c14](./c14/brief.md) | $2.57K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cache.gold](./cache.gold/brief.md) | $515.63K | ethereum | 8 | 1/8 (13%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [caddy-finance](./caddy-finance/brief.md) | $164.19 | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [camelot](./camelot/brief.md) | $22.48M | arbitrum | 100 | 37/100 (37%) | 8.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [cana-holdings-california-carbon-credits](./cana-holdings-california-carbon-credits/brief.md) | $889.69K | ethereum | 2 | 2/2 (100%) | 100.0% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [canopy](./canopy/brief.md) | $803.24K | ethereum | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [canto-lending](./canto-lending/brief.md) | $3.03M | canto, ethereum | 2 | 1/2 (50%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cap](./cap/brief.md) | $305.97M | ethereum | 131 | 131/131 (100%) | 6.5% | 5.6% (Sherlock, Spearbit, Trail of Bits) | 6 | fresh | ❓ unknown | - |
| [cap-finance](./cap-finance/brief.md) | $154.61K | arbitrum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [capital-dao](./capital-dao/brief.md) | - | ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [capx-ai](./capx-ai/brief.md) | $2.22M | bsc | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [capybara-exchange](./capybara-exchange/brief.md) | $171.29K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [carbon-defi](./carbon-defi/brief.md) | $2.19M | 5 | 141 | 35/141 (25%) | 55.9% | 26.5% (ChainSecurity) | 4 | stale | ❓ unknown | - |
| [carina](./carina/brief.md) | - | sei | 2 | 2/2 (100%) | 100.0% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [carrot](./carrot/brief.md) | $288.09K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cate-ventures](./cate-ventures/brief.md) | - | bsc | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [catsluck](./catsluck/brief.md) | $2.96K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cavalre](./cavalre/brief.md) | $10.04K | avalanche | 19 | 1/19 (5%) | 100.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [cbridge](./cbridge/brief.md) | $12.88M | 20 | 212 | 156/212 (74%) | 25.8% | 24.7% (SlowMist) | 7 | stale | ❓ unknown | - |
| [cega](./cega/brief.md) | $750.96K | arbitrum, ethereum | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cellana-finance](./cellana-finance/brief.md) | $472.66K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cells-finance](./cells-finance/brief.md) | $0.00 | bsc | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [cex.io](./cex.io/brief.md) | $6.56M | bsc, ethereum, polygon | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [cgo-finance](./cgo-finance/brief.md) | $893.04K | cronos | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [chadfinance](./chadfinance/brief.md) | $74.60 | bsc | 4 | 3/4 (75%) | 66.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [chain-fusion](./chain-fusion/brief.md) | $17.51M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [chainflip](./chainflip/brief.md) | $33.41M | arbitrum, ethereum | 12 | 11/12 (92%) | 27.3% | 27.3% (Trail of Bits) | 2 | stale | ❓ unknown | - |
| [chainge-finance](./chainge-finance/brief.md) | $10.29M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [chaingpt](./chaingpt/brief.md) | $1.85M | 6 | 82 | 7/82 (9%) | 16.7% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [chainlink](./chainlink/brief.md) | $1973.50M | 18 | 2191 | 72/2191 (3%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [chainport](./chainport/brief.md) | $597.16K | bsc, ethereum, polygon | 11 | 11/11 (100%) | 44.4% | 44.4% (Trail of Bits) | 1 | stale | ❓ unknown | - |
| [champion-finance](./champion-finance/brief.md) | $24.03 | avalanche | 22 | 7/22 (32%) | 33.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [charm-finance](./charm-finance/brief.md) | $2.27M | 6 | 12 | 5/12 (42%) | 60.0% | 60.0% (Code4rena, Spearbit) | 4 | aging | ❓ unknown | - |
| [chat3](./chat3/brief.md) | $4.83K | mantle | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [chateau](./chateau/brief.md) | $1.03M | hyperliquid, plasma | 31 | 4/31 (13%) | 25.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [chedda-finance](./chedda-finance/brief.md) | $7.75K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cherrylend](./cherrylend/brief.md) | $5.78K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [chewyswap](./chewyswap/brief.md) | $8.18K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [chfry-finance](./chfry-finance/brief.md) | $18.68K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [chi-protocol](./chi-protocol/brief.md) | $7.42K | ethereum | 49 | 40/49 (82%) | 5.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [chiliswap](./chiliswap/brief.md) | $540.54 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [chimpx-ai](./chimpx-ai/brief.md) | $118.14K | linea | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [choice-exchange](./choice-exchange/brief.md) | $276.04K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [chromatic-protocol](./chromatic-protocol/brief.md) | $975.53 | arbitrum | 13 | 10/13 (77%) | 60.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [cian-protocol](./cian-protocol/brief.md) | $265.57M | 7 | 117 | 117/117 (100%) | 33.0% | 0.0% (-) | 6 | aging | ❓ unknown | - |
| [circle](./circle/brief.md) | $3215.64M | bsc, ethereum | 54 | 54/54 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [circuit](./circuit/brief.md) | $209.79K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [citadelswap](./citadelswap/brief.md) | $3.77K | base | 5 | 3/5 (60%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [citrea-bridge](./citrea-bridge/brief.md) | $4.64M | ethereum | 2 | 1/2 (50%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [citrea-staking](./citrea-staking/brief.md) | - | ethereum | 18 | 18/18 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [clarity](./clarity/brief.md) | $65.58K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [clave](./clave/brief.md) | $7.13K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [clearpool](./clearpool/brief.md) | $44.43M | 7 | 55 | 32/55 (58%) | 64.0% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [clever](./clever/brief.md) | $3.51M | ethereum | 417 | 23/417 (6%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [clipper](./clipper/brief.md) | $685.74K | 5 | 35 | 35/35 (100%) | 8.6% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [clober](./clober/brief.md) | $483.40K | base | 13 | 9/13 (69%) | 100.0% | 0.0% (-) | 7 | fresh | ❓ unknown | - |
| [clovis](./clovis/brief.md) | $233.44K | ethereum, optimism, sei | 5 | 5/5 (100%) | 33.3% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [coffer-network](./coffer-network/brief.md) | $348.48K | bsc | 2 | 2/2 (100%) | 50.0% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [cog](./cog/brief.md) | $173.64K | scroll | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [coin8](./coin8/brief.md) | $44.03M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [coin98](./coin98/brief.md) | - | bsc | 21 | 21/21 (100%) | 14.3% | 9.5% (SlowMist) | 3 | fresh | ❓ unknown | - |
| [coincollect](./coincollect/brief.md) | - | polygon | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [coinsquare](./coinsquare/brief.md) | $10.32M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [coinstore](./coinstore/brief.md) | $54.14M | bsc | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [coinswap-space](./coinswap-space/brief.md) | $232.44K | bsc | 11 | 11/11 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [coinw](./coinw/brief.md) | $98.68K | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [colafactory](./colafactory/brief.md) | $678.81 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [colend-protocol](./colend-protocol/brief.md) | $2.88M | ethereum | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [collection.xyz](./collection.xyz/brief.md) | $652.52 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [colony](./colony/brief.md) | $192.83K | avalanche | 28 | 28/28 (100%) | 13.6% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [commodo](./commodo/brief.md) | $5.27K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [component](./component/brief.md) | $161.32K | bsc, ethereum | 68 | 68/68 (100%) | 1.6% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [compound-finance](./compound-finance/brief.md) | $2244.36M | 9 | 777 | 777/777 (100%) | 7.6% | 7.6% (OpenZeppelin, Trail of Bits) | 10 | aging | ❓ unknown | - |
| [concentrator](./concentrator/brief.md) | $56.50M | ethereum | 539 | 130/539 (24%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [concrete](./concrete/brief.md) | $757.97M | ethereum | 3 | 2/3 (67%) | 100.0% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [conduit-bridge](./conduit-bridge/brief.md) | $662.84K | arbitrum, ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [conic-finance](./conic-finance/brief.md) | $51.24K | ethereum | 16 | 16/16 (100%) | 35.7% | 28.6% (ChainSecurity, MixBytes) | 3 | stale | ❓ unknown | - |
| [connext](./connext/brief.md) | $20.79M | 10 | 187 | 187/187 (100%) | 23.2% | 23.2% (Code4rena, Spearbit) | 4 | stale | ❓ unknown | - |
| [contango](./contango/brief.md) | $94.91M | arbitrum, ethereum | 42 | 42/42 (100%) | 57.5% | 0.0% (-) | 7 | aging | ❓ unknown | - |
| [convergence](./convergence/brief.md) | $319.32K | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [convergence-fi](./convergence-fi/brief.md) | $526.54K | ethereum | 51 | 51/51 (100%) | 46.9% | 28.6% (Sherlock) | 2 | stale | ❓ unknown | - |
| [conveyor](./conveyor/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cook-finance](./cook-finance/brief.md) | - | avalanche, bsc, ethereum | 70 | 70/70 (100%) | 6.3% | 4.8% (ChainSecurity, Spearbit) | 14 | fresh | ❓ unknown | - |
| [cooler-loans](./cooler-loans/brief.md) | $440.17M | 5 | 175 | 175/175 (100%) | 33.3% | 15.1% (Code4rena, Sherlock) | 22 | fresh | ❓ unknown | - |
| [copump](./copump/brief.md) | $1.57K | celo, linea, sonic | 4 | 4/4 (100%) | 100.0% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [core-bridge](./core-bridge/brief.md) | $3.74M | 6 | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [core-markets](./core-markets/brief.md) | $266.49K | blast | 24 | 24/24 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [corepound](./corepound/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [corn-kernels](./corn-kernels/brief.md) | $283.45K | ethereum | 229 | 229/229 (100%) | 3.6% | 3.6% (Spearbit) | 5 | aging | ❓ unknown | - |
| [coti-treasury](./coti-treasury/brief.md) | $6.59M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cougarswap](./cougarswap/brief.md) | $50.52K | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cove-finance](./cove-finance/brief.md) | $257.69K | base, ethereum | 42 | 42/42 (100%) | 63.9% | 5.6% (Trail of Bits) | 9 | fresh | ❓ unknown | - |
| [cover-protocol](./cover-protocol/brief.md) | $809.24K | ethereum | 156 | 156/156 (100%) | 9.9% | 1.3% (MixBytes) | 7 | stale | ❓ unknown | - |
| [cozy-finance](./cozy-finance/brief.md) | $1.97M | ethereum, optimism | 58 | 0/58 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [crabada](./crabada/brief.md) | $0.00 | avalanche | 59 | 2/59 (3%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cream-finance](./cream-finance/brief.md) | $1.25M | 4 | 69 | 42/69 (61%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [credbull](./credbull/brief.md) | $10.94M | arbitrum, polygon | 41 | 39/41 (95%) | 2.6% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [credit-coop](./credit-coop/brief.md) | $4.63M | base, ethereum | 23 | 8/23 (35%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [cron-finance](./cron-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cronos-zkevm-bridge](./cronos-zkevm-bridge/brief.md) | $17.42M | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cropper](./cropper/brief.md) | $111.97K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [crown-finance](./crown-finance/brief.md) | $0.00 | cronos | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cryptex-finance](./cryptex-finance/brief.md) | $493.74K | arbitrum, ethereum | 95 | 68/95 (72%) | 12.5% | 1.6% (Spearbit) | 8 | aging | ❓ unknown | - |
| [crypto.com-liquid-staking](./crypto.com-liquid-staking/brief.md) | $19.48M | cronos | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [crystl-finance](./crystl-finance/brief.md) | $165.98K | polygon | 13 | 13/13 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [csigma-finance](./csigma-finance/brief.md) | $12.66M | arbitrum, base, ethereum | 60 | 48/60 (80%) | 10.4% | 0.0% (-) | 3 | aging | ❓ unknown | - |
| [cub-finance](./cub-finance/brief.md) | $182.45K | bsc | 43 | 43/43 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [curve-finance](./curve-finance/brief.md) | $1618.70M | 15 | 241 | 241/241 (100%) | 9.1% | 6.4% (ChainSecurity, Trail of Bits) | 13 | fresh | ❓ unknown | - |
| [cvault-finance](./cvault-finance/brief.md) | $4.20M | ethereum | 38 | 38/38 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [cvi-finance](./cvi-finance/brief.md) | $129.17K | arbitrum, ethereum, polygon | 84 | 23/84 (27%) | 20.0% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [cyber](./cyber/brief.md) | $361.71K | base, ethereum, optimism | 31 | 31/31 (100%) | 5.0% | 5.0% (Code4rena) | 16 | fresh | ❓ unknown | - |
| [cyberperp](./cyberperp/brief.md) | $23.06K | arbitrum, ethereum | 5 | 0/5 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cyborgswap](./cyborgswap/brief.md) | $26.94K | cronos | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cybro](./cybro/brief.md) | $54.31K | 6 | 664 | 23/664 (3%) | 66.7% | 16.7% (Code4rena) | 12 | fresh | ❓ unknown | - |
| [cyclo](./cyclo/brief.md) | $169.82K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [cyclone](./cyclone/brief.md) | $1.12M | bsc, ethereum, polygon | 57 | 23/57 (40%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [cytonic-airdrop-campaign](./cytonic-airdrop-campaign/brief.md) | $168.99K | ethereum, manta | 20 | 17/20 (85%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [cytoswap](./cytoswap/brief.md) | $117.16K | ethereum | 22 | 22/22 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [d2-finance](./d2-finance/brief.md) | $27.35M | arbitrum, base, berachain | 390 | 45/390 (12%) | 47.7% | 11.4% (Cyfrin) | 2 | aging | ❓ unknown | - |
| [dackieswap](./dackieswap/brief.md) | $48.85K | 8 | 113 | 47/113 (42%) | 5.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [dango](./dango/brief.md) | $2.25M | ethereum | 3 | 3/3 (100%) | - | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [dao-maker](./dao-maker/brief.md) | $1.35M | bsc, ethereum | 17 | 3/17 (18%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [darkcrypto](./darkcrypto/brief.md) | $13.00K | cronos | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [darkness](./darkness/brief.md) | $7.30K | cronos | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [datamine-network](./datamine-network/brief.md) | - | arbitrum, ethereum | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ddex](./ddex/brief.md) | $507.39K | ethereum | 17 | 17/17 (100%) | 37.5% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [debridge](./debridge/brief.md) | $2.25M | 11 | 239 | 122/239 (51%) | 22.8% | 0.0% (-) | 13 | aging | ❓ unknown | - |
| [decentralized-euro](./decentralized-euro/brief.md) | $1.78M | 4 | 111 | 37/111 (33%) | 29.7% | 29.7% (ChainSecurity) | 2 | aging | ❓ unknown | - |
| [decibel](./decibel/brief.md) | $28.77M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [deepbook](./deepbook/brief.md) | $11.80M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [deeplock](./deeplock/brief.md) | $1.79M | bsc | 42 | 15/42 (36%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [defi-franc](./defi-franc/brief.md) | $191.96K | ethereum | 23 | 23/23 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [defi-kingdoms](./defi-kingdoms/brief.md) | $182.26K | harmony, klaytn, metis | 352 | 3/352 (1%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [defi-swap](./defi-swap/brief.md) | $834.68K | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [defibox](./defibox/brief.md) | $486.20K | bsc | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [defichain-dex](./defichain-dex/brief.md) | $2.01M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [defil](./defil/brief.md) | $1.80M | ethereum | 23 | 9/23 (39%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [definix](./definix/brief.md) | $374.67K | bsc | 8 | 8/8 (100%) | 85.7% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [defiplaza](./defiplaza/brief.md) | $105.36K | ethereum | 18 | 3/18 (17%) | 66.7% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [defirex](./defirex/brief.md) | $4.56K | bsc, ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [defituna](./defituna/brief.md) | $3.79M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [defive](./defive/brief.md) | $310.75K | sonic | 17 | 17/17 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [defrost](./defrost/brief.md) | $81.45K | avalanche | 40 | 9/40 (23%) | 11.1% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [degate](./degate/brief.md) | $159.34 | ethereum | 2 | 1/2 (50%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dehive](./dehive/brief.md) | $110.69K | 4 | 38 | 6/38 (16%) | 25.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [delta-financial](./delta-financial/brief.md) | $7.50M | ethereum | 22 | 8/22 (36%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [deltaprime](./deltaprime/brief.md) | $3.35M | arbitrum, avalanche | 933 | 104/933 (11%) | 26.2% | 0.0% (-) | 8 | fresh | ❓ unknown | - |
| [deltatrade](./deltatrade/brief.md) | $64.37K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [delv](./delv/brief.md) | $749.24K | ethereum, gnosis | 38 | 38/38 (100%) | 94.7% | 94.7% (Certora, Spearbit) | 6 | stale | ❓ unknown | - |
| [demeter](./demeter/brief.md) | $285.34K | bsc, heco | 72 | 11/72 (15%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [denet-file-token](./denet-file-token/brief.md) | $0.00 | polygon | 28 | 7/28 (25%) | 14.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [depth](./depth/brief.md) | $1.14M | bsc, heco | 5 | 3/5 (60%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [deq](./deq/brief.md) | - | base, ethereum | 8 | 8/8 (100%) | 75.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [deri](./deri/brief.md) | $5.81M | 11 | 1050 | 28/1050 (3%) | 23.5% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [derivadex](./derivadex/brief.md) | $608.33K | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [desk](./desk/brief.md) | $246.37K | arbitrum | 94 | 94/94 (100%) | 41.6% | 39.3% (Spearbit) | 5 | stale | ❓ unknown | - |
| [desyn-protocol](./desyn-protocol/brief.md) | $1.30M | ethereum, mode | 22 | 12/22 (55%) | 100.0% | 100.0% (SlowMist) | 15 | fresh | ❓ unknown | - |
| [dev-protocol](./dev-protocol/brief.md) | $0.00 | ethereum | 56 | 11/56 (20%) | 27.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [devil-finance](./devil-finance/brief.md) | $0.00 | fantom | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [devve](./devve/brief.md) | - | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dexalot](./dexalot/brief.md) | $8.06M | 6 | 425 | 16/425 (4%) | - | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dexible-v2](./dexible-v2/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dexilla](./dexilla/brief.md) | $114.02 | arbitrum, optimism | 6 | 4/6 (67%) | 25.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [dexioprotocol](./dexioprotocol/brief.md) | $0.00 | kava, polygon | 2 | 1/2 (50%) | 100.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [dexlyn-labs](./dexlyn-labs/brief.md) | $47.16K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [dflow](./dflow/brief.md) | $1.43M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dforce](./dforce/brief.md) | $12.60M | 8 | 846 | 33/846 (4%) | 80.0% | 80.0% (ConsenSys Diligence, Trail of Bits) | 3 | stale | ❓ unknown | - |
| [dfs-network](./dfs-network/brief.md) | $96.03K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dfx-finance](./dfx-finance/brief.md) | $106.81K | 4 | 45 | 14/45 (31%) | 8.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [dfyn-network](./dfyn-network/brief.md) | $333.05K | arbitrum, polygon | 22 | 22/22 (100%) | 5.6% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [diamondswap](./diamondswap/brief.md) | $132.54K | base | 21 | 21/21 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dinari](./dinari/brief.md) | $0.00 | 5 | 94 | 66/94 (70%) | 10.2% | 6.1% (Sherlock) | 3 | aging | ❓ unknown | - |
| [dinosaur-eggs](./dinosaur-eggs/brief.md) | $580.45K | bsc | 21 | 21/21 (100%) | 9.5% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [dipcoin](./dipcoin/brief.md) | $4.35M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ditto](./ditto/brief.md) | $29.78K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [djed-stablecoin](./djed-stablecoin/brief.md) | $4.59M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dnax](./dnax/brief.md) | $3.33M | bsc | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dodo](./dodo/brief.md) | $10.93M | 10 | 1329 | 74/1329 (6%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dogeclaw](./dogeclaw/brief.md) | $11.48 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [doma-dex-v3](./doma-dex-v3/brief.md) | $650.70K | avalanche, base, ethereum | 13 | 13/13 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [domination-finance](./domination-finance/brief.md) | $1.21M | base, boba, polygon | 48 | 46/48 (96%) | 13.3% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [donut](./donut/brief.md) | - | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dooar](./dooar/brief.md) | $4.62M | bsc, ethereum, polygon | 76 | 2/76 (3%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dopple-finance](./dopple-finance/brief.md) | $162.74K | bsc | 44 | 44/44 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [doppler-finance](./doppler-finance/brief.md) | $95.55M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [dot-dot-finance](./dot-dot-finance/brief.md) | $2.70K | bsc | 22 | 17/22 (77%) | 23.5% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [doubler](./doubler/brief.md) | $102.63K | manta | 2 | 1/2 (50%) | 0.0% | 0.0% (SlowMist) | 1 | stale | ❓ unknown | - |
| [dpex](./dpex/brief.md) | $142.05 | polygon | 37 | 8/37 (22%) | 25.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [drachma-exchange](./drachma-exchange/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [drift](./drift/brief.md) | $205.38M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [drops](./drops/brief.md) | $2.70M | ethereum | 56 | 34/56 (61%) | 21.9% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [dsf.finance](./dsf.finance/brief.md) | $452.05K | ethereum | 38 | 37/38 (97%) | 2.8% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [dsu-money](./dsu-money/brief.md) | $469.29K | 4 | 97 | 97/97 (100%) | 6.8% | 6.8% (OpenZeppelin) | 2 | stale | ❓ unknown | - |
| [dtrinity](./dtrinity/brief.md) | $2.25M | ethereum, fraxtal, sonic | 212 | 91/212 (43%) | 13.9% | 0.0% (-) | 1 | unknown | ❓ unknown | - |
| [dtx](./dtx/brief.md) | $5.18K | blast | 50 | 0/50 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dungeonswap](./dungeonswap/brief.md) | $26.92K | bsc | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dxsale](./dxsale/brief.md) | $15.24M | 10 | 349 | 10/349 (3%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dydx](./dydx/brief.md) | $130.45M | ethereum | 19 | 19/19 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [dyorswap](./dyorswap/brief.md) | $1.73M | 7 | 91 | 6/91 (7%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [dyson-finance](./dyson-finance/brief.md) | $78.87K | blast, polygon-zkevm | 5 | 4/5 (80%) | 75.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [earnium](./earnium/brief.md) | $30.11K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [earnmos](./earnmos/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [easedefi.org](./easedefi.org/brief.md) | $3.46M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [eclipse-bridge](./eclipse-bridge/brief.md) | $4.75M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [eclipsefi](./eclipsefi/brief.md) | $6.54K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [edel](./edel/brief.md) | $1.74M | base, ethereum | 53 | 53/53 (100%) | 8.0% | 8.0% (ChainSecurity, OpenZeppelin, Spearbit, Trail of Bits) | 16 | fresh | ❓ unknown | - |
| [edgex](./edgex/brief.md) | $94.54M | arbitrum, ethereum | 10 | 10/10 (100%) | 66.7% | 50.0% (SlowMist) | 4 | fresh | ❓ unknown | - |
| [egas-swap](./egas-swap/brief.md) | $173.31K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [eggs-finance](./eggs-finance/brief.md) | - | sonic | 4 | 4/4 (100%) | 25.0% | 25.0% (Spearbit) | 1 | aging | ❓ unknown | - |
| [eigencloud](./eigencloud/brief.md) | $4439.61M | base, ethereum, sepolia | 782 | 17/782 (2%) | - | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [ekubo](./ekubo/brief.md) | $20.68M | ethereum, sepolia | 31 | 9/31 (29%) | 50.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [elara](./elara/brief.md) | $12.07K | ethereum | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [electra](./electra/brief.md) | $81.74K | ethereum | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [elephant-money](./elephant-money/brief.md) | $70.40M | bsc | 266 | 74/266 (28%) | 5.5% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [elfi-protocol](./elfi-protocol/brief.md) | $2.69M | arbitrum, base | 2472 | 2/2472 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [elk](./elk/brief.md) | $157.26K | 10 | 41 | 41/41 (100%) | 8.8% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [ellipsis-finance](./ellipsis-finance/brief.md) | $1.07M | bsc | 20 | 15/20 (75%) | 28.6% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [elyfi](./elyfi/brief.md) | $2.12M | bsc, ethereum, klaytn | 18 | 15/18 (83%) | 6.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [emiswap](./emiswap/brief.md) | $33.55K | aurora, ethereum, polygon | 32 | 5/32 (16%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [empmoney](./empmoney/brief.md) | $182.08K | bsc | 96 | 9/96 (9%) | 88.9% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [emu](./emu/brief.md) | $2.34 | bsc | 2 | 2/2 (100%) | 50.0% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [enclabs](./enclabs/brief.md) | $132.47K | sonic | 34 | 34/34 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [endur](./endur/brief.md) | $6.76M | ethereum | 24 | 0/24 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [enjoyoors](./enjoyoors/brief.md) | $11.26K | ethereum | 3 | 3/3 (100%) | 66.7% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [enki-protocol](./enki-protocol/brief.md) | $235.21K | ethereum, metis | 14 | 14/14 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [enosys](./enosys/brief.md) | $14.55M | ethereum | 2 | 2/2 (100%) | 50.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [ensuro](./ensuro/brief.md) | $1.10M | ethereum, polygon | 139 | 136/139 (98%) | 3.0% | 1.5% (SlowMist) | 3 | fresh | ❓ unknown | - |
| [enzo-finance](./enzo-finance/brief.md) | $21.81K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [enzyme-finance](./enzyme-finance/brief.md) | $75.03M | ethereum | 34 | 34/34 (100%) | 11.8% | 11.8% (ConsenSys Diligence, OpenZeppelin) | 3 | fresh | ❓ unknown | - |
| [equalizer](./equalizer/brief.md) | $741.14K | base, fantom, sonic | 226 | 52/226 (23%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [equilibre](./equilibre/brief.md) | $65.97K | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [equilibria](./equilibria/brief.md) | $12.94M | 10 | 226 | 198/226 (88%) | 35.2% | 0.0% (-) | 5 | aging | ❓ unknown | - |
| [equito-finance](./equito-finance/brief.md) | $7.53 | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [eralend](./eralend/brief.md) | $72.91 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [eth-strategy](./eth-strategy/brief.md) | $3.88M | ethereum | 46 | 38/46 (83%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [ethena](./ethena/brief.md) | $4826.79M | berachain, ethereum, mantle | 26 | 26/26 (100%) | 38.9% | 22.2% (Code4rena, Spearbit) | 11 | aging | ❓ unknown | - |
| [ethereal-dex](./ethereal-dex/brief.md) | $23.59M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ethereal-season-zero](./ethereal-season-zero/brief.md) | $2.44M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [etherex](./etherex/brief.md) | $1.36M | linea | 69 | 52/69 (75%) | 48.9% | 48.9% (Code4rena, ConsenSys Diligence, Spearbit) | 3 | fresh | ❓ unknown | - |
| [etherflip](./etherflip/brief.md) | $1.24M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [etherfuse](./etherfuse/brief.md) | $1.19M | base, polygon | 76 | 69/76 (91%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [ethervista](./ethervista/brief.md) | $457.74K | ethereum | 15 | 15/15 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ethichub](./ethichub/brief.md) | $2.53M | celo, ethereum, gnosis | 56 | 43/56 (77%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ethos](./ethos/brief.md) | $1.34M | base | 17 | 10/17 (59%) | 28.6% | 28.6% (Sherlock) | 1 | aging | ❓ unknown | - |
| [etmc](./etmc/brief.md) | $6.44K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [euclid-finance](./euclid-finance/brief.md) | $186.91K | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [euler](./euler/brief.md) | $1573.69M | 5 | 109 | 109/109 (100%) | 50.5% | 35.2% (Certora, ChainSecurity, Cyfrin, MixBytes, OpenZeppelin, Spearbit, Trail of Bits) | 66 | fresh | ❓ unknown | - |
| [eventum-bridge](./eventum-bridge/brief.md) | $2.52M | arbitrum, ethereum | 42 | 33/42 (79%) | 3.4% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [everrise](./everrise/brief.md) | $596.68K | 5 | 186 | 69/186 (37%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [eversol](./eversol/brief.md) | $10.86K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [everything](./everything/brief.md) | $1.63M | arbitrum | 8 | 4/8 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [evolve](./evolve/brief.md) | $554.15 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [evoq-finance](./evoq-finance/brief.md) | $268.47 | bsc | 16 | 16/16 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [exactly](./exactly/brief.md) | $5.10M | base, ethereum, optimism | 370 | 19/370 (5%) | 84.6% | 7.7% (Sherlock) | 25 | fresh | ❓ unknown | - |
| [exmo](./exmo/brief.md) | $1.63M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [exponent](./exponent/brief.md) | $91.06M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [exsat-staking-btc](./exsat-staking-btc/brief.md) | $134.83M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [extra-finance](./extra-finance/brief.md) | $28.38M | base, berachain, optimism | 261 | 10/261 (4%) | 28.6% | 14.3% (Sherlock) | 2 | fresh | ❓ unknown | - |
| [ezmanager](./ezmanager/brief.md) | $340.17K | 5 | 305 | 12/305 (4%) | 81.8% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [fairfi](./fairfi/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [falcon-finance](./falcon-finance/brief.md) | $1254.79M | bsc, ethereum | 34 | 34/34 (100%) | 24.2% | 0.0% (-) | 3 | fresh | ❓ unknown | - |
| [farm-hero](./farm-hero/brief.md) | $4.98K | bsc, polygon | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [feather](./feather/brief.md) | $16.94M | celo, klaytn, sei | 10 | 9/10 (90%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [felix](./felix/brief.md) | $109.60M | ethereum, hyperliquid | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [ferro](./ferro/brief.md) | $4.83M | cronos | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [fiamma](./fiamma/brief.md) | $1.15M | 8 | 64 | 45/64 (70%) | 7.1% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [filet-finance](./filet-finance/brief.md) | $1.03M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [filfi](./filfi/brief.md) | $117.51K | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [filliquid](./filliquid/brief.md) | $197.04K | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [finnexus](./finnexus/brief.md) | $231.75K | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [fira](./fira/brief.md) | $855.62M | ethereum | 93 | 93/93 (100%) | 13.3% | 12.0% (Sherlock, Spearbit) | 3 | fresh | ❓ unknown | - |
| [firebird](./firebird/brief.md) | $17.52K | polygon | 24 | 20/24 (83%) | 11.1% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [firebot](./firebot/brief.md) | $2.36M | polygon | 42 | 26/42 (62%) | 4.2% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [firelight](./firelight/brief.md) | $62.64M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [fiva](./fiva/brief.md) | $42.73K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [flamingo](./flamingo/brief.md) | $1.34M | ethereum | 6 | 0/6 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [flap-sh](./flap-sh/brief.md) | $739.08K | bsc, ethereum | 47 | 47/47 (100%) | 18.2% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [flashstake](./flashstake/brief.md) | $34.61K | arbitrum, ethereum, optimism | 15 | 12/15 (80%) | 27.3% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [flaunch](./flaunch/brief.md) | $1.35M | base, ethereum | 89 | 68/89 (76%) | 50.0% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [flex](./flex/brief.md) | $2.63M | ethereum | 15 | 15/15 (100%) | 38.5% | 0.0% (-) | 3 | fresh | ❓ unknown | - |
| [flexa](./flexa/brief.md) | $751.91K | ethereum | 7 | 6/7 (86%) | 33.3% | 33.3% (ConsenSys Diligence, Trail of Bits) | 2 | stale | ❓ unknown | - |
| [flipster](./flipster/brief.md) | $33.03M | klaytn | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [float](./float/brief.md) | $145.11K | avalanche, polygon | 68 | 68/68 (100%) | 5.1% | 5.1% (Code4rena) | 1 | stale | ❓ unknown | - |
| [float-protocol](./float-protocol/brief.md) | $117.89K | ethereum | 21 | 21/21 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [flock.io](./flock.io/brief.md) | $4.61M | base | 18 | 17/18 (94%) | 75.0% | 75.0% (SlowMist) | 2 | aging | ❓ unknown | - |
| [flokifi-locker](./flokifi-locker/brief.md) | $8.89M | ethereum | 19 | 19/19 (100%) | 5.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [florence-finance](./florence-finance/brief.md) | - | arbitrum, ethereum | 24 | 24/24 (100%) | 27.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [fluid](./fluid/brief.md) | $2115.05M | arbitrum, base, ethereum | 261 | 261/261 (100%) | 5.8% | 5.4% (MixBytes, Spearbit) | 4 | fresh | ❓ unknown | - |
| [flux-finance](./flux-finance/brief.md) | $112.59M | ethereum | 38 | 38/38 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [fluxion-network](./fluxion-network/brief.md) | $2.36M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [flying-tulip](./flying-tulip/brief.md) | $10.17M | 5 | 75 | 72/75 (96%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [folks-finance](./folks-finance/brief.md) | $84.21M | 7 | 244 | 63/244 (26%) | 3.2% | 1.6% (Immunefi) | 2 | fresh | ❓ unknown | - |
| [fomo3d](./fomo3d/brief.md) | $1.87M | ethereum | 17 | 4/17 (24%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [forgeyields](./forgeyields/brief.md) | $1.23M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [fortifi](./fortifi/brief.md) | $348.66K | avalanche | 67 | 2/67 (3%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [fortunafi](./fortunafi/brief.md) | $221.82K | blast | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [four.meme](./four.meme/brief.md) | $4.03M | bsc | 256 | 1/256 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [foxify](./foxify/brief.md) | $3.56M | sonic | 5 | 3/5 (60%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [fractal-protocol](./fractal-protocol/brief.md) | $10.90K | ethereum | 33 | 5/33 (15%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [frankencoin](./frankencoin/brief.md) | $66.91M | ethereum | 23 | 19/23 (83%) | 44.4% | 44.4% (ChainSecurity, Code4rena) | 9 | aging | ❓ unknown | - |
| [frax-finance](./frax-finance/brief.md) | $283.53M | 4 | 402 | 402/402 (100%) | 18.8% | 18.2% (Certora, ChainSecurity, Code4rena, Trail of Bits) | 13 | fresh | ❓ unknown | - |
| [frax-fpi](./frax-fpi/brief.md) | $160.52K | ethereum | 108 | 108/108 (100%) | 13.9% | 13.9% (Certora, ChainSecurity, Code4rena, Trail of Bits) | 13 | fresh | ❓ unknown | - |
| [free-protocol](./free-protocol/brief.md) | $247.76M | bsc, ethereum, manta | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [freebie-life-finance](./freebie-life-finance/brief.md) | $32.96 | avalanche | 4 | 2/4 (50%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [friend3](./friend3/brief.md) | $61.99K | bsc, opbnb | 4 | 2/4 (50%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [frigg.eco](./frigg.eco/brief.md) | $182.53K | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [fringe-finance](./fringe-finance/brief.md) | $45.23K | 6 | 817 | 449/817 (55%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [froggy-protocol](./froggy-protocol/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [fuel-bridge](./fuel-bridge/brief.md) | $9.03M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [fuji-finance](./fuji-finance/brief.md) | $139.60K | 7 | 325 | 28/325 (9%) | - | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [fulcrom](./fulcrom/brief.md) | $10.22M | cronos, zksync-era | 19 | 0/19 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [full-sail](./full-sail/brief.md) | $428.69K | ethereum | 17 | 0/17 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [fungify](./fungify/brief.md) | $736.49K | ethereum | 25 | 25/25 (100%) | 66.7% | 0.0% (-) | 8 | stale | ❓ unknown | - |
| [fusionx-finance](./fusionx-finance/brief.md) | - | mantle | 50 | 50/50 (100%) | 2.3% | 2.3% (Immunefi) | 8 | unknown | ❓ unknown | - |
| [fx-protocol](./fx-protocol/brief.md) | $198.96M | 6 | 381 | 57/381 (15%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [fxdao](./fxdao/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [fxdx](./fxdx/brief.md) | $2.45K | base, optimism | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [fyde-protocol](./fyde-protocol/brief.md) | $241.71K | ethereum | 22 | 20/22 (91%) | 44.4% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [g8keep](./g8keep/brief.md) | - | base | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [gaib](./gaib/brief.md) | $20.86M | bsc, ethereum, sei | 42 | 42/42 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [gains-network](./gains-network/brief.md) | $20.25M | arbitrum, base, polygon | 2514 | 26/2514 (1%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [galaxy-curation](./galaxy-curation/brief.md) | $70.47M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [gale](./gale/brief.md) | $0.00 | bsc | 131 | 2/131 (2%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gamma](./gamma/brief.md) | $2.76M | 20 | 1078 | 88/1078 (8%) | 35.3% | 5.9% (ConsenSys Diligence, Immunefi, OpenZeppelin) | 10 | fresh | ❓ unknown | - |
| [gate](./gate/brief.md) | $4151.29M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gate-us](./gate-us/brief.md) | $48.01M | 7 | 5 | 0/5 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gauntlet](./gauntlet/brief.md) | $1397.15M | 5 | 151 | 151/151 (100%) | 11.8% | 11.8% (OpenZeppelin, Spearbit) | 15 | fresh | ❓ unknown | - |
| [gearbox](./gearbox/brief.md) | $34.85M | 4 | 1592 | 51/1592 (3%) | 73.8% | 73.8% (ChainSecurity, ConsenSys Diligence, MixBytes) | 29 | aging | ❓ unknown | - |
| [geist-finance](./geist-finance/brief.md) | $153.46K | fantom | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gemkeeper](./gemkeeper/brief.md) | $19.50K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [generic.money](./generic.money/brief.md) | $1.05M | ethereum | 15 | 15/15 (100%) | 46.7% | 46.7% (Spearbit) | 1 | fresh | ❓ unknown | - |
| [genius](./genius/brief.md) | - | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [geode](./geode/brief.md) | $346.89K | avalanche | 11 | 11/11 (100%) | 66.7% | 66.7% (ConsenSys Diligence) | 2 | stale | ❓ unknown | - |
| [get-protocol](./get-protocol/brief.md) | $0.00 | ethereum | 4 | 2/4 (50%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [geth](./geth/brief.md) | $12.02M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [geyser](./geyser/brief.md) | $72.23K | ethereum, optimism, polygon | 104 | 7/104 (7%) | 42.9% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [gibxswap](./gibxswap/brief.md) | $595.81K | bsc | 14 | 14/14 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gimo](./gimo/brief.md) | $3.77M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [gin-finance](./gin-finance/brief.md) | $8.24K | boba | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [giveth](./giveth/brief.md) | $117.79K | ethereum, gnosis | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [giza](./giza/brief.md) | $14.01K | 4 | 21 | 20/21 (95%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [glide-finance](./glide-finance/brief.md) | $186.79K | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [glif](./glif/brief.md) | $24.09M | base | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [glitter-finance](./glitter-finance/brief.md) | $14.74 | ethereum | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [glori-finance](./glori-finance/brief.md) | $42.08 | arbitrum | 19 | 2/19 (11%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [gmd-protocol](./gmd-protocol/brief.md) | $839.70K | arbitrum | 48 | 48/48 (100%) | 2.1% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [gmx](./gmx/brief.md) | $238.55M | arbitrum, avalanche | 186 | 186/186 (100%) | 76.3% | 71.2% (Certora, Sherlock) | 37 | fresh | ❓ unknown | - |
| [gnosis-protocol-v1](./gnosis-protocol-v1/brief.md) | $1.81M | ethereum | 62 | 31/62 (50%) | 10.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [goat-protocol](./goat-protocol/brief.md) | $16.97K | 4 | 18 | 17/18 (94%) | 25.0% | 0.0% (-) | 3 | aging | ❓ unknown | - |
| [gogocoin](./gogocoin/brief.md) | $2.14K | polygon | 3 | 3/3 (100%) | 50.0% | 0.0% (-) | 1 | unknown | ❓ unknown | - |
| [goldfinch](./goldfinch/brief.md) | $1.46M | 4 | 322 | 47/322 (15%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [goldfinger](./goldfinger/brief.md) | $23.88M | bsc | 8 | 7/8 (88%) | 100.0% | 0.0% (-) | 8 | fresh | ❓ unknown | - |
| [goldilocks](./goldilocks/brief.md) | $548.16K | berachain | 9 | 9/9 (100%) | 12.5% | 12.5% (Cyfrin) | 1 | stale | ❓ unknown | - |
| [goldsand-by-inshallah](./goldsand-by-inshallah/brief.md) | $218.37K | ethereum | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [goldstation](./goldstation/brief.md) | $1.75M | avalanche, klaytn | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [goledo](./goledo/brief.md) | $3.50K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gomble-games](./gomble-games/brief.md) | $14.72 | bsc | 25 | 10/25 (40%) | 20.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [gondi](./gondi/brief.md) | $709.33K | ethereum, hyperliquid | 31 | 16/31 (52%) | 20.0% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [gooddollar](./gooddollar/brief.md) | - | celo, ethereum | 85 | 85/85 (100%) | 17.7% | 17.7% (ChainSecurity, ConsenSys Diligence, OpenZeppelin) | 8 | stale | ❓ unknown | - |
| [goodentry](./goodentry/brief.md) | $77.10K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [goose](./goose/brief.md) | $12.79M | arbitrum, ethereum, opbnb | 12 | 5/12 (42%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [goose-finance](./goose-finance/brief.md) | $241.65K | bsc | 373 | 10/373 (3%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [goosefx](./goosefx/brief.md) | $1.79K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [goplus-security](./goplus-security/brief.md) | $25.55M | 4 | 91 | 30/91 (33%) | - | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [granary-finance](./granary-finance/brief.md) | $615.23K | arbitrum, ethereum | 39 | 39/39 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [grape-finance](./grape-finance/brief.md) | $0.00 | avalanche | 43 | 15/43 (35%) | 42.9% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [gravis-finance](./gravis-finance/brief.md) | $32.33K | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gravita-protocol](./gravita-protocol/brief.md) | $281.91K | 5 | 33 | 33/33 (100%) | 19.4% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [gravity](./gravity/brief.md) | $31.81K | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [gravity-bridge](./gravity-bridge/brief.md) | $6.02M | ethereum | 86 | 54/86 (63%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [gravity-by-galxe](./gravity-by-galxe/brief.md) | $22.20M | ethereum | 87 | 34/87 (39%) | - | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [gravity-finance](./gravity-finance/brief.md) | $87.65K | polygon | 3 | 2/3 (67%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [gridex](./gridex/brief.md) | $52.29K | arbitrum, base | 5 | 5/5 (100%) | 33.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [grizzlyfi](./grizzlyfi/brief.md) | $515.26K | bsc | 77 | 77/77 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [gro](./gro/brief.md) | $4.66M | avalanche, ethereum | 111 | 18/111 (16%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [grove-finance](./grove-finance/brief.md) | $2501.15M | avalanche, base, ethereum | 79 | 79/79 (100%) | 61.3% | 61.3% (Certora, ChainSecurity, OpenZeppelin, Spearbit, Trail of Bits) | 22 | fresh | ❓ unknown | - |
| [growihf](./growihf/brief.md) | $8.68M | arbitrum, ethereum | 15 | 14/15 (93%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [grvt](./grvt/brief.md) | $43.74M | ethereum | 16 | 16/16 (100%) | 14.3% | 14.3% (Spearbit) | 1 | fresh | ❓ unknown | - |
| [gt3](./gt3/brief.md) | $667.42K | polygon | 15 | 15/15 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [gudchain](./gudchain/brief.md) | $74.05K | ethereum | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [gullnetwork](./gullnetwork/brief.md) | $157.25K | manta | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [gumball-protocol](./gumball-protocol/brief.md) | $235.51K | arbitrum | 7 | 7/7 (100%) | 66.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [guru-network-dao](./guru-network-dao/brief.md) | $1.70M | 8 | 46 | 21/46 (46%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [gyroscope-protocol](./gyroscope-protocol/brief.md) | $353.87K | 10 | 195 | 120/195 (62%) | 34.5% | 1.7% (Trail of Bits) | 7 | aging | ❓ unknown | - |
| [h2-finance](./h2-finance/brief.md) | $599.72K | ethereum | 6 | 0/6 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hakka-finance](./hakka-finance/brief.md) | $3.50M | bsc, ethereum, polygon | 23 | 13/23 (57%) | 54.5% | 0.0% (-) | 6 | stale | ❓ unknown | - |
| [hakutora](./hakutora/brief.md) | $23.55M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [halofi](./halofi/brief.md) | $21.99K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [hanji-protocol](./hanji-protocol/brief.md) | $961.01K | base | 454 | 5/454 (1%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [harbor](./harbor/brief.md) | $88.72K | arbitrum, base, ethereum | 153 | 120/153 (78%) | 0.8% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [harbor-market](./harbor-market/brief.md) | - | bsc | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [harmonix-finance](./harmonix-finance/brief.md) | $5.18M | arbitrum, ethereum, hyperliquid | 285 | 157/285 (55%) | 3.4% | 0.0% (-) | 3 | fresh | ❓ unknown | - |
| [harvest-finance](./harvest-finance/brief.md) | $11.71M | 5 | 691 | 519/691 (75%) | 2.5% | 0.0% (-) | 6 | aging | ❓ unknown | - |
| [harvest-flow](./harvest-flow/brief.md) | $523.76K | polygon | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [hashai](./hashai/brief.md) | - | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hashdao-finance](./hashdao-finance/brief.md) | $1.24M | arbitrum, optimism | 40 | 7/40 (18%) | 50.0% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [hashflow](./hashflow/brief.md) | $559.17K | 6 | 329 | 329/329 (100%) | 8.8% | 0.0% (-) | 5 | fresh | ❓ unknown | - |
| [hashkey-global](./hashkey-global/brief.md) | $12.48M | scroll | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hashking](./hashking/brief.md) | $317.18K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hashport](./hashport/brief.md) | $925.08K | 10 | 13 | 4/13 (31%) | 75.0% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [hastra](./hastra/brief.md) | $407.59M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [hats.finance](./hats.finance/brief.md) | $194.64K | 5 | 169 | 25/169 (15%) | - | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [hbarsuite](./hbarsuite/brief.md) | $3.01M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [hectagon](./hectagon/brief.md) | $0.49 | bsc | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hedgey](./hedgey/brief.md) | - | base, mode | 8 | 8/8 (100%) | 100.0% | 0.0% (-) | 7 | aging | ❓ unknown | - |
| [hegic](./hegic/brief.md) | $8.12M | arbitrum, ethereum | 1073 | 18/1073 (2%) | 33.3% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [heliswap](./heliswap/brief.md) | $94.48K | ethereum | 3 | 0/3 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [helix](./helix/brief.md) | $1.12M | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [helix-finance](./helix-finance/brief.md) | - | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hemi](./hemi/brief.md) | $519.96K | bsc, ethereum, optimism | 63 | 24/63 (38%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [hemi-staking](./hemi-staking/brief.md) | $27.66M | 4 | 111 | 43/111 (39%) | 2.4% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [hemibtc](./hemibtc/brief.md) | $9.94M | bsc, ethereum, optimism | 31 | 24/31 (77%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [henjin-dex](./henjin-dex/brief.md) | $1.14K | base | 9 | 5/9 (56%) | 60.0% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [hera-finance](./hera-finance/brief.md) | $5.50M | arbitrum, ethereum, metis | 285 | 15/285 (5%) | 75.0% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [hercules](./hercules/brief.md) | $196.76K | metis | 22 | 22/22 (100%) | 0.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [heroes-of-mavia](./heroes-of-mavia/brief.md) | - | base, ethereum | 13 | 13/13 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hinkal](./hinkal/brief.md) | $620.97K | 5 | 1470 | 1470/1470 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [hiyield](./hiyield/brief.md) | $2.73M | avalanche, canto, ethereum | 3 | 0/3 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hlp0](./hlp0/brief.md) | $387.77K | arbitrum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hodltree](./hodltree/brief.md) | $1.77K | ethereum, polygon | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [holdstation](./holdstation/brief.md) | $24.23K | berachain, bsc, zksync-era | 58 | 21/58 (36%) | 5.6% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [homora-v2](./homora-v2/brief.md) | $110.27M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [honeyfarm](./honeyfarm/brief.md) | $961.46 | bsc | 1130 | 4/1130 (0%) | 25.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [honeyswap](./honeyswap/brief.md) | $601.86K | gnosis | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hop-protocol](./hop-protocol/brief.md) | $3.04M | 6 | 698 | 45/698 (6%) | 20.5% | 20.5% (Trail of Bits) | 4 | stale | ❓ unknown | - |
| [hope-money](./hope-money/brief.md) | $1.31M | ethereum | 21 | 21/21 (100%) | 73.7% | 52.6% (SlowMist) | 4 | stale | ❓ unknown | - |
| [hopr](./hopr/brief.md) | $862.41K | gnosis | 75 | 17/75 (23%) | 7.7% | 7.7% (ChainSecurity) | 2 | stale | ❓ unknown | - |
| [hord](./hord/brief.md) | $302.05K | ethereum | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [horizondex](./horizondex/brief.md) | $60.31K | base, linea | 32 | 16/32 (50%) | 43.8% | 0.0% (-) | 5 | stale | ❓ unknown | - |
| [hotcoin](./hotcoin/brief.md) | $5.80M | scroll | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hourglass](./hourglass/brief.md) | $116.80K | base, ethereum, mantle | 77 | 67/77 (87%) | 1.6% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [houses-of-rome](./houses-of-rome/brief.md) | $0.00 | moonriver | 22 | 13/22 (59%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [hskhodlium](./hskhodlium/brief.md) | $348.11K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [htx](./htx/brief.md) | $3833.14M | avalanche, ethereum, polygon | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [huckleberry](./huckleberry/brief.md) | $30.93K | moonriver | 26 | 6/26 (23%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [humble-defi](./humble-defi/brief.md) | $44.06K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [hundred-finance](./hundred-finance/brief.md) | $102.25K | 8 | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [hunny-finance](./hunny-finance/brief.md) | - | bsc | 46 | 46/46 (100%) | 2.8% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [hurricaneswap](./hurricaneswap/brief.md) | $11.40K | avalanche | 22 | 6/22 (27%) | 20.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [hybra](./hybra/brief.md) | $2.15M | hyperliquid | 76 | 14/76 (18%) | 50.0% | 50.0% (Code4rena) | 1 | fresh | ❓ unknown | - |
| [hydt-protocol](./hydt-protocol/brief.md) | - | bsc | 10 | 10/10 (100%) | 80.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [hyper-finance](./hyper-finance/brief.md) | $34.17K | bsc | 42 | 4/42 (10%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [hyperbeat](./hyperbeat/brief.md) | $43.67M | ethereum, hyperliquid | 245 | 193/245 (79%) | 10.4% | 3.8% (Certora) | 8 | fresh | ❓ unknown | - |
| [hyperbloom](./hyperbloom/brief.md) | $103.38K | hyperliquid | 44 | 4/44 (9%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [hyperdrive-hl](./hyperdrive-hl/brief.md) | $2.17M | ethereum | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [hyperion](./hyperion/brief.md) | $7.37M | ethereum | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [hyperithm](./hyperithm/brief.md) | $114.32M | bsc, ethereum, plasma | 225 | 225/225 (100%) | 34.7% | 34.7% (Spearbit) | 11 | fresh | ❓ unknown | - |
| [hyperjump](./hyperjump/brief.md) | $185.95K | bsc | 14 | 14/14 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [hyperlane](./hyperlane/brief.md) | $95.36M | 15 | 67 | 67/67 (100%) | 62.7% | 13.6% (ChainSecurity, Trail of Bits) | 16 | aging | ❓ unknown | - |
| [hyperlend](./hyperlend/brief.md) | $922.61M | hyperliquid | 89 | 89/89 (100%) | 25.8% | 9.7% (Certora, MixBytes, OpenZeppelin, Trail of Bits) | 11 | fresh | ❓ unknown | - |
| [hyperstable](./hyperstable/brief.md) | $146.46K | hyperliquid | 33 | 33/33 (100%) | 55.2% | 0.0% (-) | 4 | aging | ❓ unknown | - |
| [hypersurface](./hypersurface/brief.md) | $2.59M | base, hyperliquid | 282 | 87/282 (31%) | 6.1% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [hyperswap](./hyperswap/brief.md) | $16.09M | hyperliquid | 94 | 9/94 (10%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [hypertrade](./hypertrade/brief.md) | $97.54K | ethereum | 9 | 0/9 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [hyperwave](./hyperwave/brief.md) | $3.36M | base, ethereum, hyperliquid | 13 | 9/13 (69%) | 57.1% | 57.1% (Spearbit) | 4 | fresh | ❓ unknown | - |
| [hyperyield](./hyperyield/brief.md) | - | hyperliquid | 6 | 6/6 (100%) | 0.0% | 0.0% (SlowMist) | 8 | aging | ❓ unknown | - |
| [hypha](./hypha/brief.md) | $4.76M | avalanche | 47 | 40/47 (85%) | 43.3% | 23.3% (Code4rena) | 2 | stale | ❓ unknown | - |
| [hyphen](./hyphen/brief.md) | $100.36K | 4 | 15 | 10/15 (67%) | 70.0% | 50.0% (Cyfrin, Spearbit) | 10 | fresh | ❓ unknown | - |
| [iaero-protocol](./iaero-protocol/brief.md) | $2.23M | base | 31 | 29/31 (94%) | 7.1% | 7.1% (Trail of Bits) | 8 | fresh | ❓ unknown | - |
| [ibtc-finance](./ibtc-finance/brief.md) | $239.14 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [ibtc-network](./ibtc-network/brief.md) | $149.12 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ichi](./ichi/brief.md) | $9.68M | 13 | 813 | 40/813 (5%) | 10.3% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [ideamarket](./ideamarket/brief.md) | $163.21K | arbitrum | 18 | 18/18 (100%) | 41.2% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [ifpool](./ifpool/brief.md) | $47.91K | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [illuvium](./illuvium/brief.md) | $6.11M | ethereum | 12 | 10/12 (83%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [immutable-zkevm](./immutable-zkevm/brief.md) | $21.35M | ethereum | 21 | 3/21 (14%) | - | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [immutablex](./immutablex/brief.md) | $409.93K | ethereum | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [impermax-finance](./impermax-finance/brief.md) | $730.74K | 15 | 458 | 36/458 (8%) | 14.7% | 0.0% (-) | 4 | fresh | ❓ unknown | - |
| [impossible](./impossible/brief.md) | $152.49K | aurora, bsc, moonbeam | 9 | 9/9 (100%) | 50.0% | 0.0% (-) | 6 | aging | ❓ unknown | - |
| [inception](./inception/brief.md) | $4.41M | 8 | 23 | 21/23 (91%) | 88.2% | 0.0% (-) | 10 | aging | ❓ unknown | - |
| [incprinter](./incprinter/brief.md) | $703.55K | ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [index-coop](./index-coop/brief.md) | $8.72M | 4 | 180 | 56/180 (31%) | 39.2% | 17.6% (Code4rena, OpenZeppelin) | 6 | aging | ❓ unknown | - |
| [infinifi](./infinifi/brief.md) | $65.24M | 4 | 129 | 75/129 (58%) | 1.4% | 1.4% (ChainSecurity, Spearbit) | 3 | aging | ❓ unknown | - |
| [infinit](./infinit/brief.md) | - | bsc, ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [infinite-trading-protocol](./infinite-trading-protocol/brief.md) | $412.31K | 4 | 2202 | 57/2202 (3%) | 1.8% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [infinityname](./infinityname/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [infinitypools](./infinitypools/brief.md) | $110.98K | base | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [influpia](./influpia/brief.md) | $2.81K | merlin | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [infrared-finance](./infrared-finance/brief.md) | $24.23M | berachain, bsc | 53 | 41/53 (77%) | 56.1% | 29.3% (Spearbit) | 23 | fresh | ❓ unknown | - |
| [infusion](./infusion/brief.md) | $70.98K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [init-capital](./init-capital/brief.md) | $1.97M | blast, mantle | 72 | 29/72 (40%) | 33.3% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [initiadex](./initiadex/brief.md) | $2.10M | ethereum | 3 | 0/3 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [injective-bridge](./injective-bridge/brief.md) | $10.90M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [ink-bridge](./ink-bridge/brief.md) | $41.86M | ethereum, ink, optimism | 30 | 27/30 (90%) | 62.5% | 62.5% (Sherlock, Spearbit, Trail of Bits) | 7 | aging | ❓ unknown | - |
| [ink-protocol](./ink-protocol/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [insurace](./insurace/brief.md) | $129.20K | 4 | 23 | 23/23 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [insuredao](./insuredao/brief.md) | $125.77K | arbitrum, ethereum, optimism | 155 | 32/155 (21%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [integral](./integral/brief.md) | $405.36K | arbitrum, ethereum | 25 | 25/25 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [intentx](./intentx/brief.md) | $5.67M | arbitrum, base, mantle | 106 | 62/106 (58%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [intercroneswap](./intercroneswap/brief.md) | $255.34K | bsc | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [interest-labs](./interest-labs/brief.md) | $1.95K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [interest-protocol](./interest-protocol/brief.md) | $1.18M | ethereum | 8 | 2/8 (25%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [international-meme-fund](./international-meme-fund/brief.md) | $826.71K | ethereum | 13 | 13/13 (100%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [intswap](./intswap/brief.md) | $1.31K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [intuition](./intuition/brief.md) | $0.00 | base | 10 | 9/10 (90%) | 50.0% | 50.0% (ConsenSys Diligence, Trail of Bits) | 4 | fresh | ❓ unknown | - |
| [invar-finance](./invar-finance/brief.md) | $261.96 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [invariant](./invariant/brief.md) | $235.83K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [inverse-finance](./inverse-finance/brief.md) | $33.22M | 5 | 82 | 73/82 (89%) | 11.1% | 6.9% (Code4rena, Sherlock) | 5 | fresh | ❓ unknown | - |
| [ionic-protocol](./ionic-protocol/brief.md) | $2.04M | bsc, mode | 76 | 55/76 (72%) | 33.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [iotabee](./iotabee/brief.md) | $3.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [iotube](./iotube/brief.md) | $2.29M | bsc, ethereum, polygon | 36 | 14/36 (39%) | 14.3% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [iq](./iq/brief.md) | $3.54M | ethereum, fraxtal | 22 | 4/22 (18%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [iron-bank](./iron-bank/brief.md) | $700.22K | fantom | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [iron-finance](./iron-finance/brief.md) | $448.98K | avalanche, polygon | 83 | 83/83 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ithaca-protocol](./ithaca-protocol/brief.md) | $12.71K | arbitrum, bsc | 15 | 9/15 (60%) | 85.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [itrust-finance](./itrust-finance/brief.md) | $351.58K | ethereum, optimism | 285 | 155/285 (54%) | 0.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [ixs](./ixs/brief.md) | $160.17K | base, ethereum, polygon | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [izumi-finance](./izumi-finance/brief.md) | $3.49M | 14 | 189 | 23/189 (12%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [jarvis-network](./jarvis-network/brief.md) | $266.46K | 6 | 60 | 60/60 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [javsphere](./javsphere/brief.md) | - | base, bsc | 38 | 38/38 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [jaypeggers](./jaypeggers/brief.md) | $124.16K | ethereum | 8 | 8/8 (100%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [jbc.finance](./jbc.finance/brief.md) | $397.80 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [jetfuel-finance](./jetfuel-finance/brief.md) | $122.36K | bsc | 54 | 54/54 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [jetswap](./jetswap/brief.md) | $309.13K | bsc | 22 | 16/22 (73%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [jiko](./jiko/brief.md) | $106.19K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [jito](./jito/brief.md) | $728.85M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [jones-dao](./jones-dao/brief.md) | $1.30M | 4 | 1007 | 46/1007 (5%) | 14.0% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [jpegd](./jpegd/brief.md) | $334.99K | ethereum | 65 | 65/65 (100%) | 15.2% | 4.3% (Code4rena) | 6 | stale | ❓ unknown | - |
| [jpg-store](./jpg-store/brief.md) | $112.34K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [juice-finance](./juice-finance/brief.md) | $103.73K | blast | 29 | 29/29 (100%) | 7.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [juicebox](./juicebox/brief.md) | $8.21M | 8 | 50 | 49/50 (98%) | 14.3% | 10.2% (Code4rena) | 4 | stale | ❓ unknown | - |
| [julswap](./julswap/brief.md) | $346.75K | 4 | 8 | 8/8 (100%) | 33.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [justlend](./justlend/brief.md) | $3176.49M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [justmoney](./justmoney/brief.md) | $521.11K | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [k2](./k2/brief.md) | $3.49M | ethereum | 32 | 21/32 (66%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [k3-capital](./k3-capital/brief.md) | $244.66M | 4 | 41 | 41/41 (100%) | 12.0% | 4.0% (ChainSecurity) | 5 | aging | ❓ unknown | - |
| [k9-finance-dao](./k9-finance-dao/brief.md) | - | ethereum | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kafe-finance](./kafe-finance/brief.md) | $0.00 | moonriver | 199 | 2/199 (1%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [kaio](./kaio/brief.md) | $60.80M | sei | 30 | 0/30 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kaito](./kaito/brief.md) | $20.81M | base | 4 | 3/4 (75%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kalax](./kalax/brief.md) | $125.25K | blast | 15 | 12/15 (80%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kalmy-app](./kalmy-app/brief.md) | $30.57K | bsc | 186 | 30/186 (16%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kandle-finance](./kandle-finance/brief.md) | $0.07 | arbitrum | 2 | 2/2 (100%) | 100.0% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [kannagi-finance](./kannagi-finance/brief.md) | $72.20 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kaskad](./kaskad/brief.md) | $3.06M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [kasu](./kasu/brief.md) | $10.86M | base | 26 | 24/26 (92%) | 20.8% | 16.7% (ChainSecurity) | 2 | aging | ❓ unknown | - |
| [katana-pre-launch](./katana-pre-launch/brief.md) | $17.26M | base, ethereum | 208 | 49/208 (24%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [kava-earn](./kava-earn/brief.md) | $1.17M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kava-lend](./kava-lend/brief.md) | $9.67M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kava-liquid](./kava-liquid/brief.md) | $1.15M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kava-mint](./kava-mint/brief.md) | $9.99M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [kawaiiswap](./kawaiiswap/brief.md) | $733.15 | bsc | 5 | 2/5 (40%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [keep-network](./keep-network/brief.md) | $982.07K | 5 | 485 | 110/485 (23%) | 6.6% | 2.8% (ChainSecurity, ConsenSys Diligence) | 6 | fresh | ❓ unknown | - |
| [keep3r-network](./keep3r-network/brief.md) | $1.20M | ethereum | 883 | 52/883 (6%) | 2.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [keeta-bridge](./keeta-bridge/brief.md) | $1.06M | base | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [keiko-finance](./keiko-finance/brief.md) | $48.20K | ethereum | 16 | 0/16 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [keom-protocol](./keom-protocol/brief.md) | $175.15K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [keyring](./keyring/brief.md) | $6.22M | avalanche, ethereum | 187 | 39/187 (21%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [killswitch](./killswitch/brief.md) | $144.64K | bsc | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [kiloex](./kiloex/brief.md) | $1.25M | 4 | 773 | 22/773 (3%) | 31.6% | 26.3% (SlowMist) | 4 | aging | ❓ unknown | - |
| [kim-exchange](./kim-exchange/brief.md) | - | mode | 32 | 32/32 (100%) | 0.0% | 0.0% (ChainSecurity) | 8 | stale | ❓ unknown | - |
| [kine-finance](./kine-finance/brief.md) | $916.82K | 4 | 13 | 11/13 (85%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kinetic](./kinetic/brief.md) | $55.50M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [kinetiq](./kinetiq/brief.md) | $1075.50M | hyperliquid | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [king-protocol](./king-protocol/brief.md) | $1.18M | 4 | 21 | 9/21 (43%) | 66.7% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [kingdefi](./kingdefi/brief.md) | $35.20K | bsc | 36 | 2/36 (6%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kinto](./kinto/brief.md) | $672.22K | arbitrum, ethereum | 1 | 1/1 (100%) | - | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [kintsu](./kintsu/brief.md) | $1.93M | hyperliquid | 8 | 0/8 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [kinza-finance](./kinza-finance/brief.md) | $6.55M | 4 | 115 | 13/115 (11%) | 10.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [klaybank](./klaybank/brief.md) | $313.46K | klaytn | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [klaystation](./klaystation/brief.md) | $1.42M | klaytn | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [klayswap](./klayswap/brief.md) | $3.75M | klaytn | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [klend](./klend/brief.md) | $5.80K | bsc | 25 | 4/25 (16%) | 50.0% | 50.0% (SlowMist) | 1 | stale | ❓ unknown | - |
| [kleros](./kleros/brief.md) | $5.47M | 4 | 304 | 33/304 (11%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [knightswap](./knightswap/brief.md) | $875.76K | bsc, fantom | 11 | 5/11 (45%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [knit-finance](./knit-finance/brief.md) | $383.88K | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [kodiak](./kodiak/brief.md) | $16.92M | berachain | 4 | 4/4 (100%) | 50.0% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [kogefarm](./kogefarm/brief.md) | $131.34K | polygon | 156 | 4/156 (3%) | 33.3% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [kokomo-finance](./kokomo-finance/brief.md) | $2.01K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [kolibri](./kolibri/brief.md) | $658.31K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [kongswap](./kongswap/brief.md) | $2.38M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [korbit](./korbit/brief.md) | $364.12M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kpk](./kpk/brief.md) | $149.88M | ethereum | 33 | 33/33 (100%) | 4.2% | 4.2% (Cantina, Spearbit) | 3 | fresh | ❓ unknown | - |
| [kromatika](./kromatika/brief.md) | $948.71K | 4 | 47 | 8/47 (17%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [kryptodex](./kryptodex/brief.md) | $641.93 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [krystal](./krystal/brief.md) | $195.49K | ethereum | 11 | 11/11 (100%) | 10.0% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [kucoin](./kucoin/brief.md) | $2329.46M | arbitrum, bsc, ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kuma-protocol](./kuma-protocol/brief.md) | $3.05M | 4 | 28 | 9/28 (32%) | 33.3% | 33.3% (Code4rena) | 2 | stale | ❓ unknown | - |
| [kuru](./kuru/brief.md) | $1.05M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [kyberswap](./kyberswap/brief.md) | $7.95M | 15 | 387 | 123/387 (32%) | 10.4% | 8.7% (ChainSecurity, Spearbit) | 10 | fresh | ❓ unknown | - |
| [kyex](./kyex/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [kyrios-finance](./kyrios-finance/brief.md) | $117.92 | fantom | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [l2x.pro](./l2x.pro/brief.md) | $1.43K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [laari-finance](./laari-finance/brief.md) | $0.04 | base | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [lagoon](./lagoon/brief.md) | $130.18M | 6 | 13 | 13/13 (100%) | 50.0% | 33.3% (Trail of Bits) | 9 | fresh | ❓ unknown | - |
| [lair-finance](./lair-finance/brief.md) | $3.81M | berachain | 86 | 27/86 (31%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [lake-protocol](./lake-protocol/brief.md) | $44.11K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [lander](./lander/brief.md) | $21.23K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [landshare](./landshare/brief.md) | $646.02K | bsc | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [landx-finance](./landx-finance/brief.md) | $1.76M | ethereum | 9 | 9/9 (100%) | 25.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [larix](./larix/brief.md) | $906.24K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [latch](./latch/brief.md) | $1.55M | ethereum | 3 | 3/3 (100%) | 100.0% | 100.0% (SlowMist) | 2 | aging | ❓ unknown | - |
| [latteswap](./latteswap/brief.md) | $52.93K | bsc | 4 | 3/4 (75%) | 66.7% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [layer2-finance](./layer2-finance/brief.md) | $208.57K | ethereum | 5 | 5/5 (100%) | 80.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [layerakira](./layerakira/brief.md) | $695.75 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [layerbank](./layerbank/brief.md) | $23.03M | 5 | 97 | 13/97 (13%) | 50.0% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [layerzero](./layerzero/brief.md) | $7318.06M | arbitrum, ethereum | 3 | 3/3 (100%) | 100.0% | 33.3% (ChainSecurity) | 7 | fresh | ❓ unknown | - |
| [lazy](./lazy/brief.md) | $1.02M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [lbank](./lbank/brief.md) | $10.24M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ledgity-yield](./ledgity-yield/brief.md) | $2.55M | 5 | 167 | 126/167 (75%) | 9.0% | 0.0% (-) | 1 | unknown | ❓ unknown | - |
| [leetswap](./leetswap/brief.md) | $118.78K | base, linea, opbnb | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [legacy-canary-protocol](./legacy-canary-protocol/brief.md) | $5.77K | ethereum | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [legion](./legion/brief.md) | $935.06K | ethereum | 7 | 7/7 (100%) | 28.6% | 14.3% (Code4rena) | 3 | fresh | ❓ unknown | - |
| [lendflare](./lendflare/brief.md) | $942.77K | ethereum | 56 | 20/56 (36%) | 0.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [lendle](./lendle/brief.md) | $506.28K | mantle | 30 | 22/30 (73%) | 71.4% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [lets-get-hai](./lets-get-hai/brief.md) | $969.42K | optimism | 25 | 24/25 (96%) | 69.6% | 0.0% (-) | 4 | fresh | ❓ unknown | - |
| [levex](./levex/brief.md) | $10.47M | bsc, ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [levinswap](./levinswap/brief.md) | $105.84K | gnosis | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [levvy-finance](./levvy-finance/brief.md) | $48.15K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [libero-financial](./libero-financial/brief.md) | $0.00 | bsc | 25 | 1/25 (4%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [lido](./lido/brief.md) | $14419.98M | 13 | 366 | 366/366 (100%) | 48.4% | 22.4% (Certora, ChainSecurity, Code4rena, ConsenSys Diligence, Cyfrin, MixBytes, OpenZeppelin, Sherlock, Spearbit) | 105 | fresh | ❓ unknown | - |
| [lido-impact-staking](./lido-impact-staking/brief.md) | $196.31K | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [lien](./lien/brief.md) | $132.46K | ethereum | 14 | 14/14 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [lighter](./lighter/brief.md) | $511.58M | arbitrum, ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [likwid](./likwid/brief.md) | $52.59K | bsc | 5 | 5/5 (100%) | 80.0% | 80.0% (Sherlock) | 2 | fresh | ❓ unknown | - |
| [liminal](./liminal/brief.md) | $26.88M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [limitless-exchange](./limitless-exchange/brief.md) | $727.57K | base | 22 | 22/22 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [linear-protocol](./linear-protocol/brief.md) | $47.09M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [linx-app](./linx-app/brief.md) | $156.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [liondex](./liondex/brief.md) | $0.38 | arbitrum | 36 | 4/36 (11%) | 25.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [liquid-collective](./liquid-collective/brief.md) | $545.66M | base, ethereum | 22 | 22/22 (100%) | 42.9% | 42.9% (Certora, Spearbit) | 7 | aging | ❓ unknown | - |
| [liquid-driver](./liquid-driver/brief.md) | $142.27K | bsc | 23 | 23/23 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [liquid-finance](./liquid-finance/brief.md) | - | arbitrum | 17 | 17/17 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [liquidity-house](./liquidity-house/brief.md) | $1.34M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [liquidloans](./liquidloans/brief.md) | $3.34M | base | 21 | 21/21 (100%) | 50.0% | 35.0% (Trail of Bits) | 3 | fresh | ❓ unknown | - |
| [liquis](./liquis/brief.md) | $321.07K | ethereum | 12 | 12/12 (100%) | 41.7% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [liquity](./liquity/brief.md) | $204.76M | 10 | 54 | 44/54 (81%) | 40.0% | 25.0% (Trail of Bits) | 3 | aging | ❓ unknown | - |
| [liqwid](./liqwid/brief.md) | $25.24M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [lisa-finance](./lisa-finance/brief.md) | $316.04K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [lisk-bridge](./lisk-bridge/brief.md) | $27.48M | ethereum | 80 | 75/80 (94%) | 1.4% | 1.4% (Code4rena) | 8 | fresh | ❓ unknown | - |
| [lista-dao](./lista-dao/brief.md) | $1288.43M | bsc, ethereum | 195 | 195/195 (100%) | 57.7% | 18.8% (OpenZeppelin, Sherlock, Spearbit) | 74 | fresh | ❓ unknown | - |
| [lithos](./lithos/brief.md) | $230.16K | plasma | 10 | 10/10 (100%) | 33.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [llama-airforce](./llama-airforce/brief.md) | $1.01M | ethereum | 99 | 47/99 (47%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [llamapay](./llamapay/brief.md) | $36.15M | 14 | 10 | 6/10 (60%) | 16.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [lns](./lns/brief.md) | $11.50K | ethereum | 3 | 0/3 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [lockon](./lockon/brief.md) | $879.89K | arbitrum, polygon | 17 | 10/17 (59%) | 90.0% | 0.0% (-) | 4 | fresh | ❓ unknown | - |
| [locus-finance](./locus-finance/brief.md) | $43.02K | arbitrum, ethereum | 157 | 74/157 (47%) | 7.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [looksrare](./looksrare/brief.md) | $27.05K | ethereum | 24 | 24/24 (100%) | 17.4% | 13.0% (Trail of Bits) | 3 | stale | ❓ unknown | - |
| [looping-collective](./looping-collective/brief.md) | $10.75M | ethereum, hyperliquid | 30 | 27/30 (90%) | 92.6% | 55.6% (ChainSecurity, Spearbit) | 8 | fresh | ❓ unknown | - |
| [loopring](./loopring/brief.md) | $8.13M | base, ethereum | 398 | 98/398 (25%) | - | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [lorenzo-protocol](./lorenzo-protocol/brief.md) | $516.75M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [lotus-finance](./lotus-finance/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [ltv-protocol](./ltv-protocol/brief.md) | $12.06K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [luaswap](./luaswap/brief.md) | - | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [lucidly-finance](./lucidly-finance/brief.md) | $137.01K | ethereum | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [luckychip](./luckychip/brief.md) | $488.37 | bsc | 9 | 9/9 (100%) | 44.4% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [lumenswap](./lumenswap/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [lumi-finance](./lumi-finance/brief.md) | $362.07K | arbitrum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [lumin-finance](./lumin-finance/brief.md) | $0.00 | arbitrum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [lusd-chickenbonds](./lusd-chickenbonds/brief.md) | $1.50M | ethereum | 5 | 5/5 (100%) | 75.0% | 0.0% (-) | 6 | stale | ❓ unknown | - |
| [lybra-finance](./lybra-finance/brief.md) | $259.73K | ethereum | 32 | 32/32 (100%) | 3.2% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [lynex](./lynex/brief.md) | $769.07K | linea | 53 | 47/53 (89%) | 6.5% | 0.0% (-) | 3 | fresh | ❓ unknown | - |
| [lynx](./lynx/brief.md) | $235.25K | 9 | 375 | 375/375 (100%) | 2.5% | 2.5% (ChainSecurity, OpenZeppelin, Trail of Bits) | 11 | aging | ❓ unknown | - |
| [m0](./m0/brief.md) | $330.35M | 7 | 33 | 33/33 (100%) | 80.8% | 69.2% (Certora, ChainSecurity, ConsenSys Diligence, Cyfrin, OpenZeppelin, Sherlock) | 42 | fresh | ❓ unknown | - |
| [magik-finance](./magik-finance/brief.md) | $2.40K | fantom | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [magma](./magma/brief.md) | $1.98M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [magma-finance-almm](./magma-finance-almm/brief.md) | $1.83K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [magma-staking](./magma-staking/brief.md) | $812.84K | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [magpie-ecosystem](./magpie-ecosystem/brief.md) | $16.62M | 8 | 383 | 83/383 (22%) | 62.5% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [maha.xyz](./maha.xyz/brief.md) | $2.62 | 5 | 53 | 22/53 (42%) | 5.0% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [mahadao](./mahadao/brief.md) | - | bsc, ethereum, polygon | 101 | 101/101 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [maia-dao-ecosystem](./maia-dao-ecosystem/brief.md) | $391.82K | arbitrum, metis, sonic | 269 | 45/269 (17%) | 37.5% | 6.3% (Code4rena) | 5 | stale | ❓ unknown | - |
| [mainstreet](./mainstreet/brief.md) | $74.18M | ethereum | 12 | 12/12 (100%) | 54.5% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [makina](./makina/brief.md) | $37.28M | base, ethereum, ink | 46 | 45/46 (98%) | 88.4% | 76.7% (ChainSecurity) | 4 | fresh | ❓ unknown | - |
| [mama](./mama/brief.md) | $49.25 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manarium](./manarium/brief.md) | $0.00 | bsc | 3 | 1/3 (33%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [manga-fi](./manga-fi/brief.md) | $5.48K | ethereum | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [mangrove](./mangrove/brief.md) | $4.23M | 4 | 61 | 34/61 (56%) | 19.4% | 16.1% (ChainSecurity, Code4rena) | 7 | aging | ❓ unknown | - |
| [mansory](./mansory/brief.md) | $6.69M | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [manta-atlantic-stake](./manta-atlantic-stake/brief.md) | $4.32M | ethereum, manta | 113 | 72/113 (64%) | 33.3% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [manta-cedefi](./manta-cedefi/brief.md) | $26.38M | manta | 17 | 15/17 (88%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [manta-pacific](./manta-pacific/brief.md) | $20.12M | ethereum, manta | 21 | 19/21 (90%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mantisswap](./mantisswap/brief.md) | $182.79K | mode, polygon, polygon-zkevm | 47 | 18/47 (38%) | 53.3% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [mantle-bridge](./mantle-bridge/brief.md) | $132.22M | ethereum, mantle | 42 | 42/42 (100%) | 33.3% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [mantle-restaking](./mantle-restaking/brief.md) | $34.74M | ethereum | 52 | 44/52 (85%) | 15.4% | 5.1% (MixBytes) | 8 | fresh | ❓ unknown | - |
| [mantra-dao](./mantra-dao/brief.md) | $46.97K | bsc, ethereum, polygon | 391 | 54/391 (14%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [maple-finance](./maple-finance/brief.md) | $6696.96M | ethereum | 22 | 22/22 (100%) | 31.8% | 18.2% (Spearbit) | 7 | fresh | ❓ unknown | - |
| [margin-zero](./margin-zero/brief.md) | $16.49K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [margined-protocol](./margined-protocol/brief.md) | $265.20K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [marginly](./marginly/brief.md) | $0.00 | arbitrum, blast, ethereum | 9 | 6/9 (67%) | 80.0% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [marlin-protocol](./marlin-protocol/brief.md) | - | arbitrum, bsc, ethereum | 28 | 28/28 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mars-ecosystem](./mars-ecosystem/brief.md) | $233.55K | bsc | 14 | 14/14 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mars-poolin](./mars-poolin/brief.md) | $138.83K | ethereum | 17 | 17/17 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [match-finance](./match-finance/brief.md) | $1.99K | ethereum | 43 | 23/43 (53%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [matrixdock](./matrixdock/brief.md) | $82.21M | bsc, ethereum | 24 | 24/24 (100%) | 27.3% | 18.2% (Spearbit) | 17 | fresh | ❓ unknown | - |
| [matstake](./matstake/brief.md) | $2.48M | ethereum | 15 | 0/15 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [maverick-protocol](./maverick-protocol/brief.md) | $1.72M | 6 | 95 | 16/95 (17%) | 33.3% | 20.0% (Code4rena) | 4 | stale | ❓ unknown | - |
| [maya-protocol](./maya-protocol/brief.md) | $9.78M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mayan-finance](./mayan-finance/brief.md) | $123.79K | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [mcdex](./mcdex/brief.md) | $884.11K | 6 | 2017 | 30/2017 (1%) | 20.0% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [mdex](./mdex/brief.md) | $1.24M | bsc, heco | 11 | 5/11 (45%) | 80.0% | 80.0% (SlowMist) | 3 | stale | ❓ unknown | - |
| [meeds-finance](./meeds-finance/brief.md) | $1.27M | 5 | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [megaeth-bridge](./megaeth-bridge/brief.md) | $8.97M | ethereum | 29 | 29/29 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [meld-gold](./meld-gold/brief.md) | $9.09M | ethereum | 14 | 14/14 (100%) | 21.4% | 21.4% (Certora, ChainSecurity, Spearbit) | 8 | fresh | ❓ unknown | - |
| [mellow-protocol](./mellow-protocol/brief.md) | $200.88M | 8 | 424 | 424/424 (100%) | 23.3% | 19.7% (ChainSecurity, Sherlock) | 21 | fresh | ❓ unknown | - |
| [mendi-finance](./mendi-finance/brief.md) | $1.55M | linea | 17 | 6/17 (35%) | 40.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [mento](./mento/brief.md) | $13.33M | celo, ethereum | 176 | 33/176 (19%) | 81.0% | 66.7% (ChainSecurity, Cyfrin, OpenZeppelin) | 9 | fresh | ❓ unknown | - |
| [merchant-moe](./merchant-moe/brief.md) | $19.07M | mantle | 43 | 18/43 (42%) | 29.4% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [merit-circle](./merit-circle/brief.md) | - | avalanche, ethereum | 33 | 33/33 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [merkle-trade](./merkle-trade/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [merlins-seal](./merlins-seal/brief.md) | $349.03M | arbitrum, ethereum, merlin | 199 | 41/199 (21%) | - | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [merlinswap](./merlinswap/brief.md) | $6.48M | merlin | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mesher](./mesher/brief.md) | $289.28K | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [meshswap](./meshswap/brief.md) | $337.02K | polygon | 32 | 32/32 (100%) | 6.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [meson](./meson/brief.md) | $556.68K | 9 | 368 | 48/368 (13%) | 4.3% | 4.3% (Trail of Bits) | 3 | stale | ❓ unknown | - |
| [meta-pool](./meta-pool/brief.md) | $62.14M | aurora, ethereum | 22 | 11/22 (50%) | 44.4% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [metacoin-swap](./metacoin-swap/brief.md) | $347.89K | bsc | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [metadao](./metadao/brief.md) | $12.34M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [metalswap](./metalswap/brief.md) | - | bsc, ethereum, linea | 52 | 52/52 (100%) | 7.0% | 7.0% (Code4rena, Cyfrin, MixBytes, Spearbit) | 15 | fresh | ❓ unknown | - |
| [metastable](./metastable/brief.md) | $1.42M | ethereum | 9 | 0/9 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [metastrike](./metastrike/brief.md) | $0.00 | bsc | 18 | 18/18 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [metavault](./metavault/brief.md) | $10.35K | 4 | 30 | 13/30 (43%) | 7.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [meter-passport](./meter-passport/brief.md) | $773.20K | 5 | 86 | 86/86 (100%) | 6.4% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [metera-protocol](./metera-protocol/brief.md) | $5.57K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [meth-protocol](./meth-protocol/brief.md) | $360.16M | ethereum | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [metis-bridge](./metis-bridge/brief.md) | $25.15M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [metronome](./metronome/brief.md) | $19.05M | base, ethereum, optimism | 130 | 130/130 (100%) | 2.5% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [metropolis-exchange](./metropolis-exchange/brief.md) | $463.03K | sonic | 34 | 34/34 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [mev-capital](./mev-capital/brief.md) | $47.73M | 9 | 4503 | 68/4503 (2%) | 22.4% | 22.4% (Spearbit) | 11 | fresh | ❓ unknown | - |
| [mev-protocol](./mev-protocol/brief.md) | $77.69K | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mezo-bridge](./mezo-bridge/brief.md) | $13.71M | ethereum | 17 | 17/17 (100%) | 23.1% | 23.1% (ChainSecurity, Sherlock) | 16 | fresh | ❓ unknown | - |
| [mezo-earn](./mezo-earn/brief.md) | $57.04M | ethereum | 3 | 3/3 (100%) | 50.0% | 50.0% (ChainSecurity, Sherlock) | 16 | fresh | ❓ unknown | - |
| [milk-finance](./milk-finance/brief.md) | - | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [milkomeda-c1-djed](./milkomeda-c1-djed/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [milkomeda-macc](./milkomeda-macc/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [milkyway-protocol](./milkyway-protocol/brief.md) | $2.51M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mimo](./mimo/brief.md) | $431.14K | 4 | 26 | 26/26 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mind-network](./mind-network/brief.md) | - | bsc, ethereum | 11 | 11/11 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [minebean](./minebean/brief.md) | - | base | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [minefi](./minefi/brief.md) | $1.01M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [minerswap](./minerswap/brief.md) | $0.13 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [minimax](./minimax/brief.md) | - | bsc, fantom | 245 | 29/245 (12%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mint-club](./mint-club/brief.md) | $592.96K | 11 | 39 | 12/39 (31%) | 66.7% | 0.0% (-) | 7 | fresh | ❓ unknown | - |
| [minterest](./minterest/brief.md) | - | ethereum, mantle | 39 | 39/39 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [minto](./minto/brief.md) | $3.80M | bsc, heco | 4 | 3/4 (75%) | 33.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [minu](./minu/brief.md) | $0.07 | bsc | 12 | 2/12 (17%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [mirakle-defi](./mirakle-defi/brief.md) | $0.05 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mito-finance](./mito-finance/brief.md) | $402.08K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mitosis](./mitosis/brief.md) | $1.15M | 11 | 1007 | 77/1007 (8%) | 4.9% | 3.3% (Code4rena) | 3 | fresh | ❓ unknown | - |
| [mm-finance](./mm-finance/brief.md) | $1.18M | arbitrum, cronos, polygon | 170 | 13/170 (8%) | 7.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [moar-market](./moar-market/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mobius-exchange](./mobius-exchange/brief.md) | $9.46K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [mobius-money](./mobius-money/brief.md) | $302.35K | celo | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mobox](./mobox/brief.md) | $528.77K | bsc | 312 | 6/312 (2%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mochifi](./mochifi/brief.md) | $391.97K | ethereum | 26 | 26/26 (100%) | 16.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [mode-bridge](./mode-bridge/brief.md) | $4.73M | ethereum, mode | 127 | 67/127 (53%) | 23.8% | 19.0% (Immunefi) | 2 | stale | ❓ unknown | - |
| [mojitoswap](./mojitoswap/brief.md) | $631.32K | ethereum | 3 | 0/3 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mole](./mole/brief.md) | $8.62M | avalanche | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [molecular](./molecular/brief.md) | $0.00 | arbitrum | 26 | 1/26 (4%) | 100.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [molten](./molten/brief.md) | $285.29K | ethereum | 4 | 4/4 (100%) | 25.0% | 25.0% (OpenZeppelin) | 1 | aging | ❓ unknown | - |
| [mon-protocol](./mon-protocol/brief.md) | - | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [monday-trade](./monday-trade/brief.md) | $692.49K | base, ethereum | 17 | 0/17 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [monetrix](./monetrix/brief.md) | $2.52M | hyperliquid | 15 | 15/15 (100%) | 83.3% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [moneyfi](./moneyfi/brief.md) | $357.15K | 5 | 21 | 21/21 (100%) | 8.3% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [moneyonchain](./moneyonchain/brief.md) | $30.87M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [monolith-market](./monolith-market/brief.md) | $223.96K | ethereum | 4 | 4/4 (100%) | 50.0% | 50.0% (ChainSecurity, Sherlock) | 6 | fresh | ❓ unknown | - |
| [monox](./monox/brief.md) | $10.92K | ethereum, polygon | 42 | 28/42 (67%) | 3.6% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [monroe-protocol](./monroe-protocol/brief.md) | $6.50K | avalanche, manta | 2 | 1/2 (50%) | 0.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [monstro](./monstro/brief.md) | $1.36M | base | 13 | 13/13 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [moola-market](./moola-market/brief.md) | $1.14M | celo | 100 | 40/100 (40%) | 40.0% | 26.7% (OpenZeppelin) | 3 | stale | ❓ unknown | - |
| [moonbase-alpha](./moonbase-alpha/brief.md) | $2.53K | arbitrum | 5 | 1/5 (20%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mooniswap](./mooniswap/brief.md) | $391.90K | ethereum | 726 | 1/726 (0%) | - | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [moonlander](./moonlander/brief.md) | $28.80M | cronos | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [moonswap](./moonswap/brief.md) | $105.95K | moonriver | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [moonwell](./moonwell/brief.md) | $132.91M | 5 | 124 | 109/124 (88%) | 7.8% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [moonwell-apollo](./moonwell-apollo/brief.md) | $831.15K | 5 | 108 | 93/108 (86%) | 11.8% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [moraswap](./moraswap/brief.md) | $6.51K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [more-markets](./more-markets/brief.md) | $9.83M | 4 | 24 | 21/24 (88%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [moremarkets.xyz](./moremarkets.xyz/brief.md) | $604.61K | ethereum | 270 | 270/270 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [moremoney](./moremoney/brief.md) | $7.50K | avalanche | 822 | 43/822 (5%) | 2.4% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [morph-bridge](./morph-bridge/brief.md) | $12.94M | ethereum | 11 | 11/11 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [morpheusai](./morpheusai/brief.md) | $19.90M | 4 | 113 | 67/113 (59%) | 50.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [morpho](./morpho/brief.md) | $13812.83M | 4 | 181 | 181/181 (100%) | 11.0% | 11.0% (Certora, ChainSecurity, OpenZeppelin, Spearbit) | 16 | fresh | ❓ unknown | - |
| [mortgagefi](./mortgagefi/brief.md) | $730.64K | arbitrum, base | 21 | 5/21 (24%) | 40.0% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [mountain-protocol](./mountain-protocol/brief.md) | $1.40M | 6 | 6 | 5/6 (83%) | 100.0% | 100.0% (OpenZeppelin) | 1 | stale | ❓ unknown | - |
| [movegpt](./movegpt/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [moveposition](./moveposition/brief.md) | $6.89M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [mr.-lightspeed-creator-coin](./mr.-lightspeed-creator-coin/brief.md) | $0.00 | base, zora | 4 | 3/4 (75%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [mu-digital](./mu-digital/brief.md) | $17.30M | ethereum | 21 | 21/21 (100%) | 28.6% | 28.6% (SlowMist) | 1 | fresh | ❓ unknown | - |
| [muffin](./muffin/brief.md) | $106.22K | ethereum | 4 | 4/4 (100%) | 75.0% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [mugenfinance](./mugenfinance/brief.md) | $0.00 | arbitrum | 13 | 10/13 (77%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [multibit-protocol](./multibit-protocol/brief.md) | $146.28K | ethereum | 3 | 3/3 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [multichain](./multichain/brief.md) | $36.35M | 21 | 30 | 10/30 (33%) | - | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [multichainz](./multichainz/brief.md) | - | arbitrum, base | 12 | 12/12 (100%) | 10.0% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [multipli.fi](./multipli.fi/brief.md) | $55.12M | arbitrum, ethereum | 25 | 25/25 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [mux-protocol](./mux-protocol/brief.md) | $7.96M | 5 | 1955 | 37/1955 (2%) | 29.0% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [mvl-staking](./mvl-staking/brief.md) | $794.18K | ethereum | 45 | 2/45 (4%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [mycelium](./mycelium/brief.md) | $264.69K | arbitrum | 41 | 41/41 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [myriad-markets](./myriad-markets/brief.md) | $466.58K | bsc, linea | 39 | 39/39 (100%) | 8.6% | 8.6% (Code4rena, Cyfrin, MixBytes, Spearbit) | 15 | fresh | ❓ unknown | - |
| [myso](./myso/brief.md) | $27.47K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [mystic-finance](./mystic-finance/brief.md) | $5.09M | ethereum | 5 | 0/5 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [mytrade](./mytrade/brief.md) | $7.52K | polygon | 337 | 2/337 (1%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [myx-finance](./myx-finance/brief.md) | $190.88K | 4 | 1443 | 6/1443 (0%) | - | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nabla-finance](./nabla-finance/brief.md) | $89.24K | 4 | 216 | 19/216 (9%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nado](./nado/brief.md) | $47.62M | ink | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [narbet](./narbet/brief.md) | $8.75K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [narwhalswap](./narwhalswap/brief.md) | $319.14K | bsc | 27 | 27/27 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nasdex](./nasdex/brief.md) | - | polygon | 13 | 13/13 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [native](./native/brief.md) | $49.09M | 6 | 94 | 66/94 (70%) | 55.4% | 0.0% (-) | 8 | fresh | ❓ unknown | - |
| [navi-protocol](./navi-protocol/brief.md) | $266.72M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [navigator](./navigator/brief.md) | $644.31K | arbitrum, sonic | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nawa-protocol](./nawa-protocol/brief.md) | $4.13M | ethereum | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [nbx](./nbx/brief.md) | $1.15M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [near-intents](./near-intents/brief.md) | $76.67M | gnosis | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [neemo-finance](./neemo-finance/brief.md) | $859.82K | ethereum | 14 | 2/14 (14%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [neku](./neku/brief.md) | $1.60M | arbitrum, moonriver | 128 | 8/128 (6%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nemo](./nemo/brief.md) | $74.92K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nemoswap](./nemoswap/brief.md) | $64.56K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [neo-tokyo](./neo-tokyo/brief.md) | $849.96K | ethereum | 85 | 37/85 (44%) | 5.6% | 5.6% (Code4rena) | 3 | stale | ❓ unknown | - |
| [neony-exchange](./neony-exchange/brief.md) | $413.20K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [neopin](./neopin/brief.md) | $41.98M | ethereum, klaytn, polygon | 84 | 0/84 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [neptune-finance](./neptune-finance/brief.md) | $4.69M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [nerona](./nerona/brief.md) | $7.10M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nerve](./nerve/brief.md) | $1.46M | bsc, ethereum | 65 | 21/65 (32%) | 40.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [nervebridge](./nervebridge/brief.md) | $523.70K | bsc, ethereum, optimism | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nest](./nest/brief.md) | $21.53M | bsc, ethereum, hyperliquid | 301 | 85/301 (28%) | 30.8% | 17.9% (Code4rena, MixBytes) | 8 | fresh | ❓ unknown | - |
| [nest-credit](./nest-credit/brief.md) | $73.67M | 4 | 20 | 10/20 (50%) | 77.8% | 55.6% (Spearbit) | 8 | fresh | ❓ unknown | - |
| [nested](./nested/brief.md) | $125.32K | 5 | 18 | 18/18 (100%) | 75.0% | 75.0% (Code4rena) | 5 | stale | ❓ unknown | - |
| [netswap](./netswap/brief.md) | $1.23M | metis | 53 | 29/53 (55%) | 0.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [netweave-finance](./netweave-finance/brief.md) | $12.13K | mode | 12 | 10/12 (83%) | 0.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [neuralai](./neuralai/brief.md) | $1.09M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [neutra-finance](./neutra-finance/brief.md) | $3.21K | arbitrum | 25 | 10/25 (40%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [neutral-trade](./neutral-trade/brief.md) | $11.83M | ethereum, hyperliquid | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [neutrino](./neutrino/brief.md) | - | bsc, ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [neuy](./neuy/brief.md) | - | polygon | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [neverland](./neverland/brief.md) | $105.49M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [nex](./nex/brief.md) | $109.90 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nexo](./nexo/brief.md) | $276.88M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nexus-mutual](./nexus-mutual/brief.md) | $76.71M | ethereum | 23 | 23/23 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nexus-protocol](./nexus-protocol/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nf3-ape](./nf3-ape/brief.md) | $4.00K | ethereum | 2 | 2/2 (100%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [nftfi](./nftfi/brief.md) | $9.65K | ethereum | 40 | 38/40 (95%) | 18.4% | 0.0% (-) | 5 | stale | ❓ unknown | - |
| [nftx](./nftx/brief.md) | $1.17M | arbitrum, ethereum | 158 | 109/158 (69%) | 35.3% | 34.3% (Code4rena, Trail of Bits) | 5 | stale | ❓ unknown | - |
| [nile-exchange](./nile-exchange/brief.md) | $536.23K | linea | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nimbora](./nimbora/brief.md) | $313.69K | ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [niob-finance](./niob-finance/brief.md) | - | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nirvana](./nirvana/brief.md) | $2.67M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nlx-protocol](./nlx-protocol/brief.md) | $718.27 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [noble](./noble/brief.md) | $150.51M | base, ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nodedao](./nodedao/brief.md) | $22.32M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [nodeops](./nodeops/brief.md) | - | ethereum | 9 | 8/9 (89%) | 16.7% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [nolus-protocol](./nolus-protocol/brief.md) | $409.27K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [nomad](./nomad/brief.md) | $323.64K | ethereum, moonbeam | 86 | 86/86 (100%) | 3.6% | 3.6% (Immunefi) | 8 | unknown | ❓ unknown | - |
| [nomiswap](./nomiswap/brief.md) | $1.38M | bsc | 83 | 11/83 (13%) | 18.2% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [nonkyc](./nonkyc/brief.md) | $5.27M | 4 | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [noon](./noon/brief.md) | $32.60M | ethereum, hyperliquid, zksync-era | 30 | 20/30 (67%) | 13.3% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [nostra](./nostra/brief.md) | $5.29M | ethereum | 120 | 0/120 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [notional](./notional/brief.md) | $3.10M | arbitrum, ethereum | 107 | 98/107 (92%) | 7.4% | 7.4% (Sherlock) | 5 | fresh | ❓ unknown | - |
| [nsure](./nsure/brief.md) | $160.12K | ethereum | 9 | 9/9 (100%) | 77.8% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [nucleus](./nucleus/brief.md) | $23.88M | ethereum | 7 | 7/7 (100%) | 50.0% | 33.3% (Spearbit) | 7 | fresh | ❓ unknown | - |
| [nuls](./nuls/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [numisme](./numisme/brief.md) | $246.50 | ethereum | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [nusa](./nusa/brief.md) | - | bsc | 22 | 22/22 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nx-finance](./nx-finance/brief.md) | $1.92M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [nxd-protocol](./nxd-protocol/brief.md) | $0.00 | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [o.lab](./o.lab/brief.md) | $37.59K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [o2-exchange](./o2-exchange/brief.md) | $2.14M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [o3-swap](./o3-swap/brief.md) | $0.00 | 10 | 4 | 1/4 (25%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [obeliskbtc](./obeliskbtc/brief.md) | $6.92M | ethereum | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [obol](./obol/brief.md) | $553.02M | ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [obsidian](./obsidian/brief.md) | $1.26M | cronos | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ocean-point](./ocean-point/brief.md) | $858.07K | ethereum | 23 | 11/23 (48%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ocp-finance](./ocp-finance/brief.md) | $9.83K | bsc | 30 | 7/30 (23%) | 0.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [octopus-network](./octopus-network/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [octus-bridge](./octus-bridge/brief.md) | $392.49K | polygon | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [odos](./odos/brief.md) | - | 16 | 567 | 4/567 (1%) | 50.0% | 0.0% (-) | 3 | aging | ❓ unknown | - |
| [odyssey-finance](./odyssey-finance/brief.md) | $9.35M | base, ethereum, optimism | 76 | 71/76 (93%) | 25.9% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [okcoin](./okcoin/brief.md) | $20.45M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [okieswap](./okieswap/brief.md) | $143.32K | hyperliquid | 12 | 12/12 (100%) | 9.1% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [okx](./okx/brief.md) | $21197.17M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [olive](./olive/brief.md) | $46.08K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [olive-network](./olive-network/brief.md) | $63.58K | ethereum | 5 | 5/5 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [olivedao](./olivedao/brief.md) | $7.41K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [olympus-dao](./olympus-dao/brief.md) | - | 5 | 397 | 397/397 (100%) | 6.4% | 0.0% (-) | 5 | fresh | ❓ unknown | - |
| [omni-liquid-staking](./omni-liquid-staking/brief.md) | $178.09K | moonbeam, moonriver | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [omnibtc](./omnibtc/brief.md) | $1.86M | 7 | 50 | 10/50 (20%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [omnipool](./omnipool/brief.md) | $297.61 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [onchaingm](./onchaingm/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [ondo-finance](./ondo-finance/brief.md) | $3552.28M | 4 | 109 | 109/109 (100%) | 62.1% | 45.6% (Code4rena, Cyfrin, Spearbit) | 22 | fresh | ❓ unknown | - |
| [oneswap](./oneswap/brief.md) | $226.62K | bsc, ethereum | 7 | 7/7 (100%) | 100.0% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [oni-exchange](./oni-exchange/brief.md) | $1.20K | bsc | 4 | 3/4 (75%) | 33.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [onx-finance](./onx-finance/brief.md) | $198.40K | avalanche, ethereum, polygon | 142 | 142/142 (100%) | 16.1% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [onyx](./onyx/brief.md) | $48.12M | ethereum | 7 | 5/7 (71%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [oortswap](./oortswap/brief.md) | $829.52 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [open-ticketing-ecosystem](./open-ticketing-ecosystem/brief.md) | $917.48K | base, ethereum, polygon | 81 | 6/81 (7%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [openeden](./openeden/brief.md) | $219.55M | 6 | 1263 | 197/1263 (16%) | 5.9% | 3.9% (ChainSecurity) | 5 | aging | ❓ unknown | - |
| [openledger](./openledger/brief.md) | $80.86K | bsc, ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [openleverage](./openleverage/brief.md) | $84.92K | arbitrum, bsc, ethereum | 50 | 14/50 (28%) | 64.3% | 14.3% (Code4rena) | 8 | stale | ❓ unknown | - |
| [openocean](./openocean/brief.md) | - | 6 | 33 | 33/33 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [opensea](./opensea/brief.md) | - | base, ethereum, hyperliquid | 127 | 72/127 (57%) | 1.4% | 1.4% (Trail of Bits) | 1 | stale | ❓ unknown | - |
| [opensky-finance](./opensky-finance/brief.md) | $15.79K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [opentrade](./opentrade/brief.md) | $218.06M | avalanche, ethereum | 30 | 30/30 (100%) | 51.9% | 18.5% (Spearbit) | 6 | fresh | ❓ unknown | - |
| [opinion](./opinion/brief.md) | $5.08M | bsc, ethereum | 8 | 6/8 (75%) | 100.0% | 0.0% (-) | 4 | fresh | ❓ unknown | - |
| [opium](./opium/brief.md) | $118.02K | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [optimism-bridge](./optimism-bridge/brief.md) | $578.98M | ethereum, optimism | 60 | 60/60 (100%) | 7.7% | 2.6% (Code4rena) | 20 | fresh | ❓ unknown | - |
| [opulous](./opulous/brief.md) | - | arbitrum | 11 | 11/11 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [opyn](./opyn/brief.md) | $1.50M | avalanche, ethereum | 97 | 22/97 (23%) | 45.5% | 45.5% (OpenZeppelin, Trail of Bits) | 4 | stale | ❓ unknown | - |
| [orangex](./orangex/brief.md) | $31.38M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [orbit-bridge](./orbit-bridge/brief.md) | $14.58M | 5 | 19 | 4/19 (21%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [orbit-protocol](./orbit-protocol/brief.md) | $418.28K | blast | 13 | 13/13 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [orbiter-one](./orbiter-one/brief.md) | $108.69K | moonbeam | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [orbs](./orbs/brief.md) | - | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [orchai](./orchai/brief.md) | $271.37K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [orcus-finance](./orcus-finance/brief.md) | $362.32K | moonbeam | 5 | 0/5 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [orderly-chain](./orderly-chain/brief.md) | $205.25K | ethereum | 1 | 1/1 (100%) | 100.0% | 100.0% (Sherlock) | 1 | fresh | ❓ unknown | - |
| [origami-finance](./origami-finance/brief.md) | $183.83M | arbitrum, berachain, ethereum | 70 | 70/70 (100%) | 67.6% | 0.0% (-) | 21 | fresh | ❓ unknown | - |
| [osl](./osl/brief.md) | $19.58M | scroll | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [osmosis-dex](./osmosis-dex/brief.md) | $13.69M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ostium](./ostium/brief.md) | $57.61M | arbitrum | 16 | 16/16 (100%) | 80.0% | 0.0% (-) | 7 | fresh | ❓ unknown | - |
| [otsea](./otsea/brief.md) | $372.44K | base, ethereum | 20 | 6/20 (30%) | 33.3% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [outcome-finance](./outcome-finance/brief.md) | $986.64K | boba, ethereum, polygon | 82 | 3/82 (4%) | - | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [overnight-finance](./overnight-finance/brief.md) | $9.93M | 8 | 4989 | 29/4989 (1%) | 42.9% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [overtime](./overtime/brief.md) | $2.52M | 5 | 1705 | 69/1705 (4%) | 7.5% | 0.0% (-) | 3 | aging | ❓ unknown | - |
| [oxiswap](./oxiswap/brief.md) | $0.16 | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [p2pb2b](./p2pb2b/brief.md) | $4.08M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [paal-ai](./paal-ai/brief.md) | $832.54K | ethereum | 4 | 3/4 (75%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [pact](./pact/brief.md) | $1.70M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [padswap](./padswap/brief.md) | $115.35K | bsc | 24 | 8/24 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [paimon](./paimon/brief.md) | $11.74M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [paladin-finance](./paladin-finance/brief.md) | $27.61K | ethereum | 35 | 34/35 (97%) | 31.3% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [palladium-protocol](./palladium-protocol/brief.md) | $1.12K | ethereum | 18 | 0/18 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [palmswap](./palmswap/brief.md) | $0.00 | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [palmy-finance](./palmy-finance/brief.md) | $12.62K | ethereum | 28 | 0/28 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pancakeswap](./pancakeswap/brief.md) | $2086.05M | 4 | 105 | 105/105 (100%) | 19.2% | 13.5% (Cyfrin, SlowMist) | 16 | fresh | ❓ unknown | - |
| [pandora](./pandora/brief.md) | $8.79K | bsc | 28 | 23/28 (82%) | 21.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [pangea-swap](./pangea-swap/brief.md) | $6.35K | chain-1001, chain-31337, klaytn | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pangolin](./pangolin/brief.md) | $2.34M | avalanche | 152 | 15/152 (10%) | 53.3% | 0.0% (-) | 8 | aging | ❓ unknown | - |
| [panther-protocol](./panther-protocol/brief.md) | - | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pantherswap](./pantherswap/brief.md) | $240.57K | bsc | 11 | 11/11 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [paradex](./paradex/brief.md) | $27.28M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [paragonsdao](./paragonsdao/brief.md) | $5.03M | base, ethereum | 4 | 4/4 (100%) | 33.3% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [parallel-protocol](./parallel-protocol/brief.md) | $2.62M | 19 | 32 | 26/32 (81%) | 37.5% | 0.0% (-) | 5 | aging | ❓ unknown | - |
| [paraluni](./paraluni/brief.md) | $340.44K | bsc | 9 | 9/9 (100%) | 11.1% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [parasail](./parasail/brief.md) | $2.60M | arbitrum | 35 | 1/35 (3%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pareto](./pareto/brief.md) | $202.33M | 4 | 162 | 162/162 (100%) | 28.9% | 4.1% (ConsenSys Diligence) | 4 | stale | ❓ unknown | - |
| [particle](./particle/brief.md) | - | blast | 22 | 22/22 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [paryonusd](./paryonusd/brief.md) | $494.41K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [paxe-protocol](./paxe-protocol/brief.md) | $0.00 | bsc | 8 | 6/8 (75%) | 16.7% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [paxos](./paxos/brief.md) | $1812.14M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [pay-protocol](./pay-protocol/brief.md) | $641.10K | ethereum | 8 | 0/8 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pbg](./pbg/brief.md) | $5.47K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [peakdefi](./peakdefi/brief.md) | $128.87K | ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [peapods-finance](./peapods-finance/brief.md) | $5.27M | 6 | 132 | 39/132 (30%) | 34.4% | 0.0% (-) | 4 | aging | ❓ unknown | - |
| [peer](./peer/brief.md) | $120.95K | base | 29 | 29/29 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pegasusdollar](./pegasusdollar/brief.md) | $14.01K | cronos | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pell-network](./pell-network/brief.md) | $217.86K | ethereum | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pembrock-finance](./pembrock-finance/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pendle](./pendle/brief.md) | $1217.85M | 10 | 467 | 467/467 (100%) | 22.1% | 18.5% (ChainSecurity, Spearbit) | 20 | fresh | ❓ unknown | - |
| [pepeteam](./pepeteam/brief.md) | $1.05M | bsc, polygon | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pepu-bridge](./pepu-bridge/brief.md) | $330.80K | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [percent-finance](./percent-finance/brief.md) | - | ethereum | 25 | 25/25 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [perennial](./perennial/brief.md) | - | arbitrum | 70 | 70/70 (100%) | 36.1% | 36.1% (Sherlock) | 14 | aging | ❓ unknown | - |
| [perpetual-protocol](./perpetual-protocol/brief.md) | $459.10K | ethereum, optimism | 40 | 40/40 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [perpl](./perpl/brief.md) | $2.08M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [phantom-sol](./phantom-sol/brief.md) | $114.26M | ethereum | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pharaoh-exchange](./pharaoh-exchange/brief.md) | $41.12M | avalanche | 87 | 61/87 (70%) | 12.7% | 12.7% (Code4rena, ConsenSys Diligence) | 2 | aging | ❓ unknown | - |
| [phemex](./phemex/brief.md) | $275.88M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [phoenix](./phoenix/brief.md) | $1.04M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [phoenix-bonds](./phoenix-bonds/brief.md) | $229.15K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [phoenix-defi-hub](./phoenix-defi-hub/brief.md) | $522.11K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [phuture](./phuture/brief.md) | $29.89K | avalanche, ethereum | 10 | 7/10 (70%) | 66.7% | 16.7% (Code4rena) | 3 | stale | ❓ unknown | - |
| [pickle](./pickle/brief.md) | $3.98M | 5 | 605 | 31/605 (5%) | 7.1% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [picnic](./picnic/brief.md) | $200.47K | polygon | 20 | 20/20 (100%) | 10.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [picwe](./picwe/brief.md) | $504.54K | arbitrum, base | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [piedao](./piedao/brief.md) | $586.13K | ethereum | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [piggybank](./piggybank/brief.md) | $1.93M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pika-protocol](./pika-protocol/brief.md) | $401.56K | optimism | 64 | 44/64 (69%) | 14.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [piku](./piku/brief.md) | $8.68M | ethereum | 57 | 55/57 (96%) | 44.4% | 44.4% (Code4rena) | 2 | stale | ❓ unknown | - |
| [pine-protocol](./pine-protocol/brief.md) | - | ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pinksale](./pinksale/brief.md) | $137.81M | 4 | 60 | 60/60 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pinkswap](./pinkswap/brief.md) | $395.15K | bsc | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pionex](./pionex/brief.md) | $90.10M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pippi](./pippi/brief.md) | $75.17K | heco | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [plasma-one](./plasma-one/brief.md) | $8.75M | plasma | 4 | 2/4 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [plasma-saving-vaults](./plasma-saving-vaults/brief.md) | $33.19M | plasma | 3 | 2/3 (67%) | 100.0% | 100.0% (Spearbit) | 1 | stale | ❓ unknown | - |
| [pleasing-gold](./pleasing-gold/brief.md) | - | arbitrum, ethereum | 11 | 7/11 (64%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ploutos-money](./ploutos-money/brief.md) | $478.42 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [plutusdao](./plutusdao/brief.md) | $341.94K | arbitrum | 78 | 78/78 (100%) | 8.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [pnetwork](./pnetwork/brief.md) | $13.10M | 5 | 5 | 1/5 (20%) | - | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pods-finance](./pods-finance/brief.md) | $387.92K | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [polkamarkets](./polkamarkets/brief.md) | $11.95K | 5 | 63 | 10/63 (16%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [polkastarter](./polkastarter/brief.md) | $2.31M | bsc, ethereum | 3 | 2/3 (67%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [polycat-finance](./polycat-finance/brief.md) | $289.49K | polygon | 7 | 7/7 (100%) | 14.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [polydex](./polydex/brief.md) | $2.78K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [polygon-bridge](./polygon-bridge/brief.md) | $2738.90M | ethereum, polygon | 66 | 66/66 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [polygon-zkevm-bridge](./polygon-zkevm-bridge/brief.md) | $74.88M | ethereum | 21 | 21/21 (100%) | 52.6% | 10.5% (Spearbit) | 5 | aging | ❓ unknown | - |
| [polygonfarm-finance](./polygonfarm-finance/brief.md) | $51.21K | polygon | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [polymarket](./polymarket/brief.md) | $467.04M | ethereum, polygon | 33 | 33/33 (100%) | 74.2% | 51.6% (Spearbit) | 21 | fresh | ❓ unknown | - |
| [polynomial-protocol](./polynomial-protocol/brief.md) | $5.24M | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [polyo-exchange](./polyo-exchange/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [polywhale-finance](./polywhale-finance/brief.md) | $101.65K | polygon | 1123 | 2/1123 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pond0x](./pond0x/brief.md) | $1.45M | ethereum | 10 | 5/10 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [poof-cash](./poof-cash/brief.md) | $172.10K | celo | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pool-party](./pool-party/brief.md) | $271.20K | base | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [poolshark](./poolshark/brief.md) | $59.56K | arbitrum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [poolside](./poolside/brief.md) | $28.74K | base | 2 | 2/2 (100%) | 50.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [pooltogether](./pooltogether/brief.md) | $8.73M | 8 | 138 | 89/138 (64%) | 1.1% | 0.0% (-) | 1 | unknown | ❓ unknown | - |
| [poolz-finance](./poolz-finance/brief.md) | - | 8 | 34 | 34/34 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [position-exchange](./position-exchange/brief.md) | - | bsc | 52 | 52/52 (100%) | 2.4% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [potatoswap](./potatoswap/brief.md) | $4.48M | ethereum | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [powercity](./powercity/brief.md) | $2.49M | ethereum | 17 | 0/17 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [powh3d](./powh3d/brief.md) | $3.27M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [prdt](./prdt/brief.md) | $389.89K | bsc, ethereum, polygon | 11 | 11/11 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [predict-fun](./predict-fun/brief.md) | $23.81M | blast, bsc | 39 | 24/39 (62%) | 41.7% | 8.3% (Cyfrin) | 6 | fresh | ❓ unknown | - |
| [predictcoin](./predictcoin/brief.md) | $112.86 | bsc | 48 | 2/48 (4%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [prime-staking](./prime-staking/brief.md) | $478.35K | base | 9 | 1/9 (11%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [prime-vaults](./prime-vaults/brief.md) | $7.78K | berachain | 45 | 4/45 (9%) | 75.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [primefi](./primefi/brief.md) | $174.87K | base, hyperliquid | 124 | 65/124 (52%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [print3r](./print3r/brief.md) | $9.82 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [printr](./printr/brief.md) | $131.26K | mantle | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [prism-protocol](./prism-protocol/brief.md) | $2.42K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [privacy-cash](./privacy-cash/brief.md) | $1.27M | base, ethereum | 8 | 3/8 (38%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [privacy-pools](./privacy-pools/brief.md) | $7.68M | arbitrum, ethereum, optimism | 6 | 5/6 (83%) | - | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [probit-global](./probit-global/brief.md) | $10.20M | fantom | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [prosper](./prosper/brief.md) | - | bsc, ethereum | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [proxy](./proxy/brief.md) | $15.27M | ethereum, polygon | 274 | 7/274 (3%) | 28.6% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [pstake-finance](./pstake-finance/brief.md) | $192.83K | 4 | 12 | 12/12 (100%) | 62.5% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [psyoptions](./psyoptions/brief.md) | $488.73K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pu239](./pu239/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [puddingswap](./puddingswap/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [puff-penthouse](./puff-penthouse/brief.md) | - | mantle | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [puffer-finance](./puffer-finance/brief.md) | $42.78M | ethereum | 75 | 56/75 (75%) | 1.9% | 1.9% (SlowMist) | 4 | stale | ❓ unknown | - |
| [pulsar-swap](./pulsar-swap/brief.md) | $11.10K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pulse-rate](./pulse-rate/brief.md) | $25.09K | ethereum | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pulsechain](./pulsechain/brief.md) | $47.42M | ethereum | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pulsechain-bridge](./pulsechain-bridge/brief.md) | $47.42M | ethereum | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pump-party](./pump-party/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pumpbase](./pumpbase/brief.md) | $0.00 | base | 14 | 1/14 (7%) | 100.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [pumpspace](./pumpspace/brief.md) | $3.12M | avalanche | 731 | 5/731 (1%) | 33.3% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [punks-terminal](./punks-terminal/brief.md) | $1.33M | ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pureswap](./pureswap/brief.md) | $220.80K | bsc | 6 | 6/6 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [puzzleswaporg](./puzzleswaporg/brief.md) | $925.46K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pv01](./pv01/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [pyron](./pyron/brief.md) | $1.76M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [pyth](./pyth/brief.md) | - | 8 | 15 | 15/15 (100%) | 57.1% | 0.0% (-) | 10 | fresh | ❓ unknown | - |
| [q-borrowing](./q-borrowing/brief.md) | $6.16K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [qao](./qao/brief.md) | $0.00 | ethereum | 3 | 1/3 (33%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [qian](./qian/brief.md) | $3.61K | ethereum | 101 | 3/101 (3%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [qidao](./qidao/brief.md) | $2.44M | 20 | 1410 | 76/1410 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [quantum-unit](./quantum-unit/brief.md) | $29.17 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [qubit](./qubit/brief.md) | $14.20K | bsc | 64 | 19/64 (30%) | 100.0% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [quickswap](./quickswap/brief.md) | $279.58M | 4 | 84 | 84/84 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [quipuswap](./quipuswap/brief.md) | $423.97K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [quoll](./quoll/brief.md) | $17.88K | arbitrum, bsc | 1241 | 60/1241 (5%) | 8.5% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [ra-exchange](./ra-exchange/brief.md) | $646.70K | fraxtal | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [raac](./raac/brief.md) | $106.25M | ethereum | 19 | 19/19 (100%) | 94.1% | 0.0% (-) | 8 | fresh | ❓ unknown | - |
| [raccoon-finance](./raccoon-finance/brief.md) | $0.00 | base | 10 | 1/10 (10%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [radiant](./radiant/brief.md) | $1.67M | 4 | 1550 | 48/1550 (3%) | 36.4% | 21.2% (OpenZeppelin) | 10 | fresh | ❓ unknown | - |
| [radioshack](./radioshack/brief.md) | $440.91K | 5 | 55 | 55/55 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [raft](./raft/brief.md) | $12.90K | ethereum | 51 | 12/51 (24%) | 58.3% | 58.3% (Trail of Bits) | 1 | stale | ❓ unknown | - |
| [rage-protocol](./rage-protocol/brief.md) | $232.09K | base | 23 | 22/23 (96%) | 27.3% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [rage-trade-v1](./rage-trade-v1/brief.md) | $6.01 | arbitrum | 13 | 10/13 (77%) | 12.5% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [railgun](./railgun/brief.md) | $232.66M | 4 | 101 | 41/101 (41%) | 33.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [rain](./rain/brief.md) | $29.51M | arbitrum | 33 | 33/33 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [rainbow-bridge](./rainbow-bridge/brief.md) | $1.58M | ethereum | 4 | 4/4 (100%) | 100.0% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [rank-trading](./rank-trading/brief.md) | $1.80M | bsc | 12 | 6/12 (50%) | 33.3% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [rari-capital](./rari-capital/brief.md) | $1.28M | ethereum | 205 | 44/205 (21%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ratex](./ratex/brief.md) | $2.87M | bsc | 154 | 79/154 (51%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [re](./re/brief.md) | $246.86M | 5 | 41 | 41/41 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [re7-labs](./re7-labs/brief.md) | $81.85M | 6 | 16 | 16/16 (100%) | 20.0% | 20.0% (Spearbit) | 11 | fresh | ❓ unknown | - |
| [realt](./realt/brief.md) | $217.29M | gnosis | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [reddex](./reddex/brief.md) | - | bsc, ethereum | 31 | 31/31 (100%) | 9.7% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [redstone-oracles](./redstone-oracles/brief.md) | - | base, bsc, ethereum | 180 | 180/180 (100%) | 11.3% | 11.3% (Certora, Sherlock, Spearbit, Trail of Bits) | 8 | fresh | ❓ unknown | - |
| [reflexer](./reflexer/brief.md) | $1.73M | ethereum | 51 | 9/51 (18%) | 77.8% | 11.1% (OpenZeppelin) | 4 | stale | ❓ unknown | - |
| [reformdao](./reformdao/brief.md) | - | ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rehold](./rehold/brief.md) | $11.00 | fantom | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [renec-lend](./renec-lend/brief.md) | $5.10K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [renzo](./renzo/brief.md) | $88.29M | 7 | 88 | 88/88 (100%) | 44.8% | 0.0% (-) | 11 | fresh | ❓ unknown | - |
| [reppo](./reppo/brief.md) | $5.59M | base | 10 | 1/10 (10%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [republic-note](./republic-note/brief.md) | $11.66M | avalanche | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [reserve-protocol](./reserve-protocol/brief.md) | $47.74M | 4 | 1138 | 100/1138 (9%) | 21.1% | 15.8% (Trail of Bits) | 5 | fresh | ❓ unknown | - |
| [reservoir-protocol](./reservoir-protocol/brief.md) | $46.51M | 9 | 150 | 95/150 (63%) | 12.0% | 0.0% (-) | 4 | fresh | ❓ unknown | - |
| [resolv](./resolv/brief.md) | $10.71M | bsc, ethereum, plasma | 70 | 56/70 (80%) | 2.5% | 2.5% (Sherlock) | 1 | aging | ❓ unknown | - |
| [resupply](./resupply/brief.md) | $38.23M | ethereum | 97 | 39/97 (40%) | - | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [revault](./revault/brief.md) | $1.84M | bsc | 1708 | 10/1708 (1%) | 20.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [revert](./revert/brief.md) | $7.69M | 7 | 150 | 16/150 (11%) | 92.3% | 30.8% (Spearbit) | 11 | fresh | ❓ unknown | - |
| [revest-finance](./revest-finance/brief.md) | - | 7 | 40 | 40/40 (100%) | 25.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [revoluzion](./revoluzion/brief.md) | - | bsc | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [rex-staking](./rex-staking/brief.md) | $1.58M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [reya](./reya/brief.md) | $16.03M | 5 | 838 | 4/838 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [rezerve](./rezerve/brief.md) | $2.43M | 4 | 105 | 74/105 (70%) | 1.4% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [rhea-finance](./rhea-finance/brief.md) | $182.62M | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [rheo](./rheo/brief.md) | $29.54K | base, ethereum | 70 | 69/70 (99%) | 7.4% | 7.4% (Cantina, Code4rena, Spearbit) | 10 | fresh | ❓ unknown | - |
| [rhino.fi](./rhino.fi/brief.md) | $1.11M | 7 | 12 | 12/12 (100%) | 14.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [rho](./rho/brief.md) | $2.29M | arbitrum, ethereum | 166 | 2/166 (1%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [ribbon-finance](./ribbon-finance/brief.md) | $3.95M | avalanche, ethereum | 111 | 49/111 (44%) | 64.6% | 29.2% (OpenZeppelin) | 15 | stale | ❓ unknown | - |
| [rifts-finance](./rifts-finance/brief.md) | $1.00K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [rigoblock](./rigoblock/brief.md) | - | 7 | 77 | 77/77 (100%) | 2.8% | 2.8% (Immunefi) | 5 | unknown | ❓ unknown | - |
| [ring-protocol](./ring-protocol/brief.md) | $23.22M | 12 | 84 | 49/84 (58%) | 35.6% | 33.3% (OpenZeppelin, SlowMist, Spearbit) | 6 | fresh | ❓ unknown | - |
| [ringfi](./ringfi/brief.md) | $0.00 | bsc | 2 | 2/2 (100%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [rip.xyz](./rip.xyz/brief.md) | $907.83K | hyperliquid | 9 | 5/9 (56%) | 25.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [ripe-protocol](./ripe-protocol/brief.md) | - | base | 33 | 33/33 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rise-bridge](./rise-bridge/brief.md) | - | ethereum | 27 | 27/27 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [risex](./risex/brief.md) | $7.52M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rivera-money](./rivera-money/brief.md) | $769.53 | arbitrum, manta, polygon | 8 | 2/8 (25%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [robinhood](./robinhood/brief.md) | $10421.47M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [robiniaswap](./robiniaswap/brief.md) | $18.78K | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [rocifi](./rocifi/brief.md) | $45.83K | polygon | 43 | 30/43 (70%) | 16.7% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [rockawayx](./rockawayx/brief.md) | $163.75M | bsc, ethereum, sei | 297 | 297/297 (100%) | 21.2% | 21.2% (Spearbit) | 11 | fresh | ❓ unknown | - |
| [rocket-pool](./rocket-pool/brief.md) | $863.35M | ethereum | 83 | 83/83 (100%) | 92.8% | 92.8% (ConsenSys Diligence, Immunefi, Spearbit, Trail of Bits) | 14 | fresh | ❓ unknown | - |
| [rocketswap-base](./rocketswap-base/brief.md) | $357.13K | base | 8 | 8/8 (100%) | 25.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [rocksolid-network](./rocksolid-network/brief.md) | $18.86M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [roe-finance](./roe-finance/brief.md) | $4.18K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [roguex](./roguex/brief.md) | $28.95K | blast | 112 | 2/112 (2%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [rollie-finance](./rollie-finance/brief.md) | $4.16K | scroll | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [rollup-finance](./rollup-finance/brief.md) | $75.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rollx](./rollx/brief.md) | $509.61K | base | 23 | 23/23 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [ronin-bridge](./ronin-bridge/brief.md) | $3.54M | ethereum | 4 | 3/4 (75%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [rook](./rook/brief.md) | $1.22M | ethereum | 14 | 6/14 (43%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [rooster-protocol](./rooster-protocol/brief.md) | $2.26M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [root-finance](./root-finance/brief.md) | $2.10K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rosen-bridge](./rosen-bridge/brief.md) | $1.24M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [roseonx](./roseonx/brief.md) | $0.00 | arbitrum | 4 | 4/4 (100%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [router-protocol](./router-protocol/brief.md) | $9.87K | 8 | 70 | 12/70 (17%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [royco-protocol](./royco-protocol/brief.md) | $33.65M | 6 | 19 | 17/19 (89%) | 26.7% | 26.7% (Spearbit) | 2 | fresh | ❓ unknown | - |
| [rsk-bridge](./rsk-bridge/brief.md) | $98.41M | ethereum | 15 | 15/15 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [rswap](./rswap/brief.md) | $38.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rubic](./rubic/brief.md) | $127.06K | 6 | 12 | 5/12 (42%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [rubicon](./rubicon/brief.md) | $152.21K | 4 | 56 | 56/56 (100%) | 13.7% | 13.7% (Code4rena) | 2 | stale | ❓ unknown | - |
| [ruby.exchange](./ruby.exchange/brief.md) | $151.75K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [rumpel-labs](./rumpel-labs/brief.md) | $1.43M | ethereum | 116 | 99/116 (85%) | 1.1% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [rysk-finance](./rysk-finance/brief.md) | $45.77M | arbitrum, ethereum, hyperliquid | 632 | 38/632 (6%) | 21.6% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [ryze-protocol](./ryze-protocol/brief.md) | $361.77K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ryze.fi](./ryze.fi/brief.md) | $6.35K | arbitrum | 17 | 14/17 (82%) | 78.6% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [saber](./saber/brief.md) | $4.22M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sable-finance](./sable-finance/brief.md) | $571.94K | bsc | 20 | 18/20 (90%) | 5.6% | 5.6% (SlowMist) | 1 | stale | ❓ unknown | - |
| [saddle-finance](./saddle-finance/brief.md) | $735.65K | 5 | 34 | 29/34 (85%) | 37.9% | 34.5% (OpenZeppelin) | 3 | stale | ❓ unknown | - |
| [safe](./safe/brief.md) | $57.68M | ethereum | 12 | 11/12 (92%) | 50.0% | 0.0% (-) | 9 | aging | ❓ unknown | - |
| [saffron-finance](./saffron-finance/brief.md) | - | ethereum | 20 | 20/20 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sai](./sai/brief.md) | $184.38K | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sakai-vault](./sakai-vault/brief.md) | - | bsc | 8 | 8/8 (100%) | 12.5% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [sakefinance](./sakefinance/brief.md) | $1.52M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [salvor](./salvor/brief.md) | $542.24K | avalanche, base | 267 | 158/267 (59%) | 6.3% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [sanctum](./sanctum/brief.md) | $1239.97M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sandclock](./sandclock/brief.md) | - | ethereum | 27 | 27/27 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sanko-bridge](./sanko-bridge/brief.md) | $1.70M | arbitrum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sashimiswap](./sashimiswap/brief.md) | $4.15M | ethereum, heco | 14 | 5/14 (36%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [satlayer](./satlayer/brief.md) | $176.49K | 4 | 625 | 67/625 (11%) | 7.6% | 0.0% (-) | 6 | fresh | ❓ unknown | - |
| [satori-finance](./satori-finance/brief.md) | $914.43K | 6 | 40 | 10/40 (25%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [satoshi-perps](./satoshi-perps/brief.md) | $4.63K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [saturn](./saturn/brief.md) | $187.11M | ethereum | 3 | 3/3 (100%) | 50.0% | 50.0% (Certora) | 4 | fresh | ❓ unknown | - |
| [saucerswap](./saucerswap/brief.md) | $23.33M | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [savvy](./savvy/brief.md) | $122.82K | arbitrum | 31 | 2/31 (6%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [scallop](./scallop/brief.md) | $23.07M | ethereum | 26 | 0/26 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [sceptre-liquid](./sceptre-liquid/brief.md) | $15.08M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [scientix](./scientix/brief.md) | $379.95K | bsc | 129 | 129/129 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [scream](./scream/brief.md) | $1.29M | fantom | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [scroll-bridge](./scroll-bridge/brief.md) | $34.19M | ethereum | 41 | 39/41 (95%) | 97.4% | 81.6% (OpenZeppelin) | 23 | fresh | ❓ unknown | - |
| [scrub-money](./scrub-money/brief.md) | $7.21M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sdai](./sdai/brief.md) | $66.12M | ethereum, gnosis | 144 | 72/144 (50%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [seafi](./seafi/brief.md) | $212.28K | avalanche | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [seamless-protocol](./seamless-protocol/brief.md) | $15.66M | base, ethereum | 113 | 104/113 (92%) | 4.0% | 4.0% (Sherlock, Spearbit) | 5 | fresh | ❓ unknown | - |
| [secretswap](./secretswap/brief.md) | $297.41K | ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sector-finance](./sector-finance/brief.md) | $54.16K | moonriver, optimism | 31 | 18/31 (58%) | 70.6% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [sectorone](./sectorone/brief.md) | $286.56K | base, ethereum | 19 | 19/19 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [secured-finance](./secured-finance/brief.md) | $589.51K | ethereum, polygon-zkevm | 117 | 31/117 (26%) | 60.7% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [securitize](./securitize/brief.md) | $4412.44M | 8 | 114 | 114/114 (100%) | 27.4% | 16.8% (Certora, Sherlock, Spearbit, Trail of Bits) | 9 | fresh | ❓ unknown | - |
| [seeder-finance](./seeder-finance/brief.md) | $2.80K | bsc | 25 | 25/25 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [seedify](./seedify/brief.md) | $29.40K | arbitrum, bsc, ethereum | 8 | 5/8 (63%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [seer](./seer/brief.md) | $983.76K | ethereum, gnosis | 197 | 26/197 (13%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [segment-finance](./segment-finance/brief.md) | $510.62K | bsc, opbnb | 76 | 62/76 (82%) | 3.6% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [seneca](./seneca/brief.md) | $11.17K | ethereum | 5 | 2/5 (40%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [sentiment](./sentiment/brief.md) | $1.20M | arbitrum | 258 | 15/258 (6%) | 100.0% | 14.3% (Sherlock) | 6 | aging | ❓ unknown | - |
| [sentora](./sentora/brief.md) | $2054.87M | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [serum](./serum/brief.md) | $14.52M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [set-protocol](./set-protocol/brief.md) | $8.91M | ethereum | 335 | 121/335 (36%) | - | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [set.wtf](./set.wtf/brief.md) | $494.27K | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [shadow-exchange](./shadow-exchange/brief.md) | $3.44M | sonic | 66 | 33/66 (50%) | 38.7% | 38.7% (Code4rena, ConsenSys Diligence, Spearbit) | 3 | fresh | ❓ unknown | - |
| [shape-bridge](./shape-bridge/brief.md) | $724.41K | ethereum | 27 | 23/27 (85%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [shapeshift](./shapeshift/brief.md) | $1.05M | 4 | 142 | 23/142 (16%) | - | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [shardingdao](./shardingdao/brief.md) | $5.90M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sheepdex](./sheepdex/brief.md) | $372.74K | bsc | 16 | 16/16 (100%) | 50.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [sheesha-finance](./sheesha-finance/brief.md) | - | bsc | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [shell-protocol](./shell-protocol/brief.md) | $109.82K | arbitrum, ethereum | 18 | 18/18 (100%) | 23.5% | 23.5% (Code4rena, Trail of Bits) | 3 | stale | ❓ unknown | - |
| [sherlock](./sherlock/brief.md) | $504.84K | ethereum | 30 | 30/30 (100%) | 41.4% | 41.4% (Sherlock, Trail of Bits) | 3 | stale | ❓ unknown | - |
| [sherpa](./sherpa/brief.md) | $451.08K | base | 1 | 1/1 (100%) | 100.0% | 100.0% (Cyfrin) | 1 | fresh | ❓ unknown | - |
| [shibaswap](./shibaswap/brief.md) | $4.23M | ethereum | 69 | 69/69 (100%) | 1.5% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [shield](./shield/brief.md) | $0.00 | bsc | 123 | 2/123 (2%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [shield-protocol](./shield-protocol/brief.md) | $34.50K | bsc | 38 | 28/38 (74%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [shift-protocol](./shift-protocol/brief.md) | $794.77K | arbitrum, base | 5 | 5/5 (100%) | 60.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [shimmerbridge](./shimmerbridge/brief.md) | $197.73K | optimism | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [shiny](./shiny/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [shoebill-finance](./shoebill-finance/brief.md) | $464.92K | 5 | 65 | 20/65 (31%) | 0.0% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [shprd](./shprd/brief.md) | $329.75K | bsc, ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sicx](./sicx/brief.md) | $861.27K | bsc | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sideshift](./sideshift/brief.md) | $12.92M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sienna-network](./sienna-network/brief.md) | $322.04K | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sierra-protocol](./sierra-protocol/brief.md) | $40.24M | avalanche, ethereum | 107 | 15/107 (14%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [sigma-money](./sigma-money/brief.md) | $2.71M | bsc | 920 | 146/920 (16%) | 27.3% | 25.9% (SlowMist) | 10 | fresh | ❓ unknown | - |
| [silo-finance](./silo-finance/brief.md) | $19.66M | 6 | 1246 | 68/1246 (5%) | 34.3% | 14.9% (Certora, Spearbit) | 10 | fresh | ❓ unknown | - |
| [single-finance](./single-finance/brief.md) | $168.39K | arbitrum | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [singularity-finance](./singularity-finance/brief.md) | $4.25M | base, ethereum | 164 | 16/164 (10%) | 46.7% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [singularitydao](./singularitydao/brief.md) | $634.04K | bsc, ethereum | 74 | 74/74 (100%) | 1.4% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [singularv](./singularv/brief.md) | $698.98K | ethereum | 713 | 49/713 (7%) | 30.6% | 30.6% (Certora, ChainSecurity, OpenZeppelin, Spearbit, Trail of Bits) | 24 | fresh | ❓ unknown | - |
| [singularx](./singularx/brief.md) | $1.35M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sir](./sir/brief.md) | $84.57K | ethereum, hyperliquid | 67 | 14/67 (21%) | 33.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [siren](./siren/brief.md) | $240.98K | arbitrum, ethereum, polygon | 16 | 16/16 (100%) | 23.1% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [sirius-finance](./sirius-finance/brief.md) | $7.25K | ethereum | 12 | 0/12 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [skale-network-bridge](./skale-network-bridge/brief.md) | $489.52K | ethereum | 222 | 81/222 (36%) | 13.9% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [skate-amm](./skate-amm/brief.md) | $123.90K | ethereum | 2 | 2/2 (100%) | 100.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [skate-fi](./skate-fi/brief.md) | $118.98K | ethereum, manta, mantle | 7 | 5/7 (71%) | 75.0% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [skcs](./skcs/brief.md) | $25.09K | ethereum | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [slender](./slender/brief.md) | $121.93 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [smardex-ecosystem](./smardex-ecosystem/brief.md) | $2.26M | 5 | 58 | 58/58 (100%) | 66.7% | 0.0% (-) | 4 | aging | ❓ unknown | - |
| [smartcoin](./smartcoin/brief.md) | $935.78 | avalanche | 5 | 4/5 (80%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [smartcredit](./smartcredit/brief.md) | $708.42K | ethereum | 90 | 9/90 (10%) | 14.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [smilee-finance](./smilee-finance/brief.md) | $932.96K | arbitrum, berachain | 191 | 28/191 (15%) | 18.5% | 18.5% (Spearbit) | 3 | aging | ❓ unknown | - |
| [smoothy](./smoothy/brief.md) | $487.55K | bsc, ethereum | 6 | 6/6 (100%) | 66.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [snake-finance](./snake-finance/brief.md) | - | sonic | 33 | 33/33 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [snowball](./snowball/brief.md) | $203.50K | avalanche | 369 | 369/369 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [snowbank](./snowbank/brief.md) | $3.79M | avalanche | 7 | 6/7 (86%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [snowbl-capital](./snowbl-capital/brief.md) | $372.85K | base, ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [snowflake-exchange](./snowflake-exchange/brief.md) | $106.48K | polygon | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [snuggle](./snuggle/brief.md) | $1.43M | arbitrum, base | 67 | 33/67 (49%) | 36.7% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [sofa.org](./sofa.org/brief.md) | $1.88M | 5 | 65 | 51/65 (78%) | 25.7% | 11.4% (Code4rena) | 11 | aging | ❓ unknown | - |
| [solace](./solace/brief.md) | $0.00 | ethereum, polygon | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [solana-farm](./solana-farm/brief.md) | $238.05 | bsc | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [solarbeam](./solarbeam/brief.md) | $146.42K | moonriver | 22 | 22/22 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [solayer](./solayer/brief.md) | $10.51M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [solera](./solera/brief.md) | $6.83M | ethereum | 6 | 0/6 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [solid](./solid/brief.md) | $74.65K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [solid-yield](./solid-yield/brief.md) | $329.83K | ethereum | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [solidly-labs](./solidly-labs/brief.md) | $624.67K | ethereum | 2 | 2/2 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [solo-top](./solo-top/brief.md) | $756.21K | bsc, polygon | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [solstice](./solstice/brief.md) | $505.47M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [solv-protocol](./solv-protocol/brief.md) | $441.35M | 7 | 96 | 96/96 (100%) | 30.7% | 2.3% (OpenZeppelin) | 13 | fresh | ❓ unknown | - |
| [solyard](./solyard/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sommelier](./sommelier/brief.md) | $835.85K | arbitrum, ethereum | 34 | 34/34 (100%) | 96.8% | 0.0% (-) | 18 | stale | ❓ unknown | - |
| [sonic-gateway](./sonic-gateway/brief.md) | $35.59M | sonic | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sonic-market](./sonic-market/brief.md) | $2.70K | sonic | 36 | 7/36 (19%) | 28.6% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [sonne-finance](./sonne-finance/brief.md) | - | base, optimism | 30 | 30/30 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sophon-bridge](./sophon-bridge/brief.md) | $19.89M | ethereum | 11 | 11/11 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [sophon-farm](./sophon-farm/brief.md) | $4.56M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [sorare-bridge](./sorare-bridge/brief.md) | $2.84M | ethereum | 28 | 8/28 (29%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sorta-finance](./sorta-finance/brief.md) | - | arbitrum | 11 | 11/11 (100%) | 22.2% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [sosovalue](./sosovalue/brief.md) | $82.73M | base, ethereum | 18 | 18/18 (100%) | 5.6% | 5.6% (SlowMist) | 3 | aging | ❓ unknown | - |
| [sovryn](./sovryn/brief.md) | $29.85M | base, ethereum | 6 | 0/6 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sovryn-bridge](./sovryn-bridge/brief.md) | $2.42M | ethereum | 45 | 3/45 (7%) | 100.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [spacebar](./spacebar/brief.md) | $635.43 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [spacefi](./spacefi/brief.md) | $826.94K | scroll, zksync-era | 29 | 0/29 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [spark](./spark/brief.md) | $7893.45M | 6 | 192 | 192/192 (100%) | 55.5% | 54.9% (Certora, ChainSecurity, OpenZeppelin, Spearbit, Trail of Bits) | 39 | fresh | ❓ unknown | - |
| [sparkdex](./sparkdex/brief.md) | $26.61M | ethereum | 20 | 0/20 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [sparklex](./sparklex/brief.md) | $5.49K | ethereum | 17 | 17/17 (100%) | 33.3% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [spartadex](./spartadex/brief.md) | $144.17K | arbitrum, linea | 11 | 11/11 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [spartan](./spartan/brief.md) | $5.54K | bsc | 13 | 3/13 (23%) | 66.7% | 66.7% (Code4rena) | 2 | stale | ❓ unknown | - |
| [spectra](./spectra/brief.md) | $41.52M | 8 | 960 | 73/960 (8%) | 13.8% | 12.3% (Code4rena, Sherlock) | 6 | fresh | ❓ unknown | - |
| [spectrum-protocol](./spectrum-protocol/brief.md) | $8.12K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sperax](./sperax/brief.md) | $1.77M | arbitrum, ethereum | 118 | 18/118 (15%) | 33.3% | 8.3% (SlowMist) | 7 | stale | ❓ unknown | - |
| [sphere](./sphere/brief.md) | $6.58M | 4 | 217 | 10/217 (5%) | 10.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [spherium](./spherium/brief.md) | $0.01 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [spice-protocol](./spice-protocol/brief.md) | $1.45K | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [spinup](./spinup/brief.md) | $453.34K | hyperliquid | 5 | 5/5 (100%) | 80.0% | 80.0% (ChainSecurity) | 3 | fresh | ❓ unknown | - |
| [spiraldao](./spiraldao/brief.md) | $6.38M | ethereum, zksync-era | 35 | 10/35 (29%) | 70.0% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [spiritswap](./spiritswap/brief.md) | $259.33K | fantom, sonic | 14 | 7/14 (50%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [splash-protocol](./splash-protocol/brief.md) | $3.08M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [splashing-stake](./splashing-stake/brief.md) | $4.91M | sei | 12 | 11/12 (92%) | 33.3% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [splice-finance](./splice-finance/brief.md) | $439.98K | blast, mode | 52 | 52/52 (100%) | 2.1% | 0.0% (-) | 5 | fresh | ❓ unknown | - |
| [spookyswap](./spookyswap/brief.md) | $848.28K | fantom, sonic | 86 | 40/86 (47%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sport.fun](./sport.fun/brief.md) | $2.94M | base | 24 | 24/24 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [spot-cash](./spot-cash/brief.md) | $204.03K | ethereum | 48 | 48/48 (100%) | 14.9% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [spreads-finance](./spreads-finance/brief.md) | - | ethereum | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [springx](./springx/brief.md) | $24.86K | plasma | 7 | 0/7 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [sprinter](./sprinter/brief.md) | $680.66K | 4 | 16 | 16/16 (100%) | 84.6% | 46.2% (Spearbit) | 4 | fresh | ❓ unknown | - |
| [sqd.ai](./sqd.ai/brief.md) | $21.98M | 4 | 26 | 23/26 (88%) | 69.6% | 69.6% (ChainSecurity) | 1 | stale | ❓ unknown | - |
| [squadswap](./squadswap/brief.md) | $1.28M | base, blast, bsc | 217 | 42/217 (19%) | 45.0% | 0.0% (-) | 5 | aging | ❓ unknown | - |
| [ssap](./ssap/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [ssv-network](./ssv-network/brief.md) | $7756.44M | ethereum | 78 | 21/78 (27%) | 25.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [stability](./stability/brief.md) | $1.15M | base, polygon, sonic | 139 | 139/139 (100%) | 15.0% | 15.0% (ChainSecurity, OpenZeppelin, Spearbit, Trail of Bits) | 18 | fresh | ❓ unknown | - |
| [stable-jack](./stable-jack/brief.md) | $1.17M | avalanche, ethereum, sonic | 669 | 61/669 (9%) | - | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stablecoin-for-impact](./stablecoin-for-impact/brief.md) | $20.17K | ethereum | 2 | 1/2 (50%) | 0.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [stablecomp](./stablecomp/brief.md) | $147.27 | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stablehodl](./stablehodl/brief.md) | $6.96M | bsc, ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stabull-finance](./stabull-finance/brief.md) | - | base, ethereum, polygon | 81 | 81/81 (100%) | 3.9% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [stacks-sbtc](./stacks-sbtc/brief.md) | $172.83M | ethereum | 8 | 8/8 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [stader](./stader/brief.md) | $214.72M | ethereum | 42 | 27/42 (64%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stafi](./stafi/brief.md) | $2.99M | ethereum | 35 | 16/35 (46%) | 33.3% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [stake-dao](./stake-dao/brief.md) | $97.41M | 7 | 1373 | 1373/1373 (100%) | 6.7% | 0.8% (ChainSecurity) | 14 | fresh | ❓ unknown | - |
| [stake.link](./stake.link/brief.md) | $62.17M | 4 | 82 | 58/82 (71%) | 57.9% | 52.6% (Cyfrin) | 18 | fresh | ❓ unknown | - |
| [stake.ly](./stake.ly/brief.md) | $15.75K | klaytn | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stakehound](./stakehound/brief.md) | $0.00 | ethereum | 10 | 10/10 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [stakehouse](./stakehouse/brief.md) | $101.50K | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stakestone](./stakestone/brief.md) | $17.18M | 8 | 184 | 61/184 (33%) | 56.7% | 40.0% (SlowMist) | 17 | fresh | ❓ unknown | - |
| [stakewise](./stakewise/brief.md) | $584.76M | ethereum, gnosis | 49 | 49/49 (100%) | 89.4% | 12.8% (ConsenSys Diligence) | 13 | fresh | ❓ unknown | - |
| [stakingverse](./stakingverse/brief.md) | $3.58M | lukso | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [stand-cash](./stand-cash/brief.md) | - | ethereum | 15 | 15/15 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [standx](./standx/brief.md) | $40.14M | bsc | 16 | 6/16 (38%) | 80.0% | 0.0% (-) | 5 | fresh | ❓ unknown | - |
| [stargate](./stargate/brief.md) | $3.75M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stargate-finance](./stargate-finance/brief.md) | $80.40M | 21 | 579 | 36/579 (6%) | 63.6% | 0.0% (-) | 14 | stale | ❓ unknown | - |
| [starkdefi](./starkdefi/brief.md) | $86.30K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [starknet-bridge](./starknet-bridge/brief.md) | $159.51M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [starknet-btc-staking](./starknet-btc-staking/brief.md) | $40.57M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [starlay-finance](./starlay-finance/brief.md) | $169.48K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [starterra](./starterra/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stcelo](./stcelo/brief.md) | $1.17M | celo | 123 | 78/123 (63%) | 24.7% | 0.0% (-) | 3 | aging | ❓ unknown | - |
| [stcyber](./stcyber/brief.md) | $1.11M | 4 | 40 | 32/40 (80%) | 3.2% | 3.2% (SlowMist) | 1 | stale | ❓ unknown | - |
| [steakbank-finance](./steakbank-finance/brief.md) | $231.29K | bsc | 21 | 21/21 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stealthpad](./stealthpad/brief.md) | $5.67 | ethereum | 2 | 2/2 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [steer-protocol](./steer-protocol/brief.md) | $15.60M | arbitrum, base | 46 | 31/46 (67%) | 80.6% | 0.0% (-) | 2 | aging | ❓ unknown | - |
| [stella](./stella/brief.md) | $442.83K | arbitrum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stellaswap](./stellaswap/brief.md) | $417.54K | moonbeam | 87 | 87/87 (100%) | 21.6% | 0.0% (-) | 7 | fresh | ❓ unknown | - |
| [stfil](./stfil/brief.md) | $3.97M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stobox](./stobox/brief.md) | $15.12M | arbitrum, bsc, polygon | 4 | 0/4 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stout](./stout/brief.md) | $2.10M | sonic | 106 | 20/106 (19%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [strata](./strata/brief.md) | $66.58M | ethereum | 27 | 26/27 (96%) | 42.9% | 38.1% (Cyfrin) | 3 | fresh | ❓ unknown | - |
| [stratex](./stratex/brief.md) | $269.27K | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stratis-liquid-staking](./stratis-liquid-staking/brief.md) | $369.28K | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stratis-mstrax](./stratis-mstrax/brief.md) | $1.60M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [stream-finance](./stream-finance/brief.md) | $0.00 | ethereum | 4 | 3/4 (75%) | 66.7% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [streamflow](./streamflow/brief.md) | $658.14M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stride-hyperlane](./stride-hyperlane/brief.md) | $0.36 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [strike-finance-perpetuals](./strike-finance-perpetuals/brief.md) | $3.13M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [strikex](./strikex/brief.md) | - | bsc | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [stroom](./stroom/brief.md) | $15.34K | ethereum | 12 | 11/12 (92%) | 20.0% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [sturdy](./sturdy/brief.md) | $364.66K | 6 | 187 | 110/187 (59%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [stusdt](./stusdt/brief.md) | $60.22M | ethereum | 4 | 4/4 (100%) | 100.0% | 100.0% (ChainSecurity) | 2 | stale | ❓ unknown | - |
| [sudoswap](./sudoswap/brief.md) | $881.11K | 4 | 66 | 66/66 (100%) | 30.8% | 24.6% (Cyfrin, Spearbit) | 5 | stale | ❓ unknown | - |
| [sui-rewards-me](./sui-rewards-me/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [suibridge](./suibridge/brief.md) | $30.99M | ethereum | 5 | 5/5 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [suidollar-basis](./suidollar-basis/brief.md) | $250.53K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [sumer.money](./sumer.money/brief.md) | $1.34M | ethereum | 5 | 0/5 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [summer.fi](./summer.fi/brief.md) | $30.83M | 5 | 1341 | 60/1341 (4%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sun](./sun/brief.md) | $308.62M | arbitrum, bsc, ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [sunny](./sunny/brief.md) | $2.23M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [superearn](./superearn/brief.md) | $11.83M | ethereum, klaytn | 127 | 109/127 (86%) | 64.9% | 36.8% (Spearbit) | 3 | fresh | ❓ unknown | - |
| [superfarm](./superfarm/brief.md) | $847.84K | ethereum | 31 | 24/31 (77%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [superfluid](./superfluid/brief.md) | $5.58M | 10 | 1806 | 61/1806 (3%) | 24.1% | 6.9% (Trail of Bits) | 6 | fresh | ❓ unknown | - |
| [superform](./superform/brief.md) | $22.05M | 5 | 148 | 105/148 (71%) | 50.0% | 35.9% (Spearbit) | 9 | fresh | ❓ unknown | - |
| [superhero-dex](./superhero-dex/brief.md) | $791.07 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [supernova](./supernova/brief.md) | $956.24K | ethereum | 56 | 56/56 (100%) | 25.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [superrare](./superrare/brief.md) | - | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [superreturn](./superreturn/brief.md) | $395.37K | arbitrum, ethereum | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [superstate](./superstate/brief.md) | $872.95M | ethereum | 32 | 32/32 (100%) | 7.1% | 7.1% (Code4rena, Cyfrin, MixBytes, Spearbit) | 15 | fresh | ❓ unknown | - |
| [supswap](./supswap/brief.md) | $19.01K | mode | 287 | 36/287 (13%) | 0.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [surf-lending](./surf-lending/brief.md) | $3.25M | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [surf-liquid](./surf-liquid/brief.md) | $246.10K | base, ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [surf-protocol](./surf-protocol/brief.md) | $6.00K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [surfswap](./surfswap/brief.md) | $134.00 | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sushi](./sushi/brief.md) | $84.60M | 20 | 210 | 57/210 (27%) | 2.9% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [suterusu](./suterusu/brief.md) | - | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [suzaku](./suzaku/brief.md) | $1.01M | avalanche | 52 | 25/52 (48%) | 8.3% | 8.3% (ChainSecurity) | 1 | stale | ❓ unknown | - |
| [swaap](./swaap/brief.md) | $5.57M | 9 | 107 | 5/107 (5%) | 50.0% | 50.0% (ChainSecurity) | 3 | stale | ❓ unknown | - |
| [swamp-finance](./swamp-finance/brief.md) | $993.88K | bsc | 6 | 2/6 (33%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [swap.io-clmm](./swap.io-clmm/brief.md) | $1.93K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [swapbased](./swapbased/brief.md) | - | base, blast | 99 | 99/99 (100%) | 1.1% | 0.0% (-) | 1 | unknown | ❓ unknown | - |
| [swappi](./swappi/brief.md) | $1.58M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [swapr](./swapr/brief.md) | $749.49K | arbitrum, gnosis | 10 | 10/10 (100%) | 30.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [swapscanner](./swapscanner/brief.md) | $3.08M | klaytn | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [swapwizard](./swapwizard/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [swapx](./swapx/brief.md) | $420.58K | sonic | 37 | 37/37 (100%) | 38.9% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [sweep](./sweep/brief.md) | $8.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [swell](./swell/brief.md) | $92.57M | ethereum | 28 | 28/28 (100%) | 75.0% | 66.7% (ChainSecurity, Cyfrin, Spearbit) | 15 | aging | ❓ unknown | - |
| [swellchain-bridge](./swellchain-bridge/brief.md) | $261.95K | ethereum | 25 | 25/25 (100%) | 9.5% | 9.5% (ChainSecurity, Spearbit) | 8 | aging | ❓ unknown | - |
| [swerve](./swerve/brief.md) | $305.07K | ethereum | 6 | 3/6 (50%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [swirl](./swirl/brief.md) | $3.42M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [swissborg](./swissborg/brief.md) | $746.03M | ethereum | 62 | 62/62 (100%) | 3.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [switcheo-finance](./switcheo-finance/brief.md) | $950.67K | ethereum | 34 | 20/34 (59%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [swych-perpetual](./swych-perpetual/brief.md) | $144.37K | bsc | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [sx-rollup-bridge](./sx-rollup-bridge/brief.md) | $11.47M | ethereum | 82 | 17/82 (21%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [symbiosis](./symbiosis/brief.md) | $8.73M | 7 | 109 | 61/109 (56%) | 37.9% | 22.4% (SlowMist) | 10 | fresh | ❓ unknown | - |
| [symbiotic](./symbiotic/brief.md) | $289.89M | ethereum | 66 | 46/66 (70%) | 100.0% | 100.0% (ChainSecurity) | 5 | fresh | ❓ unknown | - |
| [symmetry-trade](./symmetry-trade/brief.md) | $7.33K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [symmio](./symmio/brief.md) | $3.33M | 8 | 854 | 83/854 (10%) | 2.6% | 2.6% (Sherlock) | 2 | unknown | ❓ unknown | - |
| [synapse](./synapse/brief.md) | $11.32M | 19 | 2069 | 112/2069 (5%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [synatra](./synatra/brief.md) | $3.22M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [syncswap-protocol](./syncswap-protocol/brief.md) | $7.91M | linea, scroll, zksync-era | 135 | 17/135 (13%) | 33.3% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [syncyield](./syncyield/brief.md) | $0.01 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [synfutures](./synfutures/brief.md) | $4.64M | 4 | 368 | 4/368 (1%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [syno-finance](./syno-finance/brief.md) | $375.91K | arbitrum, ethereum, optimism | 40 | 40/40 (100%) | 45.9% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [synthetix](./synthetix/brief.md) | $1.30M | 4 | 68 | 39/68 (57%) | 55.9% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [synthswap](./synthswap/brief.md) | $14.81K | base | 15 | 10/15 (67%) | 40.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [syntropia](./syntropia/brief.md) | $4.43M | ethereum | 5 | 4/5 (80%) | 25.0% | 25.0% (Trail of Bits) | 11 | fresh | ❓ unknown | - |
| [t-rize](./t-rize/brief.md) | $23.00M | base | 19 | 13/19 (68%) | 33.3% | 33.3% (Code4rena) | 8 | fresh | ❓ unknown | - |
| [t2t2](./t2t2/brief.md) | $7.51K | base | 17 | 1/17 (6%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [taiko-bridge](./taiko-bridge/brief.md) | $11.77M | ethereum | 54 | 46/54 (85%) | 60.9% | 60.9% (Code4rena, OpenZeppelin) | 7 | fresh | ❓ unknown | - |
| [tangent-finance](./tangent-finance/brief.md) | $3.15M | ethereum | 32 | 32/32 (100%) | 44.4% | 37.0% (Sherlock) | 3 | fresh | ❓ unknown | - |
| [tangible](./tangible/brief.md) | $41.56M | 6 | 851 | 268/851 (31%) | 11.7% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [tangoswap](./tangoswap/brief.md) | $14.40K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [tanx.fi](./tanx.fi/brief.md) | $260.43K | 7 | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tarot](./tarot/brief.md) | $953.04K | 11 | 51 | 9/51 (18%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [tau-labs](./tau-labs/brief.md) | $6.53M | ethereum, plasma | 129 | 129/129 (100%) | 8.5% | 8.5% (Immunefi) | 8 | aging | ❓ unknown | - |
| [tea-rex](./tea-rex/brief.md) | $10.70K | sei | 39 | 35/39 (90%) | 14.3% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [tealswap](./tealswap/brief.md) | $3.31K | ethereum | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [team-finance](./team-finance/brief.md) | $45.71M | 12 | 69 | 20/69 (29%) | 16.7% | 16.7% (Code4rena) | 1 | stale | ❓ unknown | - |
| [telcoin](./telcoin/brief.md) | - | polygon | 18 | 18/18 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [teleswap](./teleswap/brief.md) | $242.28K | bsc, polygon | 38 | 14/38 (37%) | 21.4% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [teller](./teller/brief.md) | $1.34M | ethereum | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [templar-dao](./templar-dao/brief.md) | $2.20M | bsc, moonriver | 34 | 11/34 (32%) | 10.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [templar-protocol](./templar-protocol/brief.md) | $34.46M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [ten-finance](./ten-finance/brief.md) | $356.46K | bsc | 30 | 30/30 (100%) | 24.1% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [tender-finance](./tender-finance/brief.md) | $1.11M | arbitrum | 69 | 19/69 (28%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tenderize](./tenderize/brief.md) | $724.87K | arbitrum, ethereum | 21 | 16/21 (76%) | 13.3% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [tensorplex](./tensorplex/brief.md) | $236.28K | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [termmax](./termmax/brief.md) | $65.66M | 5 | 429 | 429/429 (100%) | 15.2% | 6.1% (Spearbit) | 9 | fresh | ❓ unknown | - |
| [test-project](./test-project/brief.md) | - | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tether-gold](./tether-gold/brief.md) | $2857.22M | 4 | 17 | 17/17 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tethys-finance](./tethys-finance/brief.md) | $143.47K | metis | 27 | 27/27 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tetu](./tetu/brief.md) | $411.75K | 5 | 257 | 257/257 (100%) | 13.8% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [tg-casino](./tg-casino/brief.md) | $1.07M | ethereum | 5 | 5/5 (100%) | 75.0% | 0.0% (-) | 5 | stale | ❓ unknown | - |
| [thaw](./thaw/brief.md) | $9.14K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [the-arena](./the-arena/brief.md) | $1.52M | avalanche | 116 | 31/116 (27%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [the-graph](./the-graph/brief.md) | - | arbitrum, ethereum | 66 | 66/66 (100%) | 16.9% | 16.9% (Immunefi) | 8 | unknown | ❓ unknown | - |
| [the-idols](./the-idols/brief.md) | $4.24M | ethereum | 16 | 12/16 (75%) | 36.4% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [the-parallel](./the-parallel/brief.md) | $0.00 | bsc | 46 | 3/46 (7%) | 33.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [the-sandbox](./the-sandbox/brief.md) | - | ethereum | 24 | 24/24 (100%) | 50.0% | 50.0% (ChainSecurity, Immunefi, Spearbit) | 10 | fresh | ❓ unknown | - |
| [the-story-of-draco](./the-story-of-draco/brief.md) | $6.22 | fantom | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [the-tokenized-bitcoin](./the-tokenized-bitcoin/brief.md) | $99.17K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [thedeep](./thedeep/brief.md) | $6.54M | 4 | 184 | 23/184 (13%) | 27.3% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [themis-pro](./themis-pro/brief.md) | $1.16M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [thena](./thena/brief.md) | $3.10M | bsc, opbnb | 128 | 107/128 (84%) | 2.9% | 1.0% (OpenZeppelin) | 2 | fresh | ❓ unknown | - |
| [theo](./theo/brief.md) | $95.98M | arbitrum, ethereum, hyperliquid | 34 | 34/34 (100%) | 27.6% | 0.0% (-) | 6 | fresh | ❓ unknown | - |
| [theoriq](./theoriq/brief.md) | $294.32K | ethereum | 21 | 21/21 (100%) | 15.8% | 15.8% (Code4rena, Cyfrin, MixBytes, Spearbit) | 15 | fresh | ❓ unknown | - |
| [thesauros](./thesauros/brief.md) | $50.80K | arbitrum, base | 25 | 10/25 (40%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [thetanuts-finance](./thetanuts-finance/brief.md) | - | arbitrum, ethereum, polygon | 21 | 21/21 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [thoreum-finance](./thoreum-finance/brief.md) | $42.82K | bsc | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [thorswap](./thorswap/brief.md) | $10.17M | 4 | 48 | 20/48 (42%) | 15.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [threshold-network](./threshold-network/brief.md) | $298.41M | 5 | 222 | 222/222 (100%) | 10.7% | 2.0% (ChainSecurity) | 5 | fresh | ❓ unknown | - |
| [throne](./throne/brief.md) | $15.24K | base | 14 | 5/14 (36%) | 20.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [thruster](./thruster/brief.md) | $4.56M | blast | 19 | 11/19 (58%) | 40.0% | 30.0% (Code4rena) | 7 | stale | ❓ unknown | - |
| [tidaldex](./tidaldex/brief.md) | - | bsc | 71 | 71/71 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [timeless-finance](./timeless-finance/brief.md) | $12.17K | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [timeswap](./timeswap/brief.md) | $333.51K | ethereum, mantle | 20 | 20/20 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [tinyman](./tinyman/brief.md) | $5.50M | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [titano-swych](./titano-swych/brief.md) | $660.72K | bsc | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [tizi](./tizi/brief.md) | $132.45K | base | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [tokenfi](./tokenfi/brief.md) | - | bsc, ethereum | 23 | 23/23 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [tokenlabs](./tokenlabs/brief.md) | $190.05K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tokenlon](./tokenlon/brief.md) | $29.97M | arbitrum, ethereum | 12 | 12/12 (100%) | 55.6% | 0.0% (-) | 6 | stale | ❓ unknown | - |
| [tokenpocket](./tokenpocket/brief.md) | $157.28K | ethereum | 10 | 10/10 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tokenstore](./tokenstore/brief.md) | $993.87K | ethereum | 44 | 2/44 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tokenworks](./tokenworks/brief.md) | $1.50M | ethereum | 69 | 37/69 (54%) | 5.4% | 5.4% (Certora, ConsenSys Diligence, OpenZeppelin, Spearbit, Trail of Bits) | 16 | aging | ❓ unknown | - |
| [tonco](./tonco/brief.md) | $7.67M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tonpound](./tonpound/brief.md) | $14.12K | ethereum | 9 | 7/9 (78%) | 85.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [tonyielding](./tonyielding/brief.md) | $81.06 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [toobit](./toobit/brief.md) | $59.42M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [topaz](./topaz/brief.md) | $920.26K | bsc | 95 | 45/95 (47%) | 4.4% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [tornado-cash](./tornado-cash/brief.md) | $417.38M | ethereum, optimism | 22 | 22/22 (100%) | 28.6% | 0.0% (-) | 1 | unknown | ❓ unknown | - |
| [tornado-finance](./tornado-finance/brief.md) | - | ethereum | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tothemoon](./tothemoon/brief.md) | $1.47M | ethereum | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [toucan-protocol](./toucan-protocol/brief.md) | $527.43K | base, celo, polygon | 20 | 20/20 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [toupee.tech](./toupee.tech/brief.md) | $4.70M | base | 14 | 10/14 (71%) | 90.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [tower-dex](./tower-dex/brief.md) | $4.70K | - | 0 | - | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [townsquare](./townsquare/brief.md) | $1.83M | ethereum, mantle | 22 | 0/22 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [toxicdeer-finance](./toxicdeer-finance/brief.md) | $23.77K | cronos | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [tprotocol](./tprotocol/brief.md) | - | ethereum | 36 | 36/36 (100%) | 14.3% | 14.3% (Spearbit) | 11 | fresh | ❓ unknown | - |
| [tradoor-ton](./tradoor-ton/brief.md) | $595.83K | bsc | 3 | 3/3 (100%) | 66.7% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [tranchess](./tranchess/brief.md) | $4.21M | bsc, ethereum, scroll | 108 | 81/108 (75%) | 17.6% | 0.0% (-) | 8 | stale | ❓ unknown | - |
| [treasure](./treasure/brief.md) | - | arbitrum | 108 | 108/108 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [treble](./treble/brief.md) | $444.50K | base | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [treehouse-protocol](./treehouse-protocol/brief.md) | $52.58M | 4 | 71 | 62/71 (87%) | 54.2% | 3.4% (Trail of Bits) | 18 | fresh | ❓ unknown | - |
| [tren-finance](./tren-finance/brief.md) | $25.63 | arbitrum, base | 38 | 7/38 (18%) | 66.7% | 16.7% (ConsenSys Diligence) | 4 | aging | ❓ unknown | - |
| [trevee-earn](./trevee-earn/brief.md) | $962.18K | ethereum, plasma, sonic | 46 | 43/46 (93%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [trick-or-treat-farm](./trick-or-treat-farm/brief.md) | $623.91 | fantom | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [trisolaris](./trisolaris/brief.md) | $1.14M | aurora | 43 | 4/43 (9%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tristero](./tristero/brief.md) | $106.00 | arbitrum, base, ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [tropykus-finance](./tropykus-finance/brief.md) | $11.92M | chain-1442, polygon-zkevm | 28 | 0/28 (0%) | - | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [troves](./troves/brief.md) | $4.34M | ethereum | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [truefi](./truefi/brief.md) | $15.38M | ethereum | 63 | 53/63 (84%) | 96.0% | 42.0% (SlowMist) | 11 | stale | ❓ unknown | - |
| [trueo](./trueo/brief.md) | $4.30M | base | 30 | 29/30 (97%) | 8.7% | 8.7% (Certora, ConsenSys Diligence, OpenZeppelin, Spearbit, Trail of Bits) | 16 | aging | ❓ unknown | - |
| [trufin-protocol](./trufin-protocol/brief.md) | - | ethereum | 9 | 8/9 (89%) | 42.9% | 14.3% (OpenZeppelin) | 7 | fresh | ❓ unknown | - |
| [trust-wallet](./trust-wallet/brief.md) | $28.90M | bsc, ethereum | 25 | 13/25 (52%) | - | 0.0% (-) | 3 | aging | ❓ unknown | - |
| [trustswap](./trustswap/brief.md) | - | ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tulipa-capital](./tulipa-capital/brief.md) | $39.01M | base, berachain, ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tulpea](./tulpea/brief.md) | $10.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [turboflow](./turboflow/brief.md) | $2.18M | bsc | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [turtle-club](./turtle-club/brief.md) | $850.32K | 4 | 761 | 658/761 (86%) | 3.2% | 3.2% (ChainSecurity, Spearbit) | 8 | aging | ❓ unknown | - |
| [twin-finance](./twin-finance/brief.md) | $6.67K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [twindex](./twindex/brief.md) | $122.72K | bsc | 44 | 44/44 (100%) | 5.6% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [twyne](./twyne/brief.md) | $5.57M | ethereum | 65 | 58/65 (89%) | 13.2% | 0.0% (-) | 3 | fresh | ❓ unknown | - |
| [txflow](./txflow/brief.md) | $11.31M | arbitrum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tydro](./tydro/brief.md) | $182.79M | ethereum | 24 | 24/24 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [tymio](./tymio/brief.md) | $200.68K | arbitrum, ethereum | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [u235](./u235/brief.md) | $4.77K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [ubeswap](./ubeswap/brief.md) | $763.53K | celo | 27 | 27/27 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ufarm-digital](./ufarm-digital/brief.md) | $523.35K | arbitrum, ethereum | 74 | 2/74 (3%) | 50.0% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [ultrayield](./ultrayield/brief.md) | $61.25M | 6 | 3957 | 65/3957 (2%) | 25.5% | 25.5% (Spearbit) | 11 | fresh | ❓ unknown | - |
| [ultron-staking-hub-nft](./ultron-staking-hub-nft/brief.md) | $3.01M | 5 | 145 | 1/145 (1%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [umee](./umee/brief.md) | $117.26K | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [unchain-x](./unchain-x/brief.md) | $978.85K | bsc | 36 | 12/36 (33%) | 8.3% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [unclesam-protocol](./unclesam-protocol/brief.md) | $0.01 | base, bsc, ethereum | 42 | 30/42 (71%) | 3.4% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [uncx-network](./uncx-network/brief.md) | $117.86M | 8 | 134 | 134/134 (100%) | 12.8% | 0.8% (OpenZeppelin) | 9 | stale | ❓ unknown | - |
| [unichain-bridge](./unichain-bridge/brief.md) | $2.19M | ethereum, unichain | 39 | 39/39 (100%) | 6.1% | 3.0% (Code4rena) | 20 | fresh | ❓ unknown | - |
| [unicly](./unicly/brief.md) | $352.63K | ethereum | 27 | 11/27 (41%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [unifarm](./unifarm/brief.md) | $158.09K | bsc, ethereum, polygon | 293 | 293/293 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [union-protocol](./union-protocol/brief.md) | $398.97K | 4 | 38 | 38/38 (100%) | 38.9% | 38.9% (Sherlock) | 4 | stale | ❓ unknown | - |
| [unipower](./unipower/brief.md) | $461.87K | ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [unirouter](./unirouter/brief.md) | $195.30M | bsc, mode | 7 | 7/7 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [uniswap](./uniswap/brief.md) | $2839.20M | 17 | 340 | 340/340 (100%) | 6.5% | 5.0% (Certora, OpenZeppelin, Spearbit, Trail of Bits) | 11 | aging | ❓ unknown | - |
| [unit](./unit/brief.md) | $417.68M | hyperliquid | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [unit-protocol](./unit-protocol/brief.md) | $169.11K | ethereum | 392 | 392/392 (100%) | 3.4% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [unitas](./unitas/brief.md) | $56.65M | bsc | 12 | 6/12 (50%) | 60.0% | 60.0% (SlowMist) | 4 | fresh | ❓ unknown | - |
| [unite-finance](./unite-finance/brief.md) | $1.55K | harmony | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [universal-bridge](./universal-bridge/brief.md) | $6.51M | base | 2 | 2/2 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [universe-finance](./universe-finance/brief.md) | $19.35K | ethereum, polygon | 14 | 1/14 (7%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [universe-xyz](./universe-xyz/brief.md) | $1.59M | ethereum | 25 | 11/25 (44%) | 22.2% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [uniwhale](./uniwhale/brief.md) | $33.71K | bsc | 60 | 46/60 (77%) | 51.1% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [uniwswap](./uniwswap/brief.md) | $791.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [unsheth](./unsheth/brief.md) | $125.64K | ethereum | 19 | 19/19 (100%) | 26.3% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [unslashed](./unslashed/brief.md) | $2.32M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [untangled](./untangled/brief.md) | $302.79K | arbitrum, celo, polygon | 15 | 7/15 (47%) | 0.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [untitledbank](./untitledbank/brief.md) | $199.68K | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [upheaval-finance](./upheaval-finance/brief.md) | $443.42K | hyperliquid | 15 | 15/15 (100%) | 30.8% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [uplift-dao](./uplift-dao/brief.md) | $0.00 | bsc | 47 | 29/47 (62%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [upshift](./upshift/brief.md) | $250.62M | ethereum | 14 | 14/14 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [uranium.io](./uranium.io/brief.md) | $7.37M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [urdex-finance](./urdex-finance/brief.md) | $0.00 | arbitrum | 81 | 3/81 (4%) | 66.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [usd-ai](./usd-ai/brief.md) | $427.34M | arbitrum, ethereum | 49 | 49/49 (100%) | 37.0% | 4.3% (Spearbit) | 7 | fresh | ❓ unknown | - |
| [usdd](./usdd/brief.md) | $1296.04M | bsc, ethereum | 192 | 73/192 (38%) | 42.9% | 33.3% (ChainSecurity) | 4 | fresh | ❓ unknown | - |
| [usual](./usual/brief.md) | $112.25M | ethereum | 11 | 11/11 (100%) | 100.0% | 100.0% (Sherlock, Spearbit) | 17 | fresh | ❓ unknown | - |
| [uswap](./uswap/brief.md) | $536.40K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [usx.capital](./usx.capital/brief.md) | $762.70K | scroll | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [utonic](./utonic/brief.md) | $4.60M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [utopia](./utopia/brief.md) | $14.19K | bsc | 12 | 2/12 (17%) | 100.0% | 0.0% (-) | 1 | fresh | ❓ unknown | - |
| [uwu-lend](./uwu-lend/brief.md) | $236.35K | ethereum | 157 | 107/157 (68%) | 61.0% | 8.0% (Trail of Bits) | 3 | aging | ❓ unknown | - |
| [valantis](./valantis/brief.md) | $187.77M | arbitrum, ethereum, hyperliquid | 38 | 38/38 (100%) | 36.1% | 0.0% (-) | 12 | fresh | ❓ unknown | - |
| [valas-finance](./valas-finance/brief.md) | $20.23K | bsc | 8 | 5/8 (63%) | 60.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [valorem](./valorem/brief.md) | $32.65 | arbitrum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [value-finance](./value-finance/brief.md) | $500.01K | bsc, ethereum | 130 | 130/130 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [vapordex](./vapordex/brief.md) | $331.21K | avalanche | 34 | 34/34 (100%) | 3.2% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [varen](./varen/brief.md) | - | ethereum | 9 | 9/9 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [vaultcraft](./vaultcraft/brief.md) | $542.65K | 4 | 220 | 19/220 (9%) | 22.2% | 0.0% (-) | 4 | stale | ❓ unknown | - |
| [vaultedge](./vaultedge/brief.md) | $262.00K | base | 20 | 20/20 (100%) | 5.3% | 0.0% (-) | 2 | unknown | ❓ unknown | - |
| [vaultka](./vaultka/brief.md) | $5.83K | arbitrum | 998 | 14/998 (1%) | 11.1% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [vaulty-finance](./vaulty-finance/brief.md) | $0.00 | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [veda](./veda/brief.md) | $1032.82M | bsc, ethereum | 27 | 27/27 (100%) | 41.7% | 20.8% (Certora, Spearbit) | 18 | fresh | ❓ unknown | - |
| [vedelegate](./vedelegate/brief.md) | $849.26K | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [veil-cash](./veil-cash/brief.md) | - | base, ethereum | 70 | 70/70 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [vela-exchange](./vela-exchange/brief.md) | $369.84K | arbitrum, base | 41 | 41/41 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [velo-finance](./velo-finance/brief.md) | $1.41M | bsc | 34 | 10/34 (29%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [velocore](./velocore/brief.md) | $104.43K | linea | 23 | 23/23 (100%) | 50.0% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [velodrome](./velodrome/brief.md) | $33.67M | celo, optimism | 16 | 16/16 (100%) | 80.0% | 80.0% (Sherlock, Spearbit) | 3 | aging | ❓ unknown | - |
| [velora](./velora/brief.md) | $226.52K | 6 | 27 | 25/27 (93%) | 4.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [velvet.capital](./velvet.capital/brief.md) | $12.51M | base, bsc, ethereum | 300 | 55/300 (18%) | 28.3% | 1.9% (Spearbit) | 14 | aging | ❓ unknown | - |
| [venice](./venice/brief.md) | - | base | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [veno-finance](./veno-finance/brief.md) | $34.04M | cronos, ethereum, zksync-era | 21 | 9/21 (43%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [venombridge](./venombridge/brief.md) | $814.96K | 4 | 5 | 4/5 (80%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [ventuals](./ventuals/brief.md) | $5.33M | hyperliquid | 4 | 4/4 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [verified-network](./verified-network/brief.md) | $126.68K | 5 | 447 | 0/447 (0%) | - | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [verio](./verio/brief.md) | $4.42M | ethereum | 2 | 0/2 (0%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [verocket](./verocket/brief.md) | $17.28K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [verse](./verse/brief.md) | $424.91K | ethereum | 104 | 56/104 (54%) | 100.0% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [verus-market](./verus-market/brief.md) | $5.65M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [vesper](./vesper/brief.md) | $41.02M | bsc, ethereum | 120 | 115/120 (96%) | 20.5% | 0.0% (-) | 25 | stale | ❓ unknown | - |
| [vest-markets](./vest-markets/brief.md) | $543.13K | arbitrum, bsc, zksync-era | 5 | 4/5 (80%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [vfat.io](./vfat.io/brief.md) | $28.18M | 15 | 1799 | 243/1799 (14%) | 11.6% | 0.0% (-) | 3 | fresh | ❓ unknown | - |
| [vii-finance](./vii-finance/brief.md) | $12.21K | ethereum, unichain | 2 | 1/2 (50%) | 0.0% | 0.0% (Cyfrin) | 1 | aging | ❓ unknown | - |
| [virtuals-protocol](./virtuals-protocol/brief.md) | $24.55M | base, ethereum | 201 | 86/201 (43%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [vmex-finance](./vmex-finance/brief.md) | $3.18K | optimism | 3 | 1/3 (33%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [vnx](./vnx/brief.md) | $5.34M | 7 | 21 | 16/21 (76%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [volta-club](./volta-club/brief.md) | $262.16K | avalanche, ethereum | 685 | 65/685 (9%) | 1.6% | 1.6% (Code4rena, Sherlock) | 7 | fresh | ❓ unknown | - |
| [voltz](./voltz/brief.md) | $211.21K | arbitrum, avalanche, ethereum | 122 | 1/122 (1%) | - | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [vvs-finance](./vvs-finance/brief.md) | $95.61M | ethereum | 13 | 13/13 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wagmi](./wagmi/brief.md) | $972.97K | 11 | 290 | 31/290 (11%) | 16.7% | 16.7% (Sherlock) | 12 | stale | ❓ unknown | - |
| [wan-bridge](./wan-bridge/brief.md) | $23.45M | 16 | 175 | 53/175 (30%) | 4.5% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [wanswap-dex](./wanswap-dex/brief.md) | $904.28K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [wardenswap](./wardenswap/brief.md) | $249.00K | bsc | 21 | 21/21 (100%) | 47.6% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [warp-protocol](./warp-protocol/brief.md) | $39.25K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wasabi](./wasabi/brief.md) | $866.44K | 4 | 122 | 98/122 (80%) | 29.9% | 13.8% (Sherlock) | 8 | aging | ❓ unknown | - |
| [wasabix](./wasabix/brief.md) | $225.12K | bsc, ethereum, polygon | 105 | 105/105 (100%) | 14.6% | 0.0% (-) | 3 | stale | ❓ unknown | - |
| [waterfall-defi](./waterfall-defi/brief.md) | $18.96K | bsc | 70 | 3/70 (4%) | 33.3% | 33.3% (SlowMist) | 1 | stale | ❓ unknown | - |
| [waterfall-finance](./waterfall-finance/brief.md) | $35.13K | arbitrum, bsc, fantom | 18 | 15/18 (83%) | 14.3% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [waterneuron](./waterneuron/brief.md) | $5.01M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wavesbridge](./wavesbridge/brief.md) | $1.10M | arbitrum, bsc, ethereum | 6 | 6/6 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [weex](./weex/brief.md) | $176.78M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wefi](./wefi/brief.md) | $499.37K | polygon | 2 | 1/2 (50%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [weft-finance](./weft-finance/brief.md) | $360.40K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wemix.fi](./wemix.fi/brief.md) | $32.90M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wepiggy](./wepiggy/brief.md) | $1.92M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [whale-loans](./whale-loans/brief.md) | $0.00 | bsc | 2 | 1/2 (50%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [whales-market](./whales-market/brief.md) | $654.44K | 5 | 12 | 12/12 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [whaleswap](./whaleswap/brief.md) | $2.29K | bsc | 3 | 2/3 (67%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [white-whale](./white-whale/brief.md) | $468.30K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [whiteheart](./whiteheart/brief.md) | $6.19K | ethereum | 42 | 6/42 (14%) | 16.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [whitehole-finance](./whitehole-finance/brief.md) | - | arbitrum | 35 | 35/35 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wildcat-protocol](./wildcat-protocol/brief.md) | $362.39M | ethereum, plasma | 12 | 12/12 (100%) | 41.7% | 41.7% (Code4rena) | 2 | aging | ❓ unknown | - |
| [wing-finance](./wing-finance/brief.md) | $25.59M | bsc, ethereum, klaytn | 169 | 9/169 (5%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [winter-walrus](./winter-walrus/brief.md) | $46.03K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wisdomtree](./wisdomtree/brief.md) | $728.45M | ethereum | 5 | 5/5 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wise-lending](./wise-lending/brief.md) | $36.00 | arbitrum, ethereum | 19 | 9/19 (47%) | 44.4% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [wisteria-swap](./wisteria-swap/brief.md) | $0.00 | bsc | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [witswap](./witswap/brief.md) | $0.00 | ethereum | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [wolf-safe-poor-people](./wolf-safe-poor-people/brief.md) | - | avalanche, bsc, polygon | 39 | 39/39 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wombat-exchange](./wombat-exchange/brief.md) | $1.50M | 7 | 544 | 28/544 (5%) | 30.4% | 4.3% (SlowMist) | 6 | aging | ❓ unknown | - |
| [wombex-finance](./wombex-finance/brief.md) | $379.21K | arbitrum, bsc | 82 | 82/82 (100%) | 29.1% | 29.1% (SlowMist) | 3 | stale | ❓ unknown | - |
| [woo-x](./woo-x/brief.md) | $4.66M | 7 | 7 | 2/7 (29%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [woofi](./woofi/brief.md) | $15.85M | 11 | 803 | 27/803 (3%) | 29.6% | 0.0% (-) | 3 | aging | ❓ unknown | - |
| [world-chain](./world-chain/brief.md) | $381.45M | ethereum | 38 | 38/38 (100%) | 18.8% | 0.0% (-) | 13 | fresh | ❓ unknown | - |
| [worldes](./worldes/brief.md) | $567.30 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wowswap](./wowswap/brief.md) | $35.92K | 7 | 471 | 18/471 (4%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [wrapped](./wrapped/brief.md) | $18.69M | celo | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [wrapped-bnb](./wrapped-bnb/brief.md) | $5.01M | kava | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [wstaking](./wstaking/brief.md) | - | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [x2y2](./x2y2/brief.md) | - | ethereum | 45 | 45/45 (100%) | 9.5% | 0.0% (-) | 1 | unknown | ❓ unknown | - |
| [xave-finance](./xave-finance/brief.md) | $148.16K | ethereum, polygon | 62 | 62/62 (100%) | 20.3% | 0.0% (-) | 6 | stale | ❓ unknown | - |
| [xcarnival](./xcarnival/brief.md) | $2.16K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [xdai-stake-bridge](./xdai-stake-bridge/brief.md) | $238.60M | ethereum | 3 | 3/3 (100%) | 33.3% | 33.3% (ChainSecurity) | 4 | fresh | ❓ unknown | - |
| [xdollar](./xdollar/brief.md) | $55.93K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [xeleb-protocol](./xeleb-protocol/brief.md) | - | bsc | 1 | 1/1 (100%) | 100.0% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [xfai](./xfai/brief.md) | $891.26K | linea | 14 | 2/14 (14%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [xfi-native-staking-protocol](./xfi-native-staking-protocol/brief.md) | $1.16M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [xpanse](./xpanse/brief.md) | $240.06K | bsc | 38 | 13/38 (34%) | 41.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [xrgb](./xrgb/brief.md) | $304.01 | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [xsigma](./xsigma/brief.md) | $344.23K | ethereum | 3 | 3/3 (100%) | 33.3% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [xstocks](./xstocks/brief.md) | $314.22M | arbitrum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [xswap-protocol](./xswap-protocol/brief.md) | $602.14K | ethereum | 3 | 0/3 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [xsy](./xsy/brief.md) | $20.97M | avalanche, base | 41 | 28/41 (68%) | 4.0% | 0.0% (-) | 1 | aging | ❓ unknown | - |
| [xtoken](./xtoken/brief.md) | $711.97K | ethereum, optimism, polygon | 159 | 159/159 (100%) | 4.5% | 0.0% (-) | 2 | stale | ❓ unknown | - |
| [xwin-finance](./xwin-finance/brief.md) | $4.57M | arbitrum, bsc, polygon | 123 | 88/123 (72%) | 7.1% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [y2k-finance](./y2k-finance/brief.md) | $28.61K | arbitrum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [yaka-finance](./yaka-finance/brief.md) | $8.73K | sei | 22 | 10/22 (45%) | 16.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [yala](./yala/brief.md) | $1.70M | ethereum | 25 | 6/25 (24%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [yam-finance](./yam-finance/brief.md) | $192.59K | ethereum | 27 | 27/27 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [yamato-protocol](./yamato-protocol/brief.md) | $1.06M | ethereum | 47 | 30/47 (64%) | 37.9% | 0.0% (-) | 3 | aging | ❓ unknown | - |
| [yaxis](./yaxis/brief.md) | $384.67K | ethereum | 67 | 67/67 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [ybtc.b](./ybtc.b/brief.md) | $112.22K | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [yearn](./yearn/brief.md) | $202.15M | 5 | 666 | 666/666 (100%) | 12.4% | 7.0% (ChainSecurity, MixBytes, Trail of Bits) | 42 | fresh | ❓ unknown | - |
| [yei-finance](./yei-finance/brief.md) | $17.24M | sei | 27 | 18/27 (67%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [yfii](./yfii/brief.md) | $371.52K | ethereum | 17 | 17/17 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [yield-basis](./yield-basis/brief.md) | $107.69M | ethereum | 153 | 153/153 (100%) | 25.0% | 25.0% (ChainSecurity, MixBytes, Sherlock) | 23 | fresh | ❓ unknown | - |
| [yield-protocol](./yield-protocol/brief.md) | $203.35K | 4 | 48 | 40/48 (83%) | 13.2% | 13.2% (Trail of Bits) | 1 | stale | ❓ unknown | - |
| [yield-yak](./yield-yak/brief.md) | $13.46M | arbitrum, avalanche, mantle | 1286 | 12/1286 (1%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [yieldfi](./yieldfi/brief.md) | $10.33M | 9 | 62 | 53/62 (85%) | 40.4% | 40.4% (Cyfrin, Sherlock) | 3 | fresh | ❓ unknown | - |
| [yieldflow](./yieldflow/brief.md) | $321.62K | arbitrum, ethereum | 23 | 23/23 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [yieldly](./yieldly/brief.md) | $0.00 | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [yieldnest](./yieldnest/brief.md) | $18.89M | 7 | 65 | 56/65 (86%) | 29.4% | 7.8% (ChainSecurity) | 11 | aging | ❓ unknown | - |
| [yieldseeker](./yieldseeker/brief.md) | $1.29M | base | 288 | 60/288 (21%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [yldr](./yldr/brief.md) | - | 4 | 53 | 53/53 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [yo-protocol](./yo-protocol/brief.md) | $34.62M | arbitrum, base, ethereum | 23 | 23/23 (100%) | 35.0% | 5.0% (Spearbit) | 5 | fresh | ❓ unknown | - |
| [yoshi-exchange](./yoshi-exchange/brief.md) | $5.00K | fantom | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [youves](./youves/brief.md) | $34.67M | ethereum | 1 | 0/1 (0%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [yupana](./yupana/brief.md) | $23.32K | - | 0 | - | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [yuzu-money](./yuzu-money/brief.md) | $55.23M | plasma | 11 | 11/11 (100%) | 90.0% | 0.0% (-) | 6 | fresh | ❓ unknown | - |
| [zama](./zama/brief.md) | $141.50M | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | fresh | ❓ unknown | - |
| [zebradao](./zebradao/brief.md) | $401.17K | base | 11 | 11/11 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zeebu](./zeebu/brief.md) | $4.27M | base, ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | aging | ❓ unknown | - |
| [zenlink](./zenlink/brief.md) | $3.30M | moonbeam, moonriver | 198 | 5/198 (3%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [zero-g-finance](./zero-g-finance/brief.md) | $1.67K | ethereum | 1 | 1/1 (100%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [zerobase-cedefi](./zerobase-cedefi/brief.md) | $55.73M | 7 | 61 | 7/61 (11%) | 57.1% | 0.0% (-) | 4 | fresh | ❓ unknown | - |
| [zerolend](./zerolend/brief.md) | $12.48M | 7 | 1755 | 162/1755 (9%) | 23.0% | 12.3% (OpenZeppelin, Trail of Bits) | 8 | stale | ❓ unknown | - |
| [zeroliquid](./zeroliquid/brief.md) | $3.29K | ethereum | 2 | 2/2 (100%) | 50.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [zeroswap](./zeroswap/brief.md) | $195.03 | ethereum | 160 | 2/160 (1%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [zharta](./zharta/brief.md) | $2.11 | ethereum | 103 | 15/103 (15%) | 13.3% | 0.0% (-) | 2 | fresh | ❓ unknown | - |
| [zircon-gamma](./zircon-gamma/brief.md) | $2.55 | moonriver | 182 | 7/182 (4%) | 85.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [zircuit](./zircuit/brief.md) | $9.26M | base, ethereum | 29 | 27/29 (93%) | 24.0% | 0.0% (-) | 6 | aging | ❓ unknown | - |
| [zircuit-finance](./zircuit-finance/brief.md) | $1.14M | base, ethereum | 10 | 10/10 (100%) | 100.0% | 0.0% (-) | 3 | fresh | ❓ unknown | - |
| [zircuit-staking](./zircuit-staking/brief.md) | $38.41M | base, ethereum | 20 | 19/20 (95%) | 23.5% | 0.0% (-) | 4 | aging | ❓ unknown | - |
| [zivoe](./zivoe/brief.md) | $13.78M | ethereum | 19 | 18/19 (95%) | 58.8% | 23.5% (Sherlock) | 5 | aging | ❓ unknown | - |
| [zkbob_](./zkbob_/brief.md) | $206.98K | 4 | 131 | 39/131 (30%) | 16.7% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [zklink-nova](./zklink-nova/brief.md) | $9.44M | 10 | 549 | 45/549 (8%) | 21.1% | 10.5% (OpenZeppelin) | 10 | stale | ❓ unknown | - |
| [zkswap](./zkswap/brief.md) | $126.29K | ethereum | 3 | 3/3 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zkswap-finance](./zkswap-finance/brief.md) | $843.09K | sonic, zksync-era | 55 | 11/55 (20%) | 20.0% | 0.0% (-) | 5 | stale | ❓ unknown | - |
| [zksync-era-txbridge](./zksync-era-txbridge/brief.md) | $104.21M | ethereum | 2 | 2/2 (100%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zoo-finance](./zoo-finance/brief.md) | $27.95M | 5 | 68 | 33/68 (49%) | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zoodao](./zoodao/brief.md) | $9.00K | moonbeam | 26 | 24/26 (92%) | 0.0% | 0.0% (-) | 0 | stale | ❓ unknown | - |
| [zoomex](./zoomex/brief.md) | $22.80M | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zootopia-finance](./zootopia-finance/brief.md) | $0.00 | bsc | 10 | 1/10 (10%) | 100.0% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [zoro-protocol](./zoro-protocol/brief.md) | $11.23K | - | 0 | - | 0.0% | 0.0% (-) | 0 | unknown | ❓ unknown | - |
| [zoth](./zoth/brief.md) | $2.20M | 5 | 19 | 14/19 (74%) | 30.8% | 0.0% (-) | 5 | fresh | ❓ unknown | - |
| [zunami-protocol](./zunami-protocol/brief.md) | $475.79K | ethereum | 73 | 73/73 (100%) | 9.7% | 9.7% (Immunefi) | 8 | unknown | ❓ unknown | - |
| [zyberswap](./zyberswap/brief.md) | $63.94K | arbitrum | 39 | 8/39 (21%) | 37.5% | 0.0% (-) | 1 | stale | ❓ unknown | - |
| [zyfai](./zyfai/brief.md) | $6.32M | 5 | 119 | 100/119 (84%) | 1.1% | 1.1% (Sherlock) | 2 | fresh | ❓ unknown | - |

_Generated: 2026-07-24T07:46:34.043Z_
_Projects: 1972_
