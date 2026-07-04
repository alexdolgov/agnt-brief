# Agentic Audit Brief: MorpheusAI

## Project Overview

- Project: MorpheusAI (`morpheusai`)
- Website: [https://mor.org](https://mor.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:36.940Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, base, ethereum
- Contract surface: 50 unique implementations (108 raw deployments)
- DeFi Llama TVL: $19,900,852.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

AI Agents. Structurally: 53 project-authored contract(s) across 3 chain(s); 5 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 18 common project-authored base contract(s) (distribution, distributionv5, ownablediamondstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 132; live-surface contracts included: 107 (107 live, 0 unknown).
- Excluded by liveness: 25 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 40/49 (81.6%)
- Deployed-live implementations: 50 of 50 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 41/50
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 50
- Raw deployments: 108
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 16
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 7 aging, 9 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 41 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 32.7% (Code4rena, Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 37 | 74.0% | 2025-07 |
| Code4rena | Tier 1 | 10 | 20.0% | 2025-08 |
| Cyfrin | Tier 1 | 7 | 14.0% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (41)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BuildersV2 | unknown | base | n/a | 2 deployments: base [`0x6db545...101dbc`](./contracts/base-8453/0x6db545f73e32a0ba6f100803a2f0dce044101dbc/); arbitrum `0xa86031...c14fe6` | ✅ Audited |
| ChainLinkDataConsumer | unknown | ethereum | n/a | 3 deployments: ethereum [`0x18faef...7513b0`](./contracts/ethereum-1/0x18faef315b40a6d9cf49628f1133b1aa507513b0/); ethereum `0x2265ae...95ed50`; ethereum `0xd18226...3bbc5e` | ✅ Audited |
| DelegateFactory | registry | base | n/a | 2 deployments: base [`0x1b4836...4ff924`](./contracts/base-8453/0x1b48365e33802943b5d98954efabd366f04ff924/); base `0x3b5198...8cf116` | ✅ Audited |
| DelegateFactory | unknown | base | n/a | 2 deployments: base [`0x281bc6...4b6375`](./contracts/base-8453/0x281bc6f84952abe53f6921dcd76c879d3c4b6375/); base `0x6ad6ef...830193` | ✅ Audited |
| DelegateFactory | unknown | base | n/a | 2 deployments: base [`0x8aac72...b66aac`](./contracts/base-8453/0x8aac72b616420a7a9d76b11b56d841d2f5b66aac/); base `0xe16414...af5a91` | ✅ Audited |
| DelegateFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x136538...cea76a`](./contracts/arbitrum-42161/0x136538a0d320a29e29fe661fb893714a0ecea76a/); arbitrum `0x37b94b...6eb7a5` | ✅ Audited |
| DepositPool | unknown | ethereum | n/a | 7 deployments: ethereum [`0x3b5198...8cf116`](./contracts/ethereum-1/0x3b51989212bedab926794d6bf8e9e991218cf116/); ethereum `0x47176b...aa4790`; ethereum `0x6cce08...e4750e`; ethereum `0x9380d7...7cb384`; ethereum `0xccc067...d01532`; ethereum `0xdb10da...fbd670`; ethereum `0xde283f...277a42` | ✅ Audited |
| Distribution | unknown | ethereum | n/a | 2 deployments: ethereum [`0x24c09a...ccc20b`](./contracts/ethereum-1/0x24c09a0c047e8a439f26682ea51c7157b3ccc20b/); ethereum `0x2e1ff1...0092b7` | ✅ Audited |
| DistributionV2 | unknown | ethereum | n/a | [`0x31bf07...783294`](./contracts/ethereum-1/0x31bf07f9c4316d461db35b2435f1bec21c783294/) | ✅ Audited |
| DistributionV3 | unknown | ethereum | n/a | [`0xaddd7b...f44ab9`](./contracts/ethereum-1/0xaddd7bbedd9dd2e72649217ea784069821f44ab9/) | ✅ Audited |
| DistributionV4 | unknown | ethereum | n/a | [`0x68b9d0...6da294`](./contracts/ethereum-1/0x68b9d05add55769b1e4808a74b616fa37f6da294/) | ✅ Audited |
| DistributionV5 | unknown | ethereum | n/a | [`0xc1292b...96720a`](./contracts/ethereum-1/0xc1292bed7df044c03d8f2cc6cb13d0bd6c96720a/) | ✅ Audited |
| Distributor | operational_periphery | ethereum | n/a | [`0x5b660a...b45f64`](./contracts/ethereum-1/0x5b660ab78f3ac743953f9e68630a2d66e7b45f64/) | ✅ Audited |
| FeeConfig | unknown | ethereum | n/a | 2 deployments: ethereum [`0x33e689...1cae83`](./contracts/ethereum-1/0x33e689846b1f143793c9d270a26016615a1cae83/); ethereum `0x55daa9...2613eb` | ✅ Audited |
| FeeConfig | unknown | base | n/a | 2 deployments: base [`0x2e1ff1...0092b7`](./contracts/base-8453/0x2e1ff173085a5ef12046c27e442f12f79a0092b7/); base `0x845fbb...1088ee` | ✅ Audited |
| FeeConfig | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x873940...51ff0e`](./contracts/arbitrum-42161/0x8739402c1ee1868dfe92fda76f74ecfaaf51ff0e/); arbitrum `0xc03d87...7eb895` | ✅ Audited |
| L1Sender | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b1a3d...1ae9fe`](./contracts/ethereum-1/0x6b1a3d8f84094667e38247d6fca6f814e11ae9fe/); ethereum `0x845fbb...1088ee` | ✅ Audited |
| L1SenderV2 | unknown | ethereum | n/a | [`0x2bc54c...66515a`](./contracts/ethereum-1/0x2bc54ca13a75b24630070e73173cc2f35d66515a/) | ✅ Audited |
| L1SenderV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2efd44...e5ff84`](./contracts/ethereum-1/0x2efd4430489e1a05a89c2f51811ac661b7e5ff84/); ethereum `0x50e80e...467d1f` | ✅ Audited |
| L2Factory | unknown | base | n/a | 2 deployments: base [`0xd4a8ec...77d427`](./contracts/base-8453/0xd4a8eccbe696295e68572a98b1aa70aa9277d427/); base `0xe50009...0d76af` | ✅ Audited |
| L2Factory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x890bfa...c4546c`](./contracts/arbitrum-42161/0x890bfa255e6ee8db5c67ab32dc600b14ebc4546c/); arbitrum `0xa03ea6...d7f116` | ✅ Audited |
| L2MessageReceiver | unknown | base | n/a | 2 deployments: base [`0x19eef4...e6495d`](./contracts/base-8453/0x19eef40a364f754ee77cdfba0995a3fbf1e6495d/); base `0xb69dbf...299bad` | ✅ Audited |
| L2MessageReceiver | unknown | base | n/a | 2 deployments: base [`0x47176b...aa4790`](./contracts/base-8453/0x47176b2af9885dc6c4575d4efd63895f7aaa4790/); arbitrum `0x9cbcea...3d41c7` | ✅ Audited |
| L2MessageReceiver | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x2efd44...e5ff84`](./contracts/arbitrum-42161/0x2efd4430489e1a05a89c2f51811ac661b7e5ff84/); arbitrum `0x845fbb...1088ee`; arbitrum `0xd4a8ec...77d427` | ✅ Audited |
| L2TokenReceiver | unknown | arbitrum | n/a | 3 deployments: base `0x6b1a3d...1ae9fe`; arbitrum [`0x24c09a...ccc20b`](./contracts/arbitrum-42161/0x24c09a0c047e8a439f26682ea51c7157b3ccc20b/); arbitrum `0x383ebf...d4f18e` | ✅ Audited |
| L2TokenReceiverV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x27353f...2d5ae4`](./contracts/arbitrum-42161/0x27353ffadfd53538e8bdf81be7041c56ce2d5ae4/); arbitrum `0x47176b...aa4790` | ✅ Audited |
| L2TokenReceiverV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2e1ff1...0092b7`](./contracts/arbitrum-42161/0x2e1ff173085a5ef12046c27e442f12f79a0092b7/); arbitrum `0x9eba62...8fc561` | ✅ Audited |
| LinearDistributionIntervalDecrease | unknown | ethereum | n/a | 13 deployments: ethereum [`0x0e2bb6...37ee9a`](./contracts/ethereum-1/0x0e2bb6facf982ecb26bd448a758811a5cf37ee9a/); ethereum `0x14a623...68478c`; ethereum `0x2388be...f298ab`; ethereum `0x37b94b...6eb7a5`; ethereum `0x3a1673...f33303`; ethereum `0x7431ad...82b8e3`; ethereum `0x9cbcea...3d41c7`; ethereum `0xc6eaf7...72584d`; ethereum `0xfb1a7d...a4825c`; base `0x2265ae...95ed50`; base `0xdf1ac1...f64c7a`; arbitrum `0x39e626...4d792a`; arbitrum `0x9380d7...7cb384` | ✅ Audited |
| ModelRegistry | unknown | base | n/a | [`0xb7994d...d8df87`](./contracts/base-8453/0xb7994de339aee515c9b2792831cd83f3c9d8df87/) | ✅ Audited |
| MOR | unknown | arbitrum | n/a | 2 deployments: base `0x98e3cf...eaa20e`; arbitrum [`0x7431ad...82b8e3`](./contracts/arbitrum-42161/0x7431ada8a591c955a994a21710752ef9b882b8e3/) | ✅ Audited |
| MOROFT | unknown | arbitrum | n/a | 4 deployments: ethereum `0xcbb8f1...9dcec0`; base `0x7431ad...82b8e3`; arbitrum [`0x092baa...bcfc86`](./contracts/arbitrum-42161/0x092baadb7def4c3981454dd9c0a0d7ff07bcfc86/); arbitrum `0x3c3a26...55786e` | ✅ Audited |
| ProviderRegistry | unknown | base | n/a | [`0xe30279...d88a75`](./contracts/base-8453/0xe30279b79392aeff7fdf1883c23d52eba9d88a75/) | ✅ Audited |
| ProviderRegistry | unknown | arbitrum | n/a | [`0xde819a...a6c71b`](./contracts/arbitrum-42161/0xde819aaee474626e3f34ef0263373357e5a6c71b/) | ✅ Audited |
| ProvidersDelegate | unknown | base | n/a | 2 deployments: base [`0x031075...aa9308`](./contracts/base-8453/0x031075f7a853e8d4bf0b525466a78374afaa9308/); arbitrum `0xaddd7b...f44ab9` | ✅ Audited |
| ReferrerLib | unknown | ethereum | n/a | 3 deployments: ethereum [`0x624966...7cdfbd`](./contracts/ethereum-1/0x62496604116c5172435adbd928edbf36ca7cdfbd/); ethereum `0x98c204...d36843`; ethereum `0x9a397c...6d2965` | ✅ Audited |
| RewardPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb7994d...d8df87`](./contracts/ethereum-1/0xb7994de339aee515c9b2792831cd83f3c9d8df87/); ethereum `0xe30279...d88a75` | ✅ Audited |
| RewardPool | unknown | base | n/a | 2 deployments: base [`0x4de9d5...04909d`](./contracts/base-8453/0x4de9d52a6a951c2dc7b22805eeec2bc41404909d/); base `0xdc99a8...dc3980` | ✅ Audited |
| RewardPool | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x281bc6...4b6375`](./contracts/arbitrum-42161/0x281bc6f84952abe53f6921dcd76c879d3c4b6375/); arbitrum `0x6ad6ef...830193` | ✅ Audited |
| SessionRouter | unknown | base | n/a | 3 deployments: base [`0x174852...401578`](./contracts/base-8453/0x174852b955544986215f45d9ce161d5b35401578/); base `0x3ec0d9...a871d6`; arbitrum `0xab493d...f96d4c` | ✅ Audited |
| StETHMock | unknown | ethereum | n/a | [`0x7ec3dd...f31b79`](./contracts/ethereum-1/0x7ec3dda3e83ddd4b9f2cfcff0a5213bb8cf31b79/) | ✅ Audited |
| WStETHMock | unknown | ethereum | n/a | [`0x42bb44...7ef4b9`](./contracts/ethereum-1/0x42bb446eae6dca7723a9ebdb81ea88afe77ef4b9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Builders | unknown | base | n/a | 2 deployments: base [`0x7ec3dd...f31b79`](./contracts/base-8453/0x7ec3dda3e83ddd4b9f2cfcff0a5213bb8cf31b79/); arbitrum `0x969c0f...e45382` | ⚠️ Unaudited |
| BuildersV3 | unknown | base | n/a | 2 deployments: base [`0x2388be...f298ab`](./contracts/base-8453/0x2388bef44cd71f18e984b8dbe88e1db717f298ab/); arbitrum `0xccc067...d01532` | ⚠️ Unaudited |
| BuildersV4 | unknown | base | n/a | 2 deployments: base [`0x18faef...7513b0`](./contracts/base-8453/0x18faef315b40a6d9cf49628f1133b1aa507513b0/); base `0x42bb44...7ef4b9` | ⚠️ Unaudited |
| DistributionToArb | unknown | ethereum | n/a | [`0xc28172...4eaf57`](./contracts/ethereum-1/0xc281724c309118110d5d4073ff3cb732144eaf57/) | ⚠️ Unaudited |
| DistributionToArbV5 | unknown | ethereum | n/a | [`0xefb3af...36b6d0`](./contracts/ethereum-1/0xefb3af6505b343a206a39666884c25a07e36b6d0/) | ⚠️ Unaudited |
| DistributionToBase | unknown | ethereum | n/a | [`0x383ebf...d4f18e`](./contracts/ethereum-1/0x383ebffd2e6a956242392581d73f60dfb4d4f18e/) | ⚠️ Unaudited |
| DistributionToBaseV5 | unknown | ethereum | n/a | [`0x6db545...101dbc`](./contracts/ethereum-1/0x6db545f73e32a0ba6f100803a2f0dce044101dbc/) | ⚠️ Unaudited |
| LockMultiplierMath | unknown | ethereum | n/a | 3 deployments: ethereum [`0x345b8b...012cb0`](./contracts/ethereum-1/0x345b8b23c38f70f1d77560c60493bb583f012cb0/); base `0x98c204...d36843`; arbitrum `0xde283f...277a42` | ⚠️ Unaudited |
| LumerinDiamond | unknown | base | n/a | [`0x6abe1d...d3030a`](./contracts/base-8453/0x6abe1d282f72b474e54527d93b979a4f64d3030a/) | ⚠️ Unaudited |

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
| [Code4rena x Morpheus Capital V2 Audit Report.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Code4rena%20x%20Morpheus%20Capital%20V2%20Audit%20Report.pdf) | Code4rena | Contest | 2025-08 | fresh | Direct | contract_name | 24 | high |
| [MOR20 Contracts | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/MOR20%20Contracts%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-06 | stale | Direct | contract_name | 39 | high |
| [Morpheus Capital V2 Zenith Audit Report.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Morpheus%20Capital%20V2%20Zenith%20Audit%20Report.pdf) | yAudit | Audit | 2025-07 | aging | Direct | contract_name | 33 | high |
| [Morpheus BuildersV2 Audit Report | Trust Security.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Builders/Morpheus%20BuildersV2%20Audit%20Report%20%7C%20Trust%20Security.pdf) | yAudit | Audit | 2025-03 | aging | Direct | contract_name | 2 | high |
| [Morpheus Lumerin Audit Report 1 | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Compute/Morpheus%20Lumerin%20Audit%20Report%201%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-08 | aging | Direct | contract_name | 6 | high |
| [Morpheus Lumerin Audit Report 2 | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Compute/Morpheus%20Lumerin%20Audit%20Report%202%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-11 | aging | Direct | contract_name | 6 | high |
| [Morpheus Lumerin Audit Report 3 | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Compute/Morpheus%20Lumerin%20Audit%20Report%203%20%7C%20Renascence.pdf) | yAudit | Audit | 2025-01 | aging | Direct | contract_name | 16 | high |
| [Distribution V1 Audit | Community.md](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V1%20Audit%20%7C%20Community.md) | yAudit | Audit | n/a | unknown | Direct | contract_name | 29 | high |
| [Distribution V1 Public Bug Bounty | Code Hawks.md](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V1%20Public%20Bug%20Bounty%20%7C%20Code%20Hawks.md) | Cyfrin | Audit | 2024-02 | stale | Direct | contract_name | 12 | high |
| [Distribution V2 Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V2%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-01 | stale | Direct | contract_name | 27 | high |
| [Distribution V3 (Capital Staking) Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V3%20(Capital%20Staking)%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | 1 | high |
| [Distribution V3 (Code Staking) Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V3%20(Code%20Staking)%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-08 | aging | Direct | contract_name | 1 | high |
| [Distribution V4 (Claim Lock) Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V4%20(Claim%20Lock)%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [Distribution V5 (Referral Program) Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V5%20(Referral%20Program)%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | 2 | high |
| [L2TokenReceiverV2 Audit (Final) | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/L2%20Token%20Receiver%20V2/L2TokenReceiverV2%20Audit%20(Final)%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | 4 | high |
| [L2TokenReceiverV2 Audit (Initial) | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/L2%20Token%20Receiver%20V2/L2TokenReceiverV2%20Audit%20(Initial)%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-04 | stale | Direct | contract_name | 4 | high |
| [MOR Dynamic Minter Security Audit (Wormhole) | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/MOR%20OFT%20Token/MOR%20Dynamic%20Minter%20Security%20Audit%20(Wormhole)%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [MOR Token Contract | OpenZepellin.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/MOR%20OFT%20Token/MOR%20Token%20Contract%20%7C%20OpenZepellin.pdf) | yAudit | Audit | 2024-04 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x7ec3dd...f31b79`](./contracts/base-8453/0x7ec3dda3e83ddd4b9f2cfcff0a5213bb8cf31b79/) | Builders | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2388be...f298ab`](./contracts/base-8453/0x2388bef44cd71f18e984b8dbe88e1db717f298ab/) | BuildersV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x18faef...7513b0`](./contracts/base-8453/0x18faef315b40a6d9cf49628f1133b1aa507513b0/) | BuildersV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc28172...4eaf57`](./contracts/ethereum-1/0xc281724c309118110d5d4073ff3cb732144eaf57/) | DistributionToArb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xefb3af...36b6d0`](./contracts/ethereum-1/0xefb3af6505b343a206a39666884c25a07e36b6d0/) | DistributionToArbV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x383ebf...d4f18e`](./contracts/ethereum-1/0x383ebffd2e6a956242392581d73f60dfb4d4f18e/) | DistributionToBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6db545...101dbc`](./contracts/ethereum-1/0x6db545f73e32a0ba6f100803a2f0dce044101dbc/) | DistributionToBaseV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x345b8b...012cb0`](./contracts/ethereum-1/0x345b8b23c38f70f1d77560c60493bb583f012cb0/) | LockMultiplierMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6abe1d...d3030a`](./contracts/base-8453/0x6abe1d282f72b474e54527d93b979a4f64d3030a/) | LumerinDiamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=16
- Match method counts: extraction_exact=210

Zero-match audit list:

- [12369] Distribution V4 (Claim Lock) Audit | Renascence.pdf
- [12373] MOR Dynamic Minter Security Audit (Wormhole) | Renascence.pdf

Fork inheritance lineage and inherited audits are included when available.
