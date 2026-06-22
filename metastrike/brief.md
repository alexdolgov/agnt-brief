# Agentic Audit Brief: Metastrike

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Metastrike (`metastrike`)
- Website: [https://metastrike.io](https://metastrike.io)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-19T17:06:58.659Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 8 unique implementations (9 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Metastrike is a gaming protocol on BSC that provides staking and vesting mechanisms for its ecosystem token. It enables users to lock tokens to earn rewards and manage token distribution schedules.

### Architecture

The MetaStrike token is likely used across staking and vesting contracts as the primary asset. Staking contracts may interact with vesting contracts to handle reward distributions or locked token schedules.

## Contract Surface Quality

- Indexed contracts: 64; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 55 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Unverified dependencies: 3/21.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 9
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MetaFixedStaking | unknown | bsc | n/a | [`0x3668b1...4322c6`](./contracts/bsc-56/0x3668b1fbba7ea689901b5ab530401cc0134322c6/) | ⚠️ Unaudited |
| MetaMetal | unknown | bsc | n/a | [`0x4ca3cb...7b15c5`](./contracts/bsc-56/0x4ca3cb37de06fd80e79af8533713b377687b15c5/) | ⚠️ Unaudited |
| MetaSingleStakingV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x49ae88...d4ad5e`](./contracts/bsc-56/0x49ae88cc37fbcaca51f412707be81b933cd4ad5e/); bsc `0x59677c...39b554` | ⚠️ Unaudited |
| MetaStrike | unknown | bsc | n/a | [`0x496cc0...50294b`](./contracts/bsc-56/0x496cc0b4ee12aa2ac4c42e93067484e7ff50294b/) | ⚠️ Unaudited |
| MetaStrikeCore | unknown | bsc | n/a | [`0x50bf69...63d76a`](./contracts/bsc-56/0x50bf69324a9be94673a2207427c5bebd8f63d76a/) | ⚠️ Unaudited |
| MetaVesting3 | operational_periphery | bsc | n/a | [`0x379764...81d42d`](./contracts/bsc-56/0x37976466f68c7b74bea901e49263f8c7e081d42d/) | ⚠️ Unaudited |
| MetaVesting4 | operational_periphery | bsc | n/a | [`0x263718...619d69`](./contracts/bsc-56/0x263718b1dfeca8b49406fd4fd1ac5afd05619d69/) | ⚠️ Unaudited |
| MetaVesting5 | operational_periphery | bsc | n/a | [`0x5573a6...4289e0`](./contracts/bsc-56/0x5573a696262362218331c9ba832315205d4289e0/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-ERC20-MetaStrike-v1.0.pdf](https://github.com/MetastrikeHQ/smartcontracts/blob/main/audit-reports/PeckShield-Audit-Report-ERC20-MetaStrike-v1.0.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [Verichains-Public-Audit-Report-MetaStrike-tokens-v1.2.pdf](https://github.com/MetastrikeHQ/smartcontracts/blob/main/audit-reports/Verichains-Public-Audit-Report-MetaStrike-tokens-v1.2.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x3668b1...4322c6`](./contracts/bsc-56/0x3668b1fbba7ea689901b5ab530401cc0134322c6/) | MetaFixedStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ca3cb...7b15c5`](./contracts/bsc-56/0x4ca3cb37de06fd80e79af8533713b377687b15c5/) | MetaMetal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x49ae88...d4ad5e`](./contracts/bsc-56/0x49ae88cc37fbcaca51f412707be81b933cd4ad5e/) | MetaSingleStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x496cc0...50294b`](./contracts/bsc-56/0x496cc0b4ee12aa2ac4c42e93067484e7ff50294b/) | MetaStrike | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x50bf69...63d76a`](./contracts/bsc-56/0x50bf69324a9be94673a2207427c5bebd8f63d76a/) | MetaStrikeCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x379764...81d42d`](./contracts/bsc-56/0x37976466f68c7b74bea901e49263f8c7e081d42d/) | MetaVesting3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x263718...619d69`](./contracts/bsc-56/0x263718b1dfeca8b49406fd4fd1ac5afd05619d69/) | MetaVesting4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5573a6...4289e0`](./contracts/bsc-56/0x5573a696262362218331c9ba832315205d4289e0/) | MetaVesting5 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13485] PeckShield-Audit-Report-ERC20-MetaStrike-v1.0.pdf
- [13486] Verichains-Public-Audit-Report-MetaStrike-tokens-v1.2.pdf

Fork inheritance lineage and inherited audits are included when available.
