# Agentic Audit Brief: WisdomTree

## Project Overview

- Project: WisdomTree (`wisdomtree`)
- Website: [https://www.wisdomtreeprime.com/](https://www.wisdomtreeprime.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.247Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $728,449,142.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 5 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 5 contract(s).

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Beacon | unknown | ethereum | n/a | [`0x10fe70...fb53fa`](./contracts/ethereum-1/0x10fe70382576f271caef5c152266fb458efb53fa/) | ⚠️ Unaudited |
| ERC721SoulboundToken | unknown | ethereum | n/a | [`0x2a33ae...f616bc`](./contracts/ethereum-1/0x2a33ae49f96b8982023f8381b57c1f2658f616bc/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x2e5f7d...2b3a32`](./contracts/ethereum-1/0x2e5f7dbed4aa799b13c737992562b7e8742b3a32/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x3aa663...51736e`](./contracts/ethereum-1/0x3aa66362b62712f281a00e3d1f72b7b5b851736e/) | ⚠️ Unaudited |
| WhitelistComplianceOracle | unknown | ethereum | n/a | [`0x285d32...360a06`](./contracts/ethereum-1/0x285d3256f0bbe7b69b511f75ce7a88f03d360a06/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x10fe70...fb53fa`](./contracts/ethereum-1/0x10fe70382576f271caef5c152266fb458efb53fa/) | Beacon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a33ae...f616bc`](./contracts/ethereum-1/0x2a33ae49f96b8982023f8381b57c1f2658f616bc/) | ERC721SoulboundToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x285d32...360a06`](./contracts/ethereum-1/0x285d3256f0bbe7b69b511f75ce7a88f03d360a06/) | WhitelistComplianceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
