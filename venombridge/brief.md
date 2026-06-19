# Agentic Audit Brief: VenomBridge

⚠️ Lifecycle status: DECLINING - TVL dropped 63.8% over 90 days

## Project Overview

- Project: VenomBridge (`venombridge`)
- Website: [https://venombridge.com](https://venombridge.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T06:14:50.896Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: avalanche, bsc, ethereum, polygon
- Contract surface: 4 unique implementations (5 raw deployments)
- DeFi Llama TVL: $860,403.09
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

VenomBridge is a cross-chain bridge protocol enabling asset transfers between Ethereum and the Venom network. It uses a proxy-based upgradeable contract architecture to manage token locking and minting across chains.

### Architecture

The TransparentUpgradeableProxy delegates to the Diamond implementation, which likely contains the core bridge logic and interacts with the MultiVaultToken for token management.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 1
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 5
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Diamond | unknown | bsc | unit-39256 | [`0x4ab740...512525`](./contracts/bsc-56/0x4ab740157721105ae503fbad756a578171512525/) | ⚠️ Unaudited |
| Diamond | unknown | polygon | unit-39257 | [`0x4ab740...512525`](./contracts/polygon-137/0x4ab740157721105ae503fbad756a578171512525/) | ⚠️ Unaudited |
| MultiVaultToken | core_logic | ethereum | n/a | [`0x46f84d...8d87c9`](./contracts/ethereum-1/0x46f84dc6564cdd93922f7bfb88b03d35308d87c9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Diamond | unknown | ethereum | unit-39255 | 2 deployments: ethereum [`0x4ab740...512525`](./contracts/ethereum-1/0x4ab740157721105ae503fbad756a578171512525/); avalanche [`0x4ab740...512525`](./contracts/avalanche-43114/0x4ab740157721105ae503fbad756a578171512525/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/venom-bridge) | CertiK | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x46f84d...8d87c9`](./contracts/ethereum-1/0x46f84dc6564cdd93922f7bfb88b03d35308d87c9/) | MultiVaultToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3237] DL audit link

Fork inheritance lineage and inherited audits are included when available.
