# Agentic Audit Brief: OpenLedger

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: OpenLedger (`openledger`)
- Website: [https://www.openledger.xyz/](https://www.openledger.xyz/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-21T08:15:06.434Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: bsc, ethereum
- Contract surface: 2 unique implementations (8 raw deployments)
- DeFi Llama TVL: $104,034.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 8
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

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
