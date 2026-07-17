# Agentic Audit Brief: T2T2

## Project Overview

- Project: T2T2 (`t2t2`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:00.677Z
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
| T2MultiverseSoulShares | unknown | base | n/a | [`0xe173a25c522385bb117b3044c79f534cd0a895ec`](./contracts/base-8453/0xe173a25c522385bb117b3044c79f534cd0a895ec/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | base | n/a | `0x030ca0c5226ce6ced8e1546df30bfbfa3b7c3c00` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x099cf2682bdc86c59405a1eb8d699aff7daa9d96` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x24a42c3e882b325ae6b45e126ffdbd0aea5ef162` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x322eb2629234be6622d41d79a24141632a0f7d00` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x38c4c6299c7e8acae3b7396d98641dba919bc422` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5781df1d9eb716146e494f60a41c2ffb7aa196ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x73e59409947336dc48b5924e257815e9e3b58223` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa39b6d446f558d744c3f498419ae2a1309268bbc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3bbf777df43fd3f190e07374bb4b0987c4bf4af` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xade44a1fed752f6124fe5b34cbe8547aa79cc7fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc433d513bac8b683a90b84e1d5d970985af9cec6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc5ef91d8c49159a3484c5ef466d6c5d8743c6ae6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd15b5e128b2cf2a8ecabdeb670ab1f76b8ed48ec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe02cdaa892a76d1159bccc0dbfbecb18e0a3eb14` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec3df73e710d1265a8979eec4bf5a86576b51eb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf5633d5c3151c6038764d64a80e0d58cfec87b8e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [20231104002C_en.pdf](https://sharkteam.org/report/audit/20231104002C_en.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xe173a25c522385bb117b3044c79f534cd0a895ec`](./contracts/base-8453/0xe173a25c522385bb117b3044c79f534cd0a895ec/) | T2MultiverseSoulShares | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 16 |

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
