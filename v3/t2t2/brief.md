# Agentic Audit Brief: T2T2

## Project Overview

- Project: T2T2 (`t2t2`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:59.422Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: base
- Contract surface: 17 unique implementations (17 raw deployments)
- DeFi Llama TVL: $7,509.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

SoFi. Structurally: 1 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 1 contract(s).

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 17 (1 live, 16 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| T2MultiverseSoulShares | unknown | base | n/a | [`0xe173a2...a895ec`](./contracts/base-8453/0xe173a25c522385bb117b3044c79f534cd0a895ec/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x030ca0...7c3c00` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x099cf2...aa9d96` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x24a42c...5ef162` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x322eb2...0f7d00` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x38c4c6...9bc422` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5781df...a196ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x73e594...b58223` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa39b6d...268bbc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3bbf7...4bf4af` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xade44a...9cc7fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc433d5...f9cec6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc5ef91...3c6ae6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd15b5e...ed48ec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe02cda...a3eb14` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec3df7...b51eb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf5633d...c87b8e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [20231104002C_en.pdf](https://sharkteam.org/report/audit/20231104002C_en.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13993] 20231104002C_en.pdf

Fork inheritance lineage and inherited audits are included when available.
