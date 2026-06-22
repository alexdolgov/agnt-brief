# Agentic Audit Brief: AlgoBlocks

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: AlgoBlocks (`algoblocks`)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-19T17:23:19.644Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 5 unique implementations (6 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

AlgoBlocks provides DeFi services on BSC, including liquidity locking, tiered staking, and wallet management, enabling projects to manage token vesting and community incentives.

### Architecture

The DecubateMasterChef distributes rewards based on tiers managed by DecubateTiers, while DCBLiqLocker secures liquidity. DecubateWalletStore provides wallet infrastructure shared across the protocol.

## Contract Surface Quality

- Indexed contracts: 86; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 66 inactive, 14 singleton, 0 uninitialized.
- Deployment units: 1/7 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 2/7.

## Audit Coverage Summary

- Verified implementations audited: 1/5 (20.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 6
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 20.0% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Algoblocks | unknown | bsc | n/a | [`0xfecca8...fd3a48`](./contracts/bsc-56/0xfecca80ff6deb2b492e93df3b67f0c523cfd3a48/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DCBLiqLocker | unknown | bsc | unit-39800 | [`0x1587d7...78dfae`](./contracts/bsc-56/0x1587d7bf992a854a23ffd7b1bcf96393d978dfae/) | ⚠️ Unaudited |
| DCBVault | core_logic | bsc | n/a | [`0xa459da...45677e`](./contracts/bsc-56/0xa459daf69670ad1fe6d2834e9a6f852cf045677e/) | ⚠️ Unaudited |
| DecubateMasterChef | unknown | bsc | n/a | [`0xd17481...30884a`](./contracts/bsc-56/0xd1748192ae1db982be2fb8c3e6d893c75330884a/) | ⚠️ Unaudited |
| DecubateVestingV2 | operational_periphery | bsc | n/a | 2 deployments: bsc [`0xc4754d...89cd2f`](./contracts/bsc-56/0xc4754dac9c047e3772ddffb8dc641bf15689cd2f/); bsc `0xdb3161...988659` | ⚠️ Unaudited |

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
| [Security Audit of Project ALGOBLOCKS_report 040622.pdf](https://github.com/ALGOBLOCKS/smart-contracts-audits/blob/main/ALGOBLK/Security%20Audit%20of%20Project%20ALGOBLOCKS_report%20040622.pdf) | yAudit | Audit | 2022-03 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xa459da...45677e`](./contracts/bsc-56/0xa459daf69670ad1fe6d2834e9a6f852cf045677e/) | DCBVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd17481...30884a`](./contracts/bsc-56/0xd1748192ae1db982be2fb8c3e6d893c75330884a/) | DecubateMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc4754d...89cd2f`](./contracts/bsc-56/0xc4754dac9c047e3772ddffb8dc641bf15689cd2f/) | DecubateVestingV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
