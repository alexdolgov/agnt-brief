# Agentic Audit Brief: TG Casino

## Project Overview

- Project: TG Casino (`tg-casino`)
- Website: [https://token.tg.casino/staking](https://token.tg.casino/staking)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:49.896Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $1,196,930.08
- On-chain TVL (included contracts): $13,353,575.52
- TVL by chain: Ethereum $13,353,575.52

## Project Description

TG.Casino is a Telegram casino-associated project centered on the TGC token on Ethereum. The verified on-chain scope supports TGC token contracts and staking/profit-share related contracts, including staking and multi-staking components. Current evidence does not support describing the listed on-chain contracts as facilitating casino games or token-holder governance.

### Architecture

The TGC token is the central asset used across staking contracts. StakingManagerV5 and MultiStakingManagerV2 both interact with TGCToken, and are accessed via upgradeable proxies that share the same deployer cluster.

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 10 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 0/3 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/3 (33.3%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 4
- Audits discovered: 8
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 7 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Coinsult | Tier 2 | 1 | 33.3% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TGCToken | token | ethereum | n/a | 2 deployments: ethereum [`0x14bc78...b547b0`](./contracts/ethereum-1/0x14bc78f0e6b9854da2a92f43a0526b31ceb547b0/); ethereum `0x25b4f5...7cb7cf` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakingManagerV1 | governance | ethereum | n/a | [`0x21d6d6...540ae8`](./contracts/ethereum-1/0x21d6d6d6ffd8b68e94bf5159bb029635af540ae8/) | ⚠️ Unaudited |
| StakingManagerV2 | operational_periphery | ethereum | n/a | [`0xfad6ef...f77b42`](./contracts/ethereum-1/0xfad6ef2b6e30a4854b7fc2e3de09ba4c88f77b42/) | ⚠️ Unaudited |

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
| [Audit](https://github.com/Coinsult/solidity/blob/main/Coinsult_TG.Casino_0x25...b7cf_Audit.pdf) | Coinsult | Audit | 2023-09 | stale | Direct | contract_name | 2 | high |
| [TGB_PRESALE_12_11_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_PRESALE_12_11_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TGB_PreSaleV1_01_12_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_PreSaleV1_01_12_2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TGB_STAKING MANAGER_12_11_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_STAKING%20MANAGER_12_11_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TGB_StakingManager_01_12_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_StakingManager_01_12_2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TGB_TOKEN_12_11_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_TOKEN_12_11_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TGB_TOKEN_12_28_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_TOKEN_12_28_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TGB_Token_01_12_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_Token_01_12_2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x21d6d6...540ae8`](./contracts/ethereum-1/0x21d6d6d6ffd8b68e94bf5159bb029635af540ae8/) | StakingManagerV1 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfad6ef...f77b42`](./contracts/ethereum-1/0xfad6ef2b6e30a4854b7fc2e3de09ba4c88f77b42/) | StakingManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [11255] TGB_PRESALE_12_11_23.pdf
- [11256] TGB_PreSaleV1_01_12_2024.pdf
- [11257] TGB_STAKING MANAGER_12_11_23.pdf
- [11258] TGB_StakingManager_01_12_2024.pdf
- [11259] TGB_TOKEN_12_11_23.pdf
- [11260] TGB_TOKEN_12_28_23.pdf
- [11261] TGB_Token_01_12_2024.pdf

Fork inheritance lineage and inherited audits are included when available.
