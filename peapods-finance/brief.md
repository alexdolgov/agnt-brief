# Agentic Audit Brief: Peapods Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 30.6% over 90 days

## Project Overview

- Project: Peapods Finance (`peapods-finance`)
- Website: [https://peapods.finance](https://peapods.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T17:42:53.305Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-748f
- Chains: arbitrum, base, berachain, ethereum, mode, sonic
- Contract surface: 72 unique implementations (129 raw deployments)
- DeFi Llama TVL: $6,327,474.74
- On-chain TVL (included contracts): $781,598.56
- TVL by chain: Ethereum $777,882.40 | Arbitrum $3,443.43 | Base $272.74

## Project Description

Peapods Finance is a DeFi protocol focused on Volatility Farming: enabling users to generate sustainable yield for liquid assets through Pods and related staking/liquidity mechanisms. Its index, pod, leverage, and DEX-integration components should be treated as implementation mechanics rather than the sole project identity, and any PEAS governance or utility claims should be separately substantiated.

### Architecture

IndexManager creates and manages Pods using WeightedIndex implementations, while LeverageManager adds leverage to these Pods. StakingPoolToken and TokenRewards handle staking and yield distribution for Pod tokens, and ERC20Bridgeable facilitates cross-chain token transfers. All families rely on UpgradeableBeacon proxies for upgradeability and share the PEAS token as a common utility and governance asset.

## Contract Surface Quality

- Indexed contracts: 426; live-surface contracts included: 129 (123 live, 6 unknown).
- Excluded by liveness: 243 inactive, 54 singleton, 0 uninitialized.
- Deployment units: 0/24 live.
- Detected codebases: uniswap-v3
- Dependencies extracted: 9; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 12/28 (42.9%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 1
- Unverified implementations: 44
- Unique implementations: 72
- Raw deployments: 129
- Audits discovered: 4
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $781,598.56
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 3 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $781,598.56 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 12 | 42.9% | 2024-12 |
| yAudit | Tier 2 | 1 | 3.6% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CamelotDexAdapter | adapter | arbitrum | n/a | [`0x22dc5b...1aad7a`](./contracts/arbitrum-42161/0x22dc5b739b34f98be2f2f262bd104ed9ab1aad7a/) | ✅ Audited |
| DIAOracleV2SinglePriceOracle | operational_periphery | ethereum | n/a | [`0xc815d4...e4466e`](./contracts/ethereum-1/0xc815d43b0d5965d91d06867fff51b2c845e4466e/) | ✅ Audited |
| ERC20Bridgeable | operational_periphery | sonic | n/a | 5 deployments: sonic [`0x02f928...2df875`](./contracts/sonic-146/0x02f92800f57bcd74066f5709f1daa1a4302df875/); base [`0x02f928...2df875`](./contracts/base-8453/0x02f92800f57bcd74066f5709f1daa1a4302df875/); mode [`0x02f928...2df875`](./contracts/mode-34443/0x02f92800f57bcd74066f5709f1daa1a4302df875/); arbitrum [`0x02f928...2df875`](./contracts/arbitrum-42161/0x02f92800f57bcd74066f5709f1daa1a4302df875/); berachain [`0x02f928...2df875`](./contracts/berachain-80094/0x02f92800f57bcd74066f5709f1daa1a4302df875/) | ✅ Audited |
| IndexManager | governance | ethereum | n/a | 8 deployments: ethereum [`0x0bb39b...b4ae6b`](./contracts/ethereum-1/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); ethereum `0x6effcf...b7666e`; sonic `0x9e054f...166060`; base [`0x0bb39b...b4ae6b`](./contracts/base-8453/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); base `0x556059...94ec30`; arbitrum [`0x0bb39b...b4ae6b`](./contracts/arbitrum-42161/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); arbitrum `0x64511c...b14fd8`; berachain `0xc9260c...932f01` | ✅ Audited |
| IndexUtils | unknown | sonic | n/a | 10 deployments: ethereum `0x2bcca7...a1054c`; ethereum `0x521e24...bd03cc`; ethereum `0x88b6db...87d9b7`; ethereum `0x9a103a...7b8db6`; sonic [`0x242325...0f5eca`](./contracts/sonic-146/0x24232517e648525a2a5b9935aadc42ae250f5eca/); base `0x37cd1f...659dde`; base `0x490b03...15826d`; arbitrum `0x4b6d3f...745e0d`; arbitrum `0x5c5c28...65f0c0`; berachain `0x40bd82...386717` | ✅ Audited |
| LendingAssetVaultFactory | registry | base | n/a | 4 deployments: ethereum `0xbab29f...7912c6`; sonic `0x6786d3...b7a8ec`; base [`0x48f39f...b7c31e`](./contracts/base-8453/0x48f39fd89142cf062825c47206f202a012b7c31e/); arbitrum `0xf252b0...3bda3a` | ✅ Audited |
| PEAS | unknown | ethereum | n/a | [`0x02f928...2df875`](./contracts/ethereum-1/0x02f92800f57bcd74066f5709f1daa1a4302df875/) | ✅ Audited |
| UnweightedIndex | unknown | ethereum | n/a | [`0x3c56ca...f5451c`](./contracts/ethereum-1/0x3c56cabe6dbbad11c4fe36f09777ef417ef5451c/) | ✅ Audited |
| V2ReservesCamelot | unknown | arbitrum | n/a | [`0xec8a49...3eeaf8`](./contracts/arbitrum-42161/0xec8a490000e9553a373e54ed71c09c7aa73eeaf8/) | ✅ Audited |
| V3TwapCamelotUtilities | unknown | arbitrum | n/a | [`0xe8869f...e11458`](./contracts/arbitrum-42161/0xe8869f393d083bc41358b6c13b1ebce54fe11458/) | ✅ Audited |
| WeightedIndex | unknown | ethereum | n/a | 3 deployments: ethereum [`0x027ce4...f9b1c7`](./contracts/ethereum-1/0x027ce48b9b346728557e8d420fe936a72bf9b1c7/); ethereum `0x515e7f...10a49b`; ethereum `0x88e08a...2d1ca4` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UniswapV3Pool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x526800...c56b36`](./contracts/ethereum-1/0x5268006a9da67c19a25aeb594f8e921867c56b36/); ethereum `0xae7505...d79160`; base `0x5abdb2...f5a72b` | ⚠️ Unaudited |
| LendingAssetVault | core_logic | ethereum | n/a | [`0x3717e3...e873aa`](./contracts/ethereum-1/0x3717e340140d30f3a077dd21fac39a86ace873aa/) | ⚠️ Unaudited |
| AlgebraPool | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x44cc8b...584a77`](./contracts/arbitrum-42161/0x44cc8b40b1483e62e59ef937441ba6aa8e584a77/); arbitrum `0xcf7145...7bd6d5` | ⚠️ Unaudited |
| CLPool | core_logic | base | n/a | [`0xd53398...98c37e`](./contracts/base-8453/0xd533986cbb79a015fe9f6c8f92dbb35cc998c37e/) | ⚠️ Unaudited |
| aspTKNMinimalOracleFactory | operational_periphery | sonic | n/a | 3 deployments: ethereum `0x7b68b5...30adbe`; sonic [`0x46f081...9f33d0`](./contracts/sonic-146/0x46f0815f0d46bb54d7f1f97358d745eedb9f33d0/); base `0xeed5e9...2d0a67` | ⚠️ Unaudited |
| CamelotV3SinglePriceOracle | operational_periphery | arbitrum | n/a | [`0x48b50c...3888a1`](./contracts/arbitrum-42161/0x48b50c792d993a56cdf23b0ad64c257f2a3888a1/) | ⚠️ Unaudited |
| DIAMultiFeedConverter | unknown | ethereum | n/a | [`0x8b55d5...d4aa18`](./contracts/ethereum-1/0x8b55d55790f1369fa6c45e702bf30ea81dd4aa18/) | ⚠️ Unaudited |
| HydrexV3SinglePriceOracle | operational_periphery | base | n/a | 4 deployments: base [`0x429fff...3ee7e0`](./contracts/base-8453/0x429fffd75ff44b3d6ec884c4b79b3ee0603ee7e0/); base `0x5d8290...2777f8`; base `0x87f6a1...4905ee`; base `0xa89283...5f2ca0` | ⚠️ Unaudited |
| IndirectOFT | unknown | sonic | n/a | 5 deployments: sonic [`0x14dec8...4e4965`](./contracts/sonic-146/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); base [`0x14dec8...4e4965`](./contracts/base-8453/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); mode [`0x14dec8...4e4965`](./contracts/mode-34443/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); arbitrum [`0x14dec8...4e4965`](./contracts/arbitrum-42161/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); berachain [`0x14dec8...4e4965`](./contracts/berachain-80094/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/) | ⚠️ Unaudited |
| LeverageFactory | registry | ethereum | n/a | 4 deployments: ethereum [`0x43b9d9...1939d3`](./contracts/ethereum-1/0x43b9d9b0585e5e8a1e069195170adfd0461939d3/); sonic `0xf2db5e...800f96`; base `0x459b54...f38d5f`; arbitrum `0x7225d7...4a1d2f` | ⚠️ Unaudited |
| LeverageFeeProcessor | unknown | base | n/a | 4 deployments: ethereum `0xff673a...c8ae2b`; sonic `0xedd48a...d55544`; base [`0x9698b9...097ae9`](./contracts/base-8453/0x9698b93775907afa0968e9b121744f4641097ae9/); arbitrum `0x97bbe6...beccb3` | ⚠️ Unaudited |
| MyOFTAdapter | adapter | ethereum | n/a | [`0x801642...d9b433`](./contracts/ethereum-1/0x801642b6efb861fe624dad704b7a747779d9b433/) | ⚠️ Unaudited |
| PodFlashMintSource | unknown | arbitrum | n/a | 4 deployments: ethereum `0xc73c64...eda601`; sonic `0xb2a28e...7679de`; base `0x1b59d4...af84a0`; arbitrum [`0x0d9a03...cc83c7`](./contracts/arbitrum-42161/0x0d9a0344b290ac1f12452986da6018dc53cc83c7/) | ⚠️ Unaudited |
| PodUnwrapLocker | unknown | sonic | n/a | 5 deployments: ethereum `0xace71c...959d74`; sonic [`0x02b7d3...9494b5`](./contracts/sonic-146/0x02b7d3d5438037d49a25ed15ae34f2d0099494b5/); base `0x76d6bb...6619c2`; arbitrum `0xcb19e5...ca8a3a`; berachain `0x4e4766...31bbac` | ⚠️ Unaudited |
| PodVaultUtility | core_logic | arbitrum | n/a | 5 deployments: ethereum `0x7f782f...0afeef`; ethereum `0xebebc4...159910`; sonic `0x08bafc...1de253`; base `0xaee454...757a5e`; arbitrum [`0x06386d...440fc9`](./contracts/arbitrum-42161/0x06386d5225d642fcbaa11c608fd50c4318440fc9/) | ⚠️ Unaudited |
| StakingVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x0588b7...3fba45`](./contracts/ethereum-1/0x0588b70a940fc6b5664326017cb04a683c3fba45/); ethereum `0xb5482f...ba8b9b`; ethereum `0xdab175...7b1ecc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LeveragePositions | unknown | sonic | n/a | 2 deployments: sonic [`0x26947f...944265`](./contracts/sonic-146/0x26947f4ddccd36604b141989ebf3e66f78944265/); berachain `0xf290d5...9beb16` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (44)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0e0f52...d5c6fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x147946...571d77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1686b6...8ffc7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7581f7...9f37ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88c6ee...df3db3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9acabc...a9d9d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb58556...d33c96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc58941...e2cb7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2315f...0361f0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x182ddd...bc5088` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1ce46d...b4e8f2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x21eadf...ce8685` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2d2d83...e0ca31` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x66d39b...daf291` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x87caed...46bacd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8e9b4d...4eeb4a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc4ba49...1ae039` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xef6ca1...601734` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf79e97...c598bb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfc4c95...137ff4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x074686...db649a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d05d3...265a51` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x14be87...1c853b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x264509...b96ed3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x363c8a...4e75fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62603f...34668c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x667487...327e37` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7b0079...125714` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87875d...d958c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88f19d...1625ff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x915b8f...fb2268` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x929f65...07eddf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc97938...253fb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd8a57...a55797` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf0de99...4a9750` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x54f0b2...1b9243` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xbf9d21...546855` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x182ddd...bc5088` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8afee0...002caf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb56fce...7b314f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2810e...55d24c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdeb779...ed83d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7caed...dfc805` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf79e47...1dd261` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://sourcehat.com/audits/PeapodsFinance) | SourceHat | Audit | 2023-12 | stale | Direct | contract_name | 15 | high |
| [Rendered PDF capture](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2FNepD2vC6ydmdzIX0TlkF%2FyAudit_report%20(2).pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2FhIIhvk8ktnP28clIIAls%2FPeapods_Report.pdf) | SourceHat | Audit | 2024-11 | aging | Direct | contract_name | 13 | high |
| [Rendered PDF capture](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2F1H0oxy7m5JgiUvW4syJW%2FPeapods-security-review_2024-11-16%20(2).pdf) | SourceHat | Audit | 2024-12 | aging | Direct | contract_name | 36 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3717e3...e873aa`](./contracts/ethereum-1/0x3717e340140d30f3a077dd21fac39a86ace873aa/) | LendingAssetVault | core_logic | $19,091.62 | Verified native implementation with $19,091.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x46f081...9f33d0`](./contracts/sonic-146/0x46f0815f0d46bb54d7f1f97358d745eedb9f33d0/) | aspTKNMinimalOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43b9d9...1939d3`](./contracts/ethereum-1/0x43b9d9b0585e5e8a1e069195170adfd0461939d3/) | LeverageFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9698b9...097ae9`](./contracts/base-8453/0x9698b93775907afa0968e9b121744f4641097ae9/) | LeverageFeeProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d9a03...cc83c7`](./contracts/arbitrum-42161/0x0d9a0344b290ac1f12452986da6018dc53cc83c7/) | PodFlashMintSource | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x02b7d3...9494b5`](./contracts/sonic-146/0x02b7d3d5438037d49a25ed15ae34f2d0099494b5/) | PodUnwrapLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06386d...440fc9`](./contracts/arbitrum-42161/0x06386d5225d642fcbaa11c608fd50c4318440fc9/) | PodVaultUtility | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0588b7...3fba45`](./contracts/ethereum-1/0x0588b70a940fc6b5664326017cb04a683c3fba45/) | StakingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 8 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=512

Fork inheritance lineage and inherited audits are included when available.
