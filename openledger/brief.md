# Agentic Audit Brief: OpenLedger

## Project Overview

- Project: OpenLedger (`openledger`)
- Website: [https://www.openledger.xyz/](https://www.openledger.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:39.073Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: bsc, ethereum
- Contract surface: 2 unique implementations (8 raw deployments)
- DeFi Llama TVL: $80,859.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 8
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bank | unknown | ethereum | n/a | 7 deployments: ethereum [`0x184eb0...42f6b9`](./contracts/ethereum-1/0x184eb0c0e7ee0787caeb427648626aff9342f6b9/); ethereum `0x57174a...8be718`; ethereum `0x6eca34...3b0db1`; ethereum `0xa6d416...8561b7`; ethereum `0xadb85b...79ed85`; ethereum `0xb0182c...7f15c4`; ethereum `0xd12a27...fdb143` | ⚠️ Unaudited |
| OmnichainOpen | unknown | bsc | n/a | [`0xa227cc...739447`](./contracts/bsc-56/0xa227cc36938f0c9e09ce0e64dfab226cad739447/) | ⚠️ Unaudited |

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
| [OpenLedger-OPEN-Final-Report.pdf](https://github.com/openledger-dev/openledger/blob/master/audit/OpenLedger-OPEN-Final-Report.pdf) | unknown | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x184eb0...42f6b9`](./contracts/ethereum-1/0x184eb0c0e7ee0787caeb427648626aff9342f6b9/) | Bank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa227cc...739447`](./contracts/bsc-56/0xa227cc36938f0c9e09ce0e64dfab226cad739447/) | OmnichainOpen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
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

- [13617] OpenLedger-OPEN-Final-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
