# Agentic Audit Brief: Scrub Money

## Project Overview

- Project: Scrub Money (`scrub-money`)
- Website: [https://scrub.money](https://scrub.money)
- Lifecycle: active (Tier 0, 32.4% below peak)
- Generated: 2026-05-23T09:36:11.701Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, kava
- Contract surface: 19 unique implementations (19 raw deployments)
- DeFi Llama TVL: $7,148,520.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Scrub Money is a DeFi protocol offering prediction markets, algorithmic stablecoins, yield generation, and basis trading across Kava and Arbitrum One. It encompasses multiple product families including a football-themed prediction market, a commerce platform, a core Scrub ecosystem, and a vault system.

### Architecture

The Scrub family provides core DeFi primitives (stablecoins, yield) that likely feed into the ScrubVault for optimized returns. Kava Football Club and Lion Commerce appear as separate verticals, possibly sharing the Scrub token or stablecoin as a medium of exchange.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 19
- Raw deployments: 19
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ERC1967Proxy | proxy | arbitrum | [`0x439a92...cf3f9d`](./contracts/arbitrum-42161/0x439a923517c4dfd3f3d0abb0c36e356d39cf3f9d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | kava | `0x09d656...10a2e8` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x0db75e...dd4411` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x199a0c...a9ed1e` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x336771...81be2e` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x471f79...958154` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x52b180...17d79f` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x59e38a...2acb7b` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x670410...a4a080` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x6eff7d...325f0a` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x7bff6c...6370bc` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x7f8ed7...361501` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x83e315...36f649` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x990e15...1b9026` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x9e334c...63bbcf` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0xa07dee...4ae82e` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0xbd9881...ef9c50` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0xc0608a...d58d55` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0xea8481...b15ced` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://scrub.finance/how-to-know-if-it-is-a-cryptocurrency-scam-or-not) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2184] DL audit link

Fork inheritance lineage and inherited audits are included when available.
