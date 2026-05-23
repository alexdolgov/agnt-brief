# Agentic Audit Brief: Tranchess

⚠️ Lifecycle status: DEAD - TVL changed 4.9% over 90 days

## Project Overview

- Project: Tranchess (`tranchess`)
- Website: [https://tranchess.com](https://tranchess.com)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-23T15:15:16.875Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: bsc, ethereum, scroll
- Contract surface: 135 unique implementations (557 raw deployments)
- DeFi Llama TVL: $5,736,174.00
- On-chain TVL (included contracts): $1,944.78
- TVL by chain: Bsc $1,944.78

## Project Description

Tranchess is a DeFi protocol offering structured yield products through tranched funds. It allows users to gain leveraged exposure or stable returns by splitting a single fund into multiple risk/return profiles, and provides liquid staking and yield optimization across Ethereum, BSC, and Scroll.

### Architecture

All families share the Chess token and governance infrastructure (VotingEscrowV4) for protocol incentives. Tranchess and Tranchess Yield both use BishopStableSwap pools to facilitate trading between tranche tokens, while Tranchess Ether appears as a standalone liquid staking product.

## Audit Coverage Summary

- Verified implementations audited: 24/101 (23.8%)
- Verified + Unaudited implementations: 77
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 135
- Raw deployments: 557
- Audits discovered: 9
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): $1,944.78
- Latest audit: 2023-12 (stale)
- Staleness: 0 fresh, 0 aging, 8 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $1,944.78 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 19 | 18.8% | 2023-12 |
| CertiK | Tier 2 | 10 | 9.9% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (24)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AddressWhitelist | unknown | bsc | [`0x5d5485...ae0436`](./contracts/bsc-56/0x5d54854d79280de19031f867f45aa6f461ae0436/) | ✅ Audited |
| AprOracle | operational_periphery | ethereum | [`0xa9f575...1feaac`](./contracts/ethereum-1/0xa9f575d735439eb4187b7bbc07459124811feaac/) | ✅ Audited |
| Chess | unknown | bsc | [`0x20de22...4c82a6`](./contracts/bsc-56/0x20de22029ab63cf9a7cf5feb2b737ca1ee4c82a6/) | ✅ Audited |
| ChessController | governance | bsc | [`0x42e285...94e2e6`](./contracts/bsc-56/0x42e285eeeb14e5866d0ccbbed5efb4692194e2e6/) | ✅ Audited |
| ChessScheduleRelayer | unknown | bsc | 3 deployments: bsc [`0x8d0fff...626005`](./contracts/bsc-56/0x8d0fffacd3b38161256915acdc194538e0626005/); bsc `0xb400d1...52cd10`; bsc `0xdd2cf2...8122eb` | ✅ Audited |
| Exchange | unknown | bsc | 2 deployments: bsc [`0x907a50...931e25`](./contracts/bsc-56/0x907a50140aee1e457b8d8116f9b5f8ead1931e25/); bsc `0xfa5f59...f9ad95` | ✅ Audited |
| ExchangeV2 | unknown | bsc | 4 deployments: bsc [`0xabad55...415080`](./contracts/bsc-56/0xabad55484c39d0394279ffcedc11e23001415080/); bsc `0xb4fd07...a7b299`; bsc `0xc39d29...329c4c`; bsc `0xe5cc18...94ac41` | ✅ Audited |
| FeeDistributor | operational_periphery | ethereum | 17 deployments: ethereum [`0x00db7b...8e367a`](./contracts/ethereum-1/0x00db7b1300b2b24fb9bdf4f661f650a2998e367a/); ethereum `0xbc428f...84842c`; ethereum `0xe6e659...909cbf`; bsc `0x111150...c56628`; bsc `0x4832f0...16fd42`; bsc `0x4d8dce...9b7bb7`; bsc `0x57c6df...e20edb`; bsc `0x5bd53b...37eb22`; bsc `0x67eb54...fed35b`; bsc `0x857486...20e0e7`; bsc `0x85ae5e...8bcda8`; bsc `0xa4ecd9...fafb69`; bsc `0xa80287...b76ea2`; bsc `0xe06f85...639dae`; bsc `0xe5f4ef...dad5c6`; scroll `0xdec17f...e00d67`; scroll `0xe302f0...fe83e4` | ✅ Audited |
| Fund | unknown | bsc | 2 deployments: bsc [`0x677b73...698a6b`](./contracts/bsc-56/0x677b7304cb944b413d3c9aebc4d4b5da1a698a6b/); bsc `0xd6b3b8...44e402` | ✅ Audited |
| FundV3 | unknown | bsc | 3 deployments: bsc [`0x1f18cc...7ba0e0`](./contracts/bsc-56/0x1f18cc2b50575a71dd2ebf58793d4e661a7ba0e0/); bsc `0x2f40c2...b456bb`; bsc `0x7618f3...bd2a34` | ✅ Audited |
| FundV4 | unknown | ethereum | [`0x69c536...2d3966`](./contracts/ethereum-1/0x69c53679ec1c06f3275b64c428e8cd069a2d3966/) | ✅ Audited |
| FundV5 | unknown | ethereum | [`0x811c9d...5dd0fa`](./contracts/ethereum-1/0x811c9dd8b7b670a78d02fac592ebbe465e5dd0fa/) | ✅ Audited |
| InterestRateBallot | operational_periphery | bsc | 2 deployments: bsc [`0xe8061a...9783d3`](./contracts/bsc-56/0xe8061a74412e78dda7a762b8f6361518bb9783d3/); bsc `0xeb76e3...e5c09a` | ✅ Audited |
| PrimaryMarket | unknown | bsc | 2 deployments: bsc [`0x19ca3b...a1008d`](./contracts/bsc-56/0x19ca3baaeaf37b857026dfed3a0ba63987a1008d/); bsc `0x57c804...22195f` | ✅ Audited |
| PrimaryMarketV2 | unknown | bsc | [`0x15f2fe...d5cb59`](./contracts/bsc-56/0x15f2fefcf313d397f9933c1cb7590ab925d5cb59/) | ✅ Audited |
| PrimaryMarketV3 | unknown | bsc | 3 deployments: bsc [`0x25c601...01eb17`](./contracts/bsc-56/0x25c601a3fca896be827ef47e52bfcab18601eb17/); bsc `0x991c55...977f24`; bsc `0xec887f...85f522` | ✅ Audited |
| PrimaryMarketV4 | unknown | ethereum | 2 deployments: ethereum [`0xcd0b4d...9ba70e`](./contracts/ethereum-1/0xcd0b4d35cc6ec86d1d52b8eb07b5d029e39ba70e/); ethereum `0xcf1163...c4c829` | ✅ Audited |
| Share | unknown | bsc | 9 deployments: bsc [`0x15d031...f4c648`](./contracts/bsc-56/0x15d0318fddf785ac0d3ba690c0033b3bedf4c648/); bsc `0x3a632b...ef9fb1`; bsc `0x80da8c...fab7ef`; bsc `0x8cc456...dc6f85`; bsc `0x9fd554...ad1a90`; bsc `0xa0c1a9...e4dcbb`; bsc `0xed3805...9fca43`; bsc `0xf8d829...8d2c3a`; bsc `0xfff9fc...b75dd9` | ✅ Audited |
| TwapOracle | operational_periphery | bsc | 2 deployments: bsc [`0x7b2a31...4a6d61`](./contracts/bsc-56/0x7b2a312090344d76bc26bd9d04ed672e844a6d61/); bsc `0xd92495...cfba28` | ✅ Audited |
| VestingEscrow | operational_periphery | bsc | 9 deployments: bsc [`0x0c3eb0...34be06`](./contracts/bsc-56/0x0c3eb024942bc2d863796e74f6896b983534be06/); bsc `0x102a99...33f51c`; bsc `0x1c8e9f...945260`; bsc `0x2f0455...545355`; bsc `0x575a15...b92ffe`; bsc `0x6d2b82...d405cc`; bsc `0x77f82a...130f94`; bsc `0x966768...6c5b68`; bsc `0xfa52b0...aa67ac` | ✅ Audited |
| VotingEscrow | operational_periphery | bsc | 3 deployments: bsc [`0x5cb57f...2b5f23`](./contracts/bsc-56/0x5cb57f1e5b463b093efac1222e87fa51982b5f23/); bsc `0x8fb2a4...5837b4`; bsc `0xc11f14...8672c1` | ✅ Audited |
| VotingEscrowV2 | operational_periphery | bsc | [`0x147c00...775620`](./contracts/bsc-56/0x147c0057de638259715edd90772ea568f7775620/) | ✅ Audited |
| VotingEscrowV3 | operational_periphery | ethereum | 3 deployments: ethereum [`0x116aeb...bdee9b`](./contracts/ethereum-1/0x116aeb23c7912c0cda16cbfc5f406e5b1dbdee9b/); ethereum `0xb9d0dd...d4daa4`; bsc `0xbeceed...d3e5cf` | ✅ Audited |
| WstETHPrimaryMarketRouter | adapter | ethereum | [`0x9c69b6...9240fa`](./contracts/ethereum-1/0x9c69b6caf5074a2dec33bdb84d0f871d509240fa/) | ✅ Audited |

### ⚠️ Verified + Unaudited (77)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ProxyOFTPool | core_logic | ethereum | 3 deployments: ethereum [`0x25cd49...e76815`](./contracts/ethereum-1/0x25cd496d66708166a06da16ed641dd286ce76815/); bsc `0x38f51b...672d59`; scroll `0xf440e3...4f5970` | ⚠️ Unaudited |
| AnyswapChessPool | core_logic | bsc | 2 deployments: ethereum `0x5cdd7c...8b5761`; bsc [`0x3c2b52...ced4d7`](./contracts/bsc-56/0x3c2b521be49aae9208f4f9766a63216afaced4d7/) | ⚠️ Unaudited |
| AnyswapChess | unknown | scroll | 2 deployments: ethereum `0xd61232...5e2e73`; scroll [`0x9735fb...1bccf9`](./contracts/scroll-534352/0x9735fb1126b521a913697a541f768376011bccf9/) | ⚠️ Unaudited |
| BatchOperationHelper | periphery | bsc | 5 deployments: ethereum `0x97238b...55a1d5`; bsc [`0x5647be...52529d`](./contracts/bsc-56/0x5647bed4a4d7544d667aeaabf71b13f1c152529d/); bsc `0xa6fd87...2815a1`; bsc `0xdcf0bf...a35eba`; scroll `0xbefeb1...9d6e68` | ⚠️ Unaudited |
| BatchSettleHelper | periphery | bsc | [`0x78fab7...dcb2ca`](./contracts/bsc-56/0x78fab7fd7fc80518543af92777dbbb18d7dcb2ca/) | ⚠️ Unaudited |
| BatchUpgradeTool | periphery | bsc | [`0xd7d848...cde071`](./contracts/bsc-56/0xd7d8484c835487c2a88c5e653f75e570eecde071/) | ⚠️ Unaudited |
| BeaconStakingOracle | operational_periphery | ethereum | 4 deployments: ethereum [`0x0eeccd...5a7c8e`](./contracts/ethereum-1/0x0eeccdc7c43a9a1536b00894b64f600b855a7c8e/); ethereum `0x946c1c...9b63e2`; ethereum `0xd325d1...0b5242`; ethereum `0xffd319...24a15a` | ⚠️ Unaudited |
| BishopStableSwap | unknown | bsc | 3 deployments: bsc [`0x56118e...ddaa37`](./contracts/bsc-56/0x56118e49582a8ffa8e7309c58e9cd8a7e2ddaa37/); bsc `0x87585a...df5b6a`; bsc `0x999db2...e06742` | ⚠️ Unaudited |
| BishopStableSwapV2 | unknown | bsc | 24 deployments: ethereum `0xba9194...298079`; bsc [`0x01209a...c21f4e`](./contracts/bsc-56/0x01209a232daf2068136d15e76c867c7f7fc21f4e/); bsc `0x074727...2a3f33`; bsc `0x094277...1400aa`; bsc `0x2fa534...311698`; bsc `0x399bbb...d62b07`; bsc `0x6da3a0...1dd970`; bsc `0x8aea25...c46d4b`; bsc `0xa6d9ad...473596`; bsc `0xb4c672...0893e6`; bsc `0xba5a53...336c2b`; bsc `0xbbb1aa...bdd28f`; bsc `0xc36553...e75dbe`; bsc `0xd0cc89...6e735c`; bsc `0xd33926...1ab9f7`; bsc `0xd3d475...b6256e`; bsc `0xd44783...e7cac1`; bsc `0xda3bd7...9d1ad4`; bsc `0xf4302b...ed2bbb`; bsc `0xf443f2...5651bc`; bsc `0xf84d3e...e0c9d9`; scroll `0x3d9f20...d71ca6`; scroll `0xd151ce...9ffc6f`; scroll `0xec8bfa...a5ff00` | ⚠️ Unaudited |
| Briber | operational_periphery | ethereum | 3 deployments: ethereum [`0x4eca7f...f76fd3`](./contracts/ethereum-1/0x4eca7fc4cceea6c47a498e60e295d14abbf76fd3/); ethereum `0x5d76ee...fa9776`; ethereum `0x99248d...e9b614` | ⚠️ Unaudited |
| BscAprOracle | operational_periphery | bsc | 2 deployments: bsc [`0x8424d9...a56eed`](./contracts/bsc-56/0x8424d933fbb73665e5a8880de63c7b1366a56eed/); bsc `0xa79ff9...1b7600` | ⚠️ Unaudited |
| BscAprOracleProxy | operational_periphery | bsc | 7 deployments: bsc [`0x1c319e...f35583`](./contracts/bsc-56/0x1c319ec0def2474108ad5645a8b6fd92f9f35583/); bsc `0x65f5fd...0d62af`; bsc `0x82c9fd...d5b165`; bsc `0xa70308...519455`; bsc `0xf42f85...25ff04`; bsc `0xf5208b...d47cc4`; bsc `0xfc3688...f9c931` | ⚠️ Unaudited |
| BscStakingStrategy | core_logic | bsc | 2 deployments: bsc [`0x82457a...70134d`](./contracts/bsc-56/0x82457adf5f7f1fd22622df4808f06392b170134d/); bsc `0x8f1982...a66da6` | ⚠️ Unaudited |
| BscStakingStrategyV2 | core_logic | bsc | 2 deployments: bsc [`0x0391ba...fcab66`](./contracts/bsc-56/0x0391ba6f1c59a923f727a6549d27c895fefcab66/); bsc `0xde9f4b...92437b` | ⚠️ Unaudited |
| ChainlinkTwapOracle | operational_periphery | bsc | 3 deployments: bsc [`0x7b38e4...4b44f6`](./contracts/bsc-56/0x7b38e4d28767638a1725766f8cdeef4abd4b44f6/); bsc `0xc8051d...92f35d`; bsc `0xe4e5c7...7703eb` | ⚠️ Unaudited |
| ChainlinkTwapOracleV3 | operational_periphery | ethereum | [`0x2bac57...04b916`](./contracts/ethereum-1/0x2bac57d29570fe56b60216c26da3c5b5c804b916/) | ⚠️ Unaudited |
| ChessControllerV2 | governance | bsc | [`0xe359ef...27c02d`](./contracts/bsc-56/0xe359efcf1c5c8f3cdb45bc54e97231780127c02d/) | ⚠️ Unaudited |
| ChessControllerV3 | governance | bsc | [`0x030598...d86619`](./contracts/bsc-56/0x03059893d40739d0eb69e151437df67a48d86619/) | ⚠️ Unaudited |
| ChessControllerV4 | governance | bsc | [`0xbeca69...b1dd70`](./contracts/bsc-56/0xbeca6962759c7ae25e900dbe3f898bcf1fb1dd70/) | ⚠️ Unaudited |
| ChessControllerV5 | governance | bsc | [`0x698649...c16cc2`](./contracts/bsc-56/0x6986498555ead5659e603f410785c6f0e5c16cc2/) | ⚠️ Unaudited |
| ChessControllerV6 | governance | bsc | 6 deployments: ethereum `0x419d4c...843f1e`; ethereum `0x58e2db...b7a8ac`; ethereum `0xaa7596...062750`; ethereum `0xec5468...0c9113`; bsc [`0x0a7e89...9de8ed`](./contracts/bsc-56/0x0a7e898e1fab8639dc3a416fe844662f209de8ed/); bsc `0x94ddc5...5dcece` | ⚠️ Unaudited |
| ChessSchedule | unknown | bsc | 17 deployments: bsc [`0x0088eb...165cc0`](./contracts/bsc-56/0x0088eb834d99095508a85501bd5adff844165cc0/); bsc `0x0519ff...855332`; bsc `0x0fadbb...ef2fb8`; bsc `0x1441f5...e511be`; bsc `0x2754e4...170858`; bsc `0x2846ac...d97edd`; bsc `0x3e53f4...984f84`; bsc `0x4ef618...4c797f`; bsc `0x4fa1e4...1dc998`; bsc `0x569381...688ec1`; bsc `0x65acd4...60c69c`; bsc `0x86a991...61466c`; bsc `0xad4dfc...5552f4`; bsc `0xd48e4c...06a9b8`; bsc `0xe0c2fc...4ed0e7`; bsc `0xf071de...a03b80`; bsc `0xf58517...8930de` | ⚠️ Unaudited |
| ChessSubSchedule | unknown | ethereum | 7 deployments: ethereum [`0x0c5f4b...22b03d`](./contracts/ethereum-1/0x0c5f4b16378dfbb71102db10745b79b2dc22b03d/); ethereum `0x41e58b...1ebdd2`; ethereum `0x43e42e...7f33f6`; ethereum `0x49b71d...9694b1`; ethereum `0x4dad1d...83bb47`; ethereum `0xc88ac7...01d040`; ethereum `0xf4d665...ceec69` | ⚠️ Unaudited |
| ConstAprOracle | operational_periphery | bsc | 21 deployments: ethereum `0x374738...7e10a9`; ethereum `0xe132be...d24bbd`; bsc [`0x066433...e4736b`](./contracts/bsc-56/0x0664332d908b1e26b72f7b4c341a051f7be4736b/); bsc `0x0bc9fa...c6bec3`; bsc `0x241be9...4a20b5`; bsc `0x443b56...bcbad1`; bsc `0x44b8bb...acf2d3`; bsc `0x56ba1f...5dc314`; bsc `0x715cc0...f1a873`; bsc `0x83b927...015d33`; bsc `0x8dedf2...04dd79`; bsc `0x9060da...038d86`; bsc `0xa09679...8b6e48`; bsc `0xab7a90...97fad8`; bsc `0xbf4507...455338`; bsc `0xc3626f...28a983`; bsc `0xc61198...fe83ea`; bsc `0xfdc433...ebc56c`; scroll `0xb6d5d0...621807`; scroll `0xf380bb...2434a0`; scroll `0xfee8cd...b86922` | ⚠️ Unaudited |
| ConstPriceOracle | operational_periphery | bsc | 20 deployments: ethereum `0x5afd58...ae7a4c`; bsc [`0x18651b...4ef250`](./contracts/bsc-56/0x18651bf4dd2d920880614df9ad9779da8d4ef250/); bsc `0x2abe5f...862683`; bsc `0x30bdb4...5ddd74`; bsc `0x3c857f...3e12bf`; bsc `0x519c13...bb7e88`; bsc `0x53fd57...9b1a4a`; bsc `0x6037ae...44d165`; bsc `0x64d5af...25715c`; bsc `0x7a5a11...6f38a7`; bsc `0x827aec...0d80f9`; bsc `0x8445c6...47155e`; bsc `0x894738...0fbc6c`; bsc `0x8ceb0f...3b476f`; bsc `0xd5741e...8e13e1`; bsc `0xf63293...5df04f`; bsc `0xf81433...10c5d6`; scroll `0x49195e...e0cd65`; scroll `0xa793fb...3a1878`; scroll `0xdd730b...9a30df` | ⚠️ Unaudited |
| ControllerBallot | governance | bsc | 2 deployments: bsc [`0x66cae7...274377`](./contracts/bsc-56/0x66cae7a198792089060c7d68e31ca7fcf9274377/); bsc `0xd28073...ece043` | ⚠️ Unaudited |
| ControllerBallotV2 | governance | scroll | 4 deployments: ethereum `0x41b598...16826f`; ethereum `0xadf40c...86acef`; bsc `0xd1d463...faf8d3`; scroll [`0x034a99...0e9fd7`](./contracts/scroll-534352/0x034a993627c5f780e9af80160edc94f15c0e9fd7/) | ⚠️ Unaudited |
| CrossChainMintKeeperHelper | operational_periphery | bsc | 2 deployments: bsc [`0x72ece0...9cf710`](./contracts/bsc-56/0x72ece039cbdcfa9a26edcdfcfcddacb1d49cf710/); bsc `0xee95ac...fc4cdd` | ⚠️ Unaudited |
| CrossChainSyncKeeperHelper | operational_periphery | ethereum | 2 deployments: ethereum [`0x1d611d...17df4f`](./contracts/ethereum-1/0x1d611dda4356b5d4cd02b3f93883bf7f0f17df4f/); ethereum `0x2e6fbd...f73097` | ⚠️ Unaudited |
| CrossChainWrappedToken | token | bsc | [`0x352e9a...ab6da8`](./contracts/bsc-56/0x352e9a93498c4aa72734a32433bca094f5ab6da8/) | ⚠️ Unaudited |
| EthPrimaryMarket | unknown | ethereum | 2 deployments: ethereum [`0x46b0d0...88da73`](./contracts/ethereum-1/0x46b0d06ef0a2a96165b4c8c962ea5b609a88da73/); ethereum `0x8a04a9...db3f2c` | ⚠️ Unaudited |
| EthStakingStrategy | core_logic | ethereum | 4 deployments: ethereum [`0x50fe51...2ea08e`](./contracts/ethereum-1/0x50fe5165be08095a1f4cd96877cc54b3cc2ea08e/); ethereum `0x66453f...06ef8c`; ethereum `0x96f448...9dac37`; ethereum `0xf73701...c4081b` | ⚠️ Unaudited |
| ExchangeV3 | unknown | bsc | 6 deployments: bsc [`0x04ff93...f647d7`](./contracts/bsc-56/0x04ff932ca53ed6e1f5b4b6e98693bd95b0f647d7/); bsc `0x1216be...dcc1b6`; bsc `0x382631...540e87`; bsc `0x42867d...30880b`; bsc `0x8c4e46...0553c6`; bsc `0xb13a07...bbcef0` | ⚠️ Unaudited |
| FeeConverter | unknown | scroll | 19 deployments: ethereum `0x96ccae...74f9d5`; bsc `0x0fd013...977087`; bsc `0x1dbf2b...6063ca`; bsc `0x292016...ca5342`; bsc `0x394e4f...ce2922`; bsc `0x417d84...1fb3b1`; bsc `0x4b1d68...2ed0bc`; bsc `0x6b0c7d...1aeaf3`; bsc `0x7716b8...3b6533`; bsc `0x782546...66badf`; bsc `0x8dc8ce...716d9f`; bsc `0x911237...09e57a`; bsc `0xb7df19...6cc790`; bsc `0xc36b90...87368f`; bsc `0xf4fa05...6ebd07`; bsc `0xfa9040...ad686b`; bsc `0xfced57...ce8885`; scroll [`0x009340...e058e1`](./contracts/scroll-534352/0x00934045078c5159c706ed43b7fa9578b7e058e1/); scroll `0x80df7e...32155f` | ⚠️ Unaudited |
| FlashSwapRouter | adapter | bsc | 3 deployments: bsc [`0x0d5108...fda0e0`](./contracts/bsc-56/0x0d5108377c86f4dcfe473177e0ca555095fda0e0/); bsc `0xc841bd...851c49`; bsc `0xcf4091...9e0a2c` | ⚠️ Unaudited |
| FlashSwapRouterV2 | adapter | ethereum | [`0x0c1893...70983c`](./contracts/ethereum-1/0x0c18932d6dd86fbea662de6389fae86f5570983c/) | ⚠️ Unaudited |
| FlashSwapRouterV3 | adapter | scroll | 3 deployments: ethereum `0xd46227...6e0c95`; bsc `0x5f2217...c60024`; scroll [`0x512d9c...4378c4`](./contracts/scroll-534352/0x512d9cd7df5d4617fea9386ae2d6c28d674378c4/) | ⚠️ Unaudited |
| FlashSwapRouterV3Helper | adapter | bsc | [`0x04ab3f...c3ddd9`](./contracts/bsc-56/0x04ab3fbd6b47683b7d3926e38d80c8198cc3ddd9/) | ⚠️ Unaudited |
| FundKeeperHelper | operational_periphery | bsc | 3 deployments: bsc [`0x57c4da...3d36ba`](./contracts/bsc-56/0x57c4daf59286cf3bb419b10b4f029c443a3d36ba/); bsc `0x6ace40...958763`; bsc `0xd30ef2...87b5b2` | ⚠️ Unaudited |
| FundV2 | unknown | bsc | [`0x629d45...a0896b`](./contracts/bsc-56/0x629d4562033e432b390d0808b54a82b0c4a0896b/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | ethereum | 2 deployments: ethereum [`0x1bf019...ff3a7b`](./contracts/ethereum-1/0x1bf019a44a708fbeba7adc79bdad3d0769ff3a7b/); bsc [`0x1bf019...ff3a7b`](./contracts/bsc-56/0x1bf019a44a708fbeba7adc79bdad3d0769ff3a7b/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | scroll | [`0x1bf019...ff3a7b`](./contracts/scroll-534352/0x1bf019a44a708fbeba7adc79bdad3d0769ff3a7b/) | ⚠️ Unaudited |
| InterestRateBallotV2 | operational_periphery | bsc | [`0xe5cf95...828a0e`](./contracts/bsc-56/0xe5cf958ff94eadb5247fd4d5c649d85dcf828a0e/) | ⚠️ Unaudited |
| InterestRateBallotV3 | operational_periphery | ethereum | 2 deployments: ethereum [`0x6f6677...853352`](./contracts/ethereum-1/0x6f6677cf52297005ae6eb93fad5e24a482853352/); ethereum `0xf635b6...e197e2` | ⚠️ Unaudited |
| LiquidityGauge | operational_periphery | bsc | 4 deployments: bsc [`0x00d150...bd4d7a`](./contracts/bsc-56/0x00d150c057f5d66107dfdb9d6d97f8b53ebd4d7a/); bsc `0x131678...1a9d30`; bsc `0x3f586a...744fc2`; bsc `0x7350d2...6f022f` | ⚠️ Unaudited |
| LiquidityGaugeV2 | operational_periphery | ethereum | 10 deployments: ethereum [`0x287195...664a9f`](./contracts/ethereum-1/0x2871956fb1cde2b28f8d77bbecb4d806a4664a9f/); ethereum `0xd6ef5c...5963a5`; bsc `0x424fff...65058e`; bsc `0x74c8a2...b3d633`; bsc `0xbc4ac1...73a15d`; bsc `0xf0e6b7...f1cf56`; bsc `0xf2a64f...5d0a38`; bsc `0xf71cad...bd5afe`; scroll `0x3c8465...e6d464`; scroll `0x461f98...3509cf` | ⚠️ Unaudited |
| LiquidityGaugeV3 | operational_periphery | bsc | 14 deployments: bsc [`0x0ffea7...dc567f`](./contracts/bsc-56/0x0ffea70d4de8c9cce7312a96c30e8f50c1dc567f/); bsc `0x457cd6...270a35`; bsc `0x70548d...cd52e3`; bsc `0x7bd179...87c054`; bsc `0x8a6141...3862ea`; bsc `0x8a9a25...6c3d49`; bsc `0xa1e3f7...42da66`; bsc `0xb446da...eb280f`; bsc `0xc468dc...b0c753`; bsc `0xc837be...0cd295`; bsc `0xe4138a...8898ea`; bsc `0xe83cf7...1da23e`; bsc `0xf11a10...52371c`; scroll `0xd48cc4...b09b65` | ⚠️ Unaudited |
| MaturityFund | unknown | bsc | 19 deployments: bsc [`0x01907f...dc2763`](./contracts/bsc-56/0x01907f044bcae357f973d051b0f3b09093dc2763/); bsc `0x04eb0d...4f7bdd`; bsc `0x155ded...b0ec37`; bsc `0x2383a2...1b8df0`; bsc `0x29a90f...be387e`; bsc `0x506355...95ec6a`; bsc `0x6dcd69...cce21e`; bsc `0x78006b...6f54d6`; bsc `0x91b07b...befd34`; bsc `0x97c8d5...8807a9`; bsc `0x9c7f6d...b7be4a`; bsc `0xac05ff...a51fe6`; bsc `0xb6730d...93cea1`; bsc `0xc41097...0609ed`; bsc `0xcb00aa...ffe6b6`; bsc `0xfd53f8...d24f67`; scroll `0x289e69...61253f`; scroll `0x4b0d5f...10d955`; scroll `0xfbee64...c5a518` | ⚠️ Unaudited |
| MaturityPrimaryMarket | unknown | bsc | 19 deployments: bsc [`0x07a2d8...bf5559`](./contracts/bsc-56/0x07a2d8c053015b57c2dfc2b7450d521de1bf5559/); bsc `0x188fe2...59f274`; bsc `0x27b5dc...dd7fc4`; bsc `0x2c5752...78033a`; bsc `0x42b2a2...77a8ee`; bsc `0x4346d5...8b93f5`; bsc `0x64e30f...4d8a45`; bsc `0x756889...b8602a`; bsc `0x7a7bbe...47459d`; bsc `0x9af013...04198b`; bsc `0x9fb23b...22ead0`; bsc `0xb26009...a0eb2f`; bsc `0xc66710...8e29eb`; bsc `0xc94231...842166`; bsc `0xf2b1eb...a111c0`; bsc `0xfaf336...0eeac9`; scroll `0x088e2f...41679d`; scroll `0x21366d...791cee`; scroll `0x47b391...f194d4` | ⚠️ Unaudited |
| NodeOperatorRegistry | registry | ethereum | 2 deployments: ethereum [`0x262587...9dc51e`](./contracts/ethereum-1/0x2625871323360a04d1d4302a993a2b2d049dc51e/); ethereum `0xe926f0...afb308` | ⚠️ Unaudited |
| NonfungibleRedemptionDescriptor | periphery | ethereum | [`0x7d7473...1a5504`](./contracts/ethereum-1/0x7d7473505978442f181eeb9ba147f418281a5504/) | ⚠️ Unaudited |
| OracleKeeperHelper | operational_periphery | bsc | 3 deployments: bsc [`0x141fae...db74bd`](./contracts/bsc-56/0x141faeefbd9ec0b88326050959fe88a14ddb74bd/); bsc `0x4e58f9...6962ea`; bsc `0xf890ce...17a7ff` | ⚠️ Unaudited |
| PrimaryMarketRouter | adapter | ethereum | 6 deployments: ethereum [`0x10e02a...01cc40`](./contracts/ethereum-1/0x10e02a656b5f9de2c44c687787c36a2c4801cc40/); ethereum `0xba3c7a...2a2aef`; ethereum `0xea8e6f...2b18ba`; bsc `0x678dad...9d0fcd`; bsc `0xa61f3d...e2f6e1`; bsc `0xd5396f...2673ee` | ⚠️ Unaudited |
| PrimaryMarketRouterV2 | adapter | bsc | 19 deployments: bsc [`0x01a45d...7eb9ee`](./contracts/bsc-56/0x01a45d60af80c42aa3199899f37a9867a87eb9ee/); bsc `0x09e9ec...029290`; bsc `0x1058c3...264191`; bsc `0x235f1b...1a3c20`; bsc `0x245a73...134123`; bsc `0x32a8bb...ab4335`; bsc `0x3a000a...c63977`; bsc `0x46e6a5...a4f5b0`; bsc `0x55ab1f...4c3dd6`; bsc `0x675b9d...eaf832`; bsc `0x8cf164...83b276`; bsc `0xa2e8c2...fb5ca6`; bsc `0xbd1450...bdfe17`; bsc `0xc5d5f9...79c343`; bsc `0xe3515e...542979`; bsc `0xfdf6c8...fd3463`; scroll `0x194c6a...179440`; scroll `0xa2901b...e0c2bf`; scroll `0xeda4b3...cee32f` | ⚠️ Unaudited |
| PrimaryMarketV5 | unknown | ethereum | [`0xa8be5a...477e22`](./contracts/ethereum-1/0xa8be5ab62794a647254e1e62844201efc8477e22/) | ⚠️ Unaudited |
| ProtocolDataProvider | unknown | bsc | 2 deployments: bsc [`0x023748...7d2ea9`](./contracts/bsc-56/0x023748ca9e8658a4b6815ba8fd396b0ffa7d2ea9/); bsc `0xc4df28...ec0acb` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 2 deployments: ethereum [`0x18b806...241abc`](./contracts/ethereum-1/0x18b80619fca159fe3c655a11c94c040f72241abc/); bsc `0x88c889...448147` | ⚠️ Unaudited |
| QueenRateProvider | unknown | ethereum | [`0xa6aed7...8756a2`](./contracts/ethereum-1/0xa6aed7922366611953546014a3f9e93f058756a2/) | ⚠️ Unaudited |
| QueenStableSwap | unknown | bsc | [`0xfcf44d...ba5773`](./contracts/bsc-56/0xfcf44d5eb5c4a03d03cf5b567c7cde9b66ba5773/) | ⚠️ Unaudited |
| RewardCashier | unknown | ethereum | 4 deployments: ethereum [`0x264382...341418`](./contracts/ethereum-1/0x264382b200bc1fe51a9b58f704394de172341418/); ethereum `0x410f38...e150f7`; bsc `0x79e8ea...dcfe0d`; bsc `0xacc5b8...505e37` | ⚠️ Unaudited |
| RewardClaimer | operational_periphery | ethereum | [`0x7f08c4...f8fac1`](./contracts/ethereum-1/0x7f08c4f98265712c162975cb8da1cf3f5bf8fac1/) | ⚠️ Unaudited |
| SafeStaking | unknown | ethereum | 3 deployments: ethereum [`0x1ef209...83f8a9`](./contracts/ethereum-1/0x1ef20947d0de8f8db3acec9f349b72d75383f8a9/); ethereum `0xe83f1b...d9df03`; ethereum `0xfb3995...202f3d` | ⚠️ Unaudited |
| ShareStaking | unknown | bsc | 3 deployments: bsc [`0x66f9d1...7d4b70`](./contracts/bsc-56/0x66f9d16db828d340858b1fd4859c4030247d4b70/); bsc `0xaf098f...2aa1b4`; bsc `0xfa7b73...701c76` | ⚠️ Unaudited |
| ShareV2 | unknown | bsc | 69 deployments: ethereum `0x307462...714598`; ethereum `0x379e8d...0d3934`; ethereum `0x6aff25...a30f5c`; ethereum `0x93ef1e...292e7d`; ethereum `0xbb1852...9ca3a9`; ethereum `0xd2df8d...158690`; bsc [`0x01236e...aa7ed6`](./contracts/bsc-56/0x01236efc7c2e52fc940fcca055212a8403aa7ed6/); bsc `0x081829...3723b7`; bsc `0x0a229c...64223f`; bsc `0x0e5304...5ac4a4`; bsc `0x1094ee...d6f175`; bsc `0x1395b8...ce5a34`; bsc `0x13df92...ca0c0e`; bsc `0x1424ca...0a5bd3`; bsc `0x17206f...26b09d`; bsc `0x1bb33b...2651b8`; bsc `0x1d56ee...387e2b`; bsc `0x20d269...57ddf3`; bsc `0x21944a...385ff1`; bsc `0x3f1436...6a4c7a`; bsc `0x3ff927...f172a1`; bsc `0x40faca...45d52f`; bsc `0x47cc4b...d74759`; bsc `0x4c1e90...e222b2`; bsc `0x4e8a73...7b5543`; bsc `0x52e435...f05ae3`; bsc `0x53ef5c...a471fd`; bsc `0x5aa903...c79da8`; bsc `0x5d3c94...59557f`; bsc `0x636939...2fea89`; bsc `0x65067c...b9df6d`; bsc `0x716155...2f5e21`; bsc `0x81607f...cdbdde`; bsc `0x89035e...f68bbc`; bsc `0x900064...a6c83f`; bsc `0x92b99c...b5fa36`; bsc `0x9c1829...e82244`; bsc `0x9d076e...44a7a6`; bsc `0x9ed29f...9f16f2`; bsc `0xa14424...fa3547`; bsc `0xa5235d...ec4e7b`; bsc `0xa5b757...60d7e7`; bsc `0xa8494c...f6389e`; bsc `0xaa107d...a125b4`; bsc `0xb309f9...0f52a2`; bsc `0xb34309...1b71d3`; bsc `0xb87967...be45d5`; bsc `0xbe7ee1...d601e1`; bsc `0xc28fb6...01d76c`; bsc `0xcdd85b...6390c3`; bsc `0xce2a34...9d9955`; bsc `0xd4b3c0...c7188a`; bsc `0xd4c753...18856e`; bsc `0xd94f01...ae5f00`; bsc `0xdb3d7e...eaa3d3`; bsc `0xdbeb5f...0ce0b9`; bsc `0xdcaecd...a3b76c`; bsc `0xe94a3e...0f4665`; bsc `0xecd4a7...92653a`; bsc `0xf87e3d...77e77e`; bsc `0xf9cd7a...1b9926`; bsc `0xfdc8a3...991286`; bsc `0xff2326...b79c7c`; scroll `0x097508...79165b`; scroll `0x3b97cc...493eea`; scroll `0x6e20e4...35d92d`; scroll `0x6f2d7c...35ff4a`; scroll `0x820144...a7fea2`; scroll `0xbf4ff7...67112e` | ⚠️ Unaudited |
| SwapBonus | unknown | ethereum | 30 deployments: ethereum [`0x0df248...322231`](./contracts/ethereum-1/0x0df2489117b0e5b72b83c9d263bf609b30322231/); ethereum `0x321091...f95308`; ethereum `0xb6f98a...b7c9e4`; bsc `0x125ed6...ce9c27`; bsc `0x1a4ba3...f62add`; bsc `0x1b52ba...3aa832`; bsc `0x23fac9...49bc88`; bsc `0x32b67c...6d33ae`; bsc `0x41e80d...e65d65`; bsc `0x487178...d78bae`; bsc `0x4ae819...7f4056`; bsc `0x4fca6b...52a500`; bsc `0x646b96...3602c2`; bsc `0x6911a9...8a6594`; bsc `0x6bec98...a2eb2b`; bsc `0x6e6dfc...9978a0`; bsc `0x7813b3...fcd0c3`; bsc `0x7c29a6...b1fc71`; bsc `0x979797...5c234f`; bsc `0xa70376...723f52`; bsc `0xaa712f...692c13`; bsc `0xb48d3c...7f0bba`; bsc `0xc21978...e056d5`; bsc `0xc29d80...90b15f`; bsc `0xc53207...a5d3f8`; bsc `0xc6549d...cccba7`; bsc `0xdfd3b0...f793ed`; bsc `0xe68910...adf3cb`; scroll `0x33b5ad...84e0c8`; scroll `0x62b4b4...c30c86` | ⚠️ Unaudited |
| SwapBonusWrapper | unknown | bsc | 2 deployments: ethereum `0xc690f9...bd4855`; bsc [`0x6983d3...00a1ca`](./contracts/bsc-56/0x6983d348b10bf5c581ed682f041edaa3b800a1ca/) | ⚠️ Unaudited |
| SwapRouter | adapter | bsc | 3 deployments: ethereum `0x657498...6c3314`; ethereum `0x688de1...b378a3`; bsc [`0x3599dd...5cadc2`](./contracts/bsc-56/0x3599ddc1efce801f8657f64127acb07c0b5cadc2/) | ⚠️ Unaudited |
| TimelockController | governance | bsc | 3 deployments: ethereum `0x509b82...562c35`; bsc [`0x4bb3ae...1cf8f7`](./contracts/bsc-56/0x4bb3aeb5ba75bc6a44177907b54911b19d1cf8f7/); scroll `0xa25342...7734a9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | scroll | 3 deployments: scroll [`0xf3bf24...79dafa`](./contracts/scroll-534352/0xf3bf24b8fdb80b167b3fb6b97131fb942579dafa/); scroll `0xfae0e2...8fa13b`; scroll `0xffd177...f8f5ba` | ⚠️ Unaudited |
| UpgradeTool | unknown | bsc | 3 deployments: bsc [`0x8347b6...313aa8`](./contracts/bsc-56/0x8347b6f298340954565bc6c8a47d55bb21313aa8/); bsc `0x8369d4...3705a6`; bsc `0xfd7815...536b9b` | ⚠️ Unaudited |
| VotingEscrowCallback | operational_periphery | bsc | 2 deployments: ethereum `0xe7ae69...1af462`; bsc [`0x682ec9...931ebc`](./contracts/bsc-56/0x682ec9172f37b7b21bba6ee094f0c763a5931ebc/) | ⚠️ Unaudited |
| VotingEscrowHelper | operational_periphery | bsc | 4 deployments: bsc [`0x718620...5b57f8`](./contracts/bsc-56/0x718620141c129fce223287a2f6dda1d4aa5b57f8/); bsc `0x7c0697...8e46a3`; bsc `0x983f61...355066`; bsc `0xf60b5b...479936` | ⚠️ Unaudited |
| VotingEscrowV4 | operational_periphery | ethereum | 6 deployments: ethereum [`0x229cf0...7036e9`](./contracts/ethereum-1/0x229cf058e5103b657cd035b79e2f1a9d107036e9/); ethereum `0x3fadad...6cf95e`; ethereum `0xa0fe80...d8cb7b`; bsc `0x36f417...3b3dcd`; bsc `0x613576...32863e`; bsc `0x95a2bb...abc6c2` | ⚠️ Unaudited |
| WithdrawalManager | operational_periphery | ethereum | 5 deployments: ethereum [`0x16d0ff...29dd88`](./contracts/ethereum-1/0x16d0ff163e6430b99c3e23b8eecbf840a029dd88/); ethereum `0x4ec117...f3e6d3`; ethereum `0x901d53...49d7db`; ethereum `0xb0a904...9ece05`; ethereum `0xfcd9a1...9234ee` | ⚠️ Unaudited |
| WstETHBishopStableSwap | unknown | ethereum | [`0xad06a2...57bdb5`](./contracts/ethereum-1/0xad06a2dbd34da8f8cf5f85d284a5b93a2057bdb5/) | ⚠️ Unaudited |
| WstETHPriceOracle | operational_periphery | ethereum | [`0xc32f23...b0149f`](./contracts/ethereum-1/0xc32f23ee32cb5681eca5e84c2ae728c3f0b0149f/) | ⚠️ Unaudited |
| WstETHWrappingSwap | unknown | ethereum | [`0xc1e228...ee84ec`](./contracts/ethereum-1/0xc1e228ff4cf95a2b5c019b7e71d484a09eee84ec/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x17f4d4...71b9d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x89d5a6...83ccb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9af9ec...f06bf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9e9cd4...e04f99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa8e56f...f9291e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbe17b1...06b5bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfffa62...17e54f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1d7f76...aa25d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1dfd37...d2bf89` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2142a4...bb58cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2aca3d...9d5cf2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2f65f5...80d66f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3634e6...a306dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x41092e...004906` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x440732...c7c503` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x47a115...326225` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x534b38...955d75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7fe452...120cbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x81e32a...ec218f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x93ac57...a3c43c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x953ffb...6dcaf2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x97993c...8f74af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb6689a...9a677c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb66ecd...2edcb9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbb9a8a...f4f959` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc67428...98fe76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xff12ef...dc9c35` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0x0e6a00...92ccaa` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0x4dd610...270dff` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0x63baee...24cbcc` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0x65cecc...4b3462` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0x80800c...edf5ff` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xb5e3d3...105839` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xd180fb...ef7795` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [certik-2021-06-02.pdf](https://github.com/tranchess/contract-core/blob/main/audits/certik-2021-06-02.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | 25 | high |
| [peckshield-2021-06-28.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2021-06-28.pdf) | PeckShield | Audit | 2021-06 | stale | Direct | contract_name | 19 | high |
| [peckshield-2021-09-10.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2021-09-10.pdf) | PeckShield | Audit | 2021-09 | stale | Direct | contract_name | 11 | high |
| [peckshield-2021-12-24.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2021-12-24.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | 1 | high |
| [peckshield-2022-05-20.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2022-05-20.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 35 | high |
| [peckshield-2022-10-30.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2022-10-30.pdf) | PeckShield | Audit | 2022-10 | stale | Direct | contract_name | 9 | high |
| [peckshield-2023-12-28.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2023-12-28.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | contract_name | 28 | high |
| [PeckShield-Audit-Report-Tranchess-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Tranchess-v1.0.pdf) | PeckShield | Audit | 2021-06 | stale | Direct | contract_name | 19 | high |
| [DL audit link](https://skynet.certik.com/projects/tranchess) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x25cd49...e76815`](./contracts/ethereum-1/0x25cd496d66708166a06da16ed641dd286ce76815/) | ProxyOFTPool | core_logic | $1,944.78 | Verified native implementation with $1,944.78 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3c2b52...ced4d7`](./contracts/bsc-56/0x3c2b521be49aae9208f4f9766a63216afaced4d7/) | AnyswapChessPool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5647be...52529d`](./contracts/bsc-56/0x5647bed4a4d7544d667aeaabf71b13f1c152529d/) | BatchOperationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x78fab7...dcb2ca`](./contracts/bsc-56/0x78fab7fd7fc80518543af92777dbbb18d7dcb2ca/) | BatchSettleHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd7d848...cde071`](./contracts/bsc-56/0xd7d8484c835487c2a88c5e653f75e570eecde071/) | BatchUpgradeTool | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0eeccd...5a7c8e`](./contracts/ethereum-1/0x0eeccdc7c43a9a1536b00894b64f600b855a7c8e/) | BeaconStakingOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x56118e...ddaa37`](./contracts/bsc-56/0x56118e49582a8ffa8e7309c58e9cd8a7e2ddaa37/) | BishopStableSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01209a...c21f4e`](./contracts/bsc-56/0x01209a232daf2068136d15e76c867c7f7fc21f4e/) | BishopStableSwapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4eca7f...f76fd3`](./contracts/ethereum-1/0x4eca7fc4cceea6c47a498e60e295d14abbf76fd3/) | Briber | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8424d9...a56eed`](./contracts/bsc-56/0x8424d933fbb73665e5a8880de63c7b1366a56eed/) | BscAprOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1c319e...f35583`](./contracts/bsc-56/0x1c319ec0def2474108ad5645a8b6fd92f9f35583/) | BscAprOracleProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x82457a...70134d`](./contracts/bsc-56/0x82457adf5f7f1fd22622df4808f06392b170134d/) | BscStakingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0391ba...fcab66`](./contracts/bsc-56/0x0391ba6f1c59a923f727a6549d27c895fefcab66/) | BscStakingStrategyV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe359ef...27c02d`](./contracts/bsc-56/0xe359efcf1c5c8f3cdb45bc54e97231780127c02d/) | ChessControllerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x030598...d86619`](./contracts/bsc-56/0x03059893d40739d0eb69e151437df67a48d86619/) | ChessControllerV3 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbeca69...b1dd70`](./contracts/bsc-56/0xbeca6962759c7ae25e900dbe3f898bcf1fb1dd70/) | ChessControllerV4 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x698649...c16cc2`](./contracts/bsc-56/0x6986498555ead5659e603f410785c6f0e5c16cc2/) | ChessControllerV5 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0088eb...165cc0`](./contracts/bsc-56/0x0088eb834d99095508a85501bd5adff844165cc0/) | ChessSchedule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x066433...e4736b`](./contracts/bsc-56/0x0664332d908b1e26b72f7b4c341a051f7be4736b/) | ConstAprOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18651b...4ef250`](./contracts/bsc-56/0x18651bf4dd2d920880614df9ad9779da8d4ef250/) | ConstPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66cae7...274377`](./contracts/bsc-56/0x66cae7a198792089060c7d68e31ca7fcf9274377/) | ControllerBallot | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x034a99...0e9fd7`](./contracts/scroll-534352/0x034a993627c5f780e9af80160edc94f15c0e9fd7/) | ControllerBallotV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x72ece0...9cf710`](./contracts/bsc-56/0x72ece039cbdcfa9a26edcdfcfcddacb1d49cf710/) | CrossChainMintKeeperHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d611d...17df4f`](./contracts/ethereum-1/0x1d611dda4356b5d4cd02b3f93883bf7f0f17df4f/) | CrossChainSyncKeeperHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x352e9a...ab6da8`](./contracts/bsc-56/0x352e9a93498c4aa72734a32433bca094f5ab6da8/) | CrossChainWrappedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46b0d0...88da73`](./contracts/ethereum-1/0x46b0d06ef0a2a96165b4c8c962ea5b609a88da73/) | EthPrimaryMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50fe51...2ea08e`](./contracts/ethereum-1/0x50fe5165be08095a1f4cd96877cc54b3cc2ea08e/) | EthStakingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04ff93...f647d7`](./contracts/bsc-56/0x04ff932ca53ed6e1f5b4b6e98693bd95b0f647d7/) | ExchangeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x009340...e058e1`](./contracts/scroll-534352/0x00934045078c5159c706ed43b7fa9578b7e058e1/) | FeeConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0d5108...fda0e0`](./contracts/bsc-56/0x0d5108377c86f4dcfe473177e0ca555095fda0e0/) | FlashSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c1893...70983c`](./contracts/ethereum-1/0x0c18932d6dd86fbea662de6389fae86f5570983c/) | FlashSwapRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x512d9c...4378c4`](./contracts/scroll-534352/0x512d9cd7df5d4617fea9386ae2d6c28d674378c4/) | FlashSwapRouterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04ab3f...c3ddd9`](./contracts/bsc-56/0x04ab3fbd6b47683b7d3926e38d80c8198cc3ddd9/) | FlashSwapRouterV3Helper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x57c4da...3d36ba`](./contracts/bsc-56/0x57c4daf59286cf3bb419b10b4f029c443a3d36ba/) | FundKeeperHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x629d45...a0896b`](./contracts/bsc-56/0x629d4562033e432b390d0808b54a82b0c4a0896b/) | FundV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe5cf95...828a0e`](./contracts/bsc-56/0xe5cf958ff94eadb5247fd4d5c649d85dcf828a0e/) | InterestRateBallotV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f6677...853352`](./contracts/ethereum-1/0x6f6677cf52297005ae6eb93fad5e24a482853352/) | InterestRateBallotV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00d150...bd4d7a`](./contracts/bsc-56/0x00d150c057f5d66107dfdb9d6d97f8b53ebd4d7a/) | LiquidityGauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x287195...664a9f`](./contracts/ethereum-1/0x2871956fb1cde2b28f8d77bbecb4d806a4664a9f/) | LiquidityGaugeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0ffea7...dc567f`](./contracts/bsc-56/0x0ffea70d4de8c9cce7312a96c30e8f50c1dc567f/) | LiquidityGaugeV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01907f...dc2763`](./contracts/bsc-56/0x01907f044bcae357f973d051b0f3b09093dc2763/) | MaturityFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x07a2d8...bf5559`](./contracts/bsc-56/0x07a2d8c053015b57c2dfc2b7450d521de1bf5559/) | MaturityPrimaryMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x262587...9dc51e`](./contracts/ethereum-1/0x2625871323360a04d1d4302a993a2b2d049dc51e/) | NodeOperatorRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d7473...1a5504`](./contracts/ethereum-1/0x7d7473505978442f181eeb9ba147f418281a5504/) | NonfungibleRedemptionDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x141fae...db74bd`](./contracts/bsc-56/0x141faeefbd9ec0b88326050959fe88a14ddb74bd/) | OracleKeeperHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10e02a...01cc40`](./contracts/ethereum-1/0x10e02a656b5f9de2c44c687787c36a2c4801cc40/) | PrimaryMarketRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01a45d...7eb9ee`](./contracts/bsc-56/0x01a45d60af80c42aa3199899f37a9867a87eb9ee/) | PrimaryMarketRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8be5a...477e22`](./contracts/ethereum-1/0xa8be5ab62794a647254e1e62844201efc8477e22/) | PrimaryMarketV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x023748...7d2ea9`](./contracts/bsc-56/0x023748ca9e8658a4b6815ba8fd396b0ffa7d2ea9/) | ProtocolDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6aed7...8756a2`](./contracts/ethereum-1/0xa6aed7922366611953546014a3f9e93f058756a2/) | QueenRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfcf44d...ba5773`](./contracts/bsc-56/0xfcf44d5eb5c4a03d03cf5b567c7cde9b66ba5773/) | QueenStableSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x264382...341418`](./contracts/ethereum-1/0x264382b200bc1fe51a9b58f704394de172341418/) | RewardCashier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f08c4...f8fac1`](./contracts/ethereum-1/0x7f08c4f98265712c162975cb8da1cf3f5bf8fac1/) | RewardClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ef209...83f8a9`](./contracts/ethereum-1/0x1ef20947d0de8f8db3acec9f349b72d75383f8a9/) | SafeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66f9d1...7d4b70`](./contracts/bsc-56/0x66f9d16db828d340858b1fd4859c4030247d4b70/) | ShareStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01236e...aa7ed6`](./contracts/bsc-56/0x01236efc7c2e52fc940fcca055212a8403aa7ed6/) | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0df248...322231`](./contracts/ethereum-1/0x0df2489117b0e5b72b83c9d263bf609b30322231/) | SwapBonus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6983d3...00a1ca`](./contracts/bsc-56/0x6983d348b10bf5c581ed682f041edaa3b800a1ca/) | SwapBonusWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3599dd...5cadc2`](./contracts/bsc-56/0x3599ddc1efce801f8657f64127acb07c0b5cadc2/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8347b6...313aa8`](./contracts/bsc-56/0x8347b6f298340954565bc6c8a47d55bb21313aa8/) | UpgradeTool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x682ec9...931ebc`](./contracts/bsc-56/0x682ec9172f37b7b21bba6ee094f0c763a5931ebc/) | VotingEscrowCallback | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x718620...5b57f8`](./contracts/bsc-56/0x718620141c129fce223287a2f6dda1d4aa5b57f8/) | VotingEscrowHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x229cf0...7036e9`](./contracts/ethereum-1/0x229cf058e5103b657cd035b79e2f1a9d107036e9/) | VotingEscrowV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16d0ff...29dd88`](./contracts/ethereum-1/0x16d0ff163e6430b99c3e23b8eecbf840a029dd88/) | WithdrawalManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad06a2...57bdb5`](./contracts/ethereum-1/0xad06a2dbd34da8f8cf5f85d284a5b93a2057bdb5/) | WstETHBishopStableSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc32f23...b0149f`](./contracts/ethereum-1/0xc32f23ee32cb5681eca5e84c2ae728c3f0b0149f/) | WstETHPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1e228...ee84ec`](./contracts/ethereum-1/0xc1e228ff4cf95a2b5c019b7e71d484a09eee84ec/) | WstETHWrappingSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 121 |
| upstream | 3 |
| standard_library | 8 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=8
- Match method counts: extraction_exact=147

Zero-match audit list:

- [2426] DL audit link

Fork inheritance lineage and inherited audits are included when available.
