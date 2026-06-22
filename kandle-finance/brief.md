# Agentic Audit Brief: Kandle Finance

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Kandle Finance (`kandle-finance`)
- Website: [https://app.kandle.fi/](https://app.kandle.fi/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T11:23:14.490Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: arbitrum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $0.07
- On-chain TVL (included contracts): $0.07
- TVL by chain: Arbitrum $0.07

## Project Description

Kandle Finance is a yield protocol on Arbitrum One that offers fixed and variable yield vaults. Users can deposit assets to earn predictable fixed returns or optimized variable yields through automated strategies.

### Architecture

Both vaults are deployed by the same deployer and likely share common infrastructure such as access control and fee mechanisms, though no explicit supporting contracts are present in the inventory.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/2 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 2 | 100.0% | 2025-12 |
| unknown | Tier 2 | 2 | 100.0% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KandleYieldVault | core_logic | arbitrum | n/a | [`0x9a7f9c...9d3ecd`](./contracts/arbitrum-42161/0x9a7f9c48100cbacb431f19b8407f73bec39d3ecd/) | ✅ Audited |
| KandleFixedVault | core_logic | arbitrum | n/a | [`0xb9b6b1...bab594`](./contracts/arbitrum-42161/0xb9b6b1783ca230cc7effecbaa371502a9cbab594/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [DL audit link](https://wiki.kandle.fi/audits/kandlefi-verichain-audit.pdf) | unknown | Audit | 2025-12 | fresh | Direct | contract_name | 2 | high |
| [DL audit link](https://wiki.kandle.fi/audits/kandlefi-certik-audit.pdf) | CertiK | Audit | 2025-12 | fresh | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
