# Agentic Audit Brief: CREAM Finance

⚠️ Lifecycle status: DECLINING - TVL changed 11.6% over 90 days

## Project Overview

- Project: CREAM Finance (`cream-finance`)
- Website: [https://cream.finance/](https://cream.finance/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-10T20:59:01.541Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, bsc, ethereum, polygon
- Contract surface: 94 unique implementations (618 raw deployments)
- DeFi Llama TVL: $1,657,586.00
- On-chain TVL (included contracts): $2,280,006,585.95
- TVL by chain: Ethereum $2,059,569,444.12 | Bsc $220,410,132.58 | Polygon $24,915.91 | Arbitrum $2,093.33

## Project Description

CREAM Finance is a decentralized lending protocol that allows users to supply and borrow a wide range of cryptocurrencies across multiple blockchains. It also includes a decentralized exchange (CreamSwap) and a liquid staking derivative (CRETH2) for Ethereum 2.0 staking.

### Architecture

The lending family uses Unitroller/Comptroller as the central risk management and interest rate model, with crToken contracts representing user positions. CreamSwap and CRETH2 operate independently but share the CREAM token for incentives and governance, while the Long-term CREAM Staking contracts lock CREAM tokens to support the ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/64 (0.0%)
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 2
- Unverified implementations: 30
- Unique implementations: 94
- Raw deployments: 618
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,280,006,585.95
- Latest audit: 2021-01 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,280,006,585.95 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (62)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CCollateralCapErc20Delegate | token | ethereum | 171 deployments: ethereum [`0x00e5c0...c84bf3`](./contracts/ethereum-1/0x00e5c0774a5f065c285068170b20393925c84bf3/); ethereum `0x02c913...404efb`; ethereum `0x054b7e...4096ed`; ethereum `0x06a63a...2d630c`; ethereum `0x081fe6...190a21`; ethereum `0x09bdcc...b6572d`; ethereum `0x10a3da...2923a8`; ethereum `0x10fdbd...e649db`; ethereum `0x1241b1...cff999`; ethereum `0x12a9cc...93d12c`; ethereum `0x17107f...ebd4be`; ethereum `0x183225...0eea97`; ethereum `0x197070...80d4fc`; ethereum `0x19d166...1a8e46`; ethereum `0x1a1223...c2bbd0`; ethereum `0x1b3e95...bd12d5`; ethereum `0x1d0986...7c7e35`; ethereum `0x1ff8cd...bc998e`; ethereum `0x20ca53...114c24`; ethereum `0x21011b...8f49fc`; ethereum `0x215f34...e264b1`; ethereum `0x226f37...46102f`; ethereum `0x250fb3...b7f74a`; ethereum `0x255559...e82b55`; ethereum `0x27260e...a929bb`; ethereum `0x28192a...06fe46`; ethereum `0x28526b...c5402e`; ethereum `0x29791b...805305`; ethereum `0x297d4d...7e453a`; ethereum `0x299e25...ea3a3b`; ethereum `0x2a537f...29366d`; ethereum `0x2a867f...07ea6d`; ethereum `0x30190a...f22340`; ethereum `0x3225e3...5e31bc`; ethereum `0x338286...f5d206`; ethereum `0x362338...d31f58`; ethereum `0x3c6c55...36d296`; ethereum `0x3c710b...0e0754`; ethereum `0x3c9f53...080101`; ethereum `0x4112a7...73387f`; ethereum `0x41c84c...c6b393`; ethereum `0x432979...9e33e5`; ethereum `0x44fbeb...53b322`; ethereum `0x48759f...e4166a`; ethereum `0x51f48b...0c07af`; ethereum `0x523eff...5e8e9e`; ethereum `0x58da9c...f3d2ef`; ethereum `0x590892...e03cb3`; ethereum `0x658839...f76a90`; ethereum `0x672473...0bf40b`; ethereum `0x697256...6a5fd9`; ethereum `0x6ada0e...fda83c`; ethereum `0x71cefc...441847`; ethereum `0x766175...8d8fff`; ethereum `0x76eb2f...b2a37c`; ethereum `0x7736ff...732992`; ethereum `0x797aab...3d2157`; ethereum `0x7aaa32...0f1fea`; ethereum `0x7c3297...203112`; ethereum `0x7ea9c6...907db3`; ethereum `0x81e346...ff13c6`; ethereum `0x8379ba...18ae41`; ethereum `0x857599...793d9b`; ethereum `0x86bbd9...7548aa`; ethereum `0x892b14...cf6ac0`; ethereum `0x89e429...3d5828`; ethereum `0x8b3ff1...3685a5`; ethereum `0x8b950f...bf3096`; ethereum `0x8c3b7a...4e6f91`; ethereum `0x8dc840...fa0789`; ethereum `0x8e5954...2ec68f`; ethereum `0x8fc8bf...92b431`; ethereum `0x903560...89fc5d`; ethereum `0x92b767...7a1d9f`; ethereum `0x98e329...94b77c`; ethereum `0x9925f2...e777bb`; ethereum `0x9d029c...135bb2`; ethereum `0x9e8e20...69c1a9`; ethereum `0xa0e5a1...76b083`; ethereum `0xa7c405...5c9806`; ethereum `0xa8caea...a73e4f`; ethereum `0xab1058...abf8f7`; ethereum `0xb092b4...26a4d5`; ethereum `0xb8c5af...6109f9`; ethereum `0xbe86e8...470c5c`; ethereum `0xc25eae...732e14`; ethereum `0xc36080...b82b17`; ethereum `0xc68251...ac651b`; ethereum `0xc7fd8d...c77480`; ethereum `0xca55f9...17fd54`; ethereum `0xcbae0a...dc6b76`; ethereum `0xcc3e89...53f6fd`; ethereum `0xce4fe9...9d2eb3`; ethereum `0xd37295...ae6705`; ethereum `0xd5103a...1b2a8b`; ethereum `0xd692ac...e85d2c`; ethereum `0xd73944...66314b`; ethereum `0xdbb5e3...78fecf`; ethereum `0xdfff11...990393`; ethereum `0xe585c7...996e73`; ethereum `0xe7bff2...03aa16`; ethereum `0xe89a6d...a363c7`; ethereum `0xecab2c...a97ecf`; ethereum `0xef58b2...9bc025`; ethereum `0xeff039...77532c`; ethereum `0xf04ce2...97fb4e`; ethereum `0xf330c1...8ac470`; ethereum `0xf55bbe...dbe924`; ethereum `0xf7ea2f...b3afd9`; ethereum `0xf8445c...016e20`; ethereum `0xfa3472...7621b9`; ethereum `0xfd42f5...d4c304`; ethereum `0xfd609a...a924e2`; ethereum `0xfeeb92...7db59f`; bsc `0x09e470...2fe7ec`; bsc `0x0e9d90...a09baa`; bsc `0x11883c...8ce069`; bsc `0x19ee64...2ec907`; bsc `0x1af8c1...04fd16`; bsc `0x264bc4...87fcbc`; bsc `0x272613...d0ae50`; bsc `0x2bc4eb...289b7c`; bsc `0x2d3bfa...98aa06`; bsc `0x394293...dd9b22`; bsc `0x3b0be4...469d68`; bsc `0x426d6d...145b62`; bsc `0x45a6c0...b8fea7`; bsc `0x4cb7f1...74fec4`; bsc `0x4ebdef...28a48f`; bsc `0x53d88d...a8515f`; bsc `0x738f38...92c43b`; bsc `0x7e545c...9ccac2`; bsc `0x7f746a...6de418`; bsc `0x816697...5a06cf`; bsc `0x81c15d...25fc55`; bsc `0x84902b...043beb`; bsc `0x8cc7e2...5e09b2`; bsc `0x9095e8...7a1b22`; bsc `0x9b53e7...7bcee5`; bsc `0xa8d75a...019c96`; bsc `0xaa46e2...66e20c`; bsc `0xaac5b4...fb1cc5`; bsc `0xb31f5d...3e2bcd`; bsc `0xbe7e1d...0fce6b`; bsc `0xbf9b95...e1ff82`; bsc `0xc17c8c...51488c`; bsc `0xcb87ce...6f90b1`; bsc `0xcec434...661730`; bsc `0xd83c88...f5f727`; bsc `0xdcf60e...86ed1c`; bsc `0xe69271...52de8e`; bsc `0xea466c...8fb0a5`; bsc `0xef6d45...4975de`; bsc `0xf77df3...bcf0b1`; polygon `0x20d5d3...d6ad0a`; polygon `0x2ee806...5cd7cc`; polygon `0x448683...46a271`; polygon `0x468a7b...9af5ab`; polygon `0x4ecedd...d6c00e`; polygon `0x5dc3a3...17072a`; polygon `0x73cf8c...ab6cbd`; polygon `0x7ea717...75d381`; polygon `0x7ef18d...27f716`; polygon `0x98182b...d0eb7a`; polygon `0x9b21eb...8cb971`; polygon `0xd4409b...9b9ffa`; polygon `0xe82225...f07e78`; polygon `0xf976c9...bc5c8a`; polygon `0xfbbfa5...bd328d`; arbitrum `0x5eb35d...cae9ce`; arbitrum `0xd5794e...ffbd86` | ⚠️ Unaudited |
| CCollateralCapErc20CheckRepayDelegate | token | ethereum | 2 deployments: ethereum [`0x2db6c8...5066d6`](./contracts/ethereum-1/0x2db6c82ce72c8d7d770ba1b5f5ed0b6e075066d6/); ethereum `0x96cc0f...5a2fc8` | ⚠️ Unaudited |
| CErc20Delegate | token | ethereum | 47 deployments: ethereum [`0x011a01...230afa`](./contracts/ethereum-1/0x011a014d5e8eb4771e575bb1000318d509230afa/); ethereum `0x01da76...015c2d`; ethereum `0x04be8e...984766`; ethereum `0x09db98...c7b472`; ethereum `0x0a7d7c...61b20f`; ethereum `0x14e451...268a96`; ethereum `0x19940f...781fc3`; ethereum `0x1c8645...577331`; ethereum `0x1f9b47...2cb284`; ethereum `0x228619...dafbb2`; ethereum `0x2f4ad3...accadb`; ethereum `0x39d466...5064bb`; ethereum `0x4202d9...dd81d4`; ethereum `0x45406b...b107f6`; ethereum `0x4baa77...579dd4`; ethereum `0x4e3a36...b3c0b8`; ethereum `0x4ee15f...8954c6`; ethereum `0x4fe11b...daad85`; ethereum `0x51297a...d5ff8c`; ethereum `0x599e99...d1e451`; ethereum `0x6d1b9e...ff1c20`; ethereum `0x6d419c...5c5b40`; ethereum `0x7589c9...0207fc`; ethereum `0x81a1ff...b9cd5e`; ethereum `0x8341f1...42b56f`; ethereum `0x8b86e0...33d0d6`; ethereum `0x8ec370...74c4db`; ethereum `0x951759...dd9bf9`; ethereum `0x9b4048...2e4a06`; ethereum `0x9baf8a...d0bb87`; ethereum `0x9d8a05...38fd4d`; ethereum `0xa27827...01b875`; ethereum `0xb5c7aa...29be3c`; ethereum `0xbdf447...783f72`; ethereum `0xc2dc50...13721b`; ethereum `0xc4b2f8...0efa1b`; ethereum `0xc9d8a3...77f3c9`; ethereum `0xcd22c4...faafa0`; ethereum `0xe407e9...df882d`; ethereum `0xe6c312...373963`; ethereum `0xe9e0ad...d52689`; ethereum `0xee0c0a...788328`; ethereum `0xf25fb0...61249f`; bsc `0x11a362...6fc474`; bsc `0x12c28c...4eccd4`; bsc `0x687484...fb94df`; bsc `0xa80690...ba0d2f` | ⚠️ Unaudited |
| TetherToken | token | ethereum | [`0xc581b7...ede491`](./contracts/ethereum-1/0xc581b735a1688071a1746c968e0798d642ede491/) | ⚠️ Unaudited |
| CCTokenDelegate | token | ethereum | 6 deployments: ethereum [`0x4f0800...909b9e`](./contracts/ethereum-1/0x4f08008ef178929e3866f1aeea75beaa8b909b9e/); ethereum `0x4f12c9...64d045`; ethereum `0x950027...2b6c09`; ethereum `0xbb4b06...728e36`; ethereum `0xe3d7a3...287a27`; ethereum `0xfbfb92...3f0aa9` | ⚠️ Unaudited |
| CCapableErc20Delegate | token | ethereum | 17 deployments: ethereum [`0x018a82...9ff5ab`](./contracts/ethereum-1/0x018a82a5bd6e0a4ae8c5cf54527775d17d9ff5ab/); ethereum `0x1a9e50...edb509`; ethereum `0x1bcafa...8d1eb5`; ethereum `0x218e5b...ff6117`; ethereum `0x22b243...2b2e9e`; ethereum `0x2939f9...ccff07`; ethereum `0x460ea7...715adc`; ethereum `0x852dc3...68aaf3`; ethereum `0xa87e8e...5f4d01`; ethereum `0xb72cf0...c3aaa5`; ethereum `0xbddeb5...e5b6c6`; ethereum `0xcc4457...9b2afc`; ethereum `0xe9ea58...f0ceb6`; ethereum `0xf047d4...295922`; ethereum `0xf7c531...9b8531`; bsc `0x225a75...750d65`; bsc `0xb316f4...255f53` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | [`0xf4d48c...4d7234`](./contracts/arbitrum-42161/0xf4d48ce3ee1ac3651998971541badbb9a14d7234/) | ⚠️ Unaudited |
| BEP20CREAM | adapter | bsc | [`0x2f7347...120326`](./contracts/bsc-56/0x2f7347ebb25f2e314a5806b71dd67fe96c120326/) | ⚠️ Unaudited |
| BFactory | registry | ethereum | 3 deployments: ethereum [`0x0d3303...9b619f`](./contracts/ethereum-1/0x0d3303ffaf107cd732396570bf07b2dbd79b619f/); ethereum `0x136d6f...a6ddec`; ethereum `0xf8062e...ab4e54` | ⚠️ Unaudited |
| BNBReserveReceiver | unknown | bsc | [`0xb16a4e...eb1d4d`](./contracts/bsc-56/0xb16a4e6086fc32debc38388f7d156a9b8deb1d4d/) | ⚠️ Unaudited |
| CCakeLPDelegate | unknown | bsc | 11 deployments: bsc [`0x04c61e...ee69fb`](./contracts/bsc-56/0x04c61ef58a6f1d6c572045a39a5434ab9dee69fb/); bsc `0x19b08f...477a41`; bsc `0x26a490...6a7110`; bsc `0x36cdf5...c065d9`; bsc `0x3d9927...e17034`; bsc `0x5ea2dd...9b2a0e`; bsc `0x5fa61a...0440b7`; bsc `0x7fd568...ab1c5f`; bsc `0x98b787...f872d0`; bsc `0x9972dd...f7ca85`; bsc `0xe39b9e...8b14e0` | ⚠️ Unaudited |
| CCapableWrappedNativeDelegate | unknown | bsc | 3 deployments: bsc [`0x15cc70...93bc67`](./contracts/bsc-56/0x15cc701370cb8ada2a2b6f4226ec5cf6aa93bc67/); bsc `0x19b82a...3b22eb`; bsc `0x54ece7...f45043` | ⚠️ Unaudited |
| CCollateralCapErc20 | token | ethereum | [`0x6a6fd0...2b930f`](./contracts/ethereum-1/0x6a6fd01c92f0390670cce399b532017cdb2b930f/) | ⚠️ Unaudited |
| CCollateralCapErc20NoInterestDelegate | token | ethereum | 4 deployments: ethereum [`0x48b4a7...f2dbc5`](./contracts/ethereum-1/0x48b4a7d479ac40a92795e5e88d2c7e9490f2dbc5/); ethereum `0x9be7b5...01aa64`; ethereum `0xca1041...41c157`; ethereum `0xcfabfd...33f2e0` | ⚠️ Unaudited |
| CErc20Delegator | token | ethereum | 13 deployments: ethereum [`0x0e821d...11c2cb`](./contracts/ethereum-1/0x0e821d855f4fc427200484ae42369b8a6611c2cb/); ethereum `0x371fb6...a331df`; ethereum `0x43bf8d...34846f`; ethereum `0x4f624d...3a3cea`; ethereum `0x6d2ba9...68e513`; ethereum `0x6ea8ea...68505b`; ethereum `0x7ec779...746817`; ethereum `0x90b280...2feb59`; ethereum `0xa34c4f...ccd612`; ethereum `0xb2ec68...74f6fd`; ethereum `0xd64f8d...3de086`; ethereum `0xd6d9e4...44938b`; ethereum `0xe8e202...a96c43` | ⚠️ Unaudited |
| CEther | unknown | bsc | 2 deployments: ethereum `0xd06527...2860ee`; bsc [`0x1ffe17...90ff3a`](./contracts/bsc-56/0x1ffe17b99b439be0afc831239ddecda2a790ff3a/) | ⚠️ Unaudited |
| Comp | unknown | ethereum | 2 deployments: ethereum [`0x2ba592...7cb200`](./contracts/ethereum-1/0x2ba592f78db6436527729929aaf6c908497cb200/); bsc `0xd4cb32...f3e888` | ⚠️ Unaudited |
| CompoundLens | periphery | polygon | 5 deployments: ethereum `0x69f2b8...d9423f`; ethereum `0xd400e2...587659`; bsc `0x1a014f...86ea4a`; polygon [`0x139dd8...040a42`](./contracts/polygon-137/0x139dd8bb6355d20342e08ff013150b1ae5040a42/); arbitrum [`0x139dd8...040a42`](./contracts/arbitrum-42161/0x139dd8bb6355d20342e08ff013150b1ae5040a42/) | ⚠️ Unaudited |
| CreamEth2 | unknown | ethereum | 3 deployments: ethereum [`0x49d72e...9fdb64`](./contracts/ethereum-1/0x49d72e3973900a195a155a46441f0c08179fdb64/); ethereum `0x742f5e...7ed0d6`; ethereum `0xcbc106...ab89fd` | ⚠️ Unaudited |
| CreamETH2Proxy | unknown | ethereum | [`0x017260...b19a8d`](./contracts/ethereum-1/0x0172602c7c8e07267bd58454dbf1016469b19a8d/) | ⚠️ Unaudited |
| CreamLiquidate | unknown | ethereum | 2 deployments: ethereum [`0x8584b7...40ca64`](./contracts/ethereum-1/0x8584b7ac8b1e4255c18784928fbf1c6fca40ca64/); ethereum `0xd7de27...5bfcd9` | ⚠️ Unaudited |
| CreamLock | unknown | ethereum | 4 deployments: ethereum [`0x780f75...7a8b45`](./contracts/ethereum-1/0x780f75ad0b02afeb6039672e6a6cede7447a8b45/); ethereum `0xbdc337...ce7595`; ethereum `0xd5586c...e20a6c`; ethereum `0xe618c2...2f5945` | ⚠️ Unaudited |
| CreamVotingPower | unknown | ethereum | 2 deployments: ethereum [`0xb146bf...20d0f9`](./contracts/ethereum-1/0xb146bf59f30a54750209ef529a766d952720d0f9/); ethereum `0xc08f48...6762ff` | ⚠️ Unaudited |
| CreamY | unknown | ethereum | [`0x1d0914...bdc10c`](./contracts/ethereum-1/0x1d09144f3479bb805cb7c92346987420bcbdc10c/) | ⚠️ Unaudited |
| CRenameDelegate | unknown | ethereum | [`0xef01e1...b8f17b`](./contracts/ethereum-1/0xef01e12d98338d2ab395ddfe41e4ec3eb9b8f17b/) | ⚠️ Unaudited |
| CRETH2Repayment | unknown | ethereum | 2 deployments: ethereum [`0xa5462b...c11deb`](./contracts/ethereum-1/0xa5462bc7bb1dd43b0db84c2de71e34a03ac11deb/); ethereum `0xb1a8b5...d796bf` | ⚠️ Unaudited |
| CSLPDelegate | unknown | ethereum | 9 deployments: ethereum [`0x0b4722...151ffb`](./contracts/ethereum-1/0x0b4722779a0ed7d79101c0d251987e76d4151ffb/); ethereum `0x38f27c...0be4ad`; ethereum `0x54704b...ef0dde`; ethereum `0x5c291b...b6aee9`; ethereum `0x5ecad8...1eea92`; ethereum `0x6ba0c6...38d375`; ethereum `0x73f6cb...0e81fc`; ethereum `0xc489f7...fc4b1f`; ethereum `0xd53294...873abf` | ⚠️ Unaudited |
| CTokenAdmin | token | bsc | 5 deployments: ethereum `0x1145ed...8fef24`; ethereum `0x139dd8...040a42`; ethereum `0x3fae5e...336ee8`; ethereum `0xa67b44...2a038d`; bsc [`0x0dfd3b...138ba7`](./contracts/bsc-56/0x0dfd3bca58f7e0639e87fba6f778c87bfa138ba7/) | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | bsc | 3 deployments: bsc [`0x01e2b7...7ca922`](./contracts/bsc-56/0x01e2b783d076087f3e00a852ae0ae45ca77ca922/); polygon `0x3fae5e...336ee8`; arbitrum `0x544109...1a0c97` | ⚠️ Unaudited |
| EasyConverter | unknown | ethereum | 4 deployments: ethereum [`0x4ec6a2...cd65c7`](./contracts/ethereum-1/0x4ec6a2ddfe7c70336009149b4831bf3baecd65c7/); ethereum `0x50697a...224790`; ethereum `0x689544...b5adfb`; ethereum `0xede1c6...698ca0` | ⚠️ Unaudited |
| ERC20 | token | ethereum | [`0x6b0f79...5978cf`](./contracts/ethereum-1/0x6b0f79102b2c18a83263454982edbcdf5c5978cf/) | ⚠️ Unaudited |
| FlashloanLender | unknown | ethereum | 4 deployments: ethereum [`0x1a21ab...479829`](./contracts/ethereum-1/0x1a21ab52d1ca1312232a72f4cf4389361a479829/); ethereum `0x21b9e0...681da9`; ethereum `0xa8682c...0b73d5`; bsc `0xb71328...414b5a` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | [`0xddc76a...bfe334`](./contracts/bsc-56/0xddc76a37c6a6f85caec3747aa4842cf721bfe334/) | ⚠️ Unaudited |
| IBAgreement | unknown | ethereum | 8 deployments: ethereum [`0x085682...60e99b`](./contracts/ethereum-1/0x085682716f61a72bf8c573fbaf88cca68c60e99b/); ethereum `0x30f254...37f812`; ethereum `0x748fa6...ebe47c`; ethereum `0xa8e2ab...23f9b9`; ethereum `0xb9910c...54d8f0`; ethereum `0xcddba4...03b1c8`; ethereum `0xeac81f...29b117`; ethereum `0xec5aa1...f21cd7` | ⚠️ Unaudited |
| IBAgreementV2 | unknown | ethereum | [`0x9ae50b...46b3ff`](./contracts/ethereum-1/0x9ae50bd64e45fd87dd05c768ff314b8fe246b3ff/) | ⚠️ Unaudited |
| IronBankTimelock | governance | ethereum | [`0x5b12f0...14ac17`](./contracts/ethereum-1/0x5b12f04e22384b01f42ed14da23eacd21f14ac17/) | ⚠️ Unaudited |
| JumpRateModel | operational_periphery | ethereum | [`0xfecc2d...25736f`](./contracts/ethereum-1/0xfecc2d4689394202eabe6329acc1a0c6fe25736f/) | ⚠️ Unaudited |
| JumpRateModelV2 | operational_periphery | ethereum | 23 deployments: ethereum [`0x014872...d2e1a6`](./contracts/ethereum-1/0x014872728e7d8b1c6781f96ecfbd262ea4d2e1a6/); ethereum `0x1eee7e...7b5539`; ethereum `0x523854...576816`; ethereum `0x64caa0...c64961`; ethereum `0x66fb6c...31fed8`; ethereum `0x73d060...61f493`; ethereum `0x9079dc...1c9ac0`; ethereum `0x990f82...7e8047`; ethereum `0xa0d811...790d3a`; ethereum `0xa9d052...7b86d4`; ethereum `0xaaedaf...ba6992`; ethereum `0xb84ad7...cebaac`; ethereum `0xbd95e9...179905`; ethereum `0xc15a2b...42b17e`; ethereum `0xd34137...7b3eb5`; ethereum `0xe6c2d3...38772e`; bsc `0x0a4f9a...2c5710`; bsc `0x410ece...a5d0b0`; bsc `0x4e4c96...63e7db`; bsc `0x66d801...8aeb6d`; bsc `0x681ab0...f32b75`; bsc `0xed06cb...d0835f`; bsc `0xedbed7...e83003` | ⚠️ Unaudited |
| LiquidityMining | unknown | bsc | 4 deployments: bsc [`0x004d28...d524fa`](./contracts/bsc-56/0x004d2829e5c21377dbe561e15c8a830389d524fa/); bsc `0xb4eaf7...20fe8c`; bsc `0xd45498...ba5a9d`; bsc `0xd465c5...9e83d2` | ⚠️ Unaudited |
| LiquidityMiningLens | periphery | bsc | 2 deployments: bsc [`0x56d21e...077d08`](./contracts/bsc-56/0x56d21e79d72d7f62e038adc31ccd38989f077d08/); bsc `0x723c4a...1f9092` | ⚠️ Unaudited |
| Maximillion | unknown | ethereum | 2 deployments: ethereum [`0x060917...e5aa2f`](./contracts/ethereum-1/0x06091717521c2002f2859c75f53987eaf1e5aa2f/); bsc `0x803bb4...9b6245` | ⚠️ Unaudited |
| MultiSend | unknown | bsc | 3 deployments: ethereum `0x4f85a4...d12ed0`; bsc [`0x4237b8...44e37e`](./contracts/bsc-56/0x4237b8469e17231e5327be366eaed6c08844e37e/); bsc `0xf56350...35366b` | ⚠️ Unaudited |
| Normalizer | unknown | ethereum | 4 deployments: ethereum [`0x3ce448...69014a`](./contracts/ethereum-1/0x3ce448eea6a158dd5937d5e9137e6b9ece69014a/); ethereum `0x734279...c6d3e9`; ethereum `0x9c3d76...20c187`; ethereum `0xfcdef2...e0295c` | ⚠️ Unaudited |
| OracleV1 | operational_periphery | ethereum | [`0xc92ae5...fa9eda`](./contracts/ethereum-1/0xc92ae5e2a955a3440f677c1c60d48baa1cfa9eda/) | ⚠️ Unaudited |
| OracleV2 | operational_periphery | ethereum | [`0xa9465f...167f53`](./contracts/ethereum-1/0xa9465f75eecfa4293abcafc02d68e79bd4167f53/) | ⚠️ Unaudited |
| PriceFeed | operational_periphery | ethereum | [`0x01ae37...cab2b1`](./contracts/ethereum-1/0x01ae37a333d842428c668d6cc7130e552acab2b1/) | ⚠️ Unaudited |
| PriceOracle | operational_periphery | ethereum | 5 deployments: ethereum [`0x3abce8...525cf7`](./contracts/ethereum-1/0x3abce8f1db258fbc64827b0926e14a0f90525cf7/); ethereum `0x4250a6...576cd2`; ethereum `0x9a975f...659ad2`; bsc `0x541876...d14847`; bsc `0x78af64...141b4b` | ⚠️ Unaudited |
| PriceOracleFUSDT | operational_periphery | bsc | [`0x3b4bc1...e39caa`](./contracts/bsc-56/0x3b4bc12971290b9561b99b77f3bea8c5e9e39caa/) | ⚠️ Unaudited |
| PriceOracleProxy | operational_periphery | ethereum | 20 deployments: ethereum [`0x03445c...d2b69c`](./contracts/ethereum-1/0x03445c9002567a33173cbd2ddc2e0816bdd2b69c/); ethereum `0x0a008c...1c83f0`; ethereum `0x1d8e38...61ae3c`; ethereum `0x338eee...221f1d`; ethereum `0x3a4b89...eeafa1`; ethereum `0x4b7dba...e0188a`; ethereum `0x647a53...091488`; ethereum `0x653f72...823cae`; ethereum `0x6b96c4...8704cb`; ethereum `0x72dbf5...db74a5`; ethereum `0x7ef18d...27f716`; ethereum `0x88e79e...36370d`; ethereum `0x940ce2...2ed6dd`; ethereum `0x9a5135...b2fed0`; ethereum `0xc78cad...50da23`; ethereum `0xe4c1e5...284e97`; ethereum `0xecb0b5...dc1886`; ethereum `0xf74f97...b6cd94`; bsc `0xa82958...819477`; bsc `0xdce8c9...1b0ca4` | ⚠️ Unaudited |
| PriceOracleProxyBSC | operational_periphery | bsc | 7 deployments: bsc [`0x64e1c4...356041`](./contracts/bsc-56/0x64e1c4fbba871b391333bcfce817a55aef356041/); bsc `0x6eedcf...51cd6a`; bsc `0x913b6e...2a3d7c`; bsc `0xa7ae01...8a1c7d`; bsc `0xab548f...48c408`; bsc `0xaf2b0a...5eced4`; bsc `0xc2e7fc...1177dd` | ⚠️ Unaudited |
| PriceOracleProxyIB | operational_periphery | ethereum | 3 deployments: ethereum [`0xb09b75...7661fc`](./contracts/ethereum-1/0xb09b75916c5f4097c8b5812e63e216fef97661fc/); ethereum `0xde19f5...297266`; ethereum `0xe4e9f6...6fdc4b` | ⚠️ Unaudited |
| PriceOracleProxyUSD | operational_periphery | ethereum | 2 deployments: ethereum [`0x3ab0e4...7e01d2`](./contracts/ethereum-1/0x3ab0e418be311a0bd00c9bac0d0e2029017e01d2/); arbitrum `0xe82225...f07e78` | ⚠️ Unaudited |
| PriceOracleV1 | operational_periphery | arbitrum | [`0x20ca53...114c24`](./contracts/arbitrum-42161/0x20ca53e2395fa571798623f1cfbd11fe2c114c24/) | ⚠️ Unaudited |
| Rescuer | unknown | ethereum | [`0xcc5a5a...3401db`](./contracts/ethereum-1/0xcc5a5a4d50ed382007935b3d4dd0fe1a523401db/) | ⚠️ Unaudited |
| ReserveManager | governance | ethereum | 11 deployments: ethereum [`0x0c5bf1...1beaed`](./contracts/ethereum-1/0x0c5bf19618a8fcddb132d82bc6c5ea736a1beaed/); ethereum `0x1533ba...0b2bcb`; ethereum `0x1c1819...2556ac`; ethereum `0x2919ec...40eab4`; ethereum `0x5a6a7b...8a2c91`; ethereum `0x8c37ed...4306f4`; ethereum `0xa741bc...0190eb`; ethereum `0xbdfe60...45d41a`; ethereum `0xd073e9...5808a1`; ethereum `0xdde831...f8fe53`; ethereum `0xf13252...7f64ca` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | ethereum | [`0xa124b7...c5cc6b`](./contracts/ethereum-1/0xa124b7514217e06f88ffa833e37289e397c5cc6b/) | ⚠️ Unaudited |
| StableConverter | unknown | bsc | 2 deployments: ethereum `0xe649d8...489e30`; bsc [`0x028337...aa48b3`](./contracts/bsc-56/0x028337c13489dff71f8afe9aa9d1d17969aa48b3/) | ⚠️ Unaudited |
| StakingRewardsLock | unknown | ethereum | 21 deployments: ethereum [`0x0b471a...85e150`](./contracts/ethereum-1/0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150/); ethereum `0x1676fc...a5981c`; ethereum `0x1e5fe7...1c3349`; ethereum `0x224061...037462`; ethereum `0x268900...c227da`; ethereum `0x2ab765...a04d61`; ethereum `0x3ba3c0...a2129e`; ethereum `0x43a8ec...9bceff`; ethereum `0x65bc20...043b36`; ethereum `0x71a808...9922d0`; ethereum `0x8fcb0c...cda3f3`; ethereum `0x9d2850...6898cb`; ethereum `0xadf2b5...b5501a`; ethereum `0xae76e0...061cea`; ethereum `0xb8c3a2...c1bfe1`; ethereum `0xc29e89...d766f5`; ethereum `0xcc5f8c...91f863`; ethereum `0xccd5cb...5c4da0`; ethereum `0xcf679b...84c6e1`; ethereum `0xd032bf...ea541a`; ethereum `0xe53941...274480` | ⚠️ Unaudited |
| TokenRepayment | token | ethereum | [`0xd5370f...dc30d3`](./contracts/ethereum-1/0xd5370fd61478d752b73f57f9527a532847dc30d3/) | ⚠️ Unaudited |
| UsdcRepayment | unknown | ethereum | [`0x84858f...07900c`](./contracts/ethereum-1/0x84858f72d991f11a760dd2d26caff7962307900c/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 47 deployments: ethereum [`0x062887...56b626`](./contracts/ethereum-1/0x06288754f31d100039b21e62a429e4b81e56b626/); ethereum `0x0980f2...5303f7`; ethereum `0x0ca0f0...6f6ace`; ethereum `0x189317...90d4b1`; ethereum `0x20d5d3...d6ad0a`; ethereum `0x28134a...5d720f`; ethereum `0x2ee806...5cd7cc`; ethereum `0x379555...deef31`; ethereum `0x398642...5c0043`; ethereum `0x436775...238ad4`; ethereum `0x448683...46a271`; ethereum `0x468a7b...9af5ab`; ethereum `0x520b78...01db80`; ethereum `0x543e7d...88506b`; ethereum `0x544109...1a0c97`; ethereum `0x5b4058...9e32a1`; ethereum `0x5dc3a3...17072a`; ethereum `0x5eb35d...cae9ce`; ethereum `0x607b34...3bc8e8`; ethereum `0x6a1302...dc26a3`; ethereum `0x6c395d...212053`; ethereum `0x6d693c...0f9505`; ethereum `0x73cf8c...ab6cbd`; ethereum `0x79ea17...a5dfa1`; ethereum `0x7b3c6c...1ab21c`; ethereum `0x7ea717...75d381`; ethereum `0x8b9a81...e92ac2`; ethereum `0x977507...31be67`; ethereum `0x98182b...d0eb7a`; ethereum `0x98d6af...86d583`; ethereum `0x9b21eb...8cb971`; ethereum `0x9bf875...3b3b6e`; ethereum `0xa70b9c...5c7894`; ethereum `0xa7b0c2...f8bb9e`; ethereum `0xa9d613...e974fe`; ethereum `0xaec7cf...f8cb30`; ethereum `0xb3c68d...3edf56`; ethereum `0xc29c28...b5a837`; ethereum `0xd2a77d...6f0470`; ethereum `0xd4409b...9b9ffa`; ethereum `0xd5794e...ffbd86`; ethereum `0xd96877...26543f`; ethereum `0xe32421...d3b86f`; ethereum `0xe82225...f07e78`; ethereum `0xf29ce7...408d6d`; ethereum `0xf976c9...bc5c8a`; ethereum `0xfbbfa5...bd328d` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | operational_periphery | bsc | 3 deployments: ethereum `0x521a06...59e88d`; ethereum `0xa1fb18...f341ac`; bsc [`0x1d0914...bdc10c`](./contracts/bsc-56/0x1d09144f3479bb805cb7c92346987420bcbdc10c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Comptroller | unknown | ethereum | 58 deployments: ethereum [`0x02e795...7c705b`](./contracts/ethereum-1/0x02e795eec131246128346d17d2f564d7bf7c705b/); ethereum `0x1cc6cf...94e1c7`; ethereum `0x3ca378...6446ae`; ethereum `0x3d5bc3...ae9258`; ethereum `0x44a420...dff193`; ethereum `0x4b1479...e5a083`; ethereum `0x4ecedd...d6c00e`; ethereum `0x52b8dd...ba9ee6`; ethereum `0x5d6202...2117c8`; ethereum `0x5ef4c9...1205b4`; ethereum `0x66e9c7...386fa6`; ethereum `0x76b34a...063828`; ethereum `0x78962e...892963`; ethereum `0x793027...cb16bd`; ethereum `0x79757e...5a86c7`; ethereum `0x7aa375...9f53ba`; ethereum `0x7d2657...3f8ea9`; ethereum `0x7d506f...ef9902`; ethereum `0x823498...239367`; ethereum `0x86c2bb...2e4fe9`; ethereum `0x8a2707...e4e088`; ethereum `0x965473...3ffe28`; ethereum `0x9ac75f...7b64a7`; ethereum `0xa05e35...a7e88d`; ethereum `0xa7d4f8...34708b`; ethereum `0xab1c34...144cbb`; ethereum `0xb03614...64df27`; ethereum `0xb27719...6620fe`; ethereum `0xb4cf50...38f957`; ethereum `0xc4ff0a...d0c4e9`; ethereum `0xc855b3...dd2dde`; ethereum `0xcbb626...e4111c`; ethereum `0xcdca61...8d5aa3`; ethereum `0xd96c52...76367d`; ethereum `0xe293a9...f76e63`; ethereum `0xe376ed...d11bb9`; ethereum `0xea4b8d...a75539`; ethereum `0xf1cd00...f494f4`; bsc `0x0549a7...99d618`; bsc `0x105a2a...67560b`; bsc `0x127bae...272390`; bsc `0x241292...4e8629`; bsc `0x2450fd...39a519`; bsc `0x3952a5...4155a0`; bsc `0x3b36ad...a208b2`; bsc `0x49a08f...988fb4`; bsc `0x4db74b...82d4fd`; bsc `0x589de0...4cc0ba`; bsc `0x643f20...44157d`; bsc `0x8075f0...8ba6b9`; bsc `0x82cd95...f05125`; bsc `0xcaef46...4e20ae`; bsc `0xf851a6...406a81`; bsc `0xffd757...2cca85`; polygon `0x20ca53...114c24`; arbitrum `0x66e9c7...386fa6`; arbitrum `0xbadac5...9813ee`; arbitrum `0xcc3e89...53f6fd` | ⚠️ Unaudited (bytecode match) |
| TripleSlopeRateModel | operational_periphery | bsc | 17 deployments: ethereum `0x1b0c25...747556`; ethereum `0x26c325...868710`; ethereum `0x4aa560...2970a5`; ethereum `0x61e9a6...995fad`; ethereum `0x812c0b...db2190`; ethereum `0xbadac5...9813ee`; ethereum `0xd369e8...aa7891`; ethereum `0xd52869...e54696`; ethereum `0xd6c04c...c0ac6f`; ethereum `0xe2d39a...4bbd2e`; ethereum `0xe7db46...9786be`; bsc [`0x023ca9...6d1ff9`](./contracts/bsc-56/0x023ca9c6a96151d149b7f54cd0d904f80a6d1ff9/); bsc `0x5f18b4...1c7ef4`; bsc `0x8122e8...90b899`; bsc `0xd68f6c...291bff`; bsc `0xeb6890...12ca63`; arbitrum `0xee0c0a...788328` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (30)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0a4acc...8bf2f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0e86b6...fd740d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d919a...b9b858` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x24e45b...69ccd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x25bd5c...2c630e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b5ebd...068e86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3fa4a7...2ccc4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5ceb82...a16628` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x703390...e69112` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x867072...f40f94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9b7f98...9e56c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d7768...d2664d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa99d1f...be6f44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xadb302...cfb7d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb424be...33e95f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe37be6...ecb7c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf7aecf...9adb1c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x284bb6...47749b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x32a237...42d28c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4fb9e4...c0f039` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6af473...28822d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7ea00a...90ae70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x84d6fe...807604` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc977c6...0ea2bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe630c7...21786e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe85d39...275afc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5eb35d...cae9ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x520b78...01db80` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x812c0b...db2190` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd52869...e54696` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Publications GitHub](https://github.com/trailofbits/publications/blob/master/reviews/CREAMSummary.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [trailofbits-CREAMSummary.pdf](https://github.com/CreamFi/compound-protocol/blob/master/audits/trailofbits-CREAMSummary.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x00e5c0...c84bf3`](./contracts/ethereum-1/0x00e5c0774a5f065c285068170b20393925c84bf3/) | CCollateralCapErc20Delegate | token | $2,243,691,260.85 | Verified native implementation with $2,243,691,260.85 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2db6c8...5066d6`](./contracts/ethereum-1/0x2db6c82ce72c8d7d770ba1b5f5ed0b6e075066d6/) | CCollateralCapErc20CheckRepayDelegate | token | $19,470,061.02 | Verified native implementation with $19,470,061.02 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x011a01...230afa`](./contracts/ethereum-1/0x011a014d5e8eb4771e575bb1000318d509230afa/) | CErc20Delegate | token | $12,972,069.41 | Verified native implementation with $12,972,069.41 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f0800...909b9e`](./contracts/ethereum-1/0x4f08008ef178929e3866f1aeea75beaa8b909b9e/) | CCTokenDelegate | token | $120,144.88 | Verified native implementation with $120,144.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x018a82...9ff5ab`](./contracts/ethereum-1/0x018a82a5bd6e0a4ae8c5cf54527775d17d9ff5ab/) | CCapableErc20Delegate | token | $49,971.88 | Verified native implementation with $49,971.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf4d48c...4d7234`](./contracts/arbitrum-42161/0xf4d48ce3ee1ac3651998971541badbb9a14d7234/) | StandardArbERC20 | token | $11.68 | Verified native implementation with $11.68 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f7347...120326`](./contracts/bsc-56/0x2f7347ebb25f2e314a5806b71dd67fe96c120326/) | BEP20CREAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb16a4e...eb1d4d`](./contracts/bsc-56/0xb16a4e6086fc32debc38388f7d156a9b8deb1d4d/) | BNBReserveReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04c61e...ee69fb`](./contracts/bsc-56/0x04c61ef58a6f1d6c572045a39a5434ab9dee69fb/) | CCakeLPDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15cc70...93bc67`](./contracts/bsc-56/0x15cc701370cb8ada2a2b6f4226ec5cf6aa93bc67/) | CCapableWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a6fd0...2b930f`](./contracts/ethereum-1/0x6a6fd01c92f0390670cce399b532017cdb2b930f/) | CCollateralCapErc20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48b4a7...f2dbc5`](./contracts/ethereum-1/0x48b4a7d479ac40a92795e5e88d2c7e9490f2dbc5/) | CCollateralCapErc20NoInterestDelegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e821d...11c2cb`](./contracts/ethereum-1/0x0e821d855f4fc427200484ae42369b8a6611c2cb/) | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ffe17...90ff3a`](./contracts/bsc-56/0x1ffe17b99b439be0afc831239ddecda2a790ff3a/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ba592...7cb200`](./contracts/ethereum-1/0x2ba592f78db6436527729929aaf6c908497cb200/) | Comp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02e795...7c705b`](./contracts/ethereum-1/0x02e795eec131246128346d17d2f564d7bf7c705b/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49d72e...9fdb64`](./contracts/ethereum-1/0x49d72e3973900a195a155a46441f0c08179fdb64/) | CreamEth2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x017260...b19a8d`](./contracts/ethereum-1/0x0172602c7c8e07267bd58454dbf1016469b19a8d/) | CreamETH2Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8584b7...40ca64`](./contracts/ethereum-1/0x8584b7ac8b1e4255c18784928fbf1c6fca40ca64/) | CreamLiquidate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x780f75...7a8b45`](./contracts/ethereum-1/0x780f75ad0b02afeb6039672e6a6cede7447a8b45/) | CreamLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb146bf...20d0f9`](./contracts/ethereum-1/0xb146bf59f30a54750209ef529a766d952720d0f9/) | CreamVotingPower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d0914...bdc10c`](./contracts/ethereum-1/0x1d09144f3479bb805cb7c92346987420bcbdc10c/) | CreamY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef01e1...b8f17b`](./contracts/ethereum-1/0xef01e12d98338d2ab395ddfe41e4ec3eb9b8f17b/) | CRenameDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5462b...c11deb`](./contracts/ethereum-1/0xa5462bc7bb1dd43b0db84c2de71e34a03ac11deb/) | CRETH2Repayment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b4722...151ffb`](./contracts/ethereum-1/0x0b4722779a0ed7d79101c0d251987e76d4151ffb/) | CSLPDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0dfd3b...138ba7`](./contracts/bsc-56/0x0dfd3bca58f7e0639e87fba6f778c87bfa138ba7/) | CTokenAdmin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01e2b7...7ca922`](./contracts/bsc-56/0x01e2b783d076087f3e00a852ae0ae45ca77ca922/) | CWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ec6a2...cd65c7`](./contracts/ethereum-1/0x4ec6a2ddfe7c70336009149b4831bf3baecd65c7/) | EasyConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a21ab...479829`](./contracts/ethereum-1/0x1a21ab52d1ca1312232a72f4cf4389361a479829/) | FlashloanLender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x085682...60e99b`](./contracts/ethereum-1/0x085682716f61a72bf8c573fbaf88cca68c60e99b/) | IBAgreement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ae50b...46b3ff`](./contracts/ethereum-1/0x9ae50bd64e45fd87dd05c768ff314b8fe246b3ff/) | IBAgreementV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b12f0...14ac17`](./contracts/ethereum-1/0x5b12f04e22384b01f42ed14da23eacd21f14ac17/) | IronBankTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfecc2d...25736f`](./contracts/ethereum-1/0xfecc2d4689394202eabe6329acc1a0c6fe25736f/) | JumpRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x004d28...d524fa`](./contracts/bsc-56/0x004d2829e5c21377dbe561e15c8a830389d524fa/) | LiquidityMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x56d21e...077d08`](./contracts/bsc-56/0x56d21e79d72d7f62e038adc31ccd38989f077d08/) | LiquidityMiningLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x060917...e5aa2f`](./contracts/ethereum-1/0x06091717521c2002f2859c75f53987eaf1e5aa2f/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4237b8...44e37e`](./contracts/bsc-56/0x4237b8469e17231e5327be366eaed6c08844e37e/) | MultiSend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ce448...69014a`](./contracts/ethereum-1/0x3ce448eea6a158dd5937d5e9137e6b9ece69014a/) | Normalizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc92ae5...fa9eda`](./contracts/ethereum-1/0xc92ae5e2a955a3440f677c1c60d48baa1cfa9eda/) | OracleV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9465f...167f53`](./contracts/ethereum-1/0xa9465f75eecfa4293abcafc02d68e79bd4167f53/) | OracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3abce8...525cf7`](./contracts/ethereum-1/0x3abce8f1db258fbc64827b0926e14a0f90525cf7/) | PriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3b4bc1...e39caa`](./contracts/bsc-56/0x3b4bc12971290b9561b99b77f3bea8c5e9e39caa/) | PriceOracleFUSDT | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03445c...d2b69c`](./contracts/ethereum-1/0x03445c9002567a33173cbd2ddc2e0816bdd2b69c/) | PriceOracleProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x64e1c4...356041`](./contracts/bsc-56/0x64e1c4fbba871b391333bcfce817a55aef356041/) | PriceOracleProxyBSC | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb09b75...7661fc`](./contracts/ethereum-1/0xb09b75916c5f4097c8b5812e63e216fef97661fc/) | PriceOracleProxyIB | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ab0e4...7e01d2`](./contracts/ethereum-1/0x3ab0e418be311a0bd00c9bac0d0e2029017e01d2/) | PriceOracleProxyUSD | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x20ca53...114c24`](./contracts/arbitrum-42161/0x20ca53e2395fa571798623f1cfbd11fe2c114c24/) | PriceOracleV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc5a5a...3401db`](./contracts/ethereum-1/0xcc5a5a4d50ed382007935b3d4dd0fe1a523401db/) | Rescuer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c5bf1...1beaed`](./contracts/ethereum-1/0x0c5bf19618a8fcddb132d82bc6c5ea736a1beaed/) | ReserveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x028337...aa48b3`](./contracts/bsc-56/0x028337c13489dff71f8afe9aa9d1d17969aa48b3/) | StableConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b471a...85e150`](./contracts/ethereum-1/0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150/) | StakingRewardsLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd5370f...dc30d3`](./contracts/ethereum-1/0xd5370fd61478d752b73f57f9527a532847dc30d3/) | TokenRepayment | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x023ca9...6d1ff9`](./contracts/bsc-56/0x023ca9c6a96151d149b7f54cd0d904f80a6d1ff9/) | TripleSlopeRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84858f...07900c`](./contracts/ethereum-1/0x84858f72d991f11a760dd2d26caff7962307900c/) | UsdcRepayment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x062887...56b626`](./contracts/ethereum-1/0x06288754f31d100039b21e62a429e4b81e56b626/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d0914...bdc10c`](./contracts/bsc-56/0x1d09144f3479bb805cb7c92346987420bcbdc10c/) | WhitePaperInterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 78 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2998] Publications GitHub
- [2999] trailofbits-CREAMSummary.pdf

Fork inheritance lineage and inherited audits are included when available.
