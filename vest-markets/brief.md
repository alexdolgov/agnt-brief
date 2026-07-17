# Agentic Audit Brief: Vest Markets

## Project Overview

- Project: Vest Markets (`vest-markets`)
- Website: [https://alpha.vestmarkets.com](https://alpha.vestmarkets.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.927Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: arbitrum, bsc, zksync-era
- Contract surface: 5 unique implementations (8 raw deployments)
- DeFi Llama TVL: $543,132.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 4 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 32; live-surface contracts included: 6 (5 live, 1 unknown).
- Excluded by liveness: 26 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 4 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 8
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
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
| DevSrcBridge | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x032aca08c1be8fa4d4902cf8db011769d9e55ca8`](./contracts/arbitrum-42161/0x032aca08c1be8fa4d4902cf8db011769d9e55ca8/); arbitrum `0x0b3b31da21ca84068be498394c64ad8447495e14` | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | 2 deployments: bsc `0xca0d26a9c82d0b6133e624ce26f7d7d50ebe71cb`; arbitrum [`0x705aaffeccb370883531f09c64133d3abb6fa7f9`](./contracts/arbitrum-42161/0x705aaffeccb370883531f09c64133d3abb6fa7f9/) | ⚠️ Unaudited |
| SrcBridge | unknown | bsc | n/a | 2 deployments: bsc [`0xe54e9592c8292cb7d82cb8d3e4d0edc22e38a974`](./contracts/bsc-56/0xe54e9592c8292cb7d82cb8d3e4d0edc22e38a974/); bsc `0xef14da66876476c1a75dc057343b97b6bd372c41` | ⚠️ Unaudited |
| SrcBridge | operational_periphery | arbitrum | n/a | [`0x80c526d1c2fddadb3cd39810cd7a79e07b0eda00`](./contracts/arbitrum-42161/0x80c526d1c2fddadb3cd39810cd7a79e07b0eda00/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | zksync-era | n/a | `0xf0bcf4ede69e5cb0eb1c9e35b4d408a5e7fda56b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [vest_exchange_audit_final.pdf](https://2268699948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FdHHKjQl5eoFn10pjvodI%2Fuploads%2FKr3ixHKtNsbIwACcYYUo%2Fvest_exchange_audit_final.pdf) | OtterSec | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x032aca08c1be8fa4d4902cf8db011769d9e55ca8`](./contracts/arbitrum-42161/0x032aca08c1be8fa4d4902cf8db011769d9e55ca8/) | DevSrcBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe54e9592c8292cb7d82cb8d3e4d0edc22e38a974`](./contracts/bsc-56/0xe54e9592c8292cb7d82cb8d3e4d0edc22e38a974/) | SrcBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x80c526d1c2fddadb3cd39810cd7a79e07b0eda00`](./contracts/arbitrum-42161/0x80c526d1c2fddadb3cd39810cd7a79e07b0eda00/) | SrcBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [24539] vest_exchange_audit_final.pdf

Fork inheritance lineage and inherited audits are included when available.
