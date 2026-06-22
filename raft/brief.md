# Agentic Audit Brief: Raft

⚠️ Lifecycle status: DEAD - TVL dropped 18.0% over 90 days

## Project Overview

- Project: Raft (`raft`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T22:51:51.908Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $13,521.84
- On-chain TVL (included contracts): $23,921,839.28
- TVL by chain: Ethereum $23,921,839.28

## Project Description

Raft is a collateralized debt position (CDP) protocol that allows users to mint a stablecoin against liquid staking derivatives and other collateral. It manages interest rate positions, governance, and liquidity provisioning for its ecosystem.

### Architecture

The Raft family shares a common stablecoin (swETH) and collateral infrastructure. The TransparentUpgradeableProxy serves as the main token, while WrappedCollateralToken wraps collateral for use in the system. ChaiPSM likely acts as a peg stability module, and WeightedPool provides liquidity. Governance and position management contracts interact with these core tokens.

## Contract Surface Quality

- Indexed contracts: 143; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 138 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: balancer-v2
- Unverified dependencies: 4/44.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $23,921,839.28
- Latest audit: 2023-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $23,921,839.28 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| swETH | token | ethereum | unit-40447 | [`0xf951e3...7ded78`](./contracts/ethereum-1/0xf951e335afb289353dc249e82926178eac7ded78/) | ⚠️ Unaudited |
| RaftToken | token | ethereum | n/a | [`0x4c5cb5...cf0c93`](./contracts/ethereum-1/0x4c5cb5d87709387f8821709f7a6664f00dcf0c93/) | ⚠️ Unaudited |
| Chai | unknown | ethereum | n/a | [`0x06af07...49c215`](./contracts/ethereum-1/0x06af07097c9eeb7fd685c692751d5c66db49c215/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | ethereum | n/a | [`0x45d117...84186f`](./contracts/ethereum-1/0x45d117011da1d49ba86af6ced94126488084186f/) | ⚠️ Unaudited |
| WeightedPool | core_logic | ethereum | n/a | [`0xe91888...71bb3a`](./contracts/ethereum-1/0xe91888a1d08e37598867d213a4acb5692071bb3a/) | ⚠️ Unaudited |

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
| [2023-04-tempus-raft-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-04-tempus-raft-securityreview.pdf) | Trail of Bits | Audit | 2023-04 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4c5cb5...cf0c93`](./contracts/ethereum-1/0x4c5cb5d87709387f8821709f7a6664f00dcf0c93/) | RaftToken | token | $133,250.00 | Verified native implementation with $133,250.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=47

Zero-match audit list:

- [13731] 2023-04-tempus-raft-securityreview.pdf

Fork inheritance lineage and inherited audits are included when available.
