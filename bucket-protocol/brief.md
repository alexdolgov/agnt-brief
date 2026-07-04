# Agentic Audit Brief: Bucket Protocol

## Project Overview

- Project: Bucket Protocol (`bucket-protocol`)
- Website: [https://bucketprotocol.io](https://bucketprotocol.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:09.936Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: ethereum
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $56,922,283.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bucket Protocol is a Sui-based DeFi protocol centered on collateralized debt positions and stablecoin borrowing/minting. Users can deposit collateral to mint/borrow the protocol stablecoin, with functionality including real-time liquidation and flash loans. Bucket Farm should be treated as a related DeFi product only where independently scoped, and unsupported claims about a shared native governance or reward token should be removed unless separately verified.

### Architecture

No relationship narrative (skeletal or single-family surface).

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (0 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0f51f9...1197f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x665188...568d08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x872d08...fdd987` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f835c...ef2643` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2ae66...af0e75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe14726...f5b550` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2ab9a...9dea7c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Bucket Interest Rate Audit Report.pdf](https://github.com/Bucket-Protocol/Audit/blob/main/BucketV1/Bucket%20Interest%20Rate%20Audit%20Report.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [MoveBit Audit 2024.01.10.pdf](https://github.com/Bucket-Protocol/Audit/blob/main/BucketV1/MoveBit%20Audit%202024.01.10.pdf) | MoveBit | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [MoveBit.pdf](https://github.com/Bucket-Protocol/Audit/blob/main/BucketV1/MoveBit.pdf) | MoveBit | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [OtterSec.pdf](https://github.com/Bucket-Protocol/Audit/blob/main/BucketV1/OtterSec.pdf) | OtterSec | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [Hashlock_Bucket_V2_Report_Final_Report.pdf](https://github.com/Bucket-Protocol/Audit/blob/main/BucketV2/Hashlock_Bucket_V2_Report_Final_Report.pdf) | Hashlock | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Movebit_Bucket_V2_Report_Final_Report.pdf](https://github.com/Bucket-Protocol/Audit/blob/main/BucketV2/Movebit_Bucket_V2_Report_Final_Report.pdf) | Movebit | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Quantstamp_Bucket_V2_Final_Report.pdf](https://github.com/Bucket-Protocol/Audit/blob/main/BucketV2/Quantstamp_Bucket_V2_Final_Report.pdf) | Quantstamp | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [4663] Bucket Interest Rate Audit Report.pdf
- [4664] MoveBit Audit 2024.01.10.pdf
- [4665] MoveBit.pdf
- [4666] OtterSec.pdf
- [4667] Hashlock_Bucket_V2_Report_Final_Report.pdf
- [4668] Movebit_Bucket_V2_Report_Final_Report.pdf
- [4669] Quantstamp_Bucket_V2_Final_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
