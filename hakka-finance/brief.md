# Agentic Audit Brief: Hakka Finance

## Project Overview

- Project: Hakka Finance (`hakka-finance`)
- Website: [https://hakka.finance/](https://hakka.finance/)
- Lifecycle: active (Tier 0, 70.8% below peak)
- Generated: 2026-06-14T07:11:06.676Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-9bd7
- Chains: bsc, ethereum, polygon
- Contract surface: 41 unique implementations (67 raw deployments)
- DeFi Llama TVL: $3,703,772.48
- On-chain TVL (included contracts): $5,425.42
- TVL by chain: Ethereum $5,425.42

## Project Description

Hakka Finance is a DeFi ecosystem in the derivatives category. Its historically associated products include derivative and yield-related contracts, but current product claims such as specific vaults, swap pools, or staking systems should be tied only to verified Hakka-owned contracts and should exclude third-party dependencies or unrelated token/LP contracts.

### Architecture

The protocol's vaults (bVault) and liquidity pools (BAC pools, BPool) are the core yield-generating components, while staking contracts (HakkaRewards, MasterChef) distribute rewards in the form of tokens like BlackPoolToken and StakedBPT. Supporting contracts such as GuildBank and ThreeFMutual provide treasury management and mutual cover, sharing the same deployer clusters and token infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 9/38 (23.7%)
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 41
- Raw deployments: 67
- Audits discovered: 8
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $5,425.42
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 7 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 7 | 18.4% | 2021-03 |
| unknown | Tier 2 | 3 | 7.9% | 2022-01 |
| yAudit | Tier 2 | 2 | 5.3% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| blackholeswap | unknown | ethereum | 4 deployments: ethereum [`0x35101c...341935`](./contracts/ethereum-1/0x35101c731b1548b5e48bb23f99edbc2f5c341935/); ethereum `0x592ad4...a76853`; ethereum `0xd1cce7...e4ebad`; bsc `0x75192d...34ce7e` | ✅ Audited |
| GuildBank | unknown | ethereum | 3 deployments: ethereum [`0x1e20b7...28a935`](./contracts/ethereum-1/0x1e20b7d24d429b0de705d3ff8b88ec651d28a935/); ethereum `0x83d0d8...bec8e7`; ethereum `0xd05336...8ad77a` | ✅ Audited |
| Hakka | unknown | ethereum | [`0x0e29e5...de3bcd`](./contracts/ethereum-1/0x0e29e5abbb5fd88e28b2d355774e73bd47de3bcd/) | ✅ Audited |
| HakkaRewardsVesting | operational_periphery | ethereum | 4 deployments: ethereum [`0x38ddc7...9826ea`](./contracts/ethereum-1/0x38ddc71bc1bfe2bc0d3c51e863a7ec3c6a9826ea/); ethereum `0x735a80...40c95a`; ethereum `0xf4d1f9...5b7977`; bsc `0x79eb6f...c55f4a` | ✅ Audited |
| ImpermanentGain | unknown | ethereum | [`0xbf00da...64b6ab`](./contracts/ethereum-1/0xbf00da4ff7d13d678a0e897c683e79e99b64b6ab/) | ✅ Audited |
| InsuranceImprovementProposalProxy | unknown | ethereum | 2 deployments: ethereum [`0x5dd277...92448f`](./contracts/ethereum-1/0x5dd2777c42c34ed155fd3cc063a956d03f92448f/); ethereum `0x9933ad...530780` | ✅ Audited |
| TokenFactory | registry | ethereum | 2 deployments: ethereum [`0x2efc35...f11715`](./contracts/ethereum-1/0x2efc352936d5c52b3ee061367c834bf768f11715/); polygon `0x47ca21...0a4e95` | ✅ Audited |
| Underwriter | unknown | ethereum | [`0xe58cde...fa2357`](./contracts/ethereum-1/0xe58cde3cbeecc8d9306f482729084b909afa2357/) | ✅ Audited |
| VestingVault | operational_periphery | ethereum | 3 deployments: ethereum [`0x51f123...238ed6`](./contracts/ethereum-1/0x51f12323820b3c0077864990d9e6ad9604238ed6/); bsc `0x6dbff2...fa94dc`; polygon `0xec4b77...b8001a` | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BPool | core_logic | ethereum | 2 deployments: ethereum [`0x1b8874...d77016`](./contracts/ethereum-1/0x1b8874baceaafba9ea194a625d12e8b270d77016/); ethereum `0xae95d3...4a27dd` | ⚠️ Unaudited |
| ABDKMath64x64 | unknown | ethereum | [`0xe7e73e...15724a`](./contracts/ethereum-1/0xe7e73e8faa16b8bb551567bdd43314009e15724a/) | ⚠️ Unaudited |
| Agency | unknown | ethereum | [`0x7bc360...310ec3`](./contracts/ethereum-1/0x7bc360ebd65efa503ff189a0f81f61f85d310ec3/) | ⚠️ Unaudited |
| Airdrop | operational_periphery | ethereum | [`0xda5467...4f6de9`](./contracts/ethereum-1/0xda54678fd782a162a2bae0ea9e250a325c4f6de9/) | ⚠️ Unaudited |
| bhsAlpha | unknown | ethereum | [`0x11baff...b1e534`](./contracts/ethereum-1/0x11baffebd829b490cf077ce7ef7700dd3cb1e534/) | ⚠️ Unaudited |
| Burner | unknown | ethereum | [`0xde0231...c2b16d`](./contracts/ethereum-1/0xde02313f8bf17f31380c63e41cdecee98bc2b16d/) | ⚠️ Unaudited |
| DepositaryReceipt | unknown | ethereum | [`0x575a7e...dec326`](./contracts/ethereum-1/0x575a7e0fba8357b3061bc6ee2397f17e46dec326/) | ⚠️ Unaudited |
| DummyModel | unknown | ethereum | [`0xb8d161...8c1b65`](./contracts/ethereum-1/0xb8d16160c67b416d0c9c29f179edbcf1b58c1b65/) | ⚠️ Unaudited |
| FlashMigrator | periphery | ethereum | [`0x228679...441ae6`](./contracts/ethereum-1/0x228679770b2d8a281a466765ba55e0dfd8441ae6/) | ⚠️ Unaudited |
| Game | unknown | ethereum | [`0x938c66...749999`](./contracts/ethereum-1/0x938c66e7ec8eb3f98dd5203dc03cbdd0e0749999/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | polygon | [`0xb44c87...46eaa8`](./contracts/polygon-137/0xb44c87181fb2ae4a7794a67c833c09e58a46eaa8/) | ⚠️ Unaudited |
| HakkaHarvester | operational_periphery | bsc | 6 deployments: bsc [`0x3792ee...5e00bf`](./contracts/bsc-56/0x3792ee68e736b8214d4edc91b1b3340b525e00bf/); bsc `0x4d5054...291c56`; bsc `0x6a3093...4642c8`; bsc `0x8ba1c3...c53b96`; bsc `0x992c01...ed852c`; bsc `0xcb2131...99888e` | ⚠️ Unaudited |
| HakkaIntelligenceAlpha | unknown | ethereum | [`0x0f2fd9...43140b`](./contracts/ethereum-1/0x0f2fd95c221770d108acd5363d25b06bdc43140b/) | ⚠️ Unaudited |
| HakkaRewards1 | unknown | ethereum | 2 deployments: ethereum [`0x047c21...1a6d6f`](./contracts/ethereum-1/0x047c216ebe3fa55544e04a72264e1016531a6d6f/); ethereum `0x6b1ecb...c3ff11` | ⚠️ Unaudited |
| HakkaRewards2 | unknown | ethereum | 2 deployments: ethereum [`0x6ee668...e52f27`](./contracts/ethereum-1/0x6ee6683cb9b44810369c873679f8073bcbe52f27/); ethereum `0xdfe604...18b16a` | ⚠️ Unaudited |
| HakkaRewards3 | unknown | ethereum | [`0x3792ee...5e00bf`](./contracts/ethereum-1/0x3792ee68e736b8214d4edc91b1b3340b525e00bf/) | ⚠️ Unaudited |
| HakkaRewards4 | unknown | ethereum | [`0x3bd145...a64645`](./contracts/ethereum-1/0x3bd145f66203b19ce7bedaac9a8147e08ea64645/) | ⚠️ Unaudited |
| HakkaRewards5 | unknown | ethereum | [`0x0aa6c4...d11058`](./contracts/ethereum-1/0x0aa6c4ff04e4e6512c5348f4b04685af2cd11058/) | ⚠️ Unaudited |
| HakkaVotingPower | unknown | ethereum | [`0x6aec51...71d04d`](./contracts/ethereum-1/0x6aec511339052dae3dc7b1ba0f4aa5f0b171d04d/) | ⚠️ Unaudited |
| InsuranceImprovementProposal | unknown | ethereum | 2 deployments: ethereum [`0x1b0924...d44308`](./contracts/ethereum-1/0x1b092450998c7e7eee91678a1d9cd6b7c7d44308/); ethereum `0x616305...8956b2` | ⚠️ Unaudited |
| sHakka | unknown | bsc | 4 deployments: ethereum `0xb92586...897a62`; ethereum `0xd99588...f15040`; bsc [`0x51de1e...f29be6`](./contracts/bsc-56/0x51de1eef029b5cc1ef359e62aa98101f56f29be6/); polygon `0x7f8093...3032d5` | ⚠️ Unaudited |
| SquidFarmer | unknown | ethereum | [`0x4eda33...25501d`](./contracts/ethereum-1/0x4eda33ea48052006850966fc1182cf46f325501d/) | ⚠️ Unaudited |
| stakingRateModel | operational_periphery | ethereum | 2 deployments: ethereum [`0x3474b7...cb6a2d`](./contracts/ethereum-1/0x3474b74139c192d0781812ca70cc410d19cb6a2d/); ethereum `0x6d04ba...c741b2` | ⚠️ Unaudited |
| tCDP | unknown | ethereum | [`0xda4c9e...8aaf03`](./contracts/ethereum-1/0xda4c9ee8373fd1095379a3dd457a0c78968aaf03/) | ⚠️ Unaudited |
| TFToken | token | ethereum | [`0xbdda96...e9dee3`](./contracts/ethereum-1/0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3/) | ⚠️ Unaudited |
| ThankYouToken | token | ethereum | [`0x7f8093...3032d5`](./contracts/ethereum-1/0x7f8093f5f49a9d7f0334f8017ff777f1893032d5/) | ⚠️ Unaudited |
| ThreeFMutual | unknown | ethereum | [`0x66be1b...c6cb32`](./contracts/ethereum-1/0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 2 deployments: ethereum [`0x9c5999...b9957e`](./contracts/ethereum-1/0x9c5999653f44672336c2ef0a0008587fa8b9957e/); ethereum `0xb8b84c...5fa6a9` | ⚠️ Unaudited |
| votingPowerViewer | periphery | ethereum | [`0x072240...6c583c`](./contracts/ethereum-1/0x07224029d06a6973c93480a251862861416c583c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0a3e36...5bc5d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5113db...139089` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2f08a...0fa7b5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Hakka Finance Urban Giggle Audit.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka%20Finance%20Urban%20Giggle%20Audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 4 | high |
| [Hakka Finance Vault contract wHakka audit.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka%20Finance%20Vault%20contract%20wHakka%20audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |
| [Hakka_Finance_iGain_V2_Audit_Report.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka_Finance_iGain_V2_Audit_Report.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 1 | high |
| [PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf](https://github.com/hakkafinance/audit-reports/blob/main/PeckShield-Audit-Report-Hakka-3FMutual-v1.0%20(1).pdf) | PeckShield | Audit | 2020-09 | stale | Direct | contract_name | 3 | high |
| [PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf](https://github.com/hakkafinance/audit-reports/blob/main/PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 5 | high |
| [Smart Contract Security Audit Report - BlackHoleSwap.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Smart%20Contract%20Security%20Audit%20Report%20-%20BlackHoleSwap.pdf) | yAudit | Audit | 2020-09 | stale | Direct | contract_name | 4 | high |
| [peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf](https://github.com/hakkafinance/audit-reports/blob/main/peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | contract_name | 4 | high |
| [Read Audit Report](https://github.com/hakkafinance/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1b8874...d77016`](./contracts/ethereum-1/0x1b8874baceaafba9ea194a625d12e8b270d77016/) | BPool | core_logic | $5,425.42 | Verified native implementation with $5,425.42 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7bc360...310ec3`](./contracts/ethereum-1/0x7bc360ebd65efa503ff189a0f81f61f85d310ec3/) | Agency | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda5467...4f6de9`](./contracts/ethereum-1/0xda54678fd782a162a2bae0ea9e250a325c4f6de9/) | Airdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11baff...b1e534`](./contracts/ethereum-1/0x11baffebd829b490cf077ce7ef7700dd3cb1e534/) | bhsAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde0231...c2b16d`](./contracts/ethereum-1/0xde02313f8bf17f31380c63e41cdecee98bc2b16d/) | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x575a7e...dec326`](./contracts/ethereum-1/0x575a7e0fba8357b3061bc6ee2397f17e46dec326/) | DepositaryReceipt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8d161...8c1b65`](./contracts/ethereum-1/0xb8d16160c67b416d0c9c29f179edbcf1b58c1b65/) | DummyModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x228679...441ae6`](./contracts/ethereum-1/0x228679770b2d8a281a466765ba55e0dfd8441ae6/) | FlashMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x938c66...749999`](./contracts/ethereum-1/0x938c66e7ec8eb3f98dd5203dc03cbdd0e0749999/) | Game | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3792ee...5e00bf`](./contracts/bsc-56/0x3792ee68e736b8214d4edc91b1b3340b525e00bf/) | HakkaHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f2fd9...43140b`](./contracts/ethereum-1/0x0f2fd95c221770d108acd5363d25b06bdc43140b/) | HakkaIntelligenceAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x047c21...1a6d6f`](./contracts/ethereum-1/0x047c216ebe3fa55544e04a72264e1016531a6d6f/) | HakkaRewards1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ee668...e52f27`](./contracts/ethereum-1/0x6ee6683cb9b44810369c873679f8073bcbe52f27/) | HakkaRewards2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3792ee...5e00bf`](./contracts/ethereum-1/0x3792ee68e736b8214d4edc91b1b3340b525e00bf/) | HakkaRewards3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bd145...a64645`](./contracts/ethereum-1/0x3bd145f66203b19ce7bedaac9a8147e08ea64645/) | HakkaRewards4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0aa6c4...d11058`](./contracts/ethereum-1/0x0aa6c4ff04e4e6512c5348f4b04685af2cd11058/) | HakkaRewards5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6aec51...71d04d`](./contracts/ethereum-1/0x6aec511339052dae3dc7b1ba0f4aa5f0b171d04d/) | HakkaVotingPower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b0924...d44308`](./contracts/ethereum-1/0x1b092450998c7e7eee91678a1d9cd6b7c7d44308/) | InsuranceImprovementProposal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x51de1e...f29be6`](./contracts/bsc-56/0x51de1eef029b5cc1ef359e62aa98101f56f29be6/) | sHakka | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4eda33...25501d`](./contracts/ethereum-1/0x4eda33ea48052006850966fc1182cf46f325501d/) | SquidFarmer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3474b7...cb6a2d`](./contracts/ethereum-1/0x3474b74139c192d0781812ca70cc410d19cb6a2d/) | stakingRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda4c9e...8aaf03`](./contracts/ethereum-1/0xda4c9ee8373fd1095379a3dd457a0c78968aaf03/) | tCDP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdda96...e9dee3`](./contracts/ethereum-1/0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3/) | TFToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f8093...3032d5`](./contracts/ethereum-1/0x7f8093f5f49a9d7f0334f8017ff777f1893032d5/) | ThankYouToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66be1b...c6cb32`](./contracts/ethereum-1/0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32/) | ThreeFMutual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x072240...6c583c`](./contracts/ethereum-1/0x07224029d06a6973c93480a251862861416c583c/) | votingPowerViewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=21

Zero-match audit list:

- [2557] Hakka Finance Vault contract wHakka audit.pdf
- [14453] Read Audit Report

Fork inheritance lineage and inherited audits are included when available.
