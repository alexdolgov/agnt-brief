# Agentic Audit Brief: Etherfuse

⚠️ Lifecycle status: DECLINING - TVL dropped 81.0% over 90 days

## Project Overview

- Project: Etherfuse (`etherfuse`)
- Website: [https://www.etherfuse.com/](https://www.etherfuse.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-31T07:59:31.185Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: base, polygon
- Contract surface: 25 unique implementations (58 raw deployments)
- DeFi Llama TVL: $5,405,525.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Etherfuse is a protocol for tokenizing real-world assets (RWA) on-chain, enabling users to access and trade traditional financial instruments like bonds and securities in a decentralized manner.

### Architecture

All contracts belong to a single product family, with proxy contracts pointing to various implementation contracts that likely handle token logic, asset backing, and compliance. The proxies share common upgradeability patterns and are deployed across multiple chains, indicating a unified but modular architecture.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 1
- Unverified implementations: 20
- Unique implementations: 25
- Raw deployments: 58
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CbBTCOFTUpgradeable | unknown | base | [`0x9ad509...2020e8`](./contracts/base-8453/0x9ad50946f11e5e315c71abba2742c23b302020e8/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | proxy | base | 6 deployments: polygon `0xc2c1f8...a3fe31`; polygon `0xe56cee...320f95`; base [`0x0f9b04...79bd06`](./contracts/base-8453/0x0f9b0468391cfa83160dae6b693df87df379bd06/); base `0x0ff2cb...1fd03a`; base `0x79b3c8...f089bc`; base `0xc2c1f8...a3fe31` | ⚠️ Unaudited |
| ProxyAdmin | governance | polygon | 18 deployments: polygon [`0x0f9b04...79bd06`](./contracts/polygon-137/0x0f9b0468391cfa83160dae6b693df87df379bd06/); polygon `0x322922...082ca8`; polygon `0x46802b...13e63b`; polygon `0x48ead7...bb17e1`; polygon `0x7cee47...71a9b2`; polygon `0xb43c95...544b3d`; polygon `0xc75dfe...72bf08`; polygon `0xed27d5...06eec5`; base `0x322922...082ca8`; base `0x3de700...f27424`; base `0x46802b...13e63b`; base `0x48ead7...bb17e1`; base `0x699908...6c7cbc`; base `0xb43c95...544b3d`; base `0xbd6097...e10c2f`; base `0xd660bb...5acfcb`; base `0xed27d5...06eec5`; base `0xfbb5be...381d2b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | 8 deployments: polygon [`0x46080f...6867f9`](./contracts/polygon-137/0x46080f31351a6568f44575e3effde7f0c86867f9/); polygon `0x834df4...15512f`; polygon `0xc62218...2c526d`; polygon `0xd574b1...7c8098`; base [`0x46080f...6867f9`](./contracts/base-8453/0x46080f31351a6568f44575e3effde7f0c86867f9/); base `0x7cee47...71a9b2`; base `0x834df4...15512f`; base `0xc62218...2c526d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StablebondOFTUpgradeable | unknown | polygon | 5 deployments: polygon [`0x43d59d...a4aa1d`](./contracts/polygon-137/0x43d59d6d5a88787822c233b6f34db81eaca4aa1d/); polygon `0x7fe752...8dbd35`; polygon `0x9ad509...2020e8`; polygon `0xd660bb...5acfcb`; base `0xc75dfe...72bf08` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | polygon | `0x067fd8...d64874` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x52f044...bfe706` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8643d4...e2490a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9b307d...fb6838` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9ee996...87b256` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbc5c49...c4598d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd274dc...66fe32` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfbb5be...381d2b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x009f16...3eb5b8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x43d59d...a4aa1d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x464cd6...0a1f44` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x52f044...bfe706` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7108b2...4e5d95` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7fe752...8dbd35` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8596da...2febc0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb6a3b6...29f0b0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc0a154...75c8e3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc36ade...af4ea9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd2acc4...71b678` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf14d94...a53e18` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x9ad509...2020e8`](./contracts/base-8453/0x9ad50946f11e5e315c71abba2742c23b302020e8/) | CbBTCOFTUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x43d59d...a4aa1d`](./contracts/polygon-137/0x43d59d6d5a88787822c233b6f34db81eaca4aa1d/) | StablebondOFTUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x46080f...6867f9`](./contracts/polygon-137/0x46080f31351a6568f44575e3effde7f0c86867f9/) | TransparentUpgradeableProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
