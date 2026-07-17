# Agentic Audit Brief: Blend Money

⚠️ Lifecycle status: DECLINING - TVL dropped 88.6% over 90 days

## Project Overview

- Project: Blend Money (`blend-money`)
- Website: [https://blend.money/](https://blend.money/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:07.581Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: arbitrum, base, ethereum, hyperliquid, polygon, scroll
- Contract surface: 16 unique implementations (73 raw deployments)
- DeFi Llama TVL: $122,738.61
- On-chain TVL (included contracts): $8,101.70
- TVL by chain: Arbitrum $8,101.70

## Project Description

Onchain Capital Allocator. Structurally: 19 project-authored contract(s) across 6 chain(s); 1 ERC4626 vault, 1 ERC20 token; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 13 common project-authored base contract(s) (oapp, oappsender, oappcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 97; live-surface contracts included: 73 (63 live, 10 unknown).
- Excluded by liveness: 24 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/9 (77.8%)
- Deployed-live implementations: 11 of 16 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/13
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 16
- Raw deployments: 73
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): $8,101.70
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 12 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 66.7% (Sherlock, Spearbit)
- Note: This protocol is classified as [declining]. ASD of $8,101.70 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 5 | 38.5% | 2025-10 |
| Sherlock | Tier 1 | 3 | 23.1% | 2026-06 |
| unknown | Tier 2 | 3 | 23.1% | 2026-06 |
| Zellic | Tier 2 | 2 | 15.4% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MorphoVaultController | core_logic | polygon | n/a | 11 deployments: ethereum `0xad7188d0970cbedbdb233f0e5b7367cf149c3449`; ethereum `0xfeb458a7c7284a220b20540b0a8d1e07cb0e3031`; polygon [`0x05824db4609ec96c77e99bc61c8fe0acf3269b24`](./contracts/polygon-137/0x05824db4609ec96c77e99bc61c8fe0acf3269b24/); polygon `0x107b9863c91383cb4b4683a1e8d4304216a98fed`; hyperliquid `0x44c6dcba90dae9238f5c8842abbf8506c3d3b437`; hyperliquid `0x9f4fb60b8bf16b9b46134f803c39ceaa82f96037`; base `0x20baf09df508c6e055be01b508478d3f674229c3`; base `0x26c1f82b901b12ff2a1b11f4aa35a28369b4677c`; arbitrum `0xad7188d0970cbedbdb233f0e5b7367cf149c3449`; arbitrum `0xfe07c58d18e04f46ed32ed0e5c295fbba3b45304`; scroll `0xab84362b57a83c4bcdc1de76835eb4dc9345ed50` | ✅ Audited |
| RolesBroadcaster | unknown | base | n/a | [`0x6f94ac2c4129a7f1435532f39913dfd23d061263`](./contracts/base-8453/0x6f94ac2c4129a7f1435532f39913dfd23d061263/) | ✅ Audited |
| RolesGuard | governance | base | n/a | 7 deployments: ethereum `0xbb4021d387a48ffe32150f8154c57892e6c6156c`; polygon `0xad7188d0970cbedbdb233f0e5b7367cf149c3449`; hyperliquid `0x920029f02b87c7bb0013c8e17e245209c03dd7bf`; hyperliquid `0xab6a8f5a37cee7a979622138524c4ddf22debc49`; base [`0x0a55aa9881b64bf370738f088154f997b975f718`](./contracts/base-8453/0x0a55aa9881b64bf370738f088154f997b975f718/); arbitrum `0x7d55a2bd88ed4e886ba8a95871df823db70acddf`; scroll `0xad7188d0970cbedbdb233f0e5b7367cf149c3449` | ✅ Audited |
| RolesReceiver | unknown | ethereum | n/a | 12 deployments: ethereum [`0x05824db4609ec96c77e99bc61c8fe0acf3269b24`](./contracts/ethereum-1/0x05824db4609ec96c77e99bc61c8fe0acf3269b24/); ethereum `0x7d55a2bd88ed4e886ba8a95871df823db70acddf`; polygon `0x920029f02b87c7bb0013c8e17e245209c03dd7bf`; polygon `0xfe07c58d18e04f46ed32ed0e5c295fbba3b45304`; hyperliquid `0xab84362b57a83c4bcdc1de76835eb4dc9345ed50`; hyperliquid `0xfe07c58d18e04f46ed32ed0e5c295fbba3b45304`; base `0x9944555a71d6e188a4c2615545e443e7097c5d6e`; base `0xe4e0f5eb706084f4d598049ddd0abfd2f8431360`; arbitrum `0x107b9863c91383cb4b4683a1e8d4304216a98fed`; arbitrum `0xa03f41ede4d9a50f87e34fce042034eae74a82e8`; scroll `0x2af296e77f32a356d13d9a3466678265cb92a4c9`; scroll `0x6f94ac2c4129a7f1435532f39913dfd23d061263` | ✅ Audited |
| SwapAdapter | adapter | base | n/a | 13 deployments: ethereum `0x30c7437c1063fc3c7af022ac7ab01c897fb5e135`; ethereum `0x8ccedc4f8ea3362e0f85c88a6866976ad3db3406`; ethereum `0x9095bfff63a69e678163f85cf4ae9e3618f12f53`; ethereum `0x920029f02b87c7bb0013c8e17e245209c03dd7bf`; polygon `0x9f4fb60b8bf16b9b46134f803c39ceaa82f96037`; polygon `0xa12e4f2b4aa4ee29e5a81fc83123822d86c0354e`; hyperliquid `0x3d39b3339063e70d03cd2d77822a0f7f61b7f5ae`; hyperliquid `0x9e622e93541da48a15d4dc0cd2d49bff10f3ab6b`; hyperliquid `0xad7188d0970cbedbdb233f0e5b7367cf149c3449`; base [`0x2207189bab0f177df87d77b7575102f2df925754`](./contracts/base-8453/0x2207189bab0f177df87d77b7575102f2df925754/); base `0xbf76d87abb1c22a2a820888483956298a172def4`; arbitrum `0x6f94ac2c4129a7f1435532f39913dfd23d061263`; arbitrum `0x920029f02b87c7bb0013c8e17e245209c03dd7bf` | ✅ Audited |
| UserWithdrawController | operational_periphery | polygon | n/a | 5 deployments: ethereum `0x509ce0134e14d60a3d67070db5af13c8b3260303`; ethereum `0xb50d1fdf99cbd33f2387cec1611e41770ab74089`; ethereum `0xfd5ce759d38b112dee44ad7b2f509ce658b32a50`; polygon [`0x086d13402360efa4c4189695eced9805240ce76a`](./contracts/polygon-137/0x086d13402360efa4c4189695eced9805240ce76a/); hyperliquid `0xbb62cb9017417a95fcd0aaca29332f73ecc46cce` | ✅ Audited |
| WhitelistedSwapAdapter | adapter | scroll | n/a | [`0x44c6dcba90dae9238f5c8842abbf8506c3d3b437`](./contracts/scroll-534352/0x44c6dcba90dae9238f5c8842abbf8506c3d3b437/) | ✅ Audited |
| XChainVaultAction | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x2207189bab0f177df87d77b7575102f2df925754`](./contracts/ethereum-1/0x2207189bab0f177df87d77b7575102f2df925754/); ethereum `0x34f8b748554d87a5c85a34817dac2e123ff44d12`; ethereum `0x79635ab06bacee109117c8600b9b95d72527ca9a` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultV2 | core_logic | arbitrum | n/a | 5 deployments: arbitrum [`0x567c1b5c2e58c66f84b80dff4c97b084b23b4e87`](./contracts/arbitrum-42161/0x567c1b5c2e58c66f84b80dff4c97b084b23b4e87/); arbitrum `0x75e9d4fea6c408097ee4f3c63359d0dc617acb4f`; arbitrum `0x9ce8a73296704d4689586347ef6e2087c2128f45`; arbitrum `0xa47c5203d22ae173788a9d9be0f2beecc97f4df9`; arbitrum `0xe3637ca4d1d6dd756de0ecd527c40077029ece6e` | ⚠️ Unaudited |
| GeneralAdapter1 | adapter | hyperliquid | n/a | [`0x7eae59d64fb62723bf8a7d38bf027cd86c48fb8b`](./contracts/hyperliquid-999/0x7eae59d64fb62723bf8a7d38bf027cd86c48fb8b/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | scroll | n/a | 3 deployments: scroll [`0x8a23d825467860edb4aca0909f29d0a6a8e3a0a7`](./contracts/scroll-534352/0x8a23d825467860edb4aca0909f29d0a6a8e3a0a7/); scroll `0xd39df22a3cd1c91b22d5e748cc62b03ed3e8a8ad`; scroll `0xec5906675a92e4113a39d719c5c65a62a0995d59` | ⚠️ Unaudited |
| OFTXChainAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3fb0c3ae279c71a25f5ab52c046986d408156cf9`](./contracts/ethereum-1/0x3fb0c3ae279c71a25f5ab52c046986d408156cf9/); polygon `0x9e622e93541da48a15d4dc0cd2d49bff10f3ab6b` | ⚠️ Unaudited |
| TimelockController | governance | hyperliquid | n/a | 6 deployments: ethereum `0x107b9863c91383cb4b4683a1e8d4304216a98fed`; polygon `0x6f94ac2c4129a7f1435532f39913dfd23d061263`; hyperliquid [`0x086d13402360efa4c4189695eced9805240ce76a`](./contracts/hyperliquid-999/0x086d13402360efa4c4189695eced9805240ce76a/); hyperliquid `0x30c7437c1063fc3c7af022ac7ab01c897fb5e135`; hyperliquid `0x6f94ac2c4129a7f1435532f39913dfd23d061263`; hyperliquid `0xfeb458a7c7284a220b20540b0a8d1e07cb0e3031` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | n/a | `0x3f4196b3932c9353285d846d3785da7bc0b96a86` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x107b9863c91383cb4b4683a1e8d4304216a98fed` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x9f4fb60b8bf16b9b46134f803c39ceaa82f96037` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audits (GitHub directory)](https://github.com/blendmoney/audits) | unknown | Audit | 2026-06 | fresh | Direct | contract_name | 3 | n/a |
| [blend-25-08-10-0-cantinacode.pdf](https://github.com/blendmoney/audits/blob/main/blend-25-08-10-0-cantinacode.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | 4 | n/a |
| [blend-25-09-29-0-cantinacode.pdf](https://github.com/blendmoney/audits/blob/main/blend-25-09-29-0-cantinacode.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 1 | n/a |
| [blend-25-09-29-1-cantinacode.pdf](https://github.com/blendmoney/audits/blob/main/blend-25-09-29-1-cantinacode.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 1 | n/a |
| [blend-25-10-02-0-zellic.pdf](https://github.com/blendmoney/audits/blob/main/blend-25-10-02-0-zellic.pdf) | Zellic | Audit | 2025-10 | fresh | Direct | contract_name | 2 | n/a |
| [blend-25-10-05-0-cantinacode.pdf](https://github.com/blendmoney/audits/blob/main/blend-25-10-05-0-cantinacode.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | 1 | n/a |
| [blend-25-10-10-0-cantinacode.pdf](https://github.com/blendmoney/audits/blob/main/blend-25-10-10-0-cantinacode.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [blend-25-12-05-0-sherlock.pdf](https://github.com/blendmoney/audits/blob/main/blend-25-12-05-0-sherlock.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | 1 | n/a |
| [blend-26-01-22-0-sherlock.pdf](https://github.com/blendmoney/audits/blob/main/blend-26-01-22-0-sherlock.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | contract_name | 1 | n/a |
| [blend-26-03-10-0.sherlock.pdf](https://github.com/blendmoney/audits/blob/main/blend-26-03-10-0.sherlock.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | contract_name | 1 | n/a |
| [blend-26-05-04-0.sherlock.pdf](https://github.com/blendmoney/audits/blob/main/blend-26-05-04-0.sherlock.pdf) | Sherlock | Contest | 2026-05 | fresh | Direct | contract_name | 1 | n/a |
| [blend-26-06-12-0.sherlock.pdf](https://github.com/BlendMoney/audits/blob/main/blend-26-06-12-0.sherlock.pdf) | Sherlock | Contest | 2026-06 | fresh | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x567c1b5c2e58c66f84b80dff4c97b084b23b4e87`](./contracts/arbitrum-42161/0x567c1b5c2e58c66f84b80dff4c97b084b23b4e87/) | VaultV2 | core_logic | $8,101.70 | Verified native implementation with $8,101.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7eae59d64fb62723bf8a7d38bf027cd86c48fb8b`](./contracts/hyperliquid-999/0x7eae59d64fb62723bf8a7d38bf027cd86c48fb8b/) | GeneralAdapter1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fb0c3ae279c71a25f5ab52c046986d408156cf9`](./contracts/ethereum-1/0x3fb0c3ae279c71a25f5ab52c046986d408156cf9/) | OFTXChainAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=18

Zero-match audit list:

- [12806] blend-25-10-10-0-cantinacode.pdf

Fork inheritance lineage and inherited audits are included when available.
