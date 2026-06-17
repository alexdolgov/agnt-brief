# Agentic Audit Brief: Etherfuse

## Project Overview

- Project: Etherfuse (`etherfuse`)
- Website: [https://www.etherfuse.com/](https://www.etherfuse.com/)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-17T07:00:52.102Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, polygon
- Contract surface: 10 unique implementations (31 raw deployments)
- DeFi Llama TVL: $654,426.22
- On-chain TVL (included contracts): $16,180.57
- TVL by chain: Base $16,180.57

## Project Description

Etherfuse is an RWA protocol focused on tokenized sovereign-bond products and related financial infrastructure, including Stablebonds, Sovereign Coins/FX, treasury-yield products, compliance/KYC onboarding, custodial arrangements, and attestations for on-chain settlement and access to sovereign asset exposure.

### Architecture

All contracts belong to a single product family, with proxy contracts pointing to various implementation contracts that likely handle token logic, asset backing, and compliance. The proxies share common upgradeability patterns and are deployed across multiple chains, indicating a unified but modular architecture.

## Contract Surface Quality

- Indexed contracts: 59; live-surface contracts included: 31 (0 live, 31 unknown).
- Excluded by liveness: 0 inactive, 28 singleton, 0 uninitialized.
- Deployment units: 0/15 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 1
- Unverified implementations: 6
- Unique implementations: 10
- Raw deployments: 31
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $16,180.57
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BraleToken | token | base | unit-31369 | [`0x269cae...30e0af`](./contracts/base-8453/0x269cae7dc59803e5c596c95756faeebb6030e0af/) | ⚠️ Unaudited |
| CbBTCOFTUpgradeable | unknown | base | n/a | [`0x9ad509...2020e8`](./contracts/base-8453/0x9ad50946f11e5e315c71abba2742c23b302020e8/) | ⚠️ Unaudited |
| ProxyAdmin | governance | polygon | n/a | 18 deployments: polygon [`0x0f9b04...79bd06`](./contracts/polygon-137/0x0f9b0468391cfa83160dae6b693df87df379bd06/); polygon `0x322922...082ca8`; polygon `0x46802b...13e63b`; polygon `0x48ead7...bb17e1`; polygon `0x7cee47...71a9b2`; polygon `0xb43c95...544b3d`; polygon `0xc75dfe...72bf08`; polygon `0xed27d5...06eec5`; base `0x322922...082ca8`; base `0x3de700...f27424`; base `0x46802b...13e63b`; base `0x48ead7...bb17e1`; base `0x699908...6c7cbc`; base `0xb43c95...544b3d`; base `0xbd6097...e10c2f`; base `0xd660bb...5acfcb`; base `0xed27d5...06eec5`; base `0xfbb5be...381d2b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StablebondOFTUpgradeable | unknown | polygon | n/a | 5 deployments: polygon [`0x43d59d...a4aa1d`](./contracts/polygon-137/0x43d59d6d5a88787822c233b6f34db81eaca4aa1d/); polygon `0x7fe752...8dbd35`; polygon `0x9ad509...2020e8`; polygon `0xd660bb...5acfcb`; base `0xc75dfe...72bf08` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x067fd8...d64874` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x52f044...bfe706` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43d59d...a4aa1d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52f044...bfe706` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8596da...2febc0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc0a154...75c8e3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x43d59d...a4aa1d`](./contracts/polygon-137/0x43d59d6d5a88787822c233b6f34db81eaca4aa1d/) | StablebondOFTUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
