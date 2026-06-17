# Agentic Audit Brief: Tensorplex

⚠️ Lifecycle status: WIND_DOWN - TVL dropped 79.3% over 90 days

## Project Overview

- Project: Tensorplex (`tensorplex`)
- Website: [https://stake.tensorplex.ai/](https://stake.tensorplex.ai/)
- Lifecycle: wind_down (Tier 1, wind_down)
- Generated: 2026-06-17T07:00:46.256Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $387,400.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Tensorplex is a liquid staking protocol that allows users to stake TAO tokens and receive a liquid staking derivative (PlxTAO) in return, enabling them to earn staking rewards while maintaining liquidity.

### Architecture

The PlxTAOProxy serves as the upgradeable proxy for the PlxTAO implementation, ensuring that the core staking logic can be updated without disrupting user balances or staking positions.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 5 inactive, 5 singleton, 0 uninitialized.
- Deployment units: 1/4 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [wind_down]. ASD of n/a represents exposure in a protocol with wind_down activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeWrapper | operational_periphery | ethereum | n/a | [`0xecaec5...b03b1c`](./contracts/ethereum-1/0xecaec5e1cfaa7a7f0c5a097dcbdf9140f3b03b1c/) | ⚠️ Unaudited |
| ConsensusBridge | operational_periphery | ethereum | n/a | [`0x353876...8b17d5`](./contracts/ethereum-1/0x3538767654f6a2d2f3330a601b6b0a390b8b17d5/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-27663 | [`0xfb47f5...6d68f3`](./contracts/ethereum-1/0xfb47f57c064a0032ee66f98566dedce2aa6d68f3/) | ⚠️ Unaudited |

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
| ethereum | [`0xecaec5...b03b1c`](./contracts/ethereum-1/0xecaec5e1cfaa7a7f0c5a097dcbdf9140f3b03b1c/) | BridgeWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x353876...8b17d5`](./contracts/ethereum-1/0x3538767654f6a2d2f3330a601b6b0a390b8b17d5/) | ConsensusBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
