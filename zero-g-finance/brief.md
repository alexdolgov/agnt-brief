# Agentic Audit Brief: Zero-G Finance

⚠️ Lifecycle status: UNKNOWN - TVL dropped 18.7% over 90 days

## Project Overview

- Project: Zero-G Finance (`zero-g-finance`)
- Lifecycle: unknown (Tier 0, 64.5% below peak)
- Generated: 2026-06-19T18:57:27.900Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $1,749.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 1 (0 live, 1 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| XERC20Lockbox | token | ethereum | unit-39837 | [`0x742b5c...ed3e1a`](./contracts/ethereum-1/0x742b5cb1a6a10e568a79d70ef77b542663ed3e1a/) | ⚠️ Unaudited |

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
| [DL audit link](https://2429366836-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4w8NVgxoxCW85tWNVjPS%2Fuploads%2FEf21cG5o3bztzaZqrW7M%2FZero-G%20Finance%20-%20Security%20Review%20-%20SBSecurity.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x742b5c...ed3e1a`](./contracts/ethereum-1/0x742b5cb1a6a10e568a79d70ef77b542663ed3e1a/) | XERC20Lockbox | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14171] DL audit link

Fork inheritance lineage and inherited audits are included when available.
