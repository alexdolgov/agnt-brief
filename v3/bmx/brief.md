# Agentic Audit Brief: BMX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: BMX (`bmx`)
- Website: [https://www.bmx.trade/](https://www.bmx.trade/)
- Lifecycle: active (Tier 0, 89.3% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, mode, sonic
- Contract surface: 458 unique implementations (650 raw deployments)
- Coverage basis: 6/72 confirmed own live verified implementations (8.3%); conservative 8.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,110,605.00
- On-chain TVL (included contracts): $315,366.31
- TVL by chain: Base $315,366.31

## Project Description

This brief describes the observed EVM deployment and audit surface for BMX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 77 contract row(s) across base, mode, sonic. Structural roles: 57 unclassified, 12 supporting, 8 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 77
- Structural roles: unclassified (57), supporting (12), core (8)
- Contract kinds: contract (74), unclassified (3)
- Detected standards: erc20 (4), accesscontrol (1), erc165 (1), erc20permit (1)
- Frameworks: openzeppelin (19)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 22 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

**Timelock** (`0x6c5a77...41bdd5`, chain 34443)
Origin: manta-atlantic-stake (`0x44ed2c...b3bc0e`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- BMX (`0x548f93...f059b7`, chain 8453)
- BMX (`0x66eed5...0657eb`, chain 34443)
- FastPriceFeed (`0x3d220d...c2b0e4`, chain 34443)
- OptionTokenV3 (`0x3ff7ab...f79713`, chain 8453)
- OrderBook (`0xf9fc0b...258178`, chain 8453)
- PositionManager (`0x2ace8f...855c40`, chain 8453)
- PositionManager (`0x3cb54f...46563e`, chain 34443)
- PositionRouter (`0x927f9c...28d443`, chain 8453)
- PositionRouter (`0x6d6ec3...9fae04`, chain 34443)
- RewardDistributorV2 (`0x366152...c72ba3`, chain 34443)
- RewardRouterV3 (`0x49a976...ad124b`, chain 8453)
- RewardRouterV4 (`0x73bf80...42353c`, chain 34443)
- Router (`0xc60818...c3b174`, chain 8453)
- Router (`0xaa4020...82e6e0`, chain 34443)
- StakedGlp (`0x647559...8bc8de`, chain 8453)
- StakedGlp (`0x0eb231...18c12a`, chain 34443)
- Vault (`0xec8d8d...b4272c`, chain 8453)
- Vault (`0xff745b...f1ae49`, chain 34443)
- Vyper_contract (`0x8b2eea...70452c`, chain 34443)
- wSLT (`0x2ddcf8...058630`, chain 146)
- Yearn Token Vault (`0x4e74d4...bb4c7a`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 77; live-surface rows included: 77 (77 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 89/89 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/72 (8.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 84 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 369 discovered implementations shown in the inventory but excluded from coverage (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 89 of 458 unique; 369 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/128
- Verified + Unaudited implementations: 122
- Verified by bytecode match: 0
- Unverified implementations: 330
- Unique implementations: 458
- Raw deployments: 650
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $315,365.31
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 8.3% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 4 | 3.1% | 2025-07 |
| Spearbit | Tier 1 | 4 | 3.1% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OrderBook | unknown | project_anchor | own_supporting | 0 | sonic | unit-381436 | `0x7e3f5e...3612a6` | ✅ Audited |
| PositionManager | unknown | project_anchor | own_supporting | 0 | sonic | unit-381430 | `0x620253...89c886` | ✅ Audited |
| PositionRouter | unknown | project_anchor | own_supporting | 0 | sonic | unit-381434 | `0x77f480...488246` | ✅ Audited |
| Router | unknown | project_anchor | own_supporting | 0 | sonic | unit-381417 | `0x0a2653...953169` | ✅ Audited |
| Vault | unknown | project_anchor | own_supporting | 0 | sonic | unit-381443 | `0x9cc4e8...a38acf` | ✅ Audited |
| VaultUtils | unknown | project_anchor | own_supporting | 0 | sonic | unit-381429 | `0x5174c0...f9bad2` | ✅ Audited |

### ⚠️ Verified + Unaudited (122)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Vault | core_logic | project_anchor | own_supporting | 0 | base | unit-381503 | `0xec8d8d...b4272c` | ⚠️ Unaudited |
| MultiAccount | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x8ab178...3f3b86` | ⚠️ Unaudited |
| StrategyVelodromeMultiRewards | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x1be4bb...6d4c97`; base `0xa5ff7a...486f1a`; mode `0x740cfc...819f7e` | ⚠️ Unaudited |
| AirdropClaim | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf681e2...6dc060` | ⚠️ Unaudited |
| BatchSender | unknown | project_anchor | own_supporting | 0 | mode | unit-381465 | `0x4b3491...55f69d` | ⚠️ Unaudited |
| BLT | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-381502 | `0xe771b4...dd0633` | ⚠️ Unaudited |
| BltManager | unknown | project_anchor | own_supporting | 0 | base | unit-381500 | `0x9fac7b...d406c5` | ⚠️ Unaudited |
| BMX | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-381497 | `0x548f93...f059b7` | ⚠️ Unaudited |
| BMX | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mode | unit-381467 | `0x66eed5...0657eb` | ⚠️ Unaudited |
| BMX Timelock | unknown | project_anchor | own_supporting | 0 | mode | unit-381478 | `0x7c6012...8ca5e2` | ⚠️ Unaudited |
| BmxLockingContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff1274...27a903` | ⚠️ Unaudited |
| bnBMX | unknown | project_anchor | own_supporting | 0 | mode | unit-381484 | `0x9d0bad...92449a` | ⚠️ Unaudited |
| BoardwalkFeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: base `0x0beefc...9c477e`; base `0x22dee3...d5721e`; base `0x301cf8...67f822`; base `0x3fe706...a799c7`; base `0x667e91...872f62`; base `0x66a905...56f580`; base `0x6bfbd2...c19a24`; base `0x7009f5...2f605a`; base `0xa63946...5e7e1a`; base `0xc3006b...65b4a2`; base `0xdf2833...1fd1cb`; base `0xefa297...68b4ba`; base `0xfa170b...59ab96` | ⚠️ Unaudited |
| BoardwalkLPManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: base `0x4e500d...233834`; base `0x74dcde...9a5164`; base `0x802795...3cc7e4`; base `0x833548...d317b0`; base `0x957617...57bbbe`; base `0x9b751d...0a317e`; base `0x9e5015...c9a193`; base `0xa3d701...6cd53f`; base `0xc14dd4...f7f375`; base `0xcaf8e0...5e0016`; base `0xe38425...e8bb1b`; base `0xecebe1...e311e7`; base `0xf984b3...d24a26` | ⚠️ Unaudited |
| BoardwalkToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: base `0x002e66...74d534`; base `0x0fb370...6449fa`; base `0x1ad44c...8fdc6e`; base `0x2a0e6c...912b2a`; base `0x4fd2d0...60d651`; base `0x524a1a...7bc903`; base `0x6c4d08...66be3d`; base `0xc28822...7c1de5`; base `0xce9e00...6e7333`; base `0xd753e4...f0f8dc`; base `0xd88b8c...422dad`; base `0xeb084d...dbe73e`; base `0xf37d39...545ff4` | ⚠️ Unaudited |
| BoostBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x1a6661...6f57b7`; base `0x4ba159...156438`; base `0x5d8c2c...0c3a85`; base `0xf6bddb...437ee1` | ⚠️ Unaudited |
| bUSD | unknown | project_anchor | own_supporting | 0 | sonic | unit-381421 | `0x25431f...38c4d6` | ⚠️ Unaudited |
| bUSD | unknown | project_anchor | own_supporting | 0 | mode | unit-381477 | `0x77f480...488246` | ⚠️ Unaudited |
| DailyEpochGauge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: base `0x001e45...855b05`; base `0x0b14b0...0aa959`; base `0x25892e...f82bfe`; base `0x3656ca...063098`; base `0x39909c...e3589f`; base `0x4395b5...22786b`; base `0x577d95...9133f9`; base `0xd8df4f...01f0dc`; base `0xe578cc...9f2261`; base `0xe79dbb...59d2e1` | ⚠️ Unaudited |
| DeliHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x570a48...83b0cc` | ⚠️ Unaudited |
| FastPriceEvents | unknown | project_anchor | own_supporting | 0 | sonic | unit-381447 | `0xc0136b...536df2` | ⚠️ Unaudited |
| FastPriceEvents | unknown | project_anchor | own_supporting | 0 | mode | unit-381453 | `0x005591...c6e36b` | ⚠️ Unaudited |
| FastPriceFeed | unknown | project_anchor | own_supporting | 0 | sonic | unit-381428 | `0x512f8d...dbd543` | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e4eed...5d6e38` | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-381463 | `0x3d220d...c2b0e4` | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: base `0x115eae...9290d0`; base `0x221586...9761e2`; base `0x261764...16a4cc`; base `0x326b1b...43a2ea`; base `0x3f7b17...1a031c`; base `0x4f870d...7dcf5a`; base `0x576a43...9e371a`; base `0x7219c8...7e5d8c`; base `0x80cf58...c4af16`; base `0xac6a13...b4293f`; base `0xba05ef...d3a6ff`; base `0xc26a8b...1f74b5`; base `0xe8f5d4...910992` | ⚠️ Unaudited |
| FeeProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: base `0x2954bc...9e53ff`; base `0x2f2c54...b0f4c6`; base `0x584e21...c0a14d`; base `0x5aa156...146429`; base `0x650647...0b41c2`; base `0x94cbdb...df6c12`; base `0xb07cc7...066a63`; base `0xe2f160...3bd9cd`; base `0xe466d6...a2988a`; base `0xf6e369...325532` | ⚠️ Unaudited |
| fMLT (Tracker) | unknown | project_anchor | own_supporting | 0 | mode | unit-381489 | `0xccbf79...842fc3` | ⚠️ Unaudited |
| fSLT (Distributor) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381438 | `0x86c48e...f075cf` | ⚠️ Unaudited |
| fSLT (Tracker) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381424 | `0x3acf67...bce36e` | ⚠️ Unaudited |
| fsMLT (DistributorV2) | unknown | project_anchor | own_supporting | 0 | mode | unit-381475 | `0x749da3...846b9b` | ⚠️ Unaudited |
| fsMLT (Tracker) | unknown | project_anchor | own_supporting | 0 | mode | unit-381469 | `0x6c72ad...972a4f` | ⚠️ Unaudited |
| fsSLT (Tracker) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381450 | `0xd5c313...b80a8e` | ⚠️ Unaudited |
| GlpBalance | unknown | project_anchor | own_supporting | 0 | sonic | unit-381431 | `0x6a24df...111af0` | ⚠️ Unaudited |
| GlpBalance | unknown | project_anchor | own_supporting | 0 | mode | unit-381473 | `0x7278ab...9128a9` | ⚠️ Unaudited |
| GlpManager | unknown | project_anchor | own_supporting | 0 | sonic | unit-381448 | `0xc60818...c3b174` | ⚠️ Unaudited |
| GlpManager | unknown | project_anchor | own_supporting | 0 | mode | unit-381490 | `0xf9fc0b...258178` | ⚠️ Unaudited |
| GovernanceVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x141728...01322d`; base `0x1e319f...760b50`; base `0x487451...c4974c`; base `0x575599...84be8c`; base `0xbea2cd...84fbe7`; base `0xc02ee5...c82cf3`; base `0xee5451...cd303e`; base `0xf0586b...f26bdc` | ⚠️ Unaudited |
| IncentiveGauge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: base `0x55b127...71da2a`; base `0x584864...aca32a`; base `0x59d7bf...469213`; base `0x5fda45...bc4929`; base `0x840166...b5404a`; base `0x8546b4...861c60`; base `0xb727a2...896a05`; base `0xb86418...cb9dc7`; base `0xc04f64...162b6a`; base `0xc8c4b6...d64441` | ⚠️ Unaudited |
| IntegratorFeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x0e2b3f...589c8b`; base `0x2aa3b0...52c87b`; base `0x2c4d52...744558`; base `0x58b766...ec38b4`; base `0x7e4b63...91673e`; base `0xfcb11f...4bd3a6` | ⚠️ Unaudited |
| LaunchFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: base `0x080ac5...04d6d7`; base `0x0a818f...50bce7`; base `0x16cdca...c53b42`; base `0x3633ea...cd18ae`; base `0x36f70b...51821f`; base `0x452817...c93993`; base `0x6a1e5c...cd2c25`; base `0x78c5a4...460cba`; base `0x85b3e9...c950e8`; base `0x960b2a...e23b2d`; base `0x9772fc...1f256f`; base `0xc34df7...a3636e` | ⚠️ Unaudited |
| LPLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x04be36...894338`; base `0x202357...07d47d`; base `0x564dfb...9c690d`; base `0x76b4ec...c29398`; base `0xa4048e...f7ec9c`; base `0xb5cdac...f9cee7`; base `0xd8989d...42ba99`; base `0xf34551...2e9afa` | ⚠️ Unaudited |
| LPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: base `0x1443f1...6cfc8c`; base `0x26f4d3...433f77`; base `0x2a91ee...961df1`; base `0x3875e8...684aee`; base `0x3c4c8c...2153f0`; base `0x3ea260...ac89d4`; base `0x82f209...3881d3`; base `0x9864cb...6a9c59`; base `0xac45d1...d34487`; base `0xb71f04...0e1c45`; base `0xc3adb3...058807`; base `0xe70bc4...94f1ae`; base `0xf78cb6...19a878` | ⚠️ Unaudited |
| MLT | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mode | unit-381483 | `0x952adb...684439` | ⚠️ Unaudited |
| MultiAccount | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x1c03b6...78b780` | ⚠️ Unaudited |
| MultiAccount | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x6d6392...719ddd` | ⚠️ Unaudited |
| OptionTokenV3 | token | project_anchor | own_supporting | 0 | base | unit-381494 | `0x3ff7ab...f79713` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x55f123...3d4364`; base `0xb8372b...3faa2a` | ⚠️ Unaudited |
| OrderBook | unknown | project_anchor | own_supporting | 0 | base | unit-381504 | `0xf9fc0b...258178` | ⚠️ Unaudited |
| OrderBook | unknown | project_anchor | own_supporting | 0 | mode | unit-381472 | `0x714aad...09fd5d` | ⚠️ Unaudited |
| OrderBookReader | unknown | project_anchor | own_supporting | 0 | mode | unit-381488 | `0xcaf486...909118` | ⚠️ Unaudited |
| ParticipationDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x0660eb...d2320d`; base `0x326875...1288c4`; base `0x384e1e...19f13a`; base `0x4ea968...731803`; base `0x5f2e1c...eb7249`; base `0x68db72...967ecf`; base `0xe92e9e...6ecd41`; base `0xfbbdcc...f225a4` | ⚠️ Unaudited |
| PositionManager | governance | project_anchor | own_supporting | 0 | base | unit-381493 | `0x2ace8f...855c40` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfcc1f4...791125` | ⚠️ Unaudited |
| PositionManager | governance | project_anchor | own_supporting | 0 | mode | unit-381462 | `0x3cb54f...46563e` | ⚠️ Unaudited |
| PositionManagerAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: base `0x1c4ddf...21a576`; base `0x32d21f...fe0798`; base `0x4b819f...949453`; base `0x5f37da...4c06ce`; base `0x7ddd07...12fc44`; base `0x9f1bb9...760010`; base `0xac4e7d...60072c`; base `0xb05f9f...b9c42d`; base `0xe8f132...f1d352`; base `0xfd9ca0...763656` | ⚠️ Unaudited |
| PositionRouter | adapter | project_anchor | own_supporting | 0 | base | unit-381499 | `0x927f9c...28d443` | ⚠️ Unaudited |
| PositionRouter | adapter | project_anchor | own_supporting | 0 | mode | unit-381470 | `0x6d6ec3...9fae04` | ⚠️ Unaudited |
| PresaleManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: base `0x12aa99...c6ac47`; base `0x1a1bfe...8eea27`; base `0x233f68...97a193`; base `0x24d14f...96837b`; base `0x2b678e...4ed616`; base `0x33e476...193912`; base `0x68c899...e402e6`; base `0x729426...98a33a`; base `0x8895db...e91169`; base `0x955bf2...1fb567`; base `0xc89b2e...e7097c`; base `0xcea26f...51da55`; base `0xee08d8...e354d5` | ⚠️ Unaudited |
| Reader | unknown | project_anchor | own_supporting | 0 | mode | unit-381485 | `0xa3ea99...4340e9` | ⚠️ Unaudited |
| ReferralReader | unknown | project_anchor | own_supporting | 0 | mode | unit-381457 | `0x266d4c...a569b8` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06c358...e34346` | ⚠️ Unaudited |
| RewardDistributorV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x025908...ce5266` | ⚠️ Unaudited |
| RewardDistributorV2 | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-381460 | `0x366152...c72ba3` | ⚠️ Unaudited |
| RewardReader | unknown | project_anchor | own_supporting | 0 | mode | unit-381461 | `0x3c293f...673a50` | ⚠️ Unaudited |
| RewardRouterV3 | adapter | project_anchor | own_supporting | 0 | base | unit-381495 | `0x49a976...ad124b` | ⚠️ Unaudited |
| RewardRouterV4 | unknown | project_anchor | own_supporting | 0 | sonic | unit-381418 | `0x0df4db...bb8064` | ⚠️ Unaudited |
| RewardRouterV4 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x645603...bd4ff4` | ⚠️ Unaudited |
| RewardRouterV4 | adapter | project_anchor | own_supporting | 0 | mode | unit-381474 | `0x73bf80...42353c` | ⚠️ Unaudited |
| RewardTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x2d5875...fbf63c`; base `0xa2242d...2badca` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | base | unit-381501 | `0xc60818...c3b174` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | mode | unit-381486 | `0xaa4020...82e6e0` | ⚠️ Unaudited |
| sbBMX (BonusDistributor) | unknown | project_anchor | own_supporting | 0 | mode | unit-381455 | `0x0df4db...bb8064` | ⚠️ Unaudited |
| sbBMX (Tracker) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381432 | `0x6d6ec3...9fae04` | ⚠️ Unaudited |
| sbBMX (Tracker) | unknown | project_anchor | own_supporting | 0 | mode | unit-381464 | `0x4a2b3c...944be9` | ⚠️ Unaudited |
| sbfBMX (Distributor) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381446 | `0xb7209e...dbb9a9` | ⚠️ Unaudited |
| sbfBMX (Distributor) | unknown | project_anchor | own_supporting | 0 | mode | unit-381458 | `0x26e6c4...a5e607` | ⚠️ Unaudited |
| sbfBMX (Tracker) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381425 | `0x3cb54f...46563e` | ⚠️ Unaudited |
| sbfBMX (Tracker) | unknown | project_anchor | own_supporting | 0 | mode | unit-381466 | `0x548f93...f059b7` | ⚠️ Unaudited |
| sBMX (Distributor) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381451 | `0xda6a45...42b462` | ⚠️ Unaudited |
| sBMX (Distributor) | unknown | project_anchor | own_supporting | 0 | mode | unit-381459 | `0x338cf5...b1d9c9` | ⚠️ Unaudited |
| sBMX (Tracker) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381437 | `0x7fb62e...811b46` | ⚠️ Unaudited |
| sBMX (Tracker) | unknown | project_anchor | own_supporting | 0 | mode | unit-381476 | `0x773f34...4e00a3` | ⚠️ Unaudited |
| SealedArtMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ac5a2...71786d` | ⚠️ Unaudited |
| ShortsTracker | unknown | project_anchor | own_supporting | 0 | sonic | unit-381452 | `0xe974a8...0fa5f3` | ⚠️ Unaudited |
| ShortsTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37e626...80f420` | ⚠️ Unaudited |
| ShortsTracker | unknown | project_anchor | own_supporting | 0 | mode | unit-381471 | `0x6fd75b...08d80d` | ⚠️ Unaudited |
| SignatureStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x3668fa...fa818c`; base `0xb24f95...de3ec6`; base `0xc19e66...fb4996`; base `0xcbfb81...38268f`; mode `0xf05432...3ebb1a` | ⚠️ Unaudited |
| SLT | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | unit-381444 | `0x9e462d...3a9e1e` | ⚠️ Unaudited |
| StakedGlp | token | project_anchor | own_supporting | 0 | base | unit-381498 | `0x647559...8bc8de` | ⚠️ Unaudited |
| StakedGlp | token | project_anchor | own_supporting | 0 | mode | unit-381456 | `0x0eb231...18c12a` | ⚠️ Unaudited |
| StakedSlt | unknown | project_anchor | own_supporting | 0 | sonic | unit-381426 | `0x47cd08...bfcfcb` | ⚠️ Unaudited |
| StakeManager | unknown | project_anchor | own_supporting | 0 | mode | unit-381491 | `0xfc9a13...7bf5e0` | ⚠️ Unaudited |
| StakingRewardRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfbe760...49466c` | ⚠️ Unaudited |
| StakingRewardsMulti | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x3bff3c...7b51ac`; base `0xe0792f...a75ebc`; mode `0x4ab0b7...1cb78b` | ⚠️ Unaudited |
| StakingRewardsZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: base `0xb6e64e...9af9e0`; mode `0x22a298...8e94f4` | ⚠️ Unaudited |
| SudoFactoryWrapper | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13918a...a3fb04` | ⚠️ Unaudited |
| SudoSingleFactoryWrapper | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e4ecb...b796f0` | ⚠️ Unaudited |
| SudoVRFRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd9bbd...fbdeea` | ⚠️ Unaudited |
| SymmioDepositorLpToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7beca8...457020` | ⚠️ Unaudited |
| SymmioPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x9206d9...a23c59` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0682f3...56f848` | ⚠️ Unaudited |
| Timelock | governance | project_anchor | own_supporting | 0 | mode | unit-381468 | `0x6c5a77...41bdd5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xc0ff4b...a2a904` | ⚠️ Unaudited |
| V2PositionHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: base `0x173569...7ba75b`; base `0x51733d...8223bb`; base `0x6582fb...83a004`; base `0x795be1...46c011`; base `0xc3b408...57ebcb`; base `0xc41b64...946c1a`; base `0xd88c07...12da20`; base `0xef2914...945c91`; base `0xf76fb3...9646da`; base `0xffebac...77bd84` | ⚠️ Unaudited |
| V4PositionHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: base `0x0e726d...bddbdd`; base `0x1ef22d...ddfeda`; base `0x20ca2c...422dba`; base `0x36c2a9...edeb2b`; base `0x41c467...d075f9`; base `0x4b1c67...b0c5cc`; base `0x6632e2...bae471`; base `0x7591c8...8ad44a`; base `0xc8cffa...f548d1`; base `0xd79092...abb797` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | mode | unit-381492 | `0xff745b...f1ae49` | ⚠️ Unaudited |
| VaultErrorController | unknown | project_anchor | own_supporting | 0 | sonic | unit-381423 | `0x31e5ff...c256d4` | ⚠️ Unaudited |
| VaultErrorController | unknown | project_anchor | own_supporting | 0 | mode | unit-381454 | `0x071b4b...94c3e8` | ⚠️ Unaudited |
| VaultPriceFeed | unknown | project_anchor | own_supporting | 0 | sonic | unit-381440 | `0x8e28ed...e0beac` | ⚠️ Unaudited |
| VaultPriceFeed | unknown | project_anchor | own_supporting | 0 | mode | unit-381480 | `0x845349...a1edca` | ⚠️ Unaudited |
| VaultReader | unknown | project_anchor | own_supporting | 0 | mode | unit-381487 | `0xc133f5...7b851a` | ⚠️ Unaudited |
| VaultUtils | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xcca8e0...63d405`; base `0xfb7f4c...9699c3` | ⚠️ Unaudited |
| VaultUtils | unknown | project_anchor | own_supporting | 0 | mode | unit-381479 | `0x7fb62e...811b46` | ⚠️ Unaudited |
| VestingStream | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: base `0x0a43c1...2b989e`; base `0x0f3794...0b70a0`; base `0x31a1c2...95dc9e`; base `0x4197d7...537c43`; base `0x5736a2...e694a7`; base `0x64f250...36b051`; base `0x68fb62...2cda93`; base `0x6f4280...b71646`; base `0x8488d8...91cb37`; base `0x957662...caeace`; base `0xa77ab4...bd6fd6`; base `0xc92040...1d49c7`; base `0xdd8be2...48924d` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xb960af...29e666`; base `0xce9e7c...5d77c2` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | mode | unit-381482 | `0x8b2eea...70452c` | ⚠️ Unaudited |
| wBLTRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x35e37d...f9d598`; base `0x85237c...2246c0` | ⚠️ Unaudited |
| WeightedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3dd79d...af26f4` | ⚠️ Unaudited |
| wMLTRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7bf2e9...0c37f0` | ⚠️ Unaudited |
| wSLT | unknown | project_anchor | own_supporting | 0 | sonic | unit-381422 | `0x2ddcf8...058630` | ⚠️ Unaudited |
| Yearn Token Vault | core_logic | project_anchor | own_supporting | 0 | base | unit-381496 | `0x4e74d4...bb4c7a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (330)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BatchSender | unknown | project_anchor | own_supporting | 0 | sonic | unit-381433 | `0x7724df...d61edc` | ❓ Unverified |
| bnBMX | unknown | project_anchor | own_supporting | 0 | sonic | unit-381420 | `0x1861fe...898ae2` | ❓ Unverified |
| fsSLT (DistributorV2) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381427 | `0x4e7624...7c137c` | ❓ Unverified |
| OrderBookReader | unknown | project_anchor | own_supporting | 0 | sonic | unit-381419 | `0x145e8f...a9d587` | ❓ Unverified |
| Reader | unknown | project_anchor | own_supporting | 0 | sonic | unit-381442 | `0x9c959a...441a5e` | ❓ Unverified |
| ReferralReader | unknown | project_anchor | own_supporting | 0 | sonic | unit-381449 | `0xd3c5de...39f905` | ❓ Unverified |
| ReferralStorage | unknown | project_anchor | own_supporting | 0 | sonic | unit-381445 | `0xb677be...741acb` | ❓ Unverified |
| ReferralStorage | unknown | project_anchor | own_supporting | 0 | mode | unit-381481 | `0x88a3c3...ca6210` | ❓ Unverified |
| RewardReader | unknown | project_anchor | own_supporting | 0 | sonic | unit-381435 | `0x7c903c...23feaa` | ❓ Unverified |
| sbBMX (BonusDistributor) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381441 | `0x92c976...6ffd29` | ❓ Unverified |
| StakeManager | unknown | project_anchor | own_supporting | 0 | sonic | unit-381439 | `0x8bc6d6...42ed8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3811ee...885452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x49a976...ad124b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x57746e...cbb32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8f7845...a993d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb0ee1c...2b08db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc28f1d...9067e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd43c61...4818d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x000256...b322b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x013a32...b37cdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x013dbc...bbe8ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x021ecb...94ec79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x033bb6...a053ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03dcf9...fe50aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04c891...8d3293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04e5ee...7bc5b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05d97a...092614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x073d8b...af157b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x07fc59...9040bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08ad38...6e7c05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08e714...55826d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0997d8...7924f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0af534...7c4727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c01e5...4656dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c3653...87ddd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0db1b9...48e317` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e0088...ff5ae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0f6795...ba5825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10ab19...893db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1180e0...0b4db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x128ed4...6e1ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13b11d...243055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x14332c...f4fe6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x16dda3...eb4302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17aaa9...650137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17e053...0cf459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18e822...8e4e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1926ec...db3e04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19e2f1...65a5e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b6ccd...cb5cfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d556f...f5edec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e6f36...45b610` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e911c...93b513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1f05d4...ca2ead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20de7f...f55877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x22fd61...d26b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x23461f...41d65c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x248fb7...cb0176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2495e1...3f745d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x24b70a...b5c342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25136b...a25295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25f112...d458af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x262912...1780ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2744fc...1478f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2756ca...38ea63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2cd5ac...3e522b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2ce0be...eef3ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d24ba...61402f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d62b6...14b27d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2dd95c...b15d0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e4553...29f053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2ee8e8...21db3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3003a6...45d235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3085f2...ae85cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x309b9c...ecc460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x321e93...65ca00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3223d9...945b74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3305c4...83660b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36831b...b8fb8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36a7ef...65e035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37aeb6...44cf3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x381f28...2d40f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x38e5be...78077e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x394210...39f4fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c9f79...53d36f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3cb54f...46563e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d1634...e0c578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3dafa0...b54179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e8120...6bd2ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4082f8...4d9dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x40cfec...08314f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x41d1d2...383dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x423c78...e3a849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x426c41...2f6fdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45bbbb...6147f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x46940d...cf0765` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x46e863...203407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x47cd08...bfcfcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4b32a4...470f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4b7a40...6aa403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c5215...b13e95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4cae53...ab3518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4cca5c...82750f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4cfd26...7c6305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4d0421...b39832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4d05e1...7493f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4d2ed7...1f497f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4d4554...d3c469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4d7e65...18fe71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4e87fb...a9b8f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x50ffc6...e33aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51db1c...1f7ceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x545e2b...bf9bcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5490b6...23a1e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x54d0a7...82e1c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x55cca7...23846c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5624f6...7761ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5852ec...336649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5d36a8...ae1e3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e6882...4909de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5fc8dc...0eeb58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5fd734...2a18f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x608ebb...486652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x646374...c52972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x662b64...72de27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x68d493...a466d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x68dc99...c79680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a24df...111af0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c2b4f...33047d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c72ad...972a4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6cb1bd...e8bb4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d6ec3...9fae04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x702a06...c04faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7057a9...59e388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70f4d7...9e64b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70fff9...8b9ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x710383...1a925b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x717801...4eae48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x729501...0e2529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x731ae0...4c013f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x73f0f5...cee6ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7503e6...96d795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x755843...0bea71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x760370...35f23c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x76f7da...61dbbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x77ef71...fad202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x77f480...488246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x786acc...633cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7971aa...ba5a35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7c5383...eddcb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d8ce5...4db1d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e8286...52f6a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ef2db...820867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7f3d04...4fb6bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7fb62e...811b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x820473...787d72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82b8c4...e4c0e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82e98c...aa151a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83a8fb...8aa117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83b7b5...3faa2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x84c34b...01ff75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x85ab0d...4b4230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x86007c...4d9d3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x86260f...45f39b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x86fbf6...073231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8a5e2e...603ee4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8de101...4b32d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e7f33...399a0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8f4ef4...5932eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fd245...a7a34d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x905238...c89e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9133d1...930620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91ebc8...87e02c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x922e4d...488d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x923e7d...11a302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x92c976...6ffd29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x940c5c...61571a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x942954...863476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97495e...01bb34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x982538...66da7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99413e...f3934f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x995a33...d82d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99819d...cba1a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99af44...e3efa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9a8f03...a8f70f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d0752...756bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9df444...98e269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9dfdc0...d849a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f0fb4...961488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f8d64...fb53cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa07280...57dedb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0b2b7...cbaae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1278a...2084aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1e374...05d37a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa223eb...503783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa254c1...08e776` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa36b73...c514fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa41ce6...ebf03b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa440d2...c227ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5aa6c...a85329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa713e7...9dd6a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa9f0fa...9879f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaae9a5...47cc5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac8da2...028fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xad13f0...5d5a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf944d...9891d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb03bd8...4911f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb15dd2...f86bea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb3a398...83114c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb47341...945069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5d67e...b22881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5fefa...e4924e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb689fe...f3a0b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7034a...b50fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7209e...dbb9a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb81223...eea825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8bfbf...f38673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8ce87...d8a8cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb8b71...c63fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb970a...a556eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd16b1...53a785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe05d5...aa96ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc16492...6e7f49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc2c6e4...5b1cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc31f15...0a5c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc3794a...9fe45a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc43cf1...f9a923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5d4e4...413313` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc6049d...aec8db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc67f11...c5d775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc73b6d...aab2dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc77f39...ed3159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc7cce6...a925e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc922e2...50f848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcb0e5d...a9829e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcb460e...65dbaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc6d00...727828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc774f...b39ba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xccbf79...842fc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xccd083...1c2c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce3a50...b8d330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf2b70...ab710e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd101d8...da10c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1cea7...447f15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2011c...f6025f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd32ed8...3dc64c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3c2de...ac36f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd50842...3692bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd64b7c...39cd4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd7108f...f2d888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd73619...b7c93f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd73744...8d09d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd9d396...5e06ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd9d788...4ca4bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdbb465...6326fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd8ca8...a099e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde0d75...ed1597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde861a...bb1a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdec1fb...d4e871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf2c22...138f5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf2e12...499b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdfc74b...70bc50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe051dd...f7becb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0a268...661362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe2d0bb...3f9799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe36639...04f647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe53e67...caa669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe65b83...7784ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe689db...036db0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe68bd6...66bee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6db0d...66977c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6e1d6...cc49a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe7107b...ae41cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe80211...334c40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe895c7...7a4e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe974a8...0fa5f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9f324...ee3022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb6788...b77689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xebd389...a42d56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec31c8...022039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec349a...ca867a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xedf2d8...49b8d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee1a6c...ec880b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee6d30...609a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xef1878...ec0b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xefdd8c...3bd936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf00466...0e1fe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf02cdc...394926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf113f0...543f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf11b81...540eb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf30f3d...86fcd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf43033...3155b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf48c54...be3b67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf491a9...d5fc9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5a008...cb9af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9388d...4bd059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9a352...596461` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9fba8...c5f509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfba40d...9323c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfc33cc...865489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfc3838...f186ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd4e27...bd38ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe7859...4e8136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xffdcfd...f58283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0a2653...953169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0afb06...ed4049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x16a386...c58340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x26a316...6b87b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x290cba...e6d72d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2a2dc9...e62b2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2cfaf7...a0c709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x4d3f24...30607b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x533d54...f779f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x786acc...633cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7bc8a2...91dc06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7f04c0...10453a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x811f42...c0ec39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x812481...593fe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8e28ed...e0beac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x900a16...23b64d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9b44dd...64532d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa2ce63...dae3ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xaeadcf...616e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xbc609a...d4175d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xc3a121...c6289f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xd1215e...138c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe0bace...6ca278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe974a8...0fa5f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xeaed16...10c0dd` | ❓ Unverified |
| VaultReader | unknown | project_anchor | own_supporting | 0 | sonic | unit-381416 | `0x071b4b...94c3e8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Cantina_Audit_Jul_2025.pdf](https://github.com/useboardwalk/morphex-contracts/blob/main/audits/Cantina_Audit_Jul_2025.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | matched | 4 | 0 | 0 | 0 | medium |
| [Sherlock_Audit_Jul_2025.pdf](https://github.com/useboardwalk/morphex-contracts/blob/main/audits/Sherlock_Audit_Jul_2025.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20664] Cantina_Audit_Jul_2025.pdf — matched: No explicit scope section; contracts inferred from findings and summary mentioning 'core BMX contracts (GMX fork)' and specific files.
- [20667] Sherlock_Audit_Jul_2025.pdf — matched: Scope section lists 5 files; audit date is July 24-25, 2025, so end date is July 25.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Cantina_Audit_Jul_2025.pdf | Orderbook | own contract | OrderBook (alternative) `0x714aad...09fd5d` — deployed 2024-07-01 20:04:05+03 — liveness: live (code_present_context)<br>OrderBook (alternative) `0xf9fc0b...258178` — deployed 2023-08-23 18:48:53+03 — liveness: live (code_present_context)<br>OrderBook (selected) `0x7e3f5e...3612a6` — deployed 2025-03-24 04:46:38+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-03-24 was 130d from audit; next candidate 396d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Audit_Jul_2025.pdf | Vault | own contract | Vault (alternative) `0xec8d8d...b4272c` — deployed 2023-08-23 18:21:41+03 — liveness: live (code_present_context)<br>Vault (selected) `0x9cc4e8...a38acf` — deployed 2025-03-24 04:32:18+03 — liveness: live (code_present_context)<br>Vault (alternative) `0xff745b...f1ae49` — deployed 2024-07-01 19:58:57+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-03-24 was 130d from audit; next candidate 396d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Audit_Jul_2025.pdf | PositionRouter | own contract | PositionRouter (selected) `0x77f480...488246` — deployed 2025-03-24 04:54:47+03 — liveness: live (code_present_context)<br>PositionRouter (alternative) `0x927f9c...28d443` — deployed 2023-08-23 18:51:55+03 — liveness: live (current_address_book_code)<br>PositionRouter (alternative) `0x6d6ec3...9fae04` — deployed 2024-07-01 20:06:43+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-03-24 was 130d from audit; next candidate 396d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Audit_Jul_2025.pdf | VaultUtils | own contract | VaultUtils (alternative) `0x7fb62e...811b46` — deployed 2024-07-01 20:01:47+03 — liveness: live (code_present_context)<br>VaultUtils (selected) `0x5174c0...f9bad2` — deployed 2025-03-24 04:34:18+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-03-24 was 130d from audit; next candidate 396d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_Audit_Jul_2025.pdf | BasePositionManager | unmatched — not counted | — | listed in scope | no |
| Sherlock_Audit_Jul_2025.pdf | OrderBook | own contract | OrderBook (alternative) `0x714aad...09fd5d` — deployed 2024-07-01 20:04:05+03 — liveness: live (code_present_context)<br>OrderBook (alternative) `0xf9fc0b...258178` — deployed 2023-08-23 18:48:53+03 — liveness: live (code_present_context)<br>OrderBook (selected) `0x7e3f5e...3612a6` — deployed 2025-03-24 04:46:38+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-03-24 was 123d from audit; next candidate 389d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_Audit_Jul_2025.pdf | PositionManager | own contract | PositionManager (alternative) `0x3cb54f...46563e` — deployed 2024-07-01 20:09:43+03 — liveness: live (current_address_book_code)<br>PositionManager (alternative) `0x2ace8f...855c40` — deployed 2023-08-23 19:01:27+03 — liveness: live (current_address_book_code)<br>PositionManager (selected) `0x620253...89c886` — deployed 2025-03-24 04:56:24+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-03-24 was 123d from audit; next candidate 389d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_Audit_Jul_2025.pdf | PositionRouter | own contract | PositionRouter (selected) `0x77f480...488246` — deployed 2025-03-24 04:54:47+03 — liveness: live (code_present_context)<br>PositionRouter (alternative) `0x927f9c...28d443` — deployed 2023-08-23 18:51:55+03 — liveness: live (current_address_book_code)<br>PositionRouter (alternative) `0x6d6ec3...9fae04` — deployed 2024-07-01 20:06:43+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-03-24 was 123d from audit; next candidate 389d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_Audit_Jul_2025.pdf | Router | own contract | Router (selected) `0x0a2653...953169` — deployed 2025-03-24 04:32:26+03 — liveness: live (code_present_context)<br>Router (alternative) `0xaa4020...82e6e0` — deployed 2024-07-01 19:59:13+03 — liveness: live (code_present_context)<br>Router (alternative) `0xc60818...c3b174` — deployed 2023-08-23 18:21:55+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-03-24 was 123d from audit; next candidate 389d; normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xec8d8d...b4272c` | Vault | core_logic | $315,365.31 | Verified native implementation with $315,365.31 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x3d220d...c2b0e4` | FastPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x3ff7ab...f79713` | OptionTokenV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf9fc0b...258178` | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2ace8f...855c40` | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x3cb54f...46563e` | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x927f9c...28d443` | PositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x6d6ec3...9fae04` | PositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x366152...c72ba3` | RewardDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x49a976...ad124b` | RewardRouterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x73bf80...42353c` | RewardRouterV4 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc60818...c3b174` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xaa4020...82e6e0` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x647559...8bc8de` | StakedGlp | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x6c5a77...41bdd5` | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xff745b...f1ae49` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 60 |
| upstream | 2 |
| standard_library | 5 |
| needs_review | 391 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: temporal_name=8

Fork inheritance lineage and inherited audits are included when available.
