# Agentic Audit Brief: Shift Protocol

⚠️ Lifecycle status: UNKNOWN - TVL dropped 65.9% over 90 days

## Project Overview

- Project: Shift Protocol (`shift-protocol`)
- Website: [https://shiftprotocol.xyz](https://shiftprotocol.xyz)
- Lifecycle: unknown (Tier 0, 67.7% below peak)
- Generated: 2026-06-21T15:36:56.678Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base
- Contract surface: 5 unique implementations (17 raw deployments)
- DeFi Llama TVL: $842,238.41
- On-chain TVL (included contracts): $45,400.77
- TVL by chain: Base $45,400.77

## Project Description

Shift Protocol is an onchain capital allocator that deploys user deposits into yield-generating strategies. It operates vaults on Base and Arbitrum One to automate and optimize DeFi yield.

### Architecture

All contracts are ShiftVault instances forming a single product family with no separate supporting contracts identified. They share a common deployer cluster and likely reuse the same core logic across chains.

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 5; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/5 (60.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 17
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 60.0% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ShiftVault | core_logic | base | n/a | 7 deployments: base [`0x4ce3ec...1aa2e1`](./contracts/base-8453/0x4ce3ec1b7b4ffb33a0b70c64a0560a3f341aa2e1/); base `0x89d63c...8a36b0`; base `0x8d8d46...872327`; base `0xaf69bf...ed1e0e`; arbitrum `0x6d7c89...7ae3c2`; arbitrum `0x7174f0...0a10bd`; arbitrum `0x956bdd...cb6964` | ✅ Audited |
| ShiftAccessControl | governance | base | n/a | 4 deployments: base [`0x092b55...d3132e`](./contracts/base-8453/0x092b558d933f069c7145c0ef4ad4c966e5d3132e/); base `0x35305e...a61ce6`; base `0x3ccc08...dc2773`; base `0x52dc22...326b56` | ✅ Audited |
| ShiftTvlFeed | unknown | base | n/a | 4 deployments: base [`0x505171...9e6285`](./contracts/base-8453/0x5051713489d8128f8fd7c96362616fe5e29e6285/); base `0x619681...40f19b`; base `0x8a04ac...b9f110`; base `0xdbe599...ff67d3` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ShiftMonoData | unknown | base | n/a | [`0x5457ea...bea196`](./contracts/base-8453/0x5457ead979d04598d6d16eff13b60d15bebea196/) | ⚠️ Unaudited |
| SupplyValidator | unknown | base | n/a | [`0x446a68...5f97be`](./contracts/base-8453/0x446a687552d337804f9efd63656beef09f5f97be/) | ⚠️ Unaudited |

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
| [shift-sbsecurity-audit-2025.pdf](https://github.com/SHIFT-NebulaLabs/shift-contracts/blob/main/audits/shift-sbsecurity-audit-2025.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | 15 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x5457ea...bea196`](./contracts/base-8453/0x5457ead979d04598d6d16eff13b60d15bebea196/) | ShiftMonoData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x446a68...5f97be`](./contracts/base-8453/0x446a687552d337804f9efd63656beef09f5f97be/) | SupplyValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=15

Fork inheritance lineage and inherited audits are included when available.
