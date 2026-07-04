# Agentic Audit Brief: OpenSea

## Project Overview

- Project: OpenSea (`opensea`)
- Website: [https://opensea.io/](https://opensea.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:39.095Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: base, ethereum, hyperliquid
- Contract surface: 127 unique implementations (214 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 112 project-authored contract(s) across 3 chain(s); 30 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 12 common project-authored base contract(s) (minterbase, customerc721metadata, standardtoken). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 340; live-surface contracts included: 214 (159 live, 55 unknown).
- Excluded by liveness: 126 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/72 (1.4%)
- Deployed-live implementations: 72 of 127 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/72
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 55
- Unique implementations: 127
- Raw deployments: 214
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 1.4% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 1 | 1.4% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConduitController | unknown | ethereum | n/a | [`0x000000...00ad63`](./contracts/ethereum-1/0x00000000f9490004c11cef243f5400493c00ad63/) | ✅ Audited |

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminACLV0 | governance | ethereum | n/a | 2 deployments: ethereum [`0xeac2af...02ccd5`](./contracts/ethereum-1/0xeac2afc8f4039217384b0ee90430a54ba902ccd5/); ethereum `0xfafda8...6ca994` | ⚠️ Unaudited |
| AdminACLV1 | unknown | ethereum | n/a | 20 deployments: ethereum [`0x171187...47f3c4`](./contracts/ethereum-1/0x171187d1ca1f5015aabeb96332cb599cbc47f3c4/); ethereum `0x18b18c...717c82`; ethereum `0x3947f4...4b7be5`; ethereum `0x3b7954...609e53`; ethereum `0x4c07d4...7af88c`; ethereum `0x4f6817...08b09c`; ethereum `0x630445...c277e0`; ethereum `0x7b80a6...18379c`; ethereum `0x941673...d88aee`; ethereum `0x996f40...30fcd7`; ethereum `0x9a8403...a08e59`; ethereum `0xb6e2da...196020`; ethereum `0xced535...5dc954`; ethereum `0xd0a385...1a2d66`; ethereum `0xd47c1a...d1327f`; ethereum `0xd7742c...d83d75`; ethereum `0xe618d7...29c31b`; ethereum `0xe84f94...7afb26`; ethereum `0xf47001...de7cd4`; ethereum `0xfb1325...23e464` | ⚠️ Unaudited |
| BytecodeStorageReader | unknown | ethereum | n/a | [`0xf0585d...8eecd5`](./contracts/ethereum-1/0xf0585df582a0ad119f1616fb82f3b449a98eecd5/) | ⚠️ Unaudited |
| ERC1155CreatorImplementation | token | ethereum | n/a | 2 deployments: ethereum [`0x1d9c38...33cff2`](./contracts/ethereum-1/0x1d9c3897bf6c9f05b0341f462e707b149c33cff2/); ethereum `0x9de637...d6c6ba` | ⚠️ Unaudited |
| ERC1155CreatorImplementation | token | ethereum | n/a | 6 deployments: ethereum [`0x2ff0a4...8701b3`](./contracts/ethereum-1/0x2ff0a4962647b9ecebd8a985911586522a8701b3/); ethereum `0x36e39b...5528b1`; ethereum `0x79bac5...b183e6`; ethereum `0x95d430...5795b9`; ethereum `0x9e28ad...0f8447`; ethereum `0xc79df0...9bacc4` | ⚠️ Unaudited |
| ERC1155TL | token | ethereum | n/a | [`0x967fd2...f2d853`](./contracts/ethereum-1/0x967fd257f8978b3338df1879baf074837cf2d853/) | ⚠️ Unaudited |
| ERC721SeaDrop | token | base | n/a | [`0xc45f7e...dac326`](./contracts/base-8453/0xc45f7ee10bd015fc0f9dbb1d9c1c4695f6dac326/) | ⚠️ Unaudited |
| GenArt721CoreV2_9DCC_IYK | unknown | ethereum | n/a | [`0x54a635...82b669`](./contracts/ethereum-1/0x54a6356244059d5a50b97200a928f19a3682b669/) | ⚠️ Unaudited |
| GenArt721CoreV2_ArtBlocksXPace | unknown | ethereum | n/a | [`0x64780c...80ec11`](./contracts/ethereum-1/0x64780ce53f6e966e18a22af13a2f97369580ec11/) | ⚠️ Unaudited |
| GenArt721CoreV2_ArtCode | unknown | ethereum | n/a | [`0xd10e3d...e53beb`](./contracts/ethereum-1/0xd10e3dee203579fcee90ed7d0bdd8086f7e53beb/) | ⚠️ Unaudited |
| GenArt721CoreV2_ATP | unknown | ethereum | n/a | [`0x4d928a...6bbdf3`](./contracts/ethereum-1/0x4d928ab507bf633dd8e68024a1fb4c99316bbdf3/) | ⚠️ Unaudited |
| GenArt721CoreV2_BrightMoments | unknown | ethereum | n/a | [`0x0a1bbd...ce3676`](./contracts/ethereum-1/0x0a1bbd57033f57e7b6743621b79fcb9eb2ce3676/) | ⚠️ Unaudited |
| GenArt721CoreV2_BrightMomentsFlex | unknown | ethereum | n/a | [`0x7c3ea2...500b18`](./contracts/ethereum-1/0x7c3ea2b7b3befa1115ab51c09f0c9f245c500b18/) | ⚠️ Unaudited |
| GenArt721CoreV2_CryptoCitizens | unknown | ethereum | n/a | [`0xbdde08...dc0ce0`](./contracts/ethereum-1/0xbdde08bd57e5c9fd563ee7ac61618cb2ecdc0ce0/) | ⚠️ Unaudited |
| GenArt721CoreV2_DoodleLabs | unknown | ethereum | n/a | [`0x28f2d3...403240`](./contracts/ethereum-1/0x28f2d3805652fb5d359486dffb7d08320d403240/) | ⚠️ Unaudited |
| GenArt721CoreV2_EndaomentGalleryForGoodFlex | unknown | ethereum | n/a | [`0xeafe7b...88dfe7`](./contracts/ethereum-1/0xeafe7b73a3cfa804b761debcf077d4574588dfe7/) | ⚠️ Unaudited |
| GenArt721CoreV2_ENGINE_FLEX | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1d0977...caa0c1`](./contracts/ethereum-1/0x1d0977e86c70eabb5c8fd98db1b08c6d60caa0c1/); ethereum `0x32d4be...67f436` | ⚠️ Unaudited |
| GenArt721CoreV2_Flutter | unknown | ethereum | n/a | [`0x13aae6...e99533`](./contracts/ethereum-1/0x13aae6f9599880edbb7d144bb13f1212cee99533/) | ⚠️ Unaudited |
| GenArt721CoreV2_LegendsOfMetaterra | unknown | ethereum | n/a | [`0x010be6...809c6a`](./contracts/ethereum-1/0x010be6545e14f1dc50256286d9920e833f809c6a/) | ⚠️ Unaudited |
| GenArt721CoreV2_PBAB | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2b3c48...4f8f15`](./contracts/ethereum-1/0x2b3c48be4fb33b0724214aff12b086b0214f8f15/); ethereum `0x68c01c...3a35d5`; ethereum `0xff124d...751cab` | ⚠️ Unaudited |
| GenArt721CoreV2_Plottables | unknown | ethereum | n/a | [`0xa319c3...f97f9c`](./contracts/ethereum-1/0xa319c382a702682129fcbf55d514e61a16f97f9c/) | ⚠️ Unaudited |
| GenArt721CoreV2_PlottablesFlex | unknown | ethereum | n/a | [`0x18de60...f178c0`](./contracts/ethereum-1/0x18de6097ce5b5b2724c9cae6ac519917f3f178c0/) | ⚠️ Unaudited |
| GenArt721CoreV2_TBOA | unknown | ethereum | n/a | [`0x62e37f...6d923b`](./contracts/ethereum-1/0x62e37f664b5945629b6549a87f8e10ed0b6d923b/) | ⚠️ Unaudited |
| GenArt721CoreV2_VerseFlex | unknown | ethereum | n/a | [`0xbb5471...e9a250`](./contracts/ethereum-1/0xbb5471c292065d3b01b2e81e299267221ae9a250/) | ⚠️ Unaudited |
| GenArt721CoreV3 | unknown | ethereum | n/a | [`0x99a9b7...09b069`](./contracts/ethereum-1/0x99a9b7c1116f9ceeb1652de04d5969cce509b069/) | ⚠️ Unaudited |
| GenArt721CoreV3_Engine | unknown | ethereum | n/a | 6 deployments: ethereum [`0x145789...3eb707`](./contracts/ethereum-1/0x145789247973c5d612bf121e9e4eef84b63eb707/); ethereum `0x6ddefe...7ebb8d`; ethereum `0x920907...5fcf5f`; ethereum `0xab949c...ece68f`; ethereum `0xc44358...f70743`; ethereum `0xea6985...e4fc36` | ⚠️ Unaudited |
| GenArt721CoreV3_Engine_Flex | unknown | ethereum | n/a | 13 deployments: ethereum [`0x5fdf5e...7e1389`](./contracts/ethereum-1/0x5fdf5e6caf7b8b0f64c3612afd85e9407a7e1389/); ethereum `0x77d4b5...752706`; ethereum `0x8cdbd7...9b0d3c`; ethereum `0x959d2f...eddf65`; ethereum `0x9f79e4...427794`; ethereum `0xa86cd4...3455c4`; ethereum `0xaf40b6...e20f2f`; ethereum `0xc74ec8...73009f`; ethereum `0xd00495...cc5f08`; ethereum `0xd9b7ec...30f44d`; ethereum `0xe034bb...27aa5d`; ethereum `0xedd5c3...c483a4`; ethereum `0xf03511...80ff7a` | ⚠️ Unaudited |
| GenArt721CoreV3_Engine_Flex_PROOF | unknown | ethereum | n/a | [`0x294fed...c8bc6d`](./contracts/ethereum-1/0x294fed5f1d3d30cfa6fe86a937dc3141eec8bc6d/) | ⚠️ Unaudited |
| GenArt721CoreV3_Explorations | unknown | ethereum | n/a | [`0x942bc2...2f5c8a`](./contracts/ethereum-1/0x942bc2d3e7a589fe5bd4a5c6ef9727dfd82f5c8a/) | ⚠️ Unaudited |
| GenArt721Minter_ATP | unknown | ethereum | n/a | [`0x92fc62...366922`](./contracts/ethereum-1/0x92fc62be436abd5dd042ba4a982f8b3c4e366922/) | ⚠️ Unaudited |
| GenArt721Minter_BrightMomentsFlex | unknown | ethereum | n/a | [`0xb5c1f9...cdf39c`](./contracts/ethereum-1/0xb5c1f9c5e8032264a10e618fb64042e3c3cdf39c/) | ⚠️ Unaudited |
| GenArt721Minter_CryptoCitizens | unknown | ethereum | n/a | [`0xdd06d8...afd42b`](./contracts/ethereum-1/0xdd06d8483868cd0c5e69c24eeaa2a5f2beafd42b/) | ⚠️ Unaudited |
| GenArt721Minter_EndaomentGalleryForGoodFlex | unknown | ethereum | n/a | [`0xd922fa...c5968b`](./contracts/ethereum-1/0xd922fabcfbba024fef701a4d047637b16ec5968b/) | ⚠️ Unaudited |
| GenArt721Minter_Fireworks | unknown | ethereum | n/a | [`0xa8992c...3f225c`](./contracts/ethereum-1/0xa8992cd645b68e7f26d0c58ff65c65c6cd3f225c/) | ⚠️ Unaudited |
| GenArt721Minter_PBAB | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcd2036...c66b3a`](./contracts/ethereum-1/0xcd2036592cf1291833c5dd236fdc4ce655c66b3a/); ethereum `0xfb8fec...175454` | ⚠️ Unaudited |
| GenArt721Minter_Plottables | unknown | ethereum | n/a | [`0x463b8c...0feb93`](./contracts/ethereum-1/0x463b8ced7d22a55aa4a5d69ef6a54a08aa0feb93/) | ⚠️ Unaudited |
| GenArt721Minter_PlottablesFlex | unknown | ethereum | n/a | [`0xe6e728...bb65da`](./contracts/ethereum-1/0xe6e728361b7c824cba64cc1e5323efb7a5bb65da/) | ⚠️ Unaudited |
| GenArt721Minter_TBOA | unknown | ethereum | n/a | [`0xb45102...77d4d8`](./contracts/ethereum-1/0xb4510235b7cac3c870312c732fe8e500ca77d4d8/) | ⚠️ Unaudited |
| GenArt721Minter_VerseFlex | unknown | ethereum | n/a | [`0x97a3f2...5b179d`](./contracts/ethereum-1/0x97a3f24a7e0ef152383ed0e125e2b51b2f5b179d/) | ⚠️ Unaudited |
| GenArt721MinterDAExp_PBAB | unknown | ethereum | n/a | [`0x9d67db...b2938b`](./contracts/ethereum-1/0x9d67db6f393110c4c02aeae2b5ea11e509b2938b/) | ⚠️ Unaudited |
| LinkToken | token | ethereum | n/a | [`0x514910...f986ca`](./contracts/ethereum-1/0x514910771af9ca656af840dff83e8264ecf986ca/) | ⚠️ Unaudited |
| MinterDAExpHolderV5 | unknown | ethereum | n/a | [`0xe7acf1...18af02`](./contracts/ethereum-1/0xe7acf1aab43deb805ebd7a90f34572ef6818af02/) | ⚠️ Unaudited |
| MinterDAExpSettlementV1 | unknown | ethereum | n/a | 7 deployments: ethereum [`0x3aa2d7...fe9994`](./contracts/ethereum-1/0x3aa2d7e6ce5f08e59b0511cdeb6ba866d9fe9994/); ethereum `0xaf08ab...8349a4`; ethereum `0xb60184...f842b6`; ethereum `0xd38cb6...10e7f7`; ethereum `0xe7c5b7...36bc15`; ethereum `0xfae11f...7b7bdc`; ethereum `0xfde58c...ede7e7` | ⚠️ Unaudited |
| MinterDAExpSettlementV3 | unknown | ethereum | n/a | [`0x6cafc1...58f592`](./contracts/ethereum-1/0x6cafc1b007f16f171b34ee45fc61b378ad58f592/) | ⚠️ Unaudited |
| MinterDAExpV0 | unknown | ethereum | n/a | [`0xfc74fd...710d7c`](./contracts/ethereum-1/0xfc74fd0f2c7ead04f1e5e9fd82aef55620710d7c/) | ⚠️ Unaudited |
| MinterDAExpV1 | unknown | ethereum | n/a | [`0xd94c70...4d2e13`](./contracts/ethereum-1/0xd94c7060808f3c876824e57e685702f3834d2e13/) | ⚠️ Unaudited |
| MinterDAExpV4 | unknown | ethereum | n/a | [`0xe4f5d0...d16526`](./contracts/ethereum-1/0xe4f5d08522fc6b8a84f242220181d15e1fd16526/) | ⚠️ Unaudited |
| MinterDALinV0 | unknown | ethereum | n/a | [`0xd219f6...930ee2`](./contracts/ethereum-1/0xd219f61bb5a3ffdecb4362610977f1dab3930ee2/) | ⚠️ Unaudited |
| MinterDALinV2 | unknown | ethereum | n/a | [`0xdaa6d1...e385a6`](./contracts/ethereum-1/0xdaa6d1e224f4b9f7c4f1368c362c4333a8e385a6/) | ⚠️ Unaudited |
| MinterDALinV4 | unknown | ethereum | n/a | [`0xeda9d6...31788a`](./contracts/ethereum-1/0xeda9d6d52ecdce6efbfc6f4e24c133335431788a/) | ⚠️ Unaudited |
| MinterFilterV1 | unknown | ethereum | n/a | 15 deployments: ethereum [`0x92ffaa...56921d`](./contracts/ethereum-1/0x92ffaac31ddda4cd7e1b366e16b8382fc256921d/); ethereum `0xa3ae49...dbc27e`; ethereum `0xa4b1db...5587da`; ethereum `0xb64116...e32076`; ethereum `0xb96eaa...9f9d3c`; ethereum `0xc01d7f...009da9`; ethereum `0xc1a1d0...7a6ad8`; ethereum `0xc2f711...4fbf6b`; ethereum `0xc89c6d...35eef0`; ethereum `0xcbc3b6...938458`; ethereum `0xce12d6...016d6f`; ethereum `0xdaf93f...66d494`; ethereum `0xea503d...db3411`; ethereum `0xf377a4...97dc0e`; ethereum `0xfb4d63...2bcaec` | ⚠️ Unaudited |
| MinterFilterV2 | unknown | ethereum | n/a | [`0xa2ccfe...48122b`](./contracts/ethereum-1/0xa2ccfe293bc2cdd78d8166a82d1e18cd2148122b/) | ⚠️ Unaudited |
| MinterHolderV1 | unknown | ethereum | n/a | [`0xa198e2...ff9145`](./contracts/ethereum-1/0xa198e22c32879f4214a37eb3051525bd9aff9145/) | ⚠️ Unaudited |
| MinterHolderV4 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9fa04a...965ca0`](./contracts/ethereum-1/0x9fa04a3b1b1f24bc7236f2cd196bacb54b965ca0/); ethereum `0xccff56...cce7d6` | ⚠️ Unaudited |
| MinterMerkleV1 | operational_periphery | ethereum | n/a | [`0xae5a48...e614af`](./contracts/ethereum-1/0xae5a48d22cd069c4d72dde204a7fb4b302e614af/) | ⚠️ Unaudited |
| MinterMerkleV2 | operational_periphery | ethereum | n/a | [`0xd06a51...19c310`](./contracts/ethereum-1/0xd06a5109bedef92696b29fcc0f6184640b19c310/) | ⚠️ Unaudited |
| MinterMerkleV5 | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x9447bd...44d0b2`](./contracts/ethereum-1/0x9447bd8e7aaa3e605d533004429520023144d0b2/); ethereum `0x95a3ed...2650bf`; ethereum `0xb8bd1d...67304d`; ethereum `0xbddd9a...018e8f`; ethereum `0xcba628...fb99b6`; ethereum `0xecbc78...4e44a8` | ⚠️ Unaudited |
| MinterSetPriceERC20V1 | operational_periphery | ethereum | n/a | [`0xa3f443...409a33`](./contracts/ethereum-1/0xa3f443283f715ba8dddf5e9401cfc99372409a33/) | ⚠️ Unaudited |
| MinterSetPriceERC20V2 | operational_periphery | ethereum | n/a | [`0xe4c6ee...b4287a`](./contracts/ethereum-1/0xe4c6eef13649e9c4ad8ae8a9c7fa9a7f26b4287a/) | ⚠️ Unaudited |
| MinterSetPriceERC20V4 | operational_periphery | ethereum | n/a | [`0x9fecd2...0a7e2d`](./contracts/ethereum-1/0x9fecd2fbc6d890fb93632dce9b1a01c4090a7e2d/) | ⚠️ Unaudited |
| MinterSetPriceHolderV5 | operational_periphery | ethereum | n/a | [`0x69f04f...74a98a`](./contracts/ethereum-1/0x69f04fddf0c4c32642b22e68b867282d5074a98a/) | ⚠️ Unaudited |
| MinterSetPriceMerkleV5 | operational_periphery | ethereum | n/a | [`0xa19bf7...65e1c4`](./contracts/ethereum-1/0xa19bf77719a9b6e7daa3c33b3aac119af865e1c4/) | ⚠️ Unaudited |
| MinterSetPricePolyptychV5 | operational_periphery | ethereum | n/a | [`0xef8e3e...8d89e3`](./contracts/ethereum-1/0xef8e3eb6f0b9cdede7ed333cbe67d5a2068d89e3/) | ⚠️ Unaudited |
| MinterSetPriceV1 | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x934cdc...6f7355`](./contracts/ethereum-1/0x934cdc04c434b8dbf3e1265f4f198d70566f7355/); ethereum `0xe9bdfa...719c47`; ethereum `0xee724b...69a7d5` | ⚠️ Unaudited |
| MinterSetPriceV2 | operational_periphery | ethereum | n/a | [`0xa504bf...4661ee`](./contracts/ethereum-1/0xa504bf82db6347165a39294fb0cae761074661ee/) | ⚠️ Unaudited |
| MinterSetPriceV4 | operational_periphery | ethereum | n/a | 13 deployments: ethereum [`0x934e79...935519`](./contracts/ethereum-1/0x934e79a1fa697c70927f2dd8ad2c2b3c14935519/); ethereum `0x936130...880197`; ethereum `0x9d7505...7cac17`; ethereum `0x9da0aa...45356f`; ethereum `0xafeeaf...acbd3e`; ethereum `0xb252e4...108d95`; ethereum `0xbfa331...d6819c`; ethereum `0xc78d27...8412e8`; ethereum `0xcd531f...0df7d9`; ethereum `0xd4fc10...d13766`; ethereum `0xd8b6dc...bfac53`; ethereum `0xe0edf1...87ee9e`; ethereum `0xf2994f...2a3ba6` | ⚠️ Unaudited |
| MinterSetPriceV5 | operational_periphery | ethereum | n/a | [`0x0635e2...96b085`](./contracts/ethereum-1/0x0635e2f2926b306356b5b3f5cb6489107796b085/) | ⚠️ Unaudited |
| Nft | token | hyperliquid | n/a | [`0x9125e2...bac685`](./contracts/hyperliquid-999/0x9125e2d6827a00b0f8330d6ef7bef07730bac685/) | ⚠️ Unaudited |
| SeaDrop | unknown | ethereum | n/a | [`0x00005e...e24bf5`](./contracts/ethereum-1/0x00005ea00ac477b1030ce78506496e8c2de24bf5/) | ⚠️ Unaudited |
| SharedRandomizerV0 | unknown | ethereum | n/a | [`0x13178a...752b91`](./contracts/ethereum-1/0x13178a7a8a1a9460dbe39f7eccebd91b31752b91/) | ⚠️ Unaudited |
| SovereignNFT | token | ethereum | n/a | [`0x025b0a...2cc06f`](./contracts/ethereum-1/0x025b0a638768b49901565c39a0c141bdb52cc06f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (55)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x088098...fcffc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ab754...9c3118` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x125f8c...4d307a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13a72e...342a49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14ff6f...f401e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15bb4b...a09c66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x162f32...9b4966` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c207b...e19366` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x229f5f...3b605d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x263388...c8dafe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29c293...87f1c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b485d...117752` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x355c1e...8652ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39c09c...211588` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b30d4...375269` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x444315...77f6ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x497b49...a1a658` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4cad25...0b2e24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50db09...fd3ae0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x533d79...a2e07b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x635047...f49f6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66cf72...edd1cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67d392...028a93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67ecc3...569e30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7dc2c0...3be60a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8abdb5...416a24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x968f3a...a7b96d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9df9dc...9e6dca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e0581...b33819` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa07f47...e04db7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1631f...e9527a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5d5eb...d5cf79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7b76c...e2619f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae1e3e...d60257` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6d59c...d91bb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf842b...52db07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0a077...c2d177` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1e04a...3964df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3893c...95e873` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9bf1e...7a3282` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd3604...76e723` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd882e...78b6f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd37552...34de33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6c97e...74c98a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7b090...01dce0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb11fa...b8416e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbbdee...8032d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea2796...df3444` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7323e...e91cb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7b813...63e96c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf915bb...10d627` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9abd9...8d52c2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xaa2674...68791c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb12827...8cb154` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc19430...6e1645` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SeaportProtocol.pdf](https://github.com/trailofbits/publications/blob/master/reviews/SeaportProtocol.pdf) | Trail of Bits | Audit | 2022-05 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xeac2af...02ccd5`](./contracts/ethereum-1/0xeac2afc8f4039217384b0ee90430a54ba902ccd5/) | AdminACLV0 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x171187...47f3c4`](./contracts/ethereum-1/0x171187d1ca1f5015aabeb96332cb599cbc47f3c4/) | AdminACLV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0585d...8eecd5`](./contracts/ethereum-1/0xf0585df582a0ad119f1616fb82f3b449a98eecd5/) | BytecodeStorageReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d9c38...33cff2`](./contracts/ethereum-1/0x1d9c3897bf6c9f05b0341f462e707b149c33cff2/) | ERC1155CreatorImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ff0a4...8701b3`](./contracts/ethereum-1/0x2ff0a4962647b9ecebd8a985911586522a8701b3/) | ERC1155CreatorImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x967fd2...f2d853`](./contracts/ethereum-1/0x967fd257f8978b3338df1879baf074837cf2d853/) | ERC1155TL | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc45f7e...dac326`](./contracts/base-8453/0xc45f7ee10bd015fc0f9dbb1d9c1c4695f6dac326/) | ERC721SeaDrop | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54a635...82b669`](./contracts/ethereum-1/0x54a6356244059d5a50b97200a928f19a3682b669/) | GenArt721CoreV2_9DCC_IYK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64780c...80ec11`](./contracts/ethereum-1/0x64780ce53f6e966e18a22af13a2f97369580ec11/) | GenArt721CoreV2_ArtBlocksXPace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd10e3d...e53beb`](./contracts/ethereum-1/0xd10e3dee203579fcee90ed7d0bdd8086f7e53beb/) | GenArt721CoreV2_ArtCode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d928a...6bbdf3`](./contracts/ethereum-1/0x4d928ab507bf633dd8e68024a1fb4c99316bbdf3/) | GenArt721CoreV2_ATP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a1bbd...ce3676`](./contracts/ethereum-1/0x0a1bbd57033f57e7b6743621b79fcb9eb2ce3676/) | GenArt721CoreV2_BrightMoments | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c3ea2...500b18`](./contracts/ethereum-1/0x7c3ea2b7b3befa1115ab51c09f0c9f245c500b18/) | GenArt721CoreV2_BrightMomentsFlex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdde08...dc0ce0`](./contracts/ethereum-1/0xbdde08bd57e5c9fd563ee7ac61618cb2ecdc0ce0/) | GenArt721CoreV2_CryptoCitizens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28f2d3...403240`](./contracts/ethereum-1/0x28f2d3805652fb5d359486dffb7d08320d403240/) | GenArt721CoreV2_DoodleLabs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeafe7b...88dfe7`](./contracts/ethereum-1/0xeafe7b73a3cfa804b761debcf077d4574588dfe7/) | GenArt721CoreV2_EndaomentGalleryForGoodFlex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d0977...caa0c1`](./contracts/ethereum-1/0x1d0977e86c70eabb5c8fd98db1b08c6d60caa0c1/) | GenArt721CoreV2_ENGINE_FLEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13aae6...e99533`](./contracts/ethereum-1/0x13aae6f9599880edbb7d144bb13f1212cee99533/) | GenArt721CoreV2_Flutter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x010be6...809c6a`](./contracts/ethereum-1/0x010be6545e14f1dc50256286d9920e833f809c6a/) | GenArt721CoreV2_LegendsOfMetaterra | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b3c48...4f8f15`](./contracts/ethereum-1/0x2b3c48be4fb33b0724214aff12b086b0214f8f15/) | GenArt721CoreV2_PBAB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa319c3...f97f9c`](./contracts/ethereum-1/0xa319c382a702682129fcbf55d514e61a16f97f9c/) | GenArt721CoreV2_Plottables | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18de60...f178c0`](./contracts/ethereum-1/0x18de6097ce5b5b2724c9cae6ac519917f3f178c0/) | GenArt721CoreV2_PlottablesFlex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62e37f...6d923b`](./contracts/ethereum-1/0x62e37f664b5945629b6549a87f8e10ed0b6d923b/) | GenArt721CoreV2_TBOA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb5471...e9a250`](./contracts/ethereum-1/0xbb5471c292065d3b01b2e81e299267221ae9a250/) | GenArt721CoreV2_VerseFlex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99a9b7...09b069`](./contracts/ethereum-1/0x99a9b7c1116f9ceeb1652de04d5969cce509b069/) | GenArt721CoreV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x145789...3eb707`](./contracts/ethereum-1/0x145789247973c5d612bf121e9e4eef84b63eb707/) | GenArt721CoreV3_Engine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fdf5e...7e1389`](./contracts/ethereum-1/0x5fdf5e6caf7b8b0f64c3612afd85e9407a7e1389/) | GenArt721CoreV3_Engine_Flex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x294fed...c8bc6d`](./contracts/ethereum-1/0x294fed5f1d3d30cfa6fe86a937dc3141eec8bc6d/) | GenArt721CoreV3_Engine_Flex_PROOF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x942bc2...2f5c8a`](./contracts/ethereum-1/0x942bc2d3e7a589fe5bd4a5c6ef9727dfd82f5c8a/) | GenArt721CoreV3_Explorations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92fc62...366922`](./contracts/ethereum-1/0x92fc62be436abd5dd042ba4a982f8b3c4e366922/) | GenArt721Minter_ATP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5c1f9...cdf39c`](./contracts/ethereum-1/0xb5c1f9c5e8032264a10e618fb64042e3c3cdf39c/) | GenArt721Minter_BrightMomentsFlex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd06d8...afd42b`](./contracts/ethereum-1/0xdd06d8483868cd0c5e69c24eeaa2a5f2beafd42b/) | GenArt721Minter_CryptoCitizens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd922fa...c5968b`](./contracts/ethereum-1/0xd922fabcfbba024fef701a4d047637b16ec5968b/) | GenArt721Minter_EndaomentGalleryForGoodFlex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8992c...3f225c`](./contracts/ethereum-1/0xa8992cd645b68e7f26d0c58ff65c65c6cd3f225c/) | GenArt721Minter_Fireworks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd2036...c66b3a`](./contracts/ethereum-1/0xcd2036592cf1291833c5dd236fdc4ce655c66b3a/) | GenArt721Minter_PBAB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x463b8c...0feb93`](./contracts/ethereum-1/0x463b8ced7d22a55aa4a5d69ef6a54a08aa0feb93/) | GenArt721Minter_Plottables | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6e728...bb65da`](./contracts/ethereum-1/0xe6e728361b7c824cba64cc1e5323efb7a5bb65da/) | GenArt721Minter_PlottablesFlex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb45102...77d4d8`](./contracts/ethereum-1/0xb4510235b7cac3c870312c732fe8e500ca77d4d8/) | GenArt721Minter_TBOA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x97a3f2...5b179d`](./contracts/ethereum-1/0x97a3f24a7e0ef152383ed0e125e2b51b2f5b179d/) | GenArt721Minter_VerseFlex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d67db...b2938b`](./contracts/ethereum-1/0x9d67db6f393110c4c02aeae2b5ea11e509b2938b/) | GenArt721MinterDAExp_PBAB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x514910...f986ca`](./contracts/ethereum-1/0x514910771af9ca656af840dff83e8264ecf986ca/) | LinkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe7acf1...18af02`](./contracts/ethereum-1/0xe7acf1aab43deb805ebd7a90f34572ef6818af02/) | MinterDAExpHolderV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3aa2d7...fe9994`](./contracts/ethereum-1/0x3aa2d7e6ce5f08e59b0511cdeb6ba866d9fe9994/) | MinterDAExpSettlementV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6cafc1...58f592`](./contracts/ethereum-1/0x6cafc1b007f16f171b34ee45fc61b378ad58f592/) | MinterDAExpSettlementV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc74fd...710d7c`](./contracts/ethereum-1/0xfc74fd0f2c7ead04f1e5e9fd82aef55620710d7c/) | MinterDAExpV0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd94c70...4d2e13`](./contracts/ethereum-1/0xd94c7060808f3c876824e57e685702f3834d2e13/) | MinterDAExpV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4f5d0...d16526`](./contracts/ethereum-1/0xe4f5d08522fc6b8a84f242220181d15e1fd16526/) | MinterDAExpV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd219f6...930ee2`](./contracts/ethereum-1/0xd219f61bb5a3ffdecb4362610977f1dab3930ee2/) | MinterDALinV0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdaa6d1...e385a6`](./contracts/ethereum-1/0xdaa6d1e224f4b9f7c4f1368c362c4333a8e385a6/) | MinterDALinV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeda9d6...31788a`](./contracts/ethereum-1/0xeda9d6d52ecdce6efbfc6f4e24c133335431788a/) | MinterDALinV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92ffaa...56921d`](./contracts/ethereum-1/0x92ffaac31ddda4cd7e1b366e16b8382fc256921d/) | MinterFilterV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2ccfe...48122b`](./contracts/ethereum-1/0xa2ccfe293bc2cdd78d8166a82d1e18cd2148122b/) | MinterFilterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa198e2...ff9145`](./contracts/ethereum-1/0xa198e22c32879f4214a37eb3051525bd9aff9145/) | MinterHolderV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9fa04a...965ca0`](./contracts/ethereum-1/0x9fa04a3b1b1f24bc7236f2cd196bacb54b965ca0/) | MinterHolderV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae5a48...e614af`](./contracts/ethereum-1/0xae5a48d22cd069c4d72dde204a7fb4b302e614af/) | MinterMerkleV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd06a51...19c310`](./contracts/ethereum-1/0xd06a5109bedef92696b29fcc0f6184640b19c310/) | MinterMerkleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9447bd...44d0b2`](./contracts/ethereum-1/0x9447bd8e7aaa3e605d533004429520023144d0b2/) | MinterMerkleV5 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3f443...409a33`](./contracts/ethereum-1/0xa3f443283f715ba8dddf5e9401cfc99372409a33/) | MinterSetPriceERC20V1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4c6ee...b4287a`](./contracts/ethereum-1/0xe4c6eef13649e9c4ad8ae8a9c7fa9a7f26b4287a/) | MinterSetPriceERC20V2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9fecd2...0a7e2d`](./contracts/ethereum-1/0x9fecd2fbc6d890fb93632dce9b1a01c4090a7e2d/) | MinterSetPriceERC20V4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69f04f...74a98a`](./contracts/ethereum-1/0x69f04fddf0c4c32642b22e68b867282d5074a98a/) | MinterSetPriceHolderV5 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa19bf7...65e1c4`](./contracts/ethereum-1/0xa19bf77719a9b6e7daa3c33b3aac119af865e1c4/) | MinterSetPriceMerkleV5 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef8e3e...8d89e3`](./contracts/ethereum-1/0xef8e3eb6f0b9cdede7ed333cbe67d5a2068d89e3/) | MinterSetPricePolyptychV5 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x934cdc...6f7355`](./contracts/ethereum-1/0x934cdc04c434b8dbf3e1265f4f198d70566f7355/) | MinterSetPriceV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa504bf...4661ee`](./contracts/ethereum-1/0xa504bf82db6347165a39294fb0cae761074661ee/) | MinterSetPriceV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x934e79...935519`](./contracts/ethereum-1/0x934e79a1fa697c70927f2dd8ad2c2b3c14935519/) | MinterSetPriceV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0635e2...96b085`](./contracts/ethereum-1/0x0635e2f2926b306356b5b3f5cb6489107796b085/) | MinterSetPriceV5 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x9125e2...bac685`](./contracts/hyperliquid-999/0x9125e2d6827a00b0f8330d6ef7bef07730bac685/) | Nft | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00005e...e24bf5`](./contracts/ethereum-1/0x00005ea00ac477b1030ce78506496e8c2de24bf5/) | SeaDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13178a...752b91`](./contracts/ethereum-1/0x13178a7a8a1a9460dbe39f7eccebd91b31752b91/) | SharedRandomizerV0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x025b0a...2cc06f`](./contracts/ethereum-1/0x025b0a638768b49901565c39a0c141bdb52cc06f/) | SovereignNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 55 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
