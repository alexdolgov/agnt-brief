# Agentic Audit Brief: Pulsechain

## Project Overview

- Project: Pulsechain (`pulsechain`)
- Website: [https://pulsechain.com/](https://pulsechain.com/)
- Lifecycle: active (Tier 0, 70.3% below peak)
- Generated: 2026-05-31T10:20:45.560Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: ethereum
- Contract surface: 5 unique implementations (10 raw deployments)
- DeFi Llama TVL: $51,978,339.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Pulsechain is a blockchain network that provides cross-chain bridging infrastructure, enabling asset transfers between Ethereum and Pulsechain via omnibridge and arbitrary message bridge contracts.

### Architecture

The EternalStorageProxy contracts serve as upgradeable proxies for the core bridge contracts (ForeignOmnibridge, ForeignAMB, BridgeValidators), sharing a common upgradeability pattern and deployer cluster.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 10
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BridgeValidators | operational_periphery | ethereum | 2 deployments: ethereum [`0x2fa878...b0c95d`](./contracts/ethereum-1/0x2fa878ab3f87cc1c9737fc071108f904c0b0c95d/); ethereum `0x95b303...0790ab` | ⚠️ Unaudited |
| ForeignAMB | unknown | ethereum | 2 deployments: ethereum [`0xd0764f...d5636c`](./contracts/ethereum-1/0xd0764fae29e0a6a96ff685f71cfc685456d5636c/); ethereum `0xe98699...b02467` | ⚠️ Unaudited |
| ForeignOmnibridge | operational_periphery | ethereum | 4 deployments: ethereum [`0x1715a3...eba10d`](./contracts/ethereum-1/0x1715a3e4a142d8b698131108995174f37aeba10d/); ethereum `0xb7df1e...46b873`; ethereum `0xb825fd...fae276`; ethereum `0xe20e33...f468bf` | ⚠️ Unaudited |
| WETHOmnibridgeRouter | operational_periphery | ethereum | [`0x8ac4ae...350f55`](./contracts/ethereum-1/0x8ac4ae65b3656e26dc4e0e69108b392283350f55/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0xf868da...a28499` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2fa878...b0c95d`](./contracts/ethereum-1/0x2fa878ab3f87cc1c9737fc071108f904c0b0c95d/) | BridgeValidators | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0764f...d5636c`](./contracts/ethereum-1/0xd0764fae29e0a6a96ff685f71cfc685456d5636c/) | ForeignAMB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ac4ae...350f55`](./contracts/ethereum-1/0x8ac4ae65b3656e26dc4e0e69108b392283350f55/) | WETHOmnibridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
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
