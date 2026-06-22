# Agentic Audit Brief: BSCStation

⚠️ Lifecycle status: DEAD - TVL dropped 17.0% over 90 days

## Project Overview

- Project: BSCStation (`bscstation`)
- Website: [https://defai.bscs.finance/](https://defai.bscs.finance/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T19:09:29.426Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $1,915.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

BSCStation is a decentralized exchange (DEX) protocol on BSC that enables users to trade tokens, provide liquidity, and earn yields through farming and staking mechanisms.

### Architecture

All contracts belong to a single product family, BSCStation, with no distinct sub-families identified. The supporting contract likely provides shared infrastructure such as access control or registry functions for the core contracts.

## Contract Surface Quality

- Indexed contracts: 465; live-surface contracts included: 22 (22 live, 0 unknown).
- Excluded by liveness: 443 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 15; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BSCSBSCSIDOPool | core_logic | bsc | n/a | [`0x0b8c29...45f6cd`](./contracts/bsc-56/0x0b8c29319e69fe053f27585da2f6f924e745f6cd/) | ⚠️ Unaudited |
| BSCSBSCSStartPool | core_logic | bsc | n/a | [`0x06ce5d...0739a6`](./contracts/bsc-56/0x06ce5d3f04856a514d51d6328a4e2378aa0739a6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x06b587...c288bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a6848...34fa8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3036f3...e7985e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3cfede...41936c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dba3b...4492d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60f38a...eda6fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d7c8a...576f80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x72a643...ab18c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7979e4...6711f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95f2df...91212b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3d040...48b092` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb801d8...2fe17a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbcb24a...b7f45d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbee54e...640ef7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcaf51d...2e34b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcff637...b0e991` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd67fd7...fbe12c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf785a...17505c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf06747...951ebb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf17897...9935f4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-BSCStationStartPools-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-BSCStationStartPools-v1.0.pdf) | PeckShield | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [BSCS Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Quillhash/Audit_Reports/blob/master/BSCS%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0b8c29...45f6cd`](./contracts/bsc-56/0x0b8c29319e69fe053f27585da2f6f924e745f6cd/) | BSCSBSCSIDOPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x06ce5d...0739a6`](./contracts/bsc-56/0x06ce5d3f04856a514d51d6328a4e2378aa0739a6/) | BSCSBSCSStartPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12859] PeckShield-Audit-Report-BSCStationStartPools-v1.0.pdf
- [12860] BSCS Smart Contract Audit Report - QuillAudits.pdf

Fork inheritance lineage and inherited audits are included when available.
