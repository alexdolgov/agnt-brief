# Agentic Audit Brief: THORSwap

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: THORSwap (`thorswap`)
- Website: [https://www.thorswap.finance/](https://www.thorswap.finance/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-14T05:41:40.076Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-39b4
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 45 unique implementations (90 raw deployments)
- DeFi Llama TVL: $12,576,995.78
- On-chain TVL (included contracts): $15,542,115.04
- TVL by chain: Ethereum $15,542,115.04

## Project Description

THORSwap is a decentralized exchange aggregator that enables cross-chain token swaps by leveraging the THORChain liquidity network. It provides users with a unified interface to trade assets across multiple blockchains without wrapped tokens or centralized intermediaries.

### Architecture

The THORSwap family shares the ThorToken as the base asset, with uTHOR, vTHOR, and yTHOR representing wrapped or staked variants used across the protocol's staking and governance mechanisms. These contracts are deployed from a common deployer cluster, indicating a unified infrastructure for token management.

## Audit Coverage Summary

- Verified implementations audited: 3/33 (9.1%)
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 3
- Unverified implementations: 12
- Unique implementations: 45
- Raw deployments: 90
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $15,542,115.04
- Latest audit: 2022-04 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $15,542,115.04 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 3 | 9.1% | 2022-04 |
| PeckShield | Tier 2 | 2 | 6.1% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TSAggregatorGeneric | unknown | ethereum | 5 deployments: ethereum [`0x0ccd5d...f63c3c`](./contracts/ethereum-1/0x0ccd5dd5bcf1af77dc358d1e2f06ee880ef63c3c/); ethereum `0x5727d8...7cd2ab`; ethereum `0x77cdf2...7abd95`; ethereum `0x97fce4...26cffc`; ethereum `0xd31f7e...c49fd2` | ✅ Audited |
| TSAggregatorTokenTransferProxy | token | polygon | 6 deployments: ethereum `0xf892fe...33abe8`; optimism `0x5505be...f9bf5a`; polygon [`0x542f4f...7573d7`](./contracts/polygon-137/0x542f4ffb7ebbc194ccbfd72ea92199a7f77573d7/); base `0x5505be...f9bf5a`; arbitrum `0x8baf33...c5d5f7`; avalanche `0x69ba88...d97156` | ✅ Audited |
| vTHOR | unknown | ethereum | [`0x815c23...c24d8d`](./contracts/ethereum-1/0x815c23eca83261b6ec689b60cc4a58b54bc24d8d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ThorToken | token | ethereum | [`0xa5f221...468044`](./contracts/ethereum-1/0xa5f2211b9b8170f694421f2046281775e8468044/) | ⚠️ Unaudited |
| RewardsForwarder | unknown | ethereum | [`0x8f6318...22b182`](./contracts/ethereum-1/0x8f631816043c8e8cad0c4c602bfe7bff1b22b182/) | ⚠️ Unaudited |
| SingleStaking | unknown | ethereum | 2 deployments: ethereum [`0x675563...b34922`](./contracts/ethereum-1/0x6755630c583f12ffbd10568eb633c0319db34922/); ethereum `0xae1fc3...88bc24` | ⚠️ Unaudited |
| SKChainflipHyperLiquid_V1 | unknown | arbitrum | [`0x00503a...cf4cd5`](./contracts/arbitrum-42161/0x00503ae0caefdec6d4ff54e4746f8e7543cf4cd5/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | 2 deployments: ethereum [`0x16d48d...4adbb1`](./contracts/ethereum-1/0x16d48dd0b0f4b824ba92c057452eb2a9c54adbb1/); ethereum `0xa82b8d...b46b75` | ⚠️ Unaudited |
| ThorchainSimpleAggregatorV5 | unknown | ethereum | [`0xcfbf2f...a0899d`](./contracts/ethereum-1/0xcfbf2f46ba0a9ec3382e80171ecf191de3a0899d/) | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | 2 deployments: ethereum [`0x0c3c9e...da2223`](./contracts/ethereum-1/0x0c3c9e5d9b08131dbd82a8648a23592b4dda2223/); ethereum `0xb54147...c0d25f` | ⚠️ Unaudited |
| TSAggregatorChainflip_V1 | unknown | ethereum | 2 deployments: ethereum [`0x029c7a...8b05ed`](./contracts/ethereum-1/0x029c7a9098d6efa723df308d3278211cd68b05ed/); ethereum `0xd917c3...06f1f1` | ⚠️ Unaudited |
| TSAggregatorChainflip_V2 | unknown | ethereum | [`0xe797be...99ecdc`](./contracts/ethereum-1/0xe797be356f833972fcc631b86ce30951e499ecdc/) | ⚠️ Unaudited |
| TSAggregatorChainflip_V3 | unknown | ethereum | [`0x104715...bfd1f5`](./contracts/ethereum-1/0x1047156a1a152672e287e7dfc9487c3566bfd1f5/) | ⚠️ Unaudited |
| TSAggregatorGeneric_V1 | unknown | arbitrum | 2 deployments: base `0xb1970f...7aaeed`; arbitrum [`0x6e5add...1b17ac`](./contracts/arbitrum-42161/0x6e5add41c751e89432cda5763156a3f41f1b17ac/) | ⚠️ Unaudited |
| TSAggregatorStargate | unknown | ethereum | 2 deployments: ethereum [`0x1204b5...8b8432`](./contracts/ethereum-1/0x1204b5bf0d6d48e718b1d9753a4166a7258b8432/); ethereum `0x48f68f...b86283` | ⚠️ Unaudited |
| TSAggregatorUniswap_V2 | unknown | arbitrum | [`0xe378fb...4fbb70`](./contracts/arbitrum-42161/0xe378fbded20d6a21a61a7b84189265f4944fbb70/) | ⚠️ Unaudited |
| TSAggregatorUniswapV2 | unknown | ethereum | 3 deployments: ethereum [`0x0fa226...d2ebcf`](./contracts/ethereum-1/0x0fa226e8bcf45ec2f3c3163d2d7ba0d2aad2ebcf/); ethereum `0x14d52a...fcf5bc`; ethereum `0x733454...03ccbc` | ⚠️ Unaudited |
| TSAggregatorUniswapV3 | unknown | ethereum | 3 deployments: ethereum [`0xbcd954...14acd5`](./contracts/ethereum-1/0xbcd954803163094590af749377c082619014acd5/); ethereum `0xd785eb...c604f1`; ethereum `0xde3205...8a7cba` | ⚠️ Unaudited |
| TSAggregatorUniswapV3_V1 | unknown | arbitrum | 4 deployments: arbitrum [`0x2f661f...632e60`](./contracts/arbitrum-42161/0x2f661fe1441fe5dd9197660c9030fe71b9632e60/); arbitrum `0x33d241...9c463b`; arbitrum `0x4d3285...00fec6`; arbitrum `0x50cbe1...d78012` | ⚠️ Unaudited |
| TSAggregatorUniswapV3_V2 | unknown | base | 3 deployments: base [`0x542f4f...7573d7`](./contracts/base-8453/0x542f4ffb7ebbc194ccbfd72ea92199a7f77573d7/); base `0x8772b3...0e9606`; base `0xd46ee2...dc48ef` | ⚠️ Unaudited |
| TSAirdrop | operational_periphery | ethereum | [`0x5505be...f9bf5a`](./contracts/ethereum-1/0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a/) | ⚠️ Unaudited |
| TSDistributor | operational_periphery | ethereum | [`0xf061e3...3e3528`](./contracts/ethereum-1/0xf061e3f6068cdbb3b1ab042d0e022c06fb3e3528/) | ⚠️ Unaudited |
| TSFeeDistributor_V2 | operational_periphery | ethereum | 2 deployments: ethereum [`0xd5060c...382d01`](./contracts/ethereum-1/0xd5060ca04efc02c9edc619f9047df1e1cb382d01/); ethereum `0xdfafdb...b419e5` | ⚠️ Unaudited |
| TSFeeDistributor_V3 | operational_periphery | ethereum | 2 deployments: ethereum [`0x546e7b...e04ba7`](./contracts/ethereum-1/0x546e7b1f4b4df6cdb19fbddff325133ebfe04ba7/); ethereum `0xfb6820...b87b6a` | ⚠️ Unaudited |
| TSLedgerAdapter | adapter | ethereum | 4 deployments: ethereum [`0x004d19...2187e5`](./contracts/ethereum-1/0x004d1979c0b5c838ff891973c2611670b82187e5/); ethereum `0x8fec55...47745e`; ethereum `0xad545d...4a9e78`; ethereum `0xb81c7c...6f4016` | ⚠️ Unaudited |
| TSSushiPoolDonator_V1 | core_logic | ethereum | [`0x699d70...db61e4`](./contracts/ethereum-1/0x699d70b24c3818aac83cb2c5bacfa93448db61e4/) | ⚠️ Unaudited |
| TSSwapGeneric | unknown | ethereum | 2 deployments: ethereum [`0x213255...5906e2`](./contracts/ethereum-1/0x213255345a740324cbce0242e32076ab735906e2/); ethereum `0x8ca20a...5601ed` | ⚠️ Unaudited |
| TSWrapperLedger_V1 | unknown | ethereum | 2 deployments: ethereum [`0x5e0068...78fb40`](./contracts/ethereum-1/0x5e006856aa4ee2e0158a1fe2158df5b37378fb40/); ethereum `0xe4e831...44d3d6` | ⚠️ Unaudited |
| uTHOR | unknown | ethereum | 2 deployments: ethereum [`0x34deff...e03588`](./contracts/ethereum-1/0x34deff97889f3a6a483e3b9255cafcb9a6e03588/); ethereum `0xdd294e...fd89a3` | ⚠️ Unaudited |
| yTHOR | unknown | ethereum | 2 deployments: ethereum [`0x8793cd...764775`](./contracts/ethereum-1/0x8793cd69895c45b2d2474236b3cb28fc5c764775/); ethereum `0xc01eb1...1e3d7f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (3)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TSAggregatorWoofi | unknown | polygon | 5 deployments: optimism `0x30912b...9aec2e`; polygon [`0x05d33c...d57afd`](./contracts/polygon-137/0x05d33ca8a90e89a1b091d78c8aa731e3dfd57afd/); base `0x30912b...9aec2e`; arbitrum `0xcd6f8b...626ceb`; avalanche `0x8772b3...0e9606` | ⚠️ Unaudited (bytecode match) |
| TSOracle_V1 | unknown | avalanche | 3 deployments: ethereum `0x849ec6...167d05`; ethereum `0xd0b385...02f28c`; avalanche [`0x17e7e5...da7d10`](./contracts/avalanche-43114/0x17e7e5016ac1d4527f211bebf5b11fe36bda7d10/) | ⚠️ Unaudited (bytecode match) |
| TSWrapperTCRouterV4_V1 | adapter | bsc | 7 deployments: ethereum `0x84fda6...6003a2`; ethereum `0x94b7f2...941ae7`; ethereum `0xa701ec...ffa454`; ethereum `0xc4a1d2...fa0653`; ethereum `0xdd40f1...5fa5a3`; bsc [`0x25bdf9...f69e72`](./contracts/bsc-56/0x25bdf9b9064f34ad943677d510ba5e2499f69e72/); avalanche `0xcbd658...795bfc` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x32459c...2b6e66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3f0274...b52310` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8235a7...c65078` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8526ce...01b46e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa2ae03...774311` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb60edc...870fca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb73b8e...8df0c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2b279...2fd0d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd10929...17c256` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec8bb7...9df06c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfb4db2...4bf6d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x55cf4d...db25b2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-THORSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-THORSwap-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 6 | high |
| [Audit Report](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-04 | stale | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa5f221...468044`](./contracts/ethereum-1/0xa5f2211b9b8170f694421f2046281775e8468044/) | ThorToken | token | $15,542,115.04 | Verified native implementation with $15,542,115.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f6318...22b182`](./contracts/ethereum-1/0x8f631816043c8e8cad0c4c602bfe7bff1b22b182/) | RewardsForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x675563...b34922`](./contracts/ethereum-1/0x6755630c583f12ffbd10568eb633c0319db34922/) | SingleStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00503a...cf4cd5`](./contracts/arbitrum-42161/0x00503ae0caefdec6d4ff54e4746f8e7543cf4cd5/) | SKChainflipHyperLiquid_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16d48d...4adbb1`](./contracts/ethereum-1/0x16d48dd0b0f4b824ba92c057452eb2a9c54adbb1/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcfbf2f...a0899d`](./contracts/ethereum-1/0xcfbf2f46ba0a9ec3382e80171ecf191de3a0899d/) | ThorchainSimpleAggregatorV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3c9e...da2223`](./contracts/ethereum-1/0x0c3c9e5d9b08131dbd82a8648a23592b4dda2223/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x029c7a...8b05ed`](./contracts/ethereum-1/0x029c7a9098d6efa723df308d3278211cd68b05ed/) | TSAggregatorChainflip_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe797be...99ecdc`](./contracts/ethereum-1/0xe797be356f833972fcc631b86ce30951e499ecdc/) | TSAggregatorChainflip_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x104715...bfd1f5`](./contracts/ethereum-1/0x1047156a1a152672e287e7dfc9487c3566bfd1f5/) | TSAggregatorChainflip_V3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6e5add...1b17ac`](./contracts/arbitrum-42161/0x6e5add41c751e89432cda5763156a3f41f1b17ac/) | TSAggregatorGeneric_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1204b5...8b8432`](./contracts/ethereum-1/0x1204b5bf0d6d48e718b1d9753a4166a7258b8432/) | TSAggregatorStargate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe378fb...4fbb70`](./contracts/arbitrum-42161/0xe378fbded20d6a21a61a7b84189265f4944fbb70/) | TSAggregatorUniswap_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fa226...d2ebcf`](./contracts/ethereum-1/0x0fa226e8bcf45ec2f3c3163d2d7ba0d2aad2ebcf/) | TSAggregatorUniswapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbcd954...14acd5`](./contracts/ethereum-1/0xbcd954803163094590af749377c082619014acd5/) | TSAggregatorUniswapV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f661f...632e60`](./contracts/arbitrum-42161/0x2f661fe1441fe5dd9197660c9030fe71b9632e60/) | TSAggregatorUniswapV3_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x542f4f...7573d7`](./contracts/base-8453/0x542f4ffb7ebbc194ccbfd72ea92199a7f77573d7/) | TSAggregatorUniswapV3_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x05d33c...d57afd`](./contracts/polygon-137/0x05d33ca8a90e89a1b091d78c8aa731e3dfd57afd/) | TSAggregatorWoofi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5505be...f9bf5a`](./contracts/ethereum-1/0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a/) | TSAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf061e3...3e3528`](./contracts/ethereum-1/0xf061e3f6068cdbb3b1ab042d0e022c06fb3e3528/) | TSDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd5060c...382d01`](./contracts/ethereum-1/0xd5060ca04efc02c9edc619f9047df1e1cb382d01/) | TSFeeDistributor_V2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x546e7b...e04ba7`](./contracts/ethereum-1/0x546e7b1f4b4df6cdb19fbddff325133ebfe04ba7/) | TSFeeDistributor_V3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x004d19...2187e5`](./contracts/ethereum-1/0x004d1979c0b5c838ff891973c2611670b82187e5/) | TSLedgerAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x17e7e5...da7d10`](./contracts/avalanche-43114/0x17e7e5016ac1d4527f211bebf5b11fe36bda7d10/) | TSOracle_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x699d70...db61e4`](./contracts/ethereum-1/0x699d70b24c3818aac83cb2c5bacfa93448db61e4/) | TSSushiPoolDonator_V1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x213255...5906e2`](./contracts/ethereum-1/0x213255345a740324cbce0242e32076ab735906e2/) | TSSwapGeneric | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e0068...78fb40`](./contracts/ethereum-1/0x5e006856aa4ee2e0158a1fe2158df5b37378fb40/) | TSWrapperLedger_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x25bdf9...f69e72`](./contracts/bsc-56/0x25bdf9b9064f34ad943677d510ba5e2499f69e72/) | TSWrapperTCRouterV4_V1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34deff...e03588`](./contracts/ethereum-1/0x34deff97889f3a6a483e3b9255cafcb9a6e03588/) | uTHOR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8793cd...764775`](./contracts/ethereum-1/0x8793cd69895c45b2d2474236b3cb28fc5c764775/) | yTHOR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=13

Fork inheritance lineage and inherited audits are included when available.
