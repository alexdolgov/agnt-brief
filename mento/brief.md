# Agentic Audit Brief: Mento

⚠️ Lifecycle status: DECLINING - TVL dropped 24.0% over 90 days

## Project Overview

- Project: Mento (`mento`)
- Website: [https://www.mento.org/](https://www.mento.org/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-12T19:47:40.502Z
- Pipeline run: v2-pipeline-2026-06-12-546062-9988
- Chains: celo
- Contract surface: 218 unique implementations (397 raw deployments)
- DeFi Llama TVL: $13,576,582.00
- On-chain TVL (included contracts): $2,293,991.52
- TVL by chain: Celo $2,293,991.52

## Project Description

Mento is an onchain FX and multi-currency stablecoin protocol on Celo. It enables issuance of Mento stable assets pegged to various fiat currencies, decentralized swaps via the Mento Asset Exchange, and reserve-backed stability through the Mento Reserve.

### Architecture

The Mento Stable Assets family relies on the Reserve & Stability family for collateral backing and peg maintenance, while the Asset Exchange family provides liquidity and trading for these stablecoins. Governance controls all families through timelocked upgrades and parameter changes, and shared oracles (SortedOracles, OracleAdapter) feed price data to both the stability and exchange mechanisms.

## Audit Coverage Summary

- Verified implementations audited: 58/95 (61.1%)
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 2
- Unverified implementations: 123
- Unique implementations: 218
- Raw deployments: 397
- Audits discovered: 23
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): $64,989.56
- Latest audit: 2026-02 (fresh)
- Staleness: 3 fresh, 4 aging, 8 stale, 8 unknown
- Tier 1 coverage: 51.6% (ChainSecurity, Cyfrin, OpenZeppelin)
- Note: This protocol is classified as [declining]. ASD of $64,989.56 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 26 | 27.4% | 2021-02 |
| ChainSecurity | Tier 1 | 23 | 24.2% | 2026-02 |
| 0xMacro | Tier 2 | 9 | 9.5% | 2024-03 |
| Cyfrin | Tier 1 | 1 | 1.1% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (57)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ActivePool | core_logic | celo | [`0xa7873f...8473b2`](./contracts/celo-42220/0xa7873f4bf2a1ea2eb20b1e8a992c4748e78473b2/) | ✅ Audited |
| StableTokenV2 | token | celo | 10 deployments: celo [`0x105d4a...c20d7b`](./contracts/celo-42220/0x105d4a9306d2e55a71d2eb95b81553ae1dc20d7b/); celo `0x434563...d8850e`; celo `0x456a3d...53b0d0`; celo `0x4c3585...410bf6`; celo `0x717550...f492f9`; celo `0x73f93d...f29a08`; celo `0x8a567e...4041ea`; celo `0xe2702b...a76f71`; celo `0xe8537a...ab4787`; celo `0xfaea5f...3c7313` | ✅ Audited |
| StableTokenV3 | token | celo | 7 deployments: celo [`0x4b9b0e...e7a2a2`](./contracts/celo-42220/0x4b9b0e94197b7b2b11d311239e1420106ce7a2a2/); celo `0x765de8...b1282a`; celo `0x815795...74c318`; celo `0xb55a79...ee131d`; celo `0xc45ecf...892e20`; celo `0xccf663...a40746`; celo `0xd8763c...d6ca73` | ✅ Audited |
| StabilityPool | core_logic | celo | 2 deployments: celo [`0x06346c...8aaa15`](./contracts/celo-42220/0x06346c0fab682dbde9f245d2d84677592e8aaa15/); celo `0x2d5d7e...e8c1a5` | ✅ Audited |
| GasPool | core_logic | celo | [`0x8b61f9...79817b`](./contracts/celo-42220/0x8b61f941d89560c7d8b3d595f44f7fd97d79817b/) | ✅ Audited |
| BiPoolManager | core_logic | celo | 2 deployments: celo [`0x22d9db...4ec901`](./contracts/celo-42220/0x22d9db95e6ae61c104a7b6f6c78d7993b94ec901/); celo `0xa3d754...58fd65` | ✅ Audited |
| CDPLiquidityStrategy | core_logic | celo | 2 deployments: celo [`0x4e78bd...dcb985`](./contracts/celo-42220/0x4e78bd9565341eabe99cdc024acb044d9bdcb985/); celo `0xaa6a9b...e31823` | ✅ Audited |
| Accounts | unknown | celo | 9 deployments: celo [`0x0fe151...67ef53`](./contracts/celo-42220/0x0fe15138b6ecf2b9cc3b2bc12fe9671d4267ef53/); celo `0x565677...e2b98c`; celo `0x75ec00...ad9cef`; celo `0x7c4934...7a6683`; celo `0x7d2168...d0aab7`; celo `0x907f5c...9c525a`; celo `0xbac4a3...05f603`; celo `0xc72cf6...25adce`; celo `0xccf3e2...0d3c08` | ✅ Audited |
| AddressesRegistry | registry | celo | [`0xb3136d...fe0c6e`](./contracts/celo-42220/0xb3136dbadb14ab587ffa91545538126938fe0c6e/) | ✅ Audited |
| AddressLinkedList | unknown | celo | [`0x939c9c...712801`](./contracts/celo-42220/0x939c9cefbce3aa3a212d424b5ba978ac1b712801/) | ✅ Audited |
| AddressSortedLinkedList | unknown | celo | [`0x0e3e96...5a1552`](./contracts/celo-42220/0x0e3e96a0d64b59b46872432f47bed6a1825a1552/) | ✅ Audited |
| Attestations | unknown | celo | 4 deployments: celo [`0x572912...15e071`](./contracts/celo-42220/0x5729126891355e3c2626338151dd50cc0415e071/); celo `0x936d74...dd40a8`; celo `0xdc5538...d88d20`; celo `0xf65903...63758c` | ✅ Audited |
| BlockchainParameters | unknown | celo | 4 deployments: celo [`0x3058c4...c46672`](./contracts/celo-42220/0x3058c4197c56c9a9c92d3516f2d4bb8a76c46672/); celo `0x6e10a8...9d5bfa`; celo `0xdefbc8...217955`; celo `0xf33854...832d25` | ✅ Audited |
| BorrowerOperations | core_logic | celo | [`0x8ec9a8...943b8a`](./contracts/celo-42220/0x8ec9a81871f816f1ef007a82293703057a943b8a/) | ✅ Audited |
| BreakerBox | unknown | celo | [`0x303ed1...24ab39`](./contracts/celo-42220/0x303ed1df62fa067659b586ebee8de0ece824ab39/) | ✅ Audited |
| CollateralRegistry | registry | celo | [`0x1bedd4...a605fb`](./contracts/celo-42220/0x1bedd4334335522b0a0e8e610d326b16b0a605fb/) | ✅ Audited |
| CollSurplusPool | core_logic | celo | [`0xfff48e...09d4b6`](./contracts/celo-42220/0xfff48ee3bd2d534e35b54d538de30a9d7709d4b6/) | ✅ Audited |
| ConstantSumPricingModule | unknown | celo | [`0xdebed1...7550fb`](./contracts/celo-42220/0xdebed1f6f6ce9f6e73aa25f95acbffe2397550fb/) | ✅ Audited |
| DefaultPool | core_logic | celo | [`0x95191e...8d0047`](./contracts/celo-42220/0x95191e52d01ec060cea753cdadfeeb07b78d0047/) | ✅ Audited |
| DoubleSigningSlasher | unknown | celo | 4 deployments: celo [`0x078d04...82ffdf`](./contracts/celo-42220/0x078d04807e1a2ab0a1fbe75e7dcf7ce60c82ffdf/); celo `0x4bb82b...568a12`; celo `0x50c100...6772ec`; celo `0xd6d73e...32f0cb` | ✅ Audited |
| DowntimeSlasher | unknown | celo | 4 deployments: celo [`0x71cac3...463fdd`](./contracts/celo-42220/0x71cac3b31c138f3327c6ca14f9a1c8d752463fdd/); celo `0x7ae1bd...b3145e`; celo `0x9ebb6a...a7246f`; celo `0xb07329...8e4c4b` | ✅ Audited |
| Election | unknown | celo | 7 deployments: celo [`0x169c94...3009bc`](./contracts/celo-42220/0x169c946c9f70094b8ad74ee16477f27e713009bc/); celo `0x31efa3...70d77b`; celo `0x3db69c...9f6f28`; celo `0x5ad30f...c0d10b`; celo `0x8d6677...5a7ff6`; celo `0xbd7d39...31780e`; celo `0xcde503...c455d4` | ✅ Audited |
| EpochRewards | unknown | celo | 7 deployments: celo [`0x07f007...28d8b7`](./contracts/celo-42220/0x07f007d389883622ef8d4d347b3f78007f28d8b7/); celo `0x33285c...63464b`; celo `0x4cadba...562aba`; celo `0x563ba8...177eda`; celo `0x755c14...73ff33`; celo `0x97f1b9...382e89`; celo `0x9dc549...f050d9` | ✅ Audited |
| Escrow | operational_periphery | celo | 3 deployments: celo [`0x7a097d...4420c1`](./contracts/celo-42220/0x7a097d13f2b9f4e32efffbf2a5ea756dab4420c1/); celo `0xcc4e6c...88e835`; celo `0xf4fa51...e7ada5` | ✅ Audited |
| Exchange | unknown | celo | 3 deployments: celo [`0x673163...c66275`](./contracts/celo-42220/0x67316300f17f063085ca8bca4bd3f7a5a3c66275/); celo `0x9a470d...39906c`; celo `0xedf3f7...2501a4` | ✅ Audited |
| FactoryRegistry | registry | celo | 2 deployments: celo [`0x7b2f7d...10adf6`](./contracts/celo-42220/0x7b2f7d11eabd576782f77bf2cca46a853410adf6/); celo `0x8124b6...219311` | ✅ Audited |
| FixidityLib | unknown | celo | [`0xd9ce42...72284d`](./contracts/celo-42220/0xd9ce4209888cfdfeb7c3d6e2ca34eeb06272284d/) | ✅ Audited |
| FPMM | unknown | celo | 5 deployments: celo [`0x0feba7...53228d`](./contracts/celo-42220/0x0feba760d93423d127de1b6abecdb60e5253228d/); celo `0x462fe0...aaa19e`; celo `0x8c0014...3fcb56`; celo `0x8cb051...b77f30`; celo `0xb285d4...3ddd2d` | ✅ Audited |
| FPMMFactory | registry | celo | 2 deployments: celo [`0xa849b4...07613b`](./contracts/celo-42220/0xa849b475fe5a4b5c9c3280152c7a1945b907613b/); celo `0xcc5bb0...872a8a` | ✅ Audited |
| GasPriceMinimum | operational_periphery | celo | 6 deployments: celo [`0x0b8464...da1b0f`](./contracts/celo-42220/0x0b8464659baa4e12a2eee42745e1131a6eda1b0f/); celo `0x28905e...3ab53e`; celo `0x52737f...bd6610`; celo `0x7c4194...a52361`; celo `0x8c3d2a...e3ba90`; celo `0xdfca3a...270ecc` | ✅ Audited |
| GoldToken | token | celo | 8 deployments: celo [`0x04a182...c7edb2`](./contracts/celo-42220/0x04a182a01a303a4f1333a5ce1213ae54f0c7edb2/); celo `0x471ece...78a438`; celo `0x4ddeb8...f4abb4`; celo `0x8f5eca...31255e`; celo `0xb16516...b2c19d`; celo `0xcb8710...6a7a39`; celo `0xfa7752...0ad6d5`; celo `0xfea1b3...c4f7b1` | ✅ Audited |
| Governance | unknown | celo | 9 deployments: celo [`0x074a48...3db55e`](./contracts/celo-42220/0x074a4810015d67bafac5fe522c70761f343db55e/); celo `0x1914ea...347f46`; celo `0x19f78d...211b28`; celo `0x40bca4...1824e6`; celo `0x40cac0...a6c57a`; celo `0xd533ca...3b7972`; celo `0xd8476f...490966`; celo `0xf2d7aa...24cb13`; celo `0xf51d27...7a215d` | ✅ Audited |
| LockedGold | unknown | celo | 7 deployments: celo [`0x55e1a0...f213d5`](./contracts/celo-42220/0x55e1a0c8f376964bd339167476063bfed7f213d5/); celo `0x5eaf00...64f4d2`; celo `0x6cc083...03349e`; celo `0xbc5186...1de5ad`; celo `0xc683d9...58283f`; celo `0xdebe38...965e93`; celo `0xe1b236...a5831b` | ✅ Audited |
| Locking | unknown | celo | 2 deployments: celo [`0x001bb6...80279c`](./contracts/celo-42220/0x001bb66636dcd149a1a2ba8c50e408bddd80279c/); celo `0x34c5bb...485d73` | ✅ Audited |
| MarketHoursBreaker | unknown | celo | [`0x0a18b8...4e0daf`](./contracts/celo-42220/0x0a18b8e7338ef8d6025529257aa5ccd5a14e0daf/) | ✅ Audited |
| MedianDeltaBreaker | unknown | celo | [`0x49349f...f9b5d9`](./contracts/celo-42220/0x49349f92d2b17d491e42c8fdb02d19f072f9b5d9/) | ✅ Audited |
| MentoGovernor | governance | celo | 2 deployments: celo [`0x47036d...a59852`](./contracts/celo-42220/0x47036d78bb3169b4f5560dd77bf93f4412a59852/); celo `0xb910a7...671cdf` | ✅ Audited |
| MentoToken | token | celo | [`0x7ff62f...77cfb6`](./contracts/celo-42220/0x7ff62f59e3e89ea34163ea1458eebcc81177cfb6/) | ✅ Audited |
| OracleAdapter | operational_periphery | celo | 2 deployments: celo [`0xa472fb...c4383a`](./contracts/celo-42220/0xa472fbbf4b890a54381977ac392bdf82eec4383a/); celo `0xc1b767...256059` | ✅ Audited |
| Proposals | unknown | celo | 2 deployments: celo [`0x38afc0...ebfba8`](./contracts/celo-42220/0x38afc0dc55415ae27b81c24b5a5fbfe433ebfba8/); celo `0xd4b9fd...79cbc4` | ✅ Audited |
| Proxy | proxy | celo | 3 deployments: celo [`0x38dd9f...181c9f`](./contracts/celo-42220/0x38dd9fa2409758fa0d73440ee18f8e0249181c9f/); celo `0xd626c0...a1bbbb`; celo `0xf10011...e4cf27` | ✅ Audited |
| Random | unknown | celo | 4 deployments: celo [`0x221a13...e3bdab`](./contracts/celo-42220/0x221a13e96d5c0cecb17ffd8a4a458c47ece3bdab/); celo `0x22a4aa...c93dfe`; celo `0x42e074...65bacd`; celo `0xe43ea9...457028` | ✅ Audited |
| Registry | registry | celo | [`0x203fdf...74cb66`](./contracts/celo-42220/0x203fdf86a00999107df531fa00b4ba81d674cb66/) | ✅ Audited |
| Reserve | unknown | celo | 5 deployments: celo [`0x907f37...726aa0`](./contracts/celo-42220/0x907f37a0e9b003df15500c025f7acb496a726aa0/); celo `0x9380fa...ed4eb9`; celo `0x9d65e6...50a400`; celo `0xc683e6...85d607`; celo `0xfd9651...93b57d` | ✅ Audited |
| ReserveLiquidityStrategy | core_logic | celo | 2 deployments: celo [`0x420fbd...dee148`](./contracts/celo-42220/0x420fbdb50dadf0286144bff91ed62a6893dee148/); celo `0xa0fb8b...ae4f0b` | ✅ Audited |
| ReserveV2 | unknown | celo | 2 deployments: celo [`0x4255cf...853806`](./contracts/celo-42220/0x4255cf38e51516766180b33122029a88cb853806/); celo `0xc16d23...1df5ff` | ✅ Audited |
| Router | adapter | celo | [`0x486184...f9b6f6`](./contracts/celo-42220/0x4861840c2efb2b98312b0ae34d86fd73e8f9b6f6/) | ✅ Audited |
| Signatures | unknown | celo | [`0x926a9e...792b7d`](./contracts/celo-42220/0x926a9e7c1a9cb608b6f3068f3ca3811dde792b7d/) | ✅ Audited |
| SortedOracles | operational_periphery | celo | 5 deployments: celo [`0x35a4f0...6f6ab5`](./contracts/celo-42220/0x35a4f0c8c0b48769f036b79f9d428bea286f6ab5/); celo `0x4b6214...ce304a`; celo `0x6ceb70...09d171`; celo `0x93da60...f41f72`; celo `0xefb849...7b7b33` | ✅ Audited |
| SortedTroves | unknown | celo | [`0x46d0c9...12bf9b`](./contracts/celo-42220/0x46d0c9e51e05d6ff38b2a19d6310488f3112bf9b/) | ✅ Audited |
| StableToken | token | celo | [`0x18e6bf...495bcb`](./contracts/celo-42220/0x18e6bfdc909063f7445e410a5495264619495bcb/) | ✅ Audited |
| SystemParams | unknown | celo | 2 deployments: celo [`0x064d8b...cd74e9`](./contracts/celo-42220/0x064d8bcc79711cf51df7ca0a7fe531a271cd74e9/); celo `0x70536e...f0de51` | ✅ Audited |
| TimelockController | governance | celo | 2 deployments: celo [`0x3efad8...c5a2d0`](./contracts/celo-42220/0x3efad8f997f705675924470ec84677db68c5a2d0/); celo `0x890db8...6e2147` | ✅ Audited |
| TroveManager | governance | celo | [`0xb38aef...3885c9`](./contracts/celo-42220/0xb38aef2bf4e34b997330d626ebcd7629de3885c9/) | ✅ Audited |
| TroveNFT | token | celo | [`0x46273a...72c6b6`](./contracts/celo-42220/0x46273a5792013973b64a42e760e6f81d0472c6b6/) | ✅ Audited |
| Validators | unknown | celo | 5 deployments: celo [`0x2e3b47...e7c68d`](./contracts/celo-42220/0x2e3b47cf3163de47e852ff11d53a9ad8dfe7c68d/); celo `0x4b84c7...b71428`; celo `0xa47961...c8dc95`; celo `0xaeb865...4d0c58`; celo `0xbc8ca2...b88d1a` | ✅ Audited |
| VirtualPoolFactory | registry | celo | [`0x22abd4...e5acb3`](./contracts/celo-42220/0x22abd4adf6aab38ac1022352d496a07acee5acb3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StableTokenCADProxy | token | celo | [`0xff4ab1...2b6325`](./contracts/celo-42220/0xff4ab19391af240c311c54200a492233052b6325/) | ⚠️ Unaudited |
| AttestationsProxy | unknown | celo | 18 deployments: celo [`0x2496fd...8e9a3d`](./contracts/celo-42220/0x2496fda4b928e8cf799ac04ea79861ac828e9a3d/); celo `0x252b03...5f1649`; celo `0x30b3c1...0595ac`; celo `0x3a4936...edb3f4`; celo `0x488deb...6c8fa6`; celo `0x4a241b...877da9`; celo `0x65e25c...799411`; celo `0x673f19...74eecb`; celo `0x68da81...504785`; celo `0x93d52a...a0ecf7`; celo `0xb53ce2...d8d96a`; celo `0xc834e7...359afd`; celo `0xcc6517...9e8fbe`; celo `0xdadd05...6f9303`; celo `0xdd944d...99f451`; celo `0xeaaf55...bc9149`; celo `0xf114c7...f5406a`; celo `0xff2ba5...c9fd2d` | ⚠️ Unaudited |
| Broker | unknown | celo | 2 deployments: celo [`0x1b78f6...143e37`](./contracts/celo-42220/0x1b78f6acd05e7bcb00f74863bfd8a7c264143e37/); celo `0x777a82...6b4cad` | ⚠️ Unaudited |
| CeloUnreleasedTreasury | operational_periphery | celo | 3 deployments: celo [`0x0148a2...0ec9d7`](./contracts/celo-42220/0x0148a25d13cbd39d2ff5749369356cbde20ec9d7/); celo `0x7a8c7a...8a434f`; celo `0xa58ce5...f2fae5` | ⚠️ Unaudited |
| CeloUnreleasedTreasuryProxy | operational_periphery | celo | 2 deployments: celo [`0x2efd9e...e86c03`](./contracts/celo-42220/0x2efd9e29cfbfaf32713fbe53fd9033217ee86c03/); celo `0xc50a46...c90c12` | ⚠️ Unaudited |
| ChainlinkRelayerFactory | registry | celo | 2 deployments: celo [`0x247cb6...211663`](./contracts/celo-42220/0x247cb6ecf21bdd2bc29d726cccc8d2f066211663/); celo `0xcf7031...5b4ced` | ⚠️ Unaudited |
| ConstantProductPricingModule | unknown | celo | [`0x0c0712...06dddb`](./contracts/celo-42220/0x0c07126d0cb30e66ef7553cc7c37143b4f06dddb/) | ⚠️ Unaudited |
| EpochManager | governance | celo | 5 deployments: celo [`0x0007fc...5edb5b`](./contracts/celo-42220/0x0007fce3fe6d2f84f2eaddcdac8e8aa1605edb5b/); celo `0x2f9592...530c0e`; celo `0x91e35c...dfc535`; celo `0xd390c7...010787`; celo `0xf424b5...26725e` | ⚠️ Unaudited |
| EpochManagerEnabler | governance | celo | 3 deployments: celo [`0x27075b...5bf0e3`](./contracts/celo-42220/0x27075b83a1df9dcc098c95f0bc45f079f05bf0e3/); celo `0x2d4148...38b687`; celo `0x6d78c7...015312` | ⚠️ Unaudited |
| EpochManagerEnablerProxy | governance | celo | [`0xb50216...f223a3`](./contracts/celo-42220/0xb50216c8225b0802f0197cc8c7e567a6d5f223a3/) | ⚠️ Unaudited |
| ExchangeBRL | unknown | celo | 3 deployments: celo [`0x0d4a42...a2d112`](./contracts/celo-42220/0x0d4a42b2fc30afbf6b6e8f5ce49a659e38a2d112/); celo `0x21772f...883fee`; celo `0x8f2cf9...68a4ea` | ⚠️ Unaudited |
| ExchangeEUR | unknown | celo | 3 deployments: celo [`0x32c2dc...b5dc8d`](./contracts/celo-42220/0x32c2dcb7730ed6fc1eac0444a668f38fd7b5dc8d/); celo `0x622833...0234d9`; celo `0xe38339...d53d1d` | ⚠️ Unaudited |
| FederatedAttestations | unknown | celo | 2 deployments: celo [`0x0ad5b1...d6aff2`](./contracts/celo-42220/0x0ad5b1d0c25ecf6266dd951403723b2687d6aff2/); celo `0x76a4da...53ea85` | ⚠️ Unaudited |
| FeeCurrencyDirectory | unknown | celo | 3 deployments: celo [`0x15f344...2c6276`](./contracts/celo-42220/0x15f344b9e6c3cb6f0376a36a64928b13f62c6276/); celo `0x8a9acf...ae24b6`; celo `0xf6fb74...6d0463` | ⚠️ Unaudited |
| FeeCurrencyDirectoryProxy | unknown | celo | [`0x60f636...d210fa`](./contracts/celo-42220/0x60f6362550868fd1d6e92b2f680f5e02f4d210fa/) | ⚠️ Unaudited |
| FeeCurrencyWhitelist | unknown | celo | 5 deployments: celo [`0x07bd1d...619f58`](./contracts/celo-42220/0x07bd1d6c15c9caed92bedec84f1ae0fc54619f58/); celo `0xa9d609...881afd`; celo `0xbb024e...381b3c`; celo `0xbc7534...220953`; celo `0xc301ef...aabc83` | ⚠️ Unaudited |
| FeeHandler | unknown | celo | 4 deployments: celo [`0x558c20...fea36c`](./contracts/celo-42220/0x558c209b246d5f21cc32a11da29a1cdbdcfea36c/); celo `0x90ed9a...7373a5`; celo `0xcd4377...6b8778`; celo `0xea8f09...0fa97f` | ⚠️ Unaudited |
| Freezer | unknown | celo | 2 deployments: celo [`0x47a472...f4ff5a`](./contracts/celo-42220/0x47a472f45057a9d79d62c6427367016409f4ff5a/); celo `0xa79cdb...6649e6` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | celo | [`0x876477...9e9ae1`](./contracts/celo-42220/0x87647780180b8f55980c7d3ffefe08a9b29e9ae1/) | ⚠️ Unaudited |
| GovernanceSlasher | unknown | celo | 4 deployments: celo [`0x68f04a...5294d5`](./contracts/celo-42220/0x68f04ab73b93f5175207296528454999475294d5/); celo `0xb1b7b6...c51e9e`; celo `0xed1073...6dbe14`; celo `0xf2a347...f43f3c` | ⚠️ Unaudited |
| GrandaMento | unknown | celo | 3 deployments: celo [`0x03f684...454a49`](./contracts/celo-42220/0x03f6842b82dd2c9276931a17dd23d73c16454a49/); celo `0x40857e...e73007`; celo `0x5b2c9e...6f9ab4` | ⚠️ Unaudited |
| HintHelpers | periphery | celo | [`0xafd741...374d82`](./contracts/celo-42220/0xafd741674bc4aa965a788dace5b0434fd4374d82/) | ⚠️ Unaudited |
| IntegerSortedLinkedList | unknown | celo | [`0xa86051...0d047c`](./contracts/celo-42220/0xa86051f29c45218b5f6cd121ebafb690660d047c/) | ⚠️ Unaudited |
| MentoFeeHandlerSeller | unknown | celo | 4 deployments: celo [`0x4efa27...921a74`](./contracts/celo-42220/0x4efa274b7e33476c961065000d58ee09f7921a74/); celo `0x86142c...e12b82`; celo `0xbcf237...3d8c09`; celo `0xd1b237...037aad` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | celo | [`0x78fd33...f8327f`](./contracts/celo-42220/0x78fd33d2bce0389cf41e15947b0eb0ce9df8327f/) | ⚠️ Unaudited |
| OdisPayments | unknown | celo | 2 deployments: celo [`0x9ea5e9...14bf78`](./contracts/celo-42220/0x9ea5e9b9b48a72325d59b3eba147f42b1b14bf78/); celo `0xae6b29...56d0cb` | ⚠️ Unaudited |
| OpenLiquidityStrategy | core_logic | celo | 2 deployments: celo [`0x10e9bd...13e2b7`](./contracts/celo-42220/0x10e9bd0b70716dd9e0d41ca274a5846ff513e2b7/); celo `0x54e2ae...80e40f` | ⚠️ Unaudited |
| ReserveSpenderMultiSigProxy | governance | celo | [`0x554fca...4d2a19`](./contracts/celo-42220/0x554fca0f7c465cd2f8c305a10bf907a2034d2a19/) | ⚠️ Unaudited |
| ReserveTroveFactory | registry | celo | [`0x028594...9519e1`](./contracts/celo-42220/0x02859465dcc7d7f2bee183fc7fac78544c9519e1/) | ⚠️ Unaudited |
| SafeProxy | unknown | celo | [`0xd3d2e5...2137e1`](./contracts/celo-42220/0xd3d2e5c5af667da817b2d752d86c8f40c22137e1/) | ⚠️ Unaudited |
| ScoreManager | governance | celo | 3 deployments: celo [`0x1077e8...d5a937`](./contracts/celo-42220/0x1077e8bd92b2fe31f605631390cb7436aed5a937/); celo `0xba8332...1bf3eb`; celo `0xef3b9c...2f603b` | ⚠️ Unaudited |
| ScoreManagerProxy | governance | celo | [`0x19cdf4...620505`](./contracts/celo-42220/0x19cdf4689d9ee3590fdbe75adefee375b4620505/) | ⚠️ Unaudited |
| StableTokenBRL | token | celo | [`0x5e7297...eddec8`](./contracts/celo-42220/0x5e72978225b5777298b28b7ea543bf0c5feddec8/) | ⚠️ Unaudited |
| StableTokenEUR | token | celo | 2 deployments: celo [`0x09933e...240bb3`](./contracts/celo-42220/0x09933e89986fea776c3be3556dbf9ba23c240bb3/); celo `0x665cb5...a60b78` | ⚠️ Unaudited |
| TransferWhitelist | unknown | celo | [`0xb49e4d...178bcf`](./contracts/celo-42220/0xb49e4d6f0b7f8d0440f75697e6c8b37e09178bcf/) | ⚠️ Unaudited |
| ValueDeltaBreaker | unknown | celo | [`0x4dbc33...87bf68`](./contracts/celo-42220/0x4dbc33b3aba78475a5aa4bc7a5b11445d387bf68/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MultiSig | unknown | celo | 12 deployments: celo [`0x066f67...bd25f2`](./contracts/celo-42220/0x066f672c03347a24ee3f52d1f184f04f7abd25f2/); celo `0x120c00...49e892`; celo `0x41822d...e933d3`; celo `0x65534a...043372`; celo `0x68e231...ee3903`; celo `0x72306f...72c33d`; celo `0xad52b8...14e7fc`; celo `0xb5795c...158fad`; celo `0xb7feac...ff582a`; celo `0xbcb789...c3a567`; celo `0xc99d54...dd411e`; celo `0xed68f8...84aaf7` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Migrations | unknown | celo | 2 deployments: celo [`0x672b7d...daf224`](./contracts/celo-42220/0x672b7ddaf201e5c1a71e5843848035dbccdaf224/); celo `0xe8882d...faf4b7` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (123)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | celo | `0x017fa8...763148` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x0198db...b2632c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x031961...c0c5ff` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x033392...4d7d5e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x03e39a...7d1089` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x03f696...2887b8` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x05bda1...f22faf` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x0775ce...580259` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x086732...e1df0e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x08a4b5...f0bd29` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x09b17f...a31cce` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x0bfe85...5f20eb` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x0cb6fd...42422f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x0cc6e1...ac6a77` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x100a08...48bf03` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x12364a...2fba57` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x147f2a...86c941` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x1690e2...de7df5` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x176697...adfd79` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x195bbd...8c3994` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x1e3d01...42ba5f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x204ba4...34c9d4` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x28079a...7bc798` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x2abea6...a9dd09` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x2abf27...cea929` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x2c4c1f...3cbd7d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x2dad1c...64f261` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x30584e...9f3f7d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x311a6b...106f74` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x34c1c7...32e63b` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x34fe12...119725` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x399e78...6e5a8b` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4c83d1...61af45` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4cf604...ad825f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4e843a...4678b0` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4efa94...8bc05e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4f86a6...2cc01a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x5519a8...9d7deb` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x55f3b4...ecb381` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x585109...685427` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x585e1e...3a26c6` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x59f4ec...7a4b68` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x5d90c0...8c5377` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x61257e...5c3fd5` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x660668...21e73e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x6c5d14...c5a11d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x6c611a...8b1287` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x6fd841...057e62` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x715868...3333cc` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x719936...b2fe87` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x72a1fc...d3543e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x72ce6c...eb3771` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x799c0c...db47b3` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7b586a...060860` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7c68b5...264969` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7da5cf...f188a1` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7e3278...471cb3` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8162ed...c1c148` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x822515...2022e5` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x843fdc...4e49e6` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8b3842...ed37e1` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8bc96d...272e59` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8c2756...11e014` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8cccd3...e903af` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8d7049...58428b` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8db17f...d97f8d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8dd4f8...b13582` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x942bc5...5dd617` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x969d7b...ead654` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x99de1b...61e2ff` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x9a642a...7bee9b` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa16fb1...10a360` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa6dacd...debbfc` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa987a6...dc5752` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa9d3dc...b4b716` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa9da17...ebd17e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xaa933b...189352` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xab8650...703c23` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb325a8...c26245` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb42d0c...210a22` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb511ed...52b488` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb658b5...be2b54` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb98746...ae9feb` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb9e35d...7a1664` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xba53ef...0b38e5` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xbd42ad...721bf7` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xbdec4c...18b2ce` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xbef9ee...57148a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc21090...011e19` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc285ed...afc73b` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc35269...07cd30` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc4cf82...a4a77e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc54e26...48986b` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc682c3...67330d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xcb32ea...d10f3f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd0716c...015c3f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd161fb...550caa` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd2a7fb...265865` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd3a6f3...726702` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd3c300...f2d9ed` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd66c72...339491` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd6d02c...16e6d1` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd8459c...473d34` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xdbfa3e...76f1bc` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xddf776...0b27fe` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe0bd67...cf5657` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe26ae3...79c025` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe46ffe...6f75cb` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe4f927...3984bc` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe507f1...70aea0` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe52eac...f2c697` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe7a9d3...b6fd37` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xea736c...53abba` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xee3708...07213f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xeee820...ba66e1` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xefe50f...d2c80f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf488ad...1aba21` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf895f9...c40855` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf8dc3b...0d9374` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf9cc29...dcffdf` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf9de2d...51c3ed` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xfabf6a...8464c5` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xfe6803...7d64ed` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024-04-11-cyfrin-wormhole-evm-ntt.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/evm/2024-04-11-cyfrin-wormhole-evm-ntt.pdf) | Cyfrin | Audit | 2024-04 | stale | Direct | contract_name | 9 | high |
| [2024-07-23-cyfrin-wormhole-evm-ntt-diff-v1.1.0.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/evm/2024-07-23-cyfrin-wormhole-evm-ntt-diff-v1.1.0.pdf) | Cyfrin | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [2024-03-28-ottersec-solana-ntt.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2024-03-28-ottersec-solana-ntt.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [2024-04-12-neodyme-solana-ntt.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2024-04-12-neodyme-solana-ntt.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [2024-08-02-ottersec-solana-ntt-token-extensions.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2024-08-02-ottersec-solana-ntt-token-extensions.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [2025-04-18-wormhole-ottersec-ntt-v3.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2025-04-18-wormhole-ottersec-ntt-v3.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-05-05-wormhole-ottersec-ntt-v3-solana.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2025-05-05-wormhole-ottersec-ntt-v3-solana.pdf) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [2025-08-22-ottersec-sui-ntt.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/sui/2025-08-22-ottersec-sui-ntt.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [README.md](https://github.com/mento-protocol/docs/blob/main/dive-deeper/security/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audit-reports.md](https://github.com/mento-protocol/docs/blob/main/dive-deeper/security/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [risk-overview.md](https://github.com/mento-protocol/docs/blob/main/dive-deeper/security/risk-overview.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://celo.org/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://www.chainsecurity.com/security-audit/mento-core-v3) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | 7 | low |
| [download report](https://reports.chainsecurity.com/Mento/ChainSecurity_Mento_MentoCoreV3_Audit.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | contract_name | 27 | high |
| [DL audit link](https://www.chainsecurity.com/security-audit/mento-liquity-v2) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [download report](https://reports.chainsecurity.com/Mento/ChainSecurity_Mento_MentoLiquityV2_Audit.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | contract_name | 21 | high |
| [0xmacro.com/library/audits/mento-3](https://0xmacro.com/library/audits/mento-3) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | 3 | high |
| [Sherlock contest](https://audits.sherlock.xyz/dashboard/404ec017225af69f6deff9b722393a44) | Sherlock | Contest | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [0xmacro.com/library/audits/mento-2](https://0xmacro.com/library/audits/mento-2) | 0xMacro | Audit | 2024-01 | stale | Direct | contract_name | 7 | high |
| [0xmacro.com/library/audits/mento-1](https://0xmacro.com/library/audits/mento-1) | 0xMacro | Audit | 2023-08 | stale | Direct | contract_name | 15 | high |
| [www.verilog.solutions/audits/mento](https://www.verilog.solutions/audits/mento) | Verilog Solutions | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [<table><thead><tr><th width="143">Date</th><th>Link</th><th>Auditor</th><th width="100">Version</th></tr></thead><tbody><tr><td>03/2024</td><td><a href="https://0xmacro.com/library/audits/mento-3">Macro audit 3</a></td><td>Macro</td><td>V2.3.0</td></tr><tr><td>03/2024</td><td><a href="https://audits.sherlock.xyz/dashboard/404ec017225af69f6deff9b722393a44">Sherlock contest</a></td><td>Sherlock</td><td>V2.3.0</td></tr><tr><td>01/2024</td><td><a href="https://0xmacro.com/library/audits/mento-2">Macro audit 2</a></td><td>Macro</td><td>V2.3.0</td></tr><tr><td>08/2023</td><td><a href="https://0xmacro.com/library/audits/mento-1">Macro audit 1</a></td><td>Macro</td><td>V2.2.0</td></tr><tr><td>05/2023</td><td><a href="https://www.verilog.solutions/audits/mento/">Verilog (extended)</a></td><td>Verilog</td><td>v2.1.0</td></tr><tr><td>02/2023</td><td><a href="https://www.verilog.solutions/audits/mento/">Verilog</a></td><td>Verilog</td><td>v2.0.0</td></tr><tr><td>2020-2021</td><td><a href=">OpenZeppelin</a></td><td>OpenZeppelin</td><td>v1.0.0</td></tr></tbody></table>](https://www.openzeppelin.com/news/celo-contracts-audit) | OpenZeppelin | Audit | 2021-02 | stale | Direct | contract_name | 110 | high |
| [audits.sherlock.xyz/contests/187](https://audits.sherlock.xyz/contests/187) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | [`0xff4ab1...2b6325`](./contracts/celo-42220/0xff4ab19391af240c311c54200a492233052b6325/) | StableTokenCADProxy | token | $64,989.56 | Verified native implementation with $64,989.56 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x2496fd...8e9a3d`](./contracts/celo-42220/0x2496fda4b928e8cf799ac04ea79861ac828e9a3d/) | AttestationsProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x1b78f6...143e37`](./contracts/celo-42220/0x1b78f6acd05e7bcb00f74863bfd8a7c264143e37/) | Broker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0148a2...0ec9d7`](./contracts/celo-42220/0x0148a25d13cbd39d2ff5749369356cbde20ec9d7/) | CeloUnreleasedTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x2efd9e...e86c03`](./contracts/celo-42220/0x2efd9e29cfbfaf32713fbe53fd9033217ee86c03/) | CeloUnreleasedTreasuryProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0c0712...06dddb`](./contracts/celo-42220/0x0c07126d0cb30e66ef7553cc7c37143b4f06dddb/) | ConstantProductPricingModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0007fc...5edb5b`](./contracts/celo-42220/0x0007fce3fe6d2f84f2eaddcdac8e8aa1605edb5b/) | EpochManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x27075b...5bf0e3`](./contracts/celo-42220/0x27075b83a1df9dcc098c95f0bc45f079f05bf0e3/) | EpochManagerEnabler | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xb50216...f223a3`](./contracts/celo-42220/0xb50216c8225b0802f0197cc8c7e567a6d5f223a3/) | EpochManagerEnablerProxy | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0d4a42...a2d112`](./contracts/celo-42220/0x0d4a42b2fc30afbf6b6e8f5ce49a659e38a2d112/) | ExchangeBRL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x32c2dc...b5dc8d`](./contracts/celo-42220/0x32c2dcb7730ed6fc1eac0444a668f38fd7b5dc8d/) | ExchangeEUR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0ad5b1...d6aff2`](./contracts/celo-42220/0x0ad5b1d0c25ecf6266dd951403723b2687d6aff2/) | FederatedAttestations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x15f344...2c6276`](./contracts/celo-42220/0x15f344b9e6c3cb6f0376a36a64928b13f62c6276/) | FeeCurrencyDirectory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x60f636...d210fa`](./contracts/celo-42220/0x60f6362550868fd1d6e92b2f680f5e02f4d210fa/) | FeeCurrencyDirectoryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x07bd1d...619f58`](./contracts/celo-42220/0x07bd1d6c15c9caed92bedec84f1ae0fc54619f58/) | FeeCurrencyWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x558c20...fea36c`](./contracts/celo-42220/0x558c209b246d5f21cc32a11da29a1cdbdcfea36c/) | FeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x47a472...f4ff5a`](./contracts/celo-42220/0x47a472f45057a9d79d62c6427367016409f4ff5a/) | Freezer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x68f04a...5294d5`](./contracts/celo-42220/0x68f04ab73b93f5175207296528454999475294d5/) | GovernanceSlasher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x03f684...454a49`](./contracts/celo-42220/0x03f6842b82dd2c9276931a17dd23d73c16454a49/) | GrandaMento | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xafd741...374d82`](./contracts/celo-42220/0xafd741674bc4aa965a788dace5b0434fd4374d82/) | HintHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x4efa27...921a74`](./contracts/celo-42220/0x4efa274b7e33476c961065000d58ee09f7921a74/) | MentoFeeHandlerSeller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x672b7d...daf224`](./contracts/celo-42220/0x672b7ddaf201e5c1a71e5843848035dbccdaf224/) | Migrations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x78fd33...f8327f`](./contracts/celo-42220/0x78fd33d2bce0389cf41e15947b0eb0ce9df8327f/) | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x9ea5e9...14bf78`](./contracts/celo-42220/0x9ea5e9b9b48a72325d59b3eba147f42b1b14bf78/) | OdisPayments | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x10e9bd...13e2b7`](./contracts/celo-42220/0x10e9bd0b70716dd9e0d41ca274a5846ff513e2b7/) | OpenLiquidityStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x554fca...4d2a19`](./contracts/celo-42220/0x554fca0f7c465cd2f8c305a10bf907a2034d2a19/) | ReserveSpenderMultiSigProxy | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x028594...9519e1`](./contracts/celo-42220/0x02859465dcc7d7f2bee183fc7fac78544c9519e1/) | ReserveTroveFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x1077e8...d5a937`](./contracts/celo-42220/0x1077e8bd92b2fe31f605631390cb7436aed5a937/) | ScoreManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x19cdf4...620505`](./contracts/celo-42220/0x19cdf4689d9ee3590fdbe75adefee375b4620505/) | ScoreManagerProxy | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x5e7297...eddec8`](./contracts/celo-42220/0x5e72978225b5777298b28b7ea543bf0c5feddec8/) | StableTokenBRL | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x09933e...240bb3`](./contracts/celo-42220/0x09933e89986fea776c3be3556dbf9ba23c240bb3/) | StableTokenEUR | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xb49e4d...178bcf`](./contracts/celo-42220/0xb49e4d6f0b7f8d0440f75697e6c8b37e09178bcf/) | TransferWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x4dbc33...87bf68`](./contracts/celo-42220/0x4dbc33b3aba78475a5aa4bc7a5b11445d387bf68/) | ValueDeltaBreaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 150 |
| upstream | 0 |
| standard_library | 16 |
| needs_review | 52 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7, low=1
- Match method counts: extraction_exact=199

Zero-match audit list:

- [6140] 2024-07-23-cyfrin-wormhole-evm-ntt-diff-v1.1.0.pdf
- [6141] 2024-03-28-ottersec-solana-ntt.pdf
- [6142] 2024-04-12-neodyme-solana-ntt.pdf
- [6143] 2024-08-02-ottersec-solana-ntt-token-extensions.pdf
- [6144] 2025-04-18-wormhole-ottersec-ntt-v3.pdf
- [6145] 2025-05-05-wormhole-ottersec-ntt-v3-solana.pdf
- [6146] 2025-08-22-ottersec-sui-ntt.pdf
- [6184] README.md
- [6185] audit-reports.md
- [6186] risk-overview.md
- [12415] DL audit link
- [12418] DL audit link
- [12421] Sherlock contest
- [12424] www.verilog.solutions/audits/mento
- [12426] audits.sherlock.xyz/contests/187

Fork inheritance lineage and inherited audits are included when available.
