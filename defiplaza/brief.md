# Agentic Audit Brief: DefiPlaza

## Project Overview

- Project: DefiPlaza (`defiplaza`)
- Website: [https://defiplaza.net/](https://defiplaza.net/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.880Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum
- Contract surface: 18 unique implementations (21 raw deployments)
- DeFi Llama TVL: $105,356.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 7 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 27; live-surface contracts included: 21 (6 live, 15 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/3 (66.7%)
- Deployed-live implementations: 3 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 18
- Raw deployments: 21
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pessimistic | Tier 2 | 1 | 33.3% | 2023-11 |
| unknown | Tier 2 | 1 | 33.3% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DeFiPlaza | unknown | ethereum | n/a | 3 deployments: ethereum [`0x134fc6...8e36c2`](./contracts/ethereum-1/0x134fc6beb54e710e30b21e52fb86ffed0c8e36c2/); ethereum `0x2cb761...4b2496`; ethereum `0xe68c1d...514110` | ✅ Audited |
| StablePlaza | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3a2b8c...b7e694`](./contracts/ethereum-1/0x3a2b8cc91af8bf45f3ec61e779ee1c2ba6b7e694/); ethereum `0x874b5d...c6d83e` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DFPgov | unknown | ethereum | n/a | [`0x2f5743...1b8e6d`](./contracts/ethereum-1/0x2f57430a6ceda85a67121757785877b4a71b8e6d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x107fee...573f85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18ad2c...b7441c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x271999...cd6b32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f48a8...968e9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x420d69...56af5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x633216...2fd9e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x644816...96d2a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x678eb8...362b05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76443d...ce798c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad8075...a2b784` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2cf53...98d0bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd08fed...53cf15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb95a0...10d4c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe23d09...1598ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd30b0...0ad760` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DeFi Plaza Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/DeFi%20Plaza%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 3 | high |
| [StablePlaza Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/StablePlaza%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2022-07 | stale | Direct | contract_name | 2 | medium |
| [DefiPlaza Radix Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/b886ee548241bc8066843ab110287058ff33ba4f/DefiPlaza%20Radix%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [251125_radixplaza_mathematical-verification.pdf](https://github.com/OmegaSyndicate/RadixPlaza/blob/e6f9f6bd06bfdc3d1ed40f3ae921104197e43531/docs/251125_radixplaza_mathematical-verification.pdf) | OmegaSyndicate | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2f5743...1b8e6d`](./contracts/ethereum-1/0x2f57430a6ceda85a67121757785877b4a71b8e6d/) | DFPgov | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: extraction_exact=5

Zero-match audit list:

- [13008] DefiPlaza Radix Security Analysis by Pessimistic.pdf
- [13009] 251125_radixplaza_mathematical-verification.pdf

Fork inheritance lineage and inherited audits are included when available.
