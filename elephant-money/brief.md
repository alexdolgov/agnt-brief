# Agentic Audit Brief: Elephant Money

## Project Overview

- Project: Elephant Money (`elephant-money`)
- Website: [https://elephant.money](https://elephant.money)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.664Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: bsc
- Contract surface: 266 unique implementations (374 raw deployments)
- DeFi Llama TVL: $70,398,487.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 118 project-authored contract(s) across 1 chain(s); 10 ERC20 tokens, 5 ERC721 NFTs, 1 ERC1155 multi-token, 1 Chainlink feed; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 10 common project-authored base contract(s) (whitelist, elephantcore, initializableownable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 610; live-surface contracts included: 374 (182 live, 192 unknown).
- Excluded by liveness: 236 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/73 (5.5%)
- Deployed-live implementations: 74 of 266 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/74
- Verified + Unaudited implementations: 70
- Verified by bytecode match: 0
- Unverified implementations: 192
- Unique implementations: 266
- Raw deployments: 374
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 4 | 5.4% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BankrollNetworkStack | unknown | bsc | n/a | [`0xec10059ba900883ed6154883e9f3a1c24fce1eb7`](./contracts/bsc-56/0xec10059ba900883ed6154883e9f3a1c24fce1eb7/) | ✅ Audited |
| Elephant | unknown | bsc | n/a | 2 deployments: bsc [`0xd96ec811359bfd94d2dfe2a3bd8da68bf262be1a`](./contracts/bsc-56/0xd96ec811359bfd94d2dfe2a3bd8da68bf262be1a/); bsc `0xe283d0e3b8c102badf5e8166b73e02d96d92f688` | ✅ Audited |
| ElephantDollar | unknown | bsc | n/a | [`0xdd325c38b12903b727d16961e61333f4871a70e0`](./contracts/bsc-56/0xdd325c38b12903b727d16961e61333f4871a70e0/) | ✅ Audited |
| Treasury | operational_periphery | bsc | n/a | 8 deployments: bsc [`0x2da1a94e7bda3a71342a19643f94443641b5267d`](./contracts/bsc-56/0x2da1a94e7bda3a71342a19643f94443641b5267d/); bsc `0x98f6c7c953cf4cef0fd632b2509c9e349687fc92`; bsc `0xacef13009d7e5701798a0d2c7cc7e07f6937bfdd`; bsc `0xaf0980a0f52954777c491166e7f40db2b6fbb4fc`; bsc `0xc6a42b74867d1f7049192ffb6d0a9d77696d18bb`; bsc `0xcb5a02bb3a38e92e591d323d6824586608ce8ce4`; bsc `0xd3b4fb63e249a727b9976864b28184b85abc6fdf`; bsc `0xd9de89efb084fff7900eac23f2a991894500ec3e` | ✅ Audited |

### ⚠️ Verified + Unaudited (70)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdministrativeNFTMinter | unknown | bsc | n/a | [`0xa9421179abe9faa3ab01d9086ff6da0cd82a8ee4`](./contracts/bsc-56/0xa9421179abe9faa3ab01d9086ff6da0cd82a8ee4/) | ⚠️ Unaudited |
| AprForwardingTreasuryStrategy | unknown | bsc | n/a | 3 deployments: bsc [`0x01fb3809de463d114b66d7e428035196cd6ae484`](./contracts/bsc-56/0x01fb3809de463d114b66d7e428035196cd6ae484/); bsc `0x3750a4a5e7d7198163df95d436b8d5ea7e64f326`; bsc `0x6349cbe970863ebcf864b375d50bf3bc77f4a101` | ⚠️ Unaudited |
| autoBsw | unknown | bsc | n/a | [`0x97a16ff6fd63a46bf973671762a39f3780cda73d`](./contracts/bsc-56/0x97a16ff6fd63a46bf973671762a39f3780cda73d/) | ⚠️ Unaudited |
| BackedForwardingPool | unknown | bsc | n/a | [`0x99c9196f2bcb898f94a346b27cde7ce305ea8f05`](./contracts/bsc-56/0x99c9196f2bcb898f94a346b27cde7ce305ea8f05/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | 2 deployments: bsc [`0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7cea3dedca5984780bafc599bd69add087d56` | ⚠️ Unaudited |
| BiswapFactory | registry | bsc | n/a | [`0x858e3312ed3a876947ea49d572a7c42de08af7ee`](./contracts/bsc-56/0x858e3312ed3a876947ea49d572a7c42de08af7ee/) | ⚠️ Unaudited |
| BiswapRouter02 | adapter | bsc | n/a | [`0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8`](./contracts/bsc-56/0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8/) | ⚠️ Unaudited |
| BNBReserveStrategy | unknown | bsc | n/a | 2 deployments: bsc [`0xb74e9677bdfeabbf33614d468a74b502bc4ff897`](./contracts/bsc-56/0xb74e9677bdfeabbf33614d468a74b502bc4ff897/); bsc `0xcccc27bafb2008f800c918ab2cd260a3b051b43c` | ⚠️ Unaudited |
| BotGasStation | unknown | bsc | n/a | [`0xc4d9b08d0d7632f8e1a0f07f91e10f0c4a6778b9`](./contracts/bsc-56/0xc4d9b08d0d7632f8e1a0f07f91e10f0c4a6778b9/) | ⚠️ Unaudited |
| BSWToken | token | bsc | n/a | [`0x965f527d9159dce6288a2219db51fc6eef120dd1`](./contracts/bsc-56/0x965f527d9159dce6288a2219db51fc6eef120dd1/) | ⚠️ Unaudited |
| BTCBTurbine | unknown | bsc | n/a | [`0x2e74b429836d7357348b520139a3a6145441858c`](./contracts/bsc-56/0x2e74b429836d7357348b520139a3a6145441858c/) | ⚠️ Unaudited |
| Depot | unknown | bsc | n/a | 2 deployments: bsc [`0x1a6a71f07d85f3aa76baa5616a7bda3ccf7e68a5`](./contracts/bsc-56/0x1a6a71f07d85f3aa76baa5616a7bda3ccf7e68a5/); bsc `0x6da24602756d5c6177dd3090953f8e2e9e39f42b` | ⚠️ Unaudited |
| DODOBscToken | token | bsc | n/a | [`0x67ee3cb086f8a16f34bee3ca72fad36f7db929e2`](./contracts/bsc-56/0x67ee3cb086f8a16f34bee3ca72fad36f7db929e2/) | ⚠️ Unaudited |
| DODODppProxy | unknown | bsc | n/a | [`0x624fc8368fe11be00d8b2f3fe0b9d0053bec21b9`](./contracts/bsc-56/0x624fc8368fe11be00d8b2f3fe0b9d0053bec21b9/) | ⚠️ Unaudited |
| DODODspProxy | unknown | bsc | n/a | [`0x2442a8b5cdf1e659f3f949a7e454caa554d4e65a`](./contracts/bsc-56/0x2442a8b5cdf1e659f3f949a7e454caa554d4e65a/) | ⚠️ Unaudited |
| DODOMine | unknown | bsc | n/a | [`0x01f9bfac04e6184e90bd7eafd51999ce430cc750`](./contracts/bsc-56/0x01f9bfac04e6184e90bd7eafd51999ce430cc750/) | ⚠️ Unaudited |
| DODOMineV3Proxy | unknown | bsc | n/a | [`0x8f3fb1f9148dc473453163bf31de1d830eb5c590`](./contracts/bsc-56/0x8f3fb1f9148dc473453163bf31de1d830eb5c590/) | ⚠️ Unaudited |
| DODONFT | token | bsc | n/a | [`0x5ed972c0a7f8d0c4dedf6a37848a297b67489888`](./contracts/bsc-56/0x5ed972c0a7f8d0c4dedf6a37848a297b67489888/) | ⚠️ Unaudited |
| DODONFT1155 | token | bsc | n/a | [`0xdc9224cbc4b1826bb74ff383ff1ce94de1f56119`](./contracts/bsc-56/0xdc9224cbc4b1826bb74ff383ff1ce94de1f56119/) | ⚠️ Unaudited |
| DODORouteProxy | unknown | bsc | n/a | [`0x6b3d817814eabc984d51896b1015c0b89e9737ca`](./contracts/bsc-56/0x6b3d817814eabc984d51896b1015c0b89e9737ca/) | ⚠️ Unaudited |
| DODOV2Proxy02 | unknown | bsc | n/a | [`0x8f8dd7db1bda5ed3da8c9daf3bfa471c12d58486`](./contracts/bsc-56/0x8f8dd7db1bda5ed3da8c9daf3bfa471c12d58486/) | ⚠️ Unaudited |
| DPPAdvanced | unknown | bsc | n/a | [`0x0fe261aee0d1c4dfddee4102e82dd425999065f4`](./contracts/bsc-56/0x0fe261aee0d1c4dfddee4102e82dd425999065f4/) | ⚠️ Unaudited |
| DPPFactory | registry | bsc | n/a | [`0xd9cac3d964327e47399aebd8e1e6dcc4c251daae`](./contracts/bsc-56/0xd9cac3d964327e47399aebd8e1e6dcc4c251daae/) | ⚠️ Unaudited |
| DVMFactory | registry | bsc | n/a | [`0x790b4a80fb1094589a3c0efc8740aa9b0c1733fb`](./contracts/bsc-56/0x790b4a80fb1094589a3c0efc8740aa9b0c1733fb/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | bsc | n/a | [`0x0567f2323251f0aab15c8dfb1967e4e8a7d42aee`](./contracts/bsc-56/0x0567f2323251f0aab15c8dfb1967e4e8a7d42aee/) | ⚠️ Unaudited |
| ElephantDollarDistributor | unknown | bsc | n/a | 5 deployments: bsc [`0x00c66cf7b0e38d4eb528c81c28b55ca589da2cd2`](./contracts/bsc-56/0x00c66cf7b0e38d4eb528c81c28b55ca589da2cd2/); bsc `0x8655e8f5febef300645d2cabad84a1fda72eee3b`; bsc `0x9462e7d37c7765a5acbb55cd3eebeabe9f46de89`; bsc `0xb702b3df8a4ae675c4dd392f8f44a08321c9529c`; bsc `0xdb2c2741542e37bda373be49605cb8efc5440455` | ⚠️ Unaudited |
| ElephantMarketPlace | unknown | bsc | n/a | 3 deployments: bsc [`0x2390901198838aabbb383ce0ac215ad9e05e2a66`](./contracts/bsc-56/0x2390901198838aabbb383ce0ac215ad9e05e2a66/); bsc `0x4d1e19b5a6e68abe4dc5ce35f161070692802b7c`; bsc `0xb6c05cfe10c5dae4fa8d97f14f0161e978ae42ea` | ⚠️ Unaudited |
| ElephantMoneyUnlimitedNFT | token | bsc | n/a | [`0xb92afedc8f8618be4198fbe5d97adb7c60ab3198`](./contracts/bsc-56/0xb92afedc8f8618be4198fbe5d97adb7c60ab3198/) | ⚠️ Unaudited |
| ElephantNFTStaking | unknown | bsc | n/a | 3 deployments: bsc [`0x95beb12924e565e9b1f57d86d8fd848fa52706ce`](./contracts/bsc-56/0x95beb12924e565e9b1f57d86d8fd848fa52706ce/); bsc `0x9a372caefe9534dc09b87a8d99fe7c23508ec4da`; bsc `0xb2b1d88aa427c2e1849e6d9ab2169d57f91c4fb3` | ⚠️ Unaudited |
| ElephantPoolDistributor | unknown | bsc | n/a | 2 deployments: bsc [`0x612ce90180ec0185ad1aa09c74704a048a4cccba`](./contracts/bsc-56/0x612ce90180ec0185ad1aa09c74704a048a4cccba/); bsc `0xed551486af4fb6472867a8f5e2fabc4b19208843` | ⚠️ Unaudited |
| ElephantYieldEngine | unknown | bsc | n/a | [`0x2689e35a22b750c046faeb892eb3868a408c5efd`](./contracts/bsc-56/0x2689e35a22b750c046faeb892eb3868a408c5efd/) | ⚠️ Unaudited |
| ERC20Mine | token | bsc | n/a | [`0x322b43e406d1b4df9bc36d058317dd1cd3b0385f`](./contracts/bsc-56/0x322b43e406d1b4df9bc36d058317dd1cd3b0385f/) | ⚠️ Unaudited |
| ERC20V3Factory | registry | bsc | n/a | [`0x5ed22a48fee263207f5caae1a1f1a27011e7dc92`](./contracts/bsc-56/0x5ed22a48fee263207f5caae1a1f1a27011e7dc92/) | ⚠️ Unaudited |
| FarmEngine | unknown | bsc | n/a | [`0xa3473fcea7c6cbdfad6326351e07d93f1bab3281`](./contracts/bsc-56/0xa3473fcea7c6cbdfad6326351e07d93f1bab3281/) | ⚠️ Unaudited |
| Fear | unknown | bsc | n/a | [`0x3e629332c51046a17ec236553cb931cf0548b5e1`](./contracts/bsc-56/0x3e629332c51046a17ec236553cb931cf0548b5e1/) | ⚠️ Unaudited |
| FlowEngine | unknown | bsc | n/a | [`0x202b8d57709a03d1f9a78c9a034786f5fb8576ab`](./contracts/bsc-56/0x202b8d57709a03d1f9a78c9a034786f5fb8576ab/) | ⚠️ Unaudited |
| FuturesActionVault | unknown | bsc | n/a | [`0x5c5778073e9207ce1479276724fc31757ed436ae`](./contracts/bsc-56/0x5c5778073e9207ce1479276724fc31757ed436ae/) | ⚠️ Unaudited |
| FuturesEngine | unknown | bsc | n/a | 12 deployments: bsc [`0x155479d35a6d544268db8f5919c24c1b6cd7c791`](./contracts/bsc-56/0x155479d35a6d544268db8f5919c24c1b6cd7c791/); bsc `0x1f61a437645b403c15775184a91a6d98ed3fdaeb`; bsc `0x5b24f7645eec47edd997bf8fadf3e340518af11b`; bsc `0x5d87d8131b2582d385c45d86e461ab61b876237a`; bsc `0x6c81fd141d97edbeda047a7694b63637e0e1a1ee`; bsc `0x778c191ecc493fe03a0a2364cfea264cb5e38440`; bsc `0x8a3955e475426fd81e4e2f5e9c90b8e3fc19ec06`; bsc `0x9a37fa4da95a0656dbb026b79b258558e5ceed56`; bsc `0x9ecde1e7e4e5d2ff05d8c7da34f7c850ae2cd68e`; bsc `0xa29004c5d8c2efae284195d8059131ee821f3381`; bsc `0xc22e924b10e75045c943a2d950f44a89bc208573`; bsc `0xe98529190706fdedaef1ad3f5dce1515601dcead` | ⚠️ Unaudited |
| FuturesNFTMigrationVault | unknown | bsc | n/a | [`0x9ae4de43feb64e85698dd3c66b0666448a8ff408`](./contracts/bsc-56/0x9ae4de43feb64e85698dd3c66b0666448a8ff408/) | ⚠️ Unaudited |
| FuturesRDFVault | unknown | bsc | n/a | [`0xa8e3ee88a52644edfd50d4f5527641f5f0535b3e`](./contracts/bsc-56/0xa8e3ee88a52644edfd50d4f5527641f5f0535b3e/) | ⚠️ Unaudited |
| FuturesVault | unknown | bsc | n/a | [`0xaeb9b31b9728a2c3d4df59748442d27f2277fcd2`](./contracts/bsc-56/0xaeb9b31b9728a2c3d4df59748442d27f2277fcd2/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | n/a | [`0xd5d3711939d88322a7dceeb529ace4bac3bac644`](./contracts/bsc-56/0xd5d3711939d88322a7dceeb529ace4bac3bac644/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0xdbc1a13490deef9c3c12b44fe77b503c1b061739`](./contracts/bsc-56/0xdbc1a13490deef9c3c12b44fe77b503c1b061739/) | ⚠️ Unaudited |
| MysteryBoxKAKA | unknown | bsc | n/a | [`0xdf7e00cd0bb91d1502a1a14575e58b5d8f20c8d4`](./contracts/bsc-56/0xdf7e00cd0bb91d1502a1a14575e58b5d8f20c8d4/) | ⚠️ Unaudited |
| MysteryBoxV1 | unknown | bsc | n/a | [`0xc25286ef3bae3f6fe2d6d0a6e2acad0301af97b8`](./contracts/bsc-56/0xc25286ef3bae3f6fe2d6d0a6e2acad0301af97b8/) | ⚠️ Unaudited |
| NFTMarketplaceHelper | unknown | bsc | n/a | 5 deployments: bsc [`0x22a46d2da104b9bfc8c6b2dfd2a8c0632432c150`](./contracts/bsc-56/0x22a46d2da104b9bfc8c6b2dfd2a8c0632432c150/); bsc `0x36239e0913c94872f727557d10534a5496f1e30d`; bsc `0x3f3badb33a2d23e05736ba42da9e8f87f12130e0`; bsc `0x6f43186b7c5fc85a058d96984ad7947492ca3248`; bsc `0xf57cadec454e335f7088c8348fe542c77f6fceb3` | ⚠️ Unaudited |
| NFTSalesTracker | unknown | bsc | n/a | 2 deployments: bsc [`0x2aefa3eb03f12eb93d6868fc5cbb250b9cd8ce12`](./contracts/bsc-56/0x2aefa3eb03f12eb93d6868fc5cbb250b9cd8ce12/); bsc `0xbe896646f0f7d65f5c793e356f6093f0afe07871` | ⚠️ Unaudited |
| PancakeFactory | registry | bsc | n/a | [`0xca143ce32fe78f1f7019d7d551a6402fc5350c73`](./contracts/bsc-56/0xca143ce32fe78f1f7019d7d551a6402fc5350c73/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | 4 deployments: bsc [`0x1cea83ec5e48d9157fcae27a19807bef79195ce1`](./contracts/bsc-56/0x1cea83ec5e48d9157fcae27a19807bef79195ce1/); bsc `0x4e90f5696f0c3c2a03cdbd3b41d0f683df4b861b`; bsc `0x647bc907d520c3f63be38d01dbd979f5606bec48`; bsc `0xf15a72b15fc4caed6fadb1ba7347f6ccd1e0aede` | ⚠️ Unaudited |
| PancakeRouter | adapter | bsc | n/a | 2 deployments: bsc [`0x10ed43c718714eb63d5aa57b78b54704e256024e`](./contracts/bsc-56/0x10ed43c718714eb63d5aa57b78b54704e256024e/); bsc `0x2ad2c5314028897aecfcf37fd923c079beeb2c56` | ⚠️ Unaudited |
| PcsPeriodicTwapOracle | unknown | bsc | n/a | [`0x28fafc6ff614e6c2d7ca95959a3c0881fd5679e3`](./contracts/bsc-56/0x28fafc6ff614e6c2d7ca95959a3c0881fd5679e3/) | ⚠️ Unaudited |
| PcsSnapshotTwapOracle | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x5606ee12d741716c260fda2f6c89efdf60326d3c`](./contracts/bsc-56/0x5606ee12d741716c260fda2f6c89efdf60326d3c/); bsc `0xb9394b2dd11115721d93a6f05215f81c54893861` | ⚠️ Unaudited |
| PegSupportTreasuryStrategy | unknown | bsc | n/a | [`0x6b5eeb214a87d1d296652dec8c48bbdd1590e567`](./contracts/bsc-56/0x6b5eeb214a87d1d296652dec8c48bbdd1590e567/) | ⚠️ Unaudited |
| PerformanceFund | unknown | bsc | n/a | [`0xd23d87a44977b0d77a8f8ca70e037b9001d412ac`](./contracts/bsc-56/0xd23d87a44977b0d77a8f8ca70e037b9001d412ac/) | ⚠️ Unaudited |
| PerformanceFundV3 | unknown | bsc | n/a | [`0x0600445ac4e20f1668556e0e058b3dc369d96162`](./contracts/bsc-56/0x0600445ac4e20f1668556e0e058b3dc369d96162/) | ⚠️ Unaudited |
| ReferralData | unknown | bsc | n/a | [`0x6248d9a3dff17dcda92141aa1e8f1e9d6fe1ea4a`](./contracts/bsc-56/0x6248d9a3dff17dcda92141aa1e8f1e9d6fe1ea4a/) | ⚠️ Unaudited |
| SmartChef | unknown | bsc | n/a | 53 deployments: bsc [`0x00a142210f6b3bb3f78751dcd7b589e9e7b39346`](./contracts/bsc-56/0x00a142210f6b3bb3f78751dcd7b589e9e7b39346/); bsc `0x00d2d8352fb688d8d60ae128cb171ef2ecfff1d4`; bsc `0x015c8be8d944b0190a8c7280ca874169713a44c1`; bsc `0x0189521e47093a317568055452ff66ebd3b731a9`; bsc `0x0999758d218987296c798326a0378995340c1e1b`; bsc `0x0c1e98645a1ee7f7a72e7491d77ae39676e457c9`; bsc `0x109eaa8b5ea469fb5ace0647a93695d8dcd5e836`; bsc `0x12e5b44374d4cc032800f87af9c3671ba2d93c3f`; bsc `0x13e9031133e901d5214fb4d593df8ecc034c8237`; bsc `0x1c3c5c8f97cad892a71ad090b5f8a161e4661492`; bsc `0x1f337dea1679730906f46a06fd6034054bd32970`; bsc `0x2792ccd3f02a22beba49f28f3ab0b52df18bd280`; bsc `0x2968daed4da7f9fa3edb63bf64b1c924aead6a46`; bsc `0x36fc9ceadab79156e39f164cc7f7fe987128860f`; bsc `0x50945a039421ebb59ed119b0d25ffd007f0358ac`; bsc `0x53c60a2a4154065111119ebc78265dcac7bd9891`; bsc `0x62cfcc37ec021bd245e8307e839d62b30d258373`; bsc `0x66ac2add22e63fa351344430b942b9368dd955ae`; bsc `0x69c4c9cf979431da6c4b4a2f3874e6378dfc8157`; bsc `0x7468aff7cff81ec2391b73e91cfda3a68833bebd`; bsc `0x7517c3d01e931062b7cb2155ccc75e5b29358dc6`; bsc `0x7951bc4f2bee7a642a8b3cf7d34c398e8e6fafc0`; bsc `0x81af4b68bca0b5a631e60aa69f678a0e0ebc5d61`; bsc `0x85028191179610cf7fcb780d0431921409de5bbb`; bsc `0x8b10e6959f2915f532fe142b9c53b167eec42ff4`; bsc `0x8d87f0282218f9e6fcdb5567c506f97d44105e71`; bsc `0x8ddfcdca3019518feb2a06d42748869b2c916f2d`; bsc `0x973304a8e7b13dc9a26769e85d7cc945f4fda649`; bsc `0x994f7b32eea35ade9b8bfd3cef19e9b6efe0cb24`; bsc `0x9b0111326b87d4ff67542c5a5fd719e506892c03`; bsc `0x9b9f3f1112e74765518ce93b1489c70f6db52bff`; bsc `0xa394dd5adc4aaf41aa1f9cff28158a6af2823459`; bsc `0xaa2b37d023ffa244022a9aa60eeb351cc79fd4e5`; bsc `0xab4592fc5a7f4f0f1829338a2dc85b4ad28a4784`; bsc `0xacb2f1d90bd3d182bdc9b9fce799efbe18e496f2`; bsc `0xb12c5543a277bd3c6190753474db4e04412f57b6`; bsc `0xc506769a21ecccd719c89fc44e31b1ecdc81e920`; bsc `0xc7ba45cb131c93816fa03e4c03da22b22f2ac468`; bsc `0xcc1b012ad72736653e1e5043d902a4081f3f6a73`; bsc `0xd4855892a3188da76da0066b9e4918939511e67a`; bsc `0xd59227c5fb89e812c42a5ed12c71de83dc5f3161`; bsc `0xe018d66f21c6f2ac93b652428df9d1755401831d`; bsc `0xe056fb8ce6a3437530b1aff799185a009b25990b`; bsc `0xe42d17b1a734e04d2e0cb33234ab074e21c175a7`; bsc `0xe6c58b1626c2960d334c7996c999450d6dcb9cc5`; bsc `0xe737edf3de0ace760d5497610ef2f317a43673a8`; bsc `0xeb81346e00aba3d5b90ad42c1f02bd3c200540b7`; bsc `0xeeee294dcad6fe1f213988b82f45718d95d8e193`; bsc `0xf31f62a6afb0546771a821e0f98fd187ee7f7d4c`; bsc `0xf4540b8dd7b957ca9b1acdbf75ec6b6f17950f0d`; bsc `0xf54c23398fdbd72ab1d1708099d5faad84cd9ff1`; bsc `0xf62e2321b04248a381bbac9ed2ac788775d1c899`; bsc `0xfd6820eca12a8dd9e92b1bbb7dfc9f4afa367275` | ⚠️ Unaudited |
| StampedeEngine | unknown | bsc | n/a | 4 deployments: bsc [`0x7c4dad1b249efdc998f3569c8537866639b914b7`](./contracts/bsc-56/0x7c4dad1b249efdc998f3569c8537866639b914b7/); bsc `0x7f6cecdd1b779e11e892643863fd5bae8da171ce`; bsc `0xac029255e8ed91cca690df20b6dc89ba10d65c14`; bsc `0xdd8ad431c5143e06c68d35dad1974ce3987b68a8` | ⚠️ Unaudited |
| StampedeMigrationEngine | unknown | bsc | n/a | 2 deployments: bsc [`0x24f1c78008afea4e1a2639db62a2b9d17ef99c58`](./contracts/bsc-56/0x24f1c78008afea4e1a2639db62a2b9d17ef99c58/); bsc `0x49241ea8ec03ffa5521ad8717579e396ceb02400` | ⚠️ Unaudited |
| SuperCharger | unknown | bsc | n/a | [`0xec8c93d29418b4d3e13edb18cc6dbc24606d7305`](./contracts/bsc-56/0xec8c93d29418b4d3e13edb18cc6dbc24606d7305/) | ⚠️ Unaudited |
| Trumpet | unknown | bsc | n/a | [`0x574a691d05eee825299024b2de584b208647e073`](./contracts/bsc-56/0x574a691d05eee825299024b2de584b208647e073/) | ⚠️ Unaudited |
| TrunkElephantLiquidityBridge | unknown | bsc | n/a | 2 deployments: bsc [`0x470cb1f8addb6476c420d0e35744842eeff1f1de`](./contracts/bsc-56/0x470cb1f8addb6476c420d0e35744842eeff1f1de/); bsc `0x7cb957002d1d898b602c9a0a65555acadab64b04` | ⚠️ Unaudited |
| TRUNKSupportTreasuryStrategy | unknown | bsc | n/a | [`0xcecba44ce9ee16948551e85864f3eef652174587`](./contracts/bsc-56/0xcecba44ce9ee16948551e85864f3eef652174587/) | ⚠️ Unaudited |
| Turbine | unknown | bsc | n/a | 4 deployments: bsc [`0x69c714f868855ec3f24dfff0fd5f1805642f2d86`](./contracts/bsc-56/0x69c714f868855ec3f24dfff0fd5f1805642f2d86/); bsc `0x6de7dee23b27a6abd1b3a1a4c0c40b128620a51d`; bsc `0x7018214322208ef79ebf697f95a5bee71edd874e`; bsc `0xb4fbd2c7307d91fbd9d751844d687f69bd2c9db8` | ⚠️ Unaudited |
| Vault | unknown | bsc | n/a | 2 deployments: bsc [`0x5457877200e4ed4c07acee8b274b0a65c042d0fb`](./contracts/bsc-56/0x5457877200e4ed4c07acee8b274b0a65c042d0fb/); bsc `0x71b00a9c9cc1902efddd6ba28850f6f34f5938ed` | ⚠️ Unaudited |
| vDODOMine | unknown | bsc | n/a | [`0x505a0f0f4956f7ca5839c5efd8ebdaf3d3ae945f`](./contracts/bsc-56/0x505a0f0f4956f7ca5839c5efd8ebdaf3d3ae945f/) | ⚠️ Unaudited |
| WBNB | unknown | bsc | n/a | [`0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | ⚠️ Unaudited |
| WELEPHANT | unknown | bsc | n/a | 3 deployments: bsc [`0x241f21df529c05289a00dafecea10139a287cdca`](./contracts/bsc-56/0x241f21df529c05289a00dafecea10139a287cdca/); bsc `0x60fc2634e212e553cce47627f1bcc7da84fd4de3`; bsc `0xa546d072bf7656d10bfedacd4b93a5358c4d8e47` | ⚠️ Unaudited |
| WElephantRouterProxy | adapter | bsc | n/a | 3 deployments: bsc [`0x9ef34c86cbba9b29d9deb9ea2e7f5efe001880c2`](./contracts/bsc-56/0x9ef34c86cbba9b29d9deb9ea2e7f5efe001880c2/); bsc `0xb247c1d9e9380a970d317420ed14d21b41422d15`; bsc `0xba532fc1e804ffe4b771f1ec544acea6b63a963a` | ⚠️ Unaudited |
| Whitelist | unknown | bsc | n/a | [`0x3064cda024b921f83e72c996bc06982a5885ed97`](./contracts/bsc-56/0x3064cda024b921f83e72c996bc06982a5885ed97/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (192)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x00c093e166fbcf30e7b7fcd0632dafe9d096b9f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x00f73680f3faccc5fe51c681a1498f777c80053c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x029aa738a2524f806be7b6332732cf75908851ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03533f4686403292f0acac189020be53187b5a74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04a774ae354e0521f3dea6d8081cb57620cf2532` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x05588d865f4b924db54e23d9c8de5ac3fac284ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x07a7c3719a47983d5749318ac2d303c353e250c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08406b76fedab423d171249cb33335cd4be60a04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0990d4dd26e856a378bb8e5d6bce182c758990ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09fc7c5719c6177d51ef8e69b1493aa7a897f817` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b3ddbf30ff7da933c8b247c276db0af093ffe11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0ccf304e04915f64772b4e19b78abb6dd52557db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x101d6598400194b51e1ff3dbfb16147feec49c7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x107f56bac4e3aa8b010a296eb3645dc63cad096f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11dfa8301169754a5c020ac6c57519f4c8198d61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x125593e7d9816cbeccb56812f96725dac38e95bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13abe39f7b877bc3022746da88423e291269bc6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14bc99875e0d4cc2d178ac3543c439de95483c53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x165ba87e882208100672b6c56f477ee42502c820` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16c1bc94205f962bb9fa1b4a1110faf7c451c8bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x17ebc315760bb47384224a5f3bf829222fbd3aa7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d2dde46c5528acd0b1657eca1446467095edf00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e0d4043c0cd3ed15f3c2afe60b0f213c9b5e30d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e2c67a54376df5943b53ac2f9b9019b764e4f09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1eb6cc182184007265e826beeb16103174fdbcee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2037b74c8c509a30b9f5509bab8b58e9dc7657f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20e64a35688b1e98219733cb55d8efe40ac179e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x213cc0bd53cf8a02870e91b378f9ee79c987321b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22013ef52a27b079cec4ae8b98cf490f3ea04b23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x221e4c29cb9ba2424b25f3b98306663886afd1e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2753cd9687fba4e9504ec45bfe911589c25fabd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27896749b31b1e1464611b13ea9b97dde50ff468` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29828b3f65c2b55a79fd620ff511b9638d76be02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c6c726b9932d7982a7b94b70b288dd5edaeb226` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d5e8ec85fd1f89e7865c2ef909c64f17edf943d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ef706bb5dc297001f24f08c06fba466ab1f1be6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2efff893b6fc0bff779d5448fa0c361975f0961c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3000d21de4b0a6c503f3bf4f6a1b2829f4fa35e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30c72672d07ce393412b99a690b6c2e49cc07d22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30d4d880ccca00c508d1269ddb8668dd7ffc8732` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30ead2c7910499fed5e794df9756b879529c5b53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31239b51f7066414b7ca3608c782e3778ca37de6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31d23e6b78d3b87fa3a3888ed8bc284b0ec87f73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x34cb11167a13ee61113e04d7dd7893e0bd9fcf03` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x351738f68cd5e515e647e636222975f505afa644` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x366ad3118f5f29c3db290a9d30e9ffbecc9fddcb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3685407aabf9a0ab54ed39168733b1e2d2a80e5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ac762ab27d59fd1389f1c709d515c223c344af8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3aec8fc4fba90ef8155d872fd9bd23053da3ecbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3af527fc332d819b1dbace4bdcae2c617b303e85` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b2a8656c8a1df0dfdd8d2ffc73e30d3af67563f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b53aa80dd213f430007fa81995aadf7ee1bd4ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b545bc1200e0952868f4e90a7f2930ff8547f6d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c05bf419e9ccd606dbf76254fc89e78789582b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c117303322cbb76fc56ea684780e7d197660d54` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c1336d70972f55c2b78e515ce2730691ad07ee2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3dfd47868067600445f36e8c33951b7f6ce314d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f29046bf2e1ef4f310e58778da1857e4b56cef5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3fcf08747e78eac249a39a15b2932a3d2e88c074` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x410ea72f5c66fc23bb0fbd87c77991d032d244c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44224764a1728a47ed5f93282b9417788b6f225d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47a49626e4cd1b361c72a73472d91eb8556180a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48d5a4d3f2cb06ed807f9ca550200ddb1bf3cd50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49a984a5da6bcccd72874f698c01638fdf0de166` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a8aeffdaf052204c8cb7e21c89e10b8c0af2115` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b735d5d68d61c46af6189b8842b8cc2dcfc1423` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c4f8050e5de8560016a3bbe501ffad4b3853f2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c64719e524383662232fdb50dfdadefb15c09d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e6465c96456f39dc7124dbade53d6aa03ca71e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4fcd6994a0261ac91d6cc05be50be4c381523a94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x501bce6700d80b2d40d45474f13e17213363d04d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51147bdee0415b0a309ee156e74354118b326699` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5310dff3557c9f13b72806d523fcb5c384dafcf9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x553a68b3865764a59bfc58adc9bbcfb1b092eb18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5687ceea2c311aab6ae089be84fabd9ae1967ca7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c18ff96ce149971ad9587711d8e707c51332171` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x601cc4c85eb692b9067c51f3ce32447955a79d22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64f674a2c5e6c833e9a5862839956e4f40e2ff84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6576e3c1a52f9c22119316c104d7ef7803fc783b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x674bb9d97f0c41bb41ecfcb50fab1fedcbc7cae1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6839e295a8f13864a2830fa0dcc0f52e71a82dbf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x691c421cbf47774f2ae7efd3f901080320a18325` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b50811cd8a084ab1c99c6003ba6df0eda74c181` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c9cd0d89ec79f662a694b97a7d9ae81484693fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6dfaaacc4385c2e080a45a9aebe92c94237572d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e7995da9b8707cb68fa0c5632981f01870f8434` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f052e85197e4b2c6f306fee01f25a5355722ef8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x708115e21b72eab22de31458b7b3a791c45813d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70e61aceacc37502ab49aa8914a4b66842b1255f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77197af2830321ee5a874ab7a0b074f6cb469def` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7811849a0524c12a5b1e54beb5050b8a6df913c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x799c6e12160ec2e5e47046e0875c799d2f0d8515` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7a0d7b36b02dde3eff947e9b6cea97851a68e5e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7a62f3686bc633dd950d7c2c3ca3f2568f169b57` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b68a2b312b1f69b8f255af585e17a7c00278018` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7bcb412f80234aaf9186e66b3e65eaa61a7a0411` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c073b1c1a7e68ffbccca4e49c0592407380022a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c7990f9049a079d19e31b65df2a3fcf385a5569` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d908cd5dcb03c2d57184da91445c9235f385043` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f73dec2e4b9c5fedfc2f8f3882b6791a1d157f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7fcb0ce0257a0af533552143b0cf2dfc10788b9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82e6354a55b9fbb382abca2189bdaea4b1dbb3bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86a1096e32f6663033a267295bf1419846298b2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86b332e0ca21fd2c0636822fbaa2d14d5834fab8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86c4da96d8a9d6307dec26d937b2cc9044690883` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8796f86bb9b876384497894122e860cadfc48a21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88d32f1af8c9f9bb4586d1bc892fe39104cc8e5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cde0d63810a9bbb6bb458ca988c68b006af3085` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ce535728c72fda6ada9449faf31184674f48da5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cf0a553ab3896e4832ebcc519a7a60828ab5740` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8dad7dbf5950c3fec9e1a5e8ad28214074d57d82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e4842d0570c85ba3805a9508dce7c6a458359d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e5248dba8e766075295308bed7e8cdc7d1a05e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9182fd7a4ad0a2f7d7a33090da2d0f5670d38d8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x924c26737c083cb1f067efbfdda97251da55a7fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92dade9ab801c29008b4109d93dceb51ca4e162b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x962b70e532370de831a64ed8b40f92dcf05a32ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9806abcbe3216b11fba951e5bd34ff7c5b304dc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ab212cce5802c6ee9d430e82eccf62e5fdb9f81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b8ea559ac48121ad04d12d3cb759f9783cdb593` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d392308902cfe87fcd947e64e98e2269f07af34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa03e0dc689a219a0f237a82387b90edf2fcbb598` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0cb2da6d5abe4c192ab0d5353077c90261a260b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa70a8dc7bdf000c8f9374c5b4a542b3656ebad79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7473c70b233597eb41381486374bf2b0c4040fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa86f3161b419b0e518991df1db836cca6c36414a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaaffad1017d6a13e026a00121bf258c616b25f7c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac0b6a958099aaae873898e09ed11a66d1a06ffc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf0a362a96d6e2585160db5bf31c6b8601cbb968` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf47e90481c5dbc3e84c9589ffd819c4acb23d8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf860f521867bc0f060fba492bb8841fdbeeab3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2f8f2aff700e3a44c947ef03b577e5d59d12cf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb629acf187d6f8f1a3a76047981e6936e141f8f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba8562a7e90244c8db4134101261e5433ece7b8a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb947c796d7578a9d5fec2442bc529421546a353` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc99f612af5abf549594d6febe3c65c6bfae517c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbee8d37cae21faae5e8dff37123c07f8cac2b702` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc04c9c6a677117aa85b0fff9e8bb747686a9e48b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc274f0e93fac9932364281e5c5f2c99201f15eee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc342f872cb0c43ece902a3c1cef27006346aabef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc48aa997f9f382c6c056b3cf1217586cdf36c596` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5b7fd327428b4ebeaaefcb2b9557ac29cd8ae15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6f6f5dcaccd7866ea57128c56a853fdc5fb5302` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6fa53e67f4bc733bbfaff0dc31c265b6e760968` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7e2dff6e3ea2bfb587d4900e38d49dacff97d8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8b18b81631dea1f7e4f810946854456d7c4e79a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8fe2440744dcd733246a4db14093664defd5a53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc99426958c6eedf4562f566b5f5cc7bb9cdd47c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9d455c1b1074a69f9f1c6287ee71127e1b49099` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc5dcfafdfafb78df69443048be26f07f9dd21a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xceef7924ae0f3e97d6d689983c2a3b4156e7fcd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd0ae248d97a5b2d8ac3c0323ff72990d03dc8fcc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd0ff24622a0b235664682944a113f5cd25c1016a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd13ab98293f7ffebdb8e2ab2ca75df60ca3dd813` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1d23167b521dc8b249f14db8eeaa70438455876` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd23112a7659aa55a5d5e4cdfb6a76cce23f9c099` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3477cedc1671cb1b18899b0dc0a8c1bd52fe4d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd35c54a918717eb51d21ce95d80f3c17b0943e43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd4fb0df9936d1b0aae52af53b5813fe1ca6dd053` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd520a3b47e42a1063617a9b6273b206a07bdf834` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5a7c9b326db400b77dc378d9ff2ef5e8ffeb529` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6ac57891d663bf9fefe618e2c7f5754cd086135` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd72b354bd39f8f11d0ca07bd5724896bb1a42707` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd925154517d08ab42b28e5149c43bf63950e5268` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd96d9c16ca78029fd24b0e843d89b259e6c17151` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb964b780ae0911fea14721339caa1b619363bc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdbd20ffbec087c7572de3a4db0420ae711c88852` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdcb5034fb25a5e88b124658be468ff55ed52e264` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd171a92252d305351311fa400dec5bcd70325d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde3ea63c00229b9713bb625dddd9da1255c4ffa9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdea860ae76aa2a19e1cbb4d41173741289353e05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdfc11af49bc972a7d13e3dceb47d57cbb882ec33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe18735e53f0a1fdc2c19a5f46cc3d1631a0e7c59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1cac597ffb58dd588ba68f2bbf3d2a91175388d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe223acd7cbafabcffcafec5e69877424c4760ac2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe30daca050bc2a030617ba82b7febdd81ac1d3a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5a7bee989470c0e118665e28e0c257faa955660` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5cbd990458465bf202720b1d2f89a7091c36c8a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe60e4326b1d9125e096ce60f86f73a53ded9b32e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9bcd0228af9719db4518de40060fad585d5f3f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xede9099d7b3e771471a364100b6d4a8ca77b8141` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf16cd6de037c65f27ecac92edeaf1b37958555c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf43910aa4aea08df973edcd6c6949a725336f6f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf60d3c1bdecb27bb2785196e98246b6f8e6f752a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf74d1e4ebd7cb565edd695fb6529ff66e91a61eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7c1014892647890a8121dd072585a1344f4d21d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7f376ea0584ae97706b78cc1b320cb7c811c10e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf907e1b83fefa577bb1050361310777130d9e806` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf90f267814ec8e3252d3eebf7b69e6b9d00da6f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfbf9a25db5561ff77d25d2d5c5cd87f90caa0282` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc3a92072bf845a02dd103937b8d3d1a6f8bde30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc586091bc059ede2dcdfbffa40af2419842bb5e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [sourcehat.com/audits/ElephantMoney](https://sourcehat.com/audits/ElephantMoney) | SourceHat | Audit | 2021-11 | stale | Direct | contract_name | 4 | n/a |
| [PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf](https://elephant.money/media/PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xa9421179abe9faa3ab01d9086ff6da0cd82a8ee4`](./contracts/bsc-56/0xa9421179abe9faa3ab01d9086ff6da0cd82a8ee4/) | AdministrativeNFTMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01fb3809de463d114b66d7e428035196cd6ae484`](./contracts/bsc-56/0x01fb3809de463d114b66d7e428035196cd6ae484/) | AprForwardingTreasuryStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x97a16ff6fd63a46bf973671762a39f3780cda73d`](./contracts/bsc-56/0x97a16ff6fd63a46bf973671762a39f3780cda73d/) | autoBsw | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x99c9196f2bcb898f94a346b27cde7ce305ea8f05`](./contracts/bsc-56/0x99c9196f2bcb898f94a346b27cde7ce305ea8f05/) | BackedForwardingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/) | BEP20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x858e3312ed3a876947ea49d572a7c42de08af7ee`](./contracts/bsc-56/0x858e3312ed3a876947ea49d572a7c42de08af7ee/) | BiswapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8`](./contracts/bsc-56/0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8/) | BiswapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb74e9677bdfeabbf33614d468a74b502bc4ff897`](./contracts/bsc-56/0xb74e9677bdfeabbf33614d468a74b502bc4ff897/) | BNBReserveStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc4d9b08d0d7632f8e1a0f07f91e10f0c4a6778b9`](./contracts/bsc-56/0xc4d9b08d0d7632f8e1a0f07f91e10f0c4a6778b9/) | BotGasStation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x965f527d9159dce6288a2219db51fc6eef120dd1`](./contracts/bsc-56/0x965f527d9159dce6288a2219db51fc6eef120dd1/) | BSWToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2e74b429836d7357348b520139a3a6145441858c`](./contracts/bsc-56/0x2e74b429836d7357348b520139a3a6145441858c/) | BTCBTurbine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1a6a71f07d85f3aa76baa5616a7bda3ccf7e68a5`](./contracts/bsc-56/0x1a6a71f07d85f3aa76baa5616a7bda3ccf7e68a5/) | Depot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x67ee3cb086f8a16f34bee3ca72fad36f7db929e2`](./contracts/bsc-56/0x67ee3cb086f8a16f34bee3ca72fad36f7db929e2/) | DODOBscToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x624fc8368fe11be00d8b2f3fe0b9d0053bec21b9`](./contracts/bsc-56/0x624fc8368fe11be00d8b2f3fe0b9d0053bec21b9/) | DODODppProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2442a8b5cdf1e659f3f949a7e454caa554d4e65a`](./contracts/bsc-56/0x2442a8b5cdf1e659f3f949a7e454caa554d4e65a/) | DODODspProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01f9bfac04e6184e90bd7eafd51999ce430cc750`](./contracts/bsc-56/0x01f9bfac04e6184e90bd7eafd51999ce430cc750/) | DODOMine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8f3fb1f9148dc473453163bf31de1d830eb5c590`](./contracts/bsc-56/0x8f3fb1f9148dc473453163bf31de1d830eb5c590/) | DODOMineV3Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5ed972c0a7f8d0c4dedf6a37848a297b67489888`](./contracts/bsc-56/0x5ed972c0a7f8d0c4dedf6a37848a297b67489888/) | DODONFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdc9224cbc4b1826bb74ff383ff1ce94de1f56119`](./contracts/bsc-56/0xdc9224cbc4b1826bb74ff383ff1ce94de1f56119/) | DODONFT1155 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6b3d817814eabc984d51896b1015c0b89e9737ca`](./contracts/bsc-56/0x6b3d817814eabc984d51896b1015c0b89e9737ca/) | DODORouteProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8f8dd7db1bda5ed3da8c9daf3bfa471c12d58486`](./contracts/bsc-56/0x8f8dd7db1bda5ed3da8c9daf3bfa471c12d58486/) | DODOV2Proxy02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0fe261aee0d1c4dfddee4102e82dd425999065f4`](./contracts/bsc-56/0x0fe261aee0d1c4dfddee4102e82dd425999065f4/) | DPPAdvanced | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd9cac3d964327e47399aebd8e1e6dcc4c251daae`](./contracts/bsc-56/0xd9cac3d964327e47399aebd8e1e6dcc4c251daae/) | DPPFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x790b4a80fb1094589a3c0efc8740aa9b0c1733fb`](./contracts/bsc-56/0x790b4a80fb1094589a3c0efc8740aa9b0c1733fb/) | DVMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0567f2323251f0aab15c8dfb1967e4e8a7d42aee`](./contracts/bsc-56/0x0567f2323251f0aab15c8dfb1967e4e8a7d42aee/) | EACAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00c66cf7b0e38d4eb528c81c28b55ca589da2cd2`](./contracts/bsc-56/0x00c66cf7b0e38d4eb528c81c28b55ca589da2cd2/) | ElephantDollarDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2390901198838aabbb383ce0ac215ad9e05e2a66`](./contracts/bsc-56/0x2390901198838aabbb383ce0ac215ad9e05e2a66/) | ElephantMarketPlace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb92afedc8f8618be4198fbe5d97adb7c60ab3198`](./contracts/bsc-56/0xb92afedc8f8618be4198fbe5d97adb7c60ab3198/) | ElephantMoneyUnlimitedNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x95beb12924e565e9b1f57d86d8fd848fa52706ce`](./contracts/bsc-56/0x95beb12924e565e9b1f57d86d8fd848fa52706ce/) | ElephantNFTStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x612ce90180ec0185ad1aa09c74704a048a4cccba`](./contracts/bsc-56/0x612ce90180ec0185ad1aa09c74704a048a4cccba/) | ElephantPoolDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2689e35a22b750c046faeb892eb3868a408c5efd`](./contracts/bsc-56/0x2689e35a22b750c046faeb892eb3868a408c5efd/) | ElephantYieldEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x322b43e406d1b4df9bc36d058317dd1cd3b0385f`](./contracts/bsc-56/0x322b43e406d1b4df9bc36d058317dd1cd3b0385f/) | ERC20Mine | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5ed22a48fee263207f5caae1a1f1a27011e7dc92`](./contracts/bsc-56/0x5ed22a48fee263207f5caae1a1f1a27011e7dc92/) | ERC20V3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa3473fcea7c6cbdfad6326351e07d93f1bab3281`](./contracts/bsc-56/0xa3473fcea7c6cbdfad6326351e07d93f1bab3281/) | FarmEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e629332c51046a17ec236553cb931cf0548b5e1`](./contracts/bsc-56/0x3e629332c51046a17ec236553cb931cf0548b5e1/) | Fear | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x202b8d57709a03d1f9a78c9a034786f5fb8576ab`](./contracts/bsc-56/0x202b8d57709a03d1f9a78c9a034786f5fb8576ab/) | FlowEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5c5778073e9207ce1479276724fc31757ed436ae`](./contracts/bsc-56/0x5c5778073e9207ce1479276724fc31757ed436ae/) | FuturesActionVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x155479d35a6d544268db8f5919c24c1b6cd7c791`](./contracts/bsc-56/0x155479d35a6d544268db8f5919c24c1b6cd7c791/) | FuturesEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9ae4de43feb64e85698dd3c66b0666448a8ff408`](./contracts/bsc-56/0x9ae4de43feb64e85698dd3c66b0666448a8ff408/) | FuturesNFTMigrationVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa8e3ee88a52644edfd50d4f5527641f5f0535b3e`](./contracts/bsc-56/0xa8e3ee88a52644edfd50d4f5527641f5f0535b3e/) | FuturesRDFVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xaeb9b31b9728a2c3d4df59748442d27f2277fcd2`](./contracts/bsc-56/0xaeb9b31b9728a2c3d4df59748442d27f2277fcd2/) | FuturesVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdbc1a13490deef9c3c12b44fe77b503c1b061739`](./contracts/bsc-56/0xdbc1a13490deef9c3c12b44fe77b503c1b061739/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdf7e00cd0bb91d1502a1a14575e58b5d8f20c8d4`](./contracts/bsc-56/0xdf7e00cd0bb91d1502a1a14575e58b5d8f20c8d4/) | MysteryBoxKAKA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc25286ef3bae3f6fe2d6d0a6e2acad0301af97b8`](./contracts/bsc-56/0xc25286ef3bae3f6fe2d6d0a6e2acad0301af97b8/) | MysteryBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x22a46d2da104b9bfc8c6b2dfd2a8c0632432c150`](./contracts/bsc-56/0x22a46d2da104b9bfc8c6b2dfd2a8c0632432c150/) | NFTMarketplaceHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2aefa3eb03f12eb93d6868fc5cbb250b9cd8ce12`](./contracts/bsc-56/0x2aefa3eb03f12eb93d6868fc5cbb250b9cd8ce12/) | NFTSalesTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xca143ce32fe78f1f7019d7d551a6402fc5350c73`](./contracts/bsc-56/0xca143ce32fe78f1f7019d7d551a6402fc5350c73/) | PancakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1cea83ec5e48d9157fcae27a19807bef79195ce1`](./contracts/bsc-56/0x1cea83ec5e48d9157fcae27a19807bef79195ce1/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10ed43c718714eb63d5aa57b78b54704e256024e`](./contracts/bsc-56/0x10ed43c718714eb63d5aa57b78b54704e256024e/) | PancakeRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x28fafc6ff614e6c2d7ca95959a3c0881fd5679e3`](./contracts/bsc-56/0x28fafc6ff614e6c2d7ca95959a3c0881fd5679e3/) | PcsPeriodicTwapOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5606ee12d741716c260fda2f6c89efdf60326d3c`](./contracts/bsc-56/0x5606ee12d741716c260fda2f6c89efdf60326d3c/) | PcsSnapshotTwapOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6b5eeb214a87d1d296652dec8c48bbdd1590e567`](./contracts/bsc-56/0x6b5eeb214a87d1d296652dec8c48bbdd1590e567/) | PegSupportTreasuryStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd23d87a44977b0d77a8f8ca70e037b9001d412ac`](./contracts/bsc-56/0xd23d87a44977b0d77a8f8ca70e037b9001d412ac/) | PerformanceFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0600445ac4e20f1668556e0e058b3dc369d96162`](./contracts/bsc-56/0x0600445ac4e20f1668556e0e058b3dc369d96162/) | PerformanceFundV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6248d9a3dff17dcda92141aa1e8f1e9d6fe1ea4a`](./contracts/bsc-56/0x6248d9a3dff17dcda92141aa1e8f1e9d6fe1ea4a/) | ReferralData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00a142210f6b3bb3f78751dcd7b589e9e7b39346`](./contracts/bsc-56/0x00a142210f6b3bb3f78751dcd7b589e9e7b39346/) | SmartChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7c4dad1b249efdc998f3569c8537866639b914b7`](./contracts/bsc-56/0x7c4dad1b249efdc998f3569c8537866639b914b7/) | StampedeEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x24f1c78008afea4e1a2639db62a2b9d17ef99c58`](./contracts/bsc-56/0x24f1c78008afea4e1a2639db62a2b9d17ef99c58/) | StampedeMigrationEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xec8c93d29418b4d3e13edb18cc6dbc24606d7305`](./contracts/bsc-56/0xec8c93d29418b4d3e13edb18cc6dbc24606d7305/) | SuperCharger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x574a691d05eee825299024b2de584b208647e073`](./contracts/bsc-56/0x574a691d05eee825299024b2de584b208647e073/) | Trumpet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x470cb1f8addb6476c420d0e35744842eeff1f1de`](./contracts/bsc-56/0x470cb1f8addb6476c420d0e35744842eeff1f1de/) | TrunkElephantLiquidityBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcecba44ce9ee16948551e85864f3eef652174587`](./contracts/bsc-56/0xcecba44ce9ee16948551e85864f3eef652174587/) | TRUNKSupportTreasuryStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x69c714f868855ec3f24dfff0fd5f1805642f2d86`](./contracts/bsc-56/0x69c714f868855ec3f24dfff0fd5f1805642f2d86/) | Turbine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5457877200e4ed4c07acee8b274b0a65c042d0fb`](./contracts/bsc-56/0x5457877200e4ed4c07acee8b274b0a65c042d0fb/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x505a0f0f4956f7ca5839c5efd8ebdaf3d3ae945f`](./contracts/bsc-56/0x505a0f0f4956f7ca5839c5efd8ebdaf3d3ae945f/) | vDODOMine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | WBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x241f21df529c05289a00dafecea10139a287cdca`](./contracts/bsc-56/0x241f21df529c05289a00dafecea10139a287cdca/) | WELEPHANT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9ef34c86cbba9b29d9deb9ea2e7f5efe001880c2`](./contracts/bsc-56/0x9ef34c86cbba9b29d9deb9ea2e7f5efe001880c2/) | WElephantRouterProxy | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3064cda024b921f83e72c996bc06982a5885ed97`](./contracts/bsc-56/0x3064cda024b921f83e72c996bc06982a5885ed97/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 73 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 192 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Zero-match audit list:

- [4641] PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf

Fork inheritance lineage and inherited audits are included when available.
