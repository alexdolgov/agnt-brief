# Agentic Audit Brief: stake.link

## Project Overview

- Project: stake.link (`stake.link`)
- Website: [https://stake.link](https://stake.link)
- Lifecycle: active (Tier 0, 53.8% below peak)
- Generated: 2026-06-18T17:54:02.225Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-748f
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 25 unique implementations (67 raw deployments)
- DeFi Llama TVL: $67,100,095.00
- On-chain TVL (included contracts): $10,737,474.81
- TVL by chain: Ethereum $10,701,569.85 | Arbitrum $35,904.96

## Project Description

stake.link is primarily a Chainlink/LINK liquid staking protocol. It enables users to stake LINK and receive liquid staking-related tokens/derivatives, with additional auxiliary staking, rewards, vesting, and historical index-pool components where supported by current live contracts and documentation.

### Architecture

All staking families share common infrastructure such as StakingPool, PriorityPool, and WithdrawalPool contracts, which are reused across different strategies (Espresso, Polygon, LINK). Token contracts provide the wrapped staking derivatives that represent user positions, and governance contracts like FundFlowController and RebaseController manage rewards and rebasing across the protocol.

## Contract Surface Quality

- Indexed contracts: 197; live-surface contracts included: 67 (67 live, 0 unknown).
- Excluded by liveness: 74 inactive, 56 singleton, 0 uninitialized.
- Deployment units: 2/28 live.
- Detected codebases: none
- Dependencies extracted: 12; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 11/21 (52.4%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 25
- Raw deployments: 67
- Audits discovered: 20
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): $35,904.96
- Latest audit: 2026-03 (fresh)
- Staleness: 5 fresh, 7 aging, 8 stale, 0 unknown
- Tier 1 coverage: 33.3% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 7 | 33.3% | 2026-03 |
| Sigma Prime | Tier 2 | 5 | 23.8% | 2023-01 |
| unknown | Tier 2 | 4 | 19.0% | 2025-02 |
| Zellic | Tier 2 | 1 | 4.8% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WrappedSDToken | token | ethereum | n/a | 3 deployments: ethereum [`0x2091d8...9555e6`](./contracts/ethereum-1/0x2091d83592d79b4de5fd2ce3d98679c32a9555e6/); ethereum `0x43ff5f...f30a48`; ethereum `0x911d86...c803da` | ✅ Audited |
| LINKMigrator | periphery | ethereum | n/a | 2 deployments: ethereum [`0x08e11a...cf7786`](./contracts/ethereum-1/0x08e11a9a74e7acc51ace382b6d02abe8b7cf7786/); ethereum `0xda77b1...85fb15` | ✅ Audited |
| LSTRewardsSplitterController | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x5e1bfb...1f78c8`](./contracts/ethereum-1/0x5e1bfbb052c3f7bfe0e7386f435343982b1f78c8/); ethereum `0x73c433...72e154` | ✅ Audited |
| MerkleDistributor | operational_periphery | ethereum | n/a | [`0x6f6fb6...319ac0`](./contracts/ethereum-1/0x6f6fb6fbec4fb65a6535357d9d7e8f4f62319ac0/) | ✅ Audited |
| PriorityPool | core_logic | ethereum | n/a | [`0x855039...de1bc3`](./contracts/ethereum-1/0x855039b459cea56707a61e641110097623de1bc3/) | ✅ Audited |
| RebaseController | governance | ethereum | n/a | 3 deployments: ethereum [`0x1711e9...bdbec4`](./contracts/ethereum-1/0x1711e93eec78ba83d38c26f0ff284eb478bdbec4/); ethereum `0x5537f6...5ddb90`; ethereum `0xda669f...5b1c1f` | ✅ Audited |
| RewardsPoolWSD | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x4a18ae...490342`](./contracts/ethereum-1/0x4a18aea755bd2ec7c0b7dd6f065bbb3725490342/); ethereum `0x77f555...6b5a56`; ethereum `0x8753c0...f8cc72`; ethereum `0xd6dbdd...802c59` | ✅ Audited |
| SDLPool | core_logic | ethereum | unit-38593 | [`0x0b2ef9...48ca4d`](./contracts/ethereum-1/0x0b2ef910ad0b34bf575eb09d37fd7da6c148ca4d/) | ✅ Audited |
| SDLVesting | operational_periphery | ethereum | n/a | 19 deployments: ethereum [`0x02a0f6...ba3aba`](./contracts/ethereum-1/0x02a0f6242c43a3cb59e58d5fa7acd9e79bba3aba/); ethereum `0x03c1c1...b1ff94`; ethereum `0x08c1d7...26a8b9`; ethereum `0x378971...5f59df`; ethereum `0x4ccb44...119c86`; ethereum `0x506c02...5ee9c7`; ethereum `0x5eb140...c341e5`; ethereum `0x6185a7...2fcb3d`; ethereum `0x8aaf17...c9f7d5`; ethereum `0x8b5194...61024f`; ethereum `0x8b5256...becfe3`; ethereum `0xb03697...cfd1d4`; ethereum `0xb57b3d...864b02`; ethereum `0xe05edf...0252a6`; ethereum `0xe22ee6...93081a`; ethereum `0xe6476f...7e51e0`; ethereum `0xf12cea...14ea43`; ethereum `0xf509c9...2e3032`; ethereum `0xf7a813...9dc8f2` | ✅ Audited |
| StakingAllowance | operational_periphery | ethereum | n/a | [`0xa95c5e...a28c23`](./contracts/ethereum-1/0xa95c5ebb86e0de73b4fb8c47a45b792cfea28c23/) | ✅ Audited |
| StakingPool | core_logic | ethereum | n/a | [`0x9a9e3e...f3d314`](./contracts/ethereum-1/0x9a9e3e2b9c3a4a232c752875220be43f06f3d314/) | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BurnMintERC677 | token | arbitrum | n/a | 2 deployments: arbitrum [`0x3106e2...4972fb`](./contracts/arbitrum-42161/0x3106e2e148525b3db36795b04691d444c24972fb/); arbitrum `0xdfea35...d0eec0` | ⚠️ Unaudited |
| BurnMintERC20 | token | polygon | n/a | 5 deployments: polygon [`0x0f6c1f...fb6e84`](./contracts/polygon-137/0x0f6c1f639c76b8461476da030e654f25ddfb6e84/); polygon `0x1d0347...b4b2ae`; polygon `0x282d99...a52c54`; polygon `0x593722...aba494`; polygon `0xba754d...d8f553` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | polygon | n/a | [`0xb4d2c0...2376db`](./contracts/polygon-137/0xb4d2c033ea68674e56f6071b0d826d03152376db/) | ⚠️ Unaudited |
| EspressoRewardsConsumer | operational_periphery | ethereum | n/a | [`0xe69d92...6e33f9`](./contracts/ethereum-1/0xe69d92f6910b45da1d6ddfb380efaa6af56e33f9/) | ⚠️ Unaudited |
| FactoryBurnMintERC20 | registry | polygon | n/a | 3 deployments: polygon [`0xc271a1...c20a9c`](./contracts/polygon-137/0xc271a17db5ce6f53745a3f466077ec816bc20a9c/); base `0xe5b64a...ce26e6`; base `0xf2f790...771297` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-38610 | [`0xb351ec...22493d`](./contracts/ethereum-1/0xb351ec0feaf4b99fdfd36b484d9ec90d0422493d/) | ⚠️ Unaudited |
| GovernanceTimelock | governance | ethereum | n/a | [`0xb72d8f...78349f`](./contracts/ethereum-1/0xb72d8f5213b3e52faf13aa074b03c4788e78349f/) | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x20c0d7...37d461`](./contracts/ethereum-1/0x20c0d719c2ef30ff5ac6e822261ee655f037d461/); ethereum `0x28d314...f31b05`; ethereum `0x4a36c0...c5f68e`; ethereum `0x553636...e3a1bc`; polygon `0x48c5ca...4b4122` | ⚠️ Unaudited |
| LPOG2 | token | ethereum | n/a | [`0x226ef9...a6ccd8`](./contracts/ethereum-1/0x226ef92ca9c42ab3a786e434f19c8148efa6ccd8/) | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x7287d9...9a0997`](./contracts/ethereum-1/0x7287d90ed89d586d0d4b09f683c7f06a3e9a0997/); ethereum `0x8d0422...b3e8d9`; ethereum `0x8dbc80...5aefad`; ethereum `0xcc8f8f...4171cb`; ethereum `0xd9d1b5...ea2c6b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x452401...5945d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d577e...f33ce7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3cae0...f432dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c3b66...2950a8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [To ensure the highest level of security, stake.link employs a multi-layered defense strategy that goes beyond traditional audits. The protocol actively collaborates with two industry-leading security partners, Hypernative and Immunefi, for continuous, real-time protection. The Polygon contracts are also audited and can be [viewed here]().](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-07-02%5D%20Zellic%20-%20Polygon%20Staking.pdf) | Zellic | Audit | 2025-07 | fresh | Direct | contract_name | 2 | high |
| [[2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2022-08-01%5D%20Sigma%20Prime%20-%20Core%20Staking%20Contracts%20Report.pdf) | Sigma Prime | Audit | 2022-08 | stale | Direct | contract_name | 6 | high |
| [[2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-01-01%5D%20Sigma%20Prime%20-%20Core%20%26%20LINK%20Staking%20Report.pdf) | Sigma Prime | Audit | 2023-01 | stale | Direct | contract_name | 9 | high |
| [[2023-03-07] Cyfrin - LSD Index Pool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-03-07%5D%20Cyfrin%20-%20LSD%20Index%20Pool%20Report.pdf) | Cyfrin | Audit | 2023-03 | stale | Direct | contract_name | 0 | n/a |
| [[2023-08-06] Trust Security - SDLPool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-08-06%5D%20Trust%20Security%20-%20SDLPool%20Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 1 | high |
| [[2023-08-25] Cyfrin - Priority Pool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-08-25%5D%20Cyfrin%20-%20Priority%20Pool%20Report.pdf) | Cyfrin | Audit | 2023-08 | stale | Direct | contract_name | 1 | high |
| [[2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-10-01%5D%20Trust%20Security%20-%20Priority%20Pool%20%26%20LINK%20Staking%20v0.2%20Report.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | 2 | high |
| [[2024-04-30] Trust Security - Insurance Pool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-04-30%5D%20Trust%20Security%20-%20Insurance%20Pool%20Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [[2024-04-30] Trust Security - Metis Staking Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-04-30%5D%20Trust%20Security%20-%20Metis%20Staking%20Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [[2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-09-17%5D%20Cyfrin%20-%20LINK%20Staking%20Withdrawals.pdf) | Cyfrin | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [[2024-11-27] Codehawks - LINK Staking Withdrawals.md](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-11-27%5D%20Codehawks%20-%20LINK%20Staking%20Withdrawals.md) | Cyfrin | Audit | 2024-11 | aging | Direct | contract_name | 4 | high |
| [[2025-01-20] Cyfrin Staking Proxy.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-01-20%5D%20Cyfrin%20Staking%20Proxy.pdf) | Cyfrin | Audit | 2025-01 | aging | Direct | contract_name | 6 | high |
| [[2025-02-04] Trust - LINK Staking Withdrawals.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-02-04%5D%20Trust%20-%20LINK%20Staking%20Withdrawals.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 5 | high |
| [[2025-02-28] Cyfrin - CL Rewards Claiming.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-02-28%5D%20Cyfrin%20-%20CL%20Rewards%20Claiming.pdf) | Cyfrin | Audit | 2025-02 | aging | Direct | contract_name | 0 | n/a |
| [[2025-05-19] Cyfrin - Polygon Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-05-19%5D%20Cyfrin%20-%20Polygon%20Staking.pdf) | Cyfrin | Audit | 2025-05 | aging | Direct | contract_name | 0 | n/a |
| [[2025-06-04] Cyfrin - LINK Migrator.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-06-04%5D%20Cyfrin%20-%20LINK%20Migrator.pdf) | Cyfrin | Audit | 2025-06 | aging | Direct | contract_name | 3 | high |
| [[2025-08-02] Cyfrin - SDL Vesting.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-08-02%5D%20Cyfrin%20-%20SDL%20Vesting.pdf) | Cyfrin | Audit | 2025-08 | fresh | Direct | contract_name | 19 | high |
| [[2025-08-02] Cyfrin - Vesting.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-08-02%5D%20Cyfrin%20-%20Vesting.pdf) | Cyfrin | Audit | 2025-08 | fresh | Direct | contract_name | 19 | high |
| [[2026-02-04] Cyfrin - Espresso Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2026-02-04%5D%20Cyfrin%20-%20Espresso%20Staking.pdf) | Cyfrin | Audit | 2026-02 | fresh | Direct | contract_name | 0 | n/a |
| [[2026-03-23] Cyfrin - Rebase Batching.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2026-03-23%5D%20Cyfrin%20-%20Rebase%20Batching.pdf) | Cyfrin | Audit | 2026-03 | fresh | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe69d92...6e33f9`](./contracts/ethereum-1/0xe69d92f6910b45da1d6ddfb380efaa6af56e33f9/) | EspressoRewardsConsumer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb72d8f...78349f`](./contracts/ethereum-1/0xb72d8f5213b3e52faf13aa074b03c4788e78349f/) | GovernanceTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x226ef9...a6ccd8`](./contracts/ethereum-1/0x226ef92ca9c42ab3a786e434f19c8148efa6ccd8/) | LPOG2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7287d9...9a0997`](./contracts/ethereum-1/0x7287d90ed89d586d0d4b09f683c7f06a3e9a0997/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 4 |
| standard_library | 3 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=13
- Match method counts: extraction_exact=459

Zero-match audit list:

- [10454] [2023-03-07] Cyfrin - LSD Index Pool Report.pdf
- [10458] [2024-04-30] Trust Security - Insurance Pool Report.pdf
- [10459] [2024-04-30] Trust Security - Metis Staking Report.pdf
- [10464] [2025-02-28] Cyfrin - CL Rewards Claiming.pdf
- [10465] [2025-05-19] Cyfrin - Polygon Staking.pdf
- [10470] [2026-02-04] Cyfrin - Espresso Staking.pdf
- [10471] [2026-03-23] Cyfrin - Rebase Batching.pdf

Fork inheritance lineage and inherited audits are included when available.
