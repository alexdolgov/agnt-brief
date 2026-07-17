# Agentic Audit Brief: Cyberperp

## Project Overview

- Project: Cyberperp (`cyberperp`)
- Website: [https://www.cyberperp.io/](https://www.cyberperp.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.697Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: arbitrum, ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $23,059.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Contract surface contains 0 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

### Architecture

No relationship narrative (skeletal or single-family surface).

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (0 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x35c301df78a6ed459931f56fba6cb2ad71be606b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x35c301df78a6ed459931f56fba6cb2ad71be606b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaf624fe1a1c023d498dafcfbca1b2557590fc0db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbc51e6807f31c3e4e21df7fb8e4f94a500d27e8b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc3c0a28d85e1bea53a84970237ca8993d89a1fd0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CyberPerp Contracts Audit Report - QuillAudits.pdf](https://cyberperp.io/CyberPerp%20Contracts%20Audit%20Report%20-%20QuillAudits.pdf?url) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12975] CyberPerp Contracts Audit Report - QuillAudits.pdf

Fork inheritance lineage and inherited audits are included when available.
