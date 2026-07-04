# Agentic Audit Brief: Scallop

## Project Overview

- Project: Scallop (`scallop`)
- Website: [https://app.scallop.io/referral?ref=692ecd3798f63b5f44c040f9](https://app.scallop.io/referral?ref=692ecd3798f63b5f44c040f9)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:54.628Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum
- Contract surface: 26 unique implementations (26 raw deployments)
- DeFi Llama TVL: $23,073,137.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Scallop is a DeFi money market on Sui focused on lending and borrowing. It enables users to supply assets to pooled markets and borrow supported assets against collateral.

### Architecture

No relationship narrative (skeletal or single-family surface).

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 26 (0 live, 26 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 26 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 26
- Unique implementations: 26
- Raw deployments: 26
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 2 stale, 1 unknown
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

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x00671b...2c5d9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07871c...604527` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09689d...d92196` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1318fd...1b0a65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1478a4...fdb375` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x200abe...f688fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x590a40...2a9548` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ca174...3a00d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67540c...f78a2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x779b5c...4697ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80ca57...dce908` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x854950...642e93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a2376...32ca43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa75797...315d70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaac1fd...a95b97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaafc4f...087052` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad013d...c32b79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad4d71...67dbf2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb14f82...36bcce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd4f1a...504242` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca5a5a...87f325` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1a1cc...e20535` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6e5a0...cd4d34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea346c...bbb3aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb7a05...91d1ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefe8b3...803521` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/-M_cZOX56Trwl8x8qGSm/uploads/ML3TtKSS9XEW6WOc9Fv2/Scallop Smart Contract Audit Report.pdf](https://496184472-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-M_cZOX56Trwl8x8qGSm%2Fuploads%2FML3TtKSS9XEW6WOc9Fv2%2FScallop%20Smart%20Contract%20Audit%20Report.pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [spaces/-M_cZOX56Trwl8x8qGSm/uploads/qKB9NYW44A6be3a6TiT0/Scallop_Audit.pdf](https://496184472-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-M_cZOX56Trwl8x8qGSm%2Fuploads%2FqKB9NYW44A6be3a6TiT0%2FScallop_Audit.pdf) | unknown | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [spaces/-M_cZOX56Trwl8x8qGSm/uploads/JuBrRTdiahwciNZclaiq/Scallop - Zellic Audit Report.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-M_cZOX56Trwl8x8qGSm%2Fuploads%2FJuBrRTdiahwciNZclaiq%2FScallop%20-%20Zellic%20Audit%20Report.pdf?alt=media) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/-M_cZOX56Trwl8x8qGSm/uploads/dIYt2iklAVbPJGceFTT9/scallop-audit-2025-12-02.pdf](https://2786784229-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-M_cZOX56Trwl8x8qGSm%2Fuploads%2FdIYt2iklAVbPJGceFTT9%2Fscallop-audit-2025-12-02.pdf) | unknown | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [4276] spaces/-M_cZOX56Trwl8x8qGSm/uploads/ML3TtKSS9XEW6WOc9Fv2/Scallop Smart Contract Audit Report.pdf
- [4277] spaces/-M_cZOX56Trwl8x8qGSm/uploads/qKB9NYW44A6be3a6TiT0/Scallop_Audit.pdf
- [4278] spaces/-M_cZOX56Trwl8x8qGSm/uploads/JuBrRTdiahwciNZclaiq/Scallop - Zellic Audit Report.pdf
- [4279] spaces/-M_cZOX56Trwl8x8qGSm/uploads/dIYt2iklAVbPJGceFTT9/scallop-audit-2025-12-02.pdf

Fork inheritance lineage and inherited audits are included when available.
