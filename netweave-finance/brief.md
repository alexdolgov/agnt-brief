# Agentic Audit Brief: NetWeave Finance

⚠️ Lifecycle status: DEAD - TVL dropped 99.9% over 90 days

## Project Overview

- Project: NetWeave Finance (`netweave-finance`)
- Website: [https://www.netweave.finance](https://www.netweave.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T22:46:12.821Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: mode
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $12,289.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NetWeave Finance is a lending and yield protocol on Mode that enables users to deposit assets into vaults to earn yield and access lending markets. It uses tokenized representations of deposits to facilitate composability and efficient capital allocation.

### Architecture

The unnamed contract likely serves as the vault logic, interacting with the Token contract to mint and burn shares upon deposit and withdrawal. No other families or shared infrastructure are evident from the provided contract surface.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Unverified dependencies: 3/3.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
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
| TimelockController | governance | mode | n/a | [`0x31e2d6...022d16`](./contracts/mode-34443/0x31e2d664bca7e5a6502a0be25d90a3bfb1022d16/) | ⚠️ Unaudited |
| Token | token | mode | n/a | [`0x0fa000...b53a90`](./contracts/mode-34443/0x0fa000cf4018e7a5069437a06f73120db0b53a90/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | mode | n/a | `0x5ca8c2...6e7523` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x755a59...41ce49` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [NetWeave Smart Contracts Audit Report - QuillAudits.pdf](https://github.com/Quillhash/QuillAudit_Reports/blob/master/NetWeave%20Smart%20Contracts%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mode | [`0x0fa000...b53a90`](./contracts/mode-34443/0x0fa000cf4018e7a5069437a06f73120db0b53a90/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13558] NetWeave Smart Contracts Audit Report - QuillAudits.pdf

Fork inheritance lineage and inherited audits are included when available.
