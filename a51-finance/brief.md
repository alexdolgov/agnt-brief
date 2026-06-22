# Agentic Audit Brief: A51 Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 22.7% over 90 days

## Project Overview

- Project: A51 Finance (`a51-finance`)
- Website: [https://a51.finance/](https://a51.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T23:16:12.601Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: base, ethereum, linea, manta, polygon, polygon-zkevm
- Contract surface: 23 unique implementations (28 raw deployments)
- DeFi Llama TVL: $13,531.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

A51 Finance is a liquidity management protocol that automates Uniswap V3 position management. It offers active and passive vault strategies to optimize yields and reduce impermanent loss for liquidity providers.

### Architecture

V2 and V3 families operate independently but share the same deployer clusters and multi-chain deployment patterns. Both use factory/registry contracts to create and manage vault instances, with V3 introducing CLTBase vaults and CLTHelper periphery for concentrated liquidity.

## Contract Surface Quality

- Indexed contracts: 274; live-surface contracts included: 28 (8 live, 20 unknown).
- Excluded by liveness: 246 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v3
- Dependencies extracted: 12; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 9/17 (52.9%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 23
- Raw deployments: 28
- Audits discovered: 8
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Staleness: 0 fresh, 0 aging, 8 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 8 | 47.1% | 2023-02 |
| Hacken | Tier 2 | 1 | 5.9% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CLTBase | unknown | manta | n/a | 3 deployments: manta [`0x693170...d8c44c`](./contracts/manta-169/0x69317029384c3305fc04670c68a2b434e2d8c44c/); base `0xdfb179...105828`; linea `0xa8dc31...639576` | ✅ Audited |
| CLTModules | unknown | manta | n/a | [`0x634062...eedd55`](./contracts/manta-169/0x634062496b8ecc63d597401d81d11d5d24eedd55/) | ✅ Audited |
| GovernanceFeeHandler | unknown | manta | n/a | [`0x948a4d...1ab322`](./contracts/manta-169/0x948a4df3e32dd43208b111b27c592f90c41ab322/) | ✅ Audited |
| Modes | unknown | manta | n/a | [`0x599cbb...3af0bc`](./contracts/manta-169/0x599cbbce726a2d6a849364ab1a5b7ae1573af0bc/) | ✅ Audited |
| PoolActions | core_logic | manta | n/a | [`0x9d8059...b01053`](./contracts/manta-169/0x9d80597d9403bdb35b3d7d9f400377e790b01053/) | ✅ Audited |
| TransferHelper | periphery | manta | n/a | [`0x44ae07...fbeb97`](./contracts/manta-169/0x44ae07568378d2159ed41d0f060a3d6baefbeb97/) | ✅ Audited |
| UnipilotActiveFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x4b8e58...a5118f`](./contracts/ethereum-1/0x4b8e58d252ba251e044ec63125e83172eca5118f/); polygon `0x95b775...904708`; polygon `0xc99fa7...2fcece` | ✅ Audited |
| UnipilotPassiveFactory | registry | polygon | n/a | [`0xbd712d...31b16f`](./contracts/polygon-137/0xbd712d4dbd4b8d0cd2a98adb0f9fc2928031b16f/) | ✅ Audited |
| UserPositions | unknown | manta | n/a | [`0x3e0aa2...ef9da6`](./contracts/manta-169/0x3e0aa2e17fe3e5e319f388c794fdbc3c64ef9da6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| A51 | unknown | polygon | n/a | [`0xe9e7c0...e63ed0`](./contracts/polygon-137/0xe9e7c09e82328c3107d367f6c617cf9977e63ed0/) | ⚠️ Unaudited |
| CLTHelper | periphery | manta | n/a | 2 deployments: manta [`0xa1d818...830f81`](./contracts/manta-169/0xa1d8180f4482359ceb7eb7437fcf4a2616830f81/); manta `0xffd9ac...18de0b` | ⚠️ Unaudited |
| CLTTwapQuoter | periphery | manta | n/a | [`0x2935a2...39a227`](./contracts/manta-169/0x2935a23f015ce177d6cc6bacce189a2e0039a227/) | ⚠️ Unaudited |
| LiquidityShares | unknown | manta | n/a | [`0x7794a9...68a0e2`](./contracts/manta-169/0x7794a94ff4c4c6840cbf92b793092730a068a0e2/) | ⚠️ Unaudited |
| Pilot | unknown | ethereum | n/a | [`0x37c997...b99525`](./contracts/ethereum-1/0x37c997b35c619c21323f3518b9357914e8b99525/) | ⚠️ Unaudited |
| Position | unknown | manta | n/a | [`0xc203e4...f2b4dc`](./contracts/manta-169/0xc203e40fb4d742a0559705e33c9c2af41af2b4dc/) | ⚠️ Unaudited |
| RebaseModule | unknown | manta | n/a | [`0x86f571...a46093`](./contracts/manta-169/0x86f5714ecea724dc7a7a2bdc005ac36f08a46093/) | ⚠️ Unaudited |
| StrategyFeeShares | core_logic | manta | n/a | [`0xc22e20...c3ab1e`](./contracts/manta-169/0xc22e20950aa1f2e91fac75ab7fd8a21ef2c3ab1e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x16c6d2...220bd5` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x30beb7...f68e74` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x965356...cce7b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xbd712d...31b16f` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xbd7887...5e7052` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xc99fa7...2fcece` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Unipilot-Farming-V2-Audit.pdf](https://github.com/Unipilot/unipilot-audits/blob/master/FarmingV2/Unipilot-Farming-V2-Audit.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Final-Audit-Unipilot-Staking.pdf](https://github.com/Unipilot/unipilot-audits/blob/master/UnipilotStaking/Final-Audit-Unipilot-Staking.pdf) | unknown | Audit | 2022-06 | stale | Direct | contract_name | 0 | n/a |
| [Unipilot-V2-Final-Audit.pdf](https://github.com/Unipilot/unipilot-audits/blob/master/UnipilotV2/Unipilot-V2-Final-Audit.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 4 | high |
| [BlockApex First Audit.pdf](https://github.com/Unipilot/unipilot-audits/blob/master/protocolContract/BlockApex%20First%20Audit.pdf) | BlockApex | Audit | 2021-10 | stale | Direct | contract_name | 0 | n/a |
| [BlockApex Second Audit.pdf](https://github.com/Unipilot/unipilot-audits/blob/master/protocolContract/BlockApex%20Second%20Audit.pdf) | BlockApex | Audit | 2021-10 | stale | Direct | contract_name | 0 | n/a |
| [Hacken Audit Report.pdf](https://github.com/Unipilot/unipilot-audits/blob/master/protocolContract/Hacken%20Audit%20Report.pdf) | Hacken | Audit | 2021-10 | stale | Direct | contract_name | 1 | high |
| [Hacken Audit Second Review.pdf](https://github.com/Unipilot/unipilot-audits/blob/master/protocolContract/Hacken%20Audit%20Second%20Review.pdf) | Hacken | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |
| [A51 Finance Smart Contract Audit Report - Revised Report v2.pdf](https://github.com/a51finance/concentrated-liquidity-tool/blob/main/audits/Hashlock/A51%20Finance%20%20Smart%20Contract%20Audit%20Report%20-%20Revised%20Report%20v2.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 8 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xe9e7c0...e63ed0`](./contracts/polygon-137/0xe9e7c09e82328c3107d367f6c617cf9977e63ed0/) | A51 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xa1d818...830f81`](./contracts/manta-169/0xa1d8180f4482359ceb7eb7437fcf4a2616830f81/) | CLTHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x2935a2...39a227`](./contracts/manta-169/0x2935a23f015ce177d6cc6bacce189a2e0039a227/) | CLTTwapQuoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x7794a9...68a0e2`](./contracts/manta-169/0x7794a94ff4c4c6840cbf92b793092730a068a0e2/) | LiquidityShares | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37c997...b99525`](./contracts/ethereum-1/0x37c997b35c619c21323f3518b9357914e8b99525/) | Pilot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xc203e4...f2b4dc`](./contracts/manta-169/0xc203e40fb4d742a0559705e33c9c2af41af2b4dc/) | Position | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x86f571...a46093`](./contracts/manta-169/0x86f5714ecea724dc7a7a2bdc005ac36f08a46093/) | RebaseModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xc22e20...c3ab1e`](./contracts/manta-169/0xc22e20950aa1f2e91fac75ab7fd8a21ef2c3ab1e/) | StrategyFeeShares | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=117

Zero-match audit list:

- [12603] Unipilot-Farming-V2-Audit.pdf
- [12604] Final-Audit-Unipilot-Staking.pdf
- [12606] BlockApex First Audit.pdf
- [12607] BlockApex Second Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
