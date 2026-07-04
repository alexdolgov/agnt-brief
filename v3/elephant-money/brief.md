# Agentic Audit Brief: Elephant Money

## Project Overview

- Project: Elephant Money (`elephant-money`)
- Website: [https://elephant.money](https://elephant.money)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:46.268Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: bsc
- Contract surface: 267 unique implementations (375 raw deployments)
- DeFi Llama TVL: $70,398,487.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 49 project-authored contract(s) across 1 chain(s); 10 ERC20 tokens, 5 ERC721 NFTs, 1 ERC1155 multi-token, 1 Chainlink feed; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 10 common project-authored base contract(s) (initializableownable, pancakeerc20, whitelist). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 623; live-surface contracts included: 375 (182 live, 193 unknown).
- Excluded by liveness: 248 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/74 (5.4%)
- Deployed-live implementations: 74 of 267 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/74
- Verified + Unaudited implementations: 70
- Verified by bytecode match: 0
- Unverified implementations: 193
- Unique implementations: 267
- Raw deployments: 375
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
| BankrollNetworkStack | unknown | bsc | n/a | [`0xec1005...ce1eb7`](./contracts/bsc-56/0xec10059ba900883ed6154883e9f3a1c24fce1eb7/) | ✅ Audited |
| Elephant | unknown | bsc | n/a | 2 deployments: bsc [`0xd96ec8...62be1a`](./contracts/bsc-56/0xd96ec811359bfd94d2dfe2a3bd8da68bf262be1a/); bsc `0xe283d0...92f688` | ✅ Audited |
| ElephantDollar | unknown | bsc | n/a | [`0xdd325c...1a70e0`](./contracts/bsc-56/0xdd325c38b12903b727d16961e61333f4871a70e0/) | ✅ Audited |
| Treasury | operational_periphery | bsc | n/a | 8 deployments: bsc [`0x2da1a9...b5267d`](./contracts/bsc-56/0x2da1a94e7bda3a71342a19643f94443641b5267d/); bsc `0x98f6c7...87fc92`; bsc `0xacef13...37bfdd`; bsc `0xaf0980...fbb4fc`; bsc `0xc6a42b...6d18bb`; bsc `0xcb5a02...ce8ce4`; bsc `0xd3b4fb...bc6fdf`; bsc `0xd9de89...00ec3e` | ✅ Audited |

### ⚠️ Verified + Unaudited (70)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdministrativeNFTMinter | unknown | bsc | n/a | [`0xa94211...2a8ee4`](./contracts/bsc-56/0xa9421179abe9faa3ab01d9086ff6da0cd82a8ee4/) | ⚠️ Unaudited |
| AprForwardingTreasuryStrategy | unknown | bsc | n/a | 3 deployments: bsc [`0x01fb38...6ae484`](./contracts/bsc-56/0x01fb3809de463d114b66d7e428035196cd6ae484/); bsc `0x3750a4...64f326`; bsc `0x6349cb...f4a101` | ⚠️ Unaudited |
| autoBsw | unknown | bsc | n/a | [`0x97a16f...cda73d`](./contracts/bsc-56/0x97a16ff6fd63a46bf973671762a39f3780cda73d/) | ⚠️ Unaudited |
| BackedForwardingPool | unknown | bsc | n/a | [`0x99c919...ea8f05`](./contracts/bsc-56/0x99c9196f2bcb898f94a346b27cde7ce305ea8f05/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | 2 deployments: bsc [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| BiswapFactory | registry | bsc | n/a | [`0x858e33...8af7ee`](./contracts/bsc-56/0x858e3312ed3a876947ea49d572a7c42de08af7ee/) | ⚠️ Unaudited |
| BiswapRouter02 | adapter | bsc | n/a | [`0x3a6d8c...350dd8`](./contracts/bsc-56/0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8/) | ⚠️ Unaudited |
| BNBReserveStrategy | unknown | bsc | n/a | 2 deployments: bsc [`0xb74e96...4ff897`](./contracts/bsc-56/0xb74e9677bdfeabbf33614d468a74b502bc4ff897/); bsc `0xcccc27...51b43c` | ⚠️ Unaudited |
| BotGasStation | unknown | bsc | n/a | [`0xc4d9b0...6778b9`](./contracts/bsc-56/0xc4d9b08d0d7632f8e1a0f07f91e10f0c4a6778b9/) | ⚠️ Unaudited |
| BSWToken | token | bsc | n/a | [`0x965f52...120dd1`](./contracts/bsc-56/0x965f527d9159dce6288a2219db51fc6eef120dd1/) | ⚠️ Unaudited |
| BTCBTurbine | unknown | bsc | n/a | [`0x2e74b4...41858c`](./contracts/bsc-56/0x2e74b429836d7357348b520139a3a6145441858c/) | ⚠️ Unaudited |
| Depot | unknown | bsc | n/a | 2 deployments: bsc [`0x1a6a71...7e68a5`](./contracts/bsc-56/0x1a6a71f07d85f3aa76baa5616a7bda3ccf7e68a5/); bsc `0x6da246...39f42b` | ⚠️ Unaudited |
| DODOBscToken | token | bsc | n/a | [`0x67ee3c...b929e2`](./contracts/bsc-56/0x67ee3cb086f8a16f34bee3ca72fad36f7db929e2/) | ⚠️ Unaudited |
| DODODppProxy | unknown | bsc | n/a | [`0x624fc8...ec21b9`](./contracts/bsc-56/0x624fc8368fe11be00d8b2f3fe0b9d0053bec21b9/) | ⚠️ Unaudited |
| DODODspProxy | unknown | bsc | n/a | [`0x2442a8...d4e65a`](./contracts/bsc-56/0x2442a8b5cdf1e659f3f949a7e454caa554d4e65a/) | ⚠️ Unaudited |
| DODOMine | unknown | bsc | n/a | [`0x01f9bf...0cc750`](./contracts/bsc-56/0x01f9bfac04e6184e90bd7eafd51999ce430cc750/) | ⚠️ Unaudited |
| DODOMineV3Proxy | unknown | bsc | n/a | [`0x8f3fb1...b5c590`](./contracts/bsc-56/0x8f3fb1f9148dc473453163bf31de1d830eb5c590/) | ⚠️ Unaudited |
| DODONFT | token | bsc | n/a | [`0x5ed972...489888`](./contracts/bsc-56/0x5ed972c0a7f8d0c4dedf6a37848a297b67489888/) | ⚠️ Unaudited |
| DODONFT1155 | token | bsc | n/a | [`0xdc9224...f56119`](./contracts/bsc-56/0xdc9224cbc4b1826bb74ff383ff1ce94de1f56119/) | ⚠️ Unaudited |
| DODORouteProxy | unknown | bsc | n/a | [`0x6b3d81...9737ca`](./contracts/bsc-56/0x6b3d817814eabc984d51896b1015c0b89e9737ca/) | ⚠️ Unaudited |
| DODOV2Proxy02 | unknown | bsc | n/a | [`0x8f8dd7...d58486`](./contracts/bsc-56/0x8f8dd7db1bda5ed3da8c9daf3bfa471c12d58486/) | ⚠️ Unaudited |
| DPPAdvanced | unknown | bsc | n/a | [`0x0fe261...9065f4`](./contracts/bsc-56/0x0fe261aee0d1c4dfddee4102e82dd425999065f4/) | ⚠️ Unaudited |
| DPPFactory | registry | bsc | n/a | [`0xd9cac3...51daae`](./contracts/bsc-56/0xd9cac3d964327e47399aebd8e1e6dcc4c251daae/) | ⚠️ Unaudited |
| DVMFactory | registry | bsc | n/a | [`0x790b4a...1733fb`](./contracts/bsc-56/0x790b4a80fb1094589a3c0efc8740aa9b0c1733fb/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | bsc | n/a | [`0x0567f2...d42aee`](./contracts/bsc-56/0x0567f2323251f0aab15c8dfb1967e4e8a7d42aee/) | ⚠️ Unaudited |
| ElephantDollarDistributor | unknown | bsc | n/a | 5 deployments: bsc [`0x00c66c...da2cd2`](./contracts/bsc-56/0x00c66cf7b0e38d4eb528c81c28b55ca589da2cd2/); bsc `0x8655e8...2eee3b`; bsc `0x9462e7...46de89`; bsc `0xb702b3...c9529c`; bsc `0xdb2c27...440455` | ⚠️ Unaudited |
| ElephantMarketPlace | unknown | bsc | n/a | 3 deployments: bsc [`0x239090...5e2a66`](./contracts/bsc-56/0x2390901198838aabbb383ce0ac215ad9e05e2a66/); bsc `0x4d1e19...802b7c`; bsc `0xb6c05c...ae42ea` | ⚠️ Unaudited |
| ElephantMoneyUnlimitedNFT | token | bsc | n/a | [`0xb92afe...ab3198`](./contracts/bsc-56/0xb92afedc8f8618be4198fbe5d97adb7c60ab3198/) | ⚠️ Unaudited |
| ElephantNFTStaking | unknown | bsc | n/a | 3 deployments: bsc [`0x95beb1...2706ce`](./contracts/bsc-56/0x95beb12924e565e9b1f57d86d8fd848fa52706ce/); bsc `0x9a372c...8ec4da`; bsc `0xb2b1d8...1c4fb3` | ⚠️ Unaudited |
| ElephantPoolDistributor | unknown | bsc | n/a | 2 deployments: bsc [`0x612ce9...4cccba`](./contracts/bsc-56/0x612ce90180ec0185ad1aa09c74704a048a4cccba/); bsc `0xed5514...208843` | ⚠️ Unaudited |
| ElephantYieldEngine | unknown | bsc | n/a | [`0x2689e3...8c5efd`](./contracts/bsc-56/0x2689e35a22b750c046faeb892eb3868a408c5efd/) | ⚠️ Unaudited |
| ERC20Mine | token | bsc | n/a | [`0x322b43...b0385f`](./contracts/bsc-56/0x322b43e406d1b4df9bc36d058317dd1cd3b0385f/) | ⚠️ Unaudited |
| ERC20V3Factory | registry | bsc | n/a | [`0x5ed22a...e7dc92`](./contracts/bsc-56/0x5ed22a48fee263207f5caae1a1f1a27011e7dc92/) | ⚠️ Unaudited |
| FarmEngine | unknown | bsc | n/a | [`0xa3473f...ab3281`](./contracts/bsc-56/0xa3473fcea7c6cbdfad6326351e07d93f1bab3281/) | ⚠️ Unaudited |
| Fear | unknown | bsc | n/a | [`0x3e6293...48b5e1`](./contracts/bsc-56/0x3e629332c51046a17ec236553cb931cf0548b5e1/) | ⚠️ Unaudited |
| FlowEngine | unknown | bsc | n/a | [`0x202b8d...8576ab`](./contracts/bsc-56/0x202b8d57709a03d1f9a78c9a034786f5fb8576ab/) | ⚠️ Unaudited |
| FuturesActionVault | unknown | bsc | n/a | [`0x5c5778...d436ae`](./contracts/bsc-56/0x5c5778073e9207ce1479276724fc31757ed436ae/) | ⚠️ Unaudited |
| FuturesEngine | unknown | bsc | n/a | 12 deployments: bsc [`0x155479...d7c791`](./contracts/bsc-56/0x155479d35a6d544268db8f5919c24c1b6cd7c791/); bsc `0x1f61a4...3fdaeb`; bsc `0x5b24f7...8af11b`; bsc `0x5d87d8...76237a`; bsc `0x6c81fd...e1a1ee`; bsc `0x778c19...e38440`; bsc `0x8a3955...19ec06`; bsc `0x9a37fa...ceed56`; bsc `0x9ecde1...2cd68e`; bsc `0xa29004...1f3381`; bsc `0xc22e92...208573`; bsc `0xe98529...1dcead` | ⚠️ Unaudited |
| FuturesNFTMigrationVault | unknown | bsc | n/a | [`0x9ae4de...8ff408`](./contracts/bsc-56/0x9ae4de43feb64e85698dd3c66b0666448a8ff408/) | ⚠️ Unaudited |
| FuturesRDFVault | unknown | bsc | n/a | [`0xa8e3ee...535b3e`](./contracts/bsc-56/0xa8e3ee88a52644edfd50d4f5527641f5f0535b3e/) | ⚠️ Unaudited |
| FuturesVault | unknown | bsc | n/a | [`0xaeb9b3...77fcd2`](./contracts/bsc-56/0xaeb9b31b9728a2c3d4df59748442d27f2277fcd2/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | n/a | [`0xd5d371...bac644`](./contracts/bsc-56/0xd5d3711939d88322a7dceeb529ace4bac3bac644/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0xdbc1a1...061739`](./contracts/bsc-56/0xdbc1a13490deef9c3c12b44fe77b503c1b061739/) | ⚠️ Unaudited |
| MysteryBoxKAKA | unknown | bsc | n/a | [`0xdf7e00...20c8d4`](./contracts/bsc-56/0xdf7e00cd0bb91d1502a1a14575e58b5d8f20c8d4/) | ⚠️ Unaudited |
| MysteryBoxV1 | unknown | bsc | n/a | [`0xc25286...af97b8`](./contracts/bsc-56/0xc25286ef3bae3f6fe2d6d0a6e2acad0301af97b8/) | ⚠️ Unaudited |
| NFTMarketplaceHelper | unknown | bsc | n/a | 5 deployments: bsc [`0x22a46d...32c150`](./contracts/bsc-56/0x22a46d2da104b9bfc8c6b2dfd2a8c0632432c150/); bsc `0x36239e...f1e30d`; bsc `0x3f3bad...2130e0`; bsc `0x6f4318...ca3248`; bsc `0xf57cad...6fceb3` | ⚠️ Unaudited |
| NFTSalesTracker | unknown | bsc | n/a | 2 deployments: bsc [`0x2aefa3...d8ce12`](./contracts/bsc-56/0x2aefa3eb03f12eb93d6868fc5cbb250b9cd8ce12/); bsc `0xbe8966...e07871` | ⚠️ Unaudited |
| PancakeFactory | registry | bsc | n/a | [`0xca143c...350c73`](./contracts/bsc-56/0xca143ce32fe78f1f7019d7d551a6402fc5350c73/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | 4 deployments: bsc [`0x1cea83...195ce1`](./contracts/bsc-56/0x1cea83ec5e48d9157fcae27a19807bef79195ce1/); bsc `0x4e90f5...4b861b`; bsc `0x647bc9...6bec48`; bsc `0xf15a72...e0aede` | ⚠️ Unaudited |
| PancakeRouter | adapter | bsc | n/a | 2 deployments: bsc [`0x10ed43...56024e`](./contracts/bsc-56/0x10ed43c718714eb63d5aa57b78b54704e256024e/); bsc `0x2ad2c5...eb2c56` | ⚠️ Unaudited |
| PcsPeriodicTwapOracle | unknown | bsc | n/a | [`0x28fafc...5679e3`](./contracts/bsc-56/0x28fafc6ff614e6c2d7ca95959a3c0881fd5679e3/) | ⚠️ Unaudited |
| PcsSnapshotTwapOracle | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x5606ee...326d3c`](./contracts/bsc-56/0x5606ee12d741716c260fda2f6c89efdf60326d3c/); bsc `0xb9394b...893861` | ⚠️ Unaudited |
| PegSupportTreasuryStrategy | unknown | bsc | n/a | [`0x6b5eeb...90e567`](./contracts/bsc-56/0x6b5eeb214a87d1d296652dec8c48bbdd1590e567/) | ⚠️ Unaudited |
| PerformanceFund | unknown | bsc | n/a | [`0xd23d87...d412ac`](./contracts/bsc-56/0xd23d87a44977b0d77a8f8ca70e037b9001d412ac/) | ⚠️ Unaudited |
| PerformanceFundV3 | unknown | bsc | n/a | [`0x060044...d96162`](./contracts/bsc-56/0x0600445ac4e20f1668556e0e058b3dc369d96162/) | ⚠️ Unaudited |
| ReferralData | unknown | bsc | n/a | [`0x6248d9...e1ea4a`](./contracts/bsc-56/0x6248d9a3dff17dcda92141aa1e8f1e9d6fe1ea4a/) | ⚠️ Unaudited |
| SmartChef | unknown | bsc | n/a | 53 deployments: bsc [`0x00a142...b39346`](./contracts/bsc-56/0x00a142210f6b3bb3f78751dcd7b589e9e7b39346/); bsc `0x00d2d8...fff1d4`; bsc `0x015c8b...3a44c1`; bsc `0x018952...b731a9`; bsc `0x099975...0c1e1b`; bsc `0x0c1e98...e457c9`; bsc `0x109eaa...d5e836`; bsc `0x12e5b4...d93c3f`; bsc `0x13e903...4c8237`; bsc `0x1c3c5c...661492`; bsc `0x1f337d...d32970`; bsc `0x2792cc...8bd280`; bsc `0x2968da...ad6a46`; bsc `0x36fc9c...28860f`; bsc `0x50945a...0358ac`; bsc `0x53c60a...bd9891`; bsc `0x62cfcc...258373`; bsc `0x66ac2a...d955ae`; bsc `0x69c4c9...fc8157`; bsc `0x7468af...33bebd`; bsc `0x7517c3...358dc6`; bsc `0x7951bc...6fafc0`; bsc `0x81af4b...bc5d61`; bsc `0x850281...de5bbb`; bsc `0x8b10e6...c42ff4`; bsc `0x8d87f0...105e71`; bsc `0x8ddfcd...916f2d`; bsc `0x973304...fda649`; bsc `0x994f7b...e0cb24`; bsc `0x9b0111...892c03`; bsc `0x9b9f3f...b52bff`; bsc `0xa394dd...823459`; bsc `0xaa2b37...9fd4e5`; bsc `0xab4592...8a4784`; bsc `0xacb2f1...e496f2`; bsc `0xb12c55...2f57b6`; bsc `0xc50676...81e920`; bsc `0xc7ba45...2ac468`; bsc `0xcc1b01...3f6a73`; bsc `0xd48558...11e67a`; bsc `0xd59227...5f3161`; bsc `0xe018d6...01831d`; bsc `0xe056fb...25990b`; bsc `0xe42d17...c175a7`; bsc `0xe6c58b...cb9cc5`; bsc `0xe737ed...3673a8`; bsc `0xeb8134...0540b7`; bsc `0xeeee29...d8e193`; bsc `0xf31f62...7f7d4c`; bsc `0xf4540b...950f0d`; bsc `0xf54c23...cd9ff1`; bsc `0xf62e23...d1c899`; bsc `0xfd6820...367275` | ⚠️ Unaudited |
| StampedeEngine | unknown | bsc | n/a | 4 deployments: bsc [`0x7c4dad...b914b7`](./contracts/bsc-56/0x7c4dad1b249efdc998f3569c8537866639b914b7/); bsc `0x7f6cec...a171ce`; bsc `0xac0292...d65c14`; bsc `0xdd8ad4...7b68a8` | ⚠️ Unaudited |
| StampedeMigrationEngine | unknown | bsc | n/a | 2 deployments: bsc [`0x24f1c7...f99c58`](./contracts/bsc-56/0x24f1c78008afea4e1a2639db62a2b9d17ef99c58/); bsc `0x49241e...b02400` | ⚠️ Unaudited |
| SuperCharger | unknown | bsc | n/a | [`0xec8c93...6d7305`](./contracts/bsc-56/0xec8c93d29418b4d3e13edb18cc6dbc24606d7305/) | ⚠️ Unaudited |
| Trumpet | unknown | bsc | n/a | [`0x574a69...47e073`](./contracts/bsc-56/0x574a691d05eee825299024b2de584b208647e073/) | ⚠️ Unaudited |
| TrunkElephantLiquidityBridge | unknown | bsc | n/a | 2 deployments: bsc [`0x470cb1...f1f1de`](./contracts/bsc-56/0x470cb1f8addb6476c420d0e35744842eeff1f1de/); bsc `0x7cb957...b64b04` | ⚠️ Unaudited |
| TRUNKSupportTreasuryStrategy | unknown | bsc | n/a | [`0xcecba4...174587`](./contracts/bsc-56/0xcecba44ce9ee16948551e85864f3eef652174587/) | ⚠️ Unaudited |
| Turbine | unknown | bsc | n/a | 4 deployments: bsc [`0x69c714...2f2d86`](./contracts/bsc-56/0x69c714f868855ec3f24dfff0fd5f1805642f2d86/); bsc `0x6de7de...20a51d`; bsc `0x701821...dd874e`; bsc `0xb4fbd2...2c9db8` | ⚠️ Unaudited |
| Vault | unknown | bsc | n/a | 2 deployments: bsc [`0x545787...42d0fb`](./contracts/bsc-56/0x5457877200e4ed4c07acee8b274b0a65c042d0fb/); bsc `0x71b00a...5938ed` | ⚠️ Unaudited |
| vDODOMine | unknown | bsc | n/a | [`0x505a0f...ae945f`](./contracts/bsc-56/0x505a0f0f4956f7ca5839c5efd8ebdaf3d3ae945f/) | ⚠️ Unaudited |
| WBNB | unknown | bsc | n/a | [`0xbb4cdb...bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | ⚠️ Unaudited |
| WELEPHANT | unknown | bsc | n/a | 3 deployments: bsc [`0x241f21...87cdca`](./contracts/bsc-56/0x241f21df529c05289a00dafecea10139a287cdca/); bsc `0x60fc26...fd4de3`; bsc `0xa546d0...4d8e47` | ⚠️ Unaudited |
| WElephantRouterProxy | adapter | bsc | n/a | 3 deployments: bsc [`0x9ef34c...1880c2`](./contracts/bsc-56/0x9ef34c86cbba9b29d9deb9ea2e7f5efe001880c2/); bsc `0xb247c1...422d15`; bsc `0xba532f...3a963a` | ⚠️ Unaudited |
| Whitelist | unknown | bsc | n/a | [`0x3064cd...85ed97`](./contracts/bsc-56/0x3064cda024b921f83e72c996bc06982a5885ed97/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (193)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x00c093...96b9f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x00f736...80053c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x029aa7...8851ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03533f...7b5a74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04a774...cf2532` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x05588d...c284ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x07a7c3...e250c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08406b...e60a04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0990d4...8990ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09fc7c...97f817` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b3ddb...3ffe11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0ccf30...2557db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x101d65...c49c7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x107f56...ad096f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11dfa8...198d61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x125593...8e95bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13abe3...69bc6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14bc99...483c53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x165ba8...02c820` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16c1bc...51c8bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x17ebc3...bd3aa7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c5b10...b2c559` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d2dde...5edf00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e0d40...b5e30d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e2c67...4e4f09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1eb6cc...fdbcee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2037b7...7657f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20e64a...c179e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x213cc0...87321b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22013e...a04b23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x221e4c...afd1e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2753cd...5fabd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x278967...0ff468` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29828b...76be02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c6c72...aeb226` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d5e8e...df943d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ef706...1f1be6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2efff8...f0961c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3000d2...fa35e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30c726...c07d22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30d4d8...fc8732` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30ead2...9c5b53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31239b...a37de6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31d23e...c87f73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x34cb11...9fcf03` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x351738...afa644` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x366ad3...9fddcb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x368540...a80e5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ac762...344af8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3aec8f...a3ecbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3af527...303e85` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b2a86...67563f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b53aa...1bd4ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b545b...547f6d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c05bf...9582b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c1173...660d54` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c1336...d07ee2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3dfd47...e314d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f2904...56cef5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3fcf08...88c074` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x410ea7...d244c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x442247...6f225d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47a496...6180a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48d5a4...f3cd50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49a984...0de166` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a8aef...af2115` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b735d...fc1423` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c4f80...853f2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c6471...5c09d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e6465...ca71e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4fcd69...523a94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x501bce...63d04d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51147b...326699` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5310df...dafcf9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x553a68...92eb18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5687ce...967ca7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c18ff...332171` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x601cc4...a79d22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64f674...e2ff84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6576e3...fc783b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x674bb9...c7cae1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6839e2...a82dbf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x691c42...a18325` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b5081...74c181` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c9cd0...4693fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6dfaaa...7572d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e7995...0f8434` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f052e...722ef8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x708115...5813d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70e61a...b1255f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77197a...469def` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x781184...f913c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x799c6e...0d8515` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7a0d7b...68e5e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7a62f3...169b57` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b68a2...278018` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7bcb41...7a0411` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c073b...80022a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c7990...5a5569` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d908c...385043` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f73de...d157f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7fcb0c...788b9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82e635...dbb3bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86a109...298b2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86b332...34fab8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86c4da...690883` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8796f8...c48a21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88d32f...cc8e5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cde0d...af3085` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ce535...f48da5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cf0a5...ab5740` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8dad7d...d57d82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e4842...8359d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e5248...1a05e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9182fd...d38d8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x924c26...55a7fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92dade...4e162b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x962b70...5a32ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9806ab...304dc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ab212...db9f81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b8ea5...cdb593` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d3923...07af34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa03e0d...cbb598` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0cb2d...1a260b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa70a8d...ebad79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7473c...4040fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa86f31...36414a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaaffad...b25f7c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac0b6a...a06ffc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf0a36...cbb968` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf47e9...b23d8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf860f...eeab3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2f8f2...d12cf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb629ac...41f8f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba8562...ce7b8a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb947c...46a353` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc99f6...ae517c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbee8d3...c2b702` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc04c9c...a9e48b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc274f0...f15eee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc342f8...6aabef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc48aa9...36c596` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5b7fd...d8ae15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6f6f5...fb5302` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6fa53...760968` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7e2df...f97d8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8b18b...c4e79a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8fe24...fd5a53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc99426...dd47c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9d455...b49099` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc5dcf...dd21a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xceef79...e7fcd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd0ae24...dc8fcc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd0ff24...c1016a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd13ab9...3dd813` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1d231...455876` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd23112...f9c099` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3477c...2fe4d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd35c54...943e43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd4fb0d...6dd053` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd520a3...bdf834` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5a7c9...feb529` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6ac57...086135` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd72b35...a42707` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd92515...0e5268` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd96d9c...c17151` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb964b...363bc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdbd20f...c88852` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdcb503...52e264` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd171a...0325d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde3ea6...c4ffa9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdea860...353e05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdfc11a...82ec33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe18735...0e7c59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1cac5...75388d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe223ac...760ac2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe30dac...c1d3a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5a7be...955660` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5cbd9...c36c8a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe60e43...d9b32e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9bcd0...d5f3f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xede909...7b8141` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf16cd6...8555c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf43910...36f6f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf60d3c...6f752a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf74d1e...1a61eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7c101...f4d21d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7f376...11c10e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf907e1...d9e806` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf90f26...0da6f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfbf9a2...aa0282` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc3a92...8bde30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc5860...42bb5e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [sourcehat.com/audits/ElephantMoney](https://sourcehat.com/audits/ElephantMoney) | SourceHat | Audit | 2021-11 | stale | Direct | contract_name | 4 | n/a |
| [PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf](https://elephant.money/media/PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 267 |

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
