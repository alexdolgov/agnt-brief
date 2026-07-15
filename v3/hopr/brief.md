# Agentic Audit Brief: HOPR

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

- Project: HOPR (`hopr`)
- Website: [https://hoprnet.org](https://hoprnet.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: chain-31337, gnosis
- Contract surface: 118 unique implementations (265 raw deployments)
- Coverage basis: 0/24 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $862,408.19
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for HOPR. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 26 contract row(s) across chain-31337, gnosis. Structural roles: 18 supporting, 4 core, 4 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 26
- Structural roles: supporting (18), core (4), unclassified (4)
- Contract kinds: contract (23), abstract (3)
- Detected standards: erc1967proxy (1), erc20 (1), ownable (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1), solady (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 28 contracts are derived from known codebases. 28 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xd05760...142a08`, chain 100)
- UnnamedContract (`0xd4fdec...66a2c1`, chain 100)
- HoprAnnouncements (`0xdff6cd...b4991d`, chain 100)
- HoprAnnouncements (`0xedb388...ddc9bd`, chain 100)
- HoprAnnouncementsProxy (`0x060dbc...f4d049`, chain 100)
- HoprAnnouncementsProxy (`0x225b4b...a19a4d`, chain 100)
- HoprAnnouncementsProxy (`0xe08e8e...ab6136`, chain 100)
- HoprChannels (`0x552712...188732`, chain 100)
- HoprChannels (`0x69e63a...4d5cdf`, chain 100)
- HoprChannels (`0x81a79f...a09c57`, chain 100)
- HoprNodeManagementModule (`0x1167fb...d164b0`, chain 100)
- HoprNodeManagementModule (`0x3b008c...b31ea3`, chain 100)
- HoprNodeManagementModule (`0x5f3659...d9a595`, chain 100)
- HoprNodeSafeMigration (`0x593ea8...f7b449`, chain 100)
- HoprNodeSafeMigration (`0x74dfcd...d37e8a`, chain 100)
- HoprNodeSafeMigration (`0xb9a6f1...7eb159`, chain 100)
- HoprNodeSafeRegistry (`0x0e4e1a...ccbc76`, chain 100)
- HoprNodeSafeRegistry (`0x7b8e16...6b1b5c`, chain 100)
- HoprNodeSafeRegistry (`0x8cdf9a...d334f4`, chain 100)
- HoprNodeStakeFactory (`0x6827ec...b07687`, chain 100)
- HoprNodeStakeFactory (`0x8e9e7b...66d954`, chain 100)
- HoprNodeStakeFactory (`0xe9a9cf...e973db`, chain 100)
- HoprTicketPriceOracle (`0x147899...1f04c2`, chain 100)
- HoprTicketPriceOracle (`0x95566e...da1e42`, chain 100)
- HoprTicketPriceOracle (`0xca2c60...a0628c`, chain 100)
- HoprWinningProbabilityOracle (`0x3c5cbd...b26c7f`, chain 100)
- HoprWinningProbabilityOracle (`0x5136ba...4eafca`, chain 100)
- HoprWinningProbabilityOracle (`0x74329f...23c5e3`, chain 100)

## Contract Surface Quality

- Logic-topography rows: 26; live-surface rows included: 26 (26 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 26/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/24 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 26 own, 10 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 82 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 26 of 118 unique; 92 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/48
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 70
- Unique implementations: 118
- Raw deployments: 265
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BoostUtilsLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x819752...75567a` | ⚠️ Unaudited |
| ERC677Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 6 deployments: gnosis `0x223c4f...5bf884`; gnosis `0x4decc7...369998`; gnosis `0x668c6d...a3f373`; gnosis `0x6f0b0a...eb0b7b`; gnosis `0xbce5af...2c558f`; gnosis `0xcb17f1...334254` | ⚠️ Unaudited |
| HoprAnnouncements | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 11 deployments: gnosis `0x0347a1...8e6d82`; gnosis `0x2ecec2...94f29a`; gnosis `0x5ce40e...17f9fb`; gnosis `0x619eab...6069b8`; gnosis `0x7257fb...d1bba5`; gnosis `0x9c2e99...f11f46`; gnosis `0xca77a2...98d048`; gnosis `0xd78bca...4eb85b`; gnosis `0xe45a8d...331cfc`; gnosis `0xe79cfb...0b2814`; gnosis `0xf1c143...44b982` | ⚠️ Unaudited |
| HoprAnnouncements | unknown | project_anchor | own_supporting | 1 | gnosis | unit-242020 | 2 deployments: gnosis `0x225b4b...a19a4d`; gnosis `0xdff6cd...b4991d` | ⚠️ Unaudited |
| HoprAnnouncements | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x45bba0...64acb9`; gnosis `0x5afe60...a80dad` | ⚠️ Unaudited |
| HoprAnnouncements | unknown | project_anchor | own_supporting | 1 | gnosis | unit-242022 | 2 deployments: gnosis `0xe08e8e...ab6136`; gnosis `0xedb388...ddc9bd` | ⚠️ Unaudited |
| HoprAnnouncementsProxy | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241986 | `0x060dbc...f4d049` | ⚠️ Unaudited |
| HoprAnnouncementsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x191ee0...aff6e1`; gnosis `0x45b000...a15d3c` | ⚠️ Unaudited |
| HoprBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 6 deployments: gnosis `0x2fc872...4f1e06`; gnosis `0x38eede...f3808b`; gnosis `0x435756...e490b7`; gnosis `0x81eba2...3b3d22`; gnosis `0x94ff58...ca3f8c`; gnosis `0xff1f46...f72cac` | ⚠️ Unaudited |
| HoprChannels | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 18 deployments: gnosis `0x09b77f...d9e51a`; gnosis `0x0b0e0e...4f2ff7`; gnosis `0x0c1cc3...99e9d4`; gnosis `0x2ccd29...eff357`; gnosis `0x414f3c...2a4ba2`; gnosis `0x4663ef...115a52`; gnosis `0x5bd809...ee56b6`; gnosis `0x693bac...d8f8ae`; gnosis `0x77c941...3092a7`; gnosis `0x7a33eb...921b16`; gnosis `0x7e8c87...25d8c3`; gnosis `0x9680f2...f057b7`; gnosis `0xb20ee6...905b7b`; gnosis `0xc06058...f6f74d`; gnosis `0xd54ee5...453433`; gnosis `0xe4ae7d...e8d1dc`; gnosis `0xe6203f...286f01`; gnosis `0xfabee4...bf573e` | ⚠️ Unaudited |
| HoprChannels | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241993 | `0x552712...188732` | ⚠️ Unaudited |
| HoprChannels | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241997 | `0x69e63a...4d5cdf` | ⚠️ Unaudited |
| HoprChannels | unknown | project_anchor | own_supporting | 0 | gnosis | unit-242001 | `0x81a79f...a09c57` | ⚠️ Unaudited |
| HoprDummyProxyForNetworkRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 8 deployments: gnosis `0x306c54...9d6db9`; gnosis `0x4d1a65...b0af20`; gnosis `0x717cb2...c20e13`; gnosis `0x720a25...c42295`; gnosis `0x879fa1...7423c0`; gnosis `0x8b33f0...e822a5`; gnosis `0x9bcba0...a81ce3`; gnosis `0xb167f8...3b2ca2` | ⚠️ Unaudited |
| HoprNetworkRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 16 deployments: gnosis `0x0dd5c8...f8c8b0`; gnosis `0x15a315...0ce38d`; gnosis `0x16078a...ed48ad`; gnosis `0x278a44...cba69f`; gnosis `0x3eb3e9...b7df0d`; gnosis `0x582b4b...f8d50d`; gnosis `0x5def7a...ebdb0a`; gnosis `0x6078af...4cdf0c`; gnosis `0x664812...298740`; gnosis `0x79be26...159e34`; gnosis `0x7c6eea...a3b736`; gnosis `0x819e6a...76959d`; gnosis `0xd89e74...cdb0f6`; gnosis `0xdd7b84...19cfb1`; gnosis `0xed4977...679f6c`; gnosis `0xf08e27...d1d25f` | ⚠️ Unaudited |
| HoprNodeManagementModule | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241988 | `0x1167fb...d164b0` | ⚠️ Unaudited |
| HoprNodeManagementModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 10 deployments: gnosis `0x1e1587...96bc6b`; gnosis `0x32863c...d2efcb`; gnosis `0x3f59b4...d600a3`; gnosis `0x4db69d...ffbdae`; gnosis `0x5d6ad4...b87ae7`; gnosis `0x79c3bf...e2b3f2`; gnosis `0x7bf108...5b2b9c`; gnosis `0xb7397c...2e67ea`; gnosis `0xe74ebb...7f3f68`; gnosis `0xe8d914...d2f3de` | ⚠️ Unaudited |
| HoprNodeManagementModule | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241990 | `0x3b008c...b31ea3` | ⚠️ Unaudited |
| HoprNodeManagementModule | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241995 | `0x5f3659...d9a595` | ⚠️ Unaudited |
| HoprNodeSafeMigration | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x06e01a...054910`; gnosis `0x6e3ef2...4b317a`; gnosis `0xe95b48...19646b`; gnosis `0xe9670b...5021a9` | ⚠️ Unaudited |
| HoprNodeSafeMigration | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241994 | `0x593ea8...f7b449` | ⚠️ Unaudited |
| HoprNodeSafeMigration | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241999 | `0x74dfcd...d37e8a` | ⚠️ Unaudited |
| HoprNodeSafeMigration | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-242005 | `0xb9a6f1...7eb159` | ⚠️ Unaudited |
| HoprNodeSafeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 5 deployments: gnosis `0x0bf6bd...38f05a`; gnosis `0x4f7c7d...4e45c0`; gnosis `0x549dce...123671`; gnosis `0xafa257...d8cb20`; gnosis `0xe15c24...93077b` | ⚠️ Unaudited |
| HoprNodeSafeRegistry | registry | project_anchor | own_supporting | 0 | gnosis | unit-241987 | `0x0e4e1a...ccbc76` | ⚠️ Unaudited |
| HoprNodeSafeRegistry | registry | project_anchor | own_supporting | 0 | gnosis | unit-242000 | `0x7b8e16...6b1b5c` | ⚠️ Unaudited |
| HoprNodeSafeRegistry | registry | project_anchor | own_supporting | 0 | gnosis | unit-242002 | `0x8cdf9a...d334f4` | ⚠️ Unaudited |
| HoprNodeStakeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 12 deployments: gnosis `0x048d04...dcefec`; gnosis `0x098b27...ca311c`; gnosis `0x1b2263...c62dfb`; gnosis `0x3667f0...82c23a`; gnosis `0x439f54...30cfb3`; gnosis `0x5f5b45...3149b8`; gnosis `0x63e44a...345761`; gnosis `0x791d19...a7a5f2`; gnosis `0x878ea9...8ab58b`; gnosis `0x87e1eb...ea78c0`; gnosis `0xcb0841...07d977`; gnosis `0xfb22ec...912684` | ⚠️ Unaudited |
| HoprNodeStakeFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-241996 | `0x6827ec...b07687` | ⚠️ Unaudited |
| HoprNodeStakeFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-242003 | `0x8e9e7b...66d954` | ⚠️ Unaudited |
| HoprNodeStakeFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-242009 | `0xe9a9cf...e973db` | ⚠️ Unaudited |
| HoprSafeProxyForNetworkRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x0d1a8f...40de0c`; gnosis `0x20559c...02eb3f`; gnosis `0x2bc6b7...2c5884` | ⚠️ Unaudited |
| HoprStakeSeason5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd80fbb...238e2d` | ⚠️ Unaudited |
| HoprStakeSeason6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 10 deployments: gnosis `0x20b773...14d901`; gnosis `0x27f102...a6e780`; gnosis `0x46eeee...2b274d`; gnosis `0x617cfc...33399d`; gnosis `0x84f238...6d4c62`; gnosis `0x884439...75c969`; gnosis `0xa02af1...b47f0d`; gnosis `0xb8dcc6...0e055b`; gnosis `0xe2e8fc...df4903`; gnosis `0xfe749f...d04fec` | ⚠️ Unaudited |
| HoprStakeSeason7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 6 deployments: gnosis `0x26d1ce...b32065`; gnosis `0x4a813d...7559a3`; gnosis `0x504166...f457fc`; gnosis `0x65c39e...d2b8dc`; gnosis `0xca7801...230d80`; gnosis `0xfe9340...918531` | ⚠️ Unaudited |
| HoprStakingProxyForNetworkRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 11 deployments: gnosis `0x0248b3...41ded5`; gnosis `0x0c8781...15db24`; gnosis `0x1c0c4e...768013`; gnosis `0x32c4f1...895cd0`; gnosis `0x628ed9...de9e95`; gnosis `0x84f6f8...ddd691`; gnosis `0x9937fa...f18c34`; gnosis `0xab9e6d...bf448e`; gnosis `0xb1a1ca...907a18`; gnosis `0xc1351a...9932ad`; gnosis `0xca9b1b...6a719f` | ⚠️ Unaudited |
| HoprTicketPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241989 | `0x147899...1f04c2` | ⚠️ Unaudited |
| HoprTicketPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 12 deployments: gnosis `0x27de67...c43d46`; gnosis `0x281a91...fd7741`; gnosis `0x344f8d...9c3c90`; gnosis `0x442df1...6da0a6`; gnosis `0x46aa0d...9afa2f`; gnosis `0x4dd10e...7c7b44`; gnosis `0x624af1...6a48fb`; gnosis `0xca5656...ca1273`; gnosis `0xca9559...6f6b39`; gnosis `0xcffe25...05ae17`; gnosis `0xf69a91...91fd6e`; gnosis `0xfa251d...cf43a0` | ⚠️ Unaudited |
| HoprTicketPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-242004 | `0x95566e...da1e42` | ⚠️ Unaudited |
| HoprTicketPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-242006 | `0xca2c60...a0628c` | ⚠️ Unaudited |
| HoprToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 16 deployments: gnosis `0x306691...4bda9c`; gnosis `0x31efbe...d9d35b`; gnosis `0x428246...9624df`; gnosis `0x42aa2a...8d82a4`; gnosis `0x4daccc...e428bd`; gnosis `0x66225d...416698`; gnosis `0x69f2cd...5c68ec`; gnosis `0x748aec...7def49`; gnosis `0x75b0c2...150bde`; gnosis `0x9c312f...0ead2b`; gnosis `0xd47336...318b18`; gnosis `0xdb2215...377a65`; gnosis `0xe32a15...9a3898`; gnosis `0xeda031...0f236c`; gnosis `0xf1adf0...e55c08`; gnosis `0xf9a45b...89adf7` | ⚠️ Unaudited |
| HoprWinningProbabilityOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241991 | `0x3c5cbd...b26c7f` | ⚠️ Unaudited |
| HoprWinningProbabilityOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241992 | `0x5136ba...4eafca` | ⚠️ Unaudited |
| HoprWinningProbabilityOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241998 | `0x74329f...23c5e3` | ⚠️ Unaudited |
| HoprWinningProbabilityOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0xa64182...6c21bd`; gnosis `0xf2d64b...2d9a27` | ⚠️ Unaudited |
| HoprWinningProbablityOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x02e100...e3f6f3`; gnosis `0x7eb8d7...3a1359`; gnosis `0xc15675...3b0471` | ⚠️ Unaudited |
| MyERC20Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x935412...dd7f52`; gnosis `0xadb77f...a068b8`; gnosis `0xb331b2...78ee97` | ⚠️ Unaudited |
| UniswapV2Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x44ae0c...d43e06` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (70)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x03a13c...2b0752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x15b362...5e3c78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2f3243...b16902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3065d2...19ef14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3c0045...b9775a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3e7c47...b848d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3faf31...962305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3fca37...5dd2a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x43bfd1...093203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x44f938...1eb38d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x490be8...961a34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4c3bb6...0a793e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4d3d5f...062694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4e7031...b3e958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x51b0bd...bfb4c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x53225b...569029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x545e7f...694262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x58d293...92b953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5bc5e9...5f031f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x600aa4...fdb226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6279e6...af4886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6508ca...388de9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x683d38...6431d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6af01f...c199b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6ccbfe...ee935c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6e0780...7cff9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x712284...0bddf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x715978...b1096d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x71b66f...85e09e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x74f38c...0a1e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x753525...f8e884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x75b1e7...ea4d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x810c39...8afe5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8506b4...1f3f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8d9978...2d8d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x920cc2...c17be0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9d6656...d76114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa11cc4...b66a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa2e2f7...9fc1d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa8ad80...302125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xae254e...fc41a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb12bc2...615ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb3b09f...857a82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc51a56...dc2141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc76e4c...3438cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc797f9...6cf2e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc87850...5f8f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcb8f0b...4ac853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcc0ffa...de7013` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-242007 | `0xd05760...142a08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd2c191...3ffa63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd47a3f...f81955` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-242008 | `0xd4fdec...66a2c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe89c68...4abb43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe9ac05...36b9e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xea4673...53d44a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xed3b6d...6e40fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf20190...820b25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf4c6e1...871aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xffb525...e1deec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242010 | `0x0ecb0e...6c08bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242011 | `0x37406b...de2049` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242012 | `0x376b4a...e6b5c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242013 | `0x42c471...72e6dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242014 | `0x51dfbb...ffa733` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242015 | `0x81c9a8...d25994` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242016 | `0x8c4c79...2124c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242017 | `0xcf4c70...3fc87d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242018 | `0xfd5c1c...f320a9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf](https://reports.chainsecurity.com/HOPRNet/ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf) | ChainSecurity | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [www.chainsecurity.com/security-audit/hopr-payment-channels](https://www.chainsecurity.com/security-audit/hopr-payment-channels) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3185] ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf — no match: Only one contract in scope: HoprChannels.sol
- [11795] www.chainsecurity.com/security-audit/hopr-payment-channels — no match: Only one contract name (HoprChannels) is explicitly mentioned as being reviewed. No file paths, addresses, or audit date are provided.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf | HoprChannels | ambiguous — not counted | HoprChannels (alternative) `0x552712...188732` — deployed 2026-01-06 17:19:00+03 — liveness: live (current_address_book_code)<br>HoprChannels (alternative) `0x69e63a...4d5cdf` — deployed 2026-01-06 17:17:35+03 — liveness: live (current_address_book_code)<br>HoprChannels (alternative) `0x81a79f...a09c57` — deployed 2026-01-27 16:14:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.chainsecurity.com/security-audit/hopr-payment-channels | HoprChannels | ambiguous — not counted | HoprChannels (alternative) `0x552712...188732` — deployed 2026-01-06 17:19:00+03 — liveness: live (current_address_book_code)<br>HoprChannels (alternative) `0x69e63a...4d5cdf` — deployed 2026-01-06 17:17:35+03 — liveness: live (current_address_book_code)<br>HoprChannels (alternative) `0x81a79f...a09c57` — deployed 2026-01-27 16:14:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | `0x225b4b...a19a4d` | HoprAnnouncements | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe08e8e...ab6136` | HoprAnnouncements | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x060dbc...f4d049` | HoprAnnouncementsProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x552712...188732` | HoprChannels | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x69e63a...4d5cdf` | HoprChannels | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x81a79f...a09c57` | HoprChannels | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x1167fb...d164b0` | HoprNodeManagementModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x3b008c...b31ea3` | HoprNodeManagementModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x5f3659...d9a595` | HoprNodeManagementModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x593ea8...f7b449` | HoprNodeSafeMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x74dfcd...d37e8a` | HoprNodeSafeMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xb9a6f1...7eb159` | HoprNodeSafeMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x0e4e1a...ccbc76` | HoprNodeSafeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x7b8e16...6b1b5c` | HoprNodeSafeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x8cdf9a...d334f4` | HoprNodeSafeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x6827ec...b07687` | HoprNodeStakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x8e9e7b...66d954` | HoprNodeStakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe9a9cf...e973db` | HoprNodeStakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x147899...1f04c2` | HoprTicketPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x95566e...da1e42` | HoprTicketPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xca2c60...a0628c` | HoprTicketPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x3c5cbd...b26c7f` | HoprWinningProbabilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x5136ba...4eafca` | HoprWinningProbabilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x74329f...23c5e3` | HoprWinningProbabilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 47 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 70 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [3185] ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf
- [11795] www.chainsecurity.com/security-audit/hopr-payment-channels

Fork inheritance lineage and inherited audits are included when available.
