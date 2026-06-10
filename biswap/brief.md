# Agentic Audit Brief: Biswap

⚠️ Lifecycle status: DECLINING - TVL dropped 45.7% over 90 days

## Project Overview

- Project: Biswap (`biswap`)
- Website: [https://biswap.org](https://biswap.org)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-10T22:02:23.057Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-7a87
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 84 unique implementations (210 raw deployments)
- DeFi Llama TVL: $5,641,146.00
- On-chain TVL (included contracts): $609,279.41
- TVL by chain: Bsc $609,279.41

## Project Description

Biswap is a decentralized exchange (DEX) protocol operating across multiple chains, enabling token swaps, liquidity provision, and yield farming, with the BSW token used for incentives and governance-related functions. Current protocol activity should be described using accessible project metadata such as DefiLlama; do not claim the current homepage is withdrawal-only or lacks active protocol functionality unless directly reproducible.

### Architecture

The BSW token contract is shared across both Biswap and Biswap V3 families as the core incentive and governance token. The MasterChef contract in the original Biswap family distributes BSW rewards, while the SmartRouter likely facilitates trades across both versions.

## Audit Coverage Summary

- Verified implementations audited: 0/14 (0.0%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 1
- Unverified implementations: 70
- Unique implementations: 84
- Raw deployments: 210
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $609,279.41
- Latest audit: 2023-11 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $609,279.41 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BSWToken | token | bsc | [`0x965f52...120dd1`](./contracts/bsc-56/0x965f527d9159dce6288a2219db51fc6eef120dd1/) | ⚠️ Unaudited |
| autoBsw | unknown | bsc | [`0x97a16f...cda73d`](./contracts/bsc-56/0x97a16ff6fd63a46bf973671762a39f3780cda73d/) | ⚠️ Unaudited |
| BiswapFactory | registry | bsc | 2 deployments: bsc [`0x173661...9f1285`](./contracts/bsc-56/0x173661c75895b15fae9ffc91210017cf6e9f1285/); bsc `0x858e33...8af7ee` | ⚠️ Unaudited |
| BiswapRouter02 | adapter | bsc | [`0x3a6d8c...350dd8`](./contracts/bsc-56/0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8/) | ⚠️ Unaudited |
| BSWMinting | unknown | bsc | 2 deployments: bsc [`0x2a539a...b1f522`](./contracts/bsc-56/0x2a539a4189b23c15a7ccfdeadb56c62b8cb1f522/); bsc `0xaec140...3f0fbf` | ⚠️ Unaudited |
| InvestorMine | operational_periphery | bsc | 2 deployments: bsc [`0xbfa00a...678ff7`](./contracts/bsc-56/0xbfa00a7d60df1a7fe4ac3f900d59a98622678ff7/); bsc `0xf723ec...b1d2a4` | ⚠️ Unaudited |
| MarketingTimeLock | governance | bsc | [`0x706d4d...4f40d0`](./contracts/bsc-56/0x706d4d4e49a2608d2e0088075b67da5dbc4f40d0/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | 2 deployments: bsc [`0xdbc1a1...061739`](./contracts/bsc-56/0xdbc1a13490deef9c3c12b44fe77b503c1b061739/); bsc `0xfb9b2d...e6308e` | ⚠️ Unaudited |
| Oracle | operational_periphery | bsc | 2 deployments: bsc [`0x2f48cd...1f2db0`](./contracts/bsc-56/0x2f48cde4cfd0fb4f5c873291d5cf2dc9e61f2db0/); bsc `0x742e74...4d3736` | ⚠️ Unaudited |
| SmartRouter | adapter | bsc | [`0x0eb694...970bef`](./contracts/bsc-56/0x0eb6949e725a295ecb3beacfc3766610bc970bef/) | ⚠️ Unaudited |
| SwapFeeReward | unknown | bsc | 7 deployments: bsc [`0x2810b4...552dd8`](./contracts/bsc-56/0x2810b4f1172e0dccbc226d8c716534ff9c552dd8/); bsc `0x41bde0...4aaf83`; bsc `0x703932...8f9ee8`; bsc `0x92437a...c31d2c`; bsc `0xc8d5d4...e4ea51`; bsc `0xcfb450...223800`; bsc `0xf6af64...37aedb` | ⚠️ Unaudited |
| TeamTimeLock | governance | bsc | [`0x513d15...b6b036`](./contracts/bsc-56/0x513d1500c5a18816bfed5d78dc4859d831b6b036/) | ⚠️ Unaudited |
| Timelock | governance | bsc | [`0xf5d6fe...dae9fe`](./contracts/bsc-56/0xf5d6fed0f4735ff2036ce4be535bd32e77dae9fe/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SmartChef | unknown | bsc | 116 deployments: bsc [`0x00a142...b39346`](./contracts/bsc-56/0x00a142210f6b3bb3f78751dcd7b589e9e7b39346/); bsc `0x00d2d8...fff1d4`; bsc `0x015c8b...3a44c1`; bsc `0x018952...b731a9`; bsc `0x099975...0c1e1b`; bsc `0x0c1e98...e457c9`; bsc `0x109eaa...d5e836`; bsc `0x112ff6...6d4eef`; bsc `0x12e5b4...d93c3f`; bsc `0x131010...fa04b8`; bsc `0x1362b3...f3ba65`; bsc `0x13ca6a...4bb845`; bsc `0x13e903...4c8237`; bsc `0x1beb5a...f4d995`; bsc `0x1c3c5c...661492`; bsc `0x1edb72...a0ced5`; bsc `0x1f337d...d32970`; bsc `0x263678...24303d`; bsc `0x2792cc...8bd280`; bsc `0x28944e...673801`; bsc `0x2968da...ad6a46`; bsc `0x2a979f...0d7ecd`; bsc `0x339c7c...721d69`; bsc `0x34265c...f67006`; bsc `0x36fc9c...28860f`; bsc `0x3e776f...86f08b`; bsc `0x3e963d...4d547b`; bsc `0x44eece...e0ba51`; bsc `0x454076...ece61a`; bsc `0x50945a...0358ac`; bsc `0x5215d0...c18dd2`; bsc `0x53c60a...bd9891`; bsc `0x57393b...c90411`; bsc `0x5f1b5b...f414a3`; bsc `0x61330d...ce5862`; bsc `0x62204e...80378e`; bsc `0x62cfcc...258373`; bsc `0x631b87...90bca0`; bsc `0x6653c3...978a25`; bsc `0x66ac2a...d955ae`; bsc `0x683963...dc39e5`; bsc `0x69c4c9...fc8157`; bsc `0x6c00f2...e5dff4`; bsc `0x6cbba2...a1394d`; bsc `0x6d4067...25fd4d`; bsc `0x6e31da...c1df38`; bsc `0x724b71...dcfa1d`; bsc `0x72a79a...109cc9`; bsc `0x7468af...33bebd`; bsc `0x7517c3...358dc6`; bsc `0x78f818...0aa38e`; bsc `0x7951bc...6fafc0`; bsc `0x7d621c...7c9589`; bsc `0x81af4b...bc5d61`; bsc `0x84f41c...55c859`; bsc `0x850281...de5bbb`; bsc `0x858d2c...4a4832`; bsc `0x868cd8...48536a`; bsc `0x8b10e6...c42ff4`; bsc `0x8bb118...d94d4b`; bsc `0x8d87f0...105e71`; bsc `0x8dde1a...3056d4`; bsc `0x8ddfcd...916f2d`; bsc `0x973304...fda649`; bsc `0x994f7b...e0cb24`; bsc `0x9b0111...892c03`; bsc `0x9b9f3f...b52bff`; bsc `0xa1684b...57ff15`; bsc `0xa320db...72382f`; bsc `0xa394dd...823459`; bsc `0xa3a911...ac4444`; bsc `0xa5aa38...aee8c2`; bsc `0xa6c2f2...577c8f`; bsc `0xaa2b37...9fd4e5`; bsc `0xaa9947...7ff3e4`; bsc `0xab4592...8a4784`; bsc `0xacb2f1...e496f2`; bsc `0xb12c55...2f57b6`; bsc `0xb23b56...391ce9`; bsc `0xbbbc00...c1d10c`; bsc `0xbd09d5...7b0d1d`; bsc `0xc1519a...b52d21`; bsc `0xc50676...81e920`; bsc `0xc6a577...c5f3eb`; bsc `0xc7019f...fdb84a`; bsc `0xc7313c...823fa7`; bsc `0xc7ba45...2ac468`; bsc `0xc941b2...1676a3`; bsc `0xcc1b01...3f6a73`; bsc `0xcdebe0...1c22fa`; bsc `0xcf505c...6bd5fa`; bsc `0xd3b649...9d09d4`; bsc `0xd48558...11e67a`; bsc `0xd59227...5f3161`; bsc `0xd86e47...e0b4c4`; bsc `0xda730d...458187`; bsc `0xe018d6...01831d`; bsc `0xe02f66...51dc98`; bsc `0xe056fb...25990b`; bsc `0xe09d1d...ac20a0`; bsc `0xe42d17...c175a7`; bsc `0xe63967...6e6f74`; bsc `0xe6c58b...cb9cc5`; bsc `0xe737ed...3673a8`; bsc `0xeaebd1...14e4b1`; bsc `0xeb8134...0540b7`; bsc `0xedb963...1e6879`; bsc `0xeeee29...d8e193`; bsc `0xf2db34...186dda`; bsc `0xf31f62...7f7d4c`; bsc `0xf4540b...950f0d`; bsc `0xf4af1a...a1637c`; bsc `0xf54c23...cd9ff1`; bsc `0xf62e23...d1c899`; bsc `0xfd6820...367275`; bsc `0xfd8fce...51755d` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (70)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x08a9a1...3e0cfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0e2ab6...f2eaf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x41a987...d4c735` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x46cdae...37c397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x62dade...f97392` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x633b38...ed304a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x66e09e...cd6985` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6c7f1a...c7fe1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x735cb0...eb2ae3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7b190f...0ebc53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7be518...4644dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7d882f...0772a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8277f6...ec86a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x87737e...5f9815` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x981933...ac783d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9e575a...8a9bef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa75821...97bbc2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb535e0...814798` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbbf7df...3392fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcae1ba...83d8ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd8e94b...4ec6b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf2a99c...92143d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2ef706...1f1be6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3b53aa...1bd4ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x601cc4...a79d22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x924c26...55a7fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaf0a36...cbb968` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc48aa9...36c596` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc6f6f5...fb5302` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x003fb4...7508e6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x08a9a1...3e0cfd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0e2ab6...f2eaf6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x41a987...d4c735` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x46cdae...37c397` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x62dade...f97392` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x633b38...ed304a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6c7f1a...c7fe1f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x735cb0...eb2ae3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7be518...4644dd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7d882f...0772a8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8277f6...ec86a1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x87737e...5f9815` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x981933...ac783d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa75821...97bbc2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb535e0...814798` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbbf7df...3392fb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcae1ba...83d8ce` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd8e94b...4ec6b4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf2a99c...92143d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x08a9a1...3e0cfd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0e2ab6...f2eaf6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x293d67...009f7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x41a987...d4c735` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x46cdae...37c397` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x62dade...f97392` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x633b38...ed304a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6c7f1a...c7fe1f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x735cb0...eb2ae3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7b190f...0ebc53` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7be518...4644dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7d882f...0772a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8277f6...ec86a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x87737e...5f9815` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x981933...ac783d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa75821...97bbc2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb535e0...814798` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbbf7df...3392fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcae1ba...83d8ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd8e94b...4ec6b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf2a99c...92143d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/biswap) | CertiK | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x965f52...120dd1`](./contracts/bsc-56/0x965f527d9159dce6288a2219db51fc6eef120dd1/) | BSWToken | token | $609,279.41 | Verified native implementation with $609,279.41 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x97a16f...cda73d`](./contracts/bsc-56/0x97a16ff6fd63a46bf973671762a39f3780cda73d/) | autoBsw | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x173661...9f1285`](./contracts/bsc-56/0x173661c75895b15fae9ffc91210017cf6e9f1285/) | BiswapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3a6d8c...350dd8`](./contracts/bsc-56/0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8/) | BiswapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a539a...b1f522`](./contracts/bsc-56/0x2a539a4189b23c15a7ccfdeadb56c62b8cb1f522/) | BSWMinting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbfa00a...678ff7`](./contracts/bsc-56/0xbfa00a7d60df1a7fe4ac3f900d59a98622678ff7/) | InvestorMine | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x706d4d...4f40d0`](./contracts/bsc-56/0x706d4d4e49a2608d2e0088075b67da5dbc4f40d0/) | MarketingTimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdbc1a1...061739`](./contracts/bsc-56/0xdbc1a13490deef9c3c12b44fe77b503c1b061739/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0eb694...970bef`](./contracts/bsc-56/0x0eb6949e725a295ecb3beacfc3766610bc970bef/) | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2810b4...552dd8`](./contracts/bsc-56/0x2810b4f1172e0dccbc226d8c716534ff9c552dd8/) | SwapFeeReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x513d15...b6b036`](./contracts/bsc-56/0x513d1500c5a18816bfed5d78dc4859d831b6b036/) | TeamTimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf5d6fe...dae9fe`](./contracts/bsc-56/0xf5d6fed0f4735ff2036ce4be535bd32e77dae9fe/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2417] DL audit link

Fork inheritance lineage and inherited audits are included when available.
