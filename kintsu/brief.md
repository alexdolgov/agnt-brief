# Agentic Audit Brief: Kintsu

⚠️ Lifecycle status: DECLINING - TVL dropped 43.8% over 90 days

## Project Overview

- Project: Kintsu (`kintsu`)
- Website: [https://kintsu.xyz/](https://kintsu.xyz/)
- Lifecycle: declining (Tier 0, 60.2% below peak)
- Generated: 2026-06-11T00:26:20.949Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-5143
- Chains: hyperliquid
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $2,345,149.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Kintsu is a composable liquid staking protocol centered on Monad, where users stake MON to receive liquid staking tokens such as sMON/superMON while maintaining liquidity. The protocol includes DAO-governed validator delegation and may also have a smaller Hyperliquid L1 component where applicable.

### Architecture

The Mainnet family uses a proxy pointing to the Kintsu family's implementation contract, indicating a shared codebase where the Kintsu contracts serve as the logic layer for the mainnet deployment.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 12
- Raw deployments: 12
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

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x1ed00e0bb3a7f990d9f803ce0bfc22762bea174b) | proxy | hyperliquid | `0x2b9005...761d04` | ❓ Unverified |
| Proxy (impl: 0x46fe710f0a9288160fe43d502d6d5fc85de9c16d) | proxy | hyperliquid | `0x1810ae...390cbb` | ❓ Unverified |
| Proxy (impl: 0x577635fa486382d139f9e99f32d67e6e041102cb) | proxy | hyperliquid | `0xddc126...4d2945` | ❓ Unverified |
| Proxy (impl: 0xabf96a5c39761cbeddc09f94fb918932091728d8) | proxy | hyperliquid | `0xf82c9d...530659` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x1d0197...c57ba3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x1ed00e...ea174b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x46fe71...e9c16d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x478e01...04baac` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x577635...1102cb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xabf96a...1728d8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xaeb3b3...29b5f6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xbef014...669d2d` | ❓ Unverified |

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
| needs_review | 8 |

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
