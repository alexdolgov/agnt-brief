# Agentic Audit Brief: Saddle Finance

## Project Overview

- Project: Saddle Finance (`saddle-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:53.853Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, ethereum, fantom, kava, optimism
- Contract surface: 34 unique implementations (105 raw deployments)
- DeFi Llama TVL: $735,649.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 87 project-authored contract(s) across 3 chain(s); 17 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 17 common project-authored base contract(s) (swap, ownerpausableupgradeable, shareprotocolfee). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 151; live-surface contracts included: 105 (98 live, 7 unknown).
- Excluded by liveness: 46 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/29 (37.9%)
- Deployed-live implementations: 29 of 34 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/29
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 34
- Raw deployments: 105
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 11 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 34.5% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 11 | 37.9% | 2020-10 |
| Quantstamp | Tier 2 | 11 | 37.9% | 2020-12 |
| OpenZeppelin | Tier 1 | 10 | 34.5% | 2020-12 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Allowlist | unknown | ethereum | n/a | [`0xf5d2e8...1c0559`](./contracts/ethereum-1/0xf5d2e84e816175dfb2c38bd7549d4bd37b1c0559/) | ✅ Audited |
| AmplificationUtils | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3661d0...9b490b`](./contracts/ethereum-1/0x3661d0f70e7f3ec418321a57fd62d691a09b490b/); optimism `0x4f6a43...7ac62e`; arbitrum `0x4f6a43...7ac62e` | ✅ Audited |
| LPToken | unknown | optimism | n/a | 3 deployments: ethereum `0x59f5a3...26710c`; optimism [`0x2b7a5a...563f93`](./contracts/optimism-10/0x2b7a5a5923eca5c00c6572cf3e8e08384f563f93/); arbitrum `0xc0409e...96de1c` | ✅ Audited |
| MathUtils | unknown | ethereum | n/a | [`0xc0409e...96de1c`](./contracts/ethereum-1/0xc0409ec303b727bc1f511d7f8c71fd5ead96de1c/) | ✅ Audited |
| MetaSwap | unknown | ethereum | n/a | 17 deployments: ethereum [`0x1dcb69...e30bab`](./contracts/ethereum-1/0x1dcb69a2b9148c641a43f731fcee123e2be30bab/); ethereum `0x456872...7f080d`; ethereum `0x69baa0...be1556`; ethereum `0x8b2db8...a38c2d`; ethereum `0x9ac17f...ec77f3`; ethereum `0xa50f20...da80d9`; ethereum `0xc765cd...4643b9`; ethereum `0xfb516c...4e9558`; optimism `0x250184...226e9d`; optimism `0x9dc370...45bc5a`; optimism `0xa9a842...f117a5`; optimism `0xc55e8c...a7732e`; optimism `0xe184f7...dda2a6`; arbitrum `0x5dd186...e58c9c`; arbitrum `0xa5bd85...fd4706`; arbitrum `0xb2a276...e5f84d`; arbitrum `0xf8504e...1dc30b` | ✅ Audited |
| PermissionlessMetaSwap | unknown | arbitrum | n/a | 3 deployments: ethereum `0xfb0867...864570`; optimism `0x5224e5...131351`; arbitrum [`0x151795...88441b`](./contracts/arbitrum-42161/0x15179598d0a44593789a85727c32e55e4488441b/) | ✅ Audited |
| Swap | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9dc370...45bc5a`](./contracts/ethereum-1/0x9dc37020f261758871104f9d8b87e575ee45bc5a/); ethereum `0xdb5c5a...21bbe5` | ✅ Audited |
| SwapFlashLoan | unknown | ethereum | n/a | 11 deployments: ethereum [`0x13cc34...fa2bdc`](./contracts/ethereum-1/0x13cc34aa8037f722405285ad2c82fe570bfa2bdc/); ethereum `0x2bff1b...231d72`; ethereum `0x5847f8...993628`; ethereum `0x98d2af...5fb8fa`; ethereum `0xc68bf7...519db6`; ethereum `0xccbe39...1bab26`; optimism `0x5847f8...993628`; optimism `0xa500b0...24dd2e`; optimism `0xf6c2e0...fe08b5`; arbitrum `0x401afb...9b4849`; arbitrum `0xfeea4d...e56ee0` | ✅ Audited |
| SwapUtils | unknown | ethereum | n/a | 3 deployments: ethereum [`0x149bbb...2833a6`](./contracts/ethereum-1/0x149bbb210051851016f57a2824c0444f642833a6/); ethereum `0x206904...f29b55`; optimism `0xcf70e2...a46894` | ✅ Audited |
| SwapUtils | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2b7a5a...563f93`](./contracts/ethereum-1/0x2b7a5a5923eca5c00c6572cf3e8e08384f563f93/); ethereum `0x4f6a43...7ac62e` | ✅ Audited |
| SwapUtils | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xbea9f7...b756e9`](./contracts/arbitrum-42161/0xbea9f78090bdb9e662d8cb301a00ad09a5b756e9/); arbitrum `0xcf70e2...a46894` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bridge | unknown | ethereum | n/a | [`0xa5bd85...fd4706`](./contracts/ethereum-1/0xa5bd85ed9fa27ba23bfb702989e7218e44fd4706/) | ⚠️ Unaudited |
| GaugeHelperContract | unknown | ethereum | n/a | [`0x8020e4...ce9861`](./contracts/ethereum-1/0x8020e4134ad6a694adbe9521a12c751e67ce9861/) | ⚠️ Unaudited |
| MetaSwapDeposit | unknown | ethereum | n/a | 19 deployments: ethereum [`0x04d8ad...c9dba1`](./contracts/ethereum-1/0x04d8adaa0563e3c1cfe8295fed1f9c5e6ac9dba1/); ethereum `0x1e35eb...5558ab`; ethereum `0x401afb...9b4849`; ethereum `0x4f0e41...65fd11`; ethereum `0x500d0b...1dd6d0`; ethereum `0x7d6c76...73cdd8`; ethereum `0x83f87e...d261ed`; ethereum `0xabf69c...a95d61`; ethereum `0xe280ef...8c86fb`; ethereum `0xe91547...fefa38`; optimism `0x3a0c2a...17fe0f`; optimism `0x3f1d22...ae2174`; optimism `0x88cc4a...388b17`; optimism `0xb10ac3...94f89d`; optimism `0xdf815e...5d24d3`; arbitrum `0x18d246...7a3760`; arbitrum `0x1d434f...d4e694`; arbitrum `0xc8dfcf...a5079b`; arbitrum `0xdca5b1...126101` | ⚠️ Unaudited |
| MetaSwapUtils | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0c8bae...9fd314`](./contracts/ethereum-1/0x0c8bae14c9f9bf2c953997c881befac7729fd314/); ethereum `0x3f1d22...ae2174`; ethereum `0x824dcd...f41491`; ethereum `0x88cc4a...388b17` | ⚠️ Unaudited |
| MetaSwapUtils | unknown | arbitrum | n/a | 3 deployments: ethereum `0x505736...b3065b`; optimism `0xbea9f7...b756e9`; arbitrum [`0x0c8bae...9fd314`](./contracts/arbitrum-42161/0x0c8bae14c9f9bf2c953997c881befac7729fd314/) | ⚠️ Unaudited |
| MiniChefV2 | unknown | arbitrum | n/a | 2 deployments: ethereum `0x691ef7...d58534`; arbitrum [`0x206904...f29b55`](./contracts/arbitrum-42161/0x2069043d7556b1207a505eb459d18d908df29b55/) | ⚠️ Unaudited |
| PermissionlessDeployer | unknown | arbitrum | n/a | 2 deployments: optimism `0x293ded...dbd37f`; arbitrum [`0x0232e0...9c8cc6`](./contracts/arbitrum-42161/0x0232e0b6df048c8cc4037c52bc90cf943c9c8cc6/) | ⚠️ Unaudited |
| PermissionlessMetaSwapFlashLoan | unknown | ethereum | n/a | 2 deployments: ethereum [`0x45b48c...180d88`](./contracts/ethereum-1/0x45b48cdaf18a3678eb6cceba3e8a87477a180d88/); ethereum `0x8b8868...4cfb48` | ⚠️ Unaudited |
| PermissionlessSwap | unknown | ethereum | n/a | 3 deployments: ethereum [`0x04b58d...83c765`](./contracts/ethereum-1/0x04b58dc190da2e9b46a3f1ac94f6eca3b683c765/); optimism `0x08f861...d43a81`; arbitrum `0x21d436...bd01c6` | ⚠️ Unaudited |
| PermissionlessSwapFlashLoan | unknown | ethereum | n/a | 2 deployments: ethereum [`0x10170a...33b972`](./contracts/ethereum-1/0x10170a550d2865b9a23caa6c53a030d54233b972/); ethereum `0x47f507...2f082d` | ⚠️ Unaudited |
| PoolRegistry | unknown | arbitrum | n/a | 3 deployments: ethereum `0xfb4de8...9eec81`; optimism `0x4e1484...671e01`; arbitrum [`0x38262c...bf4ef1`](./contracts/arbitrum-42161/0x38262c17a06a6b3588d3e5b70dfa768c06bf4ef1/) | ⚠️ Unaudited |
| RetroactiveVesting | operational_periphery | ethereum | n/a | [`0x5dca27...198a03`](./contracts/ethereum-1/0x5dca270671935cf3df78bd8373c22be250198a03/) | ⚠️ Unaudited |
| SDL | unknown | ethereum | n/a | [`0xf1dc50...4f6871`](./contracts/ethereum-1/0xf1dc500fde233a4055e25e5bbf516372bc4f6871/) | ⚠️ Unaudited |
| SwapCalculator | unknown | ethereum | n/a | [`0xef8af8...a59033`](./contracts/ethereum-1/0xef8af8b67a58fe795304be8593c44ac0d3a59033/) | ⚠️ Unaudited |
| SynthSwapper | unknown | ethereum | n/a | [`0xdf815e...5d24d3`](./contracts/ethereum-1/0xdf815ea6b066ac9f3107d8863a6c19aa2a5d24d3/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| Vesting | unknown | ethereum | n/a | [`0xf8504e...1dc30b`](./contracts/ethereum-1/0xf8504e92428d65e56e495684a38f679c1b1dc30b/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6ec5dd...44d57c`](./contracts/ethereum-1/0x6ec5dd7d8e396973588f0defd79dca04f844d57c/); ethereum `0xd2751c...e73bb2` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x50d745...a53ece` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x529c59...e698df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9585a5...0180bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9980c9...f4a96e` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | 3 deployments: fantom `0x700310...9407d0`; fantom `0xba684b...d44418`; kava `0x3a0c2a...17fe0f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [10-29-2020_Certik.pdf](https://github.com/saddle-finance/saddle-audits/blob/master/10-29-2020_Certik.pdf) | CertiK | Audit | 2020-10 | stale | Direct | contract_name | 18 | high |
| [www.openzeppelin.com/news/saddle-contracts-audit](https://www.openzeppelin.com/news/saddle-contracts-audit) | OpenZeppelin | Audit | 2020-12 | stale | Direct | contract_name | 17 | high |
| [12-09-2020_Quantstamp.pdf](https://github.com/saddle-finance/saddle-audits/blob/master/12-09-2020_Quantstamp.pdf) | Quantstamp | Audit | 2020-12 | stale | Direct | contract_name | 18 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa5bd85...fd4706`](./contracts/ethereum-1/0xa5bd85ed9fa27ba23bfb702989e7218e44fd4706/) | Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8020e4...ce9861`](./contracts/ethereum-1/0x8020e4134ad6a694adbe9521a12c751e67ce9861/) | GaugeHelperContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04d8ad...c9dba1`](./contracts/ethereum-1/0x04d8adaa0563e3c1cfe8295fed1f9c5e6ac9dba1/) | MetaSwapDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c8bae...9fd314`](./contracts/ethereum-1/0x0c8bae14c9f9bf2c953997c881befac7729fd314/) | MetaSwapUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c8bae...9fd314`](./contracts/arbitrum-42161/0x0c8bae14c9f9bf2c953997c881befac7729fd314/) | MetaSwapUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x206904...f29b55`](./contracts/arbitrum-42161/0x2069043d7556b1207a505eb459d18d908df29b55/) | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0232e0...9c8cc6`](./contracts/arbitrum-42161/0x0232e0b6df048c8cc4037c52bc90cf943c9c8cc6/) | PermissionlessDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45b48c...180d88`](./contracts/ethereum-1/0x45b48cdaf18a3678eb6cceba3e8a87477a180d88/) | PermissionlessMetaSwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04b58d...83c765`](./contracts/ethereum-1/0x04b58dc190da2e9b46a3f1ac94f6eca3b683c765/) | PermissionlessSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10170a...33b972`](./contracts/ethereum-1/0x10170a550d2865b9a23caa6c53a030d54233b972/) | PermissionlessSwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x38262c...bf4ef1`](./contracts/arbitrum-42161/0x38262c17a06a6b3588d3e5b70dfa768c06bf4ef1/) | PoolRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dca27...198a03`](./contracts/ethereum-1/0x5dca270671935cf3df78bd8373c22be250198a03/) | RetroactiveVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1dc50...4f6871`](./contracts/ethereum-1/0xf1dc500fde233a4055e25e5bbf516372bc4f6871/) | SDL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef8af8...a59033`](./contracts/ethereum-1/0xef8af8b67a58fe795304be8593c44ac0d3a59033/) | SwapCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf815e...5d24d3`](./contracts/ethereum-1/0xdf815ea6b066ac9f3107d8863a6c19aa2a5d24d3/) | SynthSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8504e...1dc30b`](./contracts/ethereum-1/0xf8504e92428d65e56e495684a38f679c1b1dc30b/) | Vesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ec5dd...44d57c`](./contracts/ethereum-1/0x6ec5dd7d8e396973588f0defd79dca04f844d57c/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=53

Fork inheritance lineage and inherited audits are included when available.
