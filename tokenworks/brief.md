# Agentic Audit Brief: TokenWorks

## Project Overview

- Project: TokenWorks (`tokenworks`)
- Website: [https://www.nftstrategy.fun/](https://www.nftstrategy.fun/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.547Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 69 unique implementations (112 raw deployments)
- DeFi Llama TVL: $1,495,587.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NFT Automated Strategies. Structurally: 43 project-authored contract(s) across 1 chain(s); 12 ERC20 tokens, 7 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on solady.

### Architecture

The protocol comprises 6 functional families. Its contracts share 5 common project-authored base contract(s) (nftstrategy, safecallback, immutablestate). Dominant framework: solady.

## Fork Lineage

This project reuses audited code from **Uniswap** (`uniswap`) in the PoolManager, PositionManager subsystem.
16 audits inherited from `uniswap`, scoped to that subsystem.

Total inherited audits: 16. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 115; live-surface contracts included: 112 (80 live, 32 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/37 (5.4%)
- Deployed-live implementations: 37 of 69 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/37
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 69
- Raw deployments: 112
- Audits discovered: 16 (0 direct, 16 inherited from forked code)
- Scoreable audits (matched contracts): 16
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 7 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 5.4% (Certora, ConsenSys Diligence, OpenZeppelin, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 2 | 5.4% | 2024-09 |
| Certora | Tier 1 | 2 | 5.4% | 2024-07 |
| ConsenSys | Tier 1 | 2 | 5.4% | 2018-12 |
| Mythril | Tier 2 | 2 | 5.4% | 2018-12 |
| OpenZeppelin | Tier 1 | 2 | 5.4% | 2024-09 |
| Spearbit | Tier 1 | 2 | 5.4% | 2024-09 |
| Trail of Bits | Tier 1 | 2 | 5.4% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PoolManager | core_logic | ethereum | n/a | [`0x000000000004444c5dc75cb358380d2e3de08a90`](./contracts/ethereum-1/0x000000000004444c5dc75cb358380d2e3de08a90/) | ✅ Audited |
| PositionManager | governance | ethereum | n/a | [`0xbd216513d74c8cf14cf4747e6aaa6420ff64ee9e`](./contracts/ethereum-1/0xbd216513d74c8cf14cf4747e6aaa6420ff64ee9e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CabalClaim | unknown | ethereum | n/a | [`0xb0e2bf6301e8cb314772412204c1cc8d91b5afe6`](./contracts/ethereum-1/0xb0e2bf6301e8cb314772412204c1cc8d91b5afe6/) | ⚠️ Unaudited |
| ChecksFeeHandler | unknown | ethereum | n/a | [`0x989947278a87b7a3e00ca258d7ed416711e190f3`](./contracts/ethereum-1/0x989947278a87b7a3e00ca258d7ed416711e190f3/) | ⚠️ Unaudited |
| ChimpStrategy | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x070e12b6b522e337e3fbbb9d77d97e339f4a1bfd`](./contracts/ethereum-1/0x070e12b6b522e337e3fbbb9d77d97e339f4a1bfd/); ethereum `0x317140b32fff1910a89cd846b241c7bdf5f890e6`; ethereum `0x3ca20831ebea5c99aa6e574d83f0a7c733f7e4d0`; ethereum `0x9b13923e82c327b27bf9f67b3b68783bb0e421b5` | ⚠️ Unaudited |
| CrypToadzFeeHandler | unknown | ethereum | n/a | [`0x7b6e249be854e65d9b320c2993a19fc034664daf`](./contracts/ethereum-1/0x7b6e249be854e65d9b320c2993a19fc034664daf/) | ⚠️ Unaudited |
| CryptoPunksMarket | unknown | ethereum | n/a | [`0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb`](./contracts/ethereum-1/0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb/) | ⚠️ Unaudited |
| DemocratizingDeath | unknown | ethereum | n/a | [`0xa20ccd62b33142fc357b6449422dd53c0d5ae6af`](./contracts/ethereum-1/0xa20ccd62b33142fc357b6449422dd53c0d5ae6af/) | ⚠️ Unaudited |
| ERC1155Strategy | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x96893a8568e0e5377a75137eb5d1d82f2057d251`](./contracts/ethereum-1/0x96893a8568e0e5377a75137eb5d1d82f2057d251/); ethereum `0xb7d8a9f5e4a9ba72cbd641581c52ea2d7a97fc32`; ethereum `0xdd08d4d4e8f890aebcefa900a3220538f6fe2f31` | ⚠️ Unaudited |
| ERC1155StrategyFactory | registry | ethereum | n/a | [`0x698ba054a8dd4535753aa14e6d67ddaa59f5328d`](./contracts/ethereum-1/0x698ba054a8dd4535753aa14e6d67ddaa59f5328d/) | ⚠️ Unaudited |
| ERC20Strategy | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x322a52637848bafb39a4b2137872abc01b3adc34`](./contracts/ethereum-1/0x322a52637848bafb39a4b2137872abc01b3adc34/); ethereum `0xb1a3015b61e4eac9253a674c6942cdc5dd8de510`; ethereum `0xb40ede070d9d9f37e32a106b04b29e20ef6ee26e`; ethereum `0xce9f3633e721d05a4eb6912f598bb11ec02e9495`; ethereum `0xe5a9634bf5db3d8d6138c3182d09a561bcf1a2a5` | ⚠️ Unaudited |
| ERC20StrategyFactory | registry | ethereum | n/a | [`0x9f834e16b709c0781537186e7bb09de42a000a0a`](./contracts/ethereum-1/0x9f834e16b709c0781537186e7bb09de42a000a0a/) | ⚠️ Unaudited |
| FeeSplitter | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x2afd0d67c3bbda1599dc279c2cd4c94df3ea031c`](./contracts/ethereum-1/0x2afd0d67c3bbda1599dc279c2cd4c94df3ea031c/); ethereum `0x6e46eaa57e1c7589686e2b0c935e8a8cf907683e` | ⚠️ Unaudited |
| FundingWorks | unknown | ethereum | n/a | [`0xb33d806a94b6770c9d309e0842a75f8e6edcd5a6`](./contracts/ethereum-1/0xb33d806a94b6770c9d309e0842a75f8e6edcd5a6/) | ⚠️ Unaudited |
| FundingWorksFactory | registry | ethereum | n/a | 4 deployments: ethereum [`0x2b591c6de84fbcdbfd4813f9ae263c9e872e119d`](./contracts/ethereum-1/0x2b591c6de84fbcdbfd4813f9ae263c9e872e119d/); ethereum `0x67c8a70bbe2bfee0a82fab2171abc5062f0b8b4c`; ethereum `0xa4cde76aaca6148ea52715cdd3f460f7fe091783`; ethereum `0xccf04733e14e2622cd27669f62c3157b716567b2` | ⚠️ Unaudited |
| FundingWorksFeeSplit | unknown | ethereum | n/a | [`0x27119c7b63b85ab587850120c16f0cda9229e499`](./contracts/ethereum-1/0x27119c7b63b85ab587850120c16f0cda9229e499/) | ⚠️ Unaudited |
| FundingWorksRenderer | unknown | ethereum | n/a | [`0x7d8d619bc2b65f3405c1170331fc3637d5ca6ada`](./contracts/ethereum-1/0x7d8d619bc2b65f3405c1170331fc3637d5ca6ada/) | ⚠️ Unaudited |
| FundingWorksSignature | unknown | ethereum | n/a | [`0x38b2d254cd935ac6f5a1be4ce2847b2ac63498ed`](./contracts/ethereum-1/0x38b2d254cd935ac6f5a1be4ce2847b2ac63498ed/) | ⚠️ Unaudited |
| FW2Token | token | ethereum | n/a | [`0xe1f5f8ccccb6524e7d91fc4ed2395981c20ddd2b`](./contracts/ethereum-1/0xe1f5f8ccccb6524e7d91fc4ed2395981c20ddd2b/) | ⚠️ Unaudited |
| GlobalDistributorHandler | operational_periphery | ethereum | n/a | [`0xdf99bd1218e7eb288cffecf9775385167bb09b2d`](./contracts/ethereum-1/0xdf99bd1218e7eb288cffecf9775385167bb09b2d/) | ⚠️ Unaudited |
| HeftUpgradable | unknown | ethereum | n/a | 5 deployments: ethereum [`0x5515c4bf85d9dd3ed0f2d8f1bbc3bd78421544bd`](./contracts/ethereum-1/0x5515c4bf85d9dd3ed0f2d8f1bbc3bd78421544bd/); ethereum `0x6834fb269967d0293464fcf4f53e701300144e45`; ethereum `0x756046996d155e5705e35ebd25462b2e2f52fc0a`; ethereum `0x7f722c5ad9907aa86c30e0d4a423d0e7243ea292`; ethereum `0x8279cde5116aca09b50cf0e32a9692672fb17a22` | ⚠️ Unaudited |
| MaxPainFeeHandler | unknown | ethereum | n/a | 2 deployments: ethereum [`0x15e869f13e941eeb84069e5c6f22294f260baa08`](./contracts/ethereum-1/0x15e869f13e941eeb84069e5c6f22294f260baa08/); ethereum `0x7aca5424c570c2ad530ee3d4dbfd731a9aebacff` | ⚠️ Unaudited |
| NFTStrategy | core_logic | ethereum | n/a | 14 deployments: ethereum [`0x2090dc81f42f6ddd8deace0d3c3339017417b0dc`](./contracts/ethereum-1/0x2090dc81f42f6ddd8deace0d3c3339017417b0dc/); ethereum `0x31e9de22a08bafa9a8e292087be9dace2e6442a2`; ethereum `0x3e17172096fbe0a0bbae6931c2e4e6bd9c09bca1`; ethereum `0x4839e62bceb19b38938f15e2edeb8cdc98bfbb74`; ethereum `0x5d855d8a3090243fed9bf73999eedfbc2d1dcf21`; ethereum `0x60b30fb9c2385cb938cef0af0958fbb9c9b38742`; ethereum `0x6bcba7cd81a5f12c10ca1bf9b36761cc382658e8`; ethereum `0x7ac3958d1a36518b3eff6deeebd6cd95902a3746`; ethereum `0x8680acfacb3fed5408764343fc7e8358e8c85a4c`; ethereum `0x9ebf91b8d6ff68aa05545301a3d0984eaee54a03`; ethereum `0xa27a2c21a9d468634107b38d9fffb42ad09b204f`; ethereum `0xb3d6e9e142a785ea8a4f0050fee73bcc3438c5c5`; ethereum `0xc9b2c00f31b210fcea1242d91307a5b1e3b2be68`; ethereum `0xe21f59ce350efbed638850b739616f9c26556da2` | ⚠️ Unaudited |
| NFTStrategyFactory | registry | ethereum | n/a | 6 deployments: ethereum [`0x12405f0de64393d863699cf954d790a44b7599a3`](./contracts/ethereum-1/0x12405f0de64393d863699cf954d790a44b7599a3/); ethereum `0x1966780f08b1699fb57e05ed2d7654e3ec64390d`; ethereum `0x6c108b4973b92638e713dc6b8e1601882c83b70a`; ethereum `0x84cf6b93cd330117af9e6ce6ae693a53289faec3`; ethereum `0xa1a196b5be89be04a2c1dc71643689ce013c22e5`; ethereum `0xd1b396bab80c7dad795c2674364d43b7bafc0636` | ⚠️ Unaudited |
| NFTStrategyHook | core_logic | ethereum | n/a | [`0xe3c63a9813ac03be0e8618b627cb8170cfa468c4`](./contracts/ethereum-1/0xe3c63a9813ac03be0e8618b627cb8170cfa468c4/) | ⚠️ Unaudited |
| NFTStrategyRange | core_logic | ethereum | n/a | [`0x742fd09cbbeb1ec4e3d6404dfc959a324deb50e6`](./contracts/ethereum-1/0x742fd09cbbeb1ec4e3d6404dfc959a324deb50e6/) | ⚠️ Unaudited |
| NFTStrategyRangeFactory | registry | ethereum | n/a | [`0x05852ed6b0397f252969ec6a92b26c725bd975ff`](./contracts/ethereum-1/0x05852ed6b0397f252969ec6a92b26c725bd975ff/) | ⚠️ Unaudited |
| OtherdeedSplit | unknown | ethereum | n/a | [`0xae6db040aeab35150296e4eca5041aa32bc30d69`](./contracts/ethereum-1/0xae6db040aeab35150296e4eca5041aa32bc30d69/) | ⚠️ Unaudited |
| PunkStrategy | core_logic | ethereum | n/a | [`0xc50673edb3a7b94e8cad8a7d4e0cd68864e33edf`](./contracts/ethereum-1/0xc50673edb3a7b94e8cad8a7d4e0cd68864e33edf/) | ⚠️ Unaudited |
| PunkStrategyFinalOwner | core_logic | ethereum | n/a | [`0x8dccff56723269693ec237a7b3d720e9abf17545`](./contracts/ethereum-1/0x8dccff56723269693ec237a7b3d720e9abf17545/) | ⚠️ Unaudited |
| PunkStrategyPatch | core_logic | ethereum | n/a | [`0x1244eae9fa2c064453b5f605d708c0a0bfba4838`](./contracts/ethereum-1/0x1244eae9fa2c064453b5f605d708c0a0bfba4838/) | ⚠️ Unaudited |
| RecursiveStrategy | operational_periphery | ethereum | n/a | [`0xd9e9f443f653bd72e44a87ea6cb27b9721465481`](./contracts/ethereum-1/0xd9e9f443f653bd72e44a87ea6cb27b9721465481/) | ⚠️ Unaudited |
| RipeStrategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x7212eda151e8ee9f78a63e3c617e115bf66c5ff8`](./contracts/ethereum-1/0x7212eda151e8ee9f78a63e3c617e115bf66c5ff8/); ethereum `0xf52ac217bcb1c90a5d12c9bb55291cfbf808c972` | ⚠️ Unaudited |
| StrategyPublicLauncher | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x217d043e1f80933eba31c11e28cdfd587773cc73`](./contracts/ethereum-1/0x217d043e1f80933eba31c11e28cdfd587773cc73/); ethereum `0x8d05e9a6c48a0dedcf3d9e33221eb7fafd731926`; ethereum `0xd7b44667d1eb4f5fbb5d64b1c640358ee3e72cf5` | ⚠️ Unaudited |
| StreetStrategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0xae0afddc6559a8d612b0cbd6776039e4bcd49f41`](./contracts/ethereum-1/0xae0afddc6559a8d612b0cbd6776039e4bcd49f41/); ethereum `0xcd2f5c1a32b2d9689bd2c8f4883fdb3867138b90` | ⚠️ Unaudited |
| TenThousandTokens | token | ethereum | n/a | [`0x26d7ad0e930b54b84c00daad077ee31ba9e2fb2e`](./contracts/ethereum-1/0x26d7ad0e930b54b84c00daad077ee31ba9e2fb2e/) | ⚠️ Unaudited |
| VibeStrategy | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x0f8defae8f0aad5fdcdb813ff04434a55eb9a260`](./contracts/ethereum-1/0x0f8defae8f0aad5fdcdb813ff04434a55eb9a260/); ethereum `0x3558a4a24cb15d96247573cf083169604292ca89`; ethereum `0xb1485f610d54ed1058a06e99f5d667a16dbf3a1d`; ethereum `0xd0cc2b0efb168bfe1f94a948d8df70fa10257196` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0b599aa98f48e26b590e98d9b7fa793d71d94645` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1556bbddde99e77e88a7e547c7f6567a77a7aa78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16c3c5670a64223e48b9932fd971eeaaa5613548` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29ed1bcfe471f1619fc1a7131f32961f1e39869f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ac91707c81a748f2f200526df88875b0aeda930` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3def7f8f7657feca26b799290e559824305b4686` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44107048c821ad4dc2459da829b13347de0ee07d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x454f0b85f94bcb7ec2423d583fd5fba12eceace2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x467d66b9c85f6b7c4af575c8d8894b0704b04bf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52802fff036826c276bcd3752167c0f8a4dc0fe6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d750ce0d452c7f22a2feecbbcfcb56d496728ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60d184419f7ed17ff6ecd2f4277fc21c7ed14615` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cbec215ad4a98e67a0b42babdf794c4c5e2d82b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7058507c5507a6f27f63a366ba2cfafc7b83c738` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7851a8ab05a35d82771202665b94d25a1b084aa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8721d969ccf97ad61083d8fa7f7fcd771ea5dd3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x909810eb35014f8b17b3de519121cfe57484280b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91afca8543254b809f93d86473b63c8e2e6c42a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x966107ad902420a3a3bca59888c7313084a1da3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f08ea3f2283ea6f8b264050bdb48423fe7b24dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa571e1161acc5d64b3a9f3022637ee191149092d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5a5a6379b421bd3f1abcdbc401222ced5310ff8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa758699af2d7d2ea620e17f61ae03146081aa287` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbca4321d334ae643b428098a8d378958c5428400` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc767271b7c12fa2d7cfd7e2bf9d50768a6005fd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcce1db21c8d9782c2b0ab1895df7ffe53058a66d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5c7b79ebb544aaea0814a5bb0037552414ca72f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5ef7d3d225770bcfc4a46f9cef413f440610dee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0b4f6e535baf90738911b3a9bbaf2d77d0fef7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1198727fa8d5f5d6f747505ba0df87861c28905` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1450d7708de452b1d89cbf9b83e0cba97719d39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8e381a9b2c9fa2c3f89ea53df031e335c6a2d35` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit.pdf](https://github.com/Uniswap/uniswap-v3-core/blob/main/audits/abdk/audit.pdf) | ABDK | Audit | n/a | unknown | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [audit.pdf](https://github.com/Uniswap/uniswap-v3-core/blob/main/audits/tob/audit.pdf) | Trail of Bits | Audit | n/a | unknown | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [audit.pdf](https://github.com/Uniswap/uniswap-v3-periphery/blob/main/audits/abdk/audit.pdf) | ABDK | Audit | n/a | unknown | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [Uniswap-final.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/Uniswap-final.md) | ConsenSys | Audit | 2018-12 | stale | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [Uniswap-standalone-working.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/Uniswap-standalone-working.md) | ConsenSys | Audit | 2018-12 | stale | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [Uniswap-working.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/Uniswap-working.md) | ConsenSys | Audit | 2018-12 | stale | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [coverage_output.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/coverage-reports/coverage_output.md) | ConsenSys | Audit | 2018-12 | stale | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [mythril_output_exchange.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/tool-output/mythril/mythril_output_exchange.md) | Mythril | Audit | 2018-12 | stale | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [DRAFT_ABDK_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_ABDK_audit_core.pdf) | ABDK | Audit | 2024-09 | aging | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [DRAFT_Spearbit_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_Spearbit_audit_core.pdf) | Spearbit | Audit | 2024-09 | aging | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [TrailOfBits_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/TrailOfBits_audit_core.pdf) | Trail of Bits | Audit | 2024-09 | aging | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [DRAFT_ABDK_audit_periphery_universal_router.pdf](https://github.com/Uniswap/v4-periphery/blob/main/audits/DRAFT_ABDK_audit_periphery_universal_router.pdf) | ABDK | Audit | 2024-09 | aging | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [DRAFT_Spearbit_audit_periphery.pdf](https://github.com/Uniswap/v4-periphery/blob/main/audits/DRAFT_Spearbit_audit_periphery.pdf) | Spearbit | Audit | 2024-09 | aging | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [OpenZeppelin_audit_periphery_universal_router.pdf](https://github.com/Uniswap/v4-periphery/blob/main/audits/OpenZeppelin_audit_periphery_universal_router.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [DRAFT_Certora_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_Certora_audit_core.pdf) | Certora | Audit | 2024-07 | stale | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [OpenZeppelin_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/OpenZeppelin_audit_core.pdf) | OpenZeppelin | Audit | 2024-07 | stale | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb0e2bf6301e8cb314772412204c1cc8d91b5afe6`](./contracts/ethereum-1/0xb0e2bf6301e8cb314772412204c1cc8d91b5afe6/) | CabalClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x989947278a87b7a3e00ca258d7ed416711e190f3`](./contracts/ethereum-1/0x989947278a87b7a3e00ca258d7ed416711e190f3/) | ChecksFeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x070e12b6b522e337e3fbbb9d77d97e339f4a1bfd`](./contracts/ethereum-1/0x070e12b6b522e337e3fbbb9d77d97e339f4a1bfd/) | ChimpStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b6e249be854e65d9b320c2993a19fc034664daf`](./contracts/ethereum-1/0x7b6e249be854e65d9b320c2993a19fc034664daf/) | CrypToadzFeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb`](./contracts/ethereum-1/0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb/) | CryptoPunksMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa20ccd62b33142fc357b6449422dd53c0d5ae6af`](./contracts/ethereum-1/0xa20ccd62b33142fc357b6449422dd53c0d5ae6af/) | DemocratizingDeath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x96893a8568e0e5377a75137eb5d1d82f2057d251`](./contracts/ethereum-1/0x96893a8568e0e5377a75137eb5d1d82f2057d251/) | ERC1155Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x698ba054a8dd4535753aa14e6d67ddaa59f5328d`](./contracts/ethereum-1/0x698ba054a8dd4535753aa14e6d67ddaa59f5328d/) | ERC1155StrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x322a52637848bafb39a4b2137872abc01b3adc34`](./contracts/ethereum-1/0x322a52637848bafb39a4b2137872abc01b3adc34/) | ERC20Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f834e16b709c0781537186e7bb09de42a000a0a`](./contracts/ethereum-1/0x9f834e16b709c0781537186e7bb09de42a000a0a/) | ERC20StrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2afd0d67c3bbda1599dc279c2cd4c94df3ea031c`](./contracts/ethereum-1/0x2afd0d67c3bbda1599dc279c2cd4c94df3ea031c/) | FeeSplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb33d806a94b6770c9d309e0842a75f8e6edcd5a6`](./contracts/ethereum-1/0xb33d806a94b6770c9d309e0842a75f8e6edcd5a6/) | FundingWorks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b591c6de84fbcdbfd4813f9ae263c9e872e119d`](./contracts/ethereum-1/0x2b591c6de84fbcdbfd4813f9ae263c9e872e119d/) | FundingWorksFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27119c7b63b85ab587850120c16f0cda9229e499`](./contracts/ethereum-1/0x27119c7b63b85ab587850120c16f0cda9229e499/) | FundingWorksFeeSplit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d8d619bc2b65f3405c1170331fc3637d5ca6ada`](./contracts/ethereum-1/0x7d8d619bc2b65f3405c1170331fc3637d5ca6ada/) | FundingWorksRenderer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38b2d254cd935ac6f5a1be4ce2847b2ac63498ed`](./contracts/ethereum-1/0x38b2d254cd935ac6f5a1be4ce2847b2ac63498ed/) | FundingWorksSignature | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1f5f8ccccb6524e7d91fc4ed2395981c20ddd2b`](./contracts/ethereum-1/0xe1f5f8ccccb6524e7d91fc4ed2395981c20ddd2b/) | FW2Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf99bd1218e7eb288cffecf9775385167bb09b2d`](./contracts/ethereum-1/0xdf99bd1218e7eb288cffecf9775385167bb09b2d/) | GlobalDistributorHandler | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5515c4bf85d9dd3ed0f2d8f1bbc3bd78421544bd`](./contracts/ethereum-1/0x5515c4bf85d9dd3ed0f2d8f1bbc3bd78421544bd/) | HeftUpgradable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15e869f13e941eeb84069e5c6f22294f260baa08`](./contracts/ethereum-1/0x15e869f13e941eeb84069e5c6f22294f260baa08/) | MaxPainFeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2090dc81f42f6ddd8deace0d3c3339017417b0dc`](./contracts/ethereum-1/0x2090dc81f42f6ddd8deace0d3c3339017417b0dc/) | NFTStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12405f0de64393d863699cf954d790a44b7599a3`](./contracts/ethereum-1/0x12405f0de64393d863699cf954d790a44b7599a3/) | NFTStrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3c63a9813ac03be0e8618b627cb8170cfa468c4`](./contracts/ethereum-1/0xe3c63a9813ac03be0e8618b627cb8170cfa468c4/) | NFTStrategyHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x742fd09cbbeb1ec4e3d6404dfc959a324deb50e6`](./contracts/ethereum-1/0x742fd09cbbeb1ec4e3d6404dfc959a324deb50e6/) | NFTStrategyRange | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05852ed6b0397f252969ec6a92b26c725bd975ff`](./contracts/ethereum-1/0x05852ed6b0397f252969ec6a92b26c725bd975ff/) | NFTStrategyRangeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae6db040aeab35150296e4eca5041aa32bc30d69`](./contracts/ethereum-1/0xae6db040aeab35150296e4eca5041aa32bc30d69/) | OtherdeedSplit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc50673edb3a7b94e8cad8a7d4e0cd68864e33edf`](./contracts/ethereum-1/0xc50673edb3a7b94e8cad8a7d4e0cd68864e33edf/) | PunkStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8dccff56723269693ec237a7b3d720e9abf17545`](./contracts/ethereum-1/0x8dccff56723269693ec237a7b3d720e9abf17545/) | PunkStrategyFinalOwner | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1244eae9fa2c064453b5f605d708c0a0bfba4838`](./contracts/ethereum-1/0x1244eae9fa2c064453b5f605d708c0a0bfba4838/) | PunkStrategyPatch | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9e9f443f653bd72e44a87ea6cb27b9721465481`](./contracts/ethereum-1/0xd9e9f443f653bd72e44a87ea6cb27b9721465481/) | RecursiveStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7212eda151e8ee9f78a63e3c617e115bf66c5ff8`](./contracts/ethereum-1/0x7212eda151e8ee9f78a63e3c617e115bf66c5ff8/) | RipeStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x217d043e1f80933eba31c11e28cdfd587773cc73`](./contracts/ethereum-1/0x217d043e1f80933eba31c11e28cdfd587773cc73/) | StrategyPublicLauncher | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae0afddc6559a8d612b0cbd6776039e4bcd49f41`](./contracts/ethereum-1/0xae0afddc6559a8d612b0cbd6776039e4bcd49f41/) | StreetStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26d7ad0e930b54b84c00daad077ee31ba9e2fb2e`](./contracts/ethereum-1/0x26d7ad0e930b54b84c00daad077ee31ba9e2fb2e/) | TenThousandTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f8defae8f0aad5fdcdb813ff04434a55eb9a260`](./contracts/ethereum-1/0x0f8defae8f0aad5fdcdb813ff04434a55eb9a260/) | VibeStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 32 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=32

Fork inheritance lineage and inherited audits are included when available.
