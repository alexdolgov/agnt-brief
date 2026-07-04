# Agentic Audit Brief: A51 Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 27.4% over 90 days

## Project Overview

- Project: A51 Finance (`a51-finance`)
- Website: [https://a51.finance/](https://a51.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:52:57.874Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: base, ethereum, linea, manta, polygon, polygon-zkevm
- Contract surface: 26 unique implementations (49 raw deployments)
- DeFi Llama TVL: $13,042.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 36 project-authored contract(s) across 4 chain(s); 3 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 3 common project-authored base contract(s) (peripherypayments, owned, modetickscalculation). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 76; live-surface contracts included: 49 (38 live, 11 unknown).
- Excluded by liveness: 27 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 14/21 (66.7%)
- Deployed-live implementations: 21 of 26 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 14/24
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 26
- Raw deployments: 49
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 9 | 37.5% | 2023-02 |
| BlockApex | Tier 2 | 4 | 16.7% | 2021-10 |
| Hacken | Tier 2 | 1 | 4.2% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CLTBase | unknown | manta | n/a | 3 deployments: manta [`0x693170...d8c44c`](./contracts/manta-169/0x69317029384c3305fc04670c68a2b434e2d8c44c/); base `0xdfb179...105828`; linea `0xa8dc31...639576` | ✅ Audited |
| CLTModules | unknown | manta | n/a | [`0x634062...eedd55`](./contracts/manta-169/0x634062496b8ecc63d597401d81d11d5d24eedd55/) | ✅ Audited |
| GovernanceFeeHandler | unknown | manta | n/a | [`0x948a4d...1ab322`](./contracts/manta-169/0x948a4df3e32dd43208b111b27c592f90c41ab322/) | ✅ Audited |
| Modes | unknown | manta | n/a | [`0x599cbb...3af0bc`](./contracts/manta-169/0x599cbbce726a2d6a849364ab1a5b7ae1573af0bc/) | ✅ Audited |
| PoolActions | unknown | linea | n/a | 2 deployments: manta `0x9d8059...b01053`; linea [`0x9c225a...5000b5`](./contracts/linea-59144/0x9c225a02426e3229c073a6132e083561e95000b5/) | ✅ Audited |
| TransferHelper | unknown | linea | n/a | 2 deployments: manta `0x44ae07...fbeb97`; linea [`0x171c1c...b9b57e`](./contracts/linea-59144/0x171c1c6775ef30017879c2f43336e6f878b9b57e/) | ✅ Audited |
| ULMState | unknown | ethereum | n/a | [`0xc4a8ec...275464`](./contracts/ethereum-1/0xc4a8ec5b29a392dd6df0d18e07c33301e0275464/) | ✅ Audited |
| Unipilot | unknown | ethereum | n/a | [`0xde5bf9...b2b08c`](./contracts/ethereum-1/0xde5bf92e3372aa59c73ca7dfc6cec599e1b2b08c/) | ✅ Audited |
| UnipilotActiveFactory | registry | ethereum | n/a | 4 deployments: ethereum [`0x4b8e58...a5118f`](./contracts/ethereum-1/0x4b8e58d252ba251e044ec63125e83172eca5118f/); polygon `0x95b775...904708`; polygon `0xc99fa7...2fcece`; polygon `0xd12999...815c67` | ✅ Audited |
| UnipilotFarm | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6e6657...5220b8`](./contracts/ethereum-1/0x6e665791f0219a10a4d52ac0915931cf045220b8/); ethereum `0x8fddc4...309102` | ✅ Audited |
| UnipilotPassiveFactory | registry | polygon | n/a | [`0xbd712d...31b16f`](./contracts/polygon-137/0xbd712d4dbd4b8d0cd2a98adb0f9fc2928031b16f/) | ✅ Audited |
| UniStrategy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x381e3c...93edab`](./contracts/ethereum-1/0x381e3c53380db31adc8f1d2eb6a5a8ddf793edab/); ethereum `0x7b0909...1b21fd`; ethereum `0xbe46a8...f787b1`; ethereum `0xee899a...30d8e3` | ✅ Audited |
| UserPositions | unknown | manta | n/a | 2 deployments: manta [`0x3e0aa2...ef9da6`](./contracts/manta-169/0x3e0aa2e17fe3e5e319f388c794fdbc3c64ef9da6/); linea `0xafb178...ab6398` | ✅ Audited |
| V3Oracle | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1538e7...af2a11`](./contracts/ethereum-1/0x1538e779c6a25701c3cbc8133ee755f2adaf2a11/); ethereum `0x2148eb...e1f32f`; ethereum `0x458766...26221a` | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| A51 | unknown | polygon | n/a | [`0xe9e7c0...e63ed0`](./contracts/polygon-137/0xe9e7c09e82328c3107d367f6c617cf9977e63ed0/) | ⚠️ Unaudited |
| A51LiquidityLocker | unknown | polygon | n/a | [`0x0587d2...5697a5`](./contracts/polygon-137/0x0587d2b60af1ad9dce86c8f9495c759cb15697a5/) | ⚠️ Unaudited |
| CLTHelper | periphery | manta | n/a | 2 deployments: manta [`0xa1d818...830f81`](./contracts/manta-169/0xa1d8180f4482359ceb7eb7437fcf4a2616830f81/); manta `0xffd9ac...18de0b` | ⚠️ Unaudited |
| CLTTwapQuoter | periphery | manta | n/a | [`0x2935a2...39a227`](./contracts/manta-169/0x2935a23f015ce177d6cc6bacce189a2e0039a227/) | ⚠️ Unaudited |
| LiquidityMigrator | unknown | ethereum | n/a | [`0x809dad...7c3fbb`](./contracts/ethereum-1/0x809dad6cfcfa220028e462a494d4e6378c7c3fbb/) | ⚠️ Unaudited |
| LiquidityShares | unknown | manta | n/a | 2 deployments: manta [`0x7794a9...68a0e2`](./contracts/manta-169/0x7794a94ff4c4c6840cbf92b793092730a068a0e2/); linea `0xbd58d9...5ae147` | ⚠️ Unaudited |
| Pilot | unknown | ethereum | n/a | [`0x37c997...b99525`](./contracts/ethereum-1/0x37c997b35c619c21323f3518b9357914e8b99525/) | ⚠️ Unaudited |
| Position | unknown | linea | n/a | 2 deployments: manta `0xc203e4...f2b4dc`; linea [`0x0f7ee2...e8ab56`](./contracts/linea-59144/0x0f7ee2b5451bfba623314f8c94bbd965b3e8ab56/) | ⚠️ Unaudited |
| RebaseModule | unknown | manta | n/a | [`0x86f571...a46093`](./contracts/manta-169/0x86f5714ecea724dc7a7a2bdc005ac36f08a46093/) | ⚠️ Unaudited |
| StrategyFeeShares | unknown | linea | n/a | 2 deployments: manta `0xc22e20...c3ab1e`; linea [`0x6e7e83...956f51`](./contracts/linea-59144/0x6e7e838e20ed6657aaf1166f9b7a845565956f51/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x137eb3...1aede8` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | 6 deployments: polygon-zkevm `0x16c6d2...220bd5`; polygon-zkevm `0x30beb7...f68e74`; polygon-zkevm `0x965356...cce7b2`; polygon-zkevm `0xbd712d...31b16f`; polygon-zkevm `0xbd7887...5e7052`; polygon-zkevm `0xc99fa7...2fcece` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Unipilot-Farming-V2-Audit.pdf](https://github.com/Unipilot/unipilot-audits/blob/master/FarmingV2/Unipilot-Farming-V2-Audit.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 2 | high |
| [Final-Audit-Unipilot-Staking.pdf](https://github.com/Unipilot/unipilot-audits/blob/master/UnipilotStaking/Final-Audit-Unipilot-Staking.pdf) | unknown | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Unipilot-V2-Final-Audit.pdf](https://github.com/Unipilot/unipilot-audits/blob/master/UnipilotV2/Unipilot-V2-Final-Audit.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 2 | n/a |
| [BlockApex First Audit.pdf](https://github.com/Unipilot/unipilot-audits/blob/master/protocolContract/BlockApex%20First%20Audit.pdf) | BlockApex | Audit | 2021-10 | stale | Direct | contract_name | 9 | high |
| [BlockApex Second Audit.pdf](https://github.com/Unipilot/unipilot-audits/blob/master/protocolContract/BlockApex%20Second%20Audit.pdf) | BlockApex | Audit | 2021-10 | stale | Direct | contract_name | 9 | high |
| [Hacken Audit Report.pdf](https://github.com/Unipilot/unipilot-audits/blob/master/protocolContract/Hacken%20Audit%20Report.pdf) | Hacken | Audit | 2021-10 | stale | Direct | contract_name | 1 | n/a |
| [Hacken Audit Second Review.pdf](https://github.com/Unipilot/unipilot-audits/blob/master/protocolContract/Hacken%20Audit%20Second%20Review.pdf) | Hacken | Audit | 2021-11 | stale | Direct | contract_name | 1 | n/a |
| [A51 Finance Smart Contract Audit Report - Revised Report v2.pdf](https://github.com/a51finance/concentrated-liquidity-tool/blob/main/audits/Hashlock/A51%20Finance%20%20Smart%20Contract%20Audit%20Report%20-%20Revised%20Report%20v2.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 6 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xe9e7c0...e63ed0`](./contracts/polygon-137/0xe9e7c09e82328c3107d367f6c617cf9977e63ed0/) | A51 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0587d2...5697a5`](./contracts/polygon-137/0x0587d2b60af1ad9dce86c8f9495c759cb15697a5/) | A51LiquidityLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xa1d818...830f81`](./contracts/manta-169/0xa1d8180f4482359ceb7eb7437fcf4a2616830f81/) | CLTHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x2935a2...39a227`](./contracts/manta-169/0x2935a23f015ce177d6cc6bacce189a2e0039a227/) | CLTTwapQuoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x809dad...7c3fbb`](./contracts/ethereum-1/0x809dad6cfcfa220028e462a494d4e6378c7c3fbb/) | LiquidityMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x7794a9...68a0e2`](./contracts/manta-169/0x7794a94ff4c4c6840cbf92b793092730a068a0e2/) | LiquidityShares | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37c997...b99525`](./contracts/ethereum-1/0x37c997b35c619c21323f3518b9357914e8b99525/) | Pilot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0f7ee2...e8ab56`](./contracts/linea-59144/0x0f7ee2b5451bfba623314f8c94bbd965b3e8ab56/) | Position | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x86f571...a46093`](./contracts/manta-169/0x86f5714ecea724dc7a7a2bdc005ac36f08a46093/) | RebaseModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x6e7e83...956f51`](./contracts/linea-59144/0x6e7e838e20ed6657aaf1166f9b7a845565956f51/) | StrategyFeeShares | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: contract_name=10, extraction_exact=20

Zero-match audit list:

- [12604] Final-Audit-Unipilot-Staking.pdf

Fork inheritance lineage and inherited audits are included when available.
