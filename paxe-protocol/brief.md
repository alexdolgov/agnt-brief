# Agentic Audit Brief: Paxe Protocol

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Paxe Protocol (`paxe-protocol`)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-19T17:19:45.679Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Paxe Protocol is a yield farming platform on BSC that enables users to stake or restake assets to earn rewards. It provides liquid farming and restaking mechanisms to optimize yield generation.

### Architecture

All contracts are deployed by the same deployer and form a single product family. The Paxe token likely serves as the reward or governance token across the LiquidFarming and PaxeRestaking contracts.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 17 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 2/15.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Paxe | unknown | bsc | n/a | [`0xd2a3ee...5dd2fa`](./contracts/bsc-56/0xd2a3eec06719d5ac66248003b5488e02165dd2fa/) | ⚠️ Unaudited |
| PaxeRestaking | unknown | bsc | n/a | [`0x269e1c...e9e9c8`](./contracts/bsc-56/0x269e1ceb128cccd5684bbaff9906d69ed1e9e9c8/) | ⚠️ Unaudited |
| PaxeStaking | unknown | bsc | n/a | [`0x8461e6...16b8d5`](./contracts/bsc-56/0x8461e6429248656e5479b4bd09f918cbc016b8d5/) | ⚠️ Unaudited |
| PaxeStakingV2 | unknown | bsc | n/a | [`0x311049...364a09`](./contracts/bsc-56/0x311049dcac17e9d9a961590b436c132f91364a09/) | ⚠️ Unaudited |
| PPAXE | unknown | bsc | n/a | [`0x017183...b2f99f`](./contracts/bsc-56/0x017183e188e4cd1b31e509f03d417d0f11b2f99f/) | ⚠️ Unaudited |

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
| [liquidFarming.pdf](https://github.com/cyberscope-io/audits/blob/main/paxe/liquidFarming.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xd2a3ee...5dd2fa`](./contracts/bsc-56/0xd2a3eec06719d5ac66248003b5488e02165dd2fa/) | Paxe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x269e1c...e9e9c8`](./contracts/bsc-56/0x269e1ceb128cccd5684bbaff9906d69ed1e9e9c8/) | PaxeRestaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8461e6...16b8d5`](./contracts/bsc-56/0x8461e6429248656e5479b4bd09f918cbc016b8d5/) | PaxeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x311049...364a09`](./contracts/bsc-56/0x311049dcac17e9d9a961590b436c132f91364a09/) | PaxeStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x017183...b2f99f`](./contracts/bsc-56/0x017183e188e4cd1b31e509f03d417d0f11b2f99f/) | PPAXE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=3

Zero-match audit list:

- [13656] liquidFarming.pdf

Fork inheritance lineage and inherited audits are included when available.
