# Agentic Audit Brief: 3F Mutual

## Project Overview

- Project: 3F Mutual (`3f-mutual`)
- Lifecycle: active (Tier 0, 55.8% below peak)
- Generated: 2026-05-23T23:03:38.080Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 25 unique implementations (31 raw deployments)
- DeFi Llama TVL: $4,074,059.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

3F Mutual is a decentralized insurance protocol on Ethereum that allows users to purchase coverage and pool risk. It provides a platform for mutual insurance where members share risk and receive payouts based on predefined conditions.

### Architecture

The protocol consists of a single product family with one core contract, so there are no cross-family relationships or shared infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/22 (0.0%)
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 25
- Raw deployments: 31
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Agency | unknown | ethereum | [`0x7bc360...310ec3`](./contracts/ethereum-1/0x7bc360ebd65efa503ff189a0f81f61f85d310ec3/) | ⚠️ Unaudited |
| Airdrop | operational_periphery | ethereum | [`0xda5467...4f6de9`](./contracts/ethereum-1/0xda54678fd782a162a2bae0ea9e250a325c4f6de9/) | ⚠️ Unaudited |
| bhsAlpha | unknown | ethereum | [`0x11baff...b1e534`](./contracts/ethereum-1/0x11baffebd829b490cf077ce7ef7700dd3cb1e534/) | ⚠️ Unaudited |
| DepositaryReceipt | unknown | ethereum | [`0x575a7e...dec326`](./contracts/ethereum-1/0x575a7e0fba8357b3061bc6ee2397f17e46dec326/) | ⚠️ Unaudited |
| DummyModel | unknown | ethereum | [`0xb8d161...8c1b65`](./contracts/ethereum-1/0xb8d16160c67b416d0c9c29f179edbcf1b58c1b65/) | ⚠️ Unaudited |
| FlashMigrator | periphery | ethereum | [`0x228679...441ae6`](./contracts/ethereum-1/0x228679770b2d8a281a466765ba55e0dfd8441ae6/) | ⚠️ Unaudited |
| Game | unknown | ethereum | [`0x938c66...749999`](./contracts/ethereum-1/0x938c66e7ec8eb3f98dd5203dc03cbdd0e0749999/) | ⚠️ Unaudited |
| GuildBank | unknown | ethereum | 3 deployments: ethereum [`0x1e20b7...28a935`](./contracts/ethereum-1/0x1e20b7d24d429b0de705d3ff8b88ec651d28a935/); ethereum `0x83d0d8...bec8e7`; ethereum `0xd05336...8ad77a` | ⚠️ Unaudited |
| ImpermanentGain | unknown | ethereum | [`0xbf00da...64b6ab`](./contracts/ethereum-1/0xbf00da4ff7d13d678a0e897c683e79e99b64b6ab/) | ⚠️ Unaudited |
| InsuranceImprovementProposal | unknown | ethereum | 2 deployments: ethereum [`0x1b0924...d44308`](./contracts/ethereum-1/0x1b092450998c7e7eee91678a1d9cd6b7c7d44308/); ethereum `0x616305...8956b2` | ⚠️ Unaudited |
| InsuranceImprovementProposalProxy | unknown | ethereum | 2 deployments: ethereum [`0x5dd277...92448f`](./contracts/ethereum-1/0x5dd2777c42c34ed155fd3cc063a956d03f92448f/); ethereum `0x9933ad...530780` | ⚠️ Unaudited |
| sHakka | unknown | ethereum | 2 deployments: ethereum [`0xb92586...897a62`](./contracts/ethereum-1/0xb925863a15ebdeae1a638bf2b6fd00d4db897a62/); ethereum `0xd99588...f15040` | ⚠️ Unaudited |
| SquidFarmer | unknown | ethereum | [`0x4eda33...25501d`](./contracts/ethereum-1/0x4eda33ea48052006850966fc1182cf46f325501d/) | ⚠️ Unaudited |
| stakingRateModel | operational_periphery | ethereum | 2 deployments: ethereum [`0x3474b7...cb6a2d`](./contracts/ethereum-1/0x3474b74139c192d0781812ca70cc410d19cb6a2d/); ethereum `0x6d04ba...c741b2` | ⚠️ Unaudited |
| tCDP | unknown | ethereum | [`0xda4c9e...8aaf03`](./contracts/ethereum-1/0xda4c9ee8373fd1095379a3dd457a0c78968aaf03/) | ⚠️ Unaudited |
| TFToken | token | ethereum | [`0xbdda96...e9dee3`](./contracts/ethereum-1/0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3/) | ⚠️ Unaudited |
| ThankYouToken | token | ethereum | [`0x7f8093...3032d5`](./contracts/ethereum-1/0x7f8093f5f49a9d7f0334f8017ff777f1893032d5/) | ⚠️ Unaudited |
| ThreeFMutual | unknown | ethereum | [`0x66be1b...c6cb32`](./contracts/ethereum-1/0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32/) | ⚠️ Unaudited |
| TokenFactory | registry | ethereum | [`0x2efc35...f11715`](./contracts/ethereum-1/0x2efc352936d5c52b3ee061367c834bf768f11715/) | ⚠️ Unaudited |
| Underwriter | unknown | ethereum | [`0xe58cde...fa2357`](./contracts/ethereum-1/0xe58cde3cbeecc8d9306f482729084b909afa2357/) | ⚠️ Unaudited |
| VestingVault | operational_periphery | ethereum | [`0x51f123...238ed6`](./contracts/ethereum-1/0x51f12323820b3c0077864990d9e6ad9604238ed6/) | ⚠️ Unaudited |
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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x7bc360...310ec3`](./contracts/ethereum-1/0x7bc360ebd65efa503ff189a0f81f61f85d310ec3/) | Agency | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda5467...4f6de9`](./contracts/ethereum-1/0xda54678fd782a162a2bae0ea9e250a325c4f6de9/) | Airdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11baff...b1e534`](./contracts/ethereum-1/0x11baffebd829b490cf077ce7ef7700dd3cb1e534/) | bhsAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x575a7e...dec326`](./contracts/ethereum-1/0x575a7e0fba8357b3061bc6ee2397f17e46dec326/) | DepositaryReceipt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8d161...8c1b65`](./contracts/ethereum-1/0xb8d16160c67b416d0c9c29f179edbcf1b58c1b65/) | DummyModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x228679...441ae6`](./contracts/ethereum-1/0x228679770b2d8a281a466765ba55e0dfd8441ae6/) | FlashMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x938c66...749999`](./contracts/ethereum-1/0x938c66e7ec8eb3f98dd5203dc03cbdd0e0749999/) | Game | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e20b7...28a935`](./contracts/ethereum-1/0x1e20b7d24d429b0de705d3ff8b88ec651d28a935/) | GuildBank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf00da...64b6ab`](./contracts/ethereum-1/0xbf00da4ff7d13d678a0e897c683e79e99b64b6ab/) | ImpermanentGain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b0924...d44308`](./contracts/ethereum-1/0x1b092450998c7e7eee91678a1d9cd6b7c7d44308/) | InsuranceImprovementProposal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dd277...92448f`](./contracts/ethereum-1/0x5dd2777c42c34ed155fd3cc063a956d03f92448f/) | InsuranceImprovementProposalProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb92586...897a62`](./contracts/ethereum-1/0xb925863a15ebdeae1a638bf2b6fd00d4db897a62/) | sHakka | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4eda33...25501d`](./contracts/ethereum-1/0x4eda33ea48052006850966fc1182cf46f325501d/) | SquidFarmer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3474b7...cb6a2d`](./contracts/ethereum-1/0x3474b74139c192d0781812ca70cc410d19cb6a2d/) | stakingRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdda96...e9dee3`](./contracts/ethereum-1/0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3/) | TFToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f8093...3032d5`](./contracts/ethereum-1/0x7f8093f5f49a9d7f0334f8017ff777f1893032d5/) | ThankYouToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66be1b...c6cb32`](./contracts/ethereum-1/0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32/) | ThreeFMutual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2efc35...f11715`](./contracts/ethereum-1/0x2efc352936d5c52b3ee061367c834bf768f11715/) | TokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe58cde...fa2357`](./contracts/ethereum-1/0xe58cde3cbeecc8d9306f482729084b909afa2357/) | Underwriter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51f123...238ed6`](./contracts/ethereum-1/0x51f12323820b3c0077864990d9e6ad9604238ed6/) | VestingVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x072240...6c583c`](./contracts/ethereum-1/0x07224029d06a6973c93480a251862861416c583c/) | votingPowerViewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
