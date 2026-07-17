# Agentic Audit Brief: Hastra

## Project Overview

- Project: Hastra (`hastra`)
- Website: [https://hastra.io/](https://hastra.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.333Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum
- Contract surface: 3 unique implementations (5 raw deployments)
- DeFi Llama TVL: $407,592,146.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 13 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 5
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HastraAutoNavEngine | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3c331b892f193fcdbb9f9c2f227fe56c6169f443`](./contracts/ethereum-1/0x3c331b892f193fcdbb9f9c2f227fe56c6169f443/); ethereum `0x748d0731738e68c7e2d693ccae56c82fd7b14da3`; ethereum `0xd524523e56fce26eb427301aee6c82b66129bc75` | ⚠️ Unaudited |
| HastraNavEngine | unknown | ethereum | n/a | [`0x1376de100324d42337f1a2c08351d7242f30c3a7`](./contracts/ethereum-1/0x1376de100324d42337f1a2c08351d7242f30c3a7/) | ⚠️ Unaudited |
| HastraSMBNavEngine | unknown | ethereum | n/a | [`0x9fd0b0ef9fb4591a7c315bc19f0fb29a9edb019e`](./contracts/ethereum-1/0x9fd0b0ef9fb4591a7c315bc19f0fb29a9edb019e/) | ⚠️ Unaudited |

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
| [Hastra_vault-mint_&_vault-stake_Solana_Programs_Summary_Audit_Report.pdf](https://hastra.io/Hastra_vault-mint_&_vault-stake_Solana_Programs_Summary_Audit_Report.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3c331b892f193fcdbb9f9c2f227fe56c6169f443`](./contracts/ethereum-1/0x3c331b892f193fcdbb9f9c2f227fe56c6169f443/) | HastraAutoNavEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1376de100324d42337f1a2c08351d7242f30c3a7`](./contracts/ethereum-1/0x1376de100324d42337f1a2c08351d7242f30c3a7/) | HastraNavEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9fd0b0ef9fb4591a7c315bc19f0fb29a9edb019e`](./contracts/ethereum-1/0x9fd0b0ef9fb4591a7c315bc19f0fb29a9edb019e/) | HastraSMBNavEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
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

- [13220] Hastra_vault-mint_&_vault-stake_Solana_Programs_Summary_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
