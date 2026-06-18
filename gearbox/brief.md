# Agentic Audit Brief: Gearbox

⚠️ Lifecycle status: DECLINING - TVL dropped 54.5% over 90 days

## Project Overview

- Project: Gearbox (`gearbox`)
- Website: [https://gearbox.finance/](https://gearbox.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T07:22:26.262Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-94c2
- Chains: arbitrum, ethereum, optimism, sonic
- Contract surface: 53 unique implementations (564 raw deployments)
- DeFi Llama TVL: $29,451,084.42
- On-chain TVL (included contracts): $3,458,425.78
- TVL by chain: Ethereum $3,458,425.78

## Project Description

Gearbox is an on-chain credit and lending protocol built around smart contract credit accounts. Its current positioning emphasizes a tokenisation lending stack and compliant credit infrastructure for tokenized and RWA assets, including segregated accounts, margin, prime brokerage-style credit, and portfolio loans, while retaining DeFi lending and composability as part of the underlying architecture.

### Architecture

Lending Pools supply liquidity to Credit Managers, which use Price Feeds for collateral valuation and risk assessment. Core Contracts provide shared registry, access control, and staking infrastructure used across all families.

## Contract Surface Quality

- Indexed contracts: 2090; live-surface contracts included: 564 (316 live, 248 unknown).
- Excluded by liveness: 1526 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: curve-stableswap
- Unverified dependencies: 24/109.

## Audit Coverage Summary

- Verified implementations audited: 35/51 (68.6%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 53
- Raw deployments: 564
- Audits discovered: 38
- Scoreable audits (matched contracts): 29
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/gearbox/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (fresh)
- Staleness: 1 fresh, 10 aging, 25 stale, 1 unknown
- Tier 1 coverage: 68.6% (ChainSecurity, ConsenSys Diligence, MixBytes)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 34 | 66.7% | 2025-07 |
| ABDK | Tier 2 | 22 | 43.1% | 2023-12 |
| unknown | Tier 2 | 12 | 23.5% | 2025-02 |
| Pessimistic | Tier 2 | 9 | 17.6% | 2024-05 |
| SavantChat | Tier 2 | 9 | 17.6% | 2025-03 |
| Consensys Diligence | Tier 1 | 5 | 9.8% | 2022-08 |
| Sigma Prime | Tier 2 | 5 | 9.8% | 2022-08 |
| MixBytes | Tier 1 | 4 | 7.8% | 2024-04 |
| Decurity | Tier 2 | 1 | 2.0% | 2025-02 |
| PeckShield | Tier 2 | 1 | 2.0% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (35)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PoolV3 | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x4d56c9...00ae09`](./contracts/ethereum-1/0x4d56c9cba373ad39df69eb18f076b7348000ae09/); ethereum `0x8ef73f...8bdd72`; ethereum `0xda0000...9fbf8e`; ethereum `0xda0001...42757d`; ethereum `0xda0002...f26f4f`; ethereum `0xe7146f...b2f823` | ✅ Audited |
| PoolV3_USDT | core_logic | ethereum | n/a | [`0x05a811...6d936e`](./contracts/ethereum-1/0x05a811275fe9b4de503b3311f51edf6a856d936e/) | ✅ Audited |
| PoolService | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x79012c...01da6c`](./contracts/ethereum-1/0x79012c8d491dcf3a30db20d1f449b14caf01da6c/); ethereum `0xb8cf3e...c5c286` | ✅ Audited |
| AccountFactory | registry | ethereum | n/a | [`0x444cd4...779c04`](./contracts/ethereum-1/0x444cd42baeddeb707eed823f7177b9abcc779c04/) | ✅ Audited |
| AddressProviderV3 | registry | optimism | n/a | 4 deployments: ethereum `0x9ea7b0...03321d`; optimism [`0x3761ca...756726`](./contracts/optimism-10/0x3761ca4bfacfcffc1b8034e69f19116dd6756726/); sonic `0x4b27b2...67c41b`; arbitrum `0x7d04ec...f3f2af` | ✅ Audited |
| BalancerV2VaultAdapter | adapter | ethereum | n/a | 4 deployments: ethereum [`0x318ab3...152cae`](./contracts/ethereum-1/0x318ab395b49b22c10937367601b0d17741152cae/); ethereum `0x32ff85...1fad39`; ethereum `0x4b43dc...952129`; ethereum `0xb7138c...a57ee1` | ✅ Audited |
| BotListV3 | operational_periphery | ethereum | n/a | [`0x6b2418...05053a`](./contracts/ethereum-1/0x6b24183313074abb6e3b30ea206f20c12205053a/) | ✅ Audited |
| BPTStablePriceFeed | operational_periphery | ethereum | n/a | [`0xbef105...efcb72`](./contracts/ethereum-1/0xbef105afcb13ef403e595d7856b7260061efcb72/) | ✅ Audited |
| CompositePriceFeed | operational_periphery | ethereum | n/a | 13 deployments: ethereum [`0x1bc358...0a9c63`](./contracts/ethereum-1/0x1bc358c61d3d62439abe4883e3bef30c9b0a9c63/); ethereum `0x1d4468...e484b5`; ethereum `0x2601c9...e1fcbe`; ethereum `0x2bcb82...36d3fc`; ethereum `0x55dd8d...a8cbae`; ethereum `0x56bc53...46d785`; ethereum `0x7c087f...bb721d`; ethereum `0x886c99...ae9502`; ethereum `0xa11a31...a30ef8`; ethereum `0xb6da53...789005`; ethereum `0xd52438...d9a494`; ethereum `0xe36e70...a8bcdd`; ethereum `0xe72afa...bc91ed` | ✅ Audited |
| ContractsRegister | registry | ethereum | n/a | [`0xa50d4e...d54d99`](./contracts/ethereum-1/0xa50d4e7d8946a7c90652339cdbd262c375d54d99/) | ✅ Audited |
| ConvexV1BoosterAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0x1b22e5...af65dd`](./contracts/ethereum-1/0x1b22e5ceb3a81d53b9a2d938c814b60b0baf65dd/); ethereum `0x266ce8...6beca9`; ethereum `0x98d063...9586bb` | ✅ Audited |
| CreditConfiguratorV3 | governance | ethereum | n/a | 16 deployments: ethereum [`0x07ef57...db50f6`](./contracts/ethereum-1/0x07ef5771191825618f1806152f843e172edb50f6/); ethereum `0x0db809...75fead`; ethereum `0x2bea55...393d01`; ethereum `0x444fe6...d1975b`; ethereum `0x5457ba...66ba08`; ethereum `0x7504b2...3da6c2`; ethereum `0x80a863...a59acf`; ethereum `0x85cff7...a37162`; ethereum `0x867928...3f9e53`; ethereum `0x8dbcf5...5e620e`; ethereum `0x91f6c5...d8b2e7`; ethereum `0x9a6b81...df2d91`; ethereum `0xae460c...6382a8`; ethereum `0xdf01e9...7fe7b2`; ethereum `0xe58350...c174a5`; ethereum `0xf60ab9...8bffa6` | ✅ Audited |
| CreditFacadeV3 | core_logic | ethereum | n/a | 12 deployments: ethereum [`0x0e020b...55c1f8`](./contracts/ethereum-1/0x0e020bf59675d5822303ae166ea58f834455c1f8/); ethereum `0x314cbd...8e15b9`; ethereum `0x39b608...5a581c`; ethereum `0x3dd5a8...6286ed`; ethereum `0x51fa79...b5ad6a`; ethereum `0x5e417c...0e0645`; ethereum `0x627e99...9914ee`; ethereum `0x65352f...9374c5`; ethereum `0x6d06c6...7e8332`; ethereum `0x90b8d1...0f4e2d`; ethereum `0x9ab55e...626792`; ethereum `0xa59518...f9c7d5` | ✅ Audited |
| CreditManagerV3 | core_logic | ethereum | n/a | 15 deployments: ethereum [`0x0b2486...6c484e`](./contracts/ethereum-1/0x0b2486355e987586c32fc0feefe2943e396c484e/); ethereum `0x1d489c...ed3384`; ethereum `0x3eb954...393556`; ethereum `0x3f1175...44ac14`; ethereum `0x458241...c9ed40`; ethereum `0x46709c...4908ed`; ethereum `0x4e94cd...4688a3`; ethereum `0x50ba48...1faef6`; ethereum `0x58c8e9...7189c9`; ethereum `0x629f09...4d6857`; ethereum `0x6dc0eb...865b3e`; ethereum `0xa30099...8fe68a`; ethereum `0xcac3e4...043735`; ethereum `0xea7c28...19c050`; ethereum `0xefc134...41246e` | ✅ Audited |
| CreditManagerV3_USDT | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x6950f4...65cd5c`](./contracts/ethereum-1/0x6950f4190aa1e1339519d5d4d89796ae4165cd5c/); ethereum `0xe35eb2...2c6203` | ✅ Audited |
| CurveCryptoLPPriceFeed | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x57c75d...c0aae6`](./contracts/ethereum-1/0x57c75d0b4ff645543077bb0ec091685ec2c0aae6/); ethereum `0x98a739...03d9bf`; ethereum `0xaa5cbd...5e4bab`; ethereum `0xd34a8e...ad1842` | ✅ Audited |
| CurveStableLPPriceFeed | operational_periphery | ethereum | n/a | 13 deployments: ethereum [`0x032bd4...4bdedd`](./contracts/ethereum-1/0x032bd41fd7463a030a64c865374e4c263e4bdedd/); ethereum `0x15a2b4...3c478f`; ethereum `0x2c40a0...e424f0`; ethereum `0x6a11e1...ec3a07`; ethereum `0x6a2211...7b4345`; ethereum `0x6dd42b...460c28`; ethereum `0x738a0c...a48207`; ethereum `0x7667f0...635e7c`; ethereum `0xa08df8...fa833b`; ethereum `0xb34dfd...e78852`; ethereum `0xf2b563...f2e023`; ethereum `0xfa655f...988a6c`; ethereum `0xfccc06...fd842a` | ✅ Audited |
| DegenNFT | token | ethereum | n/a | [`0xb829a5...a6e599`](./contracts/ethereum-1/0xb829a5b349b01fc71afe46e50dd6ec0222a6e599/) | ✅ Audited |
| ERC4626Adapter | adapter | ethereum | n/a | 15 deployments: ethereum [`0x48ad4e...fed1ba`](./contracts/ethereum-1/0x48ad4ef1997228f9b97a542410f596466afed1ba/); ethereum `0x52b4f9...f4772c`; ethereum `0x5ce123...ed1ece`; ethereum `0x74c20b...d4c0cf`; ethereum `0x7a1ce6...c75298`; ethereum `0x805077...330600`; ethereum `0x9ebba0...50f6f0`; ethereum `0xb5074c...933160`; ethereum `0xb5e10d...fd7c34`; ethereum `0xc1a9bc...049a1c`; ethereum `0xca2bbf...c23231`; ethereum `0xcced7e...021f24`; ethereum `0xda6f14...f37541`; ethereum `0xe3a569...0070e1`; ethereum `0xfa83a8...895e37` | ✅ Audited |
| ERC4626PriceFeed | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xaa1f5c...8978e0`](./contracts/ethereum-1/0xaa1f5cad0647fc6267e9176109c09af4f58978e0/); ethereum `0xb2cb2e...78fbf3` | ✅ Audited |
| GaugeV3 | operational_periphery | ethereum | n/a | 7 deployments: ethereum [`0x245f3c...6fc21c`](./contracts/ethereum-1/0x245f3c6acdabc0ca10ebfc50ee26ab85566fc21c/); ethereum `0x4d6806...c82bea`; ethereum `0xbf78c4...eb8fdf`; ethereum `0xbfca0d...202ab3`; ethereum `0xcf9d69...c9b4e0`; ethereum `0xd455eb...9fbb43`; ethereum `0xffd0c7...c3b217` | ✅ Audited |
| GearStakingV3 | core_logic | ethereum | n/a | [`0x2fcbd0...459c33`](./contracts/ethereum-1/0x2fcbd02d5b1d52fc78d4c02890d7f4f47a459c33/) | ✅ Audited |
| Governor | governance | ethereum | n/a | [`0x29b97f...7df2c7`](./contracts/ethereum-1/0x29b97f37b3e0c704bcfd785f5b7bba2a0b7df2c7/) | ✅ Audited |
| LinearInterestRateModelV3 | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x602ca1...5a6d5a`](./contracts/ethereum-1/0x602ca1f950c186e5795935acfcbc64997f5a6d5a/); ethereum `0x83c62a...7496a2`; ethereum `0x86781a...36bbbc`; ethereum `0xff767b...43b4bf` | ✅ Audited |
| PoolQuotaKeeperV3 | operational_periphery | ethereum | n/a | 8 deployments: ethereum [`0x05ef8d...235ce7`](./contracts/ethereum-1/0x05ef8da767687c0137ae143eb23883fcad235ce7/); ethereum `0x52dfc8...5f88cf`; ethereum `0x727b46...396c20`; ethereum `0x7bbaec...77c444`; ethereum `0x812be1...60cb51`; ethereum `0x99dd2d...88b196`; ethereum `0xc96c20...d484f4`; ethereum `0xfa8b83...1d0ba3` | ✅ Audited |
| PriceOracleV3 | operational_periphery | ethereum | n/a | [`0x599f58...fdfb85`](./contracts/ethereum-1/0x599f585d1042a14aab194ac8031b2048defdfb85/) | ✅ Audited |
| RedstonePriceFeed | operational_periphery | ethereum | n/a | 25 deployments: ethereum [`0x007a36...119746`](./contracts/ethereum-1/0x007a36b491647ee735446a385f1e5e0eb3119746/); ethereum `0x154d98...84ec72`; ethereum `0x341dd3...0022e4`; ethereum `0x3d690e...259c3e`; ethereum `0x3e7265...da7d6f`; ethereum `0x466bb6...484d7f`; ethereum `0x47c99d...36e428`; ethereum `0x5157e1...d654ac`; ethereum `0x6f1399...eb6ce6`; ethereum `0x6f87d0...1eb1aa`; ethereum `0x744cb1...5f17dc`; ethereum `0x7ca9fd...98585c`; ethereum `0x8a58f9...8e3513`; ethereum `0x8dbfad...bbe6d2`; ethereum `0x8e23f1...7bfef0`; ethereum `0xa0b938...fe006b`; ethereum `0xa7cb34...37ed76`; ethereum `0xae9ee7...0e5945`; ethereum `0xafc508...8822c3`; ethereum `0xb7552e...8a9aaa`; ethereum `0xbedf14...2d5b93`; ethereum `0xc9406b...d0acea`; ethereum `0xc9c91d...d4f2fb`; ethereum `0xcf1fdc...ac362a`; ethereum `0xf05244...123daf` | ✅ Audited |
| TokenDistributor | operational_periphery | ethereum | n/a | [`0xf7512b...0e2c27`](./contracts/ethereum-1/0xf7512b2b20cf427add8b01d8cdeef97a4b0e2c27/) | ✅ Audited |
| UniswapV2Adapter | adapter | ethereum | n/a | 21 deployments: ethereum [`0x1c0f9b...0dacb3`](./contracts/ethereum-1/0x1c0f9b1dfd3a2081239480523922f0a3110dacb3/); ethereum `0x2c2a0a...fdf24f`; ethereum `0x32d68d...3d09be`; ethereum `0x3dc5c1...77baf7`; ethereum `0x3f4028...af2b1d`; ethereum `0x45d11f...4a97b7`; ethereum `0x4b57f9...980b76`; ethereum `0x4bf81a...9474e5`; ethereum `0x4c4616...987a4b`; ethereum `0x4d4b56...8f72c7`; ethereum `0x553810...230590`; ethereum `0x745083...c6d325`; ethereum `0x88798e...0df3d0`; ethereum `0x9aaa74...78d81a`; ethereum `0xa383b2...37c8bd`; ethereum `0xaeab98...8ecf7d`; ethereum `0xd4972d...227c14`; ethereum `0xd8215e...5b2d91`; ethereum `0xe5b6a5...c15994`; ethereum `0xecaad4...aba126`; ethereum `0xeeae1e...dfd32b` | ✅ Audited |
| UniswapV3Adapter | adapter | ethereum | n/a | 13 deployments: ethereum [`0x25de7d...3ad546`](./contracts/ethereum-1/0x25de7d6d278188d0f78d72997174101e5d3ad546/); ethereum `0x32446a...e92c93`; ethereum `0x33fcf8...7afea1`; ethereum `0x577ec6...c9ae9a`; ethereum `0x717170...8e281d`; ethereum `0x7c934c...628ab7`; ethereum `0xae4d09...d6029f`; ethereum `0xb26a82...b0c402`; ethereum `0xb619c7...fe97e1`; ethereum `0xd06ae7...65ffc5`; ethereum `0xd32cc9...34c920`; ethereum `0xea8199...12d257`; ethereum `0xf530ac...927ca2` | ✅ Audited |
| WstETHGateway | unknown | ethereum | n/a | [`0x5a97e3...93f5e4`](./contracts/ethereum-1/0x5a97e3e43dcbfe620ccf7865739075f92e93f5e4/) | ✅ Audited |
| WstETHPriceFeed | operational_periphery | ethereum | n/a | [`0x2c93a4...0fa4cc`](./contracts/ethereum-1/0x2c93a4c3599c142fe15a8b105eef0cb7f90fa4cc/) | ✅ Audited |
| YearnPriceFeed | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x6c1164...e0cd46`](./contracts/ethereum-1/0x6c116450547340cbb1beed2118ad0f3776e0cd46/); ethereum `0x7f6a40...d70ff4`; ethereum `0x9b4478...6c6fd1`; ethereum `0xc21b38...4877b9` | ✅ Audited |
| YearnV2Adapter | adapter | ethereum | n/a | 13 deployments: ethereum [`0x0afb33...e9caba`](./contracts/ethereum-1/0x0afb33767cab3f7a855f59abac8e789978e9caba/); ethereum `0x215ecb...164ce2`; ethereum `0x520337...0db708`; ethereum `0x765bac...f4392a`; ethereum `0x79404c...624bda`; ethereum `0x79eb63...0dbc1c`; ethereum `0x7fa1c0...5b9207`; ethereum `0x8c8045...6b66fe`; ethereum `0xa6257e...82ee39`; ethereum `0xd389a0...d9aaf6`; ethereum `0xdfcd89...032765`; ethereum `0xf9d496...480327`; ethereum `0xfa5eab...ec6ba1` | ✅ Audited |
| ZeroPriceFeed | operational_periphery | ethereum | n/a | [`0xe279b2...52a516`](./contracts/ethereum-1/0xe279b205e942f2f61380a1fc099b3ae2a152a516/) | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlledOCR2Aggregator | governance | ethereum | n/a | 46 deployments: ethereum [`0x04d81c...4d70af`](./contracts/ethereum-1/0x04d81c346252e31ee888393af6e2037a9a4d70af/); ethereum `0x09409b...b4b234`; ethereum `0x0a11e4...aa63b1`; ethereum `0x10b4ab...90a82a`; ethereum `0x1af88e...d4fb26`; ethereum `0x1e4787...e7e16d`; ethereum `0x206f17...cbb645`; ethereum `0x267d0d...7ff32a`; ethereum `0x2d7cd1...b53c58`; ethereum `0x353fe2...4a9156`; ethereum `0x36f591...e6bdff`; ethereum `0x3a8e84...c3ba7b`; ethereum `0x3b7f4d...0a9e8c`; ethereum `0x3c405e...6b1639`; ethereum `0x3d01b1...e4aef1`; ethereum `0x45639c...d0c6f2`; ethereum `0x55fbfb...04661e`; ethereum `0x5eb719...2044a3`; ethereum `0x619814...304129`; ethereum `0x61e946...13e35a`; ethereum `0x6418bb...4304ec`; ethereum `0x6dc312...673d66`; ethereum `0x6e0317...ef3d54`; ethereum `0x73dd57...bc103c`; ethereum `0x78ad14...e3b502`; ethereum `0x836b51...b8a1f7`; ethereum `0x88ceda...e01500`; ethereum `0x8ab7c3...36144b`; ethereum `0x8cf6df...1b3b7e`; ethereum `0x997a88...1a8821`; ethereum `0x9c838b...cae8d8`; ethereum `0x9d5dcb...c118dd`; ethereum `0xa6aa4c...2442ae`; ethereum `0xa81c82...f27798`; ethereum `0xafda09...b5ee57`; ethereum `0xb30aae...c86b64`; ethereum `0xba5321...4eee61`; ethereum `0xc3990f...52b6f5`; ethereum `0xcd2d4e...857917`; ethereum `0xcf8683...2e7272`; ethereum `0xe1f7a8...54628b`; ethereum `0xe32b88...05afa2`; ethereum `0xe9cf7c...8037a4`; ethereum `0xea753a...21d330`; ethereum `0xf4cf94...a509d8`; ethereum `0xf69c2c...02f260` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | governance | ethereum | n/a | 164 deployments: ethereum [`0x00defc...5cfda1`](./contracts/ethereum-1/0x00defc6738342e4649e7ecbe225f030bb25cfda1/); ethereum `0x015ed4...86a93f`; ethereum `0x065968...e5a119`; ethereum `0x09befc...520a1c`; ethereum `0x0d91c2...fb2715`; ethereum `0x0f6586...a4fb38`; ethereum `0x0ff56f...66a5aa`; ethereum `0x102e16...90ac1c`; ethereum `0x108997...45564b`; ethereum `0x1107be...a13dbf`; ethereum `0x126fc6...9ad2dd`; ethereum `0x12e1dc...e11d2a`; ethereum `0x1545a8...e3ff4a`; ethereum `0x179e97...bd616e`; ethereum `0x1893d8...39f9f9`; ethereum `0x193091...262b31`; ethereum `0x19b47a...38a8aa`; ethereum `0x1a6e19...210025`; ethereum `0x1bc302...7e7d62`; ethereum `0x1e6903...bda409`; ethereum `0x1f4023...d9a232`; ethereum `0x223b5a...c4aa77`; ethereum `0x23641e...5ede77`; ethereum `0x25c286...bc8409`; ethereum `0x2878f0...ecb957`; ethereum `0x28d9c6...e64145`; ethereum `0x2b95f1...28bf9f`; ethereum `0x2bfa14...20b43c`; ethereum `0x2d882b...8ce01f`; ethereum `0x30e03f...4f610e`; ethereum `0x31a53a...09189e`; ethereum `0x3358c5...a13e18`; ethereum `0x3400ab...1d2bd2`; ethereum `0x366082...9e405c`; ethereum `0x37a534...de6d8a`; ethereum `0x37bbd8...fe0eb4`; ethereum `0x3a79e9...86f148`; ethereum `0x3b095c...a6272a`; ethereum `0x3c4a77...bb4661`; ethereum `0x3cd2a2...2a8496`; ethereum `0x3d9b67...d13145`; ethereum `0x3dba84...9f0973`; ethereum `0x3f7526...aa67dc`; ethereum `0x406a33...45005d`; ethereum `0x45d5a2...e95930`; ethereum `0x46dad8...2d9eac`; ethereum `0x478f8c...21757b`; ethereum `0x484c56...76e3a0`; ethereum `0x49c2f9...e8000c`; ethereum `0x4c16e0...0ad7e7`; ethereum `0x4f1454...389a26`; ethereum `0x51db83...a8b27d`; ethereum `0x560746...d5d40c`; ethereum `0x587bb3...10e299`; ethereum `0x59d718...f7bb96`; ethereum `0x5a833e...d600e0`; ethereum `0x5d4f9e...22a2ef`; ethereum `0x5ea974...10f772`; ethereum `0x64d0d7...b95adc`; ethereum `0x673816...ef6c4a`; ethereum `0x6a2525...e0e553`; ethereum `0x6c363c...9c44a5`; ethereum `0x6c383b...f45baa`; ethereum `0x6d658c...259942`; ethereum `0x6e785b...94be66`; ethereum `0x6ec6b0...6cd9db`; ethereum `0x6eedbc...27d72e`; ethereum `0x70433a...dca45a`; ethereum `0x711dd5...7bb8ec`; ethereum `0x73336e...06e3bf`; ethereum `0x75e28f...586b91`; ethereum `0x76ef59...de7b60`; ethereum `0x76f130...24dc63`; ethereum `0x789292...1ea6f9`; ethereum `0x7892b8...b443c6`; ethereum `0x7d82b8...1f8720`; ethereum `0x80e18a...1b5d15`; ethereum `0x82c606...1fef9c`; ethereum `0x838a42...2f73d4`; ethereum `0x855544...e63a64`; ethereum `0x861920...7cfd47`; ethereum `0x89b26d...85688c`; ethereum `0x8a54b9...bfecae`; ethereum `0x8a9925...565edb`; ethereum `0x8b8540...38a2c4`; ethereum `0x8ba1dd...6ab7cb`; ethereum `0x8d8677...58a7ee`; ethereum `0x8d87c1...4f5000`; ethereum `0x945d14...2449a2`; ethereum `0x94aa43...86dfed`; ethereum `0x989eeb...d34581`; ethereum `0x98ef9b...93d505`; ethereum `0x999c1b...86424d`; ethereum `0x9a5e49...5eb34d`; ethereum `0x9af481...5afc88`; ethereum `0x9c43e0...fbd4d6`; ethereum `0x9e34bb...82fffc`; ethereum `0x9efa37...fe50ff`; ethereum `0x9fb0ac...4f6114`; ethereum `0x9fc005...f6658f`; ethereum `0xa1820c...0d34f0`; ethereum `0xa6048a...c13ca3`; ethereum `0xa616f4...d31fb5`; ethereum `0xaa7593...0c6a2c`; ethereum `0xabbb20...e5efca`; ethereum `0xad5097...e1ab58`; ethereum `0xae5de1...9423e8`; ethereum `0xb08948...b7cee1`; ethereum `0xb171f4...c793a9`; ethereum `0xb33706...0e8e91`; ethereum `0xb35ac5...c042f8`; ethereum `0xb406a3...01c61a`; ethereum `0xb49c8b...c8c3fd`; ethereum `0xb54005...5ede10`; ethereum `0xb944b2...e0cce5`; ethereum `0xbb092b...ea473d`; ethereum `0xbba888...513766`; ethereum `0xbbf68c...ea13fb`; ethereum `0xbc715b...6b4775`; ethereum `0xbc8040...cacc79`; ethereum `0xbd16e8...3e45ad`; ethereum `0xc04f6d...6a6603`; ethereum `0xc134b0...97bcab`; ethereum `0xc4b772...5ef67f`; ethereum `0xc4efce...9cab1e`; ethereum `0xc53bc4...3c587c`; ethereum `0xc53cc2...ffc415`; ethereum `0xc9cd8c...e0c7ac`; ethereum `0xcaa453...4ffa20`; ethereum `0xcab261...d01702`; ethereum `0xcbba3f...e9b683`; ethereum `0xcf733e...d4740a`; ethereum `0xcfa3fa...2a1a9b`; ethereum `0xcfcb15...fca4a4`; ethereum `0xd5b220...0143fa`; ethereum `0xd6a0f1...3f54d1`; ethereum `0xda4c30...ba9bba`; ethereum `0xdbeb69...b61dca`; ethereum `0xdc0f7c...3fcf7e`; ethereum `0xdc3a63...64e3e4`; ethereum `0xdc6311...7692ae`; ethereum `0xe00cac...3571a4`; ethereum `0xe0db97...94bada`; ethereum `0xe2bee6...a1bb5d`; ethereum `0xe380e4...d3cfde`; ethereum `0xe41be1...f05bb0`; ethereum `0xe8e186...4009af`; ethereum `0xeb9506...0eb52b`; ethereum `0xec3f26...9c5d1e`; ethereum `0xed470a...6dc978`; ethereum `0xefd14b...cd4a58`; ethereum `0xf31610...1db9f0`; ethereum `0xf42ec9...285d2f`; ethereum `0xf650f2...1f77f8`; ethereum `0xf86c44...d44d48`; ethereum `0xf9b7f0...9dfa5c`; ethereum `0xfac68a...0fd454`; ethereum `0xfad877...30726e`; ethereum `0xfceeea...a0cf05`; ethereum `0xfd1e36...2896c1`; ethereum `0xfda932...3790cc`; ethereum `0xfe24ad...d6498d`; ethereum `0xfec831...1af7d3`; ethereum `0xffeaae...79c99e` | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | ethereum | n/a | [`0xa7df60...f048bc`](./contracts/ethereum-1/0xa7df60785e556d65292a2c9a077bb3a8fbf048bc/) | ⚠️ Unaudited |
| ChannelConfigStore | governance | ethereum | n/a | [`0x1affdb...0160f3`](./contracts/ethereum-1/0x1affdb984bbd8c3382f1ddc8bd605383830160f3/) | ⚠️ Unaudited |
| Configurator | governance | ethereum | n/a | [`0x6d05b6...2e71b1`](./contracts/ethereum-1/0x6d05b6b04a4f456e0ea6a0379b6173eae52e71b1/) | ⚠️ Unaudited |
| ConvexV1BaseRewardPoolAdapter | adapter | ethereum | n/a | 7 deployments: ethereum [`0x0e0b2f...0143e4`](./contracts/ethereum-1/0x0e0b2ff5ebf3c66f58056a9291f0f6f5000143e4/); ethereum `0x7edb56...bcc52a`; ethereum `0x9e7949...e8efb6`; ethereum `0xa4f7a0...e9ef6c`; ethereum `0xb1d996...9c2bd6`; ethereum `0xd20edf...e48f22`; ethereum `0xf6b081...5dec70` | ⚠️ Unaudited |
| CurveV1Adapter2Assets | adapter | ethereum | n/a | 34 deployments: ethereum [`0x0265db...7387e8`](./contracts/ethereum-1/0x0265db609ed11fc65d83aea71192e356e17387e8/); ethereum `0x0a7019...762cd6`; ethereum `0x195fcf...9ae71a`; ethereum `0x23fdd3...b3a507`; ethereum `0x24d4f4...3872c9`; ethereum `0x2be64b...acdb20`; ethereum `0x304442...697792`; ethereum `0x308d17...418400`; ethereum `0x393b00...c9ad5e`; ethereum `0x3a7c37...bc8aec`; ethereum `0x3ceb24...9cc44a`; ethereum `0x43406b...29b538`; ethereum `0x4ac807...a87f8a`; ethereum `0x4d5557...19c581`; ethereum `0x4f6714...4e46ba`; ethereum `0x5293ac...5ae8fc`; ethereum `0x5ec5a9...1d0585`; ethereum `0x637739...5ee12f`; ethereum `0x892a3c...ae3d53`; ethereum `0x89d021...7b87df`; ethereum `0x93c54c...2fb53d`; ethereum `0x9d53b0...7e033f`; ethereum `0x9e9ff4...ada69d`; ethereum `0xa6dd68...b0b489`; ethereum `0xa90f86...197cc2`; ethereum `0xab6b50...6706f4`; ethereum `0xb3c356...db3406`; ethereum `0xbf7b19...936970`; ethereum `0xbf85e2...30aa1a`; ethereum `0xcf37d5...c09853`; ethereum `0xd5a4fa...29557f`; ethereum `0xe1be04...daba50`; ethereum `0xf2d59c...aa45d1`; ethereum `0xfac3ba...52c191` | ⚠️ Unaudited |
| CurveV1Adapter3Assets | adapter | ethereum | n/a | 19 deployments: ethereum [`0x1801b7...545e74`](./contracts/ethereum-1/0x1801b74e283fe4747a681dd6966eef3bf3545e74/); ethereum `0x35fd8d...a49f2b`; ethereum `0x54d652...e07aee`; ethereum `0x5761ac...dcd4bb`; ethereum `0x5eb140...41f7a4`; ethereum `0x67013d...6fb0ff`; ethereum `0x6ccde2...062f15`; ethereum `0x75c164...0c77b4`; ethereum `0x766013...2f99b1`; ethereum `0x8414e8...1d8aa6`; ethereum `0x8a3a43...cbf1ba`; ethereum `0x959889...4197a0`; ethereum `0xaa6b00...f1087a`; ethereum `0xb8cf69...0e3567`; ethereum `0xd58f90...e3411f`; ethereum `0xd5fd89...09dbc3`; ethereum `0xe2eed5...8ef0f2`; ethereum `0xe4c8f3...6cbdbf`; ethereum `0xf4e52a...8a6d75` | ⚠️ Unaudited |
| CurveV1AdapterStableNG | adapter | ethereum | n/a | [`0x47c509...772aea`](./contracts/ethereum-1/0x47c50952dd605c2dd65515be4789718594772aea/) | ⚠️ Unaudited |
| CurveV1AdapterStETH | adapter | ethereum | n/a | 5 deployments: ethereum [`0x316bd4...27a5da`](./contracts/ethereum-1/0x316bd4d614681525cebdb4ee54b7ce140127a5da/); ethereum `0x3752da...8a4ab4`; ethereum `0x5f1275...d9c9f3`; ethereum `0xe0bb74...34b62f`; ethereum `0xfc475c...7c7cce` | ⚠️ Unaudited |
| DefillamaCompressor | operational_periphery | sonic | n/a | [`0x81cb9e...be897a`](./contracts/sonic-146/0x81cb9ea2d59414ab13ec0567efb09767ddbe897a/) | ⚠️ Unaudited |
| DualAggregator | unknown | ethereum | n/a | 9 deployments: ethereum [`0x1eeb87...19a5df`](./contracts/ethereum-1/0x1eeb875dd64f6313ff315679791ae1a27c19a5df/); ethereum `0x205325...3ac9bf`; ethereum `0x320e22...fbb292`; ethereum `0x4f51ad...faec54`; ethereum `0x757eb2...9906ba`; ethereum `0x7d0619...e7593b`; ethereum `0x89301a...8f3bf0`; ethereum `0x9f6b06...6972d9`; ethereum `0xff2f37...a5a0df` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | ethereum | n/a | 50 deployments: ethereum [`0x014f60...25e0a5`](./contracts/ethereum-1/0x014f606c37cfd6fc42ec11d10086df500125e0a5/); ethereum `0x023dfc...9cf3de`; ethereum `0x0ba15e...7ce03a`; ethereum `0x0e7fde...ee4c45`; ethereum `0x14e5fc...ad1aa1`; ethereum `0x16cae6...c8116a`; ethereum `0x171e3e...037997`; ethereum `0x19e2d7...895962`; ethereum `0x1e9cb0...24f6d1`; ethereum `0x2098c2...4eea85`; ethereum `0x26563f...d0bda3`; ethereum `0x2b94a8...d0cef3`; ethereum `0x2f1494...98a85f`; ethereum `0x35e8b2...e3bcc0`; ethereum `0x37be05...728caa`; ethereum `0x3889b7...a2e56b`; ethereum `0x450ce8...bfee96`; ethereum `0x46ce85...970e4a`; ethereum `0x474cfe...f72fc1`; ethereum `0x4be207...31496f`; ethereum `0x5608c6...31ccdb`; ethereum `0x5b7948...a3aa6a`; ethereum `0x5ed77a...43c1c4`; ethereum `0x5f4ec3...5b8419`; ethereum `0x64c4c1...007098`; ethereum `0x7d63d6...b40f6d`; ethereum `0x83beff...ffa2a6`; ethereum `0x84e045...020850`; ethereum `0x89904b...be0bd5`; ethereum `0x8fffff...6818f6`; ethereum `0x9d401a...c9509b`; ethereum `0x9fbb7d...532589`; ethereum `0xa5265f...54b816`; ethereum `0xadcc91...081491`; ethereum `0xb06a26...2684c3`; ethereum `0xb325f0...a7b5f1`; ethereum `0xb51db7...dea526`; ethereum `0xb87046...b715d6`; ethereum `0xb8ab40...b0f8cc`; ethereum `0xbf2b97...e8c289`; ethereum `0xbfc7d9...23602c`; ethereum `0xc557dc...59edc7`; ethereum `0xc90e34...e34ed0`; ethereum `0xd16cc3...41c1a5`; ethereum `0xd95044...049e52`; ethereum `0xde49c7...444aa0`; ethereum `0xe108e7...ca575a`; ethereum `0xe33592...6c3a32`; ethereum `0xe5181a...34659e`; ethereum `0xf34d74...1fb093` | ⚠️ Unaudited |
| GearGaugeDistributor | operational_periphery | ethereum | n/a | [`0x10fb34...cb1272`](./contracts/ethereum-1/0x10fb341b5601033d50423b4da336db719fcb1272/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-35860 (2 proxies) | 2 deployments: ethereum [`0x7b065f...ea73d1`](./contracts/ethereum-1/0x7b065fcb0760df0cea8cfd144e08554f3cea73d1/); ethereum `0xa7d5dd...13f1d5` | ⚠️ Unaudited |
| WstETHV1Adapter | adapter | ethereum | n/a | [`0xac285b...93e331`](./contracts/ethereum-1/0xac285bde32b4830de7bb480b79e0c1f62393e331/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x9fc405...c7eeea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0f918...e930f5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/gearbox/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [2021 Dec - ChainSecurity_Gearbox_audit.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20Dec%20-%20ChainSecurity_Gearbox_audit.pdf) | ChainSecurity | Audit | 2021-12 | stale | Direct | contract_name | 55 | high |
| [2021 Dec - ConsensysDiligence _Fuzzing_report.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20Dec%20-%20ConsensysDiligence%20_Fuzzing_report.pdf) | Consensys Diligence | Audit | 2021-12 | stale | Direct | contract_name | 2 | high |
| [2021 Dec - MixBytes_security_audit_report.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20Dec%20-%20MixBytes_security_audit_report.pdf) | MixBytes | Audit | 2021-12 | stale | Direct | contract_name | 8 | high |
| [2021 May - Peckshield-03.05.2021.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20May%20-%20Peckshield-03.05.2021.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | 2 | medium |
| [2021 Sep - Peckshield-10.08.2021.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20Sep%20-%20Peckshield-10.08.2021.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | 2 | high |
| [2022 Aug - SigmaPrime_Gearbox_Smart_Contract_Security_Assessment_Report_v2.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2022%20Aug%20-%20SigmaPrime_Gearbox_Smart_Contract_Security_Assessment_Report_v2.pdf) | Sigma Prime | Audit | 2022-08 | stale | Direct | contract_name | 9 | high |
| [2022 Oct - ChainSecurity report.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2022%20Oct%20-%20ChainSecurity%20report.pdf) | ChainSecurity | Audit | 2022-10 | stale | Direct | contract_name | 13 | high |
| [2022 Sep - Consensys Diligence.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2022%20Sep%20-%20Consensys%20Diligence.pdf) | Consensys Diligence | Audit | 2022-08 | stale | Direct | contract_name | 9 | high |
| [2023 Apr - ChainSecurity_Gearbox_V2.1.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Apr%20-%20ChainSecurity_Gearbox_V2.1.pdf) | ChainSecurity | Audit | 2023-04 | stale | Direct | contract_name | 72 | high |
| [2023 Aug - ChainSecurity_Gearbox_V2.1.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Aug%20-%20ChainSecurity_Gearbox_V2.1.pdf) | ChainSecurity | Audit | 2023-08 | stale | Direct | contract_name | 69 | high |
| [2023 Dec - ABDK_Gearbox_Core_V3.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20ABDK_Gearbox_Core_V3.pdf) | ABDK | Audit | 2023-12 | stale | Direct | contract_name | 78 | high |
| [2023 Dec - ABDK_Gearbox_Oracles_V3.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20ABDK_Gearbox_Oracles_V3.pdf) | ABDK | Audit | 2023-12 | stale | Direct | contract_name | 64 | high |
| [2023 Dec - ChainSecurity_Gearbox_Governance.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20ChainSecurity_Gearbox_Governance.pdf) | ChainSecurity | Audit | 2023-12 | stale | Direct | contract_name | 0 | n/a |
| [2023 Dec - ChainSecurity_Gearbox_Integrations_V3.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20ChainSecurity_Gearbox_Integrations_V3.pdf) | ChainSecurity | Audit | 2023-11 | stale | Direct | contract_name | 19 | high |
| [2023 Dec - Decurity_Gearbox_Governance.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20Decurity_Gearbox_Governance.pdf) | Decurity | Audit | 2023-11 | stale | Direct | contract_name | 1 | high |
| [2023 Oct - ChainSecurity_Gearbox_Protocol_Partial_Migration_to_V3_audit.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Oct%20-%20ChainSecurity_Gearbox_Protocol_Partial_Migration_to_V3_audit.pdf) | ChainSecurity | Audit | 2023-10 | stale | Direct | contract_name | 8 | high |
| [2023 Sep - ChainSecurity_Gearbox_V2.1.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Sep%20-%20ChainSecurity_Gearbox_V2.1.pdf) | ChainSecurity | Audit | 2023-09 | stale | Direct | contract_name | 69 | high |
| [2024 Aug - ChainSecurity_Gearbox_Oracles_V3.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2024%20Aug%20-%20ChainSecurity_Gearbox_Oracles_V3.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | 64 | high |
| [2024 Dec - Watchpug_Pendle_Oracle.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2024%20Dec%20-%20Watchpug_Pendle_Oracle.pdf) | WatchPug | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [2024 Mar - ChainSecurity_Gearbox_Core_V3.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2024%20Mar%20-%20ChainSecurity_Gearbox_Core_V3.pdf) | ChainSecurity | Audit | 2024-03 | stale | Direct | contract_name | 78 | high |
| [2024-04-mixbytes-bots-integrations.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2024-04-mixbytes-bots-integrations.pdf) | MixBytes | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [2024-08-decurity-pendle-mellow.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2024-08-decurity-pendle-mellow.pdf) | Decurity | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [2024-10-chainsecurity-integrations.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2024-10-chainsecurity-integrations.pdf) | ChainSecurity | Audit | 2024-10 | aging | Direct | contract_name | 19 | high |
| [2024-10-decurity-sky-pyth.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2024-10-decurity-sky-pyth.pdf) | Decurity | Audit | 2024-10 | aging | Direct | contract_name | 0 | n/a |
| [2025 Feb Nethermind AA audit.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2025%20Feb%20Nethermind%20AA%20audit.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 74 | high |
| [2025 Mar SavantChat audit.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2025%20Mar%20%20SavantChat%20audit.pdf) | SavantChat | Audit | 2025-03 | aging | Direct | contract_name | 67 | high |
| [2025-02-decurity-balancer-v3.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2025-02-decurity-balancer-v3.pdf) | Decurity | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2025-03-chainsecurity-v3.1-upgrade.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2025-03-chainsecurity-v3.1-upgrade.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | 138 | high |
| [2025-04-chainsecurity-permissionless.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2025-04-chainsecurity-permissionless.pdf) | ChainSecurity | Audit | 2025-04 | aging | Direct | contract_name | 2 | high |
| [2025-07-chainsecurity-account-migration.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2025-07-chainsecurity-account-migration.pdf) | ChainSecurity | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [2024 May - Pessimistic_Gearbox_Security_Scan.pdf](https://github.com/Gearbox-protocol/security/blob/main/reports/2024%20May%20-%20Pessimistic_Gearbox_Security_Scan.pdf) | Pessimistic | Audit | 2024-05 | stale | Direct | contract_name | 88 | high |
| [ChainSecurity_Gearbox_audit.pdf](https://github.com/Gearbox-protocol/gearbox-contracts/blob/master/audits/ChainSecurity_Gearbox_audit.pdf) | ChainSecurity | Audit | 2021-12 | stale | Direct | contract_name | 8 | high |
| [ConsensysDiligence _Fuzzing_report.pdf](https://github.com/Gearbox-protocol/gearbox-contracts/blob/master/audits/ConsensysDiligence%20_Fuzzing_report.pdf) | Consensys Diligence | Audit | 2021-12 | stale | Direct | contract_name | 2 | high |
| [MixBytes_security_audit_report.pdf](https://github.com/Gearbox-protocol/gearbox-contracts/blob/master/audits/MixBytes_security_audit_report.pdf) | MixBytes | Audit | 2021-12 | stale | Direct | contract_name | 8 | high |
| [Peckshield-03.05.2021.pdf](https://github.com/Gearbox-protocol/gearbox-contracts/blob/master/audits/Peckshield-03.05.2021.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | 2 | medium |
| [Peckshield-10.08.2021.pdf](https://github.com/Gearbox-protocol/gearbox-contracts/blob/master/audits/Peckshield-10.08.2021.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | 2 | high |
| [All the source code and audit reports of the contracts can be found in [Bytecode Repository](). Use search, click on the target contract and then **View Source** or **View Report**. All the Adapters can be found by searching for the ADAPTER domain in Bytecode Repository.](https://permissionless.gearbox.foundation/bytecode) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa7df60...f048bc`](./contracts/ethereum-1/0xa7df60785e556d65292a2c9a077bb3a8fbf048bc/) | AirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1affdb...0160f3`](./contracts/ethereum-1/0x1affdb984bbd8c3382f1ddc8bd605383830160f3/) | ChannelConfigStore | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d05b6...2e71b1`](./contracts/ethereum-1/0x6d05b6b04a4f456e0ea6a0379b6173eae52e71b1/) | Configurator | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x81cb9e...be897a`](./contracts/sonic-146/0x81cb9ea2d59414ab13ec0567efb09767ddbe897a/) | DefillamaCompressor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10fb34...cb1272`](./contracts/ethereum-1/0x10fb341b5601033d50423b4da336db719fcb1272/) | GearGaugeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 19 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=27, medium=2
- Match method counts: extraction_exact=1375

Zero-match audit list:

- [10101] 2023 Dec - ChainSecurity_Gearbox_Governance.pdf
- [10107] 2024 Dec - Watchpug_Pendle_Oracle.pdf
- [10109] 2024-04-mixbytes-bots-integrations.pdf
- [10110] 2024-08-decurity-pendle-mellow.pdf
- [10112] 2024-10-decurity-sky-pyth.pdf
- [10115] 2025-02-decurity-balancer-v3.pdf
- [10118] 2025-07-chainsecurity-account-migration.pdf
- [15033] All the source code and audit reports of the contracts can be found in [Bytecode Repository](). Use search, click on the target contract and then **View Source** or **View Report**. All the Adapters can be found by searching for the ADAPTER domain in Bytecode Repository.

Fork inheritance lineage and inherited audits are included when available.
