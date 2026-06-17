# Agentic Audit Brief: GETH

## Project Overview

- Project: GETH (`geth`)
- Website: [https://guarda.com/staking/ethereum-staking/](https://guarda.com/staking/ethereum-staking/)
- Lifecycle: active (Tier 0, 61.8% below peak)
- Generated: 2026-06-17T07:00:52.115Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $12,724,660.04
- On-chain TVL (included contracts): $16,166,712.83
- TVL by chain: Ethereum $16,166,712.83

## Project Description

GETH is Guarda's Ethereum liquid staking/tokenized staking product. Users stake ETH and receive GETH as a liquid token representing their staked position and accrued rewards. The on-chain surface includes StakeToken and an EthStakingCrowdsale contract that should be reviewed as part of the protocol topology; no single-contract architecture should be assumed without further review.

### Architecture

The protocol consists of a single product family with one core contract, the StakeToken, which handles both staking and token issuance.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $16,166,712.83
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakeToken | token | ethereum | n/a | [`0x3802c2...eb74b8`](./contracts/ethereum-1/0x3802c218221390025bceabbad5d8c59f40eb74b8/) | ⚠️ Unaudited |
| DepositContract | core_logic | ethereum | n/a | [`0x000000...7705fa`](./contracts/ethereum-1/0x00000000219ab540356cbb839cbe05303d7705fa/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x408d1f...2ce19f`](./contracts/ethereum-1/0x408d1f0a8a6f478f082f34c5eeb41541262ce19f/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3802c2...eb74b8`](./contracts/ethereum-1/0x3802c218221390025bceabbad5d8c59f40eb74b8/) | StakeToken | token | $16,161,210.88 | Verified native implementation with $16,161,210.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
