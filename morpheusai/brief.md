# Agentic Audit Brief: MorpheusAI

⚠️ Lifecycle status: DECLINING - TVL changed 53.7% over 90 days

## Project Overview

- Project: MorpheusAI (`morpheusai`)
- Website: [https://mor.org](https://mor.org)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-31T10:02:19.013Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: arbitrum, ethereum
- Contract surface: 47 unique implementations (96 raw deployments)
- DeFi Llama TVL: $29,557,739.01
- On-chain TVL (included contracts): $621.83
- TVL by chain: Ethereum $621.83

## Project Description

MorpheusAI is a decentralized AI agent protocol that allows users to deposit assets into pools to earn rewards and participate in AI agent operations. It uses a system of deposit pools, distributors, and reward mechanisms to facilitate staking and distribution of incentives across Ethereum and Arbitrum.

### Architecture

The DepositPool contracts on Ethereum and Arbitrum interact with DistributorV2 and RewardPool to manage staking and reward distribution. Cross-chain communication is handled by L1Sender/L2MessageReceiver pairs, while ChainLinkDataConsumer provides oracle data and FeeConfig manages protocol fees.

## Audit Coverage Summary

- Verified implementations audited: 0/47 (0.0%)
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 47
- Raw deployments: 96
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $621.83
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $621.83 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DepositPool | core_logic | ethereum | 7 deployments: ethereum [`0x3b5198...8cf116`](./contracts/ethereum-1/0x3b51989212bedab926794d6bf8e9e991218cf116/); ethereum `0x47176b...aa4790`; ethereum `0x6cce08...e4750e`; ethereum `0x9380d7...7cb384`; ethereum `0xccc067...d01532`; ethereum `0xdb10da...fbd670`; ethereum `0xde283f...277a42` | ⚠️ Unaudited |
| Builders | unknown | arbitrum | [`0x969c0f...e45382`](./contracts/arbitrum-42161/0x969c0f87623dc33010b4069fea48316ba2e45382/) | ⚠️ Unaudited |
| BuildersTreasury | operational_periphery | arbitrum | [`0x232c15...416aa1`](./contracts/arbitrum-42161/0x232c15275affa0ee944f6894d57e013647416aa1/) | ⚠️ Unaudited |
| BuildersTreasuryV2 | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x031075...aa9308`](./contracts/arbitrum-42161/0x031075f7a853e8d4bf0b525466a78374afaa9308/); arbitrum `0xcbe3d2...96e257` | ⚠️ Unaudited |
| BuildersV2 | unknown | arbitrum | [`0xa86031...c14fe6`](./contracts/arbitrum-42161/0xa8603114c7bce3a622f2d36286b29c6f51c14fe6/) | ⚠️ Unaudited |
| BuildersV3 | unknown | arbitrum | [`0xccc067...d01532`](./contracts/arbitrum-42161/0xccc06767533563fbdcff2e1800e4a266fbd01532/) | ⚠️ Unaudited |
| BuildersV4 | unknown | arbitrum | 2 deployments: arbitrum [`0x6cce08...e4750e`](./contracts/arbitrum-42161/0x6cce082851add4c535352f596662521b4de4750e/); arbitrum `0xc0ed68...bcff3f` | ⚠️ Unaudited |
| ChainLinkDataConsumer | unknown | ethereum | 3 deployments: ethereum [`0x18faef...7513b0`](./contracts/ethereum-1/0x18faef315b40a6d9cf49628f1133b1aa507513b0/); ethereum `0x2265ae...95ed50`; ethereum `0xd18226...3bbc5e` | ⚠️ Unaudited |
| DelegateFactory | registry | arbitrum | 2 deployments: arbitrum [`0x136538...cea76a`](./contracts/arbitrum-42161/0x136538a0d320a29e29fe661fb893714a0ecea76a/); arbitrum `0x37b94b...6eb7a5` | ⚠️ Unaudited |
| Delegation | unknown | arbitrum | [`0xe9d4b4...462d83`](./contracts/arbitrum-42161/0xe9d4b4eb60d16c90280ef93a823f373518462d83/) | ⚠️ Unaudited |
| Distribution | unknown | ethereum | 2 deployments: ethereum [`0x24c09a...ccc20b`](./contracts/ethereum-1/0x24c09a0c047e8a439f26682ea51c7157b3ccc20b/); ethereum `0x2e1ff1...0092b7` | ⚠️ Unaudited |
| DistributionExt | unknown | ethereum | 2 deployments: ethereum [`0x6948b5...d44f97`](./contracts/ethereum-1/0x6948b5f0bc85caf60859da2222a5483a84d44f97/); ethereum `0x6cfe1d...a224a9` | ⚠️ Unaudited |
| DistributionToArb | unknown | ethereum | [`0xc28172...4eaf57`](./contracts/ethereum-1/0xc281724c309118110d5d4073ff3cb732144eaf57/) | ⚠️ Unaudited |
| DistributionToArbV5 | unknown | ethereum | [`0xefb3af...36b6d0`](./contracts/ethereum-1/0xefb3af6505b343a206a39666884c25a07e36b6d0/) | ⚠️ Unaudited |
| DistributionToBase | unknown | ethereum | [`0x383ebf...d4f18e`](./contracts/ethereum-1/0x383ebffd2e6a956242392581d73f60dfb4d4f18e/) | ⚠️ Unaudited |
| DistributionToBaseV5 | unknown | ethereum | [`0x6db545...101dbc`](./contracts/ethereum-1/0x6db545f73e32a0ba6f100803a2f0dce044101dbc/) | ⚠️ Unaudited |
| DistributionV2 | unknown | ethereum | [`0x31bf07...783294`](./contracts/ethereum-1/0x31bf07f9c4316d461db35b2435f1bec21c783294/) | ⚠️ Unaudited |
| DistributionV3 | unknown | ethereum | [`0xaddd7b...f44ab9`](./contracts/ethereum-1/0xaddd7bbedd9dd2e72649217ea784069821f44ab9/) | ⚠️ Unaudited |
| DistributionV4 | unknown | ethereum | [`0x68b9d0...6da294`](./contracts/ethereum-1/0x68b9d05add55769b1e4808a74b616fa37f6da294/) | ⚠️ Unaudited |
| DistributionV5 | unknown | ethereum | [`0xc1292b...96720a`](./contracts/ethereum-1/0xc1292bed7df044c03d8f2cc6cb13d0bd6c96720a/) | ⚠️ Unaudited |
| Distributor | operational_periphery | ethereum | [`0x5b660a...b45f64`](./contracts/ethereum-1/0x5b660ab78f3ac743953f9e68630a2d66e7b45f64/) | ⚠️ Unaudited |
| DistributorV2 | operational_periphery | ethereum | 2 deployments: ethereum [`0x52f76e...dade03`](./contracts/ethereum-1/0x52f76e8be3dfabcc3b0ded02882a22be47dade03/); ethereum `0xdf1ac1...f64c7a` | ⚠️ Unaudited |
| FeeConfig | governance | ethereum | 4 deployments: ethereum [`0x33e689...1cae83`](./contracts/ethereum-1/0x33e689846b1f143793c9d270a26016615a1cae83/); ethereum `0x55daa9...2613eb`; arbitrum `0x873940...51ff0e`; arbitrum `0xc03d87...7eb895` | ⚠️ Unaudited |
| L1ArbSender | unknown | ethereum | [`0xc1588b...d2e90c`](./contracts/ethereum-1/0xc1588b245a3502a86fdbf0a0f51abac3bbd2e90c/) | ⚠️ Unaudited |
| L1BaseSender | unknown | ethereum | [`0xfe8882...8a1331`](./contracts/ethereum-1/0xfe8882edd2b7bad22d1968327fa19e17608a1331/) | ⚠️ Unaudited |
| L1FactoryToArb | registry | ethereum | 2 deployments: ethereum [`0x969c0f...e45382`](./contracts/ethereum-1/0x969c0f87623dc33010b4069fea48316ba2e45382/); ethereum `0xf6c6b6...64954c` | ⚠️ Unaudited |
| L1FactoryToBase | registry | ethereum | 2 deployments: ethereum [`0x890bfa...c4546c`](./contracts/ethereum-1/0x890bfa255e6ee8db5c67ab32dc600b14ebc4546c/); ethereum `0xa03ea6...d7f116` | ⚠️ Unaudited |
| L1Sender | unknown | ethereum | 2 deployments: ethereum [`0x6b1a3d...1ae9fe`](./contracts/ethereum-1/0x6b1a3d8f84094667e38247d6fca6f814e11ae9fe/); ethereum `0x845fbb...1088ee` | ⚠️ Unaudited |
| L1SenderV2 | unknown | ethereum | 3 deployments: ethereum [`0x2bc54c...66515a`](./contracts/ethereum-1/0x2bc54ca13a75b24630070e73173cc2f35d66515a/); ethereum `0x2efd44...e5ff84`; ethereum `0x50e80e...467d1f` | ⚠️ Unaudited |
| L1SenderV3 | unknown | ethereum | 2 deployments: ethereum [`0x6fd267...4ed75a`](./contracts/ethereum-1/0x6fd2674e13a42e588f83ae74e5f22a4ee24ed75a/); ethereum `0xa775b4...dfb78a` | ⚠️ Unaudited |
| L2Factory | registry | arbitrum | 2 deployments: arbitrum [`0x890bfa...c4546c`](./contracts/arbitrum-42161/0x890bfa255e6ee8db5c67ab32dc600b14ebc4546c/); arbitrum `0xa03ea6...d7f116` | ⚠️ Unaudited |
| L2MessageReceiver | unknown | arbitrum | 4 deployments: arbitrum [`0x2efd44...e5ff84`](./contracts/arbitrum-42161/0x2efd4430489e1a05a89c2f51811ac661b7e5ff84/); arbitrum `0x845fbb...1088ee`; arbitrum `0x9cbcea...3d41c7`; arbitrum `0xd4a8ec...77d427` | ⚠️ Unaudited |
| L2MessageReceiverV2 | unknown | arbitrum | [`0x7ec51d...56d699`](./contracts/arbitrum-42161/0x7ec51d81a30aa8449cb0b72d4c1b27062956d699/) | ⚠️ Unaudited |
| L2TokenReceiver | token | arbitrum | 2 deployments: arbitrum [`0x24c09a...ccc20b`](./contracts/arbitrum-42161/0x24c09a0c047e8a439f26682ea51c7157b3ccc20b/); arbitrum `0x383ebf...d4f18e` | ⚠️ Unaudited |
| L2TokenReceiverV2 | token | arbitrum | 4 deployments: arbitrum [`0x27353f...2d5ae4`](./contracts/arbitrum-42161/0x27353ffadfd53538e8bdf81be7041c56ce2d5ae4/); arbitrum `0x2e1ff1...0092b7`; arbitrum `0x47176b...aa4790`; arbitrum `0x9eba62...8fc561` | ⚠️ Unaudited |
| LinearDistributionIntervalDecrease | unknown | ethereum | 11 deployments: ethereum [`0x0e2bb6...37ee9a`](./contracts/ethereum-1/0x0e2bb6facf982ecb26bd448a758811a5cf37ee9a/); ethereum `0x14a623...68478c`; ethereum `0x2388be...f298ab`; ethereum `0x37b94b...6eb7a5`; ethereum `0x3a1673...f33303`; ethereum `0x7431ad...82b8e3`; ethereum `0x9cbcea...3d41c7`; ethereum `0xc6eaf7...72584d`; ethereum `0xfb1a7d...a4825c`; arbitrum `0x39e626...4d792a`; arbitrum `0x9380d7...7cb384` | ⚠️ Unaudited |
| LockMultiplierMath | unknown | ethereum | 2 deployments: ethereum [`0x345b8b...012cb0`](./contracts/ethereum-1/0x345b8b23c38f70f1d77560c60493bb583f012cb0/); arbitrum `0xde283f...277a42` | ⚠️ Unaudited |
| Marketplace | unknown | arbitrum | [`0xc37140...7f48a8`](./contracts/arbitrum-42161/0xc371404682a2e02c3b46814261bee615e57f48a8/) | ⚠️ Unaudited |
| ModelRegistry | registry | arbitrum | [`0x2e96ce...9a3996`](./contracts/arbitrum-42161/0x2e96cef46d2a82e63570b538ef4ab697a09a3996/) | ⚠️ Unaudited |
| MOR | unknown | arbitrum | [`0x7431ad...82b8e3`](./contracts/arbitrum-42161/0x7431ada8a591c955a994a21710752ef9b882b8e3/) | ⚠️ Unaudited |
| MOR20Deployer | unknown | arbitrum | [`0xfe8882...8a1331`](./contracts/arbitrum-42161/0xfe8882edd2b7bad22d1968327fa19e17608a1331/) | ⚠️ Unaudited |
| MOROFT | unknown | arbitrum | 3 deployments: ethereum `0xcbb8f1...9dcec0`; arbitrum [`0x092baa...bcfc86`](./contracts/arbitrum-42161/0x092baadb7def4c3981454dd9c0a0d7ff07bcfc86/); arbitrum `0x3c3a26...55786e` | ⚠️ Unaudited |
| ProviderRegistry | registry | arbitrum | [`0x8621e6...cb62a2`](./contracts/arbitrum-42161/0x8621e6b808a3d925533446b767b7bca6accb62a2/) | ⚠️ Unaudited |
| ProvidersDelegate | unknown | arbitrum | [`0xaddd7b...f44ab9`](./contracts/arbitrum-42161/0xaddd7bbedd9dd2e72649217ea784069821f44ab9/) | ⚠️ Unaudited |
| ReferrerLib | unknown | ethereum | 3 deployments: ethereum [`0x624966...7cdfbd`](./contracts/ethereum-1/0x62496604116c5172435adbd928edbf36ca7cdfbd/); ethereum `0x98c204...d36843`; ethereum `0x9a397c...6d2965` | ⚠️ Unaudited |
| RewardPool | core_logic | arbitrum | 4 deployments: ethereum `0xb7994d...d8df87`; ethereum `0xe30279...d88a75`; arbitrum [`0x281bc6...4b6375`](./contracts/arbitrum-42161/0x281bc6f84952abe53f6921dcd76c879d3c4b6375/); arbitrum `0x6ad6ef...830193` | ⚠️ Unaudited |
| SessionRouter | adapter | arbitrum | [`0xab493d...f96d4c`](./contracts/arbitrum-42161/0xab493d93bd9c93c7590865df82f4e09f3df96d4c/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x969c0f...e45382`](./contracts/arbitrum-42161/0x969c0f87623dc33010b4069fea48316ba2e45382/) | Builders | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x232c15...416aa1`](./contracts/arbitrum-42161/0x232c15275affa0ee944f6894d57e013647416aa1/) | BuildersTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x031075...aa9308`](./contracts/arbitrum-42161/0x031075f7a853e8d4bf0b525466a78374afaa9308/) | BuildersTreasuryV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa86031...c14fe6`](./contracts/arbitrum-42161/0xa8603114c7bce3a622f2d36286b29c6f51c14fe6/) | BuildersV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xccc067...d01532`](./contracts/arbitrum-42161/0xccc06767533563fbdcff2e1800e4a266fbd01532/) | BuildersV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6cce08...e4750e`](./contracts/arbitrum-42161/0x6cce082851add4c535352f596662521b4de4750e/) | BuildersV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x136538...cea76a`](./contracts/arbitrum-42161/0x136538a0d320a29e29fe661fb893714a0ecea76a/) | DelegateFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe9d4b4...462d83`](./contracts/arbitrum-42161/0xe9d4b4eb60d16c90280ef93a823f373518462d83/) | Delegation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24c09a...ccc20b`](./contracts/ethereum-1/0x24c09a0c047e8a439f26682ea51c7157b3ccc20b/) | Distribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6948b5...d44f97`](./contracts/ethereum-1/0x6948b5f0bc85caf60859da2222a5483a84d44f97/) | DistributionExt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc28172...4eaf57`](./contracts/ethereum-1/0xc281724c309118110d5d4073ff3cb732144eaf57/) | DistributionToArb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xefb3af...36b6d0`](./contracts/ethereum-1/0xefb3af6505b343a206a39666884c25a07e36b6d0/) | DistributionToArbV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x383ebf...d4f18e`](./contracts/ethereum-1/0x383ebffd2e6a956242392581d73f60dfb4d4f18e/) | DistributionToBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6db545...101dbc`](./contracts/ethereum-1/0x6db545f73e32a0ba6f100803a2f0dce044101dbc/) | DistributionToBaseV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31bf07...783294`](./contracts/ethereum-1/0x31bf07f9c4316d461db35b2435f1bec21c783294/) | DistributionV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaddd7b...f44ab9`](./contracts/ethereum-1/0xaddd7bbedd9dd2e72649217ea784069821f44ab9/) | DistributionV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68b9d0...6da294`](./contracts/ethereum-1/0x68b9d05add55769b1e4808a74b616fa37f6da294/) | DistributionV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1292b...96720a`](./contracts/ethereum-1/0xc1292bed7df044c03d8f2cc6cb13d0bd6c96720a/) | DistributionV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b660a...b45f64`](./contracts/ethereum-1/0x5b660ab78f3ac743953f9e68630a2d66e7b45f64/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52f76e...dade03`](./contracts/ethereum-1/0x52f76e8be3dfabcc3b0ded02882a22be47dade03/) | DistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1588b...d2e90c`](./contracts/ethereum-1/0xc1588b245a3502a86fdbf0a0f51abac3bbd2e90c/) | L1ArbSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe8882...8a1331`](./contracts/ethereum-1/0xfe8882edd2b7bad22d1968327fa19e17608a1331/) | L1BaseSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b1a3d...1ae9fe`](./contracts/ethereum-1/0x6b1a3d8f84094667e38247d6fca6f814e11ae9fe/) | L1Sender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bc54c...66515a`](./contracts/ethereum-1/0x2bc54ca13a75b24630070e73173cc2f35d66515a/) | L1SenderV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2efd44...e5ff84`](./contracts/arbitrum-42161/0x2efd4430489e1a05a89c2f51811ac661b7e5ff84/) | L2MessageReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7ec51d...56d699`](./contracts/arbitrum-42161/0x7ec51d81a30aa8449cb0b72d4c1b27062956d699/) | L2MessageReceiverV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x24c09a...ccc20b`](./contracts/arbitrum-42161/0x24c09a0c047e8a439f26682ea51c7157b3ccc20b/) | L2TokenReceiver | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27353f...2d5ae4`](./contracts/arbitrum-42161/0x27353ffadfd53538e8bdf81be7041c56ce2d5ae4/) | L2TokenReceiverV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e2bb6...37ee9a`](./contracts/ethereum-1/0x0e2bb6facf982ecb26bd448a758811a5cf37ee9a/) | LinearDistributionIntervalDecrease | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x345b8b...012cb0`](./contracts/ethereum-1/0x345b8b23c38f70f1d77560c60493bb583f012cb0/) | LockMultiplierMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc37140...7f48a8`](./contracts/arbitrum-42161/0xc371404682a2e02c3b46814261bee615e57f48a8/) | Marketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2e96ce...9a3996`](./contracts/arbitrum-42161/0x2e96cef46d2a82e63570b538ef4ab697a09a3996/) | ModelRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7431ad...82b8e3`](./contracts/arbitrum-42161/0x7431ada8a591c955a994a21710752ef9b882b8e3/) | MOR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfe8882...8a1331`](./contracts/arbitrum-42161/0xfe8882edd2b7bad22d1968327fa19e17608a1331/) | MOR20Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8621e6...cb62a2`](./contracts/arbitrum-42161/0x8621e6b808a3d925533446b767b7bca6accb62a2/) | ProviderRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaddd7b...f44ab9`](./contracts/arbitrum-42161/0xaddd7bbedd9dd2e72649217ea784069821f44ab9/) | ProvidersDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x624966...7cdfbd`](./contracts/ethereum-1/0x62496604116c5172435adbd928edbf36ca7cdfbd/) | ReferrerLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xab493d...f96d4c`](./contracts/arbitrum-42161/0xab493d93bd9c93c7590865df82f4e09f3df96d4c/) | SessionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
