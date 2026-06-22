# Agentic Audit Brief: Buttonwood

⚠️ Lifecycle status: DEAD - TVL dropped 53.4% over 90 days

## Project Overview

- Project: Buttonwood (`buttonwood`)
- Website: [https://www.button.finance](https://www.button.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T12:11:48.966Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: base, ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $380,494.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Buttonwood is a DeFi protocol that enables users to create and trade fixed-yield tranches and wrapped tokens. It provides infrastructure for issuing bonds with customizable parameters and for wrapping yield-bearing assets into standardized ERC-20 tokens.

### Architecture

Both families share a common deployer infrastructure and are deployed on the same chains, but operate independently. The Button Tranche family uses BondFactory registries to deploy bond contracts, while the Button Wrappers family uses ButtonTokenFactory registries to deploy wrapper tokens, with no direct on-chain dependency between them.

## Contract Surface Quality

- Indexed contracts: 111; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 107 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 24; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GenericButtonswapRouter | adapter | base | n/a | [`0xa6c9d0...ed2e2f`](./contracts/base-8453/0xa6c9d0cb8fff7a47db726ab8b31206dd69ed2e2f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x75376c...50b3fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0ba8b...d3142b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4a25f...657071` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Certik-2021-07-30.pdf](https://github.com/buttonwood-protocol/tranche/blob/main/audits/Certik-2021-07-30.pdf) | CertiK | Audit | 2021-07 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xa6c9d0...ed2e2f`](./contracts/base-8453/0xa6c9d0cb8fff7a47db726ab8b31206dd69ed2e2f/) | GenericButtonswapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=14

Zero-match audit list:

- [12877] Certik-2021-07-30.pdf

Fork inheritance lineage and inherited audits are included when available.
