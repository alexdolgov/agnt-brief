# Agentic Audit Brief: Harvest Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 14.1% over 90 days

## Project Overview

- Project: Harvest Finance (`harvest-finance`)
- Website: [https://harvest.finance/](https://harvest.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T06:16:02.647Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-4fc7
- Chains: arbitrum, base, bsc, ethereum, polygon
- Contract surface: 32 unique implementations (135 raw deployments)
- DeFi Llama TVL: $12,155,315.43
- On-chain TVL (included contracts): $1,043,131,507.21
- TVL by chain: Ethereum $1,036,940,908.11 | Base $5,709,226.32 | Bsc $283,639.04 | Arbitrum $189,824.49 | Polygon $7,909.25

## Project Description

Harvest Finance is an auto-compounding yield aggregator that routes user deposits into yield-generating strategies and compounds returns. It operates across multiple chains, offering vaults that optimize yields from various DeFi protocols.

### Architecture

The Controller manages vault and strategy registration, while RewardToken distributes FARM incentives. Vaults and strategies are linked via proxies, with strategies implementing yield generation and vaults handling deposits and compounding.

## Contract Surface Quality

- Indexed contracts: 1270; live-surface contracts included: 135 (114 live, 21 unknown).
- Excluded by liveness: 835 inactive, 300 singleton, 0 uninitialized.
- Deployment units: 10/137 live.
- Detected codebases: none
- Unverified dependencies: 4/23.

## Audit Coverage Summary

- Verified implementations audited: 13/27 (48.1%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 32
- Raw deployments: 135
- Audits discovered: 8
- Scoreable audits (matched contracts): 6
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/harvest/information))
- ASD (verified + unaudited TVL): $2,648,839.61
- Latest audit: 2025-01 (aging)
- Staleness: 0 fresh, 1 aging, 5 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,648,839.61 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 7 | 25.9% | 2020-11 |
| Haechi | Tier 2 | 5 | 18.5% | 2020-09 |
| Least Authority | Tier 2 | 5 | 18.5% | 2021-02 |
| PeckShield | Tier 2 | 4 | 14.8% | 2020-10 |
| Halborn | Tier 2 | 3 | 11.1% | 2025-01 |
| LeastAuthority | Tier 2 | 3 | 11.1% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | ethereum | n/a | 7 deployments: ethereum [`0x192e9d...6888f3`](./contracts/ethereum-1/0x192e9d29d43db385063799bc239e772c3b6888f3/); ethereum `0x1a9f22...c32327`; ethereum `0x8e2987...3e7098`; ethereum `0xb19ebf...29d43c`; ethereum `0xb1feb6...3a57ee`; ethereum `0xc07eb9...b136b0`; ethereum `0xfbe122...81feec` | ✅ Audited |
| VaultUSDC | core_logic | ethereum | n/a | [`0xc3f7ff...e8326f`](./contracts/ethereum-1/0xc3f7ffb5d5869b3ade9448d094d81b0521e8326f/) | ✅ Audited |
| VaultUSDT | core_logic | ethereum | n/a | [`0xc7ee21...3d9f2f`](./contracts/ethereum-1/0xc7ee21406bb581e741fbb8b21f213188433d9f2f/) | ✅ Audited |
| VaultDAI | core_logic | ethereum | n/a | [`0xe85c85...951dac`](./contracts/ethereum-1/0xe85c8581e60d7cd32bbfd86303d2a4fa6a951dac/) | ✅ Audited |
| RewardToken | token | ethereum | n/a | [`0xa0246c...19a14d`](./contracts/ethereum-1/0xa0246c9032bc3a600820415ae600c6388619a14d/) | ✅ Audited |
| VaultV2 | core_logic | base | unit-39391 (4 proxies) | 4 deployments: base [`0xa0200e...9d5785`](./contracts/base-8453/0xa0200eeed8d90aa01de741daefab5f86c09d5785/); base `0xa912d9...ef02ae`; base `0xc77703...62263e`; base `0xe5beac...f138e2` | ✅ Audited |
| VaultMigratable_1INCH2SUSHI | core_logic | ethereum | unit-39283 (4 proxies) | 4 deployments: ethereum [`0x4bf633...c5b99e`](./contracts/ethereum-1/0x4bf633a09bd593f6fb047db3b4c25ef5b9c5b99e/); ethereum `0x859222...d6874a`; ethereum `0x8e5303...86e32d`; ethereum `0xd16239...48d690` | ✅ Audited |
| VaultV2 | core_logic | ethereum | unit-39266 (8 proxies) | 8 deployments: ethereum [`0x053c80...de7c9c`](./contracts/ethereum-1/0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c/); ethereum `0x5d9d25...4d4ecb`; ethereum `0x71b9ec...a95fa5`; ethereum `0x81a276...c52b30`; ethereum `0xab7fa2...b1e04c`; ethereum `0xc27bfe...7460ba`; ethereum `0xf0358e...7bedbe`; ethereum `0xfe09e5...aa573e` | ✅ Audited |
| VaultV2 | core_logic | arbitrum | unit-39396 | [`0xf54537...a717fb`](./contracts/arbitrum-42161/0xf54537b19796d2c75ecb6760a299b8482ea717fb/) | ✅ Audited |
| NoMintRewardPool | core_logic | ethereum | n/a | 25 deployments: ethereum [`0x01f9ca...af7254`](./contracts/ethereum-1/0x01f9caad0f9255b0c0aa2fbd1c1aa06ad8af7254/); ethereum `0x10f1fc...41f438`; ethereum `0x156733...3764b5`; ethereum `0x15d3a6...5b5b4a`; ethereum `0x16fbb1...65bfa3`; ethereum `0x27f12d...8be7d9`; ethereum `0x2a80e0...bd70bd`; ethereum `0x2e2580...cbffe6`; ethereum `0x346523...840bd1`; ethereum `0x3da9d9...cdff8e`; ethereum `0x4f7c28...c878bd`; ethereum `0x538613...ab0b68`; ethereum `0x59258f...8dbd4f`; ethereum `0x6555c7...c11958`; ethereum `0x6ac4a7...4994a2`; ethereum `0x747318...0448b4`; ethereum `0x8bcbf1...5a3814`; ethereum `0x917d64...9ea77b`; ethereum `0x99b0d6...5cf9bf`; ethereum `0xae024f...b0546d`; ethereum `0xe11c81...158a9d`; ethereum `0xe58f0d...3a2b16`; ethereum `0xe604fd...0adbe1`; ethereum `0xec56a2...a0ecda`; ethereum `0xf4784d...90725b` | ✅ Audited |
| PotPool | core_logic | ethereum | n/a | 26 deployments: ethereum [`0x079158...9ddc69`](./contracts/ethereum-1/0x079158beca3c0ee6ae44b43357c6317e339ddc69/); ethereum `0x0b4433...310a5c`; ethereum `0x11301b...2ab1d8`; ethereum `0x1997e5...82501b`; ethereum `0x1a0e12...db8e52`; ethereum `0x378c31...4fcb9d`; ethereum `0x54941a...4ba269`; ethereum `0x59eeb3...e5fa8b`; ethereum `0x5aab6c...8c22b0`; ethereum `0x6dc8be...9f5a34`; ethereum `0x719d70...1b7417`; ethereum `0xa9e60d...ad1a51`; ethereum `0xb5f7fd...c310b7`; ethereum `0xd12747...0c1128`; ethereum `0xd18f25...1b2dbe`; ethereum `0xdd496a...0941fe`; ethereum `0xddcaa7...593039`; ethereum `0xf58337...22387d`; ethereum `0xfbfbe3...e23b82`; bsc `0x26a4fe...a7f84c`; bsc `0x5c6fe0...b2498f`; bsc `0x78963b...ea8ee9`; bsc `0x884843...604449`; bsc `0xe83f39...9f4f06`; bsc `0xeab819...280310`; bsc `0xf1121f...f1c34e` | ✅ Audited |
| FeeRewardForwarder | unknown | ethereum | n/a | [`0xef08a6...eb1153`](./contracts/ethereum-1/0xef08a639cac2009fdad3773cc9f56d6a8feb1153/) | ✅ Audited |
| NotifyHelper | periphery | ethereum | n/a | [`0xe20c31...65053c`](./contracts/ethereum-1/0xe20c31e3d08027f5aface84a3a46b7b3b165053c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PlasmaVaultBase | core_logic | base | unit-39389 (2 proxies) | 2 deployments: base [`0x0d877d...8359c4`](./contracts/base-8453/0x0d877dc7c8fa3ad980dfdb18b48ec9f8768359c4/); base `0x787289...12aa97` | ⚠️ Unaudited |
| AnyswapV3ERC20 | token | bsc | n/a | 15 deployments: bsc [`0x049d68...3a3c7a`](./contracts/bsc-56/0x049d68029688eabf473097a2fc38ef61633a3c7a/); bsc `0x1f6367...f7b52f`; bsc `0x1f7216...f96eae`; bsc `0x2442af...03a6c9`; bsc `0x4b5c23...d33743`; bsc `0x4d3386...fb3c6a`; bsc `0x564bef...41b9f3`; bsc `0x5986d5...0a71da`; bsc `0x627524...b671fd`; bsc `0x6a545f...9e6c29`; bsc `0x812764...1e82a0`; bsc `0x84c882...106117`; bsc `0x9899a9...4ff9ff`; bsc `0x9e0846...17da21`; bsc `0xc417b4...f4d0a5` | ⚠️ Unaudited |
| UniVaultProxy | core_logic | ethereum | unit-39265 (19 proxies) | 19 deployments: ethereum [`0x04edb1...ac116b`](./contracts/ethereum-1/0x04edb1420a01547944ea57bbd4ebebae04ac116b/); ethereum `0x0a1ab9...ec0786`; ethereum `0x0b4c4e...49c7c6`; ethereum `0x1851a8...998efc`; ethereum `0x235768...0cd88c`; ethereum `0x3f16b0...d15595`; ethereum `0x45a78d...994a83`; ethereum `0x50dccf...34f6d1`; ethereum `0x5c49e0...c08b60`; ethereum `0x65383a...2c62ac`; ethereum `0x7095b0...437408`; ethereum `0x7fb7e4...4162cc`; ethereum `0x8e1de1...6a0b58`; ethereum `0x970cc1...bc9158`; ethereum `0xc1aa39...2932a1`; ethereum `0xc905cc...55d4bb`; ethereum `0xe29385...8a176a`; ethereum `0xec665d...3d1cfa`; ethereum `0xfb3871...5695bc` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-39395 (2 proxies) | 2 deployments: arbitrum [`0x8553d2...c83c70`](./contracts/arbitrum-42161/0x8553d254cb6934b16f87d2e486b64bbd24c83c70/); arbitrum `0x9dca58...8d46c1` | ⚠️ Unaudited |
| PlasmaVaultBase | core_logic | ethereum | unit-39276 | [`0x3151ce...809d90`](./contracts/ethereum-1/0x3151cee0cdb517c0e7db2b55ff5085e7d1809d90/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-39388 | [`0xab0b2d...d7bbff`](./contracts/polygon-137/0xab0b2ddb9c7e440fac8e140a89c0dbcbf2d7bbff/) | ⚠️ Unaudited |
| AutoStake | unknown | ethereum | n/a | [`0x25550c...00fc50`](./contracts/ethereum-1/0x25550cccbd68533fa04bfd3e3ac4d09f9e00fc50/) | ⚠️ Unaudited |
| FortyAcresLendStrategyMainnet_USDC | unknown | base | unit-39390 | [`0x1d5986...0f533c`](./contracts/base-8453/0x1d59868d7767d703929393bdab313302840f533c/) | ⚠️ Unaudited |
| Grain | unknown | ethereum | n/a | [`0x6589fe...25e58e`](./contracts/ethereum-1/0x6589fe1271a0f29346796c6baf0cdf619e25e58e/) | ⚠️ Unaudited |
| IPORLendingStrategyMainnet_ETH | unknown | base | unit-39393 | [`0xce5833...202704`](./contracts/base-8453/0xce5833251fcc922acf0e21c50d9a2bccb1202704/) | ⚠️ Unaudited |
| MegaFactory | registry | ethereum | n/a | [`0xe1ec91...6d4f4d`](./contracts/ethereum-1/0xe1ec9151eb8d9a3451b8f623ce8b62632a6d4f4d/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_GF_USDC_V2 | unknown | base | unit-39394 | [`0xd25186...f1c5bd`](./contracts/base-8453/0xd251865319c905c1913f59bb5bb1af2322f1c5bd/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_YOG_USDC_V2 | unknown | base | unit-39392 | [`0xbbb943...0c17fb`](./contracts/base-8453/0xbbb9437786dcb5936296b158d6a1d050950c17fb/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | 2 deployments: base [`0xd08a29...fb4034`](./contracts/base-8453/0xd08a2917653d4e460893203471f0000826fb4034/); base `0xe7798f...5a77ea` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x3b2ed6...86832d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x503ea7...cc72b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8137ac...0a16cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc34265...be1f63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc53dab...f8664f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [LeastAuthority-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/LeastAuthority-Harvest.pdf) | LeastAuthority | Audit | 2021-02 | stale | Direct | contract_name | 19 | high |
| [Haechi-Harvest.pdf (also discovered via alternate URL)](https://github.com/harvestfi/audits/blob/main/Haechi-Harvest.pdf) | Haechi | Audit | 2020-09 | stale | Direct | contract_name | 35 | high |
| [PeckShield-Harvest.pdf (also discovered via alternate URL)](https://github.com/harvestfi/audits/blob/main/PeckShield-Harvest.pdf) | PeckShield | Audit | 2020-10 | stale | Direct | contract_name | 10 | high |
| [CertiK-Harvest.pdf (also discovered via alternate URL)](https://github.com/harvestfi/audits/blob/main/CertiK-Harvest.pdf) | CertiK | Audit | 2020-11 | stale | Direct | contract_name | 13 | high |
| [Halborn-Harvest-2025.pdf](https://github.com/harvestfi/audits/blob/main/Halborn-Harvest-2025.pdf) | Halborn | Audit | 2025-01 | aging | Direct | contract_name | 38 | high |
| [LeastAuthority-Harvest.pdf](https://github.com/harvest-finance/harvest/blob/master/audits/LeastAuthority-Harvest.pdf) | Least Authority | Audit | 2021-02 | stale | Direct | contract_name | 24 | high |
| [Security & Audits](https://www.harvest.finance/security) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/harvest/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x04edb1...ac116b`](./contracts/ethereum-1/0x04edb1420a01547944ea57bbd4ebebae04ac116b/) | UniVaultProxy | core_logic | $136,598.07 | Verified native implementation with $136,598.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3151ce...809d90`](./contracts/ethereum-1/0x3151cee0cdb517c0e7db2b55ff5085e7d1809d90/) | PlasmaVaultBase | core_logic | $11,098.06 | Verified native implementation with $11,098.06 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25550c...00fc50`](./contracts/ethereum-1/0x25550cccbd68533fa04bfd3e3ac4d09f9e00fc50/) | AutoStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6589fe...25e58e`](./contracts/ethereum-1/0x6589fe1271a0f29346796c6baf0cdf619e25e58e/) | Grain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1ec91...6d4f4d`](./contracts/ethereum-1/0xe1ec9151eb8d9a3451b8f623ce8b62632a6d4f4d/) | MegaFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=2053

Zero-match audit list:

- [15668] Security & Audits

Fork inheritance lineage and inherited audits are included when available.
