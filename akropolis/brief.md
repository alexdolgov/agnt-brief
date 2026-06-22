# Agentic Audit Brief: Akropolis

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Akropolis (`akropolis`)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-19T20:04:28.219Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $5,827.83
- On-chain TVL (included contracts): $81,792.98
- TVL by chain: Ethereum $81,792.98

## Project Description

Akropolis is a yield aggregation protocol that allows users to deposit stablecoins and other assets into various strategies (e.g., Curve, Aave, Compound) to earn optimized yields. It also includes staking and reward distribution mechanisms for its native AKRO token.

### Architecture

The protocol uses a modular architecture where vaults (VaultProtocol) interact with various protocol adapters (e.g., CurveFiProtocol, AaveProtocol, CompoundProtocol) to deposit user funds into external yield sources. Pool tokens represent user shares in these strategies, while staking and reward modules manage AKRO token incentives and distribution.

## Contract Surface Quality

- Indexed contracts: 76; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 57 inactive, 17 singleton, 0 uninitialized.
- Deployment units: 2/32 live.
- Detected codebases: none
- Unverified dependencies: 2/3.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $81,792.98
- Latest audit: 2021-11 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $81,792.98 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AkropolisToken | token | ethereum | unit-40057 | [`0x8ab740...c853d7`](./contracts/ethereum-1/0x8ab7404063ec4dbcfd4598215992dc3f8ec853d7/) | ⚠️ Unaudited |
| StakingPool | core_logic | ethereum | unit-40045 | [`0x3501ec...9b35d0`](./contracts/ethereum-1/0x3501ec11d205fa249f2c42f5470e137b529b35d0/) | ⚠️ Unaudited |

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
| [Xtropy-Audit.pdf](https://github.com/akropolisio/vortex/blob/development/audit/Xtropy-Audit.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8ab740...c853d7`](./contracts/ethereum-1/0x8ab7404063ec4dbcfd4598215992dc3f8ec853d7/) | AkropolisToken | token | $80,960.77 | Verified native implementation with $80,960.77 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3501ec...9b35d0`](./contracts/ethereum-1/0x3501ec11d205fa249f2c42f5470e137b529b35d0/) | StakingPool | core_logic | $832.21 | Verified native implementation with $832.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12630] Xtropy-Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
