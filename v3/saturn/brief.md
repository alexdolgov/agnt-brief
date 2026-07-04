# Agentic Audit Brief: Saturn

## Project Overview

- Project: Saturn (`saturn`)
- Website: [https://app.saturn.credit/](https://app.saturn.credit/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:52.766Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $187,106,216.75
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

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 4 unknown
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
| ERC1967Proxy | unknown | ethereum | n/a | [`0xd16633...bd2df7`](./contracts/ethereum-1/0xd166337499e176bbc38a1fbd113ab144e5bd2df7/) | ⚠️ Unaudited |
| MToken | unknown | ethereum | n/a | [`0x866a2b...36be1b`](./contracts/ethereum-1/0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b/) | ⚠️ Unaudited |
| USDat | unknown | ethereum | n/a | [`0x23238f...5aaa71`](./contracts/ethereum-1/0x23238f20b894f29041f48d88ee91131c395aaa71/) | ⚠️ Unaudited |

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
| [spaces/aoxN2WzhSM74tsJUct0C/uploads/M1TsQVTqUghMuZSes4wu/Certora - Formal Verification.pdf](https://3131394583-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaoxN2WzhSM74tsJUct0C%2Fuploads%2FM1TsQVTqUghMuZSes4wu%2FCertora%20-%20Formal%20Verification.pdf) | Certora | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/aoxN2WzhSM74tsJUct0C/uploads/jP4Ej0FXvClHiADGwKLd/Certora - Audit #3.pdf](https://3131394583-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaoxN2WzhSM74tsJUct0C%2Fuploads%2FjP4Ej0FXvClHiADGwKLd%2FCertora%20-%20Audit%20%233.pdf) | Certora | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf](https://3131394583-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaoxN2WzhSM74tsJUct0C%2Fuploads%2FKNrnqGyTv1VPM2rbBIp0%2FCertora%20-%20Audit%20%232.pdf) | Certora | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/aoxN2WzhSM74tsJUct0C/uploads/PKsYColQZJy0e2AlTX7K/Three Sigma - Audit #1.pdf](https://3131394583-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaoxN2WzhSM74tsJUct0C%2Fuploads%2FPKsYColQZJy0e2AlTX7K%2FThree%20Sigma%20-%20Audit%20%231.pdf) | Three Sigma | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21181] spaces/aoxN2WzhSM74tsJUct0C/uploads/M1TsQVTqUghMuZSes4wu/Certora - Formal Verification.pdf
- [21182] spaces/aoxN2WzhSM74tsJUct0C/uploads/jP4Ej0FXvClHiADGwKLd/Certora - Audit #3.pdf
- [21183] spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf
- [21184] spaces/aoxN2WzhSM74tsJUct0C/uploads/PKsYColQZJy0e2AlTX7K/Three Sigma - Audit #1.pdf

Fork inheritance lineage and inherited audits are included when available.
