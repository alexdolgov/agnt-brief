# Agentic Audit Brief: Harvest Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 14.1% over 90 days

## Project Overview

- Project: Harvest Finance (`harvest-finance`)
- Website: [https://harvest.finance/](https://harvest.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:49.608Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, bsc, ethereum, polygon
- Contract surface: 23 unique implementations (119 raw deployments)
- DeFi Llama TVL: $12,155,315.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Contract Surface Quality

- Indexed contracts: 1257; live-surface contracts included: 119 (95 live, 24 unknown).
- Excluded by liveness: 838 inactive, 300 singleton, 0 uninitialized.
- Deployment units: 1/128 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 5/235.

## Audit Coverage Summary

- Verified implementations audited: 10/18 (55.6%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 23
- Raw deployments: 119
- Audits discovered: 5
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Staleness: 0 fresh, 1 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 7 | 38.9% | 2020-11 |
| unknown | Tier 2 | 6 | 33.3% | 2021-02 |
| PeckShield | Tier 2 | 4 | 22.2% | 2020-10 |
| Halborn | Tier 2 | 2 | 11.1% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeRewardForwarder | unknown | ethereum | n/a | [`0xef08a6...eb1153`](./contracts/ethereum-1/0xef08a639cac2009fdad3773cc9f56d6a8feb1153/) | ✅ Audited |
| NoMintRewardPool | core_logic | ethereum | n/a | 25 deployments: ethereum [`0x01f9ca...af7254`](./contracts/ethereum-1/0x01f9caad0f9255b0c0aa2fbd1c1aa06ad8af7254/); ethereum `0x10f1fc...41f438`; ethereum `0x156733...3764b5`; ethereum `0x15d3a6...5b5b4a`; ethereum `0x16fbb1...65bfa3`; ethereum `0x27f12d...8be7d9`; ethereum `0x2a80e0...bd70bd`; ethereum `0x2e2580...cbffe6`; ethereum `0x346523...840bd1`; ethereum `0x3da9d9...cdff8e`; ethereum `0x4f7c28...c878bd`; ethereum `0x538613...ab0b68`; ethereum `0x59258f...8dbd4f`; ethereum `0x6555c7...c11958`; ethereum `0x6ac4a7...4994a2`; ethereum `0x747318...0448b4`; ethereum `0x8bcbf1...5a3814`; ethereum `0x917d64...9ea77b`; ethereum `0x99b0d6...5cf9bf`; ethereum `0xae024f...b0546d`; ethereum `0xe11c81...158a9d`; ethereum `0xe58f0d...3a2b16`; ethereum `0xe604fd...0adbe1`; ethereum `0xec56a2...a0ecda`; ethereum `0xf4784d...90725b` | ✅ Audited |
| NotifyHelper | periphery | ethereum | n/a | [`0xe20c31...65053c`](./contracts/ethereum-1/0xe20c31e3d08027f5aface84a3a46b7b3b165053c/) | ✅ Audited |
| PotPool | core_logic | ethereum | n/a | 26 deployments: ethereum [`0x079158...9ddc69`](./contracts/ethereum-1/0x079158beca3c0ee6ae44b43357c6317e339ddc69/); ethereum `0x0b4433...310a5c`; ethereum `0x11301b...2ab1d8`; ethereum `0x1997e5...82501b`; ethereum `0x1a0e12...db8e52`; ethereum `0x378c31...4fcb9d`; ethereum `0x54941a...4ba269`; ethereum `0x59eeb3...e5fa8b`; ethereum `0x5aab6c...8c22b0`; ethereum `0x6dc8be...9f5a34`; ethereum `0x719d70...1b7417`; ethereum `0xa9e60d...ad1a51`; ethereum `0xb5f7fd...c310b7`; ethereum `0xd12747...0c1128`; ethereum `0xd18f25...1b2dbe`; ethereum `0xdd496a...0941fe`; ethereum `0xddcaa7...593039`; ethereum `0xf58337...22387d`; ethereum `0xfbfbe3...e23b82`; bsc `0x26a4fe...a7f84c`; bsc `0x5c6fe0...b2498f`; bsc `0x78963b...ea8ee9`; bsc `0x884843...604449`; bsc `0xe83f39...9f4f06`; bsc `0xeab819...280310`; bsc `0xf1121f...f1c34e` | ✅ Audited |
| RewardToken | token | ethereum | n/a | [`0xa0246c...19a14d`](./contracts/ethereum-1/0xa0246c9032bc3a600820415ae600c6388619a14d/) | ✅ Audited |
| Vault | core_logic | ethereum | n/a | 7 deployments: ethereum [`0x192e9d...6888f3`](./contracts/ethereum-1/0x192e9d29d43db385063799bc239e772c3b6888f3/); ethereum `0x1a9f22...c32327`; ethereum `0x8e2987...3e7098`; ethereum `0xb19ebf...29d43c`; ethereum `0xb1feb6...3a57ee`; ethereum `0xc07eb9...b136b0`; ethereum `0xfbe122...81feec` | ✅ Audited |
| VaultDAI | core_logic | ethereum | n/a | [`0xe85c85...951dac`](./contracts/ethereum-1/0xe85c8581e60d7cd32bbfd86303d2a4fa6a951dac/) | ✅ Audited |
| VaultUSDC | core_logic | ethereum | n/a | [`0xc3f7ff...e8326f`](./contracts/ethereum-1/0xc3f7ffb5d5869b3ade9448d094d81b0521e8326f/) | ✅ Audited |
| VaultUSDT | core_logic | ethereum | n/a | [`0xc7ee21...3d9f2f`](./contracts/ethereum-1/0xc7ee21406bb581e741fbb8b21f213188433d9f2f/) | ✅ Audited |
| VaultV2 | core_logic | ethereum | unit-30000 (8 proxies) | 8 deployments: ethereum [`0x053c80...de7c9c`](./contracts/ethereum-1/0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c/); ethereum `0x5d9d25...4d4ecb`; ethereum `0x71b9ec...a95fa5`; ethereum `0x81a276...c52b30`; ethereum `0xab7fa2...b1e04c`; ethereum `0xc27bfe...7460ba`; ethereum `0xf0358e...7bedbe`; ethereum `0xfe09e5...aa573e` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyswapV3ERC20 | token | bsc | n/a | 15 deployments: bsc [`0x049d68...3a3c7a`](./contracts/bsc-56/0x049d68029688eabf473097a2fc38ef61633a3c7a/); bsc `0x1f6367...f7b52f`; bsc `0x1f7216...f96eae`; bsc `0x2442af...03a6c9`; bsc `0x4b5c23...d33743`; bsc `0x4d3386...fb3c6a`; bsc `0x564bef...41b9f3`; bsc `0x5986d5...0a71da`; bsc `0x627524...b671fd`; bsc `0x6a545f...9e6c29`; bsc `0x812764...1e82a0`; bsc `0x84c882...106117`; bsc `0x9899a9...4ff9ff`; bsc `0x9e0846...17da21`; bsc `0xc417b4...f4d0a5` | ⚠️ Unaudited |
| AutoStake | unknown | ethereum | n/a | [`0x25550c...00fc50`](./contracts/ethereum-1/0x25550cccbd68533fa04bfd3e3ac4d09f9e00fc50/) | ⚠️ Unaudited |
| Grain | unknown | ethereum | n/a | [`0x6589fe...25e58e`](./contracts/ethereum-1/0x6589fe1271a0f29346796c6baf0cdf619e25e58e/) | ⚠️ Unaudited |
| MegaFactory | registry | ethereum | n/a | [`0xe1ec91...6d4f4d`](./contracts/ethereum-1/0xe1ec9151eb8d9a3451b8f623ce8b62632a6d4f4d/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | 2 deployments: base [`0xd08a29...fb4034`](./contracts/base-8453/0xd08a2917653d4e460893203471f0000826fb4034/); base `0xe7798f...5a77ea` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-30122 (2 proxies) | 2 deployments: arbitrum [`0x8553d2...c83c70`](./contracts/arbitrum-42161/0x8553d254cb6934b16f87d2e486b64bbd24c83c70/); arbitrum `0x9dca58...8d46c1` | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-30121 | [`0xab0b2d...d7bbff`](./contracts/polygon-137/0xab0b2ddb9c7e440fac8e140a89c0dbcbf2d7bbff/) | ⚠️ Unaudited |
| UniVaultProxy | core_logic | ethereum | unit-29999 (19 proxies) | 19 deployments: ethereum [`0x04edb1...ac116b`](./contracts/ethereum-1/0x04edb1420a01547944ea57bbd4ebebae04ac116b/); ethereum `0x0a1ab9...ec0786`; ethereum `0x0b4c4e...49c7c6`; ethereum `0x1851a8...998efc`; ethereum `0x235768...0cd88c`; ethereum `0x3f16b0...d15595`; ethereum `0x45a78d...994a83`; ethereum `0x50dccf...34f6d1`; ethereum `0x5c49e0...c08b60`; ethereum `0x65383a...2c62ac`; ethereum `0x7095b0...437408`; ethereum `0x7fb7e4...4162cc`; ethereum `0x8e1de1...6a0b58`; ethereum `0x970cc1...bc9158`; ethereum `0xc1aa39...2932a1`; ethereum `0xc905cc...55d4bb`; ethereum `0xe29385...8a176a`; ethereum `0xec665d...3d1cfa`; ethereum `0xfb3871...5695bc` | ⚠️ Unaudited |

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
| [LeastAuthority-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/LeastAuthority-Harvest.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | 15 | high |
| [Haechi-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/Haechi-Harvest.pdf) | unknown | Audit | 2020-09 | stale | Direct | contract_name | 35 | high |
| [PeckShield-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/PeckShield-Harvest.pdf) | PeckShield | Audit | 2020-10 | stale | Direct | contract_name | 10 | high |
| [CertiK-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/CertiK-Harvest.pdf) | CertiK | Audit | 2020-11 | stale | Direct | contract_name | 13 | high |
| [Halborn-Harvest-2025.pdf](https://github.com/harvestfi/audits/blob/main/Halborn-Harvest-2025.pdf) | Halborn | Audit | 2025-01 | aging | Direct | contract_name | 34 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=1242

Fork inheritance lineage and inherited audits are included when available.
