# Agentic Audit Brief: Aera

## Project Overview

- Project: Aera (`aera`)
- Website: [https://www.aera.finance](https://www.aera.finance)
- Lifecycle: active (Tier 0, 18.5% below peak)
- Generated: 2026-06-21T18:34:39.285Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 33 unique implementations (50 raw deployments)
- DeFi Llama TVL: $132,551,990.00
- On-chain TVL (included contracts): $785.43
- TVL by chain: Ethereum $665.38 | Base $113.41 | Polygon $6.63

## Project Description

Aera is an onchain capital allocator that enables users to deposit assets into vaults which then deploy capital across various DeFi protocols. It supports both single-depositor and multi-depositor vaults, with strategies that can integrate lending markets, liquidity provision, and other yield sources.

### Architecture

Aera V2 and V3 share a common vault-based architecture where factories deploy vault instances. V2 vaults integrate with external protocols like Aave and Compound via proxy contracts, while V3 factories likely produce vaults that may reuse similar integration patterns. Both families rely on registry contracts for vault management and may share peripheral helpers like ArrakisV2Helper.

## Contract Surface Quality

- Indexed contracts: 546; live-surface contracts included: 50 (45 live, 5 unknown).
- Excluded by liveness: 384 inactive, 112 singleton, 0 uninitialized.
- Deployment units: 10/65 live.
- Detected codebases: aave-v2, uniswap-v3
- Unverified dependencies: 5/40.

## Audit Coverage Summary

- Verified implementations audited: 0/30 (0.0%)
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 33
- Raw deployments: 50
- Audits discovered: 5
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $785.43
- Latest audit: 2024-05 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PoolInstance | core_logic | ethereum | unit-43505 | [`0x87870b...4fa4e2`](./contracts/ethereum-1/0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2/) | ⚠️ Unaudited |
| L2PoolInstance | core_logic | base | unit-43543 | [`0xa238dd...98d1c5`](./contracts/base-8453/0xa238dd80c259a72e81d7e4664a9801593f98d1c5/) | ⚠️ Unaudited |
| PoolInstance | core_logic | polygon | unit-43525 | [`0x794a61...4814ad`](./contracts/polygon-137/0x794a61358d6845594f94dc1db02a252b5b4814ad/) | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | base | n/a | 2 deployments: ethereum `0x7b4eb5...a138a3`; base [`0x2d8a3c...df38ac`](./contracts/base-8453/0x2d8a3c5677189723c4cb8873cfc9c8976fdf38ac/) | ⚠️ Unaudited |
| ArbitrumBridgeReceiver | operational_periphery | arbitrum | n/a | [`0x42480c...d38068`](./contracts/arbitrum-42161/0x42480c37b249e33aabaf4c22b20235656bd38068/) | ⚠️ Unaudited |
| BaseBulker | unknown | polygon | n/a | 3 deployments: polygon [`0x59e242...7f7cd6`](./contracts/polygon-137/0x59e242d352ae13166b4987ae5c990c232f7f7cd6/); base `0x78d067...212a8c`; arbitrum `0xbde8f3...7b372d` | ⚠️ Unaudited |
| Bulker | unknown | ethereum | n/a | [`0x74a81f...8d80c3`](./contracts/ethereum-1/0x74a81f84268744a40febc48f8b812a1f188d80c3/) | ⚠️ Unaudited |
| CometFactory | registry | polygon | n/a | [`0x2f9e39...29125b`](./contracts/polygon-137/0x2f9e3953b2ef89fa265f2a32ed9f80d00229125b/) | ⚠️ Unaudited |
| CometRewards | unknown | base | n/a | 4 deployments: ethereum `0x1b0e76...885a40`; polygon `0x459396...31e581`; base [`0x123964...00a6b1`](./contracts/base-8453/0x123964802e6ababbe1bc9547d72ef1b69b00a6b1/); arbitrum `0x88730d...9f7fae` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | unit-43506 | [`0xa17581...93ae94`](./contracts/ethereum-1/0xa17581a9e3356d9a858b789d68b4d866e593ae94/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | unit-43508 | [`0xc3d688...84cdc3`](./contracts/ethereum-1/0xc3d688b66703497daa19211eedff47f25384cdc3/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | polygon | unit-43533 | [`0xf25212...246445`](./contracts/polygon-137/0xf25212e676d1f7f89cd72ffee66158f541246445/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | base | unit-43539 | [`0x46e6b2...0970bf`](./contracts/base-8453/0x46e6b214b524310239732d51387075e0e70970bf/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | base | unit-43542 | [`0x9c4ec7...ff58bf`](./contracts/base-8453/0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | base | unit-43545 | [`0xb125e6...15eb2f`](./contracts/base-8453/0xb125e6687d4313864e53df431d5425969c15eb2f/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | arbitrum | unit-43558 | [`0x9c4ec7...ff58bf`](./contracts/arbitrum-42161/0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | arbitrum | n/a | [`0x794a61...4814ad`](./contracts/arbitrum-42161/0x794a61358d6845594f94dc1db02a252b5b4814ad/) | ⚠️ Unaudited |
| MainnetBulker | unknown | ethereum | n/a | [`0xa397a8...4b00c7`](./contracts/ethereum-1/0xa397a8c2086c554b531c02e29f3291c9704b00c7/) | ⚠️ Unaudited |
| Morpho | unknown | polygon | n/a | 4 deployments: ethereum `0xbbbbbb...eeffcb`; polygon [`0x1bf0c2...a25f67`](./contracts/polygon-137/0x1bf0c2541f820e775182832f06c0b7fc27a25f67/); base `0xbbbbbb...eeffcb`; arbitrum `0x6c247b...518f5e` | ⚠️ Unaudited |
| MultiDepositorVaultFactory | registry | ethereum | n/a | [`0x29722c...b90b4f`](./contracts/ethereum-1/0x29722cc9a1cacff4a15914f9bc274b46f3b90b4f/) | ⚠️ Unaudited |
| OptimismBridgeReceiver | operational_periphery | base | n/a | [`0x18281d...3c468a`](./contracts/base-8453/0x18281dfc4d00905da1aaa6731414eaba843c468a/) | ⚠️ Unaudited |
| ParaSwapDebtSwapAdapterV3 | adapter | arbitrum | n/a | [`0xcf85ff...3f69de`](./contracts/arbitrum-42161/0xcf85ff1c37c594a10195f7a9ab85cbb0a03f69de/) | ⚠️ Unaudited |
| PolygonBridgeReceiver | operational_periphery | polygon | n/a | [`0x18281d...3c468a`](./contracts/polygon-137/0x18281dfc4d00905da1aaa6731414eaba843c468a/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | [`0xd88c8e...6b1723`](./contracts/arbitrum-42161/0xd88c8e0ae21bea6ade41a41130bb4cd43e6b1723/) | ⚠️ Unaudited |
| SingleDepositorVaultFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x8f1fdb...e25aeb`](./contracts/ethereum-1/0x8f1fdb45160234d6e7e3653f5af8e09a2ce25aeb/); base [`0x8f1fdb...e25aeb`](./contracts/base-8453/0x8f1fdb45160234d6e7e3653f5af8e09a2ce25aeb/) | ⚠️ Unaudited |
| StableDebtToken | token | arbitrum | n/a | [`0x0c2c95...e6c4f7`](./contracts/arbitrum-42161/0x0c2c95b24529664fe55d4437d7a31175cfe6c4f7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | 6 deployments: arbitrum [`0x4cb9a7...8c9d66`](./contracts/arbitrum-42161/0x4cb9a7ae498cedcbb5eae9f25736ae7d428c9d66/); arbitrum `0x9d9c7d...453a21`; arbitrum `0xa5edbd...905dca`; arbitrum `0xbc14d8...0b6b66`; arbitrum `0xf9e086...38b8e5`; arbitrum `0xfd4104...671198` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | core_logic | arbitrum | n/a | [`0x9a8d4d...e2e5db`](./contracts/arbitrum-42161/0x9a8d4d93deb59e0457f179e6b69a9073d7e2e5db/) | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | arbitrum | n/a | 3 deployments: arbitrum [`0x5283be...4264ff`](./contracts/arbitrum-42161/0x5283beced7adf6d003225c13896e536f2d4264ff/); arbitrum `0x5760e3...99f8c3`; arbitrum `0xecd4bd...f1fafb` | ⚠️ Unaudited |
| Xai | unknown | arbitrum | n/a | [`0x3fb787...42e6af`](./contracts/arbitrum-42161/0x3fb787101dc6be47cfe18aeee15404dcc842e6af/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | polygon | n/a | `0x655641...4f7529` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7e334d...8dd004` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc5973f...8d513e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2023-09-22.pdf](https://github.com/aera-finance/aera-contracts-public/blob/main/v2/audits/spearbit/2023-09-22.pdf) | Spearbit | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [V1 Audit](https://cdn.prod.website-files.com/62cd150e5e9efc960319c44d/634d46596f6b027c1bb27d92_Aera%20Report.pdf) | Unknown | Audit | 2022-10 | stale | Direct | contract_name | 0 | n/a |
| [V2 Audit](https://cdn.prod.website-files.com/62cd150e5e9efc960319c44d/652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf) | Spearbit | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view](https://drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view?usp=sharing) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2024-05-15.pdf](https://github.com/aera-finance/aera-contracts-public/blob/main/v2/audits/openzeppelin/2024-05-15.pdf) | OpenZeppelin | Audit | 2024-05 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x42480c...d38068`](./contracts/arbitrum-42161/0x42480c37b249e33aabaf4c22b20235656bd38068/) | ArbitrumBridgeReceiver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x59e242...7f7cd6`](./contracts/polygon-137/0x59e242d352ae13166b4987ae5c990c232f7f7cd6/) | BaseBulker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74a81f...8d80c3`](./contracts/ethereum-1/0x74a81f84268744a40febc48f8b812a1f188d80c3/) | Bulker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2f9e39...29125b`](./contracts/polygon-137/0x2f9e3953b2ef89fa265f2a32ed9f80d00229125b/) | CometFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa397a8...4b00c7`](./contracts/ethereum-1/0xa397a8c2086c554b531c02e29f3291c9704b00c7/) | MainnetBulker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29722c...b90b4f`](./contracts/ethereum-1/0x29722cc9a1cacff4a15914f9bc274b46f3b90b4f/) | MultiDepositorVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x18281d...3c468a`](./contracts/polygon-137/0x18281dfc4d00905da1aaa6731414eaba843c468a/) | PolygonBridgeReceiver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f1fdb...e25aeb`](./contracts/ethereum-1/0x8f1fdb45160234d6e7e3653f5af8e09a2ce25aeb/) | SingleDepositorVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3fb787...42e6af`](./contracts/arbitrum-42161/0x3fb787101dc6be47cfe18aeee15404dcc842e6af/) | Xai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 11 |
| standard_library | 9 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=10

Zero-match audit list:

- [12621] 2023-09-22.pdf
- [12622] V1 Audit
- [12623] V2 Audit
- [12624] drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view
- [12625] 2024-05-15.pdf

Fork inheritance lineage and inherited audits are included when available.
