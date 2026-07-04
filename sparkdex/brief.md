# Agentic Audit Brief: SparkDEX

## Project Overview

- Project: SparkDEX (`sparkdex`)
- Website: [https://sparkdex.ai/home](https://sparkdex.ai/home)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.420Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: ethereum
- Contract surface: 20 unique implementations (20 raw deployments)
- DeFi Llama TVL: $26,607,093.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

SparkDEX is a DeFi protocol on Flare offering decentralized exchange services, swaps, liquidity provision, FLR staking, rewards, and perpetuals trading with up to 50x leverage.

### Architecture

No relationship narrative (skeletal or single-family surface).

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 20 (0 live, 20 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 20 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 20
- Raw deployments: 20
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 1 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

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

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0988c6...e716ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f3d8a...cb15d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16b619...980a89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dcabb...ef3a80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38d411...05efb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a1e5a...472a1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b5513...e8b705` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x657097...3f2ba0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x710a57...2f5afe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x840777...16651e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a1e35...3b2781` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a2578...fde652` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x989047...664c38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9bd490...7c0d60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5dc56...981986` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb95257...cee578` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2df11...5ba24f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb5f2c...85204d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee5ff5...c527da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2f986...0814af` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SparkDex PerpV2 Audit Report v0.1_oсt24 remediation.pdf](https://github.com/SparkDEX/perp-smart-contracts/blob/main/audit/SparkDex%20PerpV2%20Audit%20Report%20v0.1_o%D1%81t24%20remediation.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1zmFPzxXrZV8hGw6A3-LMCUnT-6GKImUY/view](https://drive.google.com/file/d/1zmFPzxXrZV8hGw6A3-LMCUnT-6GKImUY/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1RaN7hV1-gTHCs7DLkgZVP9Y4jTzJidBh/view](https://drive.google.com/file/d/1RaN7hV1-gTHCs7DLkgZVP9Y4jTzJidBh/view) | Protofire | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/13jeV8NeRbR64i-9O8uZdor_8E1mteXjl/view](https://drive.google.com/file/d/13jeV8NeRbR64i-9O8uZdor_8E1mteXjl/view) | Coinspect | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [PoolV3 Audit Report v1.1_sep24.pdf](https://github.com/SparkDEX/v3-core/blob/main/PoolV3%20Audit%20Report%20v1.1_sep24.pdf) | Protofire | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [SparkDEX-Tokenomics-Audit.pdf](https://github.com/SparkDEX/sparkdex-contracts/blob/dc668f3f8646b5822a007a5d26c53d560449f703/audit/SparkDEX-Tokenomics-Audit.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1zY_XXxuNiyQeDyK6ni023sUXIqh50i8L/view](https://drive.google.com/file/d/1zY_XXxuNiyQeDyK6ni023sUXIqh50i8L/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SparkDex Distributor audit report v.1.0.pdf](https://github.com/SparkDEX/sparkdex-contracts/blob/dc668f3f8646b5822a007a5d26c53d560449f703/audit/SparkDex%20Distributor%20audit%20report%20v.1.0.pdf) | unknown | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1805] SparkDex PerpV2 Audit Report v0.1_oсt24 remediation.pdf
- [1806] drive.google.com/file/d/1zmFPzxXrZV8hGw6A3-LMCUnT-6GKImUY/view
- [1807] drive.google.com/file/d/1RaN7hV1-gTHCs7DLkgZVP9Y4jTzJidBh/view
- [1808] drive.google.com/file/d/13jeV8NeRbR64i-9O8uZdor_8E1mteXjl/view
- [1810] PoolV3 Audit Report v1.1_sep24.pdf
- [1811] SparkDEX-Tokenomics-Audit.pdf
- [1812] drive.google.com/file/d/1zY_XXxuNiyQeDyK6ni023sUXIqh50i8L/view
- [1813] SparkDex Distributor audit report v.1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
