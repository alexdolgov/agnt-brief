# Agentic Audit Brief: Royco Protocol

⚠️ Lifecycle status: DECLINING - TVL changed 34.5% over 90 days

## Project Overview

- Project: Royco Protocol (`royco-protocol`)
- Website: [https://www.royco.org](https://www.royco.org)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-31T14:54:11.140Z
- Pipeline run: v2-pipeline-2026-05-26-695c23-aaf8
- Chains: arbitrum, avalanche, base, ethereum, hyperliquid, sonic
- Contract surface: 14 unique implementations (47 raw deployments)
- DeFi Llama TVL: $35,412,432.00
- On-chain TVL (included contracts): $7.16
- TVL by chain: Sonic $7.00 | Ethereum $0.16

## Project Description

Royco Protocol is a yield optimization platform that enables users to deposit assets into vaults and participate in incentive markets. It provides infrastructure for creating wrapped vaults, managing points programs, and executing complex strategies via Weiroll wallets.

### Architecture

Royco V1 provides the foundational vault and teller contracts, while Royco V2 introduces a factory pattern for scalable deployments. The Ethereum, Sonic, Hyperliquid, and Plume families represent chain-specific instances of shared infrastructure like WrappedVault, VaultMarketHub, and RecipeMarketHub, all relying on common registries and helper contracts.

## Audit Coverage Summary

- Verified implementations audited: 0/13 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 4
- Unverified implementations: 1
- Unique implementations: 14
- Raw deployments: 47
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $7.16
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $7.16 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BoringVault | core_logic | ethereum | 2 deployments: ethereum [`0x74d1fa...bad5cc`](./contracts/ethereum-1/0x74d1fafa4e0163b2f1035f1b052137f3f9bad5cc/); sonic [`0x74d1fa...bad5cc`](./contracts/sonic-146/0x74d1fafa4e0163b2f1035f1b052137f3f9bad5cc/) | ⚠️ Unaudited |
| AccountantWithRateProviders | operational_periphery | ethereum | 2 deployments: ethereum [`0x80f0b2...e6bac9`](./contracts/ethereum-1/0x80f0b206b7e5daa1b1ba4ea1478a33241ee6bac9/); sonic [`0x80f0b2...e6bac9`](./contracts/sonic-146/0x80f0b206b7e5daa1b1ba4ea1478a33241ee6bac9/) | ⚠️ Unaudited |
| ArcticArchitectureLens | periphery | ethereum | 2 deployments: ethereum [`0x90983e...16a396`](./contracts/ethereum-1/0x90983ebf38e981ae38f7da9e71804380e316a396/); sonic [`0x90983e...16a396`](./contracts/sonic-146/0x90983ebf38e981ae38f7da9e71804380e316a396/) | ⚠️ Unaudited |
| LayerZeroTeller | core_logic | ethereum | [`0x60ebb5...42b0b8`](./contracts/ethereum-1/0x60ebb5d1454bb99aa35f63f609e79179b342b0b8/) | ⚠️ Unaudited |
| RecipeMarketHub | unknown | hyperliquid | 5 deployments: ethereum `0x783251...d937c0`; sonic `0xfcc593...95bdbd`; hyperliquid [`0x6af057...6787fd`](./contracts/hyperliquid-999/0x6af057b1c423d108ab710d6f4e3e46f3536787fd/); base `0x783251...d937c0`; arbitrum `0x783251...d937c0` | ⚠️ Unaudited |
| RoycoFactory | registry | ethereum | 3 deployments: ethereum [`0x7cc6fb...27253c`](./contracts/ethereum-1/0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c/); arbitrum [`0x7cc6fb...27253c`](./contracts/arbitrum-42161/0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c/); avalanche [`0x7cc6fb...27253c`](./contracts/avalanche-43114/0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | sonic | [`0x0f75c8...b00a42`](./contracts/sonic-146/0x0f75c8176d4ebdff78d9a0c486b35d8f94b00a42/) | ⚠️ Unaudited |
| WeirollWalletHelper | periphery | ethereum | 5 deployments: ethereum [`0x07899a...7c9911`](./contracts/ethereum-1/0x07899ac8be7462151d6515fcd4773dd9267c9911/); sonic [`0x07899a...7c9911`](./contracts/sonic-146/0x07899ac8be7462151d6515fcd4773dd9267c9911/); hyperliquid [`0x07899a...7c9911`](./contracts/hyperliquid-999/0x07899ac8be7462151d6515fcd4773dd9267c9911/); base [`0x07899a...7c9911`](./contracts/base-8453/0x07899ac8be7462151d6515fcd4773dd9267c9911/); arbitrum [`0x07899a...7c9911`](./contracts/arbitrum-42161/0x07899ac8be7462151d6515fcd4773dd9267c9911/) | ⚠️ Unaudited |
| WrappedVaultFactory | registry | sonic | 4 deployments: ethereum `0x75e502...343bca`; sonic [`0x7212d9...e7491a`](./contracts/sonic-146/0x7212d98a88d44f714fd29dd980cb846be8e7491a/); base `0x75e502...343bca`; arbitrum `0x75e502...343bca` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PointsFactory | registry | ethereum | 5 deployments: ethereum [`0x19112a...d09c50`](./contracts/ethereum-1/0x19112adbdafb465ddf0b57ecc07e68110ad09c50/); sonic `0xd3b5be...7c8b8d`; hyperliquid `0xc0bd79...f15d49`; base [`0x19112a...d09c50`](./contracts/base-8453/0x19112adbdafb465ddf0b57ecc07e68110ad09c50/); arbitrum [`0x19112a...d09c50`](./contracts/arbitrum-42161/0x19112adbdafb465ddf0b57ecc07e68110ad09c50/) | ⚠️ Unaudited (bytecode match) |
| VaultMarketHub | core_logic | sonic | 5 deployments: ethereum `0xa97ecc...769280`; sonic [`0x1e3fcc...5f94a2`](./contracts/sonic-146/0x1e3fcccbafdbdf3cb17b7470c8a6cc64eb5f94a2/); hyperliquid `0x595ee7...e301fc`; base `0xa97ecc...769280`; arbitrum `0xa97ecc...769280` | ⚠️ Unaudited (bytecode match) |
| WeirollWallet | unknown | ethereum | 5 deployments: ethereum [`0x40a1c0...309dc0`](./contracts/ethereum-1/0x40a1c08084671e9a799b73853e82308225309dc0/); sonic [`0x40a1c0...309dc0`](./contracts/sonic-146/0x40a1c08084671e9a799b73853e82308225309dc0/); hyperliquid [`0x40a1c0...309dc0`](./contracts/hyperliquid-999/0x40a1c08084671e9a799b73853e82308225309dc0/); base [`0x40a1c0...309dc0`](./contracts/base-8453/0x40a1c08084671e9a799b73853e82308225309dc0/); arbitrum [`0x40a1c0...309dc0`](./contracts/arbitrum-42161/0x40a1c08084671e9a799b73853e82308225309dc0/) | ⚠️ Unaudited (bytecode match) |
| WrappedVault | core_logic | ethereum | 6 deployments: ethereum [`0x3c44c2...eb3e66`](./contracts/ethereum-1/0x3c44c20377e252567d283dc7746d1bea67eb3e66/); sonic `0xb0a396...e2bf33`; hyperliquid `0xb0a396...e2bf33`; base [`0x3c44c2...eb3e66`](./contracts/base-8453/0x3c44c20377e252567d283dc7746d1bea67eb3e66/); base `0xb0a396...e2bf33`; arbitrum [`0x3c44c2...eb3e66`](./contracts/arbitrum-42161/0x3c44c20377e252567d283dc7746d1bea67eb3e66/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | `0xda0a91...e8ccfa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x74d1fa...bad5cc`](./contracts/ethereum-1/0x74d1fafa4e0163b2f1035f1b052137f3f9bad5cc/) | BoringVault | core_logic | $7.16 | Verified native implementation with $7.16 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80f0b2...e6bac9`](./contracts/ethereum-1/0x80f0b206b7e5daa1b1ba4ea1478a33241ee6bac9/) | AccountantWithRateProviders | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90983e...16a396`](./contracts/ethereum-1/0x90983ebf38e981ae38f7da9e71804380e316a396/) | ArcticArchitectureLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19112a...d09c50`](./contracts/ethereum-1/0x19112adbdafb465ddf0b57ecc07e68110ad09c50/) | PointsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x6af057...6787fd`](./contracts/hyperliquid-999/0x6af057b1c423d108ab710d6f4e3e46f3536787fd/) | RecipeMarketHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0f75c8...b00a42`](./contracts/sonic-146/0x0f75c8176d4ebdff78d9a0c486b35d8f94b00a42/) | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1e3fcc...5f94a2`](./contracts/sonic-146/0x1e3fcccbafdbdf3cb17b7470c8a6cc64eb5f94a2/) | VaultMarketHub | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40a1c0...309dc0`](./contracts/ethereum-1/0x40a1c08084671e9a799b73853e82308225309dc0/) | WeirollWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07899a...7c9911`](./contracts/ethereum-1/0x07899ac8be7462151d6515fcd4773dd9267c9911/) | WeirollWalletHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c44c2...eb3e66`](./contracts/ethereum-1/0x3c44c20377e252567d283dc7746d1bea67eb3e66/) | WrappedVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7212d9...e7491a`](./contracts/sonic-146/0x7212d98a88d44f714fd29dd980cb846be8e7491a/) | WrappedVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
