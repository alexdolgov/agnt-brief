# Agentic Audit Brief: KnightSwap

⚠️ Lifecycle status: DEAD - TVL dropped 23.4% over 90 days

## Project Overview

- Project: KnightSwap (`knightswap`)
- Website: [https://knightswap.financial](https://knightswap.financial)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T15:37:35.366Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: bsc, fantom
- Contract surface: 7 unique implementations (8 raw deployments)
- DeFi Llama TVL: $904,580.00
- On-chain TVL (included contracts): $124,400.88
- TVL by chain: Bsc $124,400.88

## Project Description

KnightSwap is a decentralized exchange and lending protocol on BSC and Fantom. It enables users to trade tokens, provide liquidity, and earn yield through farming and staking mechanisms.

### Architecture

KnightFactory creates and registers liquidity pools, while MasterChef distributes KnightToken rewards to liquidity providers. KnightToken serves as the central incentive and governance token across the protocol.

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 8 (2 live, 6 unknown).
- Excluded by liveness: 12 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 7
- Raw deployments: 8
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $124,400.88
- Latest audit: 2021-11 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $124,400.88 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KnightToken | token | bsc | n/a | [`0xd23811...c4abba`](./contracts/bsc-56/0xd23811058eb6e7967d9a00dc3886e75610c4abba/) | ⚠️ Unaudited |
| KnightFactory | registry | bsc | n/a | [`0xf0bc2e...90751f`](./contracts/bsc-56/0xf0bc2e21a76513aa7cc2730c7a1d6dee0790751f/) | ⚠️ Unaudited |
| KnightRouter | adapter | bsc | n/a | [`0x05e61e...d6c46f`](./contracts/bsc-56/0x05e61e0cdcd2170a76f9568a110cee3afdd6c46f/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | 2 deployments: bsc [`0xe50cb7...407414`](./contracts/bsc-56/0xe50cb76a71b0c52ab091860cd61b9ba2fa407414/); bsc `0xf5d8c5...bc1a49` | ⚠️ Unaudited |
| NFTHELPER | token | bsc | n/a | [`0xe186af...6edc34`](./contracts/bsc-56/0xe186af8f9bfd6385df4340a87650c425506edc34/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0xff16d3...5ad8c1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x7d82f5...732218` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [KnightSwap.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/November/KnightSwap.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xd23811...c4abba`](./contracts/bsc-56/0xd23811058eb6e7967d9a00dc3886e75610c4abba/) | KnightToken | token | $124,400.88 | Verified native implementation with $124,400.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf0bc2e...90751f`](./contracts/bsc-56/0xf0bc2e21a76513aa7cc2730c7a1d6dee0790751f/) | KnightFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05e61e...d6c46f`](./contracts/bsc-56/0x05e61e0cdcd2170a76f9568a110cee3afdd6c46f/) | KnightRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe50cb7...407414`](./contracts/bsc-56/0xe50cb76a71b0c52ab091860cd61b9ba2fa407414/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe186af...6edc34`](./contracts/bsc-56/0xe186af8f9bfd6385df4340a87650c425506edc34/) | NFTHELPER | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13350] KnightSwap.pdf

Fork inheritance lineage and inherited audits are included when available.
