# Agentic Audit Brief: DeHive

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: DeHive (`dehive`)
- Website: [https://dehive.finance/](https://dehive.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, gnosis, polygon
- Contract surface: 161 unique implementations (361 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $110,690.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for DeHive in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 161 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 103
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/134
- Verified + Unaudited implementations: 134
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 161
- Raw deployments: 361
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (134)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveProtocolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc5b38d...00009f` | ⚠️ Unaudited |
| AddyStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x186e2e...edd405`; polygon `0x3e1c6c...299a6c`; polygon `0x43b5bf...167990`; polygon `0x75f363...5358d0`; polygon `0xfdf49c...8af41f` | ⚠️ Unaudited |
| AddyStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2b4db8...7166ab`; polygon `0x3606ec...d7b846` | ⚠️ Unaudited |
| AlpacaStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4035f5...cfdd30`; bsc `0x9f4342...bf2ace` | ⚠️ Unaudited |
| AlpacaStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x65b260...44b2c0`; bsc `0x9259dd...c0b61b` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x58759d...5b58d7`; polygon `0x5fcb9d...f97b26` | ⚠️ Unaudited |
| AnyswapV6Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdae6c2...9c993e` | ⚠️ Unaudited |
| BananaStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x31be6b...4531e9`; bsc `0x86f6ec...f3c60e` | ⚠️ Unaudited |
| BananaStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x75d538...57933e`; bsc `0xf054c8...c90e03` | ⚠️ Unaudited |
| CakeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0c0c82...c9bc4e`; bsc `0x8deb5b...3e3826` | ⚠️ Unaudited |
| CakeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x534395...d4f1c9`; bsc `0x944627...98c3aa` | ⚠️ Unaudited |
| ClustersLock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x76d353...87f480`; bsc `0x7cda41...713818` | ⚠️ Unaudited |
| ClustersLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 11 deployments: bsc `0xa0b7ad...dbbfc9`; bsc `0xf8401f...e4275f`; gnosis `0x35f28a...77de36`; gnosis `0x6e5dad...0e1979`; gnosis `0x7bf481...11fb9a`; gnosis `0x817aaf...0471ef`; gnosis `0xc1fa2e...8e7f13`; gnosis `0xc5b38d...00009f`; gnosis `0xdfc6c6...3360ed`; polygon `0x6b7ff8...ff7df6`; polygon `0xb77398...6a3faf` | ⚠️ Unaudited |
| ClustersLock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x5cb83e...4b0cfb`; gnosis `0xdc005e...2df2ff` | ⚠️ Unaudited |
| ClustersLock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x827152...60897e`; polygon `0xf16d3d...010901` | ⚠️ Unaudited |
| ClusterToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0x0da509...69ab20`; bsc `0x0a6844...e38ed5`; polygon `0x4964b3...6af0f0`; polygon `0x589ea3...d0ce7a` | ⚠️ Unaudited |
| ClusterTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x3ea8f1...29082f`; gnosis `0xa6c090...fb1e6b`; gnosis `0xf557b2...363bc0` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7aa4bc...03a1a0`; ethereum `0xfe48bf...f0a651` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9600f0...25c870`; ethereum `0xe3365d...9359c4` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3c45a3...adc42a`; bsc `0x70eb50...5b315c` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x12916d...b89126`; gnosis `0xdb1255...208231` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0xe171ff...cd0620`; gnosis `0xe806db...afa37e` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xe806db...afa37e`; polygon `0xebf6a5...e5847d` | ⚠️ Unaudited |
| DexAdapterCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06ba94...5b6676` | ⚠️ Unaudited |
| DHVToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62dc48...d34b2a` | ⚠️ Unaudited |
| EpsStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x52b771...f08a0c`; bsc `0xf3fae8...352930` | ⚠️ Unaudited |
| EpsStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x89c505...86ab45`; bsc `0xef6f03...ab317e` | ⚠️ Unaudited |
| ExternalAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x115aab...385f8f`; bsc `0x92450c...d89c8c` | ⚠️ Unaudited |
| ExternalAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf83a16...43e122` | ⚠️ Unaudited |
| ExternalAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8ca1bb...a2253b`; polygon `0xaf63f2...6bba91` | ⚠️ Unaudited |
| FishStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x38be73...5334b1`; polygon `0x454e32...896270` | ⚠️ Unaudited |
| FishStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x854d57...4ad8fa`; polygon `0xb902a0...c148cc`; polygon `0xc8ec8d...373117` | ⚠️ Unaudited |
| GameAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x31d7ce...5fbf03`; polygon `0x3aec85...97c7a4`; polygon `0x7fe962...71ab71` | ⚠️ Unaudited |
| HoneySwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x2fa4aa...2e28f4`; gnosis `0x874ac7...99c82a`; gnosis `0xd88be9...d32905` | ⚠️ Unaudited |
| ImpulseAlpacaBusd | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0902eb...f7cbf7`; bsc `0xb32e05...c6dfe3` | ⚠️ Unaudited |
| ImpulseAvaxBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc75bd8...2d6aaa`; bsc `0xdd03b5...fbf4ac` | ⚠️ Unaudited |
| ImpulseBananaBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3e1c6c...299a6c`; bsc `0xfdf49c...8af41f` | ⚠️ Unaudited |
| ImpulseBananaBusd | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x548d26...b55796`; bsc `0x8c348e...d7220c` | ⚠️ Unaudited |
| ImpulseCakeBusd | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7bb8e7...27d62c`; bsc `0xac176f...2a27e5` | ⚠️ Unaudited |
| ImpulseCakeUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x12916d...b89126`; bsc `0xcfd28b...7e035a` | ⚠️ Unaudited |
| ImpulseCurve3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | `0x857417...1d48e8` | ⚠️ Unaudited |
| ImpulseCurve3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xaa10fe...ad68b3` | ⚠️ Unaudited |
| ImpulseCurve3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xba93ee...f47124`; polygon `0xe5bb3c...6ae774` | ⚠️ Unaudited |
| ImpulseCurveAtricrypto3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x849b2f...90388d`; polygon `0xc81b35...eff356` | ⚠️ Unaudited |
| ImpulseCurveAtricrypto3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x9dedca...ec47da`; polygon `0xb0459b...51dbba`; polygon `0xb0e694...8fa995`; polygon `0xe0dbbd...32a41f` | ⚠️ Unaudited |
| ImpulseCurveEurtUsd | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x7db96a...576544` | ⚠️ Unaudited |
| ImpulseCurveEurtUsd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd98c4...352a33` | ⚠️ Unaudited |
| ImpulseDhvQuick | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2df6a1...d310ae`; polygon `0xabc299...29a786` | ⚠️ Unaudited |
| ImpulseDhvQuick | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x47e62b...30d552`; polygon `0xa814f8...09b562` | ⚠️ Unaudited |
| ImpulseDhvQuick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78e49a...de692b` | ⚠️ Unaudited |
| ImpulseDodoBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa6c090...fb1e6b`; bsc `0xdb1255...208231` | ⚠️ Unaudited |
| ImpulseLinkBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x88cfc1...646df7`; bsc `0xe45713...067870` | ⚠️ Unaudited |
| ImpulseMaiUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3090c0...dc0ac7` | ⚠️ Unaudited |
| ImpulseMaiUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x967db4...6e466b`; polygon `0xf2e8cd...a8fa6c` | ⚠️ Unaudited |
| ImpulseMaticUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x6183b9...70b381`; polygon `0x61b4ac...9d1b4d`; polygon `0x92450c...d89c8c` | ⚠️ Unaudited |
| ImpulseMaticUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xb6bbc4...db1900`; polygon `0xf8b0f2...aa9ab6` | ⚠️ Unaudited |
| ImpulseQuickSwap3pool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x6ae965...b7f9c2`; polygon `0x9c6885...4fd0cb` | ⚠️ Unaudited |
| ImpulseQuickSwap3pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xb3a7cd...061026`; polygon `0xe84d38...4a9571` | ⚠️ Unaudited |
| ImpulseStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x584654...832776`; bsc `0xa9c97f...59d99a` | ⚠️ Unaudited |
| ImpulseStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x5233f9...89946a`; polygon `0x855da6...7ed86f` | ⚠️ Unaudited |
| ImpulseStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x62bb65...ea6751`; polygon `0x702d84...56a029` | ⚠️ Unaudited |
| ImpulseStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xb030f1...3ab4fe`; polygon `0xf4feb2...0a3868` | ⚠️ Unaudited |
| ImpulseStakingMulti | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 10 deployments: gnosis `0x0a6844...e38ed5`; gnosis `0x534395...d4f1c9`; polygon `0x0e8f97...c88b26`; polygon `0x1b196e...36d458`; polygon `0x39179f...1ac905`; polygon `0x75ac46...422afa`; polygon `0x7fca69...da80a5`; polygon `0xa6f3b3...97903a`; polygon `0xbd7244...fef02f`; polygon `0xec976d...e1f8ac` | ⚠️ Unaudited |
| ImpulseStakingMulti | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0xccc1ac...bce5f2`; gnosis `0xfa7ca1...57ace8` | ⚠️ Unaudited |
| ImpulseStakingMulti | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7f4300...81425f`; polygon `0xe6e698...02d17f` | ⚠️ Unaudited |
| ImpulseTwtBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x817aaf...0471ef`; bsc `0xf60cce...37a423` | ⚠️ Unaudited |
| ImpulseUsdcQuick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x44e186...fd2d3b`; polygon `0xcf2647...4c3cce`; polygon `0xd8095a...8c8739` | ⚠️ Unaudited |
| ImpulseUsdcQuick | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x83a762...1570a2`; polygon `0xf83a16...43e122` | ⚠️ Unaudited |
| ImpulseUsdtBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3ea8f1...29082f`; bsc `0x4964b3...6af0f0` | ⚠️ Unaudited |
| ImpulseUsdtUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x04595f...107704`; bsc `0xe9d094...3e6798` | ⚠️ Unaudited |
| ImpulseWethDai | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1095ae...c6c242`; polygon `0x115aab...385f8f` | ⚠️ Unaudited |
| ImpulseWethDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x54ae61...cbf1e5` | ⚠️ Unaudited |
| ImpulseXvsBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7f6c66...79e01c`; bsc `0xa80292...36b47b` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x03870b...342210`; bsc `0x625385...fb6bf8`; bsc `0x669f02...7224b7`; bsc `0xb0e694...8fa995` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x0134b9...93cd66`; gnosis `0x3606ec...d7b846` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x04a1a9...4c555f`; gnosis `0xcba8cf...413128` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x0d597d...b62e81`; gnosis `0x227b15...c4f42e` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x260e61...bc8e9e`; gnosis `0xde0c66...0ff139` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x27bc45...7726ab`; gnosis `0xd8095a...8c8739` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x2ce509...d74faa`; gnosis `0x87729e...1f3ea0` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x2df6a1...d310ae`; gnosis `0x855da6...7ed86f` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x43b5bf...167990`; gnosis `0x7c2f74...0b965e` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x459cca...0ea42d`; gnosis `0xb52535...d414a0` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x60052e...0a07cc`; gnosis `0x702d84...56a029` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x62bb65...ea6751`; gnosis `0xf4feb2...0a3868` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x6b7ff8...ff7df6`; gnosis `0x827152...60897e` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x6f9b8a...29ee25`; gnosis `0x859c3b...f016f5` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x78e49a...de692b`; gnosis `0xa814f8...09b562` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x7dad52...3922e0`; gnosis `0x811e1a...28ac8c` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x7df969...64da1c`; gnosis `0x889748...518792` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x80fe0f...2eac09`; gnosis `0xbc80cd...cc2d98` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0xa03f8c...6e1315`; gnosis `0xd5e6e0...f199f2` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0xabc299...29a786`; gnosis `0xe28b65...e7dc6b` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0xc88ad1...56abbd`; gnosis `0xd25e73...c3ddd9` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 21 deployments: bsc `0xd24e19...cf7016`; bsc `0xd32b3b...beca44`; bsc `0xf5d971...fddcdf`; gnosis `0x3f8691...47225d`; gnosis `0x4faa98...6ed87c`; gnosis `0x5233f9...89946a`; gnosis `0x88ef5c...17f025`; gnosis `0xa51bd2...21b889`; gnosis `0xc82aba...8951a7`; gnosis `0xed824a...f0783e`; polygon `0x106174...764cfa`; polygon `0x3f8691...47225d`; polygon `0x6bbdf4...ce3011`; polygon `0x76d353...87f480`; polygon `0x97ea33...fb80e1`; polygon `0xa1912f...861cb0`; polygon `0xa5583b...27a3a6`; polygon `0xbf8153...82dc52`; polygon `0xc51cc5...70f12a`; polygon `0xdc005e...2df2ff`; polygon `0xf59d6c...83e588` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | polygon | n/a | 8 deployments: polygon `0x1e2856...32de83`; polygon `0x78e746...5af153`; polygon `0x7aa774...cee807`; polygon `0x87f323...aa6550`; polygon `0x8a5b8f...d219b9`; polygon `0xb745e8...31e5be`; polygon `0xbccb3e...ddb107`; polygon `0xff1fe3...4686c4` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | polygon | n/a | 5 deployments: polygon `0x5b1ff1...3b4f14`; polygon `0x710275...877bc4`; polygon `0x7c2f74...0b965e`; polygon `0xaca797...ce7336`; polygon `0xc704a0...e1b337` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: bsc `0xebf6a5...e5847d`; gnosis `0xf5d971...fddcdf`; polygon `0x16bc1d...a6bfe2` | ⚠️ Unaudited |
| Optimizer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x54bb6e...f56eb1`; gnosis `0x9401c1...98f308` | ⚠️ Unaudited |
| Optimizer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x5a813d...03bc65`; polygon `0xbca173...66ea63` | ⚠️ Unaudited |
| OptimizerDG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f95b0...8e7ab7` | ⚠️ Unaudited |
| OptimizerDG | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x96771a...4b150e`; polygon `0xc1b577...53cec4` | ⚠️ Unaudited |
| OptimizerELK | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x047cfa...a88b38`; gnosis `0xaf4845...6b7494` | ⚠️ Unaudited |
| OptimizerEPS | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8dafec...df80c0`; bsc `0xe093a9...b8a397` | ⚠️ Unaudited |
| OptimizerWbnb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x281704...486199`; bsc `0x5cb83e...4b0cfb` | ⚠️ Unaudited |
| OptimizerWbnb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6190cd...51cfdd` | ⚠️ Unaudited |
| PancakePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x72ba00...9a7ca9` | ⚠️ Unaudited |
| PancakeSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1e2856...32de83`; bsc `0xdfc6c6...3360ed` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: bsc `0x6bc3f6...404752`; gnosis `0x5a33c0...ca0645`; gnosis `0xebf6a5...e5847d`; polygon `0x5a33c0...ca0645` | ⚠️ Unaudited |
| QuickSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0xa6c090...fb1e6b`; polygon `0xaa14a9...3bbe0f`; polygon `0xe171ff...cd0620` | ⚠️ Unaudited |
| StakingDHV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x106174...764cfa`; bsc `0x35f28a...77de36` | ⚠️ Unaudited |
| StakingDHV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3dc97b...11206e`; bsc `0xf97916...0d894e` | ⚠️ Unaudited |
| StakingDHV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x039c52...25951d`; gnosis `0x589ea3...d0ce7a` | ⚠️ Unaudited |
| StakingDHV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x5dd69e...6bdf15`; gnosis `0x642473...c5f807` | ⚠️ Unaudited |
| StakingDHV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0xb32e05...c6dfe3`; gnosis `0xe45713...067870` | ⚠️ Unaudited |
| StakingDHV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 9 deployments: bsc `0x1b920f...2eac59`; bsc `0x531d85...f5e4c5`; bsc `0x95bfe6...2f3b97`; gnosis `0x0902eb...f7cbf7`; gnosis `0xa3841d...fa1ef3`; polygon `0x006537...9e5576`; polygon `0xb32e05...c6dfe3`; polygon `0xe45713...067870`; polygon `0xebc864...b86799` | ⚠️ Unaudited |
| StakingDHV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1ad459...f2602f`; polygon `0x88cfc1...646df7` | ⚠️ Unaudited |
| StakingPools | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x0889c0...dc27b1`; bsc `0x2e4cec...7d59ea`; gnosis `0x67c649...00a2ca`; gnosis `0x753345...488e69`; gnosis `0xcec2bc...fa2f51`; polygon `0x517584...ac4ff1` | ⚠️ Unaudited |
| StakingPools | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xf2e8cd...a8fa6c`; bsc `0xf59d6c...83e588` | ⚠️ Unaudited |
| StakingPools | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x8660de...063a8d`; gnosis `0xa4e7be...54caf6` | ⚠️ Unaudited |
| StrategyRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 7 deployments: bsc `0x985e9a...72dffd`; gnosis `0x3e140d...869244`; gnosis `0x60c800...ff0452`; polygon `0x548d26...b55796`; polygon `0x60c800...ff0452`; polygon `0xba5d2e...8db3f0`; polygon `0xf60cce...37a423` | ⚠️ Unaudited |
| StrategyRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x325fb2...4eeafe`; bsc `0xdce801...e6afed` | ⚠️ Unaudited |
| StrategyRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x5c10bf...b8a581`; gnosis `0x7e8080...6a5195` | ⚠️ Unaudited |
| StrategyRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: bsc `0x97ea33...fb80e1`; gnosis `0x7cda41...713818`; polygon `0x8bec91...cfc6af` | ⚠️ Unaudited |
| StrategyRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3e140d...869244`; polygon `0xa6b684...34f8bc` | ⚠️ Unaudited |
| UtilProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x03870b...342210`; polygon `0xfce0bb...9ffa0f` | ⚠️ Unaudited |
| UtilProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x18bcce...4ba341`; polygon `0x1fc183...5aa45e` | ⚠️ Unaudited |
| UtilProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1b920f...2eac59`; polygon `0x857417...1d48e8` | ⚠️ Unaudited |
| UtilProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x31be6b...4531e9`; polygon `0xf054c8...c90e03` | ⚠️ Unaudited |
| UtilProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x860e3d...9dd7d9`; polygon `0x940b4f...b70f6e` | ⚠️ Unaudited |
| WbnbVenusStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x813788...50cf26`; bsc `0xf765f8...be88ad` | ⚠️ Unaudited |
| xInfraAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x6bc3f6...404752`; gnosis `0x92450c...d89c8c` | ⚠️ Unaudited |
| XvsVenusStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3b43fe...c2656a`; bsc `0x9564a4...409191` | ⚠️ Unaudited |
| XvsVenusStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x69c5ed...07be58`; bsc `0xcb6e16...f8db95` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0cae51...de3adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0dcb0c...185baa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1ccca1...6eecb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3405a1...026e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x375488...e736bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5d9ab5...167818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x639a64...c62c5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6ab6d6...ef91a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7c598c...6f227d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8182fc...35d1b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa64932...8ce23f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb2c22a...a526c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb44a9b...9c663c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbbc4a8...2cf2d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc931f6...d4ab50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc9baa8...dc2055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd67de0...850454` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf480f3...f00cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfa9343...f8a40f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfbdd19...5d01b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x023228...17bcc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0889c0...dc27b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x548876...7d71c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5e5114...09f1ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x621268...241d8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a6f54...f320eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc9f7d9...f8d8db` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DeHive-Hacken-Audit.pdf](https://github.com/DeHive-finance/dehive-audits/blob/main/DeHive-Hacken-Audit.pdf) | Hacken | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [DeHive-Zokyo-Audit.pdf](https://github.com/DeHive-finance/dehive-audits/blob/main/DeHive-Zokyo-Audit.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13011] DeHive-Hacken-Audit.pdf — no match: No reason recorded
- [13012] DeHive-Zokyo-Audit.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DeHive-Hacken-Audit.pdf | ClusterToken | unmatched — not counted | — | — | no |
| DeHive-Hacken-Audit.pdf | Controller | unmatched — not counted | — | — | no |
| DeHive-Hacken-Audit.pdf | DexAdapterCore | unmatched — not counted | — | — | no |
| DeHive-Hacken-Audit.pdf | QickswapAdapter | unmatched — not counted | — | — | no |
| DeHive-Hacken-Audit.pdf | StakingDHV | unmatched — not counted | — | — | no |
| DeHive-Hacken-Audit.pdf | UniswapAdapter | unmatched — not counted | — | — | no |
| DeHive-Zokyo-Audit.pdf | ClusterToken | unmatched — not counted | — | — | no |
| DeHive-Zokyo-Audit.pdf | Controller | unmatched — not counted | — | — | no |
| DeHive-Zokyo-Audit.pdf | DexAdapterCore | unmatched — not counted | — | — | no |
| DeHive-Zokyo-Audit.pdf | QuickSwapAdapter | unmatched — not counted | — | — | no |
| DeHive-Zokyo-Audit.pdf | StakingDHV | unmatched — not counted | — | — | no |
| DeHive-Zokyo-Audit.pdf | StakingPools | unmatched — not counted | — | — | no |
| DeHive-Zokyo-Audit.pdf | UniswapAdapter | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 126 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 13 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13011] DeHive-Hacken-Audit.pdf
- [13012] DeHive-Zokyo-Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
