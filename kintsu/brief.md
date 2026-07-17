# Agentic Audit Brief: Kintsu

## Project Overview

- Project: Kintsu (`kintsu`)
- Website: [https://kintsu.xyz/](https://kintsu.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.241Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: hyperliquid
- Contract surface: 8 unique implementations (12 raw deployments)
- DeFi Llama TVL: $1,930,045.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Kintsu is a composable liquid staking protocol centered on Monad, where users stake MON to receive liquid staking tokens such as sMON/superMON while maintaining liquidity. The protocol includes DAO-governed validator delegation and may also have a smaller Hyperliquid L1 component where applicable.

### Architecture

The Mainnet family uses a proxy pointing to the Kintsu family's implementation contract, indicating a shared codebase where the Kintsu contracts serve as the logic layer for the mainnet deployment.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (0 live, 12 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 8
- Raw deployments: 12
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 1 unknown
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

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x46fe710f0a9288160fe43d502d6d5fc85de9c16d) | unknown | hyperliquid | n/a | 2 deployments: hyperliquid `0x1810ae9986fc1a7ef6f3ae20b5e376af58390cbb`; hyperliquid `0x46fe710f0a9288160fe43d502d6d5fc85de9c16d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1d0197fe4496bb557a5a8b904ba076629cc57ba3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | 2 deployments: hyperliquid `0x1ed00e0bb3a7f990d9f803ce0bfc22762bea174b`; hyperliquid `0x2b90055eb5f774f54072c68d09a71c4a18761d04` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x478e0162b8ea9bcc8d70cea5247c1baa2104baac` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | 2 deployments: hyperliquid `0x577635fa486382d139f9e99f32d67e6e041102cb`; hyperliquid `0xddc126c12f9f8df5a6fc273f6d43c1e21b4d2945` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | 2 deployments: hyperliquid `0xabf96a5c39761cbeddc09f94fb918932091728d8`; hyperliquid `0xf82c9d94ea864890e48380ed731ce58f0a530659` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xaeb3b393f061c4a1d84aab695b3c04029929b5f6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbef0142a0955a7d5dcce5c2a13fb84e332669d2d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hyperliquid-kintsu-cantina-final.pdf](https://github.com/WaterCoolerStudiosInc/Kintsu-Audits/blob/main/hyperliquid-kintsu-cantina-final.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [monad-kintsu-cantina-final.pdf](https://github.com/WaterCoolerStudiosInc/Kintsu-Audits/blob/main/monad-kintsu-cantina-final.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [monad-kintsu-nethermind-final-2.pdf](https://github.com/WaterCoolerStudiosInc/Kintsu-Audits/blob/main/monad-kintsu-nethermind-final-2.pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [monad-kintsu-nethermind-final.pdf](https://github.com/WaterCoolerStudiosInc/Kintsu-Audits/blob/main/monad-kintsu-nethermind-final.pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Kintsu-Audits (GitHub directory)](https://github.com/WaterCoolerStudiosInc/Kintsu-Audits) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
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
- [2796] Kintsu-Audits (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
