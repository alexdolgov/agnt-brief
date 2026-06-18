# Agentic Audit Brief: Sentiment

⚠️ Lifecycle status: DEAD - TVL dropped 44.8% over 90 days

## Project Overview

- Project: Sentiment (`sentiment`)
- Website: [https://app.sentiment.xyz](https://app.sentiment.xyz)
- Lifecycle: dead (Tier 1, sunsetting)
- Generated: 2026-06-18T09:25:10.300Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-5311
- Chains: arbitrum
- Contract surface: 2 unique implementations (8 raw deployments)
- DeFi Llama TVL: $1,203,461.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Sentiment is/was a leveraged lending protocol that enabled users to deposit assets into lending pools and borrow against them using isolated risk engines and account management. The protocol should not be described as Arbitrum-only unless the brief is explicitly limited to Arbitrum contract coverage; current DefiLlama data indicates TVL is mainly on Hyperliquid L1, and the app states the protocol has wound down.

### Architecture

The protocol uses a single product family where AccountManager creates user accounts that interact with LToken/LEther lending pools, governed by Registry and RiskEngine for risk parameters. Proxy and Beacon contracts serve as shared infrastructure for upgradeability across all core contracts.

## Contract Surface Quality

- Indexed contracts: 368; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 291 inactive, 69 singleton, 0 uninitialized.
- Deployment units: 1/32 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/2 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 8
- Audits discovered: 8
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 4 aging, 4 stale, 0 unknown
- Tier 1 coverage: 50.0% (Sherlock)
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 100.0% | 2022-07 |
| Sherlock | Tier 1 | 1 | 50.0% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Account | core_logic | arbitrum | n/a | [`0xc3991f...0c5463`](./contracts/arbitrum-42161/0xc3991f83f2fb241b05db76e0c1bb24a81e0c5463/) | ✅ Audited |
| Proxy | proxy | arbitrum | unit-36262 (7 proxies) | 7 deployments: arbitrum [`0x0ddb1e...b1299b`](./contracts/arbitrum-42161/0x0ddb1ea478f8ef0e22c7706d2903a41e94b1299b/); arbitrum `0x212022...ccc121`; arbitrum `0x2e9963...784c40`; arbitrum `0x37e6a0...363b67`; arbitrum `0x4c8e16...e4623e`; arbitrum `0xb19021...776bec`; arbitrum `0xe520c4...607db2` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [Sentiment_Protocol_20220727.pdf](https://github.com/arbitraryexecution/publications/blob/main/assessments/Sentiment_Protocol_20220727.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 8 | high |
| [Sentiment_Oracle_20220727.pdf](https://github.com/arbitraryexecution/publications/blob/main/assessments/Sentiment_Oracle_20220727.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 0 | n/a |
| [2022.10.18 - Final - Sentiment Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.10.18%20-%20Final%20-%20Sentiment%20Audit%20Report.pdf) | Sherlock | Contest | 2022-10 | stale | Direct | contract_name | 1 | high |
| [sentiment_v2_guardian.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_guardian.pdf) | Guardian | Audit | 2024-08 | aging | Direct | contract_name | 0 | n/a |
| [sentiment_v2_sherlock.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_sherlock.pdf) | Sherlock | Contest | 2024-08 | aging | Direct | contract_name | 0 | n/a |
| [sentiment_v2_zobront.md](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_zobront.md) | Zobront | Audit | 2023-03 | stale | Direct | contract_name | 0 | n/a |
| [sentiment_v2_sherlock_2.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_sherlock_2.pdf) | Sherlock | Contest | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [sentiment_v2_sherlock_3.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_sherlock_3.pdf) | Sherlock | Contest | 2025-03 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=160

Zero-match audit list:

- [3172] Sentiment_Oracle_20220727.pdf
- [3174] sentiment_v2_guardian.pdf
- [3175] sentiment_v2_sherlock.pdf
- [3176] sentiment_v2_zobront.md
- [3177] sentiment_v2_sherlock_2.pdf
- [3178] sentiment_v2_sherlock_3.pdf

Fork inheritance lineage and inherited audits are included when available.
