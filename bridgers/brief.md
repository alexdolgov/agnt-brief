# Agentic Audit Brief: Bridgers

## Project Overview

- Project: Bridgers (`bridgers`)
- Website: [https://bridgers.ai/](https://bridgers.ai/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:08.575Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: arbitrum, avalanche, base, berachain, blast, bsc, celo, ethereum, fantom, linea, mantle, opbnb, optimism, polygon, sonic, zksync-era
- Contract surface: 17 unique implementations (22 raw deployments)
- DeFi Llama TVL: $1,940,581.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 2 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (6 live, 16 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 17
- Raw deployments: 22
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| Bridgers | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0xb685760ebd368a891f27ae547391f4e2a289895b`](./contracts/ethereum-1/0xb685760ebd368a891f27ae547391f4e2a289895b/); optimism [`0xb685760ebd368a891f27ae547391f4e2a289895b`](./contracts/optimism-10/0xb685760ebd368a891f27ae547391f4e2a289895b/); bsc [`0xb685760ebd368a891f27ae547391f4e2a289895b`](./contracts/bsc-56/0xb685760ebd368a891f27ae547391f4e2a289895b/); polygon [`0xb685760ebd368a891f27ae547391f4e2a289895b`](./contracts/polygon-137/0xb685760ebd368a891f27ae547391f4e2a289895b/); arbitrum [`0xb685760ebd368a891f27ae547391f4e2a289895b`](./contracts/arbitrum-42161/0xb685760ebd368a891f27ae547391f4e2a289895b/) | ⚠️ Unaudited |
| WLD | unknown | ethereum | n/a | [`0x163f8c2467924be0ae7b5347228cabf260318753`](./contracts/ethereum-1/0x163f8c2467924be0ae7b5347228cabf260318753/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | sonic | n/a | `0x89a70b162be7dbc8b5e7579066fa58190c48d693` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x8f957ed3f969d7b6e5d6df81e61a5ff45f594dd1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 2 deployments: fantom `0x74b23882a30290451a17c44f4f05243b6b58c76d`; fantom `0xb685760ebd368a891f27ae547391f4e2a289895b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x2042ecdc71f9ffb2eb9cda7f801eccc5c6c8b7eb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd1088d3376c2384d469d1c0d55d503695e1be3e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa18968cc31232724f1dbd0d1e8d0b323d89f3501` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd1088d3376c2384d469d1c0d55d503695e1be3e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb685760ebd368a891f27ae547391f4e2a289895b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8159891dfe9de7fc3bf1b665eb1adda60f2acd0e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x62cd78991049e261266c208f011b23007bb97720` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x89a70b162be7dbc8b5e7579066fa58190c48d693` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd825f47eecb6ea992c97d226bdc789ce2b244f60` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xdf113ccac3566bcf7aaa195c754e8be9e07d91c0` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf1c930a6c26c2672e98a4170bb8148c9eadedc96` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd1088d3376c2384d469d1c0d55d503695e1be3e6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/bridgers](https://skynet.certik.com/projects/bridgers) | CertiK | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb685760ebd368a891f27ae547391f4e2a289895b`](./contracts/ethereum-1/0xb685760ebd368a891f27ae547391f4e2a289895b/) | Bridgers | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x163f8c2467924be0ae7b5347228cabf260318753`](./contracts/ethereum-1/0x163f8c2467924be0ae7b5347228cabf260318753/) | WLD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2918] skynet.certik.com/projects/bridgers

Fork inheritance lineage and inherited audits are included when available.
