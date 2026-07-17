# Agentic Audit Brief: VenomBridge

## Project Overview

- Project: VenomBridge (`venombridge`)
- Website: [https://venombridge.com](https://venombridge.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.886Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: avalanche, bsc, ethereum, polygon
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $814,961.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 1 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (4 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 4 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Diamond | unknown | ethereum | n/a | [`0x4ab740157721105ae503fbad756a578171512525`](./contracts/ethereum-1/0x4ab740157721105ae503fbad756a578171512525/) | ⚠️ Unaudited |
| Diamond | unknown | bsc | n/a | [`0x4ab740157721105ae503fbad756a578171512525`](./contracts/bsc-56/0x4ab740157721105ae503fbad756a578171512525/) | ⚠️ Unaudited |
| Diamond | unknown | polygon | n/a | [`0x4ab740157721105ae503fbad756a578171512525`](./contracts/polygon-137/0x4ab740157721105ae503fbad756a578171512525/) | ⚠️ Unaudited |
| MultiVaultToken | core_logic | ethereum | n/a | [`0x46f84dc6564cdd93922f7bfb88b03d35308d87c9`](./contracts/ethereum-1/0x46f84dc6564cdd93922f7bfb88b03d35308d87c9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x0bc8c8212c0c74773671c4badb18999c2b07f3c6) | proxy | avalanche | n/a | `0x4ab740157721105ae503fbad756a578171512525` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/venom-bridge](https://skynet.certik.com/projects/venom-bridge) | CertiK | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4ab740157721105ae503fbad756a578171512525`](./contracts/ethereum-1/0x4ab740157721105ae503fbad756a578171512525/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ab740157721105ae503fbad756a578171512525`](./contracts/bsc-56/0x4ab740157721105ae503fbad756a578171512525/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4ab740157721105ae503fbad756a578171512525`](./contracts/polygon-137/0x4ab740157721105ae503fbad756a578171512525/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46f84dc6564cdd93922f7bfb88b03d35308d87c9`](./contracts/ethereum-1/0x46f84dc6564cdd93922f7bfb88b03d35308d87c9/) | MultiVaultToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3237] skynet.certik.com/projects/venom-bridge

Fork inheritance lineage and inherited audits are included when available.
