# Agentic Audit Brief: Sovryn Bridge

## Project Overview

- Project: Sovryn Bridge (`sovryn-bridge`)
- Website: [https://alpha.sovryn.app](https://alpha.sovryn.app)
- Lifecycle: active (Tier 0, 85.5% below peak)
- Generated: 2026-06-10T20:59:16.269Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 47 unique implementations (50 raw deployments)
- DeFi Llama TVL: $2,869,052.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Sovryn Bridge is a cross-chain bridge associated with the Sovryn ecosystem. DefiLlama currently tracks Sovryn Bridge TVL on Ethereum and Binance/BNB Chain, so the protocol surface should not be described as only an Ethereum-to-RSK bridge unless Binance/BNB Chain TVL is explicitly scoped out. The live surface includes proxy and implementation contracts, token allowlist/configuration or risk-control contracts, federation/validator components, governance/admin functionality, and unresolved active contracts that require coverage review.

### Architecture

The project consists of a single product family with one proxy contract, indicating a focused bridging mechanism without additional shared infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 47
- Raw deployments: 50
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AdminUpgradeabilityProxy | proxy | ethereum | [`0x33c0d3...366ee1`](./contracts/ethereum-1/0x33c0d33a0d4312562ad622f91d12b0ac47366ee1/) | ⚠️ Unaudited |
| AllowTokens | registry | ethereum | 3 deployments: ethereum [`0x1486e2...f70fe0`](./contracts/ethereum-1/0x1486e225ee099f7ea491e32cd2a69e8264f70fe0/); ethereum `0x8df20c...0aa1be`; ethereum `0x9d772c...9789fd` | ⚠️ Unaudited |
| Federation | unknown | ethereum | 2 deployments: ethereum [`0x2493b9...4cbd18`](./contracts/ethereum-1/0x2493b92b3b958c8d1e93899cae00bfc4854cbd18/); ethereum `0xa38e6a...c4df24` | ⚠️ Unaudited |
| MultiSigWallet | governance | ethereum | [`0x062c74...3ccd2e`](./contracts/ethereum-1/0x062c74f9d27b1178bb76186c1756128ccb3ccd2e/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0xd60010...512c07`](./contracts/ethereum-1/0xd6001073ef1ba973e53719766780b95667512c07/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x05b68e...d5327d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x09e3ba...86438e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x19d3c7...c0b0f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1c9ede...699c8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d937d...a99914` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d9524...48fade` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x249ea3...744faf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x29cdad...633b71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x49eef2...ecf420` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x603e82...d24d5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x657595...65bea9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x67bb74...477880` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x72efb4...e0e0d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x74aa9b...d4d45f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x752fa1...928537` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8027e0...05a500` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x882619...f9b52f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8908c9...c8eba9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8be5c4...0dc148` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x97d761...9e37bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa908bc...9ca92a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xad95d2...806453` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaed21f...e3c391` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb14b35...469379` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb4ba8c...c79156` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb6c313...0e69f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb7405c...0a7e41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb8b037...4d8868` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc0b2a9...a4fa1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc51579...148959` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc81a82...c16ed5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcf0ee3...c6971d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd412ac...f09538` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd6b220...ae8ec2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd913f2...be216c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe0a825...6378d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe1b1ad...836747` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe8d817...42eb4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf29fd8...c7c374` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf9a59a...68545c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfcc895...e06196` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe4e2a...509d6b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x33c0d3...366ee1`](./contracts/ethereum-1/0x33c0d33a0d4312562ad622f91d12b0ac47366ee1/) | AdminUpgradeabilityProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1486e2...f70fe0`](./contracts/ethereum-1/0x1486e225ee099f7ea491e32cd2a69e8264f70fe0/) | AllowTokens | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2493b9...4cbd18`](./contracts/ethereum-1/0x2493b92b3b958c8d1e93899cae00bfc4854cbd18/) | Federation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x062c74...3ccd2e`](./contracts/ethereum-1/0x062c74f9d27b1178bb76186c1756128ccb3ccd2e/) | MultiSigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
