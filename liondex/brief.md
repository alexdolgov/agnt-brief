# Agentic Audit Brief: LionDEX

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: LionDEX (`liondex`)
- Website: [https://liondex.com](https://liondex.com)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T11:26:37.159Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: arbitrum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $0.38
- On-chain TVL (included contracts): $10,071,860.00
- TVL by chain: Arbitrum $10,071,860.00

## Project Description

LionDEX is a decentralized derivatives trading platform on Arbitrum One, offering leveraged trading, yield farming, and token vesting. It uses a native LION token for governance and rewards, with infrastructure for referrals, blind boxes, and flexible liquidity pools.

### Architecture

The LION token is central, distributed via HoldMining and vested through esLionTokenVester. Referral and FlexiblePools contracts support user acquisition and liquidity, while proxies enable upgradeability across the system.

## Contract Surface Quality

- Indexed contracts: 72; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 43 inactive, 26 singleton, 0 uninitialized.
- Deployment units: 0/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $10,071,860.00
- Latest audit: 2023-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $10,071,860.00 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LionDexToken | token | arbitrum | n/a | [`0x8ebb85...8561ec`](./contracts/arbitrum-42161/0x8ebb85d53e6955e557b7c53acde1d42fd68561ec/) | ⚠️ Unaudited |
| LionDEXRouter | adapter | arbitrum | n/a | [`0x9eb55a...0669b6`](./contracts/arbitrum-42161/0x9eb55af68de2d3eb8d0fb223140ab3d8d40669b6/) | ⚠️ Unaudited |
| LPToken | token | arbitrum | n/a | [`0x03229f...0d6cd0`](./contracts/arbitrum-42161/0x03229fb11e3d7e8aca8c758dbd0ea737950d6cd0/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-LionDEX-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LionDEX-v1.0.pdf) | PeckShield | Audit | 2023-06 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x8ebb85...8561ec`](./contracts/arbitrum-42161/0x8ebb85d53e6955e557b7c53acde1d42fd68561ec/) | LionDexToken | token | $10,071,860.00 | Verified native implementation with $10,071,860.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9eb55a...0669b6`](./contracts/arbitrum-42161/0x9eb55af68de2d3eb8d0fb223140ab3d8d40669b6/) | LionDEXRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x03229f...0d6cd0`](./contracts/arbitrum-42161/0x03229fb11e3d7e8aca8c758dbd0ea737950d6cd0/) | LPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=5

Zero-match audit list:

- [13375] PeckShield-Audit-Report-LionDEX-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
