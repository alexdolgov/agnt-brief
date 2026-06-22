# Agentic Audit Brief: Bitmap Game

⚠️ Lifecycle status: DEAD - TVL dropped 34.4% over 90 days

## Project Overview

- Project: Bitmap Game (`bitmap-game`)
- Website: [https://bitmap.game](https://bitmap.game)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-20T02:37:16.643Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: merlin
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $36,879.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bitmap Game is a gaming protocol on Merlin that enables users to participate in on-chain games, likely involving bitmap-based assets or mechanics. The contracts appear to handle game logic, asset management, and user interactions.

### Architecture

All contracts belong to a single product family with no apparent shared infrastructure or dependencies beyond the game logic itself.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (0 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | merlin | n/a | `0x5c46bf...c87378` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x7b0400...c6ffd6` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x8567bd...72f7e3` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0xb311c4...75b13a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Bitmap.Game_202408081835.pdf](https://github.com/bitmap-game/bitmap-contracts/blob/main/contracts-audit/Bitmap.Game_202408081835.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12779] Bitmap.Game_202408081835.pdf

Fork inheritance lineage and inherited audits are included when available.
