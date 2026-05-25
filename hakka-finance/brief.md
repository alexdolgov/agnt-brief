# Agentic Audit Brief: Hakka Finance

## Project Overview

- Project: Hakka Finance (`hakka-finance`)
- Website: [https://hakka.finance/](https://hakka.finance/)
- Lifecycle: active (Tier 0, 70.8% below peak)
- Generated: 2026-05-25T15:05:32.693Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: ethereum
- Contract surface: 52 unique implementations (71 raw deployments)
- DeFi Llama TVL: $4,741,232.83
- On-chain TVL (included contracts): $1,513,209.85
- TVL by chain: Ethereum $1,513,209.85

## Project Description

Hakka Finance is a decentralized finance protocol offering a suite of derivative and yield-generating products. It includes vaults for automated yield strategies, liquidity pools for stablecoin and token swaps, and staking mechanisms for governance and rewards.

### Architecture

The protocol's vaults (bVault) and liquidity pools (BAC pools, BPool) are the core yield-generating components, while staking contracts (HakkaRewards, MasterChef) distribute rewards in the form of tokens like BlackPoolToken and StakedBPT. Supporting contracts such as GuildBank and ThreeFMutual provide treasury management and mutual cover, sharing the same deployer clusters and token infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 9/49 (18.4%)
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 52
- Raw deployments: 71
- Audits discovered: 8
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $1,513,209.85
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 7 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 7 | 14.3% | 2021-03 |
| unknown | Tier 2 | 3 | 6.1% | 2022-01 |
| yAudit | Tier 2 | 2 | 4.1% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| blackholeswap | unknown | ethereum | 3 deployments: ethereum [`0x35101c...341935`](./contracts/ethereum-1/0x35101c731b1548b5e48bb23f99edbc2f5c341935/); ethereum `0x592ad4...a76853`; ethereum `0xd1cce7...e4ebad` | ✅ Audited |
| GuildBank | unknown | ethereum | 3 deployments: ethereum [`0x1e20b7...28a935`](./contracts/ethereum-1/0x1e20b7d24d429b0de705d3ff8b88ec651d28a935/); ethereum `0x83d0d8...bec8e7`; ethereum `0xd05336...8ad77a` | ✅ Audited |
| Hakka | unknown | ethereum | [`0x0e29e5...de3bcd`](./contracts/ethereum-1/0x0e29e5abbb5fd88e28b2d355774e73bd47de3bcd/) | ✅ Audited |
| HakkaRewardsVesting | operational_periphery | ethereum | 3 deployments: ethereum [`0x38ddc7...9826ea`](./contracts/ethereum-1/0x38ddc71bc1bfe2bc0d3c51e863a7ec3c6a9826ea/); ethereum `0x735a80...40c95a`; ethereum `0xf4d1f9...5b7977` | ✅ Audited |
| ImpermanentGain | unknown | ethereum | [`0xbf00da...64b6ab`](./contracts/ethereum-1/0xbf00da4ff7d13d678a0e897c683e79e99b64b6ab/) | ✅ Audited |
| InsuranceImprovementProposalProxy | unknown | ethereum | 2 deployments: ethereum [`0x5dd277...92448f`](./contracts/ethereum-1/0x5dd2777c42c34ed155fd3cc063a956d03f92448f/); ethereum `0x9933ad...530780` | ✅ Audited |
| TokenFactory | registry | ethereum | [`0x2efc35...f11715`](./contracts/ethereum-1/0x2efc352936d5c52b3ee061367c834bf768f11715/) | ✅ Audited |
| Underwriter | unknown | ethereum | [`0xe58cde...fa2357`](./contracts/ethereum-1/0xe58cde3cbeecc8d9306f482729084b909afa2357/) | ✅ Audited |
| VestingVault | operational_periphery | ethereum | [`0x51f123...238ed6`](./contracts/ethereum-1/0x51f12323820b3c0077864990d9e6ad9604238ed6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ArcxTokenV2 | token | ethereum | [`0x1321f1...9bb288`](./contracts/ethereum-1/0x1321f1f1aa541a56c31682c57b80ecfccd9bb288/) | ⚠️ Unaudited |
| bVault | core_logic | ethereum | 6 deployments: ethereum [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/); ethereum `0x378388...a35153`; ethereum `0x3fb6b0...15a2cc`; ethereum `0x750d30...7996d0`; ethereum `0x801690...85dc0e`; ethereum `0x8d9a39...ec6108` | ⚠️ Unaudited |
| BACDAIPool | core_logic | ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | ⚠️ Unaudited |
| BACUSDCPool | core_logic | ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | ⚠️ Unaudited |
| BACUSDTPool | core_logic | ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | ⚠️ Unaudited |
| StakingAccrualERC20V5 | token | ethereum | [`0x9bffad...fd7d9d`](./contracts/ethereum-1/0x9bffad7a6d5f52dbc51cae33e419793c72fd7d9d/) | ⚠️ Unaudited |
| BPool | core_logic | ethereum | 2 deployments: ethereum [`0x1b8874...d77016`](./contracts/ethereum-1/0x1b8874baceaafba9ea194a625d12e8b270d77016/); ethereum `0xae95d3...4a27dd` | ⚠️ Unaudited |
| BACSUSDPool | core_logic | ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | ⚠️ Unaudited |
| ERC20Peg | token | ethereum | [`0x76bac8...4c6e32`](./contracts/ethereum-1/0x76bac85e1e82cd677faa2b3f00c4a2626c4c6e32/) | ⚠️ Unaudited |
| ABDKMath64x64 | unknown | ethereum | [`0xe7e73e...15724a`](./contracts/ethereum-1/0xe7e73e8faa16b8bb551567bdd43314009e15724a/) | ⚠️ Unaudited |
| Agency | unknown | ethereum | [`0x7bc360...310ec3`](./contracts/ethereum-1/0x7bc360ebd65efa503ff189a0f81f61f85d310ec3/) | ⚠️ Unaudited |
| Airdrop | operational_periphery | ethereum | [`0xda5467...4f6de9`](./contracts/ethereum-1/0xda54678fd782a162a2bae0ea9e250a325c4f6de9/) | ⚠️ Unaudited |
| BACyCRVPool | core_logic | ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | ⚠️ Unaudited |
| bhsAlpha | unknown | ethereum | [`0x11baff...b1e534`](./contracts/ethereum-1/0x11baffebd829b490cf077ce7ef7700dd3cb1e534/) | ⚠️ Unaudited |
| BlackPoolToken | core_logic | ethereum | [`0x0ec9f7...7e37da`](./contracts/ethereum-1/0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da/) | ⚠️ Unaudited |
| DepositaryReceipt | unknown | ethereum | [`0x575a7e...dec326`](./contracts/ethereum-1/0x575a7e0fba8357b3061bc6ee2397f17e46dec326/) | ⚠️ Unaudited |
| DummyModel | unknown | ethereum | [`0xb8d161...8c1b65`](./contracts/ethereum-1/0xb8d16160c67b416d0c9c29f179edbcf1b58c1b65/) | ⚠️ Unaudited |
| FlashMigrator | periphery | ethereum | [`0x228679...441ae6`](./contracts/ethereum-1/0x228679770b2d8a281a466765ba55e0dfd8441ae6/) | ⚠️ Unaudited |
| Game | unknown | ethereum | [`0x938c66...749999`](./contracts/ethereum-1/0x938c66e7ec8eb3f98dd5203dc03cbdd0e0749999/) | ⚠️ Unaudited |
| HakkaIntelligenceAlpha | unknown | ethereum | [`0x0f2fd9...43140b`](./contracts/ethereum-1/0x0f2fd95c221770d108acd5363d25b06bdc43140b/) | ⚠️ Unaudited |
| HakkaRewards1 | unknown | ethereum | 2 deployments: ethereum [`0x047c21...1a6d6f`](./contracts/ethereum-1/0x047c216ebe3fa55544e04a72264e1016531a6d6f/); ethereum `0x6b1ecb...c3ff11` | ⚠️ Unaudited |
| HakkaRewards2 | unknown | ethereum | 2 deployments: ethereum [`0x6ee668...e52f27`](./contracts/ethereum-1/0x6ee6683cb9b44810369c873679f8073bcbe52f27/); ethereum `0xdfe604...18b16a` | ⚠️ Unaudited |
| HakkaRewards3 | unknown | ethereum | [`0x3792ee...5e00bf`](./contracts/ethereum-1/0x3792ee68e736b8214d4edc91b1b3340b525e00bf/) | ⚠️ Unaudited |
| HakkaRewards4 | unknown | ethereum | [`0x3bd145...a64645`](./contracts/ethereum-1/0x3bd145f66203b19ce7bedaac9a8147e08ea64645/) | ⚠️ Unaudited |
| HakkaRewards5 | unknown | ethereum | [`0x0aa6c4...d11058`](./contracts/ethereum-1/0x0aa6c4ff04e4e6512c5348f4b04685af2cd11058/) | ⚠️ Unaudited |
| HakkaVotingPower | unknown | ethereum | [`0x6aec51...71d04d`](./contracts/ethereum-1/0x6aec511339052dae3dc7b1ba0f4aa5f0b171d04d/) | ⚠️ Unaudited |
| InsuranceImprovementProposal | unknown | ethereum | 2 deployments: ethereum [`0x1b0924...d44308`](./contracts/ethereum-1/0x1b092450998c7e7eee91678a1d9cd6b7c7d44308/); ethereum `0x616305...8956b2` | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | ⚠️ Unaudited |
| sHakka | unknown | ethereum | 2 deployments: ethereum [`0xb92586...897a62`](./contracts/ethereum-1/0xb925863a15ebdeae1a638bf2b6fd00d4db897a62/); ethereum `0xd99588...f15040` | ⚠️ Unaudited |
| SquidFarmer | unknown | ethereum | [`0x4eda33...25501d`](./contracts/ethereum-1/0x4eda33ea48052006850966fc1182cf46f325501d/) | ⚠️ Unaudited |
| StakedBPT | token | ethereum | [`0x46c509...7b1ee2`](./contracts/ethereum-1/0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2/) | ⚠️ Unaudited |
| stakingRateModel | operational_periphery | ethereum | 2 deployments: ethereum [`0x3474b7...cb6a2d`](./contracts/ethereum-1/0x3474b74139c192d0781812ca70cc410d19cb6a2d/); ethereum `0x6d04ba...c741b2` | ⚠️ Unaudited |
| tCDP | unknown | ethereum | [`0xda4c9e...8aaf03`](./contracts/ethereum-1/0xda4c9ee8373fd1095379a3dd457a0c78968aaf03/) | ⚠️ Unaudited |
| TFToken | token | ethereum | [`0xbdda96...e9dee3`](./contracts/ethereum-1/0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3/) | ⚠️ Unaudited |
| ThankYouToken | token | ethereum | [`0x7f8093...3032d5`](./contracts/ethereum-1/0x7f8093f5f49a9d7f0334f8017ff777f1893032d5/) | ⚠️ Unaudited |
| ThreeFMutual | unknown | ethereum | [`0x66be1b...c6cb32`](./contracts/ethereum-1/0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32/) | ⚠️ Unaudited |
| TokenPool | core_logic | ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 2 deployments: ethereum [`0x570242...6507e5`](./contracts/ethereum-1/0x57024267e8272618f9c5037d373043a8646507e5/); ethereum `0x9f624b...980808` | ⚠️ Unaudited |
| votingPowerViewer | periphery | ethereum | [`0x072240...6c583c`](./contracts/ethereum-1/0x07224029d06a6973c93480a251862861416c583c/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | [`0xdf5e0e...d806a8`](./contracts/ethereum-1/0xdf5e0e81dff6faf3a7e52ba697820c5e32d806a8/) | ⚠️ Unaudited |

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
| ethereum | [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/) | bVault | core_logic | $300,315.24 | Verified native implementation with $300,315.24 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | BACDAIPool | core_logic | $88,280.57 | Verified native implementation with $88,280.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | BACUSDCPool | core_logic | $86,330.94 | Verified native implementation with $86,330.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | BACUSDTPool | core_logic | $71,162.70 | Verified native implementation with $71,162.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b8874...d77016`](./contracts/ethereum-1/0x1b8874baceaafba9ea194a625d12e8b270d77016/) | BPool | core_logic | $5,425.42 | Verified native implementation with $5,425.42 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | BACSUSDPool | core_logic | $10.00 | Verified native implementation with $10.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76bac8...4c6e32`](./contracts/ethereum-1/0x76bac85e1e82cd677faa2b3f00c4a2626c4c6e32/) | ERC20Peg | token | $2.00 | Verified native implementation with $2.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7bc360...310ec3`](./contracts/ethereum-1/0x7bc360ebd65efa503ff189a0f81f61f85d310ec3/) | Agency | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda5467...4f6de9`](./contracts/ethereum-1/0xda54678fd782a162a2bae0ea9e250a325c4f6de9/) | Airdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | BACyCRVPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11baff...b1e534`](./contracts/ethereum-1/0x11baffebd829b490cf077ce7ef7700dd3cb1e534/) | bhsAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec9f7...7e37da`](./contracts/ethereum-1/0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da/) | BlackPoolToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x575a7e...dec326`](./contracts/ethereum-1/0x575a7e0fba8357b3061bc6ee2397f17e46dec326/) | DepositaryReceipt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8d161...8c1b65`](./contracts/ethereum-1/0xb8d16160c67b416d0c9c29f179edbcf1b58c1b65/) | DummyModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x228679...441ae6`](./contracts/ethereum-1/0x228679770b2d8a281a466765ba55e0dfd8441ae6/) | FlashMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x938c66...749999`](./contracts/ethereum-1/0x938c66e7ec8eb3f98dd5203dc03cbdd0e0749999/) | Game | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f2fd9...43140b`](./contracts/ethereum-1/0x0f2fd95c221770d108acd5363d25b06bdc43140b/) | HakkaIntelligenceAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x047c21...1a6d6f`](./contracts/ethereum-1/0x047c216ebe3fa55544e04a72264e1016531a6d6f/) | HakkaRewards1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ee668...e52f27`](./contracts/ethereum-1/0x6ee6683cb9b44810369c873679f8073bcbe52f27/) | HakkaRewards2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3792ee...5e00bf`](./contracts/ethereum-1/0x3792ee68e736b8214d4edc91b1b3340b525e00bf/) | HakkaRewards3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bd145...a64645`](./contracts/ethereum-1/0x3bd145f66203b19ce7bedaac9a8147e08ea64645/) | HakkaRewards4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0aa6c4...d11058`](./contracts/ethereum-1/0x0aa6c4ff04e4e6512c5348f4b04685af2cd11058/) | HakkaRewards5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6aec51...71d04d`](./contracts/ethereum-1/0x6aec511339052dae3dc7b1ba0f4aa5f0b171d04d/) | HakkaVotingPower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b0924...d44308`](./contracts/ethereum-1/0x1b092450998c7e7eee91678a1d9cd6b7c7d44308/) | InsuranceImprovementProposal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb92586...897a62`](./contracts/ethereum-1/0xb925863a15ebdeae1a638bf2b6fd00d4db897a62/) | sHakka | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4eda33...25501d`](./contracts/ethereum-1/0x4eda33ea48052006850966fc1182cf46f325501d/) | SquidFarmer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46c509...7b1ee2`](./contracts/ethereum-1/0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2/) | StakedBPT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3474b7...cb6a2d`](./contracts/ethereum-1/0x3474b74139c192d0781812ca70cc410d19cb6a2d/) | stakingRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda4c9e...8aaf03`](./contracts/ethereum-1/0xda4c9ee8373fd1095379a3dd457a0c78968aaf03/) | tCDP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdda96...e9dee3`](./contracts/ethereum-1/0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3/) | TFToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f8093...3032d5`](./contracts/ethereum-1/0x7f8093f5f49a9d7f0334f8017ff777f1893032d5/) | ThankYouToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66be1b...c6cb32`](./contracts/ethereum-1/0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32/) | ThreeFMutual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | TokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x072240...6c583c`](./contracts/ethereum-1/0x07224029d06a6973c93480a251862861416c583c/) | votingPowerViewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 47 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=21

Zero-match audit list:

- [2557] Hakka Finance Vault contract wHakka audit.pdf
- [3436] Read Audit Report

Fork inheritance lineage and inherited audits are included when available.
