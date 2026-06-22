# Agentic Audit Brief: Equito Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 11.1% over 90 days

## Project Overview

- Project: Equito Finance (`equito-finance`)
- Lifecycle: declining (Tier 0, 100% below peak)
- Generated: 2026-06-19T12:06:09.550Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $7.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 11 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PSYOP | unknown | ethereum | n/a | [`0xaa0781...3e4964`](./contracts/ethereum-1/0xaa07810ae08575921c476ff088bc949da43e4964/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/equito-finance) | CertiK | Audit | 2022-11 | stale | Direct | contract_name | 0 | n/a |
| [REP-final-20221216T155748Z.pdf](https://github.com/EquitoBridge/equito-algo-contracts-v1/blob/271bd7b7c6de956f7c567f5a6412a02853817725/audit/REP-final-20221216T155748Z.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | 0 | n/a |
| [REP-final-20221216T155626Z.pdf](https://github.com/EquitoBridge/equito-evm-contracts-v1/blob/main/audit/REP-final-20221216T155626Z.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xaa0781...3e4964`](./contracts/ethereum-1/0xaa07810ae08575921c476ff088bc949da43e4964/) | PSYOP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=14

Zero-match audit list:

- [13087] DL audit link
- [13088] REP-final-20221216T155748Z.pdf
- [13089] REP-final-20221216T155626Z.pdf

Fork inheritance lineage and inherited audits are included when available.
