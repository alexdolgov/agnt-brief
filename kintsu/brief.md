# Agentic Audit Brief: Kintsu

⚠️ Lifecycle status: DECLINING - TVL dropped 43.8% over 90 days

## Project Overview

- Project: Kintsu (`kintsu`)
- Website: [https://kintsu.xyz/](https://kintsu.xyz/)
- Lifecycle: declining (Tier 0, 60.2% below peak)
- Generated: 2026-06-17T07:00:49.618Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: hyperliquid
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $2,158,496.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Kintsu is a composable liquid staking protocol centered on Monad, where users stake MON to receive liquid staking tokens such as sMON/superMON while maintaining liquidity. The protocol includes DAO-governed validator delegation and may also have a smaller Hyperliquid L1 component where applicable.

### Architecture

The Mainnet family uses a proxy pointing to the Kintsu family's implementation contract, indicating a shared codebase where the Kintsu contracts serve as the logic layer for the mainnet deployment.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 0/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 5
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Staleness: 4 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

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
| UnnamedContract | unknown | hyperliquid | n/a | `0x1d0197...c57ba3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x478e01...04baac` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xaeb3b3...29b5f6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbef014...669d2d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hyperliquid-kintsu-cantina-final.pdf](https://github.com/WaterCoolerStudiosInc/Kintsu-Audits/blob/main/hyperliquid-kintsu-cantina-final.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [monad-kintsu-cantina-final.pdf](https://github.com/WaterCoolerStudiosInc/Kintsu-Audits/blob/main/monad-kintsu-cantina-final.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [monad-kintsu-nethermind-final-2.pdf](https://github.com/WaterCoolerStudiosInc/Kintsu-Audits/blob/main/monad-kintsu-nethermind-final-2.pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [monad-kintsu-nethermind-final.pdf](https://github.com/WaterCoolerStudiosInc/Kintsu-Audits/blob/main/monad-kintsu-nethermind-final.pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [View Audit Reports](https://github.com/WaterCoolerStudiosInc/Kintsu-Audits) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2792] hyperliquid-kintsu-cantina-final.pdf
- [2793] monad-kintsu-cantina-final.pdf
- [2794] monad-kintsu-nethermind-final-2.pdf
- [2795] monad-kintsu-nethermind-final.pdf
- [2796] View Audit Reports

Fork inheritance lineage and inherited audits are included when available.
