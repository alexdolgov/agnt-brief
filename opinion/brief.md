# Agentic Audit Brief: OPINION

⚠️ Lifecycle status: DECLINING - TVL dropped 93.4% over 90 days

## Project Overview

- Project: OPINION (`opinion`)
- Website: [https://app.opinion.trade?code=hV0KVj](https://app.opinion.trade?code=hV0KVj)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:08.805Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: bsc, ethereum
- Contract surface: 6 unique implementations (22 raw deployments)
- DeFi Llama TVL: $7,320,963.87
- On-chain TVL (included contracts): $142,523,237.16
- TVL by chain: Ethereum $135,005,578.47 | Bsc $7,517,658.70

## Project Description

Opinion is a prediction-market protocol on BNB Chain with contracts for conditional-token exchange execution and fee management. Protocol TVL should be treated separately from the OPN token market value and reported according to current DefiLlama protocol TVL methodology.

### Architecture

The OpinionToken likely serves as the native utility or governance token, while ConditionalTokens represent positions on event outcomes. They share infrastructure through a common deployer cluster, indicating a unified deployment.

## Audit Coverage Summary

- Verified implementations audited: 4/4 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 6
- Raw deployments: 22
- Audits discovered: 5
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Staleness: 3 fresh, 2 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ScaleBit | Tier 2 | 2 | 50.0% | 2025-10 |
| Pashov Audit Group | Tier 2 | 1 | 25.0% | 2026-01 |
| unknown | Tier 2 | 1 | 25.0% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| OpinionToken | token | ethereum | [`0x7977bf...0b06e0`](./contracts/ethereum-1/0x7977bf3e7e0c954d12cdca3e013adaf57e0b06e0/) | ✅ Audited |
| ConditionalTokens | token | bsc | 2 deployments: bsc [`0x51d1a6...c6eb54`](./contracts/bsc-56/0x51d1a62d41e93b983ef29aec04f30ded66c6eb54/); bsc `0xad1a38...10d774` | ✅ Audited |
| CTFExchangeFeeManager | governance | bsc | 9 deployments: bsc [`0x1b4922...b25236`](./contracts/bsc-56/0x1b4922496994f2840e2886cf600c70eb66b25236/); bsc `0x2b1493...70068c`; bsc `0x32b770...428293`; bsc `0x33d2c9...86afa4`; bsc `0x3bb81f...c17cbc`; bsc `0x3c13ce...ab25a8`; bsc `0x6ae1a7...c9e695`; bsc `0xc9063d...5d7c36`; bsc `0xe9ced7...81ca85` | ✅ Audited |
| CTFExecutionEngine | unknown | bsc | 8 deployments: bsc [`0x5f4534...7a7246`](./contracts/bsc-56/0x5f45344126d6488025b0b84a3a8189f2487a7246/); bsc `0x76527e...2b6b12`; bsc `0x7aeef4...223d1d`; bsc `0x932a47...7398d3`; bsc `0x95665d...e20585`; bsc `0xa26fbc...9cf9b0`; bsc `0xd6e1c9...3cf2c3`; bsc `0xe682cc...24789a` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x5948c9...1879b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd8ac33...bfce2a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://static.opinion.trade/opinion-v1-scalebit.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | 2 | high |
| [DL audit link](https://static.opinion.trade/opinion-v1-zellic.pdf) | Zellic | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [* ScaleBit: <>](https://static.opinion.trade/opinion-v2-scalebit.pdf) | ScaleBit | Audit | 2025-10 | fresh | Direct | contract_name | 17 | high |
| [* ScaleBit: <>](https://static.opinion.trade/opn-token-scalebit.pdf) | Pashov Audit Group | Audit | 2026-01 | fresh | Direct | contract_name | 1 | high |
| [* Pashov: <>](https://static.opinion.trade/opn-token-pashov.pdf) | Pashov Audit Group | Audit | 2026-01 | fresh | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=21

Zero-match audit list:

- [2179] DL audit link

Fork inheritance lineage and inherited audits are included when available.
