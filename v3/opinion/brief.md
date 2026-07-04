# Agentic Audit Brief: OPINION

## Project Overview

- Project: OPINION (`opinion`)
- Website: [https://app.opinion.trade](https://app.opinion.trade)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:38.643Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: bsc, ethereum
- Contract surface: 8 unique implementations (24 raw deployments)
- DeFi Llama TVL: $5,084,612.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Prediction Market. Structurally: 6 project-authored contract(s) across 2 chain(s); 1 ERC20 token, 1 ERC1155 multi-token; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 24 (22 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/6 (66.7%)
- Deployed-live implementations: 6 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/6
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 8
- Raw deployments: 24
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ScaleBit | Tier 2 | 2 | 33.3% | 2025-10 |
| Pashov Audit Group | Tier 2 | 1 | 16.7% | 2026-01 |
| unknown | Tier 2 | 1 | 16.7% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConditionalTokens | token | bsc | n/a | 2 deployments: bsc [`0x51d1a6...c6eb54`](./contracts/bsc-56/0x51d1a62d41e93b983ef29aec04f30ded66c6eb54/); bsc `0xad1a38...10d774` | ✅ Audited |
| CTFExchangeFeeManager | governance | bsc | n/a | 9 deployments: bsc [`0x1b4922...b25236`](./contracts/bsc-56/0x1b4922496994f2840e2886cf600c70eb66b25236/); bsc `0x2b1493...70068c`; bsc `0x32b770...428293`; bsc `0x33d2c9...86afa4`; bsc `0x3bb81f...c17cbc`; bsc `0x3c13ce...ab25a8`; bsc `0x6ae1a7...c9e695`; bsc `0xc9063d...5d7c36`; bsc `0xe9ced7...81ca85` | ✅ Audited |
| CTFExecutionEngine | unknown | bsc | n/a | 8 deployments: bsc [`0x5f4534...7a7246`](./contracts/bsc-56/0x5f45344126d6488025b0b84a3a8189f2487a7246/); bsc `0x76527e...2b6b12`; bsc `0x7aeef4...223d1d`; bsc `0x932a47...7398d3`; bsc `0x95665d...e20585`; bsc `0xa26fbc...9cf9b0`; bsc `0xd6e1c9...3cf2c3`; bsc `0xe682cc...24789a` | ✅ Audited |
| OpinionToken | token | ethereum | n/a | [`0x7977bf...0b06e0`](./contracts/ethereum-1/0x7977bf3e7e0c954d12cdca3e013adaf57e0b06e0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MultiSend | unknown | bsc | n/a | [`0x998739...8f9eda`](./contracts/bsc-56/0x998739bfdaadde7c933b942a68053933098f9eda/) | ⚠️ Unaudited |
| SafeL2 | unknown | bsc | n/a | [`0xe76e76...8cbb4b`](./contracts/bsc-56/0xe76e763c5e57823ee5c7ed8e8d86d4e4938cbb4b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x5948c9...1879b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd8ac33...bfce2a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [opinion-v1-scalebit.pdf](https://static.opinion.trade/opinion-v1-scalebit.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | 1 | n/a |
| [opinion-v1-zellic.pdf](https://static.opinion.trade/opinion-v1-zellic.pdf) | Zellic | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [opinion-v2-scalebit.pdf](https://static.opinion.trade/opinion-v2-scalebit.pdf) | ScaleBit | Audit | 2025-10 | fresh | Direct | contract_name | 2 | n/a |
| [opn-token-scalebit.pdf](https://static.opinion.trade/opn-token-scalebit.pdf) | Pashov Audit Group | Audit | 2026-01 | fresh | Direct | contract_name | 1 | n/a |
| [opn-token-pashov.pdf](https://static.opinion.trade/opn-token-pashov.pdf) | Pashov Audit Group | Audit | 2026-01 | fresh | Direct | contract_name | 1 | n/a |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=5

Zero-match audit list:

- [2179] opinion-v1-zellic.pdf

Fork inheritance lineage and inherited audits are included when available.
