# Agentic Audit Brief: Wombat Exchange

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 11 (3 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Wombat Exchange (`wombat-exchange`)
- Website: [https://www.wombat.exchange/](https://www.wombat.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, polygon, scroll
- Contract surface: 658 unique implementations (678 raw deployments)
- Coverage basis: 3/116 confirmed own live verified implementations (2.6%); conservative 2.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,497,111.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Wombat Exchange. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 118 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, optimism, scroll. Structural roles: 109 core, 8 supporting, 1 unclassified. 110 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 118
- Structural roles: core (109), supporting (8), unclassified (1)
- Contract kinds: contract (118)
- Detected standards: ownable (108), erc20 (106), erc20permit (106), accesscontrol (4), erc165 (4), erc1967proxy (2)
- Frameworks: openzeppelin (113), openzeppelin-upgradeable (108), chainlink (1)
- Upgradeable-pattern rows: 110

## Fork Analysis

2 of 321 contracts are derived from known codebases. 319 contracts have no detected origin.

### Forked Contracts

**PriceFeedAsset** (`0xa9a081...cd23cc`, chain 56)
Origin: bass-exchange (`0x2bcaa7...ec0a6a`)
Containment: 86.7% - 13 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- getRelativePrice()
- setPriceFeed(IPriceFeed)

Removals (removed from original):
- addSkimAdmin(address)
- removeSkimAdmin(address)

**SkimmableAsset** (`0x88beb1...b87117`, chain 56)
Origin: bass-exchange (`0x2bcaa7...ec0a6a`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0020a8...680db6`, chain 1)
- UnnamedContract (`0x04d4e1...8d563d`, chain 1)
- UnnamedContract (`0x05a33c...8f4d32`, chain 1)
- UnnamedContract (`0x124911...ed89d3`, chain 1)
- UnnamedContract (`0x1f0ae4...4b09b2`, chain 1)
- UnnamedContract (`0x3161f4...16e854`, chain 1)
- UnnamedContract (`0x32a936...09442c`, chain 1)
- UnnamedContract (`0x49db5f...523330`, chain 1)
- UnnamedContract (`0x4dfa92...7b7e12`, chain 1)
- UnnamedContract (`0x51e073...769606`, chain 1)
- UnnamedContract (`0x62a83c...b6b6f4`, chain 1)
- UnnamedContract (`0x647cc8...d5ac81`, chain 1)
- UnnamedContract (`0x724515...548068`, chain 1)
- UnnamedContract (`0x75eaa8...6235fe`, chain 1)
- UnnamedContract (`0x7bb67c...1dcdba`, chain 1)
- UnnamedContract (`0x8843b0...345efb`, chain 1)
- UnnamedContract (`0x8df112...1adbae`, chain 1)
- UnnamedContract (`0x94019d...760524`, chain 1)
- UnnamedContract (`0x9c02ea...df25cc`, chain 1)
- UnnamedContract (`0xa0e74f...61025a`, chain 1)
- UnnamedContract (`0xa12ba2...695502`, chain 1)
- UnnamedContract (`0xa2cbe3...ad2f40`, chain 1)
- UnnamedContract (`0xa45c0a...ba3800`, chain 1)
- UnnamedContract (`0xaceb58...3419ca`, chain 1)
- UnnamedContract (`0xc096ff...a5a9fa`, chain 1)
- UnnamedContract (`0xc693f3...113c82`, chain 1)
- UnnamedContract (`0xc6bc78...ba6cd1`, chain 1)
- UnnamedContract (`0xc9bfc3...7e5d1a`, chain 1)
- UnnamedContract (`0xe7e02c...6f9cb0`, chain 1)
- UnnamedContract (`0xe9e88b...1df733`, chain 1)
- UnnamedContract (`0xef0b4d...6aaf94`, chain 1)
- UnnamedContract (`0xf8e32c...160734`, chain 1)
- UnnamedContract (`0x1a0231...0c6fbd`, chain 10)
- UnnamedContract (`0x2bb4ea...90e29c`, chain 10)
- UnnamedContract (`0x489818...ad3d01`, chain 10)
- UnnamedContract (`0x50a39b...c5bd10`, chain 10)
- UnnamedContract (`0x6bb82a...a0f919`, chain 10)
- UnnamedContract (`0xb86ba6...8fcafa`, chain 10)
- UnnamedContract (`0xcaa5a9...848555`, chain 10)
- UnnamedContract (`0xef0b4d...6aaf94`, chain 10)
- UnnamedContract (`0x015542...bece5e`, chain 56)
- UnnamedContract (`0x04299f...15ffa4`, chain 56)
- UnnamedContract (`0x048dc3...118047`, chain 56)
- UnnamedContract (`0x052045...fc74b2`, chain 56)
- UnnamedContract (`0x059208...ccc348`, chain 56)
- UnnamedContract (`0x05f727...ead09a`, chain 56)
- UnnamedContract (`0x06228b...2e48b5`, chain 56)
- UnnamedContract (`0x083640...2f9f55`, chain 56)
- UnnamedContract (`0x08401f...8880ed`, chain 56)
- UnnamedContract (`0x09da88...6705f9`, chain 56)
- UnnamedContract (`0x0c735f...6c41de`, chain 56)
- UnnamedContract (`0x191601...ad205b`, chain 56)
- UnnamedContract (`0x1b507b...276d35`, chain 56)
- UnnamedContract (`0x1ee156...754bef`, chain 56)
- UnnamedContract (`0x20d7b9...a6ecd1`, chain 56)
- UnnamedContract (`0x251577...7a5c9b`, chain 56)
- UnnamedContract (`0x27306b...7ece80`, chain 56)
- UnnamedContract (`0x277e77...33c903`, chain 56)
- UnnamedContract (`0x299642...143b6b`, chain 56)
- UnnamedContract (`0x2c0d2b...207d86`, chain 56)
- UnnamedContract (`0x2c5464...fd7955`, chain 56)
- UnnamedContract (`0x2ea772...ac5da4`, chain 56)
- UnnamedContract (`0x2fff85...90ecc0`, chain 56)
- UnnamedContract (`0x312bc7...055fb0`, chain 56)
- UnnamedContract (`0x32816b...376dbb`, chain 56)
- UnnamedContract (`0x3f2e97...05c05d`, chain 56)
- UnnamedContract (`0x3f9ec2...7e61c8`, chain 56)
- UnnamedContract (`0x401384...71b804`, chain 56)
- UnnamedContract (`0x407c0f...a1810e`, chain 56)
- UnnamedContract (`0x408411...9892a1`, chain 56)
- UnnamedContract (`0x48f6a8...9f2a14`, chain 56)
- UnnamedContract (`0x4cbdc4...1e451f`, chain 56)
- UnnamedContract (`0x52eb70...b2e3d9`, chain 56)
- UnnamedContract (`0x5cc2cb...24031a`, chain 56)
- UnnamedContract (`0x5e5dcb...d3092a`, chain 56)
- UnnamedContract (`0x60aca4...52e1bd`, chain 56)
- UnnamedContract (`0x624be6...eb1e26`, chain 56)
- UnnamedContract (`0x6521a5...86cd7b`, chain 56)
- UnnamedContract (`0x6aa55c...10e046`, chain 56)
- UnnamedContract (`0x6b98d2...3d1b8c`, chain 56)
- UnnamedContract (`0x6dd711...782b0b`, chain 56)
- UnnamedContract (`0x6f1c68...ad5bfa`, chain 56)
- UnnamedContract (`0x71e41c...03e623`, chain 56)
- UnnamedContract (`0x75eaa8...6235fe`, chain 56)
- UnnamedContract (`0x790328...bfd46f`, chain 56)
- UnnamedContract (`0x7a8faa...c6e38e`, chain 56)
- UnnamedContract (`0x7dc7e9...489649`, chain 56)
- UnnamedContract (`0x7f95d3...2202c4`, chain 56)
- UnnamedContract (`0x861c50...fe2320`, chain 56)
- UnnamedContract (`0x8779d3...a301b1`, chain 56)
- UnnamedContract (`0x8ad47d...a49da2`, chain 56)
- UnnamedContract (`0x8b892b...cde060`, chain 56)
- UnnamedContract (`0x8dc7b0...e87b47`, chain 56)
- UnnamedContract (`0x8df112...1adbae`, chain 56)
- UnnamedContract (`0x8e926c...167826`, chain 56)
- UnnamedContract (`0x919a70...069c71`, chain 56)
- UnnamedContract (`0x92e8b5...870dcb`, chain 56)
- UnnamedContract (`0x949856...6c201c`, chain 56)
- UnnamedContract (`0x966c37...e71c01`, chain 56)
- UnnamedContract (`0x9a39f4...5f3d28`, chain 56)
- UnnamedContract (`0x9f3f1e...140655`, chain 56)
- UnnamedContract (`0xa12ba2...695502`, chain 56)
- UnnamedContract (`0xa75f18...7e013b`, chain 56)
- UnnamedContract (`0xab7700...3ab145`, chain 56)
- UnnamedContract (`0xaceb58...3419ca`, chain 56)
- UnnamedContract (`0xad87cb...d930d6`, chain 56)
- UnnamedContract (`0xb0219a...01edb0`, chain 56)
- UnnamedContract (`0xb2a48d...a655bc`, chain 56)
- UnnamedContract (`0xb8b1b7...f9f684`, chain 56)
- UnnamedContract (`0xbd4420...ec77de`, chain 56)
- UnnamedContract (`0xbed9b7...297b80`, chain 56)
- UnnamedContract (`0xbefb02...6f6091`, chain 56)
- UnnamedContract (`0xc007e8...73676f`, chain 56)
- UnnamedContract (`0xc26b7c...945a2c`, chain 56)
- UnnamedContract (`0xc4992f...74afaf`, chain 56)
- UnnamedContract (`0xc609e2...99fa14`, chain 56)
- UnnamedContract (`0xc7a628...f38e43`, chain 56)
- UnnamedContract (`0xc7a6ba...431974`, chain 56)
- UnnamedContract (`0xc7fbef...cfcd6c`, chain 56)
- UnnamedContract (`0xc897a2...914a9f`, chain 56)
- UnnamedContract (`0xc9bfc3...7e5d1a`, chain 56)
- UnnamedContract (`0xcf2e56...2f0536`, chain 56)
- UnnamedContract (`0xd29b3e...10ca01`, chain 56)
- UnnamedContract (`0xd66fe4...2e717d`, chain 56)
- UnnamedContract (`0xd80356...382915`, chain 56)
- UnnamedContract (`0xd8e4fd...f22c10`, chain 56)
- UnnamedContract (`0xdfba6a...b20f1d`, chain 56)
- UnnamedContract (`0xe23753...a0c1cb`, chain 56)
- UnnamedContract (`0xe2a60c...9dbc67`, chain 56)
- UnnamedContract (`0xe4fd5d...6c76bd`, chain 56)
- UnnamedContract (`0xea6cdd...fa7892`, chain 56)
- UnnamedContract (`0xede96f...a48ab3`, chain 56)
- UnnamedContract (`0xeeb5a7...67ce2e`, chain 56)
- UnnamedContract (`0xf1e604...bf3fef`, chain 56)
- UnnamedContract (`0xf80722...8de4d2`, chain 56)
- UnnamedContract (`0x20d7b9...a6ecd1`, chain 8453)
- UnnamedContract (`0x6521a5...86cd7b`, chain 8453)
- UnnamedContract (`0xc9bfc3...7e5d1a`, chain 8453)
- UnnamedContract (`0xd673f3...c70fb8`, chain 8453)
- UnnamedContract (`0xe07829...2036d8`, chain 8453)
- UnnamedContract (`0x08c6e9...d3fd4d`, chain 42161)
- UnnamedContract (`0x096f99...4d7b24`, chain 42161)
- UnnamedContract (`0x12fa5a...0af978`, chain 42161)
- UnnamedContract (`0x19f477...13d3b3`, chain 42161)
- UnnamedContract (`0x1edfa9...15bf03`, chain 42161)
- UnnamedContract (`0x20d7ee...7302f1`, chain 42161)
- UnnamedContract (`0x259ccd...1a33ee`, chain 42161)
- UnnamedContract (`0x29eeb2...18ec91`, chain 42161)
- UnnamedContract (`0x332430...7ae41e`, chain 42161)
- UnnamedContract (`0x381692...58b54c`, chain 42161)
- UnnamedContract (`0x3cc8c8...044d4b`, chain 42161)
- UnnamedContract (`0x3f90a5...3d2d9d`, chain 42161)
- UnnamedContract (`0x488b34...2d3efc`, chain 42161)
- UnnamedContract (`0x4a8686...5296e0`, chain 42161)
- UnnamedContract (`0x4ce537...7a08ba`, chain 42161)
- UnnamedContract (`0x4f7f9b...b52ac2`, chain 42161)
- UnnamedContract (`0x51880c...025d0a`, chain 42161)
- UnnamedContract (`0x51e073...769606`, chain 42161)
- UnnamedContract (`0x5a65cb...d2de8b`, chain 42161)
- UnnamedContract (`0x5fb522...562f54`, chain 42161)
- UnnamedContract (`0x6001f4...631bb9`, chain 42161)
- UnnamedContract (`0x62a83c...b6b6f4`, chain 42161)
- UnnamedContract (`0x6f70c8...6ae695`, chain 42161)
- UnnamedContract (`0x765fda...075543`, chain 42161)
- UnnamedContract (`0x7b6041...5b7c64`, chain 42161)
- UnnamedContract (`0x8b892b...cde060`, chain 42161)
- UnnamedContract (`0x8cd967...6980de`, chain 42161)
- UnnamedContract (`0x8e16b6...7f8561`, chain 42161)
- UnnamedContract (`0x90ecdd...a338b6`, chain 42161)
- UnnamedContract (`0x917caf...214c1a`, chain 42161)
- UnnamedContract (`0x956454...370401`, chain 42161)
- UnnamedContract (`0x96412c...a3791a`, chain 42161)
- UnnamedContract (`0x9a6578...f2735d`, chain 42161)
- UnnamedContract (`0x9f3f1e...140655`, chain 42161)
- UnnamedContract (`0xa1fdb8...692979`, chain 42161)
- UnnamedContract (`0xa6ef6c...1603e5`, chain 42161)
- UnnamedContract (`0xa9a081...cd23cc`, chain 42161)
- UnnamedContract (`0xae5e81...5ecbdc`, chain 42161)
- UnnamedContract (`0xb9bdfe...5db77b`, chain 42161)
- UnnamedContract (`0xb9e272...f5612b`, chain 42161)
- UnnamedContract (`0xc6bc78...ba6cd1`, chain 42161)
- UnnamedContract (`0xc7a6ba...431974`, chain 42161)
- UnnamedContract (`0xce2bb4...38549a`, chain 42161)
- UnnamedContract (`0xcf20fd...9e4849`, chain 42161)
- UnnamedContract (`0xd58d5e...b163ba`, chain 42161)
- UnnamedContract (`0xdaa191...170211`, chain 42161)
- UnnamedContract (`0xdc82b7...419d5f`, chain 42161)
- UnnamedContract (`0xde509f...626dae`, chain 42161)
- UnnamedContract (`0xe14302...9358d9`, chain 42161)
- UnnamedContract (`0xe3c747...5b8e17`, chain 42161)
- UnnamedContract (`0xe7159f...c56f48`, chain 42161)
- UnnamedContract (`0xe78876...1b1145`, chain 42161)
- UnnamedContract (`0xe933e2...0f762e`, chain 42161)
- UnnamedContract (`0xee9b42...9750cd`, chain 42161)
- UnnamedContract (`0xf1db5b...7de18d`, chain 42161)
- UnnamedContract (`0xf76009...9b35d0`, chain 42161)
- UnnamedContract (`0x108c99...9b3c02`, chain 43114)
- UnnamedContract (`0x6521a5...86cd7b`, chain 43114)
- UnnamedContract (`0x8b2ab4...18a09d`, chain 43114)
- UnnamedContract (`0xab8d5b...7dda0d`, chain 43114)
- UnnamedContract (`0xc9bfc3...7e5d1a`, chain 43114)
- UnnamedContract (`0xd673f3...c70fb8`, chain 43114)
- UnnamedContract (`0xe3abc2...069d87`, chain 43114)
- UnnamedContract (`0x20d7b9...a6ecd1`, chain 534352)
- UnnamedContract (`0xdcc1ec...0732b7`, chain 534352)
- ABnbcAsset (`0xb6d83f...f8855f`, chain 56)
- AnkrStakingAsset (`0x128fa2...08228b`, chain 56)
- AnkrStakingAsset (`0x229028...f3f2c4`, chain 42161)
- Asset (`0x3f90a5...3d2d9d`, chain 1)
- Asset (`0x5dace2...c7bea7`, chain 1)
- Asset (`0x696655...49c7d3`, chain 1)
- Asset (`0x752945...601c95`, chain 1)
- Asset (`0x49db5f...523330`, chain 10)
- Asset (`0x8f5e6f...3b62de`, chain 10)
- Asset (`0x082059...8c9078`, chain 56)
- Asset (`0x17aded...163500`, chain 56)
- Asset (`0x184eb7...d96f75`, chain 56)
- Asset (`0x1f502f...f6723e`, chain 56)
- Asset (`0x1fa71d...e0d38b`, chain 56)
- Asset (`0x24a70c...2ba073`, chain 56)
- Asset (`0x34e109...390b57`, chain 56)
- Asset (`0x3a29df...de962d`, chain 56)
- Asset (`0x3ac762...86b490`, chain 56)
- Asset (`0x3c42e4...78d688`, chain 56)
- Asset (`0x3c8e74...a05367`, chain 56)
- Asset (`0x47ab51...c371eb`, chain 56)
- Asset (`0x4968e2...05d2e6`, chain 56)
- Asset (`0x4f95fe...b988f7`, chain 56)
- Asset (`0x591ccb...70ef87`, chain 56)
- Asset (`0x61e338...345752`, chain 56)
- Asset (`0x681124...3cd685`, chain 56)
- Asset (`0x6b6006...a1cc95`, chain 56)
- Asset (`0x77f645...927391`, chain 56)
- Asset (`0x791b24...5d7946`, chain 56)
- Asset (`0x7ff1ae...905e8f`, chain 56)
- Asset (`0x87073b...c120e4`, chain 56)
- Asset (`0x8df8b5...67b3ce`, chain 56)
- Asset (`0x93012a...98abbc`, chain 56)
- Asset (`0x9d0a46...15dd84`, chain 56)
- Asset (`0x9f9cea...8fda82`, chain 56)
- Asset (`0xa45c0a...ba3800`, chain 56)
- Asset (`0xa6ef6c...1603e5`, chain 56)
- Asset (`0xb43ee2...00b8e2`, chain 56)
- Asset (`0xb5c936...48bcf8`, chain 56)
- Asset (`0xc74a9d...1133cb`, chain 56)
- Asset (`0xcf4349...efb015`, chain 56)
- Asset (`0xd55d01...87a521`, chain 56)
- Asset (`0xeaba29...e68ac2`, chain 56)
- Asset (`0xf31994...25745a`, chain 56)
- Asset (`0xf9bdc8...653cac`, chain 56)
- Asset (`0x06228b...2e48b5`, chain 42161)
- Asset (`0x0fa7b7...e73055`, chain 42161)
- Asset (`0x2977b0...66cfd9`, chain 42161)
- Asset (`0x4552e8...e65c1f`, chain 42161)
- Asset (`0x502a88...abd3a2`, chain 42161)
- Asset (`0x59d8dc...350769`, chain 42161)
- Asset (`0x5ad0b6...b01266`, chain 42161)
- Asset (`0x6add07...bf42c8`, chain 42161)
- Asset (`0x6b7c9d...18c7b2`, chain 42161)
- Asset (`0x75eaa8...6235fe`, chain 42161)
- Asset (`0x7a8ce2...d1a59a`, chain 42161)
- Asset (`0x85cebd...6af003`, chain 42161)
- Asset (`0x878004...5ed525`, chain 42161)
- Asset (`0x9121af...3c6be2`, chain 42161)
- Asset (`0x9a2405...3e975d`, chain 42161)
- Asset (`0xb1ad5c...06c3d9`, chain 42161)
- Asset (`0xb4beb0...c336fb`, chain 42161)
- Asset (`0xb75ed9...aa0fd9`, chain 42161)
- Asset (`0xbcd5e8...1ebd6e`, chain 42161)
- Asset (`0xbcf4c3...47a661`, chain 42161)
- Asset (`0xc74a9d...1133cb`, chain 42161)
- Asset (`0xdddc78...900145`, chain 42161)
- Asset (`0xe5232c...fb2e43`, chain 42161)
- Asset (`0xef9187...df2486`, chain 42161)
- Asset (`0xf4b72e...2e4505`, chain 42161)
- Asset (`0x375883...9ac624`, chain 43114)
- Asset (`0xe43c16...553c21`, chain 534352)
- BnbxAsset (`0x16b372...a509a7`, chain 56)
- BnbxAsset (`0x5d64ed...060f4a`, chain 56)
- BridgeToken (`0xc0b314...540cfb`, chain 1)
- BridgeToken (`0x7b5eb3...9ddf96`, chain 42161)
- BridgeToken (`0xa15e45...3b3382`, chain 43114)
- DynamicAsset (`0x0321d1...740f86`, chain 56)
- DynamicAsset (`0x0e99fb...cc5760`, chain 56)
- DynamicAsset (`0x4447de...8a5ac6`, chain 56)
- DynamicAsset (`0x4d41e9...b8e67e`, chain 56)
- DynamicAsset (`0x5a65cb...d2de8b`, chain 56)
- DynamicAsset (`0x5d38a3...91df38`, chain 56)
- DynamicAsset (`0x6c7b40...d378ce`, chain 56)
- DynamicAsset (`0x90f6f0...2b5201`, chain 56)
- DynamicAsset (`0xd67ede...7e5bb9`, chain 56)
- DynamicAsset (`0xdfde04...b2a9b3`, chain 56)
- DynamicAsset (`0xe0e763...ba83ec`, chain 56)
- DynamicAsset (`0x35c462...1bc6ac`, chain 42161)
- DynamicAsset (`0x468830...350978`, chain 42161)
- DynamicAsset (`0x696655...49c7d3`, chain 42161)
- DynamicAsset (`0x909715...f19108`, chain 42161)
- DynamicAsset (`0xe62880...be798d`, chain 42161)
- DynamicAsset (`0x29eeb2...18ec91`, chain 43114)
- ERC4626Asset (`0x25c9dd...04c914`, chain 1)
- GnosisSafeProxy (`0x5781b4...b353b1`, chain 1)
- GnosisSafeProxy (`0xc37a89...aadf48`, chain 56)
- GnosisSafeProxy (`0xc37a89...aadf48`, chain 42161)
- OptimizedTransparentUpgradeableProxy (`0x3da628...b5b0cc`, chain 56)
- OptimizedTransparentUpgradeableProxy (`0x80f088...7337ce`, chain 534352)
- PriceFeedAsset (`0x2a2020...346aaa`, chain 42161)
- rBNBAsset (`0x56177d...16410c`, chain 56)
- sAVAXAsset (`0xc096ff...a5a9fa`, chain 43114)
- SkimmableAsset (`0xbd459e...c273b1`, chain 56)
- SkimmableAsset (`0xbd7568...fa35f0`, chain 42161)
- SkimmableAsset (`0xf9c235...82a274`, chain 42161)
- SnBNBAsset (`0xaa0811...148ee8`, chain 56)
- StkbnbAsset (`0x0e202a...d0679f`, chain 56)
- WBETHAsset (`0x975693...51d57f`, chain 56)
- WombatERC20 (`0xad6742...b94fb1`, chain 56)
- WombatRouter (`0x6bb82a...a0f919`, chain 1)
- WombatRouter (`0x19609b...a4add7`, chain 56)
- WombatRouter (`0xc4b2f9...580668`, chain 42161)
- WstETHAsset (`0xeb7e2f...5f7465`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 118; live-surface rows included: 118 (116 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 321/331 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/116 (2.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 321 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 329 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 321 of 658 unique; 337 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/129
- Verified + Unaudited implementations: 126
- Verified by bytecode match: 0
- Unverified implementations: 529
- Unique implementations: 658
- Raw deployments: 678
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 1.6% | 2024-08 |
| Zokyo | Tier 2 | 1 | 0.8% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VeWom | unknown | project_anchor | own_supporting | 1 | bsc | unit-262552 | `0x3da628...b5b0cc` | ✅ Audited |
| WombatERC20 | token | project_anchor | own_supporting | 0 | bsc | unit-262494 | `0xad6742...b94fb1` | ✅ Audited |
| WombatRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-262399 | `0x19609b...a4add7` | ✅ Audited |

### ⚠️ Verified + Unaudited (126)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ABnbcAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d2dea...96406b` | ⚠️ Unaudited |
| ABnbcAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262501 | `0xb6d83f...f8855f` | ⚠️ Unaudited |
| AnkrStakingAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262394 | `0x128fa2...08228b` | ⚠️ Unaudited |
| AnkrStakingAsset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262279 | `0x229028...f3f2c4` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262230 | `0x3f90a5...3d2d9d` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262234 | `0x5dace2...c7bea7` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262237 | `0x696655...49c7d3` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262240 | `0x752945...601c95` | ⚠️ Unaudited |
| Asset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 16 deployments: optimism `0x0321d1...740f86`; optimism `0x124911...ed89d3`; optimism `0x20d7ee...7302f1`; optimism `0x2943f5...72936e`; optimism `0x96b1b2...69f197`; optimism `0xe314d3...7f9b2c`; optimism `0xe933e2...0f762e`; optimism `0xee9b42...9750cd`; bsc `0xcec37c...62279b`; base `0x375883...9ac624`; base `0xd05cf2...11e47b`; base `0xe2a60c...9dbc67`; arbitrum `0x35876f...dc6563`; arbitrum `0xdce5e1...cf3816`; avalanche `0xd05cf2...11e47b`; scroll `0xe2a60c...9dbc67` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | optimism | unit-262264 | `0x49db5f...523330` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | optimism | unit-262267 | `0x8f5e6f...3b62de` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262387 | `0x082059...8c9078` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262396 | `0x17aded...163500` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262397 | `0x184eb7...d96f75` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262402 | `0x1f502f...f6723e` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262403 | `0x1fa71d...e0d38b` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262405 | `0x24a70c...2ba073` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262416 | `0x34e109...390b57` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262417 | `0x3a29df...de962d` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262418 | `0x3ac762...86b490` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262419 | `0x3c42e4...78d688` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262420 | `0x3c8e74...a05367` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262427 | `0x47ab51...c371eb` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262430 | `0x4968e2...05d2e6` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262433 | `0x4f95fe...b988f7` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262436 | `0x591ccb...70ef87` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262444 | `0x61e338...345752` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262447 | `0x681124...3cd685` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262449 | `0x6b6006...a1cc95` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262456 | `0x77f645...927391` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262458 | `0x791b24...5d7946` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262462 | `0x7ff1ae...905e8f` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262464 | `0x87073b...c120e4` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262471 | `0x8df8b5...67b3ce` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262476 | `0x93012a...98abbc` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262481 | `0x9d0a46...15dd84` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262483 | `0x9f9cea...8fda82` | ⚠️ Unaudited |
| Asset | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-262485 | `0xa393d6...2f1a6e` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262486 | `0xa45c0a...ba3800` | ⚠️ Unaudited |
| Asset | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-262487 | `0xa649be...661c1a` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262488 | `0xa6ef6c...1603e5` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262499 | `0xb43ee2...00b8e2` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262500 | `0xb5c936...48bcf8` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262511 | `0xc74a9d...1133cb` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262518 | `0xcf4349...efb015` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262520 | `0xd55d01...87a521` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262534 | `0xeaba29...e68ac2` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262538 | `0xf31994...25745a` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262540 | `0xf9bdc8...653cac` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262271 | `0x06228b...2e48b5` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262274 | `0x0fa7b7...e73055` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262281 | `0x2977b0...66cfd9` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262289 | `0x4552e8...e65c1f` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262295 | `0x502a88...abd3a2` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262298 | `0x59d8dc...350769` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262300 | `0x5ad0b6...b01266` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262305 | `0x6add07...bf42c8` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262306 | `0x6b7c9d...18c7b2` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262308 | `0x75eaa8...6235fe` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262310 | `0x7a8ce2...d1a59a` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262312 | `0x85cebd...6af003` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262313 | `0x878004...5ed525` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262319 | `0x9121af...3c6be2` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262323 | `0x9a2405...3e975d` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262331 | `0xb1ad5c...06c3d9` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262332 | `0xb4beb0...c336fb` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262333 | `0xb75ed9...aa0fd9` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262336 | `0xbcd5e8...1ebd6e` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262337 | `0xbcf4c3...47a661` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262341 | `0xc74a9d...1133cb` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262348 | `0xdddc78...900145` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262352 | `0xe5232c...fb2e43` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262359 | `0xef9187...df2486` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262361 | `0xf4b72e...2e4505` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | avalanche | unit-262366 | `0x375883...9ac624` | ⚠️ Unaudited |
| Asset | unknown | project_anchor | own_supporting | 0 | scroll | unit-262377 | `0xe43c16...553c21` | ⚠️ Unaudited |
| BnbxAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10f7c6...1fc24f` | ⚠️ Unaudited |
| BnbxAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262395 | `0x16b372...a509a7` | ⚠️ Unaudited |
| BnbxAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262441 | `0x5d64ed...060f4a` | ⚠️ Unaudited |
| DynamicAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262379 | `0x0321d1...740f86` | ⚠️ Unaudited |
| DynamicAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262393 | `0x0e99fb...cc5760` | ⚠️ Unaudited |
| DynamicAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262426 | `0x4447de...8a5ac6` | ⚠️ Unaudited |
| DynamicAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262432 | `0x4d41e9...b8e67e` | ⚠️ Unaudited |
| DynamicAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262437 | `0x5a65cb...d2de8b` | ⚠️ Unaudited |
| DynamicAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262440 | `0x5d38a3...91df38` | ⚠️ Unaudited |
| DynamicAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262451 | `0x6c7b40...d378ce` | ⚠️ Unaudited |
| DynamicAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74f019...092c5b` | ⚠️ Unaudited |
| DynamicAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262473 | `0x90f6f0...2b5201` | ⚠️ Unaudited |
| DynamicAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262523 | `0xd67ede...7e5bb9` | ⚠️ Unaudited |
| DynamicAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262527 | `0xdfde04...b2a9b3` | ⚠️ Unaudited |
| DynamicAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262528 | `0xe0e763...ba83ec` | ⚠️ Unaudited |
| DynamicAsset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262285 | `0x35c462...1bc6ac` | ⚠️ Unaudited |
| DynamicAsset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262290 | `0x468830...350978` | ⚠️ Unaudited |
| DynamicAsset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262304 | `0x696655...49c7d3` | ⚠️ Unaudited |
| DynamicAsset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262317 | `0x909715...f19108` | ⚠️ Unaudited |
| DynamicAsset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262353 | `0xe62880...be798d` | ⚠️ Unaudited |
| DynamicAsset | unknown | project_anchor | own_supporting | 0 | avalanche | unit-262365 | `0x29eeb2...18ec91` | ⚠️ Unaudited |
| ERC4626Asset | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262227 | `0x25c9dd...04c914` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-262547 | `0x5781b4...b353b1` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | bsc | unit-262551 | `0xc37a89...aadf48` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | arbitrum | unit-262548 | `0xc37a89...aadf48` | ⚠️ Unaudited |
| GovernedPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: optimism `0xb98ab9...bc04af`; bsc `0xdd29f2...73fa01`; arbitrum `0x1d15c4...918797` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x15dcc2...b1a17f` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | scroll | unit-262375 | `0x80f088...7337ce` | ⚠️ Unaudited |
| PriceFeedAsset | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-262490 | `0xa9a081...cd23cc` | ⚠️ Unaudited |
| PriceFeedAsset | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-262283 | `0x2a2020...346aaa` | ⚠️ Unaudited |
| rBNBAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262435 | `0x56177d...16410c` | ⚠️ Unaudited |
| sAVAXAsset | unknown | project_anchor | own_supporting | 0 | avalanche | unit-262370 | `0xc096ff...a5a9fa` | ⚠️ Unaudited |
| SkimmableAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262466 | `0x88beb1...b87117` | ⚠️ Unaudited |
| SkimmableAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262504 | `0xbd459e...c273b1` | ⚠️ Unaudited |
| SkimmableAsset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262338 | `0xbd7568...fa35f0` | ⚠️ Unaudited |
| SkimmableAsset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262363 | `0xf9c235...82a274` | ⚠️ Unaudited |
| SnBNBAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262491 | `0xaa0811...148ee8` | ⚠️ Unaudited |
| StkbnbAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262392 | `0x0e202a...d0679f` | ⚠️ Unaudited |
| StkbnbAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc496f4...e0d17f` | ⚠️ Unaudited |
| TokenBridge | operational_periphery | project_anchor | own_supporting | 1 | avalanche | unit-262550 | `0xa15e45...3b3382` | ⚠️ Unaudited |
| TokenImplementation | token | project_anchor | own_supporting | 1 | ethereum | unit-262546 | `0xc0b314...540cfb` | ⚠️ Unaudited |
| TokenImplementation | token | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xd2612b...13a668` | ⚠️ Unaudited |
| TokenImplementation | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xd9541b...235d64` | ⚠️ Unaudited |
| TokenImplementation | token | project_anchor | own_supporting | 1 | arbitrum | unit-262549 | `0x7b5eb3...9ddf96` | ⚠️ Unaudited |
| WBETHAsset | unknown | project_anchor | own_supporting | 0 | bsc | unit-262479 | `0x975693...51d57f` | ⚠️ Unaudited |
| WombatRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-262238 | `0x6bb82a...a0f919` | ⚠️ Unaudited |
| WombatRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-262339 | `0xc4b2f9...580668` | ⚠️ Unaudited |
| WombatRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | 4 deployments: optimism `0x35d531...8bdf79`; base `0x4a88c4...df76cd`; avalanche `0x4a88c4...df76cd`; scroll `0x010931...f78959` | ⚠️ Unaudited |
| WormholeAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x3ccc0d...ff463e` | ⚠️ Unaudited |
| WstETHAsset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262357 | `0xeb7e2f...5f7465` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (529)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262222 | `0x0020a8...680db6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262223 | `0x04d4e1...8d563d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262224 | `0x05a33c...8f4d32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262225 | `0x124911...ed89d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262226 | `0x1f0ae4...4b09b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262228 | `0x3161f4...16e854` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262229 | `0x32a936...09442c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4705b4...b46134` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262231 | `0x49db5f...523330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a8686...5296e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262232 | `0x4dfa92...7b7e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51abd2...ef52bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262233 | `0x51e073...769606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fabce...376454` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262235 | `0x62a83c...b6b6f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262236 | `0x647cc8...d5ac81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262239 | `0x724515...548068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262241 | `0x75eaa8...6235fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262242 | `0x7bb67c...1dcdba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x820eac...5c1c45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262243 | `0x8843b0...345efb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262244 | `0x8df112...1adbae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92e8b5...870dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93d911...ce6dea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262245 | `0x94019d...760524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x986237...e23bfb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262246 | `0x9c02ea...df25cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262247 | `0xa0e74f...61025a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262248 | `0xa12ba2...695502` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262249 | `0xa2cbe3...ad2f40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262250 | `0xa45c0a...ba3800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa67423...97897a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262251 | `0xaceb58...3419ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb239b9...1538c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262252 | `0xc096ff...a5a9fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262253 | `0xc693f3...113c82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262254 | `0xc6bc78...ba6cd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262255 | `0xc9bfc3...7e5d1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd69ca...19e8fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaa336...0a7efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddc2c2...ed13d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262256 | `0xe7e02c...6f9cb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe85f62...5e0c73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262257 | `0xe9e88b...1df733` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262258 | `0xef0b4d...6aaf94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf84c59...5cc9de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262259 | `0xf8e32c...160734` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06228b...2e48b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0700ad...4eb4a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1414cd...b4f8f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x160ee9...511a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1790f9...19919b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-262260 | `0x1a0231...0c6fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x25c9dd...04c914` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-262262 | `0x2bb4ea...90e29c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x34e2f9...37f873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x375883...9ac624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4705b4...b46134` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-262263 | `0x489818...ad3d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4d1cc8...087053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4f0ef2...c50122` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-262265 | `0x50a39b...c5bd10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x51abd2...ef52bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x51e073...769606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6373d1...558741` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-262266 | `0x6bb82a...a0f919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6e2db1...f2d83d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6f8ad3...bb266b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7b1f9c...839623` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7b74ab...d15ea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x820eac...5c1c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8240aa...f6ac24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x82e62f...541518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x85cebd...6af003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x983ce4...1b1372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9a6578...f2735d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9ed3de...656d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa1acc6...fa2acf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-262268 | `0xb86ba6...8fcafa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc6bc78...ba6cd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc9bfc3...7e5d1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-262269 | `0xcaa5a9...848555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcd69ca...19e8fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd0599d...c83786` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd05cf2...11e47b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd119d8...faca20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdaa336...0a7efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe5e368...62e44c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe85f62...5e0c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe91cfd...fca279` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-262270 | `0xef0b4d...6aaf94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfa9576...f69bfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0020a8...680db6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0029b7...9d4183` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262378 | `0x015542...bece5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x024d75...b1f29b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262380 | `0x04299f...15ffa4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262381 | `0x048dc3...118047` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-262382 | `0x04d4e1...8d563d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262383 | `0x052045...fc74b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x053cd9...19435f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0553f2...c2bd73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262384 | `0x059208...ccc348` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262385 | `0x05f727...ead09a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262386 | `0x06228b...2e48b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262388 | `0x083640...2f9f55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262389 | `0x08401f...8880ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262390 | `0x09da88...6705f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aadde...d4744f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bd067...ec28cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262391 | `0x0c735f...6c41de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1028a4...1970ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x108c99...9b3c02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x129021...f26abb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x141298...561e98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18022e...229c51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262398 | `0x191601...ad205b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a4557...56dce7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262400 | `0x1b507b...276d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cbb0f...ef4497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e8cbd...8f7fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e9c11...23ea23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262401 | `0x1ee156...754bef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f7701...efbd3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ff949...179503` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262404 | `0x20d7b9...a6ecd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2120c8...9436b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24591d...5b5595` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262406 | `0x251577...7a5c9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26d67a...1a1933` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262407 | `0x27306b...7ece80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262408 | `0x277e77...33c903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28edda...5f95af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x297622...534fd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262409 | `0x299642...143b6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b1878...44984f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262410 | `0x2c0d2b...207d86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c3c34...bebd20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262411 | `0x2c5464...fd7955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d334b...4d0194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2dc5c0...a27501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e14e0...d7e3bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262412 | `0x2ea772...ac5da4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262413 | `0x2fff85...90ecc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262414 | `0x312bc7...055fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x322412...f7a986` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262415 | `0x32816b...376dbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x342126...1f175b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35560d...d60482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36d775...f2e47f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37fa82...fc6698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c64d9...61b453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d64a3...b6ebf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262421 | `0x3f2e97...05c05d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262422 | `0x3f9ec2...7e61c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fef8c...d75d00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262423 | `0x401384...71b804` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262424 | `0x407c0f...a1810e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262425 | `0x408411...9892a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x414d1a...b53976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x437ddb...51d0de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x440897...c5f52a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44b597...7068e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45a51a...687d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47a881...887d6c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-262428 | `0x489833...c95830` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262429 | `0x48f6a8...9f2a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49ecc3...2f1056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c2542...8bb1b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262431 | `0x4cbdc4...1e451f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d1ba7...0e2113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d210b...82945c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d3f5c...900e17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4dfa92...7b7e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e811c...dca968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f5fa1...4fc467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51655b...fa0101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51abd2...ef52bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262434 | `0x52eb70...b2e3d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54ed8b...b37610` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55e4ac...57fe7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ab8f0...c6a62d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ad0b6...b01266` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262438 | `0x5cc2cb...24031a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-262439 | `0x5d0f17...8408e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d2390...524572` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262442 | `0x5e5dcb...d3092a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f027a...26653c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262443 | `0x60aca4...52e1bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262445 | `0x624be6...eb1e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x644c27...44af5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64907b...056870` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262446 | `0x6521a5...86cd7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6569dd...8940f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x65b5a2...41916d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x683cd0...872dcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262448 | `0x6aa55c...10e046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6adb50...a7ebf5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262450 | `0x6b98d2...3d1b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c528b...71ee9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cff94...88fe8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262452 | `0x6dd711...782b0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262453 | `0x6f1c68...ad5bfa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262454 | `0x71e41c...03e623` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x724515...548068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262455 | `0x75eaa8...6235fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262457 | `0x790328...bfd46f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79c8e1...ce5993` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262459 | `0x7a8faa...c6e38e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7cb260...17e154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7db1b5...d3a1c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262460 | `0x7dc7e9...489649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e10ff...a2feff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e9fab...adab55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262461 | `0x7f95d3...2202c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x804585...b658f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x810287...c67e4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83bc71...7d20f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262463 | `0x861c50...fe2320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x866f96...7e1a18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262465 | `0x8779d3...a301b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262467 | `0x8ad47d...a49da2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262468 | `0x8b892b...cde060` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262469 | `0x8dc7b0...e87b47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262470 | `0x8df112...1adbae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e4a50...fcb182` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262472 | `0x8e926c...167826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90aea5...f7898d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x915c87...ad24bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262474 | `0x919a70...069c71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262475 | `0x92e8b5...870dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x934d5c...3b7211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93cbcf...eb3827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x946207...e84a98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262477 | `0x949856...6c201c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262478 | `0x966c37...e71c01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96ed73...c54e82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98e6e3...d3b246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99f76c...70c486` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262480 | `0x9a39f4...5f3d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a59f5...c73ba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a5d0d...a510e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d4816...f88ba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9da4ed...ea5725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e22bd...0c6e03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ea89d...35cd36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262482 | `0x9f3f1e...140655` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262484 | `0xa12ba2...695502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2ccca...642d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3f645...c14f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa61dcc...9b8c27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262489 | `0xa75f18...7e013b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8202e...4db947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa874c8...c7c7f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262492 | `0xab7700...3ab145` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262493 | `0xaceb58...3419ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262495 | `0xad87cb...d930d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262496 | `0xb0219a...01edb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb06b2e...1828b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0d508...801043` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-262497 | `0xb268c3...1656e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262498 | `0xb2a48d...a655bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7526e...140a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7df4a...2db80f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262502 | `0xb8b1b7...f9f684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb94667...76ad6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd28fb...315f0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262503 | `0xbd4420...ec77de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd7568...fa35f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbda432...c558a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262505 | `0xbed9b7...297b80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262506 | `0xbefb02...6f6091` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262507 | `0xc007e8...73676f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262508 | `0xc26b7c...945a2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2c94d...f21da0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262509 | `0xc4992f...74afaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4b2f9...580668` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5fb02...90fe13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262510 | `0xc609e2...99fa14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262512 | `0xc7a628...f38e43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262513 | `0xc7a6ba...431974` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262514 | `0xc7fbef...cfcd6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262515 | `0xc897a2...914a9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262516 | `0xc9bfc3...7e5d1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc24ac...257838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd3227...3cda5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd69ca...19e8fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262517 | `0xcf2e56...2f0536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd05cf2...11e47b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262519 | `0xd29b3e...10ca01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2d1e5...27207b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3ef6c...f3ee08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd570f7...3d53dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-262521 | `0xd61c53...71b591` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262522 | `0xd66fe4...2e717d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7d1b4...b1d2ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262524 | `0xd80356...382915` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262525 | `0xd8e4fd...f22c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda231d...81c93e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdaa336...0a7efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde509f...626dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdea158...900ada` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262526 | `0xdfba6a...b20f1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262529 | `0xe23753...a0c1cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262530 | `0xe2a60c...9dbc67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-262531 | `0xe2c07d...31f9c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe40048...bc199c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262532 | `0xe4fd5d...6c76bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe61f78...2fd5d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8a3d6...4388ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262533 | `0xea6cdd...fa7892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb22c7...7d3965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xebb710...66b874` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262535 | `0xede96f...a48ab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee48cc...3e715f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262536 | `0xeeb5a7...67ce2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefdec2...d5fc5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262537 | `0xf1e604...bf3fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2fd53...b36b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3acb2...d80b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf53811...4dabdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7ab0d...6559d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-262539 | `0xf80722...8de4d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf81216...2bc77d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf84c59...5cc9de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9cdc1...8cfcf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa5b5b...495035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfcd11c...038d46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1414cd...b4f8f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-262541 | `0x20d7b9...a6ecd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2722fe...3de182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x34e2f9...37f873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x489833...c95830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x640e7e...f78f47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-262542 | `0x6521a5...86cd7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8240aa...f6ac24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9a59f5...c73ba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9a6578...f2735d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1acc6...fa2acf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc6bc78...ba6cd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-262543 | `0xc9bfc3...7e5d1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0599d...c83786` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-262544 | `0xd673f3...c70fb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-262545 | `0xe07829...2036d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe5e368...62e44c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe85f62...5e0c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf8e32c...160734` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262272 | `0x08c6e9...d3fd4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262273 | `0x096f99...4d7b24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b041d...bf6f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e2d70...a78278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f959d...6d4d2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10c13d...bd58bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1242fb...4837d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12d6a5...73bf7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262275 | `0x12fa5a...0af978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x153e4b...b17252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x191601...ad205b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262276 | `0x19f477...13d3b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bd8ce...a18eeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c18aa...ba7dfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262277 | `0x1edfa9...15bf03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x201872...e22c8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262278 | `0x20d7ee...7302f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2201ea...e0c138` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262280 | `0x259ccd...1a33ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25e08a...a6f3e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2722fe...3de182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2740f3...7fbe09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x278c01...ad9d07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2980fc...87cee1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262282 | `0x29eeb2...18ec91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2badcc...2020f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30e27c...1f554c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3257ea...27a3b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262284 | `0x332430...7ae41e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34e2f9...37f873` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262286 | `0x381692...58b54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x38d225...36d5ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262287 | `0x3cc8c8...044d4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ccc0d...ff463e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3dbf3e...7110fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262288 | `0x3f90a5...3d2d9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fa1af...e2099b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x423fa1...0628a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44a0e2...a3a642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x479be5...8706a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262291 | `0x488b34...2d3efc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49ea55...3eac51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262292 | `0x4a8686...5296e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a88c4...df76cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262293 | `0x4ce537...7a08ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d1cc8...087053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4e811c...dca968` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262294 | `0x4f7f9b...b52ac2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262296 | `0x51880c...025d0a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262297 | `0x51e073...769606` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262299 | `0x5a65cb...d2de8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c85ed...9b9a41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d5b2b...b9ba76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262301 | `0x5fb522...562f54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262302 | `0x6001f4...631bb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x625b37...01f08b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262303 | `0x62a83c...b6b6f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6521a5...86cd7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6569dd...8940f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a4b59...61f5e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b6006...a1cc95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262307 | `0x6f70c8...6ae695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x71cea3...e34cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x72b46b...ecb2ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75196f...3f084b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7585ba...59c11b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262309 | `0x765fda...075543` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262311 | `0x7b6041...5b7c64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c9b17...bc11ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7cb260...17e154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e2957...7458bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x810287...c67e4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82e62f...541518` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262314 | `0x8b892b...cde060` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262315 | `0x8cd967...6980de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262316 | `0x8e16b6...7f8561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e537f...4f3f74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f5e6f...3b62de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262318 | `0x90ecdd...a338b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262320 | `0x917caf...214c1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262321 | `0x956454...370401` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262322 | `0x96412c...a3791a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97e4f5...91d81f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262324 | `0x9a6578...f2735d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ad594...22b689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9cbee5...105dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9da4ed...ea5725` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262325 | `0x9f3f1e...140655` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262326 | `0xa1fdb8...692979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2cbe3...ad2f40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa45c0a...ba3800` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262327 | `0xa6ef6c...1603e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262329 | `0xa9a081...cd23cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaded24...59efdc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262330 | `0xae5e81...5ecbdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb02035...8d481d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb29ff5...0fb826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5952a...681260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb789d4...6273db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8fe07...a1abdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262334 | `0xb9bdfe...5db77b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262335 | `0xb9e272...f5612b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbed050...c7927d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc06a59...e4f8b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc096ff...a5a9fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262340 | `0xc6bc78...ba6cd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262342 | `0xc7a6ba...431974` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262343 | `0xce2bb4...38549a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262344 | `0xcf20fd...9e4849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd2592e...e95835` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262345 | `0xd58d5e...b163ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd64816...8305f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6d42c...d5d82d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262346 | `0xdaa191...170211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdab44b...0335bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262347 | `0xdc82b7...419d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd29e6...e0cbab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262349 | `0xde509f...626dae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262350 | `0xe14302...9358d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1c846...f1f454` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262351 | `0xe3c747...5b8e17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262354 | `0xe7159f...c56f48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262355 | `0xe78876...1b1145` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262356 | `0xe933e2...0f762e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb87bf...8bc480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee88c3...b0dea9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262358 | `0xee9b42...9750cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf01d86...5ff081` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262360 | `0xf1db5b...7de18d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf2bd16...7099e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf37f78...d88836` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-262362 | `0xf76009...9b35d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9cdc1...8cfcf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xffc6e8...1932f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-262364 | `0x108c99...9b3c02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15dcc2...b1a17f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x164564...722357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x193c8a...b58e44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2086dd...c17aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23db5d...8fae77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2722fe...3de182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ddfdd...39f37e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x337d06...849453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34e2f9...37f873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x389efa...d8c6bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x39a2f5...850b1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x41571e...31bc7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x489833...c95830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fabce...376454` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x616264...981d06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x640e7e...f78f47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x64cb6d...b1aa85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-262367 | `0x6521a5...86cd7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74163b...b739e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8240aa...f6ac24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x84a14a...183d7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x84d090...66928e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89b88a...ccaf95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-262368 | `0x8b2ab4...18a09d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x911a98...c4223b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x960c66...ace306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a6578...f2735d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f8519...471736` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-262369 | `0xab8d5b...7dda0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2d951...22094f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb91e5a...932c89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9e267...6aa520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbba437...7aeb77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc12c0c...f362d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc6bc78...ba6cd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-262371 | `0xc9bfc3...7e5d1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd0599d...c83786` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-262372 | `0xd673f3...c70fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd9e494...387911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd9ffee...48e576` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-262373 | `0xe3abc2...069d87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5e368...62e44c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe85f62...5e0c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xefec1c...7169c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-262374 | `0x20d7b9...a6ecd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9a59f5...c73ba6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-262376 | `0xdcc1ec...0732b7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Wombat-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Wombat-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 5 | high |
| [hacken.io/audits/wombat-exchange/sca-wombat-exchange-erc20-staking-apr2022](https://hacken.io/audits/wombat-exchange/sca-wombat-exchange-erc20-staking-apr2022) | Hacken | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [PeckShield-Audit-Report-WombatV2-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV2-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | n/a | matched | 1 | 0 | 0 | 2 | n/a |
| [PeckShield-Audit-Report-WombatV3-v1.1.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV3-v1.1.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [SlowMist Audit Report - WombatExchange_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20WombatExchange_en-us.pdf) | SlowMist | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [2023-Sep-Wombat_audit_report.pdf](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/2023-Sep-Wombat_audit_report.pdf) | Zokyo | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-WombatV3-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV3-v1.0.pdf) | PeckShield | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [PeckShield-Audit-Report-WombatV4-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV4-v1.0.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf) | PeckShield | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf) | Zokyo | Audit | 2023-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [zokyo_wombat_audit_report.pdf](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/zokyo_wombat_audit_report.pdf) | Zokyo | Audit | 2022-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3004] PeckShield-Audit-Report-Wombat-v1.0.pdf — matched: Extracted contract names from findings targets and code snippets. No explicit scope table found, but contracts are clearly audited.
- [3005] hacken.io/audits/wombat-exchange/sca-wombat-exchange-erc20-staking-apr2022 — no match: The provided text is a snippet from a webpage listing an audit report, but does not contain the full report content. No contract names or scope details are present.
- [3006] PeckShield-Audit-Report-WombatV2-v1.0.pdf — matched: No reason recorded
- [3007] PeckShield-Audit-Report-WombatV3-v1.1.pdf — no match: No explicit scope table; contracts inferred from findings targets and report title 'Wombat v3'.
- [3009] SlowMist Audit Report - WombatExchange_en-us.pdf — no match: Extracted contracts from scope section and findings. Audit date from audit result table: 2023.05.15 - 2023.05.26, using end date.
- [3010] 2023-Sep-Wombat_audit_report.pdf — no match: Contracts explicitly listed in scope section on page 3.
- [3011] PeckShield-Audit-Report-WombatV3-v1.0.pdf — no match: Audit report for Wombat v3. Scope section mentions 'Wombat v3' but no explicit contract list; contracts identified from findings targets.
- [3012] PeckShield-Audit-Report-WombatV4-v1.0.pdf — no match: Scope explicitly lists three files: USDPlusAsset (renamed to SkimmableAsset), PriceFeedAsset, and GovernedPriceFeed. Findings also reference these contracts.
- [3013] PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf — no match: The audit report explicitly lists three contracts in scope: DynamicFeeHelper.sol, RepegHelper.sol, and VolatilePool.sol. The audit date is August 10, 2024, as stated on the cover page and in the report details.
- [3014] 2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf — no match: No reason recorded
- [3015] zokyo_wombat_audit_report.pdf — matched: Contracts explicitly listed in scope section on page 3.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Wombat-v1.0.pdf | TokenVesting | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-Wombat-v1.0.pdf | VeWom | own proxy deployment | OptimizedTransparentUpgradeableProxy (proxy) (selected) `0x3da628...b5b0cc` — deployed 2022-08-26 12:00:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Wombat-v1.0.pdf | VeERC20Upgradeable | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-Wombat-v1.0.pdf | MasterWombat | unmatched — not counted | — | Target in findings PVE-003, PVE-004 | no |
| PeckShield-Audit-Report-Wombat-v1.0.pdf | Pool | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield-Audit-Report-Wombat-v1.0.pdf | Asset | ambiguous — not counted | Asset (alternative) `0xe5232c...fb2e43` — deployed 2023-06-08 10:42:43+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x61e338...345752` — deployed 2023-04-02 08:03:46+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x59d8dc...350769` — deployed 2023-04-03 08:24:24+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x375883...9ac624` — deployed 2023-10-17 09:02:46+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x878004...5ed525` — deployed 2023-11-10 06:56:39+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x6add07...bf42c8` — deployed 2023-04-03 08:22:10+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x8f5e6f...3b62de` — deployed 2023-11-16 10:02:23+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x9f9cea...8fda82` — deployed 2023-02-14 10:35:14+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xd55d01...87a521` — deployed 2023-08-29 08:51:36+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x502a88...abd3a2` — deployed 2023-04-03 18:25:54+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xe43c16...553c21` — deployed 2023-10-16 08:14:22+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x1f502f...f6723e` — deployed 2022-11-02 06:48:11+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xbcd5e8...1ebd6e` — deployed 2023-12-08 09:42:05+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x24a70c...2ba073` — deployed 2023-02-14 10:34:53+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x4f95fe...b988f7` — deployed 2022-04-18 12:01:42+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x4552e8...e65c1f` — deployed 2023-04-03 08:22:55+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x082059...8c9078` — deployed 2023-08-02 03:51:32+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x7a8ce2...d1a59a` — deployed 2023-04-03 08:22:35+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x49db5f...523330` — deployed 2023-11-16 10:03:51+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x696655...49c7d3` — deployed 2023-08-29 09:08:23+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xdddc78...900145` — deployed 2023-04-03 08:24:05+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x6b6006...a1cc95` — deployed 2023-05-08 19:43:57+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x5ad0b6...b01266` — deployed 2023-06-23 10:23:15+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xc74a9d...1133cb` — deployed 2023-06-28 07:10:27+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x2977b0...66cfd9` — deployed 2023-03-09 08:52:59+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x9d0a46...15dd84` — deployed 2022-04-18 12:02:33+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x3ac762...86b490` — deployed 2023-02-02 10:38:59+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x4968e2...05d2e6` — deployed 2023-02-22 10:10:22+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xb4beb0...c336fb` — deployed 2023-06-23 10:22:55+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x06228b...2e48b5` — deployed 2023-04-03 08:23:20+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x1fa71d...e0d38b` — deployed 2022-09-16 05:41:33+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xa45c0a...ba3800` — deployed 2023-04-02 08:03:25+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xef9187...df2486` — deployed 2023-04-04 01:14:54+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x9a2405...3e975d` — deployed 2023-08-29 08:57:26+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x591ccb...70ef87` — deployed 2023-11-10 07:28:24+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x34e109...390b57` — deployed 2023-09-11 08:27:51+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x9121af...3c6be2` — deployed 2023-08-29 08:57:18+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xb75ed9...aa0fd9` — deployed 2023-06-28 07:10:51+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x0fa7b7...e73055` — deployed 2023-03-09 08:53:38+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x3f90a5...3d2d9d` — deployed 2023-08-03 08:01:11+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xf9bdc8...653cac` — deployed 2022-10-25 11:03:35+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xb1ad5c...06c3d9` — deployed 2023-04-03 08:25:08+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xb5c936...48bcf8` — deployed 2022-11-16 08:58:43+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xf4b72e...2e4505` — deployed 2023-04-03 18:24:55+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x87073b...c120e4` — deployed 2022-11-16 08:59:13+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x47ab51...c371eb` — deployed 2022-11-23 15:19:31+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x681124...3cd685` — deployed 2023-05-06 01:44:44+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x77f645...927391` — deployed 2023-02-02 10:48:53+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x6b7c9d...18c7b2` — deployed 2023-04-04 01:15:14+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xbcf4c3...47a661` — deployed 2023-12-08 09:41:39+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x5dace2...c7bea7` — deployed 2023-08-03 08:02:11+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x752945...601c95` — deployed 2023-08-29 09:09:35+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x791b24...5d7946` — deployed 2023-02-02 10:49:20+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x3c42e4...78d688` — deployed 2022-10-25 11:04:05+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xf31994...25745a` — deployed 2022-04-18 12:00:12+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xc74a9d...1133cb` — deployed 2023-09-11 08:28:27+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x3c8e74...a05367` — deployed 2022-11-23 15:18:58+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x3a29df...de962d` — deployed 2023-02-02 10:30:15+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x7ff1ae...905e8f` — deployed 2023-02-02 10:30:45+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x85cebd...6af003` — deployed 2023-03-09 08:53:18+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xb43ee2...00b8e2` — deployed 2022-04-18 12:01:00+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xa6ef6c...1603e5` — deployed 2023-02-02 10:39:26+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x93012a...98abbc` — deployed 2023-08-29 08:52:06+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xeaba29...e68ac2` — deployed 2022-11-02 06:47:41+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x17aded...163500` — deployed 2023-11-10 07:23:39+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x8df8b5...67b3ce` — deployed 2023-04-02 08:31:35+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xcf4349...efb015` — deployed 2022-11-23 15:18:19+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x75eaa8...6235fe` — deployed 2023-04-03 08:23:40+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x184eb7...d96f75` — deployed 2023-05-06 01:45:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-WombatV2-v1.0.pdf | MultiRewarderPerSec | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-WombatV2-v1.0.pdf | Pool | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-WombatV2-v1.0.pdf | WombatRouter | own contract | WombatRouter (alternative) `0x6bb82a...a0f919` — deployed 2023-08-03 08:15:23+03 — liveness: live (current_address_book_code)<br>WombatRouter (alternative) `0xc4b2f9...580668` — deployed 2023-04-11 19:21:05+03 — liveness: live (current_address_book_code)<br>WombatRouter (selected) `0x19609b...a4add7` — deployed 2022-08-26 12:03:01+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-08-26 was 25d from audit; next candidate 253d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-WombatV3-v1.1.pdf | MasterWombatV3 | unmatched — not counted | — | Target in findings PVE-001 and PVE-002 | no |
| PeckShield-Audit-Report-WombatV3-v1.1.pdf | Voter | unmatched — not counted | — | Target in findings PVE-003 and PVE-004 | no |
| SlowMist Audit Report - WombatExchange_en-us.pdf | CrossChainPool | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - WombatExchange_en-us.pdf | WormholeAdaptor | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - WombatExchange_en-us.pdf | PoolV3 | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - WombatExchange_en-us.pdf | CoreV3 | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - WombatExchange_en-us.pdf | VolatilePool | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - WombatExchange_en-us.pdf | ChainlinkPriceFeed | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - WombatExchange_en-us.pdf | PythPriceFeed | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - WombatExchange_en-us.pdf | OraclePriceFeed | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - WombatExchange_en-us.pdf | PriceFeedAsset | ambiguous — not counted | PriceFeedAsset (alternative) `0x2a2020...346aaa` — deployed 2023-04-16 08:48:34+03 — liveness: live (current_address_book_code)<br>PriceFeedAsset (alternative) `0xa9a081...cd23cc` — deployed 2023-04-16 08:44:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SlowMist Audit Report - WombatExchange_en-us.pdf | HighCovRatioFeePoolV3 | unmatched — not counted | — | mentioned in findings | no |
| SlowMist Audit Report - WombatExchange_en-us.pdf | DynamicPoolV3 | unmatched — not counted | — | mentioned in findings | no |
| 2023-Sep-Wombat_audit_report.pdf | BribeRewarderFactory | unmatched — not counted | — | listed in scope | no |
| 2023-Sep-Wombat_audit_report.pdf | BoostedMasterWombat | unmatched — not counted | — | listed in scope | no |
| 2023-Sep-Wombat_audit_report.pdf | BoostedMultiRewarder | unmatched — not counted | — | listed in scope | no |
| 2023-Sep-Wombat_audit_report.pdf | MultiRewarderPerSecV2 | unmatched — not counted | — | listed in scope | no |
| 2023-Sep-Wombat_audit_report.pdf | BribeV2 | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-WombatV3-v1.0.pdf | MasterWombatV3 | unmatched — not counted | — | Target in findings PVE-001 and PVE-002 | no |
| PeckShield-Audit-Report-WombatV3-v1.0.pdf | Voter | unmatched — not counted | — | Target in findings PVE-003 and PVE-004 | no |
| PeckShield-Audit-Report-WombatV4-v1.0.pdf | USDPlusAsset | unmatched — not counted | — | listed in scope and findings target | no |
| PeckShield-Audit-Report-WombatV4-v1.0.pdf | SkimmableAsset | ambiguous — not counted | SkimmableAsset (alternative) `0xbd7568...fa35f0` — deployed 2023-04-03 08:21:29+03 — liveness: live (current_address_book_code)<br>SkimmableAsset (alternative) `0xf9c235...82a274` — deployed 2023-04-03 18:25:35+03 — liveness: live (current_address_book_code)<br>SkimmableAsset (alternative) `0x88beb1...b87117` — deployed 2023-04-02 08:30:50+03 — liveness: live (current_address_book_code)<br>SkimmableAsset (alternative) `0xbd459e...c273b1` — deployed 2023-04-02 08:31:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-WombatV4-v1.0.pdf | PriceFeedAsset | ambiguous — not counted | PriceFeedAsset (alternative) `0x2a2020...346aaa` — deployed 2023-04-16 08:48:34+03 — liveness: live (current_address_book_code)<br>PriceFeedAsset (alternative) `0xa9a081...cd23cc` — deployed 2023-04-16 08:44:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-WombatV4-v1.0.pdf | GovernedPriceFeed | unmatched — not counted | — | listed in scope and findings target | no |
| PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf | DynamicFeeHelper | unmatched — not counted | — | listed in scope: 'this audit only covers the following contracts, i.e., DynamicFeeHelper.sol, RepegHelper.sol, and VolatilePool.sol.' | no |
| PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf | RepegHelper | unmatched — not counted | — | listed in scope: 'this audit only covers the following contracts, i.e., DynamicFeeHelper.sol, RepegHelper.sol, and VolatilePool.sol.' | no |
| PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf | VolatilePool | unmatched — not counted | — | listed in scope: 'this audit only covers the following contracts, i.e., DynamicFeeHelper.sol, RepegHelper.sol, and VolatilePool.sol.' | no |
| 2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf | ChainlinkPriceFeed | unmatched — not counted | — | — | no |
| 2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf | CoreV3 | unmatched — not counted | — | — | no |
| 2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf | CrossChainPool | unmatched — not counted | — | — | no |
| 2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf | OraclePriceFeed | unmatched — not counted | — | — | no |
| 2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf | PoolV3 | unmatched — not counted | — | — | no |
| 2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf | PythPriceFeed | unmatched — not counted | — | — | no |
| 2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf | VolatilePool | unmatched — not counted | — | — | no |
| 2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf | WormholeAdaptor | unmatched — not counted | — | — | no |
| zokyo_wombat_audit_report.pdf | AggregateAccount | unmatched — not counted | — | listed in scope | no |
| zokyo_wombat_audit_report.pdf | Asset | ambiguous — not counted | Asset (alternative) `0xe5232c...fb2e43` — deployed 2023-06-08 10:42:43+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x61e338...345752` — deployed 2023-04-02 08:03:46+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x59d8dc...350769` — deployed 2023-04-03 08:24:24+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x375883...9ac624` — deployed 2023-10-17 09:02:46+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x878004...5ed525` — deployed 2023-11-10 06:56:39+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x6add07...bf42c8` — deployed 2023-04-03 08:22:10+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x8f5e6f...3b62de` — deployed 2023-11-16 10:02:23+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x9f9cea...8fda82` — deployed 2023-02-14 10:35:14+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xd55d01...87a521` — deployed 2023-08-29 08:51:36+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x502a88...abd3a2` — deployed 2023-04-03 18:25:54+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xe43c16...553c21` — deployed 2023-10-16 08:14:22+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x1f502f...f6723e` — deployed 2022-11-02 06:48:11+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xbcd5e8...1ebd6e` — deployed 2023-12-08 09:42:05+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x24a70c...2ba073` — deployed 2023-02-14 10:34:53+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x4f95fe...b988f7` — deployed 2022-04-18 12:01:42+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x4552e8...e65c1f` — deployed 2023-04-03 08:22:55+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x082059...8c9078` — deployed 2023-08-02 03:51:32+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x7a8ce2...d1a59a` — deployed 2023-04-03 08:22:35+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x49db5f...523330` — deployed 2023-11-16 10:03:51+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x696655...49c7d3` — deployed 2023-08-29 09:08:23+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xdddc78...900145` — deployed 2023-04-03 08:24:05+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x6b6006...a1cc95` — deployed 2023-05-08 19:43:57+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x5ad0b6...b01266` — deployed 2023-06-23 10:23:15+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xc74a9d...1133cb` — deployed 2023-06-28 07:10:27+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x2977b0...66cfd9` — deployed 2023-03-09 08:52:59+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x9d0a46...15dd84` — deployed 2022-04-18 12:02:33+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x3ac762...86b490` — deployed 2023-02-02 10:38:59+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x4968e2...05d2e6` — deployed 2023-02-22 10:10:22+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xb4beb0...c336fb` — deployed 2023-06-23 10:22:55+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x06228b...2e48b5` — deployed 2023-04-03 08:23:20+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x1fa71d...e0d38b` — deployed 2022-09-16 05:41:33+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xa45c0a...ba3800` — deployed 2023-04-02 08:03:25+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xef9187...df2486` — deployed 2023-04-04 01:14:54+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x9a2405...3e975d` — deployed 2023-08-29 08:57:26+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x591ccb...70ef87` — deployed 2023-11-10 07:28:24+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x34e109...390b57` — deployed 2023-09-11 08:27:51+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x9121af...3c6be2` — deployed 2023-08-29 08:57:18+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xb75ed9...aa0fd9` — deployed 2023-06-28 07:10:51+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x0fa7b7...e73055` — deployed 2023-03-09 08:53:38+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x3f90a5...3d2d9d` — deployed 2023-08-03 08:01:11+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xf9bdc8...653cac` — deployed 2022-10-25 11:03:35+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xb1ad5c...06c3d9` — deployed 2023-04-03 08:25:08+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xb5c936...48bcf8` — deployed 2022-11-16 08:58:43+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xf4b72e...2e4505` — deployed 2023-04-03 18:24:55+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x87073b...c120e4` — deployed 2022-11-16 08:59:13+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x47ab51...c371eb` — deployed 2022-11-23 15:19:31+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x681124...3cd685` — deployed 2023-05-06 01:44:44+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x77f645...927391` — deployed 2023-02-02 10:48:53+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x6b7c9d...18c7b2` — deployed 2023-04-04 01:15:14+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xbcf4c3...47a661` — deployed 2023-12-08 09:41:39+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x5dace2...c7bea7` — deployed 2023-08-03 08:02:11+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x752945...601c95` — deployed 2023-08-29 09:09:35+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x791b24...5d7946` — deployed 2023-02-02 10:49:20+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x3c42e4...78d688` — deployed 2022-10-25 11:04:05+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xf31994...25745a` — deployed 2022-04-18 12:00:12+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xc74a9d...1133cb` — deployed 2023-09-11 08:28:27+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x3c8e74...a05367` — deployed 2022-11-23 15:18:58+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x3a29df...de962d` — deployed 2023-02-02 10:30:15+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x7ff1ae...905e8f` — deployed 2023-02-02 10:30:45+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x85cebd...6af003` — deployed 2023-03-09 08:53:18+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xb43ee2...00b8e2` — deployed 2022-04-18 12:01:00+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xa6ef6c...1603e5` — deployed 2023-02-02 10:39:26+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x93012a...98abbc` — deployed 2023-08-29 08:52:06+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xeaba29...e68ac2` — deployed 2022-11-02 06:47:41+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x17aded...163500` — deployed 2023-11-10 07:23:39+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x8df8b5...67b3ce` — deployed 2023-04-02 08:31:35+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0xcf4349...efb015` — deployed 2022-11-23 15:18:19+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x75eaa8...6235fe` — deployed 2023-04-03 08:23:40+03 — liveness: live (current_address_book_code)<br>Asset (alternative) `0x184eb7...d96f75` — deployed 2023-05-06 01:45:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| zokyo_wombat_audit_report.pdf | CoreV2 | unmatched — not counted | — | listed in scope | no |
| zokyo_wombat_audit_report.pdf | PausableAsset | unmatched — not counted | — | listed in scope | no |
| zokyo_wombat_audit_report.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| zokyo_wombat_audit_report.pdf | WombatERC20 | own contract | WombatERC20 (selected) `0xad6742...b94fb1` — deployed 2022-08-21 16:01:40+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_wombat_audit_report.pdf | TokenVesting | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xb6d83f...f8855f` | ABnbcAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x128fa2...08228b` | AnkrStakingAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x229028...f3f2c4` | AnkrStakingAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3f90a5...3d2d9d` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5dace2...c7bea7` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x696655...49c7d3` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x752945...601c95` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x49db5f...523330` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8f5e6f...3b62de` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x082059...8c9078` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x17aded...163500` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x184eb7...d96f75` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1f502f...f6723e` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1fa71d...e0d38b` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x24a70c...2ba073` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x34e109...390b57` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3a29df...de962d` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3ac762...86b490` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3c42e4...78d688` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3c8e74...a05367` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x47ab51...c371eb` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4968e2...05d2e6` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4f95fe...b988f7` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x591ccb...70ef87` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x61e338...345752` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x681124...3cd685` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6b6006...a1cc95` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x77f645...927391` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x791b24...5d7946` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7ff1ae...905e8f` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x87073b...c120e4` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8df8b5...67b3ce` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x93012a...98abbc` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9d0a46...15dd84` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9f9cea...8fda82` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa45c0a...ba3800` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa6ef6c...1603e5` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xb43ee2...00b8e2` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xb5c936...48bcf8` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc74a9d...1133cb` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcf4349...efb015` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd55d01...87a521` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xeaba29...e68ac2` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf31994...25745a` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf9bdc8...653cac` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x06228b...2e48b5` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0fa7b7...e73055` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2977b0...66cfd9` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4552e8...e65c1f` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x502a88...abd3a2` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x59d8dc...350769` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5ad0b6...b01266` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6add07...bf42c8` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6b7c9d...18c7b2` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x75eaa8...6235fe` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7a8ce2...d1a59a` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x85cebd...6af003` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x878004...5ed525` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9121af...3c6be2` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9a2405...3e975d` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb1ad5c...06c3d9` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb4beb0...c336fb` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb75ed9...aa0fd9` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbcd5e8...1ebd6e` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbcf4c3...47a661` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc74a9d...1133cb` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdddc78...900145` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe5232c...fb2e43` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xef9187...df2486` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf4b72e...2e4505` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x375883...9ac624` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xe43c16...553c21` | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x16b372...a509a7` | BnbxAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5d64ed...060f4a` | BnbxAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0321d1...740f86` | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0e99fb...cc5760` | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4447de...8a5ac6` | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4d41e9...b8e67e` | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5a65cb...d2de8b` | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5d38a3...91df38` | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6c7b40...d378ce` | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x90f6f0...2b5201` | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd67ede...7e5bb9` | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xdfde04...b2a9b3` | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe0e763...ba83ec` | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x35c462...1bc6ac` | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x468830...350978` | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x696655...49c7d3` | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x909715...f19108` | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe62880...be798d` | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x29eeb2...18ec91` | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x25c9dd...04c914` | ERC4626Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x80f088...7337ce` | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa9a081...cd23cc` | PriceFeedAsset | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2a2020...346aaa` | PriceFeedAsset | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x56177d...16410c` | rBNBAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xc096ff...a5a9fa` | sAVAXAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x88beb1...b87117` | SkimmableAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbd459e...c273b1` | SkimmableAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbd7568...fa35f0` | SkimmableAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf9c235...82a274` | SkimmableAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xaa0811...148ee8` | SnBNBAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0e202a...d0679f` | StkbnbAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa15e45...3b3382` | TokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc0b314...540cfb` | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7b5eb3...9ddf96` | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x975693...51d57f` | WBETHAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6bb82a...a0f919` | WombatRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc4b2f9...580668` | WombatRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xeb7e2f...5f7465` | WstETHAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 125 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 529 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 5 ambiguous, 43 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=1, medium=1
- Match method counts: temporal_name=1, unique_name=2

Zero-match audit list:

- [3005] hacken.io/audits/wombat-exchange/sca-wombat-exchange-erc20-staking-apr2022
- [3007] PeckShield-Audit-Report-WombatV3-v1.1.pdf
- [3009] SlowMist Audit Report - WombatExchange_en-us.pdf
- [3010] 2023-Sep-Wombat_audit_report.pdf
- [3011] PeckShield-Audit-Report-WombatV3-v1.0.pdf
- [3012] PeckShield-Audit-Report-WombatV4-v1.0.pdf
- [3013] PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf
- [3014] 2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf

Fork inheritance lineage and inherited audits are included when available.
