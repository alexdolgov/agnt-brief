# Agentic Audit Brief: Mr. Lightspeed Creator Coin

⚠️ Lifecycle status: DEAD - TVL dropped 100.0% over 90 days

## Project Overview

- Project: Mr. Lightspeed Creator Coin (`mr.-lightspeed-creator-coin`)
- Website: [https://zora.co/mr_lightspeed](https://zora.co/mr_lightspeed)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T09:25:58.805Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: base, zora
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Mr. Lightspeed Creator Coin enables creators to launch their own branded tokens (Creator Coins) on Zora and Base. The protocol provides factory and registry infrastructure to deploy and manage these tokens, facilitating social finance (SoFi) use cases.

### Architecture

The ZoraFactory deploys CreatorCoin instances and references the ZoraHookRegistry to attach hooks. The deployment example contract likely interacts with the factory to showcase a full setup.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (3 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CreatorCoin | unknown | base | n/a | [`0xf0cb96...10f87a`](./contracts/base-8453/0xf0cb96a4011a0a6f73d100c7080bf8020d10f87a/) | ⚠️ Unaudited |
| ZoraFactoryImpl | registry | base | unit-39473 | [`0x777777...45baf3`](./contracts/base-8453/0x777777751622c0d3258f214f9df38e35bf45baf3/) | ⚠️ Unaudited |
| ZoraHookRegistry | registry | base | n/a | [`0x777777...fc18d7`](./contracts/base-8453/0x777777c4c14b133858c3982d41dbf02509fc18d7/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | zora | n/a | `0x111111...0afc69` | ❓ Unverified |
| UnnamedContract | unknown | zora | n/a | `0x777777...45baf3` | ❓ Unverified |
| UnnamedContract | unknown | zora | n/a | `0x777777...fc18d7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Zora Token - Zellic Audit Report.pdf](https://github.com/ourzora/zora-token/blob/main/audit/Zora%20Token%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xf0cb96...10f87a`](./contracts/base-8453/0xf0cb96a4011a0a6f73d100c7080bf8020d10f87a/) | CreatorCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x777777...45baf3`](./contracts/base-8453/0x777777751622c0d3258f214f9df38e35bf45baf3/) | ZoraFactoryImpl | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x777777...fc18d7`](./contracts/base-8453/0x777777c4c14b133858c3982d41dbf02509fc18d7/) | ZoraHookRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13535] Zora Token - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
