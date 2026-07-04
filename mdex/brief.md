# Agentic Audit Brief: MDEX

## Project Overview

- Project: MDEX (`mdex`)
- Website: [https://mdex.com/](https://mdex.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.546Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: bsc, heco
- Contract surface: 11 unique implementations (13 raw deployments)
- DeFi Llama TVL: $1,241,591.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 7 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 13 (7 live, 6 unknown).
- Excluded by liveness: 11 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/5 (80.0%)
- Deployed-live implementations: 5 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/5
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 11
- Raw deployments: 13
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 80.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 4 | 80.0% | 2021-03 |
| CertiK | Tier 2 | 3 | 60.0% | 2021-04 |
| Fairyproof | Tier 2 | 2 | 40.0% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MdexFactory | registry | bsc | n/a | [`0x3cd1c4...8062b8`](./contracts/bsc-56/0x3cd1c46068daea5ebb0d3f55f6915b10648062b8/) | ✅ Audited |
| MdexRouter | adapter | bsc | n/a | 3 deployments: bsc [`0x0384e9...bc4333`](./contracts/bsc-56/0x0384e9ad329396c3a6a401243ca71633b2bc4333/); bsc `0x62c1a0...b87059`; bsc `0x7dae51...af1ba8` | ✅ Audited |
| MdxToken | token | bsc | n/a | [`0x9c65ab...e3a739`](./contracts/bsc-56/0x9c65ab58d8d978db963e63f2bfb7121627e3a739/) | ✅ Audited |
| SwapMining | unknown | bsc | n/a | [`0x782395...b44c11`](./contracts/bsc-56/0x782395303692abed877d2737aa7982345eb44c11/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BSCPool | core_logic | bsc | n/a | [`0xc48fe2...728a50`](./contracts/bsc-56/0xc48fe252aa631017df253578b1405ea399728a50/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x9458f7...abef8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba6f7d...3392d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd21cd...570f5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6cd59...158047` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa2eeb...21214f` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xb0b670...22d941` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [slowmist_bsc.pdf](https://mdex.com/slowmist_bsc.pdf) | SlowMist | Audit | 2021-03 | stale | Direct | contract_name | 4 | n/a |
| [fairyproof_bsc.pdf](https://mdex.com/fairyproof_bsc.pdf) | Fairyproof | Audit | 2021-04 | stale | Direct | contract_name | 2 | n/a |
| [certik_bsc.pdf](https://mdex.com/certik_bsc.pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xc48fe2...728a50`](./contracts/bsc-56/0xc48fe252aa631017df253578b1405ea399728a50/) | BSCPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=9

Fork inheritance lineage and inherited audits are included when available.
