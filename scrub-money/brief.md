# Agentic Audit Brief: Scrub Money

## Project Overview

- Project: Scrub Money (`scrub-money`)
- Website: [https://scrub.money](https://scrub.money)
- Lifecycle: active (Tier 0, 32.4% below peak)
- Generated: 2026-06-17T07:00:43.710Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: kava
- Contract surface: 18 unique implementations (18 raw deployments)
- DeFi Llama TVL: $7,156,266.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Scrub Money is a decentralized commerce and services ecosystem spanning DeFi vaults and strategies, NFT marketplace and staking through Scrubplace, peer-to-peer sports markets through Kava Football Club, crypto commerce and gift cards through Lion Commerce, and on-chain games through Scrub Games. Its ecosystem also references LION as a future-backed stablecoin and TIGER as a related token, but the brief should not characterize LION as an algorithmic stablecoin or claim broad basis-trading functionality without independent support.

### Architecture

The Scrub family provides core DeFi primitives (stablecoins, yield) that likely feed into the ScrubVault for optimized returns. Kava Football Club and Lion Commerce appear as separate verticals, possibly sharing the Scrub token or stablecoin as a medium of exchange.

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 18 (0 live, 18 unknown).
- Excluded by liveness: 0 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 18
- Raw deployments: 18
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

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | kava | n/a | `0x09d656...10a2e8` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x0db75e...dd4411` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x199a0c...a9ed1e` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x336771...81be2e` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x471f79...958154` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x52b180...17d79f` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x59e38a...2acb7b` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x670410...a4a080` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x6eff7d...325f0a` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x7bff6c...6370bc` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x7f8ed7...361501` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x83e315...36f649` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x990e15...1b9026` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x9e334c...63bbcf` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xa07dee...4ae82e` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xbd9881...ef9c50` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xc0608a...d58d55` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xea8481...b15ced` | ❓ Unverified |

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
| standard_library | 0 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11659] DL audit link

Fork inheritance lineage and inherited audits are included when available.
