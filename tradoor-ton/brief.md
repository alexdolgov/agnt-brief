# Agentic Audit Brief: Tradoor TON

## Project Overview

- Project: Tradoor TON (`tradoor-ton`)
- Website: [https://tradoor.io](https://tradoor.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.393Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: bsc
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $595,833.11
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

- Coverage of deployed-live implementations: 2/3 (66.7%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ScaleBit | Tier 2 | 2 | 66.7% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | unknown | bsc | n/a | [`0x0bf3bc...290b47`](./contracts/bsc-56/0x0bf3bcf21dac3c97dea1815732b4f41bcc290b47/) | ✅ Audited |
| TokenVesting | unknown | bsc | n/a | [`0x010e2f...6a18bf`](./contracts/bsc-56/0x010e2f2a34cfc5c206e9283e356b3f586e6a18bf/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TokenStaking | unknown | bsc | n/a | [`0x30f135...5d21c0`](./contracts/bsc-56/0x30f135c4cfd9ba241803ce4e6a3f1f9f295d21c0/) | ⚠️ Unaudited |

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
| [v.1.0 Protocol Report](https://www.tonbit.xyz/reports/Tradoor-Smart-Contract-Audit-Report-Summary.pdf) | TonBit | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [v3.0 Protocol Report](https://github.com/Zellic/publications/blob/master/Tradoor%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [v.1.0 Report](https://scalebit.xyz/reports/20250902-Tradoor-BSC-Vesting-Final-Audit-Report.pdf) | ScaleBit | Audit | 2025-08 | fresh | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x30f135...5d21c0`](./contracts/bsc-56/0x30f135c4cfd9ba241803ce4e6a3f1f9f295d21c0/) | TokenStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [24526] v.1.0 Protocol Report
- [24527] v3.0 Protocol Report

Fork inheritance lineage and inherited audits are included when available.
