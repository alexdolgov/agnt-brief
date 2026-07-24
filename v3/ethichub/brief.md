# Agentic Audit Brief: EthicHub

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: EthicHub (`ethichub`)
- Website: [https://ethichub.com](https://ethichub.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: celo, ethereum, gnosis
- Contract surface: 105 unique implementations (222 raw deployments)
- Coverage basis: 3/6 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,533,879.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for EthicHub. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 28 contract row(s) across celo, ethereum, gnosis. Structural roles: 16 unclassified, 11 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 28
- Structural roles: unclassified (16), core (11), supporting (1)
- Contract kinds: contract (28)
- Detected standards: ownable (3), accesscontrol (2), erc1967proxy (1), erc20 (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x751c0834599c49e2e857ca9f1cdf929e6fa45119`, chain 42220)
- UnnamedContract (`0xad2f9f4cd2ae4f2dd2841eb1ea7e162fb4767d4d`, chain 42220)
- AdminUpgradeabilityProxy (`0xfd09911130e6930bf87f2b0554c44f400bd80d3e`, chain 1)
- BridgeToken (`0x9995cc8f20db5896943afc8ee0ba463259c931ed`, chain 42220)
- ERC20Reserve (`0xb27132625173f813085e438ee19c011867063073`, chain 1)
- IncentiveVestingReserve (`0xcb16e29d0b667bad7266e5d0cd59b711b6273c6b`, chain 1)
- StakingRewards (`0xbfa2748a60976cd18b835c75c6a20328e9a72684`, chain 42220)
- UniswapV2Pair (`0x62cfa295864cff683cde9b47d4bacc77b885ddb7`, chain 42220)

## Contract Surface Quality

- Logic-topography rows: 28; live-surface rows included: 28 (9 live, 19 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/26 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/6 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 81 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 51
- Confirmed-live implementations: 10 of 105 unique; 95 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/89
- Verified + Unaudited implementations: 86
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 105
- Raw deployments: 222
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 3.4% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC20NFTBond | unknown | project_anchor | own_supporting | 1 | celo | unit-239583 | `0x0f497a790429685a3cfd43b841865ee185378ff0` | ✅ Audited |
| StakedETHIX | unknown | project_anchor | own_supporting | 1 | celo | unit-239585 | 2 deployments: celo `0xc564e19eca51df927f43f04a3beaaa414fcad638`; celo `0xcb16e29d0b667bad7266e5d0cd59b711b6273c6b` | ✅ Audited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | celo | unit-239575 | `0xbfa2748a60976cd18b835c75c6a20328e9a72684` | ✅ Audited |

### ⚠️ Verified + Unaudited (86)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd63956610babe22576103e28c96ec61f0e84d361`; ethereum `0xeb69c10e59c1a8638ca0bcf8c7e6e2fa2e9179ad` | ⚠️ Unaudited |
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x25e7b7149e1067d0664f7646f33b17bc79148d22`; celo `0x7670ea8a307fce474c90a1b699fea4d116212ec8` | ⚠️ Unaudited |
| AMBFlashbotHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb4c5ab9b36437f969888be99af42fc9087005a5` | ⚠️ Unaudited |
| BPool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239566 | `0xb93aa4cdeef1293303f628e16dd06ddd42db19f1` | ⚠️ Unaudited |
| BridgeValidators | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4f386c4dae45a94619aee4852d92780fbd34ed56`; ethereum `0x72748535e7fdbf564d0ac4cd18c3ebd96f81e8e6` | ⚠️ Unaudited |
| BridgeValidators | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6943a218d58135793f1fe619414ed476c37ad65a` | ⚠️ Unaudited |
| BridgeValidators | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7169e52d3d221a22b78e5a5edb87651651391f89`; ethereum `0xf0b456250dc9990662a6f25808cc74a6d1131ea9` | ⚠️ Unaudited |
| BridgeValidators | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd83893f31aa1b6b9d97c9c70d3492fe38d24d218`; ethereum `0xed84a648b3c51432ad0fd1c2cd2c45677e9d4064` | ⚠️ Unaudited |
| BridgeValidators | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe3316d623bcdcbd878df25903a791aef1c26b543`; ethereum `0xeb6e0994d1184bac66615ad4035b022b3676c36d` | ⚠️ Unaudited |
| ChinosUlti | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x6f58a18b4fcb513fca971f11f42252d68dc0775e`; celo `0xb04bda735f38d65b7498e6ef8b729e7f0943e9fa`; celo `0xbf83fc8f572c19aa9601a5ca26e6be036d3ad51e` | ⚠️ Unaudited |
| CompensationSystemManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x25e7b7149e1067d0664f7646f33b17bc79148d22`; ethereum `0xb26f8fbfcd1e0e7acb07f965a29281885bbeb99f` | ⚠️ Unaudited |
| CreditLine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 6 deployments: celo `0x059c8a9bd3ea305fb8c9215c1ee47dfdf835b488`; celo `0x1f6e6088892118a8d646583ac18635e4485e03b9`; celo `0x2230512e84ff61b83c0a943757bdcff45e8d4be9`; celo `0x36523a22c8f4b09e2871f7083024f4e2cad5dd5e`; celo `0x95deb34b1a752eea10207f388d155eff6b8e8285`; celo `0xf417e8ab3cd149426c5613cd0fd3715f007bd076` | ⚠️ Unaudited |
| CreditLine | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | celo | n/a | 3 deployments: celo `0x08e06685da497fddb15a5fd2fab85daa712ea21b`; celo `0x1d4e909c63fa8941c8e0a057322a70a1ec92fc7d`; celo `0xdb5d3abf19014308a67420344021ceee6003acdd` | ⚠️ Unaudited |
| CrowdEquityVestingReserve | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2bf3d179201be13fff7d10b95e7cfb44357ef4ef` | ⚠️ Unaudited |
| ERC1155BridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf714c3aa632ece07eeba241803b26f806ea17908` | ⚠️ Unaudited |
| ERC20NFTBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 27 deployments: ethereum `0x0110425d2f26595d21969085fe4f784064e0f9d6`; ethereum `0x194cb16f78502e7b73ea9124fccaeeb5a88d7338`; ethereum `0x262569d715d5a99e64c568bc817d6a8e3caa9030`; ethereum `0x36d45e5b7077f87d16020f827b414249f6a7313c`; ethereum `0x573325183ce715798352bde15b642349dd7122e2`; ethereum `0x696d743b42563eaa4fe3ae159775aeb3065679de`; ethereum `0x733e9c7465a492078cc976edd420133db397e49d`; ethereum `0x8eb87aadb4ae1cff62197a658c1ac9df6269cfa6`; ethereum `0xa258eed87f7662a13d6440271c4988259051a589`; ethereum `0xa97f2ff6892ae9fb27b727ffabe14feb7580eed9`; ethereum `0xd41e96cb0d1ebfa1ae7e897fc0966fb5579d357e`; ethereum `0xd5277ddd680f2d8de53af6ca0de99ecbec61d8a5`; ethereum `0xe84686d5fd555c36783762cb2c40ee882acf22b1`; ethereum `0xf3839cd0db5dcce378fd25f4443d569eadbd46b6`; celo `0x05a71c76766302936a615e3f48ae5449f2a096d3`; celo `0x062ebacc1b774a5ca38ae302dd138d2571b35bdd`; celo `0x1a3417446e153fa8ce7338a23e10fd1a087967c4`; celo `0x350d1a9007f53ebe264ecf6627655595998be0ad`; celo `0x3ca21ff76087bc07c7083b30d66db05753944ae4`; celo `0x4426f8d8db79a448a0c9545bf2262523e2130e3e`; celo `0x4858512aa44da566b23caa954db2e6ecc57725f0`; celo `0x7cf02b2e0201443bb93d9a6b60b35694642f2bca`; celo `0x89cea15f68950df830dfe3630d635a9ed79478f5`; celo `0xa16281424247629afaaeb05c8418845f1e4b8fd0`; celo `0xb3369f9443d2978758dac7c5faffbb8797b26de9`; celo `0xbc449db65f46790949dc4416aa35567c69d9da27`; celo `0xc918ed6d45ae9bdbe1cec42a8a32f2e036a35c93` | ⚠️ Unaudited |
| ERC20NFTBond | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x21320683556bb718c8909080489f598120c554d9`; ethereum `0x92be919fbf4f966e349595c1e1f87421f67730d2` | ⚠️ Unaudited |
| ERC20NFTBond | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x99a6cdfdcbec9a05b539e680df78d8d10fdc0705`; celo `0xe0eb2d27ff30d21b8cd6441306a74c807f111cbc` | ⚠️ Unaudited |
| ERC20NFTBond | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-239576 | `0xd27e312f4852b00dac9fe5dc582c0221849b7620` | ⚠️ Unaudited |
| ERC20NFTBond | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xd8c31585639f044b32107e877518f30efeb62c9b` | ⚠️ Unaudited |
| ERC20Reserve | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239561 | `0x1ecc7e3b26dcaee4d63536fe50ea37787a04a5c5` | ⚠️ Unaudited |
| ERC20Reserve | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239565 | `0xb27132625173f813085e438ee19c011867063073` | ⚠️ Unaudited |
| ERC20Reserve | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239567 | `0xb97ef216006d72128576d662cffed2b4406e3518` | ⚠️ Unaudited |
| ERC20Reserve | token | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0xa14b1d7e28c4f9518eb7757ddee35a18423e1567`; celo `0xa9a824bd0470d0d00938105986ebfbfa71b28530` | ⚠️ Unaudited |
| ERC721BridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7259b1612b464c65205b7dcdc5ba9fd7aec24dfb`; ethereum `0x8b9e7c13f98291fe90b38e020bcb046f4a4dd21d` | ⚠️ Unaudited |
| EternalStorageProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01db9f9a32d4d11d82882bf705e01c39e0ddb5cf` | ⚠️ Unaudited |
| EthixToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc0c39780a6f3165f61fb27f3d47668033c898b5` | ⚠️ Unaudited |
| EthixToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-239578 | `0xfd09911130e6930bf87f2b0554c44f400bd80d3e` | ⚠️ Unaudited |
| ForeignAMB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x07955be2967b655cf52751fce7ccc8c61ea594e2`; ethereum `0x5f1e78f12025d8d05920134f4a64ddbddaa924be` | ⚠️ Unaudited |
| ForeignAMB | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x2140ecdc45c89ca112523637824513bae72c8671`; ethereum `0x54c6dfbb807be694841a0f1b84cbc49d8fc98ed7`; ethereum `0x5a91b345244d3a285b30287b4c63c154ecbd2b7e` | ⚠️ Unaudited |
| ForeignAMB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2946f6d458f8cf8723a1d9e95043831d3937461e`; ethereum `0xceb06ecea3f588cb60e39bd4db7869013c6f65a5` | ⚠️ Unaudited |
| ForeignAMB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4c36d2919e407f0cc2ee3c993ccf8ac26d9ce64e` | ⚠️ Unaudited |
| ForeignAMB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x82b67a43b69914e611710c62e629dabb2f7ac6ab`; ethereum `0x872796bf7fe754754d2bee2c66d7de9b04a5c943`; ethereum `0xa5ac7d6fdb51a1ffea31c4107b3f3e2e537aa2a1`; ethereum `0xe804fe5fb14b02aba636f37fb6e1c7a08b2f4b16` | ⚠️ Unaudited |
| ForeignAMBErc20ToNative | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2180560e79d68f8e3adbd38f3b81bb9b48d9ff9f`; ethereum `0xf6edfa16926f30b0520099028a145f4e06fd54ed` | ⚠️ Unaudited |
| ForeignAMBErc677ToErc677 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x41a4ee2855a7dc328524babb07d7f505b201133e`; ethereum `0xaa60a7d801230a26193194210e3f758dc8c49faf` | ⚠️ Unaudited |
| ForeignAMBErc677ToErc677 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6ea6c65e14661c0bcab5bc862fe5e7d3b5630c2f`; ethereum `0xd925002f88279776deb4907ba7f8dc173e2ea7a7` | ⚠️ Unaudited |
| ForeignAMBErc677ToErc677 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x71f12d03e1711cb96e11e1a5c12da7466699db8d`; ethereum `0x7c14be235e385854ffb40c33bbe1f59c98778e24` | ⚠️ Unaudited |
| ForeignAMBNativeToErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb11c0c3ce15a998fe403b36f2606c3be78ec2540`; ethereum `0xe877fb7e5347111504a1fc4ffa727c5d9adeb866` | ⚠️ Unaudited |
| ForeignBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46d811fa0a435ea9bce8cae11ebf9fbd0a60256d` | ⚠️ Unaudited |
| ForeignBridgeErcToNative | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x75df5af045d91108662d8080fd1fefad6aa0bb59`; ethereum `0x7e7669bdff02f2ee75b68b91fb81c2b38f9228c2`; ethereum `0x83c2e0e3b5328e599a3cba95d97090fa7d0fde8b`; ethereum `0xd40355b17643bc26554c9a9bbc95b5cabd92c2cd` | ⚠️ Unaudited |
| ForeignFeeManagerAMBNativeToErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f96a42cdfe3c3e90d1b58561d8731de63223bda` | ⚠️ Unaudited |
| ForeignMultiAMBErc20ToErc677 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x280f04a988513610584057bf3fde1f56f4d22ca9`; ethereum `0x2dca02c93988d3ae2451c588610c62671d38c961`; ethereum `0x4b86181abcaefc008b561e27c0aee64bb5eb8dbe`; ethereum `0x5275e7264ab0bb75d970e7442de0aadd0c0b85ae`; ethereum `0x7bff37bda2318125c6b895d4f2b50bcd9e0cc40e`; ethereum `0xb0a18f960221c6d56871c29e5dd7b838e79c2e94` | ⚠️ Unaudited |
| ForeignNFTOmnibridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1762d3e9d7ae6bc7a2a70c25a4aca69391c148f0`; ethereum `0x6c8d0afddbd29a0954feeb73904923fc8f73c480` | ⚠️ Unaudited |
| ForeignNFTOmnibridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x51af994bd8d586e81f8f48d68a47e16c4a179726`; ethereum `0x56478532d0d6451e87dcc32fe9701cc6c7daf036`; ethereum `0x89d321fc71abcd71045e7686c450d06e26cc1dc8`; ethereum `0xba7bc1adf0c9a252922760075e607f510cca85c5`; ethereum `0xd116e81265f4aa1db8e4851feef7061afd9f9e3a` | ⚠️ Unaudited |
| ForeignOmnibridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x543fb43e829cceec32b623dfed83ef3622bfb9d5`; ethereum `0x69c707d975e8d883920003cc357e556a4732cd03` | ⚠️ Unaudited |
| ForeignOmnibridge | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-239581 | 2 deployments: ethereum `0x88ad09518695c6c3712ac10a214be5109a655671`; ethereum `0x8eb3b7d8498a6716904577b2579e1c313d48e347` | ⚠️ Unaudited |
| ForeignOmnibridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94447a6f0e6be5a4df198882ffd285a763bf98c3` | ⚠️ Unaudited |
| HomeAMBErc677ToErc677 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa8cbad2ff217cb9c32ca8d3903e2a2b65578a846`; ethereum `0xe7228b4ebad37ba031a8b63473727f991e262dcd` | ⚠️ Unaudited |
| IncentiveVestingReserve | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239564 | `0x6f58a18b4fcb513fca971f11f42252d68dc0775e` | ⚠️ Unaudited |
| IncentiveVestingReserve | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239568 | `0xbf83fc8f572c19aa9601a5ca26e6be036d3ad51e` | ⚠️ Unaudited |
| IncentiveVestingReserve | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239569 | `0xcb16e29d0b667bad7266e5d0cd59b711b6273c6b` | ⚠️ Unaudited |
| IncentiveVestingReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5bab213153778b7852082eb1babdb6715559793` | ⚠️ Unaudited |
| InvestorsVestingReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x08214eb1d6c53cbf35c72fb27cd2ee3252bc86fa`; ethereum `0x34d3c9daa6fd96872c08d848612ff05f8b216705`; ethereum `0xde629ec5423f560b914de73a927067a408870cf5`; celo `0x2c67c2e8e29aa4b638f99e07e53989fead098858`; celo `0x63577522f8fbc3adc023f787d207f43fa54beac7`; celo `0xa9383c8e895aa6d9b49404cbbc7b73b1c1de8f20` | ⚠️ Unaudited |
| MembershipBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 5 deployments: celo `0x302e471ae434c50c1fe931a4a0fe0d84074463bb`; celo `0x4bf4a824c81b48e58488ce3d3236249115452260`; celo `0x6e02627254e888122dbc2f3cc0c87bf0fb53d029`; celo `0xceeb155946b64a89119c738b02c95ff41ca78059`; celo `0xda70b3433c7c61c37adba1993369218d0b228614` | ⚠️ Unaudited |
| MembershipBond | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x8903412ac24281421f1d94fe27de56c0433f3d1f`; celo `0x9dd5723fb591549625cddea8f267f1f5c370bbd3` | ⚠️ Unaudited |
| MerkleTreeVestingReserve | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239562 | `0x2f36b4843129647d840911eaea49db16649b0afd` | ⚠️ Unaudited |
| MultiTokenReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x49bc61a91f5a3a2d74d04583a23758f15e1fe9de`; celo `0x70c85e77ae595fa22adc2a892e4175984c92651f`; celo `0x7d7c28155dc586bcac2521a454c9cebb9d6cbb8d`; celo `0x8510294a4d1e27cce09259c448233207a83c5b62` | ⚠️ Unaudited |
| OriginatorStaking | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239560 | `0x1e70f45e5e773b7db7358991c9d5fb06ca082c8b` | ⚠️ Unaudited |
| OriginatorStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x2f19bd0a8b9e10fd921ff18eb8689c491e2de481`; ethereum `0xa7e49990baec5900e589c8571bf6a60c8bfa44b8`; ethereum `0xe0324499ede832bd11fa37efefa46077d7d9784e` | ⚠️ Unaudited |
| OriginatorStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x338833be596a94e8245e94e2e5d95f213ecbc7ac`; ethereum `0x3ef3eefa7236d1a33febb5450adc466c3c852440`; ethereum `0xa1cf210fdc4001ab706f2df8efef26975d444444`; ethereum `0xacb56e5485f1f9ed4131f5e837980457f8135c70`; celo `0x9b755bd649afe485623ca12549c9e5334262098b` | ⚠️ Unaudited |
| OriginatorStaking | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 2 | ethereum | unit-239577 (2 proxies) | 2 deployments: ethereum `0x3b61cd481be3ba62a9a544c49d6c09fcb804d0e3`; ethereum `0x7435c0232a69270d19f8e4010571175c3f1dd955` | ⚠️ Unaudited |
| OriginatorStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | celo | n/a | 9 deployments: celo `0x0306f70d3e69e30f49d28cb0ed33fd9d439043a8`; celo `0x18843ec5c23a290e1c866fad9acafb6160ab9693`; celo `0x2ffa2c9678c75a7e1324c3fb67ac28676306389a`; celo `0x5195997a5ce4ff6436af64b229a77d8a06acf899`; celo `0x6ed2471b09a0a3b35c7e5c977e8a4e00ea5000f7`; celo `0x7d413d46adae770dff0e478f566b5539853d2fa1`; celo `0x8181d3b933228c3e70496d11f057610e78582c7c`; celo `0xcc0d68b5e9c0e92e8d7426fb585052442ea9eef7`; celo `0xe33c7d39f6721ef0fc8ffc59c8e2f313e774073a` | ⚠️ Unaudited |
| OriginatorStakingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x12f46a371e70bd19900790ac4895371386548b2b`; celo `0x57094e2ffecc0b561400171986dea361e52e5947` | ⚠️ Unaudited |
| OriginatorStakingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xaf9ad360163e614ab98ab258a35514f41d172314`; ethereum `0xf182484c32d8f3e035c2878d7aa842d08e659d17` | ⚠️ Unaudited |
| OriginatorStakingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0xe0324499ede832bd11fa37efefa46077d7d9784e`; celo `0xe1d7760366b5b15f52d8e78ad7b95527925b153f` | ⚠️ Unaudited |
| OriginatorStakingWithLP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x51246ae0ba74696a66f0dc9e5f214d1c48ef1f55`; celo `0xdd2ca064ce2b5e45b70c60d319d9131936fbf8fa` | ⚠️ Unaudited |
| OriginatorStakingWithLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x59921ff5cd63d3fd712f48ad3d2c2574bf713525` | ⚠️ Unaudited |
| OriginatorStakingWithLPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x3a3079f84c474487be83a615b248ba9353d6dca3`; celo `0xa9f74072a4ef35e56ae3cb1a81906949cc494883` | ⚠️ Unaudited |
| OriginatorStakingWithLPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5ccf42faf6235c666e8e22694a5e4eee4130e7d7` | ⚠️ Unaudited |
| PermittableToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7c24d0061b484b267f286aa2dce891220db254b3`; ethereum `0xe1ca72ff3434b131765c62cbcbc26060f7aba03d`; ethereum `0xf886bfeacc24202967d053075fa9658cf1245e00` | ⚠️ Unaudited |
| PermittableToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-239582 | `0xec3f3e6d7907acda3a7431abd230196cda3fbb19` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0e0f447be0058ba019a59dbffc24563d8fe66029`; ethereum `0x5787b96a595fe7d4f730089607c025efa83627b6`; celo `0x75a6a00c6bbaba9e9c61f69a7f037a3fed5aab60` | ⚠️ Unaudited |
| StakedBETHIX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x713782bed530adcf28604b04980ee8d5fd5bc004`; ethereum `0xcfd8eee23a6ef73fe4f2c08b30e128f05f54fd8e` | ⚠️ Unaudited |
| StakedETHIX | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-239580 | 2 deployments: ethereum `0x5b2bbbe7dfd83aa1f1cd0c498690e6ecc939cc2d`; ethereum `0x7d8767df201055876321f3e1b3dcb42b0cca93c2` | ⚠️ Unaudited |
| StakedETHIX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: ethereum `0x55231ac3a67f04551c39ea8f6d3322342d4c4090`; celo `0x1905ec0769775179a9b2e042ce0fd59e27fd407c` | ⚠️ Unaudited |
| StakedUETHIX | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-239579 | 2 deployments: ethereum `0x3f4b71f7b81d9829008504b8bfa09d215c4dd673`; ethereum `0x89cea15f68950df830dfe3630d635a9ed79478f5` | ⚠️ Unaudited |
| TeamVestingReserve | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239563 | `0x48c5bf17fafbf7a41436d46503599f96c173517b` | ⚠️ Unaudited |
| TeamVestingReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82e336301248834611b6885cc602c9e91d6211ae` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3efa9b4b936d8dcb4887ba147c8192f8f872502e`; ethereum `0x71d5ba4e37de72415f685490b684538aae8f0424` | ⚠️ Unaudited |
| TokenImplementation | token | project_anchor | own_supporting | 1 | celo | unit-239584 | `0x9995cc8f20db5896943afc8ee0ba463259c931ed` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb14b9464b52f502b0edf51ba3a529bc63706b458` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-239571 | `0xe5bc36119ffe40541eb61949e13607bce23577eb` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | celo | unit-239572 | `0x62cfa295864cff683cde9b47d4bacc77b885ddb7` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3420720e561f3082f1e514a4545f0f2e0c955a5d` | ⚠️ Unaudited |
| WETHOmnibridgeRouter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6439ca0fcba1d0f80df0be6a17220fed9c9038a` | ⚠️ Unaudited |
| XDaiForeignBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeee4f8db4410bebd74a76cb711d096c5e66d0473` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-239570 | `0x2b8d7a0ed5e642f6441862d353c60c8f8ff2acd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0e1c2da9184274d7a9efed715cd71a51d323f821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1d408e4e7895c216bf8974035d49d366c22dc4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x21cc49ce7adfbccf09b0097631cbd004140ea81c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2dfbe4c7313dec4ecb8c853d924dfcc79be1cc9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-239573 | `0x751c0834599c49e2e857ca9f1cdf929e6fa45119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x78ccd81805167e0ed01915432dfcd45ecb5e2fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7e7457225934bb6d35a252969e2764ae17b3b2e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x84b1d65a3b79b48da6b8a11081dd2869568cec25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa317c306edb1b61638ebe941ffb8be04f4119945` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-239574 | `0xad2f9f4cd2ae4f2dd2841eb1ea7e162fb4767d4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc684b104809077c6e3f7d9fa916a4f9a3379d605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd582df88d7dc8f8aaa084ee5a15121504de24bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd9aea73730c524056ef559e2b87ec8f5667aab2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe5b70bd972c395c810e8d4f06504280f660b1052` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe7033046ffc9787c9c2a1e42c9d4cca18aeb5b5a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 192
- Live contracts: 4
- Unknown liveness contracts: 188
- Source-verified contracts: 180
- Currently scope-matched contracts retained as-is: 2
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=2, candidate review=58, contamination review=7, exact address book overlap=6, source verified unclassified=107, unverified unclassified=12

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| celo | currently scope matched | ERC1967Proxy<br>`0x0f497a790429685a3cfd43b841865ee185378ff0` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | currently scope matched | TransparentUpgradeableProxy<br>`0xcb16e29d0b667bad7266e5d0cd59b711b6273c6b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | ERC1967Proxy<br>`0x08e06685da497fddb15a5fd2fab85daa712ea21b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | ERC1967Proxy<br>`0x8903412ac24281421f1d94fe27de56c0433f3d1f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | ERC1967Proxy<br>`0xd8c31585639f044b32107e877518f30efeb62c9b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | ERC1967Proxy<br>`0xdb5d3abf19014308a67420344021ceee6003acdd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | ERC1967Proxy<br>`0xe0eb2d27ff30d21b8cd6441306a74c807f111cbc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | OriginatorStaking<br>`0x5195997a5ce4ff6436af64b229a77d8a06acf899` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | OriginatorStaking<br>`0x9b755bd649afe485623ca12549c9e5334262098b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | OriginatorStakingFactory<br>`0x57094e2ffecc0b561400171986dea361e52e5947` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | OriginatorStakingFactory<br>`0xe0324499ede832bd11fa37efefa46077d7d9784e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | OriginatorStakingWithLP<br>`0x59921ff5cd63d3fd712f48ad3d2c2574bf713525` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | OriginatorStakingWithLP<br>`0xdd2ca064ce2b5e45b70c60d319d9131936fbf8fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | OriginatorStakingWithLPFactory<br>`0x5ccf42faf6235c666e8e22694a5e4eee4130e7d7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | OriginatorStakingWithLPFactory<br>`0xa9f74072a4ef35e56ae3cb1a81906949cc494883` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | ProxyAdmin<br>`0x75a6a00c6bbaba9e9c61f69a7f037a3fed5aab60` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | StakedETHIX<br>`0x1905ec0769775179a9b2e042ce0fd59e27fd407c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | StakedETHIX<br>`0xc564e19eca51df927f43f04a3beaaa414fcad638` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | TransparentUpgradeableProxy<br>`0x0306f70d3e69e30f49d28cb0ed33fd9d439043a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | TransparentUpgradeableProxy<br>`0x18843ec5c23a290e1c866fad9acafb6160ab9693` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | TransparentUpgradeableProxy<br>`0x25e7b7149e1067d0664f7646f33b17bc79148d22` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | TransparentUpgradeableProxy<br>`0x2ffa2c9678c75a7e1324c3fb67ac28676306389a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | TransparentUpgradeableProxy<br>`0x3a3079f84c474487be83a615b248ba9353d6dca3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | TransparentUpgradeableProxy<br>`0x51246ae0ba74696a66f0dc9e5f214d1c48ef1f55` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | TransparentUpgradeableProxy<br>`0x6ed2471b09a0a3b35c7e5c977e8a4e00ea5000f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | TransparentUpgradeableProxy<br>`0x7d413d46adae770dff0e478f566b5539853d2fa1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | TransparentUpgradeableProxy<br>`0x8181d3b933228c3e70496d11f057610e78582c7c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | TransparentUpgradeableProxy<br>`0xcc0d68b5e9c0e92e8d7426fb585052442ea9eef7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | TransparentUpgradeableProxy<br>`0xe1d7760366b5b15f52d8e78ad7b95527925b153f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | candidate review | TransparentUpgradeableProxy<br>`0xe33c7d39f6721ef0fc8ffc59c8e2f313e774073a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | contamination review | ChinosUlti<br>`0x6f58a18b4fcb513fca971f11f42252d68dc0775e` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | AccessManager<br>`0x7670ea8a307fce474c90a1b699fea4d116212ec8` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | ChinosUlti<br>`0xb04bda735f38d65b7498e6ef8b729e7f0943e9fa` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | ChinosUlti<br>`0xbf83fc8f572c19aa9601a5ca26e6be036d3ad51e` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | CreditLine<br>`0x059c8a9bd3ea305fb8c9215c1ee47dfdf835b488` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | CreditLine<br>`0x1d4e909c63fa8941c8e0a057322a70a1ec92fc7d` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | CreditLine<br>`0x1f6e6088892118a8d646583ac18635e4485e03b9` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | CreditLine<br>`0x2230512e84ff61b83c0a943757bdcff45e8d4be9` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | CreditLine<br>`0x36523a22c8f4b09e2871f7083024f4e2cad5dd5e` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | CreditLine<br>`0x95deb34b1a752eea10207f388d155eff6b8e8285` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | CreditLine<br>`0xf417e8ab3cd149426c5613cd0fd3715f007bd076` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | ERC20NFTBond<br>`0x05a71c76766302936a615e3f48ae5449f2a096d3` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | ERC20NFTBond<br>`0x062ebacc1b774a5ca38ae302dd138d2571b35bdd` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | ERC20NFTBond<br>`0x1a3417446e153fa8ce7338a23e10fd1a087967c4` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | ERC20NFTBond<br>`0x350d1a9007f53ebe264ecf6627655595998be0ad` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | ERC20NFTBond<br>`0x3ca21ff76087bc07c7083b30d66db05753944ae4` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | ERC20NFTBond<br>`0x4426f8d8db79a448a0c9545bf2262523e2130e3e` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | ERC20NFTBond<br>`0x7cf02b2e0201443bb93d9a6b60b35694642f2bca` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | ERC20NFTBond<br>`0x99a6cdfdcbec9a05b539e680df78d8d10fdc0705` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | ERC20NFTBond<br>`0xa16281424247629afaaeb05c8418845f1e4b8fd0` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | ERC20NFTBond<br>`0xb3369f9443d2978758dac7c5faffbb8797b26de9` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | ERC20NFTBond<br>`0xbc449db65f46790949dc4416aa35567c69d9da27` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | ERC20NFTBond<br>`0xc918ed6d45ae9bdbe1cec42a8a32f2e036a35c93` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | ERC20NFTBond<br>`0xd27e312f4852b00dac9fe5dc582c0221849b7620` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | InvestorsVestingReserve<br>`0x2c67c2e8e29aa4b638f99e07e53989fead098858` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | InvestorsVestingReserve<br>`0xa9383c8e895aa6d9b49404cbbc7b73b1c1de8f20` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | MembershipBond<br>`0x302e471ae434c50c1fe931a4a0fe0d84074463bb` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | MembershipBond<br>`0x4bf4a824c81b48e58488ce3d3236249115452260` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | MembershipBond<br>`0x6e02627254e888122dbc2f3cc0c87bf0fb53d029` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | MembershipBond<br>`0x9dd5723fb591549625cddea8f267f1f5c370bbd3` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | MembershipBond<br>`0xceeb155946b64a89119c738b02c95ff41ca78059` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | MembershipBond<br>`0xda70b3433c7c61c37adba1993369218d0b228614` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | source verified unclassified | MultiTokenReserve<br>`0x49bc61a91f5a3a2d74d04583a23758f15e1fe9de` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | unverified unclassified | UnnamedContract<br>`0x0e1c2da9184274d7a9efed715cd71a51d323f821` | non_address_book | unknown | unknown | unverified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | unverified unclassified | UnnamedContract<br>`0x1d408e4e7895c216bf8974035d49d366c22dc4d3` | non_address_book | unknown | unknown | unverified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | unverified unclassified | UnnamedContract<br>`0x21cc49ce7adfbccf09b0097631cbd004140ea81c` | non_address_book | unknown | unknown | unverified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | unverified unclassified | UnnamedContract<br>`0x78ccd81805167e0ed01915432dfcd45ecb5e2fae` | non_address_book | unknown | unknown | unverified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | unverified unclassified | UnnamedContract<br>`0x7e7457225934bb6d35a252969e2764ae17b3b2e7` | non_address_book | unknown | unknown | unverified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | unverified unclassified | UnnamedContract<br>`0x84b1d65a3b79b48da6b8a11081dd2869568cec25` | non_address_book | unknown | unknown | unverified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | unverified unclassified | UnnamedContract<br>`0xa317c306edb1b61638ebe941ffb8be04f4119945` | non_address_book | unknown | unknown | unverified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | unverified unclassified | UnnamedContract<br>`0xc684b104809077c6e3f7d9fa916a4f9a3379d605` | non_address_book | unknown | unknown | unverified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | unverified unclassified | UnnamedContract<br>`0xd582df88d7dc8f8aaa084ee5a15121504de24bf2` | non_address_book | unknown | unknown | unverified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | unverified unclassified | UnnamedContract<br>`0xd9aea73730c524056ef559e2b87ec8f5667aab2c` | non_address_book | unknown | unknown | unverified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | unverified unclassified | UnnamedContract<br>`0xe5b70bd972c395c810e8d4f06504280f660b1052` | non_address_book | unknown | unknown | unverified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| celo | unverified unclassified | UnnamedContract<br>`0xe7033046ffc9787c9c2a1e42c9d4cca18aeb5b5a` | non_address_book | unknown | unknown | unverified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | AdminUpgradeabilityProxy<br>`0x25e7b7149e1067d0664f7646f33b17bc79148d22` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | AdminUpgradeabilityProxy<br>`0x5b2bbbe7dfd83aa1f1cd0c498690e6ecc939cc2d` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | AdminUpgradeabilityProxy<br>`0x713782bed530adcf28604b04980ee8d5fd5bc004` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | AdminUpgradeabilityProxy<br>`0x89cea15f68950df830dfe3630d635a9ed79478f5` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | ERC1967Proxy<br>`0x21320683556bb718c8909080489f598120c554d9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | OriginatorStaking<br>`0x1e70f45e5e773b7db7358991c9d5fb06ca082c8b` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | OriginatorStaking<br>`0x338833be596a94e8245e94e2e5d95f213ecbc7ac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | OriginatorStaking<br>`0x3ef3eefa7236d1a33febb5450adc466c3c852440` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | OriginatorStaking<br>`0xa1cf210fdc4001ab706f2df8efef26975d444444` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | OriginatorStaking<br>`0xacb56e5485f1f9ed4131f5e837980457f8135c70` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | OriginatorStakingFactory<br>`0x12f46a371e70bd19900790ac4895371386548b2b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | OriginatorStakingFactory<br>`0xaf9ad360163e614ab98ab258a35514f41d172314` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | ProxyAdmin<br>`0x0e0f447be0058ba019a59dbffc24563d8fe66029` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | ProxyAdmin<br>`0x5787b96a595fe7d4f730089607c025efa83627b6` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | StakedBETHIX<br>`0xcfd8eee23a6ef73fe4f2c08b30e128f05f54fd8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | StakedETHIX<br>`0x55231ac3a67f04551c39ea8f6d3322342d4c4090` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | StakedETHIX<br>`0x7d8767df201055876321f3e1b3dcb42b0cca93c2` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | StakedUETHIX<br>`0x3f4b71f7b81d9829008504b8bfa09d215c4dd673` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x2f19bd0a8b9e10fd921ff18eb8689c491e2de481` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x3b61cd481be3ba62a9a544c49d6c09fcb804d0e3` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x7435c0232a69270d19f8e4010571175c3f1dd955` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xa7e49990baec5900e589c8571bf6a60c8bfa44b8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xe0324499ede832bd11fa37efefa46077d7d9784e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xeb69c10e59c1a8638ca0bcf8c7e6e2fa2e9179ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xf182484c32d8f3e035c2878d7aa842d08e659d17` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | exact address book overlap | ERC20Reserve<br>`0xb97ef216006d72128576d662cffed2b4406e3518` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | exact address book overlap | IncentiveVestingReserve<br>`0x6f58a18b4fcb513fca971f11f42252d68dc0775e` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | exact address book overlap | IncentiveVestingReserve<br>`0xbf83fc8f572c19aa9601a5ca26e6be036d3ad51e` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | exact address book overlap | IncentiveVestingReserve<br>`0xcb16e29d0b667bad7266e5d0cd59b711b6273c6b` | project_anchor | unknown | live | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | exact address book overlap | TeamVestingReserve<br>`0x48c5bf17fafbf7a41436d46503599f96c173517b` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | AccessManager<br>`0xd63956610babe22576103e28c96ec61f0e84d361` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | CompensationSystemManager<br>`0xb26f8fbfcd1e0e7acb07f965a29281885bbeb99f` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | ERC20NFTBond<br>`0x0110425d2f26595d21969085fe4f784064e0f9d6` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | ERC20NFTBond<br>`0x194cb16f78502e7b73ea9124fccaeeb5a88d7338` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | ERC20NFTBond<br>`0x262569d715d5a99e64c568bc817d6a8e3caa9030` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | ERC20NFTBond<br>`0x36d45e5b7077f87d16020f827b414249f6a7313c` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | ERC20NFTBond<br>`0x573325183ce715798352bde15b642349dd7122e2` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | ERC20NFTBond<br>`0x696d743b42563eaa4fe3ae159775aeb3065679de` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | ERC20NFTBond<br>`0x733e9c7465a492078cc976edd420133db397e49d` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | ERC20NFTBond<br>`0x8eb87aadb4ae1cff62197a658c1ac9df6269cfa6` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | ERC20NFTBond<br>`0x92be919fbf4f966e349595c1e1f87421f67730d2` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | ERC20NFTBond<br>`0xa258eed87f7662a13d6440271c4988259051a589` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | ERC20NFTBond<br>`0xa97f2ff6892ae9fb27b727ffabe14feb7580eed9` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | ERC20NFTBond<br>`0xd41e96cb0d1ebfa1ae7e897fc0966fb5579d357e` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | ERC20NFTBond<br>`0xd5277ddd680f2d8de53af6ca0de99ecbec61d8a5` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | ERC20NFTBond<br>`0xe84686d5fd555c36783762cb2c40ee882acf22b1` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | ERC20NFTBond<br>`0xf3839cd0db5dcce378fd25f4443d569eadbd46b6` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | EthixToken<br>`0xdc0c39780a6f3165f61fb27f3d47668033c898b5` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | IncentiveVestingReserve<br>`0xd5bab213153778b7852082eb1babdb6715559793` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | InvestorsVestingReserve<br>`0x08214eb1d6c53cbf35c72fb27cd2ee3252bc86fa` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | InvestorsVestingReserve<br>`0x34d3c9daa6fd96872c08d848612ff05f8b216705` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | source verified unclassified | TeamVestingReserve<br>`0x82e336301248834611b6885cc602c9e91d6211ae` | non_address_book | unknown | unknown | verified | n/a | `0x9378a4932ab933fb893192dc1b163a37e807b185` |
| ethereum | candidate review | ForeignBridgeErcToNative<br>`0x7e7669bdff02f2ee75b68b91fb81c2b38f9228c2` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | candidate review | ForeignBridgeErcToNative<br>`0x83c2e0e3b5328e599a3cba95d97090fa7d0fde8b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | candidate review | ForeignBridgeErcToNative<br>`0xd40355b17643bc26554c9a9bbc95b5cabd92c2cd` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | candidate review | ForeignNFTOmnibridge<br>`0xba7bc1adf0c9a252922760075e607f510cca85c5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | candidate review | XDaiForeignBridge<br>`0xeee4f8db4410bebd74a76cb711d096c5e66d0473` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | contamination review | AMBFlashbotHelper<br>`0xeb4c5ab9b36437f969888be99af42fc9087005a5` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | contamination review | EternalStorageProxy<br>`0x01db9f9a32d4d11d82882bf705e01c39e0ddb5cf` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | contamination review | EternalStorageProxy<br>`0x07955be2967b655cf52751fce7ccc8c61ea594e2` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | contamination review | EternalStorageProxy<br>`0x41a4ee2855a7dc328524babb07d7f505b201133e` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | contamination review | ForeignFeeManagerAMBNativeToErc20<br>`0x1f96a42cdfe3c3e90d1b58561d8731de63223bda` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | contamination review | TokenFactory<br>`0x3efa9b4b936d8dcb4887ba147c8192f8f872502e` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | exact address book overlap | EternalStorageProxy<br>`0x88ad09518695c6c3712ac10a214be5109a655671` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | BridgeValidators<br>`0x4f386c4dae45a94619aee4852d92780fbd34ed56` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | BridgeValidators<br>`0x6943a218d58135793f1fe619414ed476c37ad65a` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | BridgeValidators<br>`0xd83893f31aa1b6b9d97c9c70d3492fe38d24d218` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | BridgeValidators<br>`0xeb6e0994d1184bac66615ad4035b022b3676c36d` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | BridgeValidators<br>`0xf0b456250dc9990662a6f25808cc74a6d1131ea9` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ERC1155BridgeToken<br>`0xf714c3aa632ece07eeba241803b26f806ea17908` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ERC721BridgeToken<br>`0x7259b1612b464c65205b7dcdc5ba9fd7aec24dfb` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ERC721BridgeToken<br>`0x8b9e7c13f98291fe90b38e020bcb046f4a4dd21d` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | EternalStorageProxy<br>`0x2140ecdc45c89ca112523637824513bae72c8671` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | EternalStorageProxy<br>`0x5a91b345244d3a285b30287b4c63c154ecbd2b7e` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | EternalStorageProxy<br>`0x69c707d975e8d883920003cc357e556a4732cd03` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | EternalStorageProxy<br>`0x6c8d0afddbd29a0954feeb73904923fc8f73c480` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | EternalStorageProxy<br>`0x6ea6c65e14661c0bcab5bc862fe5e7d3b5630c2f` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | EternalStorageProxy<br>`0x7169e52d3d221a22b78e5a5edb87651651391f89` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | EternalStorageProxy<br>`0x71f12d03e1711cb96e11e1a5c12da7466699db8d` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | EternalStorageProxy<br>`0x72748535e7fdbf564d0ac4cd18c3ebd96f81e8e6` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | EternalStorageProxy<br>`0xceb06ecea3f588cb60e39bd4db7869013c6f65a5` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | EternalStorageProxy<br>`0xe3316d623bcdcbd878df25903a791aef1c26b543` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | EternalStorageProxy<br>`0xe7228b4ebad37ba031a8b63473727f991e262dcd` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | EternalStorageProxy<br>`0xed84a648b3c51432ad0fd1c2cd2c45677e9d4064` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | EternalStorageProxy<br>`0xf6edfa16926f30b0520099028a145f4e06fd54ed` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignAMB<br>`0x2946f6d458f8cf8723a1d9e95043831d3937461e` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignAMB<br>`0x54c6dfbb807be694841a0f1b84cbc49d8fc98ed7` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignAMB<br>`0x5f1e78f12025d8d05920134f4a64ddbddaa924be` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignAMB<br>`0x82b67a43b69914e611710c62e629dabb2f7ac6ab` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignAMB<br>`0x872796bf7fe754754d2bee2c66d7de9b04a5c943` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignAMB<br>`0xa5ac7d6fdb51a1ffea31c4107b3f3e2e537aa2a1` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignAMB<br>`0xe804fe5fb14b02aba636f37fb6e1c7a08b2f4b16` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignAMBErc20ToNative<br>`0x2180560e79d68f8e3adbd38f3b81bb9b48d9ff9f` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignAMBErc677ToErc677<br>`0x7c14be235e385854ffb40c33bbe1f59c98778e24` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignAMBErc677ToErc677<br>`0xaa60a7d801230a26193194210e3f758dc8c49faf` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignAMBErc677ToErc677<br>`0xd925002f88279776deb4907ba7f8dc173e2ea7a7` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignAMBNativeToErc20<br>`0xb11c0c3ce15a998fe403b36f2606c3be78ec2540` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignAMBNativeToErc20<br>`0xe877fb7e5347111504a1fc4ffa727c5d9adeb866` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignBridge<br>`0x46d811fa0a435ea9bce8cae11ebf9fbd0a60256d` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignMultiAMBErc20ToErc677<br>`0x280f04a988513610584057bf3fde1f56f4d22ca9` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignMultiAMBErc20ToErc677<br>`0x2dca02c93988d3ae2451c588610c62671d38c961` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignMultiAMBErc20ToErc677<br>`0x4b86181abcaefc008b561e27c0aee64bb5eb8dbe` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignMultiAMBErc20ToErc677<br>`0x5275e7264ab0bb75d970e7442de0aadd0c0b85ae` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignMultiAMBErc20ToErc677<br>`0x7bff37bda2318125c6b895d4f2b50bcd9e0cc40e` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignMultiAMBErc20ToErc677<br>`0xb0a18f960221c6d56871c29e5dd7b838e79c2e94` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignNFTOmnibridge<br>`0x1762d3e9d7ae6bc7a2a70c25a4aca69391c148f0` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignNFTOmnibridge<br>`0x51af994bd8d586e81f8f48d68a47e16c4a179726` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignNFTOmnibridge<br>`0x56478532d0d6451e87dcc32fe9701cc6c7daf036` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignNFTOmnibridge<br>`0x89d321fc71abcd71045e7686c450d06e26cc1dc8` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignNFTOmnibridge<br>`0xd116e81265f4aa1db8e4851feef7061afd9f9e3a` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignOmnibridge<br>`0x543fb43e829cceec32b623dfed83ef3622bfb9d5` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignOmnibridge<br>`0x8eb3b7d8498a6716904577b2579e1c313d48e347` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | ForeignOmnibridge<br>`0x94447a6f0e6be5a4df198882ffd285a763bf98c3` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | HomeAMBErc677ToErc677<br>`0xa8cbad2ff217cb9c32ca8d3903e2a2b65578a846` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | PermittableToken<br>`0x7c24d0061b484b267f286aa2dce891220db254b3` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | PermittableToken<br>`0xf886bfeacc24202967d053075fa9658cf1245e00` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | source verified unclassified | TokenFactory<br>`0x71d5ba4e37de72415f685490b684538aae8f0424` | non_address_book | unknown | unknown | verified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf](https://gitlab.com/EthicHub/ethix-contracts/-/blob/master/audits/Red4Sec-EthicHub%20-%20Smart%20Contract%20Audit%20Report_v3.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 25 | high |
| [EthicHub - Smart Contract Audit Report Final.pdf](https://gitlab.com/EthicHub/minimice/-/blob/main/audits/EthicHub%20-%20Smart%20Contract%20Audit%20Report%20Final.pdf) | unknown | Audit | 2022-05 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2663] Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf — matched: Scope section lists 27 files; contract names extracted from filenames. Note: 'CompensationSystemManager' is misspelled in the report (should be 'CompensationSystemManager' but listed as 'CompenstionSystemManager' in findings; used the scope listing name).
- [2664] EthicHub - Smart Contract Audit Report Final.pdf — matched: Extracted contract names from scope section and findings. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | BaseTokenUpgradeable | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | CompensationSystemManager | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | DistributionTypes | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | ERC20Reserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | ERC2612Upgradeable | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | ERC677Upgradeable | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | EthixERC20Snapshot | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | EthixToken | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | FeesTreasury | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IBPool | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IERC677 | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IERC677Receiver | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IStakedEthix | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IStakingRewards | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | ITransferHook | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | ManagedVestingReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | MerkleTreeVestingReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | NativeFeesTreasury | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | NativeReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | PresaleVestingReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | StakedBETHIX | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | StakedETHIX | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xcb16e29d0b667bad7266e5d0cd59b711b6273c6b` — deployed 2022-07-12 17:58:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | StakedToken | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | StakingRewards | own contract | StakingRewards (selected) `0xbfa2748a60976cd18b835c75c6a20328e9a72684` — deployed 2022-07-29 21:13:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | TeamVestingReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | VestingReserve | unmatched — not counted | — | listed in scope | no |
| EthicHub - Smart Contract Audit Report Final.pdf | ERC20NFTBond | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0f497a790429685a3cfd43b841865ee185378ff0` — deployed 2022-07-05 18:14:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| EthicHub - Smart Contract Audit Report Final.pdf | NativeNFTBond | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | CollateralizedBondGranter | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | InterestParameters | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | BondGranter | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | NFTBond | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | AccessManager | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | NFT | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | InterestCalculator | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | LiquidityRequester | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xcb16e29d0b667bad7266e5d0cd59b711b6273c6b` | IncentiveVestingReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x9995cc8f20db5896943afc8ee0ba463259c931ed` | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 84 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 34 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=3

Fork inheritance lineage and inherited audits are included when available.
