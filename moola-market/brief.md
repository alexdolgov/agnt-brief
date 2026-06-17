# Agentic Audit Brief: Moola Market

⚠️ Lifecycle status: DECLINING - TVL dropped 6.8% over 90 days

## Project Overview

- Project: Moola Market (`moola-market`)
- Website: [https://moola.market](https://moola.market)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:56.127Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: celo
- Contract surface: 2 unique implementations (4 raw deployments)
- DeFi Llama TVL: $1,144,256.62
- On-chain TVL (included contracts): $73,915.00
- TVL by chain: Celo $73,915.00

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Moola Market is a decentralized lending protocol on Celo that enables users to deposit assets to earn interest and borrow against their deposits. It is a fork of Aave v2, providing overcollateralized loans and liquidity pools. Deposit receipt tokens should be understood as the AToken-derived lending receipt tokens where verified; MooToken should be described only as Moola's native token unless a source confirms it is a deposit receipt token.

## Contract Surface Quality

- Indexed contracts: 91; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 87 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: aave-v2, uniswap-v2
- Unverified dependencies: 11/49.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 4
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $73,915.00
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $73,915.00 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MooToken | token | celo | n/a | [`0x177002...8c131e`](./contracts/celo-42220/0x17700282592d6917f6a73d0bf8accf4d578c131e/) | ⚠️ Unaudited |
| MoolaStakingRewards | unknown | celo | n/a | 3 deployments: celo [`0x1df0a9...d10fad`](./contracts/celo-42220/0x1df0a9c8313a005793501bac2150dfb895d10fad/); celo `0x2ca169...4fb01c`; celo `0xe76525...5051f6` | ⚠️ Unaudited |

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
| [DL audit link](https://drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [The Moola Market protocol has been independently [audited](https://drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view) since the open source code was migrated from Ethereum to Celo. Moola Market has shared ancestry with Aave v2 codebase which has also been audited [here]() and [here](https://blog.openzeppelin.com/aave-protocol-audit/). Moola Market contracts are open source so everyone can independently verify the code base as well as build applications that interact with Moola Market.](https://github.com/moolamarket/moola/blob/main/aave-protocol/docs/ToB_aave_protocol_final_report.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [The Moola Market protocol has been independently [audited](https://drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view) since the open source code was migrated from Ethereum to Celo. Moola Market has shared ancestry with Aave v2 codebase which has also been audited [here](https://github.com/moolamarket/moola/blob/main/aave-protocol/docs/ToB_aave_protocol_final_report.pdf) and [here](). Moola Market contracts are open source so everyone can independently verify the code base as well as build applications that interact with Moola Market.](https://www.openzeppelin.com/news/aave-protocol-audit) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | [`0x177002...8c131e`](./contracts/celo-42220/0x17700282592d6917f6a73d0bf8accf4d578c131e/) | MooToken | token | $73,915.00 | Verified native implementation with $73,915.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x1df0a9...d10fad`](./contracts/celo-42220/0x1df0a9c8313a005793501bac2150dfb895d10fad/) | MoolaStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3163] DL audit link
- [11822] The Moola Market protocol has been independently [audited](https://drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view) since the open source code was migrated from Ethereum to Celo. Moola Market has shared ancestry with Aave v2 codebase which has also been audited [here]() and [here](https://blog.openzeppelin.com/aave-protocol-audit/). Moola Market contracts are open source so everyone can independently verify the code base as well as build applications that interact with Moola Market.
- [11823] The Moola Market protocol has been independently [audited](https://drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view) since the open source code was migrated from Ethereum to Celo. Moola Market has shared ancestry with Aave v2 codebase which has also been audited [here](https://github.com/moolamarket/moola/blob/main/aave-protocol/docs/ToB_aave_protocol_final_report.pdf) and [here](). Moola Market contracts are open source so everyone can independently verify the code base as well as build applications that interact with Moola Market.

Fork inheritance lineage and inherited audits are included when available.
