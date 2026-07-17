# Agentic Audit Brief: Mole

## Project Overview

- Project: Mole (`mole`)
- Website: [https://mole.fi](https://mole.fi)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:33.266Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: avalanche
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $8,623,461.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| ProxyAdmin | unknown | avalanche | n/a | [`0xa5ae02015e9108dc0aa42d71c1ec1fd4c0f895e4`](./contracts/avalanche-43114/0xa5ae02015e9108dc0aa42d71c1ec1fd4c0f895e4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | [`0x02ba08f6218e98ab849d5c8860195fed8cbc705e`](./contracts/avalanche-43114/0x02ba08f6218e98ab849d5c8860195fed8cbc705e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | [`0x316a587b6b0ff3ad2ec1215b252eeeaba4a84151`](./contracts/avalanche-43114/0x316a587b6b0ff3ad2ec1215b252eeeaba4a84151/) | ⚠️ Unaudited |

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
| [Mole-Aptos-Audit-Report.pdf](https://github.com/movebit/Sampled-Audit-Reports/blob/main/reports/Mole-Aptos-Audit-Report.pdf) | MoveBit | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
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

- [21298] Mole-Aptos-Audit-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
