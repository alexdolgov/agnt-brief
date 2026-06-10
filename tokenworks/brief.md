# Agentic Audit Brief: TokenWorks

## Project Overview

- Project: TokenWorks (`tokenworks`)
- Website: [https://www.nftstrategy.fun/](https://www.nftstrategy.fun/)
- Lifecycle: active (Tier 0, 88.7% below peak)
- Generated: 2026-06-10T20:59:17.522Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 60 unique implementations (90 raw deployments)
- DeFi Llama TVL: $2,136,220.53
- On-chain TVL (included contracts): $0.00
- TVL by chain: Ethereum $0.00

## Project Description

TokenWorks' NFTStrategy creates strategy tokens for NFT collections. The strategy uses trading fees to buy floor NFTs, relist them for profit, burn token supply, and pay creator royalties. The live product should be described as a broader NFT collection strategy-token mechanism rather than as primarily CryptoPunks-only or as generic NFT yield/utility maximization.

### Architecture

The NFTStrategyFactory deploys and registers strategy contracts like PunkStrategy and PunkStrategyPatch, which interact with the external CryptoPunksMarket contract to manage CryptoPunks NFTs.

## Audit Coverage Summary

- Verified implementations audited: 0/33 (0.0%)
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 60
- Raw deployments: 90
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $0.00
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PunkStrategy | core_logic | ethereum | [`0xc50673...e33edf`](./contracts/ethereum-1/0xc50673edb3a7b94e8cad8a7d4e0cd68864e33edf/) | ⚠️ Unaudited |
| TenThousandTokens | token | ethereum | [`0x26d7ad...e2fb2e`](./contracts/ethereum-1/0x26d7ad0e930b54b84c00daad077ee31ba9e2fb2e/) | ⚠️ Unaudited |
| CabalClaim | unknown | ethereum | [`0xb0e2bf...b5afe6`](./contracts/ethereum-1/0xb0e2bf6301e8cb314772412204c1cc8d91b5afe6/) | ⚠️ Unaudited |
| ChecksFeeHandler | unknown | ethereum | [`0x989947...e190f3`](./contracts/ethereum-1/0x989947278a87b7a3e00ca258d7ed416711e190f3/) | ⚠️ Unaudited |
| ChimpStrategy | core_logic | ethereum | 3 deployments: ethereum [`0x070e12...4a1bfd`](./contracts/ethereum-1/0x070e12b6b522e337e3fbbb9d77d97e339f4a1bfd/); ethereum `0x317140...f890e6`; ethereum `0x9b1392...e421b5` | ⚠️ Unaudited |
| CrypToadzFeeHandler | unknown | ethereum | [`0x7b6e24...664daf`](./contracts/ethereum-1/0x7b6e249be854e65d9b320c2993a19fc034664daf/) | ⚠️ Unaudited |
| CryptoPunksMarket | unknown | ethereum | [`0xb47e3c...193bbb`](./contracts/ethereum-1/0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb/) | ⚠️ Unaudited |
| DemocratizingDeath | unknown | ethereum | [`0xa20ccd...5ae6af`](./contracts/ethereum-1/0xa20ccd62b33142fc357b6449422dd53c0d5ae6af/) | ⚠️ Unaudited |
| ERC1155Strategy | core_logic | ethereum | 3 deployments: ethereum [`0x96893a...57d251`](./contracts/ethereum-1/0x96893a8568e0e5377a75137eb5d1d82f2057d251/); ethereum `0xb7d8a9...97fc32`; ethereum `0xdd08d4...fe2f31` | ⚠️ Unaudited |
| ERC1155StrategyFactory | registry | ethereum | [`0x698ba0...f5328d`](./contracts/ethereum-1/0x698ba054a8dd4535753aa14e6d67ddaa59f5328d/) | ⚠️ Unaudited |
| ERC20Strategy | core_logic | ethereum | 4 deployments: ethereum [`0x322a52...3adc34`](./contracts/ethereum-1/0x322a52637848bafb39a4b2137872abc01b3adc34/); ethereum `0xb1a301...8de510`; ethereum `0xce9f36...2e9495`; ethereum `0xe5a963...f1a2a5` | ⚠️ Unaudited |
| ERC20StrategyFactory | registry | ethereum | [`0x9f834e...000a0a`](./contracts/ethereum-1/0x9f834e16b709c0781537186e7bb09de42a000a0a/) | ⚠️ Unaudited |
| FundingWorks | unknown | ethereum | [`0xb33d80...dcd5a6`](./contracts/ethereum-1/0xb33d806a94b6770c9d309e0842a75f8e6edcd5a6/) | ⚠️ Unaudited |
| FundingWorksFactory | registry | ethereum | 4 deployments: ethereum [`0x2b591c...2e119d`](./contracts/ethereum-1/0x2b591c6de84fbcdbfd4813f9ae263c9e872e119d/); ethereum `0x67c8a7...0b8b4c`; ethereum `0xa4cde7...091783`; ethereum `0xccf047...6567b2` | ⚠️ Unaudited |
| FundingWorksFeeSplit | unknown | ethereum | [`0x27119c...29e499`](./contracts/ethereum-1/0x27119c7b63b85ab587850120c16f0cda9229e499/) | ⚠️ Unaudited |
| FundingWorksRenderer | unknown | ethereum | [`0x7d8d61...ca6ada`](./contracts/ethereum-1/0x7d8d619bc2b65f3405c1170331fc3637d5ca6ada/) | ⚠️ Unaudited |
| FundingWorksSignature | unknown | ethereum | [`0x38b2d2...3498ed`](./contracts/ethereum-1/0x38b2d254cd935ac6f5a1be4ce2847b2ac63498ed/) | ⚠️ Unaudited |
| FW2Token | token | ethereum | [`0xe1f5f8...0ddd2b`](./contracts/ethereum-1/0xe1f5f8ccccb6524e7d91fc4ed2395981c20ddd2b/) | ⚠️ Unaudited |
| GlobalDistributorHandler | operational_periphery | ethereum | [`0xdf99bd...b09b2d`](./contracts/ethereum-1/0xdf99bd1218e7eb288cffecf9775385167bb09b2d/) | ⚠️ Unaudited |
| HeftUpgradable | unknown | ethereum | 4 deployments: ethereum [`0x5515c4...1544bd`](./contracts/ethereum-1/0x5515c4bf85d9dd3ed0f2d8f1bbc3bd78421544bd/); ethereum `0x6834fb...144e45`; ethereum `0x7f722c...3ea292`; ethereum `0x8279cd...b17a22` | ⚠️ Unaudited |
| MaxPainFeeHandler | unknown | ethereum | 2 deployments: ethereum [`0x15e869...0baa08`](./contracts/ethereum-1/0x15e869f13e941eeb84069e5c6f22294f260baa08/); ethereum `0x7aca54...ebacff` | ⚠️ Unaudited |
| NFTStrategy | core_logic | ethereum | 6 deployments: ethereum [`0x31e9de...6442a2`](./contracts/ethereum-1/0x31e9de22a08bafa9a8e292087be9dace2e6442a2/); ethereum `0x3e1717...09bca1`; ethereum `0x4839e6...bfbb74`; ethereum `0x60b30f...b38742`; ethereum `0x7ac395...2a3746`; ethereum `0xe21f59...556da2` | ⚠️ Unaudited |
| NFTStrategyFactory | registry | ethereum | 6 deployments: ethereum [`0x12405f...7599a3`](./contracts/ethereum-1/0x12405f0de64393d863699cf954d790a44b7599a3/); ethereum `0x196678...64390d`; ethereum `0x6c108b...83b70a`; ethereum `0x84cf6b...9faec3`; ethereum `0xa1a196...3c22e5`; ethereum `0xd1b396...fc0636` | ⚠️ Unaudited |
| NFTStrategyRangeFactory | registry | ethereum | [`0x05852e...d975ff`](./contracts/ethereum-1/0x05852ed6b0397f252969ec6a92b26c725bd975ff/) | ⚠️ Unaudited |
| OtherdeedSplit | unknown | ethereum | [`0xae6db0...c30d69`](./contracts/ethereum-1/0xae6db040aeab35150296e4eca5041aa32bc30d69/) | ⚠️ Unaudited |
| PunkStrategyFinalOwner | core_logic | ethereum | [`0x8dccff...f17545`](./contracts/ethereum-1/0x8dccff56723269693ec237a7b3d720e9abf17545/) | ⚠️ Unaudited |
| PunkStrategyPatch | core_logic | ethereum | [`0x1244ea...ba4838`](./contracts/ethereum-1/0x1244eae9fa2c064453b5f605d708c0a0bfba4838/) | ⚠️ Unaudited |
| RecursiveStrategy | operational_periphery | ethereum | [`0xd9e9f4...465481`](./contracts/ethereum-1/0xd9e9f443f653bd72e44a87ea6cb27b9721465481/) | ⚠️ Unaudited |
| RipeStrategy | core_logic | ethereum | 2 deployments: ethereum [`0x7212ed...6c5ff8`](./contracts/ethereum-1/0x7212eda151e8ee9f78a63e3c617e115bf66c5ff8/); ethereum `0xf52ac2...08c972` | ⚠️ Unaudited |
| StrategyPublicLauncher | core_logic | ethereum | 3 deployments: ethereum [`0x217d04...73cc73`](./contracts/ethereum-1/0x217d043e1f80933eba31c11e28cdfd587773cc73/); ethereum `0x8d05e9...731926`; ethereum `0xd7b446...e72cf5` | ⚠️ Unaudited |
| StreetStrategy | core_logic | ethereum | 2 deployments: ethereum [`0xae0afd...d49f41`](./contracts/ethereum-1/0xae0afddc6559a8d612b0cbd6776039e4bcd49f41/); ethereum `0xcd2f5c...138b90` | ⚠️ Unaudited |
| V4Quoter | periphery | ethereum | [`0x1a382a...a65a15`](./contracts/ethereum-1/0x1a382acdabb6ec137cbd65f40d84c5e55aa65a15/) | ⚠️ Unaudited |
| VibeStrategy | core_logic | ethereum | 3 deployments: ethereum [`0x0f8def...b9a260`](./contracts/ethereum-1/0x0f8defae8f0aad5fdcdb813ff04434a55eb9a260/); ethereum `0x3558a4...92ca89`; ethereum `0xb1485f...bf3a1d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0b599a...d94645` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16c3c5...613548` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x29ed1b...39869f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ac917...eda930` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3def7f...5b4686` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x441070...0ee07d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x467d66...b04bf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x52802f...dc0fe6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5d750c...6728ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x60d184...d14615` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6cbec2...e2d82b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6e46ea...07683e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7851a8...084aa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8721d9...a5dd3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x909810...84280b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x91afca...6c42a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f08ea...7b24dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa571e1...49092d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa75869...1aa287` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbca432...428400` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc76727...005fd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcce1db...58a66d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd5c7b7...4ca72f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd5ef7d...610dee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe0b4f6...0fef7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe11987...c28905` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf8e381...6a2d35` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc50673...e33edf`](./contracts/ethereum-1/0xc50673edb3a7b94e8cad8a7d4e0cd68864e33edf/) | PunkStrategy | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26d7ad...e2fb2e`](./contracts/ethereum-1/0x26d7ad0e930b54b84c00daad077ee31ba9e2fb2e/) | TenThousandTokens | token | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0e2bf...b5afe6`](./contracts/ethereum-1/0xb0e2bf6301e8cb314772412204c1cc8d91b5afe6/) | CabalClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x989947...e190f3`](./contracts/ethereum-1/0x989947278a87b7a3e00ca258d7ed416711e190f3/) | ChecksFeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x070e12...4a1bfd`](./contracts/ethereum-1/0x070e12b6b522e337e3fbbb9d77d97e339f4a1bfd/) | ChimpStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b6e24...664daf`](./contracts/ethereum-1/0x7b6e249be854e65d9b320c2993a19fc034664daf/) | CrypToadzFeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa20ccd...5ae6af`](./contracts/ethereum-1/0xa20ccd62b33142fc357b6449422dd53c0d5ae6af/) | DemocratizingDeath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x96893a...57d251`](./contracts/ethereum-1/0x96893a8568e0e5377a75137eb5d1d82f2057d251/) | ERC1155Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x698ba0...f5328d`](./contracts/ethereum-1/0x698ba054a8dd4535753aa14e6d67ddaa59f5328d/) | ERC1155StrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x322a52...3adc34`](./contracts/ethereum-1/0x322a52637848bafb39a4b2137872abc01b3adc34/) | ERC20Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f834e...000a0a`](./contracts/ethereum-1/0x9f834e16b709c0781537186e7bb09de42a000a0a/) | ERC20StrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb33d80...dcd5a6`](./contracts/ethereum-1/0xb33d806a94b6770c9d309e0842a75f8e6edcd5a6/) | FundingWorks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b591c...2e119d`](./contracts/ethereum-1/0x2b591c6de84fbcdbfd4813f9ae263c9e872e119d/) | FundingWorksFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27119c...29e499`](./contracts/ethereum-1/0x27119c7b63b85ab587850120c16f0cda9229e499/) | FundingWorksFeeSplit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d8d61...ca6ada`](./contracts/ethereum-1/0x7d8d619bc2b65f3405c1170331fc3637d5ca6ada/) | FundingWorksRenderer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38b2d2...3498ed`](./contracts/ethereum-1/0x38b2d254cd935ac6f5a1be4ce2847b2ac63498ed/) | FundingWorksSignature | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1f5f8...0ddd2b`](./contracts/ethereum-1/0xe1f5f8ccccb6524e7d91fc4ed2395981c20ddd2b/) | FW2Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf99bd...b09b2d`](./contracts/ethereum-1/0xdf99bd1218e7eb288cffecf9775385167bb09b2d/) | GlobalDistributorHandler | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5515c4...1544bd`](./contracts/ethereum-1/0x5515c4bf85d9dd3ed0f2d8f1bbc3bd78421544bd/) | HeftUpgradable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15e869...0baa08`](./contracts/ethereum-1/0x15e869f13e941eeb84069e5c6f22294f260baa08/) | MaxPainFeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31e9de...6442a2`](./contracts/ethereum-1/0x31e9de22a08bafa9a8e292087be9dace2e6442a2/) | NFTStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12405f...7599a3`](./contracts/ethereum-1/0x12405f0de64393d863699cf954d790a44b7599a3/) | NFTStrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05852e...d975ff`](./contracts/ethereum-1/0x05852ed6b0397f252969ec6a92b26c725bd975ff/) | NFTStrategyRangeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae6db0...c30d69`](./contracts/ethereum-1/0xae6db040aeab35150296e4eca5041aa32bc30d69/) | OtherdeedSplit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8dccff...f17545`](./contracts/ethereum-1/0x8dccff56723269693ec237a7b3d720e9abf17545/) | PunkStrategyFinalOwner | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1244ea...ba4838`](./contracts/ethereum-1/0x1244eae9fa2c064453b5f605d708c0a0bfba4838/) | PunkStrategyPatch | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9e9f4...465481`](./contracts/ethereum-1/0xd9e9f443f653bd72e44a87ea6cb27b9721465481/) | RecursiveStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7212ed...6c5ff8`](./contracts/ethereum-1/0x7212eda151e8ee9f78a63e3c617e115bf66c5ff8/) | RipeStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x217d04...73cc73`](./contracts/ethereum-1/0x217d043e1f80933eba31c11e28cdfd587773cc73/) | StrategyPublicLauncher | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae0afd...d49f41`](./contracts/ethereum-1/0xae0afddc6559a8d612b0cbd6776039e4bcd49f41/) | StreetStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f8def...b9a260`](./contracts/ethereum-1/0x0f8defae8f0aad5fdcdb813ff04434a55eb9a260/) | VibeStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
