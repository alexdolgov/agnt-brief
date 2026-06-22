# Agentic Audit Brief: Buffaloswap

⚠️ Lifecycle status: UNKNOWN - TVL dropped 8.4% over 90 days

## Project Overview

- Project: Buffaloswap (`buffaloswap`)
- Lifecycle: unknown (Tier 0, 53.8% below peak)
- Generated: 2026-06-19T22:59:51.050Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $14,253.28
- On-chain TVL (included contracts): $9,168.29
- TVL by chain: Bsc $9,168.29

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 1/3.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $9,168.29
- Latest audit: 2021-08 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $9,168.29 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BuffaloToken | token | bsc | n/a | [`0x10a49f...e77ea5`](./contracts/bsc-56/0x10a49f1fc8c604ea7f1c49bcc6ab2a8e58e77ea5/) | ⚠️ Unaudited |

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
| [SmartContract_Audit_Solidproof_BuffaloToken.pdf](https://github.com/solidproof/smart-contract-audits/blob/main/SmartContract_Audit_Solidproof_BuffaloToken.pdf) | unknown | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x10a49f...e77ea5`](./contracts/bsc-56/0x10a49f1fc8c604ea7f1c49bcc6ab2a8e58e77ea5/) | BuffaloToken | token | $9,168.29 | Verified native implementation with $9,168.29 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

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

- [12861] SmartContract_Audit_Solidproof_BuffaloToken.pdf

Fork inheritance lineage and inherited audits are included when available.
