# Agentic Audit Brief: OPINION

## Project Overview

- Project: OPINION (`opinion`)
- Website: [https://app.opinion.trade](https://app.opinion.trade)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:39.105Z
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

- Coverage of deployed-live implementations: 4/4 (100.0%)
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
| ConditionalTokens | token | bsc | n/a | 2 deployments: bsc [`0x51d1a62d41e93b983ef29aec04f30ded66c6eb54`](./contracts/bsc-56/0x51d1a62d41e93b983ef29aec04f30ded66c6eb54/); bsc `0xad1a38cec043e70e83a3ec30443db285ed10d774` | ✅ Audited |
| CTFExchangeFeeManager | governance | bsc | n/a | 9 deployments: bsc [`0x1b4922496994f2840e2886cf600c70eb66b25236`](./contracts/bsc-56/0x1b4922496994f2840e2886cf600c70eb66b25236/); bsc `0x2b14933915a93275df3b54a83a79d9328c70068c`; bsc `0x32b770e46e3d79193f96d92fdf73375bd5428293`; bsc `0x33d2c9a9a68006d33867053d78bce54b3586afa4`; bsc `0x3bb81f65b0e05e0690bddd74f04254ebf2c17cbc`; bsc `0x3c13ce89d9a1e5fddde4a7e1b8a01ea39bab25a8`; bsc `0x6ae1a74303197571db5ac1aa311936049fc9e695`; bsc `0xc9063dc52deefb518e5b6634a6b8d624bc5d7c36`; bsc `0xe9ced7421917665559de4138b001cdeca481ca85` | ✅ Audited |
| CTFExecutionEngine | unknown | bsc | n/a | 8 deployments: bsc [`0x5f45344126d6488025b0b84a3a8189f2487a7246`](./contracts/bsc-56/0x5f45344126d6488025b0b84a3a8189f2487a7246/); bsc `0x76527e8b494f6853212474c5fc18f98f8d2b6b12`; bsc `0x7aeef402cf76b2007ed842ed883f60465b223d1d`; bsc `0x932a47f289a30b0a2ab84d5aadc6ba72127398d3`; bsc `0x95665d44be0f3ad1bbe3b05cd96512d89ce20585`; bsc `0xa26fbc2271703cb59738ad8f0fb38777779cf9b0`; bsc `0xd6e1c91559b87a8f07a8377855833f016f3cf2c3`; bsc `0xe682cc8ccb6d0a151b88e073d321dfa45624789a` | ✅ Audited |
| OpinionToken | token | ethereum | n/a | [`0x7977bf3e7e0c954d12cdca3e013adaf57e0b06e0`](./contracts/ethereum-1/0x7977bf3e7e0c954d12cdca3e013adaf57e0b06e0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MultiSend | unknown | bsc | n/a | [`0x998739bfdaadde7c933b942a68053933098f9eda`](./contracts/bsc-56/0x998739bfdaadde7c933b942a68053933098f9eda/) | ⚠️ Unaudited |
| SafeL2 | unknown | bsc | n/a | [`0xe76e763c5e57823ee5c7ed8e8d86d4e4938cbb4b`](./contracts/bsc-56/0xe76e763c5e57823ee5c7ed8e8d86d4e4938cbb4b/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x5948c95a1d5ea58188fde88ff989c473ac1879b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd8ac33f4f7cdd48c2bed68d53bf1d4a5bebfce2a` | ❓ Unverified |

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
| native | 4 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 2 |

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
