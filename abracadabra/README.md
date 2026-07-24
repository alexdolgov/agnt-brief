# Agentic Audit Brief: Abracadabra

## Export Authority

- Production state: **published scope**
- Raw selected rows: 10 across 3 audit(s)
- Eligible audit results: 5 (3 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

⚠️ Lifecycle status: DEAD - TVL dropped 54.6% over 90 days

## Project Overview

- Project: Abracadabra (`abracadabra`)
- Website: [https://abracadabra.money](https://abracadabra.money)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, blast, bsc, ethereum, fantom, kava, linea, moonriver, optimism, polygon
- Contract surface: 1131 unique implementations (2350 raw deployments)
- Coverage basis: 10/89 confirmed own live verified implementations (11.2%); conservative 11.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,638,464.02
- On-chain TVL (included contracts): $776,457,863.62
- TVL by chain: Arbitrum $554,026,938.15 | Ethereum $203,036,115.80 | Avalanche $15,212,296.76 | Bsc $2,148,371.15 | Optimism $1,789,911.16 | Blast $223,338.03 | Polygon $20,290.04 | Base $602.52

## Project Description

This brief describes the observed EVM deployment and audit surface for Abracadabra. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 127 contract row(s) across arbitrum, avalanche, base, blast, bsc, ethereum, fantom, kava, linea, moonriver, optimism, polygon. Structural roles: 109 core, 9 supporting, 9 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 127
- Structural roles: core (109), supporting (9), unclassified (9)
- Contract kinds: contract (127)
- Detected standards: erc20permit (18), erc20 (16), erc165 (9), ownable (9), erc4626 (2), chainlinkaggregator (1), pausable (1)
- Frameworks: boringcrypto (85), openzeppelin (36), solmate (36), solady (15), foundry (5), uniswap-v3 (4)
- Upgradeable-pattern rows: 1

## Fork Analysis

20 of 150 contracts are derived from known codebases. 130 contracts have no detected origin.

### Forked Contracts

**AnyswapV6ERC20** (`0xb153fb3d196a8eb25522705560ac152eeec57901`, chain 10)
Origin: hinkal (`0x4e720d...6f4642`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BentoBoxV1** (`0xf5bce5077908a1b7370b9ae04adc565ebd643966`, chain 1)
Origin: pendle (`0xf4f463...d1d18f`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BlastCauldronV4** (`0x79e8cad80e2aa49a246b789584c45aab1cfe402e`, chain 81457)
Origin: hinkal (`0x5e70f7...187103`)
Containment: 94.7% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- addBorrowPosition(address,uint256)

**CauldronV4** (`0x00380cb5858664078f2289180cc32f74440ac923`, chain 1)
Origin: abracadabra (`0x79e8ca...fe402e`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CauldronV4** (`0x207763511da879a900973a5e092382117c3c1588`, chain 1)
Origin: hinkal (`0x480a0a...51eb4d`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CauldronV4** (`0x692887e8877c6dd31593cda44c382db5b289b684`, chain 1)
Origin: hinkal (`0x480a0a...51eb4d`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CauldronV4** (`0x7259e152103756e1616a77ae982353c3751a6a90`, chain 1)
Origin: hinkal (`0x480a0a...51eb4d`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CauldronV4** (`0x7d8df3e4d06b0e19960c19ee673c0823beb90815`, chain 1)
Origin: hinkal (`0x480a0a...51eb4d`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CauldronV4** (`0x726413d7402ff180609d0ebc79506df8633701b1`, chain 42161)
Origin: hinkal (`0x480a0a...51eb4d`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DegenBox** (`0xd96f48665a1410c0cd669a88898eca36b9fc2cce`, chain 1)
Origin: pendle (`0xf4f463...d1d18f`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DegenBox** (`0x090185f2135308bad17527004364ebcc2d37e5f6`, chain 56)
Origin: pendle (`0xf4f463...d1d18f`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DegenBox** (`0x1fc83f75499b7620d53757f0b01e2ae626aae530`, chain 43114)
Origin: pendle (`0xf4f463...d1d18f`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**GmxV2CauldronV4** (`0x2b02bbeab8ecab792d3f4dda7a76f63aa21934fa`, chain 42161)
Origin: hinkal (`0x5e70f7...187103`)
Containment: 89.5% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- closeOrder(address)
- setOrderAgent(IGmCauldronOrderAgent)

Removals (removed from original):
- addBorrowPosition(address,uint256)
- setCollateralizationRate(uint256)

**GmxV2CauldronV4** (`0x4f9737e994da9811b8830775fd73e2f1c8e40741`, chain 42161)
Origin: abracadabra (`0x2b02bb...1934fa`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**GmxV2CauldronV4** (`0x66805f6e719d7e67d46e8b2501c1237980996c6a`, chain 42161)
Origin: abracadabra (`0x2b02bb...1934fa`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**GmxV2CauldronV4** (`0x7962acfcfc2ccebc810045391d60040f635404fb`, chain 42161)
Origin: abracadabra (`0x2b02bb...1934fa`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**GmxV2CauldronV4** (`0xd7659d913430945600dfe875434b6d80646d552a`, chain 42161)
Origin: abracadabra (`0x2b02bb...1934fa`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PrivilegedCauldronV4** (`0x406b89138782851d3a8c04c743b010ceb0374352`, chain 1)
Origin: hinkal (`0xa869b9...0d49b5`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PrivilegedCauldronV4** (`0x85f60d3ea4e86af43c9d4e9cc9095281fc25c405`, chain 1)
Origin: hinkal (`0xa869b9...0d49b5`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**WhitelistedCauldronV4** (`0xf75edb14f320df35bb1db1bb4204762431614e46`, chain 1)
Origin: hinkal (`0x369d81...d4da07`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x257101f20cb7243e2c7129773ed5dbbcef8b34e0`, chain 1)
- UnnamedContract (`0x3410297d89dcdaf4072b805efc1ef701bb3dd9bf`, chain 1)
- UnnamedContract (`0x551a7cff4de931f32893c928bbc3d25bf1fc5147`, chain 1)
- UnnamedContract (`0x806e16ec797c69afa8590a55723ce4cc1b54050e`, chain 1)
- UnnamedContract (`0x6e4358c889bb7871061904be31fe47c3b8b7f442`, chain 81457)
- UnnamedContract (`0x7202b7ca846fc93467e95fa279bc6085f2d5b6fe`, chain 81457)
- UnnamedContract (`0x741a2378a8e003acbadbc21506bc624062ace36e`, chain 81457)
- UnnamedContract (`0xa3372cd2178c52fdcb1f6e4c4e93014b4db3b20d`, chain 81457)
- UnnamedContract (`0xeda89b8b19ebef5fc0d5e21ebad174366c230d35`, chain 81457)
- AnyswapV5ERC20 (`0xfe19f0b51438fd612f6fd59c1dbb3ea319f433ba`, chain 56)
- AnyswapV5ERC20 (`0x49a0400587a7f65072c87c4910449fdcc5c47242`, chain 137)
- AnyswapV5ERC20 (`0x0cae51e1032e8461f4806e26332c030e34de3adb`, chain 1285)
- AnyswapV5ERC20 (`0xfea7a6a0b346362bf88a9e4a88416b77a57d6c2a`, chain 42161)
- AnyswapV5ERC20 (`0x130966628846bfd36ff31a822705796e8cb8c18d`, chain 43114)
- BentoBoxV1 (`0x74c764d41b77dbbb4fe771dab1939b00b146894a`, chain 42161)
- BentoBoxV1 (`0xf4f46382c2be1603dc817551ff9a7b333ed1d18f`, chain 43114)
- BlastBox (`0xc8f5eb8a632f9600d1c7bc91e97dad5f8b1e3748`, chain 81457)
- BlastMIMSwapFactory (`0x7e05363e225c1c8096b1cd233b59457104b84908`, chain 81457)
- BlastMIMSwapRouter (`0x85faafc31bc8b16be7039f869cd2006da257b705`, chain 81457)
- BlastOnboarding (`0xa64b73699cc7334810e382a4c09caec53636ab96`, chain 81457)
- CakeStrategy (`0x08b918dd18e087893bb9d711d9e0bbaa7a63ef63`, chain 56)
- CauldronFeeWithdrawer (`0x2c9f65bd1a501cb406584f5532ce57c28829b131`, chain 42161)
- CauldronLowRiskV1 (`0x6cbafee1fab76ca5b5e144c43b3b50d42b7c8c8f`, chain 1)
- CauldronMediumRiskV1 (`0x6ff9061bb8f97d948942cef376d98b51fa38b91f`, chain 1)
- CauldronMediumRiskV1 (`0xbb02a884621fb8f5bfd263a67f58b65df5b090f3`, chain 1)
- CauldronMediumRiskV1 (`0xffbf4892822e0d552cff317f65e1ee7b5d3d9ae6`, chain 1)
- CauldronV2 (`0x390db10e65b5ab920c19149c919d970ad9d18a41`, chain 1)
- CauldronV2 (`0x5ec47ee69bede0b6c2a2fc0d9d094df16c192498`, chain 1)
- CauldronV2 (`0xcfc571f3203756319c231d3bc643cee807e74636`, chain 1)
- CauldronV2 (`0xf179fe36a36b32a4644587b8cdee7a23af98ed37`, chain 1)
- CauldronV2CheckpointV1 (`0x35a0dd182e4bca59d5931eae13d0a2332fa30321`, chain 1)
- CauldronV2CheckpointV1 (`0x4eaed76c3a388f4a841e9c765560bbe7b3e4b3a0`, chain 1)
- CauldronV2Flat (`0x003d5a75d284824af736df51933be522de9eed0f`, chain 1)
- CauldronV2Flat (`0x05500e2ee779329698df35760bedcaac046e7c27`, chain 1)
- CauldronV2Flat (`0x0bca8ebcb26502b013493bf8fe53aa2b1ed401c1`, chain 1)
- CauldronV2Flat (`0x252dcf1b621cc53bc22c256255d2be5c8c32eae4`, chain 1)
- CauldronV2Flat (`0x6371efe5cd6e3d2d7c477935b7669401143b7985`, chain 1)
- CauldronV2Flat (`0x7b7473a76d6ae86ce19f7352a1e89f6c9dc39020`, chain 1)
- CauldronV2Flat (`0x920d9bd936da4eafb5e25c6bdc9f6cb528953f9f`, chain 1)
- CauldronV2Flat (`0x9617b633ef905860d919b88e1d9d9a6191795341`, chain 1)
- CauldronV2Flat (`0x98a84eff6e008c5ed0289655ccdca899bcb6b99f`, chain 1)
- CauldronV2Flat (`0xc1879bf24917ebe531fbaa20b0d05da027b592ce`, chain 1)
- CauldronV2Flat (`0xc319eea1e792577c319723b5e60a15da3857e7da`, chain 1)
- CauldronV2Flat (`0xebfde87310dc22404d918058faa4d56dc4e93f0a`, chain 1)
- CauldronV2Multichain (`0xc89958b03a55b5de2221acb25b58b89a000215e6`, chain 42161)
- CauldronV2Multichain (`0x0a1e6a80e93e62bd0d3d3bfcf4c362c40fb1cf3d`, chain 43114)
- CauldronV2Multichain (`0x2450bf8e625e98e14884355205af6f97e3e68d07`, chain 43114)
- CauldronV2Multichain (`0x3b63f81ad1fc724e44330b4cf5b5b6e355ad964b`, chain 43114)
- CauldronV2Multichain (`0x3cfed0439ab822530b1ffbd19536d897ef30d2a2`, chain 43114)
- CauldronV2Multichain (`0x95cce62c3ecd9a33090bbf8a9eac50b699b54210`, chain 43114)
- CauldronV2Multichain (`0xacc6821d0f368b02d223158f8ada4824da9f28e3`, chain 43114)
- CauldronV2MultiChain (`0x692cf15f80415d83e8c0e139cabcda67fcc12c90`, chain 56)
- CauldronV2MultiChain (`0xf8049467f3a9d50176f4816b20cddd9bb8a93319`, chain 56)
- CauldronV3 (`0x7ce7d9ed62b9a6c5ace1c6ec9aeb115fa3064757`, chain 1)
- CauldronV3 (`0xc6b2b3fe7c3d7a6f823d9106e22e66660709001e`, chain 1)
- CauldronV3 (`0xd31e19a0574dbf09310c3b06f3416661b4dc7324`, chain 1)
- CauldronV3_2 (`0x8227965a7f42956549afaec319f4e444aa438df5`, chain 1)
- CauldronV3_2 (`0x68f498c230015254aff0e1eb6f85da558dff2362`, chain 10)
- ClonableBeaconProxy (`0x3e6648c5a70a150a88bce65f4ad4d506fe15d2af`, chain 42161)
- DegenBox (`0xa93c81f564579381116ee3e007c9fcfd2eba1723`, chain 10)
- DegenBox (`0x7c8fef8ea9b1fe46a7689bfb8149341c90431d38`, chain 42161)
- ElevatedMinterBurner (`0x1e188dd74adf8cc95c98714407e88a4a99b759a5`, chain 10)
- ElevatedMinterBurner (`0x79533f85479e04d2214305638b6586b724bec951`, chain 56)
- ElevatedMinterBurner (`0x8e7982492f6d330d0e1aab9e110d7dffc69c20fc`, chain 137)
- ElevatedMinterBurner (`0x6e858b0dd9a9dcdf710b28c236292e30ba079728`, chain 1285)
- ElevatedMinterBurner (`0x26f20d6dee51ad59af339bedf9f721113d01b6b3`, chain 42161)
- ElevatedMinterBurner (`0x9ba780f8a517e2245892a388427973c8b7c3b769`, chain 43114)
- EthereumWithdrawer (`0xb2c3a9c577068479b1e5119f6b7da98d25ba48f4`, chain 1)
- Factory (`0xdf46f6b1a5f794f21ead4008c7de4e02dc045297`, chain 1)
- Factory (`0x8d0cd3eef1794f59f2b3a664ef07fcad401fec73`, chain 42161)
- GmxGlpWrapper (`0x3477df28ce70cecf61fffa7a95be4bec3b3c7e75`, chain 42161)
- InverseOracle (`0xb2c3a9c577068479b1e5119f6b7da98d25ba48f4`, chain 81457)
- LzIndirectOFTV2 (`0x48686c24697fe9042531b64d792304e514e74339`, chain 10)
- LzIndirectOFTV2 (`0x41d5a04b4e03dc27dc1f5c5a576ad2187bc601af`, chain 56)
- LzIndirectOFTV2 (`0xca0d86afc25c57a6d2acdf331cabd4c9cee05533`, chain 137)
- LzIndirectOFTV2 (`0xef2dbdfec54c466f7ff92c9c5c75abb6794f0195`, chain 1285)
- LzIndirectOFTV2 (`0x4035957323fc05ad9704230e3dc1e7663091d262`, chain 8453)
- LzIndirectOFTV2 (`0x957a8af7894e76e16db17c2a913496a4e60b7090`, chain 42161)
- LzIndirectOFTV2 (`0xb3a66127ccb143bfb01d3aecd3ce9d17381b130d`, chain 43114)
- LzIndirectOFTV2 (`0x60bbefe16dc584f9af10138da1dfbb4cdf25a097`, chain 59144)
- LzIndirectOFTV2 (`0xca8a205a579e06cb1be137ea3a5e5698c091f018`, chain 81457)
- LzOFTV2FeeHandler (`0x52b2773fb2f69d565c651d364f0aa95ebed097e4`, chain 8453)
- LzOFTV2FeeHandler (`0x41b191911cf3482b31cfcd65bd3c79e76b26b35a`, chain 59144)
- LzProxyOFTV2 (`0x439a5f0f5e8d149dda9a0ca367d4a8e4d6f83c10`, chain 1)
- MagicApe (`0xf35b31b941d94b249eaded041db1b05b7097feb6`, chain 1)
- MagicGlp (`0x85667409a723684fe1e57dd1abde8d88c2f54214`, chain 42161)
- MagicInternetMoneyV1 (`0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3`, chain 1)
- MagicLP (`0x6c843d25a2b0ee3e8844492e891dc7257645023a`, chain 1)
- MagicLP (`0x2958db359d22411cdf9825f8b27f17350a6fc6bb`, chain 42161)
- MintableBurnableERC20 (`0x4a3a6dd60a34bb2aba60d73b4c88315e9ceb6a3d`, chain 8453)
- MintableBurnableERC20 (`0xdd3b8084af79b9bae3d1b668c0de08ccc2c9429a`, chain 59144)
- MintableBurnableERC20 (`0x76da31d7c9cbeae102aff34d3398bc450c8374c1`, chain 81457)
- mSpellStaking (`0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797`, chain 1)
- mSpellStaking (`0x1df188958a8674b5177f77667b8d173c3cdd9e51`, chain 42161)
- OFTWrapper (`0x287176dfbec7e8cee0f876fc7b52960ee1784adc`, chain 1)
- OFTWrapper (`0x287176dfbec7e8cee0f876fc7b52960ee1784adc`, chain 10)
- OFTWrapper (`0x287176dfbec7e8cee0f876fc7b52960ee1784adc`, chain 56)
- OFTWrapper (`0xe1261e47b08a22df93af46889ee504c2aa6dfd4c`, chain 137)
- OFTWrapper (`0x287176dfbec7e8cee0f876fc7b52960ee1784adc`, chain 1285)
- OFTWrapper (`0x287176dfbec7e8cee0f876fc7b52960ee1784adc`, chain 42161)
- OFTWrapper (`0x287176dfbec7e8cee0f876fc7b52960ee1784adc`, chain 43114)
- RedstoneAggregator (`0x86e761f620b7ac8ea373e0463c8c3bcce7bd385b`, chain 81457)
- Router (`0x7202b7ca846fc93467e95fa279bc6085f2d5b6fe`, chain 1)
- Router (`0x63d8e76143a1fd075981a44e27652adffee09f01`, chain 42161)
- SolidlyLpWrapper (`0x6eb1709e0b562097bf1cc48bc6a378446c297c04`, chain 10)
- Spell (`0x090185f2135308bad17527004364ebcc2d37e5f6`, chain 1)
- sSpellV1 (`0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9`, chain 1)
- UnnamedContract (`0x287176dfbec7e8cee0f876fc7b52960ee1784adc`, chain 250)
- UnnamedContract (`0x4fdffa59bf8dda3f4d5b38f260eab8bfac6d7bc1`, chain 250)
- UnnamedContract (`0x64c65549c10d86de6f00c3b0d5132d8f742af8c4`, chain 250)
- UnnamedContract (`0x7208d9f9398d7b02c5c22c334c2a7a3a98c0a45d`, chain 250)
- UnnamedContract (`0x74a0bca2eeedf8883cb91e37e9ff49430f20a616`, chain 250)
- UnnamedContract (`0x82f0b8b456c1a451378467398982d4834b6829c1`, chain 250)
- UnnamedContract (`0x8e45af6743422e488afacdad842ce75a09eaed34`, chain 250)
- UnnamedContract (`0xa3fc1b4b7f06c2391f7ad7d4795c1cd28a59917e`, chain 250)
- UnnamedContract (`0xc5c01568a3b5d8c203964049615401aaf0783191`, chain 250)
- UnnamedContract (`0xd4357d43545f793101b592bacab89943dc89d11b`, chain 250)
- UnnamedContract (`0xed745b045f9495b8bfc7b58eea8e0d0597884e12`, chain 250)
- UnnamedContract (`0xf5bce5077908a1b7370b9ae04adc565ebd643966`, chain 250)
- UnnamedContract (`0x1b77fdabaa7fefd55f4ac075b6e817b8d773315b`, chain 2222)
- UnnamedContract (`0x287176dfbec7e8cee0f876fc7b52960ee1784adc`, chain 2222)
- UnnamedContract (`0x30d525cbb79d2baae7637ea748631a6360ce7c16`, chain 2222)
- UnnamedContract (`0x3cff6f628ebc88e167640966e67314cf6466e6a8`, chain 2222)
- UnnamedContract (`0x471ee749ba270eb4c1165b5ad95e614947f6fceb`, chain 2222)
- UnnamedContract (`0x526a17c623809792c033c9816ae9a6fa80acdfdd`, chain 2222)
- UnnamedContract (`0x630fc1758de85c566bdec1d75a894794e1819d7e`, chain 2222)
- UnnamedContract (`0x7ad0e580d8458bbef71ec6a1755c59651e1eaaa7`, chain 2222)
- UnnamedContract (`0x895731a0c3836a5534561268f15eba377218651d`, chain 2222)
- UnnamedContract (`0xc7a161cfd0e133d289b13692b636b8e8b5cd8d8c`, chain 2222)
- WhitelistedCauldronV3 (`0x53375add9d2dfe19398ed65baaeffe622760a9a6`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 127; live-surface rows included: 127 (122 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 151/208 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/89 (11.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 120 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1007 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 28
- Confirmed-live implementations: 121 of 1131 unique; 1010 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/502
- Verified + Unaudited implementations: 490
- Verified by bytecode match: 2
- Unverified implementations: 629
- Unique implementations: 1131
- Raw deployments: 2350
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $11,568,838.83
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $11,568,838.83 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 9 | 1.8% | 2024-12 |
| Guardian | Tier 2 | 1 | 0.2% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BlastBox | unknown | project_anchor | own_supporting | 0 | blast | unit-378937 | `0xc8f5eb8a632f9600d1c7bc91e97dad5f8b1e3748` | ✅ Audited |
| BlastCauldronV4 | unknown | project_anchor | own_supporting | 0 | blast | unit-378916 | `0x79e8cad80e2aa49a246b789584c45aab1cfe402e` | ✅ Audited |
| BlastOnboardingBoot | unknown | project_anchor | own_supporting | 1 | blast | unit-378959 | `0xa64b73699cc7334810e382a4c09caec53636ab96` | ✅ Audited |
| CauldronV4 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378852 | `0x726413d7402ff180609d0ebc79506df8633701b1` | ✅ Audited |
| DegenBox | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378855 | `0x7c8fef8ea9b1fe46a7689bfb8149341c90431d38` | ✅ Audited |
| GmxV2CauldronOrderAgent | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378856 | `0x8157075b278718c3c075043faa85822ad98d60f2` | ✅ Audited |
| MagicGlpRewardHandler | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-378957 | 2 deployments: arbitrum `0x41b8dbde2d4127111fbedf31783781ae69300026`; arbitrum `0x85667409a723684fe1e57dd1abde8d88c2f54214` | ✅ Audited |
| MagicLP | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-378955 | 2 deployments: arbitrum `0x2958db359d22411cdf9825f8b27f17350a6fc6bb`; arbitrum `0x8d0cd3eef1794f59f2b3a664ef07fcad401fec73` | ✅ Audited |
| Router | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-378850 | `0x63d8e76143a1fd075981a44e27652adffee09f01` | ✅ Audited |
| Spell | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378738 | `0x090185f2135308bad17527004364ebcc2d37e5f6` | ✅ Audited |

### ⚠️ Verified + Unaudited (490)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| StandardArbERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f` | ⚠️ Unaudited |
| MarketToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x09400d9db990d5ed3f35d7be61dfaeb900af03c9`; arbitrum `0x450bb6774dd8a756274e0ab4107953259d2ac541`; arbitrum `0x47c031236e19d024b42f8ae6780e44a573170703`; arbitrum `0x70d95587d40a2caf56bd97485ab3eec10bee6336`; arbitrum `0x7c11f78ce78768518d743e81fdfa2f860c6b9a77`; arbitrum `0x7f1fa204bb700853d36994da19f830b6ad18455c`; arbitrum `0xc25cef6061cf5de5eb761b50e4743c1f5d7e5407` | ⚠️ Unaudited |
| FantomToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4e15361fd6b4bb609fa63c81a2be19d873717870`; ethereum `0x80d6c1d4515e0fa811bccc3ab225c89e5348c582`; ethereum `0xdcc584b02117d011107c472b43548531c42cd329` | ⚠️ Unaudited |
| cvxCrvToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7` | ⚠️ Unaudited |
| LUSDToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f98805a4e8be255a32880fdec7f6728c6568ba0` | ⚠️ Unaudited |
| BaseRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e` | ⚠️ Unaudited |
| LayerZeroToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6985884c4392d348587b19cb9eaaf157f13271cd`; arbitrum `0x6985884c4392d348587b19cb9eaaf157f13271cd` | ⚠️ Unaudited |
| LQTYToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d` | ⚠️ Unaudited |
| JoeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd` | ⚠️ Unaudited |
| AlToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6da0fe9ad5f3b0d58160288917aa56653660e9` | ⚠️ Unaudited |
| AlchemixToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbdb4d16eda451d0503b854cf79d55697f90c8df` | ⚠️ Unaudited |
| cvxRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf50b810e57ac33b91dcf525c6ddd9881b139332` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-378860 | `0xfea7a6a0b346362bf88a9e4a88416b77a57d6c2a` | ⚠️ Unaudited |
| DepositToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x903c9974aaa431a765e60bc07af45f0a1b3b61fb` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | bsc | unit-378882 | `0xfe19f0b51438fd612f6fd59c1dbb3ea319f433ba` | ⚠️ Unaudited |
| cvxFpisToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2847348b58ced0ca58d23c7e9106a49f1427df6` | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-378810 | `0xb153fb3d196a8eb25522705560ac152eeec57901` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x38ea452219524bb87e18de1c24d3bb59510bd783`; ethereum `0xdf0770df86a8034b3efef0a1bb3c889b8332ff56` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | avalanche | unit-378862 | `0x130966628846bfd36ff31a822705796e8cb8c18d` | ⚠️ Unaudited |
| cvxFxsToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeef77d3f69374f66429c91d732a244f074bdf74` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 9 | avalanche | n/a | 9 deployments: avalanche `0x29472d511808ce925f501d25f9ee9effd2328db2`; avalanche `0x3fe38b7b610c0acd10296fef69d9b18eb7a9eb1f`; avalanche `0x585e7bc75089ed111b656faa7aeb1104f5b96c15`; avalanche `0x8b650e26404ac6837539ca96812f0123601e4448`; avalanche `0x929f5cab61dfec79a5431a7734a68d714c4633fa`; avalanche `0xbfdbe35168953c9d29bdf9a0043f902f233c76e0`; avalanche `0xc146783a59807154f92084f9243eb139d58da696`; avalanche `0xc988c170d0e38197dc634a45bf00169c7aa7ca19`; avalanche `0xed6aaf91a2b084bd594dbd1245be3691f9f637ac` | ⚠️ Unaudited |
| MintableBurnableERC20 | token | project_anchor | own_supporting | 0 | blast | unit-378915 | `0x76da31d7c9cbeae102aff34d3398bc450c8374c1` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-378956 | `0x3e6648c5a70a150a88bce65f4ad4d506fe15d2af` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | polygon | unit-378815 | `0x49a0400587a7f65072c87c4910449fdcc5c47242` | ⚠️ Unaudited |
| JoeHatToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82fe038ea4b50f9c957da326c412ebd73462077c` | ⚠️ Unaudited |
| StabilityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66017d22b0f8556afdd19fc67041899eb65a21bb` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24179cd81c9e782a4096035f7ec97fb8b783e007` | ⚠️ Unaudited |
| mSpellStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x694808221d4f31d5849f2aba08584e2c8f4b99ff`; arbitrum `0x6cc0cd7d25e291029b55c767b9a2d1d9a18ae668`; avalanche `0xa3c8931ec0fef9bf05386d154c4cd1e93aa92a12`; avalanche `0xbd84472b31d947314fdfa2ea42460a2727f955af`; avalanche `0xc1f1862de85374378173566a8f3be28da3c3ec70` | ⚠️ Unaudited |
| Booster | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd8bd5cdd145ed2197cb16ddb172df954e3f28659`; ethereum `0xf403c135812408bfbe8713b5a23a04b3d48aae31` | ⚠️ Unaudited |
| MintableBurnableERC20 | token | project_anchor | own_supporting | 0 | base | unit-378952 | `0x4a3a6dd60a34bb2aba60d73b4c88315e9ceb6a3d` | ⚠️ Unaudited |
| ActivePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f` | ⚠️ Unaudited |
| CollSurplusPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d32e8b97ed5881324241cf03b2da5e2ebce5521` | ⚠️ Unaudited |
| AbraOFTUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 6 deployments: arbitrum `0x051ae6144f4e4c6afd279b202333d3191df88b0b`; arbitrum `0x51c07fc69950bed5988fc5dc187baa8465033fae`; arbitrum `0x5db2dfe0fb881f046431c4238636a55310f6226b`; arbitrum `0x9473b1b2c32a87184bf5d94a30b8bab09b6a7cf6`; arbitrum `0xa21143e52adefc056c704b2270575664c9a084a6`; arbitrum `0xfc1f2ac8763abca1c392e6c42570881e44f73f83` | ⚠️ Unaudited |
| AdvancedWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2150617bc0b487112b52cc0bc7dc484b95e8f633` | ⚠️ Unaudited |
| AdventureGold | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32353a6c91143bfd6c7d363b546e62a9a2489a20` | ⚠️ Unaudited |
| aeWETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ⚠️ Unaudited |
| AltExercisepOLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x053449023313a67b0ea179ae2c4acd65afdaa729` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | moonriver | unit-378811 | `0x0cae51e1032e8461f4806e26332c030e34de3adb` | ⚠️ Unaudited |
| ArbEthLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9facfa2fc50c9a30c77a2ad14e2db107d591918` | ⚠️ Unaudited |
| ArbEthSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c56dbcc056655b8813539af9c819ae128c07e17` | ⚠️ Unaudited |
| AVAXLevSwapperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69bfea0307a071c3e6cd217486b16d20bd58c7b1` | ⚠️ Unaudited |
| AvaxLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x3e6ef9e97147c266c5bddef03e7dfba7a167d853`; avalanche `0x6e4358c889bb7871061904be31fe47c3b8b7f442`; avalanche `0xe2601e7e0923a0d879e9206fcaa902ce25aeb7dd`; avalanche `0xed5d79f369d878c9038ac156d7d71b6364756f8e` | ⚠️ Unaudited |
| AVAXOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0824545b22dd6dc644c8b66d7923e613816ff63a` | ⚠️ Unaudited |
| AvaxSwapperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b727505fdf3650028c8de0f5d73337ba78f36a8` | ⚠️ Unaudited |
| AvaxUsdtLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8cee5b335f450933b4720b5b84e6125d4225fb62` | ⚠️ Unaudited |
| AvaxUsdtOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd43f26102b0671dcf8d6357aa2908d6cc80c0559` | ⚠️ Unaudited |
| AvaxUsdtSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ca03febde38c2c8a2e8f3d74e23a58192ca921d` | ⚠️ Unaudited |
| BackingRefill | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc448b27aea1a825354c3296fcb2af598aea09d8c` | ⚠️ Unaudited |
| BadBuildersClubSoulbound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42` | ⚠️ Unaudited |
| BatchSender | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1070f775e8eb466154bba8fa0076c4adc7fe17e8`; arbitrum `0x5179d7ee1b8ececb9ecf279b435bd03f8d3107a6` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378954 | `0xf5bce5077908a1b7370b9ae04adc565ebd643966` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb734c264f83e39ef6ec200f99550779998cc812d` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378853 | `0x74c764d41b77dbbb4fe771dab1939b00b146894a` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378874 | `0xf4f46382c2be1603dc817551ff9a7b333ed1d18f` | ⚠️ Unaudited |
| BlastMIMSwapFactory | registry | project_anchor | own_supporting | 0 | blast | unit-378920 | `0x7e05363e225c1c8096b1cd233b59457104b84908` | ⚠️ Unaudited |
| BlastMIMSwapRouter | adapter | project_anchor | own_supporting | 0 | blast | unit-378924 | `0x85faafc31bc8b16be7039f869cd2006da257b705` | ⚠️ Unaudited |
| BnbStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x555ea72d7347e82c614c16f005fa91caf06dcb5a` | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x217945d4cb3386420252da73743f1730f38266e9`; avalanche `0x846a4c2e80da03e4d8aef07a9503ecf854bfff23`; avalanche `0xbb28e074c1448c92b1403ba3bd4d6905e20a7ad0` | ⚠️ Unaudited |
| BoringHelperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x11ca5375adafd6205e41131a4409f182677996e6`; arbitrum `0x37b3287292de241278fb5fca514a756e0be924f8`; avalanche `0x1dd4d86180eee39ac4fb35eca67cacf608ab5741`; avalanche `0xce63eca0c8a2084c1baece7737db88f10c412c5e`; avalanche `0xdc0730f8fc5f0efa1c304716a50d0a96ce4a7c62`; avalanche `0xe35e9cd716d9b87ed4bc2bb7ee8249aaee9a386f` | ⚠️ Unaudited |
| CakeStrategy | unknown | project_anchor | own_supporting | 0 | bsc | unit-378875 | `0x08b918dd18e087893bb9d711d9e0bbaa7a63ef63` | ⚠️ Unaudited |
| CakeStrategyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6171619b5793099f8c577fe5dfc08cea35a3b3aa` | ⚠️ Unaudited |
| CakeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82`; bsc `0x46e358ce367d43bf10c03042324e8ac2f8b42cf4`; bsc `0xe17a478572d7ca33130b06e068afce6b9e7f978b` | ⚠️ Unaudited |
| CauldronFeeWithdrawer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x9cc903e42d3b14981c2109905556207c6527d482`; ethereum `0xb3602d26336f7dae1446cbf32d5a22611cc92b76`; optimism `0x5efc10c353fa30c5758037fdf0a233e971ecc2e0`; bsc `0xabbd4a2b18aec5349e959c43102378c24aab4cfc`; arbitrum `0x0f1b891bee0ef2288c270a20965e328e7806b7b7`; arbitrum `0xcf4f8e9a113433046b990980ebce5c3fa883067f`; avalanche `0x4b4c275a5bbbb68a4dcc99c7c47be3ec04108940`; avalanche `0x64422a1337082bf99e6052ff52684374eb1a7fb7`; avalanche `0x727f7302c6f5fce0464f77735b84b2d192b0c89e`; avalanche `0xa262f31626fdb74808b30c3c8ad30afebdd20ee7`; blast `0x4bca9e4c4eeeff9e9a8d864dc1d0a02e18b366b5` | ⚠️ Unaudited |
| CauldronFeeWithdrawer | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-378847 | `0x2c9f65bd1a501cb406584f5532ce57c28829b131` | ⚠️ Unaudited |
| CauldronLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: ethereum `0x785afad4e404aebdb8f07e43fbef9ed15c5faa35`; arbitrum `0x11689993dff3f79b27440f4ce74d52bb952aac10`; arbitrum `0x2be431ee7e74b1cb7cfa16fc90578ef42ef361b0`; arbitrum `0x4f51264b07db8b2910e892eeef22460de23268a7`; arbitrum `0x5d28da94086984cc3529d0c0ef6d968eeb7620b4`; arbitrum `0xc1f1862de85374378173566a8f3be28da3c3ec70`; arbitrum `0xdbbd9632401ef424b66e2fdc0368e492b8dce280`; arbitrum `0xef633d1af20ed99a69b7cf46da5be63da07ed5ee`; arbitrum `0xff498bbcbf40d0f30f178f553e8fa36153baf30b` | ⚠️ Unaudited |
| CauldronLowRiskV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378757 | `0x6cbafee1fab76ca5b5e144c43b3b50d42b7c8c8f` | ⚠️ Unaudited |
| CauldronMediumRiskV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378758 | 3 deployments: ethereum `0x6ff9061bb8f97d948942cef376d98b51fa38b91f`; ethereum `0xbb02a884621fb8f5bfd263a67f58b65df5b090f3`; ethereum `0xffbf4892822e0d552cff317f65e1ee7b5d3d9ae6` | ⚠️ Unaudited |
| CauldronOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 22 deployments: ethereum `0x0fc9ce76b0d97708683810751325cc4fd970cb44`; ethereum `0x30b9de623c209a42ba8d5ca76384ead740be9529`; ethereum `0x352360cb392fbf0eed44dd3c01b62dda61f56f36`; ethereum `0x8f788f226d36298deb09a320956e3e3318cba812`; ethereum `0xc77931557eebc49acb1b738dc9375879f5d35a25`; moonriver `0x16950c5978880537117f159a492805c021dd44eb`; moonriver `0x358a429f2fe8605f895d70480c51950a56cf3289`; moonriver `0x6335163c8faee040ac1f9a4a7fcf6182ed6caae4`; moonriver `0x635693f0d3ff2eeb95d19e680ed5fbecc5e7d3be`; moonriver `0x8e534c5d52c921dbd6debc56503cf0e2dce6d534`; moonriver `0x9b0f7675e7f0246bbced0a352194026ed2ff5fd3`; arbitrum `0x0588ef6e4fb3aa0dc757206bfe6bae5166e7f843`; arbitrum `0x144eeed06fd86b4eb55e78bd2a8da578cd3164a8`; arbitrum `0x1e52a8a015354640ccc565a1a06767c1c0ab736b`; arbitrum `0x342098f0daf24b14bc9b114d2664e80e67c740fb`; arbitrum `0x4a8b22f5a6b8ff67a0eebe729cc96fe4caf832fa`; arbitrum `0x5fc91246a4cae9841148680ee180f145c34b68ec`; arbitrum `0xaf2fbb9cb80edfb7d3f2d170a65ae3bfa42d0b86`; arbitrum `0xb4c4822b0aed249773aa57641be86d7172978ba7`; arbitrum `0xbf58ad49349fac65e6501cd072ff7dd86adabbfd`; arbitrum `0xe7b98bada6e8fa89bb94f4eefad1a1eb434bc4bc`; avalanche `0x793a15caf24fb54657fb54b593007a4bd454442d` | ⚠️ Unaudited |
| CauldronRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x60ba38f97d3a6250770abaeae2c11fd3c4bcf8ba`; arbitrum `0xc95c39e2398ccb4ea4969423b302d03035c2a189`; arbitrum `0xfcf3d75d40c0facc5d7cc2aff9035cf572022d13` | ⚠️ Unaudited |
| CauldronRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x6b44d94ecdfaf0cb00def55212e226603bb68793`; arbitrum `0x6e8093ebb80cd9f7395681ad8de90ca93b08d9aa`; arbitrum `0xd487a20b8743d0c3e3637fb4eb6b09adf5dbd543`; arbitrum `0xe788abab092c165fab7ded7b7d2962abc808ee6c` | ⚠️ Unaudited |
| CauldronUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40e1a05ee380eb63760226e98e8590f15a46c405` | ⚠️ Unaudited |
| CauldronV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378747 | 6 deployments: ethereum `0x390db10e65b5ab920c19149c919d970ad9d18a41`; ethereum `0x59e9082e068ddb27fc5ef1690f9a9f22b32e573f`; ethereum `0x5ec47ee69bede0b6c2a2fc0d9d094df16c192498`; ethereum `0xbc36fde44a7fd8f545d459452ef9539d7a14dd63`; ethereum `0xcfc571f3203756319c231d3bc643cee807e74636`; ethereum `0xf179fe36a36b32a4644587b8cdee7a23af98ed37` | ⚠️ Unaudited |
| CauldronV2CheckpointV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378746 | 2 deployments: ethereum `0x35a0dd182e4bca59d5931eae13d0a2332fa30321`; ethereum `0x4eaed76c3a388f4a841e9c765560bbe7b3e4b3a0` | ⚠️ Unaudited |
| CauldronV2Flat | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378736 | 12 deployments: ethereum `0x003d5a75d284824af736df51933be522de9eed0f`; ethereum `0x05500e2ee779329698df35760bedcaac046e7c27`; ethereum `0x0bca8ebcb26502b013493bf8fe53aa2b1ed401c1`; ethereum `0x252dcf1b621cc53bc22c256255d2be5c8c32eae4`; ethereum `0x6371efe5cd6e3d2d7c477935b7669401143b7985`; ethereum `0x7b7473a76d6ae86ce19f7352a1e89f6c9dc39020`; ethereum `0x920d9bd936da4eafb5e25c6bdc9f6cb528953f9f`; ethereum `0x9617b633ef905860d919b88e1d9d9a6191795341`; ethereum `0x98a84eff6e008c5ed0289655ccdca899bcb6b99f`; ethereum `0xc1879bf24917ebe531fbaa20b0d05da027b592ce`; ethereum `0xc319eea1e792577c319723b5e60a15da3857e7da`; ethereum `0xebfde87310dc22404d918058faa4d56dc4e93f0a` | ⚠️ Unaudited |
| CauldronV2MultiChain | unknown | project_anchor | own_supporting | 0 | bsc | unit-378879 | 2 deployments: bsc `0x692cf15f80415d83e8c0e139cabcda67fcc12c90`; bsc `0xf8049467f3a9d50176f4816b20cddd9bb8a93319` | ⚠️ Unaudited |
| CauldronV2Multichain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3` | ⚠️ Unaudited |
| CauldronV2Multichain | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378858 | `0xc89958b03a55b5de2221acb25b58b89a000215e6` | ⚠️ Unaudited |
| CauldronV2Multichain | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378861 | 5 deployments: avalanche `0x0a1e6a80e93e62bd0d3d3bfcf4c362c40fb1cf3d`; avalanche `0x2450bf8e625e98e14884355205af6f97e3e68d07`; avalanche `0x3b63f81ad1fc724e44330b4cf5b5b6e355ad964b`; avalanche `0x95cce62c3ecd9a33090bbf8a9eac50b699b54210`; avalanche `0xacc6821d0f368b02d223158f8ada4824da9f28e3` | ⚠️ Unaudited |
| CauldronV2Multichain | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378866 | 3 deployments: avalanche `0x35fa7a723b3b39f15623ff1eb26d8701e7d6bb21`; avalanche `0x3cfed0439ab822530b1ffbd19536d897ef30d2a2`; avalanche `0x56984f04d2d04b2f63403f0ebedd3487716ba49d` | ⚠️ Unaudited |
| CauldronV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378762 | 3 deployments: ethereum `0x7ce7d9ed62b9a6c5ace1c6ec9aeb115fa3064757`; ethereum `0xc6b2b3fe7c3d7a6f823d9106e22e66660709001e`; ethereum `0xd31e19a0574dbf09310c3b06f3416661b4dc7324` | ⚠️ Unaudited |
| CauldronV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: ethereum `0x3e2a2bc69e5c22a8da4056b413621d1820eb493e`; ethereum `0x95fdc98fd66c1935168b5e002f62b7f8147d0f0f`; ethereum `0xc33d23aa4b8a3dd2a3c539276ab57363cc927202`; arbitrum `0x233332a01ebf20f770883ebff68374b015accb9c`; avalanche `0x177a24b427876f61983cce0dd37608611e7de3f7`; avalanche `0x7350078b9b732ca201706ee372789ebb11b1bc25`; avalanche `0xa32d03497ff5c32bcfeebe6a677dbe4a496fd918`; avalanche `0xf24f4cf3e272ef412d0d4764909141b39cc878cf` | ⚠️ Unaudited |
| CauldronV3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: optimism `0xacdd6e28b7440fe17eefd927337480dd1ea7a97b`; optimism `0xc7a161cfd0e133d289b13692b636b8e8b5cd8d8c`; arbitrum `0xd98bfb05dd6aa37ba5624479eb4264de9a3384ee`; avalanche `0x16ebacab63581e69d6f7594c9eb1a05df808ea75`; avalanche `0xced9e36f04ca55da41ad2e0bc2f382892a6b1340`; avalanche `0xd8af1558a2ca227607b49a3293e278c6875f9a40` | ⚠️ Unaudited |
| CauldronV3_2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378765 | `0x8227965a7f42956549afaec319f4e444aa438df5` | ⚠️ Unaudited |
| CauldronV3_2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-378803 | `0x68f498c230015254aff0e1eb6f85da558dff2362` | ⚠️ Unaudited |
| CauldronV3_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: ethereum `0xe19b0d53b6416d139b2a447c3ae7fb9fe161a12c`; optimism `0xb6957806b7fd389323628674bcdfcd61b9cc5e02` | ⚠️ Unaudited |
| CauldronV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378735 | 21 deployments: ethereum `0x00380cb5858664078f2289180cc32f74440ac923`; ethereum `0x38e7d1e4e2de5b06b6fc9a91c2c37828854a41bb`; ethereum `0x43243f7bddcb850acb687c42bbf5066c224054a5`; ethereum `0xa841011a3414d034e1275a9928c5c1eddc4c3b9d`; ethereum `0xc4113ae18e0d3213c6a06947a2ffc70ad3517c77`; ethereum `0xe8ed7455fa1b2a3d8959cd2d59c7f136a45bf341`; moonriver `0x2f1ba281ca9c32bce9c6e8792ba6448434178f89`; moonriver `0x3477df28ce70cecf61fffa7a95be4bec3b3c7e75`; moonriver `0x8d99a15a2be434431cf16d98e23f7fafe0d0da30`; moonriver `0x9affe9639db246fe85d048834386f79daa59fbc4`; moonriver `0xe8de4c60da9c00da512c827e02224c8609fc916a`; arbitrum `0x303a59a1020807b6fd78d3bb0e3c8b6a26bbc0b9`; arbitrum `0x49de724d7125641f56312ebbcbf48ef107c8fa57`; arbitrum `0x6b04c535c852ad19345571247ee12b5bf23dacb6`; arbitrum `0x780db9770ddc236fd659a39430a8a7cc07d0c320`; arbitrum `0xdf46f6b1a5f794f21ead4008c7de4e02dc045297`; arbitrum `0xe05811aff7a105fe05b7144f4e0dd777a83a194e`; arbitrum `0xed50bbabf93a9d3dd7f60bc24d2712606b4c14de`; arbitrum `0xee22ba16e912694e925020f8f22ea2277214eb16`; arbitrum `0xef2acb3d21272d0111e8e90484d598ee7e04e16e`; avalanche `0x17b205f9b670a60f3629af34bc365a74b56f5341` | ⚠️ Unaudited |
| CauldronV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378740 | `0x207763511da879a900973a5e092382117c3c1588` | ⚠️ Unaudited |
| CauldronV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378755 | 3 deployments: ethereum `0x692887e8877c6dd31593cda44c382db5b289b684`; ethereum `0x7259e152103756e1616a77ae982353c3751a6a90`; ethereum `0x7d8df3e4d06b0e19960c19ee673c0823beb90815` | ⚠️ Unaudited |
| CauldronV4 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-378849 | `0x5698135ca439f21a57bddbe8b582c62f090406d5` | ⚠️ Unaudited |
| CauldronV4WithRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: arbitrum `0x247d7e28aa79dffe09b287d191393242411ad85f`; arbitrum `0x5651958a6e4db3327db1fa9198b9954608a0f194`; arbitrum `0x79533f85479e04d2214305638b6586b724bec951`; arbitrum `0x967dbcae94c4dd461ada08fc920bdf87edffe9ec`; arbitrum `0x96bac90bee7f416d33601d1dc45efb19aca8ca62`; arbitrum `0x98bf3e7da6f5a81630730d538715e35d8c0d3ede`; arbitrum `0xa3c8931ec0fef9bf05386d154c4cd1e93aa92a12`; arbitrum `0xac6c439253987be9aff6aac047ec8501ea13d512`; arbitrum `0xc435ccc777fe74c11965353738977d710b25534f`; arbitrum `0xcd959bfcc2931feec89dd98821af03d535500c5c`; arbitrum `0xd404bef05e9e256765440a1b9a6b56750c4cedec`; arbitrum `0xe45217a77c332ff767112dc89e568c473c5fad2b` | ⚠️ Unaudited |
| CauldronZodiacActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b67a91a64a4faa1c3f305e0f49329f0a4ea81f9` | ⚠️ Unaudited |
| CheckpointCauldronV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf36a106153038c436c470674da0ff1f0dadeb23b` | ⚠️ Unaudited |
| ClaimZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f29cb4111cbda8081642da1f75b3c12decf2516` | ⚠️ Unaudited |
| Cliff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xaff90532e2937ff290009521e7e120ed062d4f34`; avalanche `0xc13b1c927565c5af8fcaf9ef7387172c447f6796` | ⚠️ Unaudited |
| Contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 13 deployments: ethereum `0x0f8d249499aa20c876e156c3952041986cfd5a40`; ethereum `0x1ba40e263d33abd536adc164164d2ac7a3ac3c6e`; ethereum `0x52d75bb25a806e247b9b849081685f9913d449d3`; ethereum `0x9fe1d1f60fce3280a0148bba5604034a885c8bb7`; ethereum `0xaf6ae1eac7a063cfeaf57a345ab641cec996c7ff`; ethereum `0xb6a2f573222e9de722889b6c5d5b16b4ad7fd638`; ethereum `0xed698799decdda38314d8168418bb07b45d8ab90`; arbitrum `0x0d62f99ac1fd8b9aa51762a207e9e92fe353c4f7`; arbitrum `0x1b77fdabaa7fefd55f4ac075b6e817b8d773315b`; arbitrum `0x41d5a04b4e03dc27dc1f5c5a576ad2187bc601af`; arbitrum `0xb3a7e63bddee360b8ab7451ef643f0d0dd4182d3`; arbitrum `0xc7e54223d69251e24dad545161277c18c9b3f094`; arbitrum `0xda0b69d244e2b37e75a288c1fe1fb4986ed22179` | ⚠️ Unaudited |
| ConvexStakingWrapperAbra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4985cc58c9004772c225aec9c36cc9a56ecc8c20`; ethereum `0x9447c1413da928af354a114954bfc9e6114c5646`; ethereum `0xd92494cb921e5c0d3a39ea88d0147bbd82e51008` | ⚠️ Unaudited |
| CrvDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8014595f2ab54cd7c604b00e9fb932176fdc86ae` | ⚠️ Unaudited |
| CustomMasterChefJoeV2Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xadaf18d79f316005542da4ecb1624b59c4e6e398` | ⚠️ Unaudited |
| CvxCrvStakingWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434` | ⚠️ Unaudited |
| CvxDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6` | ⚠️ Unaudited |
| cvxFpisStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa87db3eaa93b7293021e38416650d2e666bc483` | ⚠️ Unaudited |
| cvxFxsStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a` | ⚠️ Unaudited |
| CvxLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd18140b4b819b895a3dba5442f959fa44994af50` | ⚠️ Unaudited |
| CvxLockerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a19342e8f1838460ebfccef09f6585e32db86e` | ⚠️ Unaudited |
| DegenBox | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378784 | `0xd96f48665a1410c0cd669a88898eca36b9fc2cce` | ⚠️ Unaudited |
| DegenBox | unknown | project_anchor | own_supporting | 0 | optimism | unit-378809 | `0xa93c81f564579381116ee3e007c9fcfd2eba1723` | ⚠️ Unaudited |
| DegenBox | unknown | project_anchor | own_supporting | 0 | bsc | unit-378876 | `0x090185f2135308bad17527004364ebcc2d37e5f6` | ⚠️ Unaudited |
| DegenBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 10 deployments: optimism `0x233332a01ebf20f770883ebff68374b015accb9c`; optimism `0xb3f5c7d0ac3944a9d9a9623d6b50bcea85a26753`; polygon `0x7a3b799e929c9bef403976405d8908fa92080449`; polygon `0xe56f37ef2e54ecaa41a9675da1c3445736d60b42`; moonriver `0x0d2a5107435cbbbe21db1adb5f1e078e63e59449`; base `0x6e4358c889bb7871061904be31fe47c3b8b7f442`; base `0xa3372cd2178c52fdcb1f6e4c4e93014b4db3b20d`; arbitrum `0x268ab9ecbc5fa40f32d9873ea3a8c02ca9c54be4`; arbitrum `0xfd7234b4727d2c05c26a61d99ebab5f4985745f5`; avalanche `0xd825d06061fdc0585e4373f0a3f01a8c02b0e6a4` | ⚠️ Unaudited |
| DegenBox | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378863 | `0x1fc83f75499b7620d53757f0b01e2ae626aae530` | ⚠️ Unaudited |
| DegenBoxERC20VaultWrapper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: optimism `0x19c08f59c4d75407652a6a970078e79d117d0fd7`; optimism `0x1fff78fd2e139bc1315711dd3ea176bc7028635a`; optimism `0xd8cbd5b22d7d37c978609e4e394ce8b9c003993b`; optimism `0xf4b36812d1645dca9d562846e3abf416d590349e`; arbitrum `0x3844191f0aef0057b00c620bff29352a63f302a3`; arbitrum `0xa30093cfa74cab1da6bd275218296d561557e743` | ⚠️ Unaudited |
| DegenBoxERC4626Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: ethereum `0x35843535220182e89e3a99fceb5348dfe0bd4eb2`; ethereum `0x36c19d20e2edd3fb761530485fdca0a7f15f3e56`; ethereum `0x3f6ec97e20d9e70de441873ac4b1809867238ac0`; ethereum `0xb0deb95556a5e17a3d99a8995ba06d8a75727af1`; arbitrum `0x0f8d249499aa20c876e156c3952041986cfd5a40`; arbitrum `0x3c34bc7c7461fc9af1e5511c0636c07f129b4187`; arbitrum `0x565ade5536ab84018e00d6d7f56e7a300717c10b`; arbitrum `0x65c6b4c3e4e6cf4704b5c1fa1d9c887d4a5c51ec`; arbitrum `0x71c7267d4c5a4b54f6f995f66ad51f13dc688d6b`; arbitrum `0x72db7051a79260f65a2aff5bdb5b658c29e5760d`; arbitrum `0x920a01fd1309fd58a68385c0ab8338f9da4dd8af`; arbitrum `0xda93e1da68cb257b4ae7548dc2e4256d8684bcc5` | ⚠️ Unaudited |
| DegenBoxHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0x3aecb01be778faa795f156b9d3627c0e05f700a1`; arbitrum `0x129149dc63f5778a41f619bb36212566ac54ea45` | ⚠️ Unaudited |
| DegenBoxOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d2a5107435cbbbe21db1adb5f1e078e63e59449` | ⚠️ Unaudited |
| DegenBoxTokenWrapper | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xd3a238d0e0f47aac26defd2afcf03ea41da263c7`; arbitrum `0xdd45c6614305d705a444b3bab0405d68ac85dba5` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x472cfd9fa18a332043cfd5b3c46b09a30124b85d`; ethereum `0x73cfe6b116d161a2f9c165f7fc5270fb7dd2bb1e`; ethereum `0xc58e923bf8a00e4361fe3f4275226a543d7d3ce6` | ⚠️ Unaudited |
| DynamicLPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d2a5107435cbbbe21db1adb5f1e078e63e59449` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | bsc | unit-378880 | `0x79533f85479e04d2214305638b6586b724bec951` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | polygon | unit-378816 | `0x8e7982492f6d330d0e1aab9e110d7dffc69c20fc` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | moonriver | n/a | 25 deployments: optimism `0x155fcaf3ed878daf7aeb259f8eb65b23d98c432f`; optimism `0x1e188dd74adf8cc95c98714407e88a4a99b759a5`; optimism `0x7ad0e580d8458bbef71ec6a1755c59651e1eaaa7`; optimism `0x8e266f8310e047b9900b60132e4767ffdd0878bc`; optimism `0xcf4f8e9a113433046b990980ebce5c3fa883067f`; optimism `0xf24f4cf3e272ef412d0d4764909141b39cc878cf`; bsc `0xd4d19f90fbd30ade4535b6c52429d938eabf4c4b`; polygon `0x4d526f103307b548227f502655f7b80796b64f52`; polygon `0x76c936a0db6eeeb54e615b93a6faaa9930c02c19`; moonriver `0x08b918dd18e087893bb9d711d9e0bbaa7a63ef63`; moonriver `0x458aeba4a8680a5d3240c810871413fea77b1540`; moonriver `0x52b2773fb2f69d565c651d364f0aa95ebed097e4`; moonriver `0x97471c17bee766a51457fb74a82630ad6e17d954`; moonriver `0xb3f5c7d0ac3944a9d9a9623d6b50bcea85a26753`; moonriver `0xc7a161cfd0e133d289b13692b636b8e8b5cd8d8c`; moonriver `0xd2221c2aa82466adecfacadc3944bcb8f6f74bf5`; arbitrum `0x52d75bb25a806e247b9b849081685f9913d449d3`; avalanche `0x2fdc6093f227b532500a59c6538cf177725e58ce`; avalanche `0x611200e802a75b3f1f0b25e6345cf62f16e59f7f`; avalanche `0x7707b4cc8f313420cccd73aad7a3b8dafed6704f`; avalanche `0x7bc6ce247a8d8a789716ee28ebf071a4972398fb`; avalanche `0x7c6e8a0b13ef19b0fb76e0eceb3b1ba5f24aaeb7`; avalanche `0x9d6cb1cfe7c90454488358e16205b3b04eca89fc`; avalanche `0xcdadbe3882453c2b16397bae759135d8b29c6cad`; avalanche `0xe5317d1cb264c3fb55c3824e3c478fb14595cbf5` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | moonriver | unit-378813 | `0x6e858b0dd9a9dcdf710b28c236292e30ba079728` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378844 | `0x26f20d6dee51ad59af339bedf9f721113d01b6b3` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378871 | `0x9ba780f8a517e2245892a388427973c8b7c3b769` | ⚠️ Unaudited |
| ENAOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58538e6a46e07434d7e7375bc268d3cb839c0133` | ⚠️ Unaudited |
| EpochBasedRewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x0c93b86bc291e8cd78385a67754556bb65e82995`; arbitrum `0x0eb142f8d8636d52c4510ae7d9b1c64f7460f8d0`; arbitrum `0x2050b2d6def98bdfef6813c7220404d05dcfe747`; arbitrum `0x4f113542d79febe22cfcb0d9cf8401e7ee761ce1`; arbitrum `0xfe0d8274f7e5268254c1f81e65514a83bea5558c` | ⚠️ Unaudited |
| ERC1967Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x83aadfeb275a4e0146e7cc2845ff99853b66b4b6`; arbitrum `0x93428a452d548e4f8e01a424dd42115429718906` | ⚠️ Unaudited |
| ERC20Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x72281a435fe5a9945e04ef4d0a32771430106587`; avalanche `0x9e6cab0d18291c56e7e1d6e92c268bdc75c05b09` | ⚠️ Unaudited |
| ERC20Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2f32c67da91a464c8514effd7296998303723162`; arbitrum `0xddcb7b2e0384dc92a5547ee9dc46791a4d0703bb` | ⚠️ Unaudited |
| ERC20VaultOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2977e3346569805caa3e75cb17b00facf7bbd982` | ⚠️ Unaudited |
| ERC4626LevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0xaa0500850199bf4e90513ceaef278b9cc7450c87`; ethereum `0xb9143aaed04166cf0ea83bee1a9624a6c8108e7c`; ethereum `0xc47c19a7d951b23a25fd06596494c2ad82f4a56c`; ethereum `0xc7f6b16cf972d689fb688a87629433fcbf182077`; ethereum `0xd22b279c9f5556cebf42fbfbf4159ba2ae984add`; ethereum `0xf236c2e05296f7e086a218e0efcd6c3dc5c2f923`; ethereum `0xfcf3d75d40c0facc5d7cc2aff9035cf572022d13` | ⚠️ Unaudited |
| ERC4626Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x03621c5e54cf3c2064b5ef4142c1a564b2e4e1f9`; ethereum `0x1bc14ebc59a6c173873244f6b478728b07fb6299`; ethereum `0x1db6ae17f7ae55cabcb37d08ff2fbfb83e119138`; ethereum `0x760c0d870c574d53af2acd8369a9f237412c5c6f`; ethereum `0x7c200ae6febddc518cdf6a056b014e7f73b941ae`; ethereum `0x9753f3113393bb0d9b4bae333fef9f5811004443`; ethereum `0x9c4cf080559b45554cee8d9c3eec8dae776b803a`; ethereum `0xeb58304c786a9961bb04cc4236c31ebe713db291`; ethereum `0xeb75c59046f618790d588347d1a28df212b7195b` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x144d5bdff8239ce5f514f1a944588df783384e9f`; ethereum `0x93ef8ecf4d9cbc602806c85e0d990856775407cd`; ethereum `0xb9516c6c702c4434f6cf08f124ef0478754f7b3d`; ethereum `0xc0e99a6f9fc800966f57c923bc7ae2e3d23744ca`; ethereum `0xcfec59ef026d3c1d8c8d179d4e3e493b794428a5` | ⚠️ Unaudited |
| EsGMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf42ae1d54fd613c9bb14810b0588faaa09a426ca` | ⚠️ Unaudited |
| EthereumWithdrawer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2612c7a5fdaf8dea4f4d6c7a9da8e32a003706f6` | ⚠️ Unaudited |
| EthereumWithdrawer | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-378771 | `0xb2c3a9c577068479b1e5119f6b7da98d25ba48f4` | ⚠️ Unaudited |
| ExercisepOLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06843e4b350a04f6722b792e2cd49f570dc50315` | ⚠️ Unaudited |
| Extract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x2050b2d6def98bdfef6813c7220404d05dcfe747`; ethereum `0x376e0184bb4c10cd7b64eb98643120433af2ff7e`; ethereum `0x4eb8db85c3985cd7ecb2540abfeb5b5e92b201dc`; ethereum `0x531208ffe7c999e513fd994591cc8aa6a690c07c`; ethereum `0xd67d17fe69478811e080b45f5dd9f4c7b4d7019d`; ethereum `0xe446e102702a56fb711ab40af6a061ecaa36f2e5`; ethereum `0xe71896e4c8ce8447aabe82cd5eb752ccaeb609ad`; ethereum `0xe930460dbcbd7a3255d17ff4882d7338582510dd` | ⚠️ Unaudited |
| Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-378786 | `0xdf46f6b1a5f794f21ead4008c7de4e02dc045297` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: base `0x9620a2a6a6c6dcef83fcab71430aaad55e7c0999`; linea `0x697778d9d1f7be0f93f98177a3218859297d3755` | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11d62807dae812a0f1571243460bf94325f43bb7` | ⚠️ Unaudited |
| FeeBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd430246142084ec68f7ab090cbd9252a1d1410e9` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a527d8bb09f7d70c148ab5de919e9bf68a0d769` | ⚠️ Unaudited |
| FeeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0x4101959e6648074a382bbeea3eea8f9c03256344`; base `0x358a429f2fe8605f895d70480c51950a56cf3289`; arbitrum `0x648360914629694165780f38ae3629b336768155`; arbitrum `0x68e78618b8b6f1560785eb5ae4eaf4bd4d320a3e`; arbitrum `0xf0f110bdc074185df4253f4e1e738c35933bb3b3`; linea `0x91701a6bfad566883c60dc961323c6fb6e9f59bc` | ⚠️ Unaudited |
| FeeRateModelImpl | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0xcc3d99887f83f87b2787404aa529cff70f0e9935`; base `0x9affe9639db246fe85d048834386f79daa59fbc4`; arbitrum `0x223d9ba9278ab3b38bba727f49037180128fb0c9`; linea `0x418ade5929fb6a9e3666ab19332e70a0f0a64470` | ⚠️ Unaudited |
| FixedPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x11689993dff3f79b27440f4ce74d52bb952aac10`; blast `0x12ea786c9e53c5740fef04efd568e69d6e9f3e98`; blast `0x2bcccb83178f9fd889eb937979d659a5997ca327`; blast `0x5fbaf14a1c65cea90b25fd4c186a1669bf421d5d` | ⚠️ Unaudited |
| Foo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 12 deployments: avalanche `0x04bc95d6049ff64885d503614521966c91792722`; avalanche `0x2386937474ed353cca2b0531cee31228a7e56a46`; avalanche `0x4a9aa1b21d5578a365c241335d6dc5d35d0d2abc`; avalanche `0x4c67a4d367eeb110444e42c9147f7d8abc6e8c72`; avalanche `0x8beff799cd9aeea4ca7e9529ce65eaeed53a2997`; avalanche `0x8c63cda467e5de338fa503f2977afa9cd4bed669`; avalanche `0x8f5e569c3b927a01e6b0a3358836035fe6d520f6`; avalanche `0x931c3a97bf28dc06ff1229721ccdebb7d90c0e6f`; avalanche `0x9d01d5d682ff448b0d1f84d7d1ad9e8dc709618d`; avalanche `0xd2969a7b3d3c05fa9c718510c24c5b15bd5affcf`; avalanche `0xe8d3e945e8737d6fc4a552c29eb064f8a52d3e87`; avalanche `0xed172bb56bcc1e760ad66a077b797a008ab8b838` | ⚠️ Unaudited |
| Foobar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x016797a006a2181fe919cdad0cc796fb895be9cc`; arbitrum `0x07477608b26b7089c378faff4d7ca6be7c7c170e`; arbitrum `0x526a17c623809792c033c9816ae9a6fa80acdfdd`; arbitrum `0x68a8b72f6a7dff17945000f8260d3988ad8ac357`; arbitrum `0x7ad0e580d8458bbef71ec6a1755c59651e1eaaa7` | ⚠️ Unaudited |
| FTT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50d1c9771902476076ecfc8b2a83ad6b9355a4c9` | ⚠️ Unaudited |
| FTT3MonthUnlock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x46c68e70c5de077c87e79394b639fde780e5c83a`; ethereum `0x600d08a0c2ae496b9614c8342cd2781e130b7862` | ⚠️ Unaudited |
| FTT3YearUnlock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd769010d3813bafaf4addbfe258eafd07828bb83` | ⚠️ Unaudited |
| GizerItems | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c0f03411ab250f0a080a4420190b821affd4602` | ⚠️ Unaudited |
| GizerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5db2d4a2e6d06f9afe906fc33036f77ebe87b59b`; ethereum `0x89afa608488592cef2f337f36eaf4cbfb05d9289`; ethereum `0xe638dc39b6adbee8526b5c22380b4b45daf46d8e` | ⚠️ Unaudited |
| GLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4277f8f2c384827b5273592ff7cebd9f2c1ac258` | ⚠️ Unaudited |
| GlpManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x321f653eed006ad1c29d174e17d96351bde22649`; arbitrum `0x3963ffc9dff443c2a94f21b129d429891e32ec18` | ⚠️ Unaudited |
| GLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x1dde3505fa0dd8ef2253dbbc1aea0b4355c38d28`; arbitrum `0x445918e531aff4ef2ed31ec497d40ec7eb125582`; arbitrum `0x791aab38c442a327df0beb1fec5767d8ca91dcc1`; arbitrum `0x8bee5db2315df7868295c531b36baa53439cf528` | ⚠️ Unaudited |
| GlpVaultHarvestor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x03ac08e3f810777ebc7a4049b6f8b6968560ad69`; arbitrum `0x08bd2caccd66113f98cfbd9f64a663b88001d4a8`; arbitrum `0xe553fb1c0cd15a8192da2b1d2d2b3cab84555b47`; arbitrum `0xedea4518796ea45dfc38d78d9b8b9e070436ad51` | ⚠️ Unaudited |
| GLPVaultLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x8e266f8310e047b9900b60132e4767ffdd0878bc`; arbitrum `0x9b27a40586ac7c4d283d0b07a749fc05f315fb45` | ⚠️ Unaudited |
| GLPVaultOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x2d0d6e29da414717ab55c9e46e9735c9c2ba343f`; arbitrum `0x56fa1d0c03961cf90443edb88985b38506635c43`; arbitrum `0xb199351f83c4a5145c5144fbda8d63934b0250fe` | ⚠️ Unaudited |
| GLPVaultSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x535c8f9bc1f988588756714d265121d8cfe8ccfb`; arbitrum `0xef05d8747a6fc81509fb37ecf6b1a2d39290d881` | ⚠️ Unaudited |
| GlpWrapperHarvestor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x635693f0d3ff2eeb95d19e680ed5fbecc5e7d3be`; arbitrum `0x8e534c5d52c921dbd6debc56503cf0e2dce6d534`; arbitrum `0xf9ce23237b25e81963b500781fa15d6d38a0de62` | ⚠️ Unaudited |
| GLPWrapperLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8beff799cd9aeea4ca7e9529ce65eaeed53a2997` | ⚠️ Unaudited |
| GLPWrapperSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xa7b61946cc4eb4f10a976fe81f341bb202d54daa`; arbitrum `0xb09efc7080f1314999b359bc95e7ee37c57243f6` | ⚠️ Unaudited |
| GmOracleWithAggregator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 24 deployments: arbitrum `0x139a6512edc90a140bc6f042c920f87c2790a6ef`; arbitrum `0x149a01f09ff6e4d76b40d3ea41f49efa95d5081b`; arbitrum `0x1efde93817c68ccb761f13791cc721bd042c0c98`; arbitrum `0x290ba9e612d42ef084ef1f2e34b7a0d363aadc1b`; arbitrum `0x2cecb3f2ec5a45c7bee858003f25137d04f56321`; arbitrum `0x3b4a99f71095d8e38e48c254df7344e28c40f84a`; arbitrum `0x3e60dafa968d1786b1db76da3ef658c9563791ab`; arbitrum `0x3e8171e4a64052e3a14f5100d3ddad9c9368d317`; arbitrum `0x593aec996e997c9b7e298458df1c4f657b84b86d`; arbitrum `0x647524c11362176cf1c4fb2196e7851d1f602253`; arbitrum `0x72c6a9564383758fb6d4ea2f66e41c6597cf4c9e`; arbitrum `0x7541f0d5a90e2f1c55a2d26fced1db125dceb3da`; arbitrum `0x8a1967fc40e452733ea391e5256a5846b7e565a8`; arbitrum `0x8f7ba73d7102187e6fddd96ac5702122eca46dd6`; arbitrum `0xaa5c57970a0c2627f651ee4440bc794a749585dd`; arbitrum `0xaadfa5c64650b1b335eec44860447c3c945c5d8a`; arbitrum `0xabb326cd92b0e48fa6dfc54d69cd1750a1007a97`; arbitrum `0xb65b26d5426c1dfd8beaedca93e5ba9e5477db95`; arbitrum `0xb6b8bc15ea627d3a66dc88c1ac0b3e4d7094305b`; arbitrum `0xba59942e8d7d704477d06201cd17ef0cdb086194`; arbitrum `0xca0d42633e846ab538b69a26d9611c8fd83704da`; arbitrum `0xd9e4c73d0380d60c6f021a51e73bfa897b740dc7`; arbitrum `0xf4dcb856bdca9475893fca5a91bc750d734571aa`; arbitrum `0xfacf640077293574f2bb2d66afc9610297a49b35` | ⚠️ Unaudited |
| GmStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 30 deployments: arbitrum `0x0d609c455f3bbd9971e37adf41cdb342c32ac801`; arbitrum `0x0e3a799ecfeacdc96eaf127f06f409ac641c61fe`; arbitrum `0x120ed2f42c62f0035bf8d4751785e2eafca09889`; arbitrum `0x19366caf3991ebb48566ccde140eeeb3d514d9e5`; arbitrum `0x1c72cafb560a9a861bb9a91da9bad7affd3d95fa`; arbitrum `0x25ac30195f5b7653ddd7eb93cae6ff5d924cdaf4`; arbitrum `0x3142ab041cf9db9b1b22d9f55716e83b1ea178f1`; arbitrum `0x394d8b3982f64a4ed671364da574152d4255f220`; arbitrum `0x39c54bd10261d42ee1838d5fc71dd307dcb39001`; arbitrum `0x3c47e74bc54c26f0a559b003bf8dcf77f2807d03`; arbitrum `0x4ae1460d7d6da34d09ce34576df358351e41a3cd`; arbitrum `0x552f8a801d2dd4982b226622e20ec6b633e27941`; arbitrum `0x60a816a7a5387d59d073d9d7441e03a278cfad30`; arbitrum `0x6eddfdbc3b7b86e857b78cd0d4ba395275d7cc16`; arbitrum `0x7c37de0fbce0d654d92eb7341dcb66ba448ffeb8`; arbitrum `0x892ddc36214fb833e702f53b612e2608e14ee27c`; arbitrum `0x90d1d205ab2286b729dbebc66f90b86cdfd1f173`; arbitrum `0x9256fc36f7f686211afbaa747d2d95a705938b93`; arbitrum `0x9f026f9edc92150076bb8a0ac44c14a8412c1639`; arbitrum `0xa438a6f4ee25e6c0d0f08bc911dc2210f77bc3fc`; arbitrum `0xb24e6957d965a9c6e70fe210d63617e5d0c5cd59`; arbitrum `0xb4fc7be1fc0a6d7b6d5d509c622f56d719cd1373`; arbitrum `0xc3e83523283a03977ed18ddb4548b72c30f45572`; arbitrum `0xcbc23592dad48c414e3ec72055c19b6b8aea78a4`; arbitrum `0xd46d42318931a33c26d174ab600f48448adc44f0`; arbitrum `0xd9c7e2658511400505d715a78583a5b2d6a6a3c6`; arbitrum `0xe88c073d96c62bfe84059f48d7f4a5d1e17ec555`; arbitrum `0xea3bd3aea6fddd0644e8bb71bc6c5e37bc207d8a`; arbitrum `0xf4a1a6b4c074fbca26688c6cf96377348695a288`; arbitrum `0xf53a003e863ba83424048d729460fba056c06b80` | ⚠️ Unaudited |
| GMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc5a1a6eb076a2c7ad06ed22c90d7e710e35ad0a` | ⚠️ Unaudited |
| GmxGlpRewardHandler | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-378958 | 2 deployments: arbitrum `0x3477df28ce70cecf61fffa7a95be4bec3b3c7e75`; arbitrum `0x8d99a15a2be434431cf16d98e23f7fafe0d0da30` | ⚠️ Unaudited |
| GmxGlpRewardHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4b36812d1645dca9d562846e3abf416d590349e` | ⚠️ Unaudited |
| GmxGlpVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x51b2bab4d45bde8e0a7a85aed712569094556173`; arbitrum `0x8833c3438ff37da7d472502c3d8d2ad8fe42225c`; arbitrum `0x94ea0183a3268635e34332a76dd2e9eff13a00f4` | ⚠️ Unaudited |
| GmxGlpVaultRewardHandler | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x3bc2110f587f43a56c1017d2347981a0b572efec`; arbitrum `0x7357b2c754c879f37e6b35689b448e687d3fdf75`; arbitrum `0x854a86d09ce114e07ac3e63946be91b6b1cf10a3` | ⚠️ Unaudited |
| GmxGlpWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8cbd5b22d7d37c978609e4e394ce8b9c003993b` | ⚠️ Unaudited |
| GmxLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: arbitrum `0x0bfc4d468c130f27887b4df6a7f9e85dddbacffb`; arbitrum `0x418a23a8595dffa39e58b4b098be3211b85e38bb`; arbitrum `0x66499d9faf67dc1ac1b814e310e8ca97f1bc1f1a`; arbitrum `0x6fedbeb5b416a3ffe64c0695954a1074d683c4b4`; arbitrum `0x714085ea0880fa247fbed8c29937392beea2cd74`; arbitrum `0x72015edee0bc8a08480df29e8540cd595452dfcb`; arbitrum `0x8c63cda467e5de338fa503f2977afa9cd4bed669`; arbitrum `0xabbd4a2b18aec5349e959c43102378c24aab4cfc`; arbitrum `0xd93809d3f164e9be73a0dc493fd295e6fe3b4674`; arbitrum `0xf30596e3c30d4a2f7c68f6e6963e67f0d018a225`; arbitrum `0xf6939a5d9081799041294b05f1939a06a0adb75c`; avalanche `0x1589defc3abb8ac5d0e86c19fb940874ea788c69` | ⚠️ Unaudited |
| GmxV2CauldronOrderAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 21 deployments: arbitrum `0x0155b6fe74f90a3840ebf750ea4237d542c83203`; arbitrum `0x0ad2ce601eb1d89f559ffbd1bca042c246ca1954`; arbitrum `0x10b37af228afb20e8561fde83e5f882625ce1615`; arbitrum `0x153ecdc6844085a5c487b3beb8a704176b07fc17`; arbitrum `0x1ae691bae53d91bbba6db553960e761c13a1ec69`; arbitrum `0x1b65520aa60168e989a8c6e0747eb8ab71750f36`; arbitrum `0x2d9b2deb9767fc470208b1f5f3fac19f0a04056c`; arbitrum `0x49676b9bbbe9db0dd3a94cd6db68b5e2c7969757`; arbitrum `0x5389e325c440243b7976d630f031f3921ffc674e`; arbitrum `0x59eea3c00a7035c40787b1b01e15c4ecf790677c`; arbitrum `0x5b82fac52ab10807fab0897a0ba05b26eb50e684`; arbitrum `0x6b101c2d7ce2f8283d8788b25ecef107f76987ff`; arbitrum `0x71f94a027cc72c7b860a4c161740157ec2cf15bb`; arbitrum `0x8e2c80487d847478ca3f2174fb50bdfbdb2cd862`; arbitrum `0x8e4a1186e00f7a5c5df980feba1768540050ae4a`; arbitrum `0xa822ae04aac8715428d759b9e4bdf5fca724aa5e`; arbitrum `0xcfd3c27ca46ea9aa8a3c8713a700419d9622e8b3`; arbitrum `0xecabba5a41af5895e3202b87c026dcae5b32b076`; arbitrum `0xede9a6d19cf38d4e6aa80233333786853d1c21aa`; arbitrum `0xf48959414cb1a94d29cd5160d9b9e785ff67124a`; arbitrum `0xf6e2a4b77888a731d1613f73909b3068602734a8` | ⚠️ Unaudited |
| GmxV2CauldronRouterOrder | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 20 deployments: arbitrum `0x02a97f80afc2d507bba371f11fe236994159414a`; arbitrum `0x1ce8ec91b4dbb83c35075b200dcddeca83418f27`; arbitrum `0x3a5770733479220ca4067c12526a7cb3d1d0574e`; arbitrum `0x4b0004ad6ed8c85e61f679e366b98bff91338790`; arbitrum `0x6c1ef1661c38bd3552441fd982fb538b1df6df76`; arbitrum `0x709aa62d4c453b4c070ab886b97565b61500bf7c`; arbitrum `0x73962c1816e6be9b2d9266ab67cbacaa6ab5ca5f`; arbitrum `0x760c0d870c574d53af2acd8369a9f237412c5c6f`; arbitrum `0x8764f828305953f2c0ed2f9b7b3a4adf4ed7682a`; arbitrum `0x8b14ffe5cd42399019027a9042ece1179428854a`; arbitrum `0x94ea6ba2662468ac8a9f3e4d3f0de37cd1e00fc2`; arbitrum `0x992b72d10b45fc393efa455c791f2effcdefabcb`; arbitrum `0x9d982669d3712041a40eaea50a07f4cc037bf712`; arbitrum `0xa6032fe870c518a2eb8f0004d7b3e9aa0381ed3e`; arbitrum `0xb01a7aa773eef362c3bd70ae8430585d4e8e2167`; arbitrum `0xb14e4e829209e5a171994f4c4a364b05965d6989`; arbitrum `0xb621b8440184565edfe7f578017cef958a18faac`; arbitrum `0xba95c5b1e82a0da88efb5b20aec2a69514390b43`; arbitrum `0xcde8edf505bad39dd606e7532d9c9cdfe74c42b7`; arbitrum `0xede6ec7a2fea378daa209f44a8157a5f39bc4fe5` | ⚠️ Unaudited |
| GmxV2CauldronV4 | unknown | project_anchor | own_supporting | 0 | arbitrum | n/a | 15 deployments: arbitrum `0x017ccd8ef10fb8bb3a5a04b2798212132eed6bdb`; arbitrum `0x0c89137660eb246ba69c8917e0f3045533166b9b`; arbitrum `0x1b867b05004c26415aee34b20b1e51ba77a67043`; arbitrum `0x2b02bbeab8ecab792d3f4dda7a76f63aa21934fa`; arbitrum `0x4809cb637cd0592492be650a3d6ebd11c034e5cc`; arbitrum `0x4f9737e994da9811b8830775fd73e2f1c8e40741`; arbitrum `0x625fe79547828b1b54467e5ed822a9a8a074bd61`; arbitrum `0x66805f6e719d7e67d46e8b2501c1237980996c6a`; arbitrum `0x74322fdeb6f98fdb4e0fcd87b0125a3dad410359`; arbitrum `0x7962acfcfc2ccebc810045391d60040f635404fb`; arbitrum `0x9ff8b4c842e4a95dab5089781427c836dae94831`; arbitrum `0xa6299cd046bfcc48cb9c7624c98b6045e6c6b210`; arbitrum `0xb3d7229611af4befd3ec04a33dafaf48ec47f2f0`; arbitrum `0xd7659d913430945600dfe875434b6d80646d552a`; arbitrum `0xf69553afd55c8d012a164383b005a486b7a2bd5e` | ⚠️ Unaudited |
| GMXV2Experiment_OrderAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x6ac1163b6f60ba8d6dc1a7f4ccd122418ce0746d`; arbitrum `0x704df21351fe4249bd27d09ed51615fd1b9ab431`; arbitrum `0x7ad66f7493ffc7ae7d78974a80243bbb3a1fdead` | ⚠️ Unaudited |
| GMXV2Experiment_RouterOrder | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x3b0ecac5653107a985be93ab25d8dbb8a608eee5`; arbitrum `0x8d9e68a0df885ac655963f62238e6d7238616e59`; arbitrum `0x9cab9fdb70f4b024b5916d428fc2b83186359439` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xdf2c270f610dc35d8ffda5b453e74db5471e126b` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xa71a021ef66b03e45e0d85590432dfcfa1b7174c` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae4d3a42e46399827bd094b4426e2f79cca543ca` | ⚠️ Unaudited |
| Harvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d6bcac2266468a44da9fa482ca54aaed586e1e7` | ⚠️ Unaudited |
| ImplementatonV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x430ab89a466b799cae5b05a5541fc8687bbc603a`; arbitrum `0xe0e09196cf55e001fb72990a1871fe9fccf0cc32` | ⚠️ Unaudited |
| ImplementatonV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x096d6a8addba6418edf150838ce70366d7021c42`; arbitrum `0x89be82b0f8ef320ec51112d20c88e30821794729` | ⚠️ Unaudited |
| InchSpellSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe1a5b757523ca6f7f049ac02151808e6a52111` | ⚠️ Unaudited |
| Incrementer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3eddacf2c184a302ff17682a7e48a0e47550015d`; ethereum `0x5ee7cab2e6e21fca8af225c7b93a3842c31a2a5a`; ethereum `0xed175ae20f12ab737b148ce81a3c4229100d2403` | ⚠️ Unaudited |
| IndaHashToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5c2ea13d2bf1968a10722dc45900c8da0f78212` | ⚠️ Unaudited |
| IndirectOFTV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 26 deployments: optimism `0xac9c9b9c354de58ca34420f79bbab67defd8324f`; optimism `0xb7ddfabc87c7d5b3f3c1be8559f4c4704fa57754`; optimism `0xe685a35347ddc8d58ed2838a291c8a66d5bdb0ca`; bsc `0x70b868191b588384b96233cad7c27457026a7493`; bsc `0xf76da2d3656e1cc5ca2fbb9663c89f7d8aae20fc`; polygon `0x563111a691302d9700abc617e99236d6a6fc537b`; polygon `0x7c8fef8ea9b1fe46a7689bfb8149341c90431d38`; polygon `0xa6247e6fba04354afd4d688de946ae1370b3c15e`; moonriver `0x9031c0fd5bd1405132028a3e0eb277c705b3d8f7`; moonriver `0xa93c81f564579381116ee3e007c9fcfd2eba1723`; moonriver `0xae031bde8582be194aeebc097710c97a538bbe90`; moonriver `0xb9565f2612e35cd58513145f1c7ed790504f265a`; moonriver `0xbb7211f6591cb763de27a1205d4678e3616409d5`; moonriver `0xee2f020885475759ecd6ec24d922fbb5998f143a`; moonriver `0xfbf7dbad1416eb93573be794990de0d07633a586`; arbitrum `0x3b47e8ef1fc0f7fafdd0f428e727a9918e94fbe9`; arbitrum `0xfcd8d828d5f52e8576fb9300075f7753b0a1a2d9`; avalanche `0x0703ea6f7b359da666d5181e3120e54bc9bdce5c`; avalanche `0x12445ab8abd98730860981891eb67df2d80c5652`; avalanche `0x225c5e03fc234a9a71c12dc0559d8fd4e460f96f`; avalanche `0x3845287d63883a257c5884a0cfceefc5bed206fd`; avalanche `0x4b8750fe24b32ec1cb57042384400a832457b2db`; avalanche `0x762d06bb0e45f5acaeea716336142a39376e596e`; avalanche `0x9edc3885d1c1b4e9aaac9da6fe6c9944df88fd2b`; avalanche `0xe0e09196cf55e001fb72990a1871fe9fccf0cc32`; avalanche `0xf8c54fdf00e6c32cb48e9fafcd1b67450206650c` | ⚠️ Unaudited |
| InterestRateCalculatorV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1972b5d65a690de0bc36278ac93d47fd98bc14f7` | ⚠️ Unaudited |
| InterestStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x186d76147a226a51a112bb1958e8b755ab9fd1af`; ethereum `0x7386fdc44638c4443ceac3593c681d905ed8867c`; ethereum `0xcc0d7af1f809dd3a589756bba36be04d19e9c6c5` | ⚠️ Unaudited |
| InterestStrategyLens | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x14741c0df8ca7f3eca2eefa1a79515455520088f`; ethereum `0xfd2387105ee3ccb0d96b7de2d86d26344f17787b` | ⚠️ Unaudited |
| InverseOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 18 deployments: ethereum `0x0edce6bad44fa640d6b9904de1794e2f0dcb0036`; ethereum `0x683e5460adab95236e196f993d2010aa08886296`; ethereum `0xba8f89f68d316ae5fc273de11bb87b608c7f77e4`; ethereum `0xeb91a10d41b7c5773ccd3ca1afe2383033b8a2f8`; ethereum `0xff2f9629d7fd4d192523e667f75703967b8639c3`; optimism `0x0bf531afdf4b8d937df2a802eb43aeb608e63d66`; arbitrum `0x2901c6ba004ad7e1e69620d3911df144ad4a6563`; arbitrum `0x30fbce411e3b8a5d99e69cb347e03734d99e0da9`; arbitrum `0x4871be0a98896d26b36c6b4df9bd31154dd025ac`; arbitrum `0x7eab65c270d9b1f9475a6b985439b2f383dbe869`; arbitrum `0x87b2d51b26d32282077d5e4a0a1dfe24ed80134d`; arbitrum `0x8b35b161e7cc77fe428e3aa651a5b6897f6c7e8d`; arbitrum `0xb1c7b1ec9df93702e1692b9dd35e7d8af05c9267`; arbitrum `0xc7e87effbad3fb95f8f961b430815f69d78208f6`; arbitrum `0xc8872534318c469ffc7b56a55857a43b05f272df`; arbitrum `0xd14537d1f3629293522d9db559039a9ac96ac10f`; arbitrum `0xed7646e638058f418298b9be70ea85bf5778664e`; arbitrum `0xfb57537be3d2696f99a63351f203fb8201c6c07f` | ⚠️ Unaudited |
| InverseOracle | operational_periphery | project_anchor | own_supporting | 0 | blast | unit-378931 | `0xb2c3a9c577068479b1e5119f6b7da98d25ba48f4` | ⚠️ Unaudited |
| InvertedLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: optimism `0xdfa94f2ce5bc1961f2604338f97f468592ca293d`; avalanche `0x3edf406a2d478158eb56615445eda6a429bebfe9`; avalanche `0xf1f201097189f84ef305c3720208fe8c618ad227` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 36 deployments: avalanche `0x125cf88b4dc08b45847dec7b8d8e1b543f84b4d2`; avalanche `0x1adbde469581bfd0454fc61c7e74ec2bf7330024`; avalanche `0x28adbb2822601449ff4a271c0b587d726ea7a0a3`; avalanche `0x2967317938e801cab3badd9c1f3a8feea0f9bd20`; avalanche `0x2e3a352f4a94f8df17835d659853629b7e7975e2`; avalanche `0x2ed5cda38f295a50f59974ed75a6b46269ff11bd`; avalanche `0x32044834e239f5e2444052dbeeb1a3cc416cccee`; avalanche `0x3ac92878ccdd55934ecf0fd49f65689cbe16b974`; avalanche `0x3b34e169438fc65ed1c018655d04e5b0f3185ecc`; avalanche `0x4a586daa5d5edcd8182339c24291fb510fa4d271`; avalanche `0x564780a6aa44be1ca103b6c3f30e8593efbbacd0`; avalanche `0x5f2a43eeb6d624e145f2d7efebd13cade7083ae6`; avalanche `0x647da94ae8ec35e9627df11bffad19513892cf2b`; avalanche `0x6b5a37d2096f4f8445423f2e88bc6cc76093a86b`; avalanche `0x6caf4068adc5766447205c9e51488586219d51c5`; avalanche `0x737fdfb2365973474befa244953954c5b6fddf34`; avalanche `0x7a17fb34ce43ff7e5ef0a74a828ffed459bf3421`; avalanche `0x81516ec24d6d6b9952f2470002bbde4e5c23f592`; avalanche `0x838549b9608cf3aeb98504d7ad213525a2aa34cd`; avalanche `0x83c6720e8961e948dd3ce7815cae4f0fa7c6ea8a`; avalanche `0x8cc49baf5211dd4fbc2e7641e7d17a4ca3d8a98a`; avalanche `0x97e3a6446e9b0d9313c30cf8ddcf65659a213612`; avalanche `0x9c1e133e9c58ec6dceabf5e428bb162353da9e8e`; avalanche `0xb2bb1e77fbafbe7b7295390ce66aa75dff7e5e8b`; avalanche `0xbb95aa2089a3494e466d3cbe6d6c21eeefd7b337`; avalanche `0xc17f9953c9cb1ecfacbed9c1c9d2e6f959f9a47a`; avalanche `0xcd85feb8efc260a6648d1d6190e98bbb087348ad`; avalanche `0xcf62b6e1c54b69e59cff552cfff247671594429b`; avalanche `0xd1bb834a4291db09d71e4436ef3bda343f9fbe3f`; avalanche `0xd7c24697963cb02d6e63130812970cbdd08c3ed5`; avalanche `0xea5e11c8b5ae79d139da1c9839a961ea70cbbf51`; avalanche `0xeb41c98513ff3f975016b26e16cbf26e2f1b1df8`; avalanche `0xebea851d28722e53aacdc831d2894e25f460e62e`; avalanche `0xeed14f39a6927404c31a08def1ff22bc0d54847c`; avalanche `0xf65a0817d7c5b78c97b4265576afbd9535503d42`; avalanche `0xf88d8e5803cde818b46a013a7d2845cf3550317c` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xce095a9657a02025081e0607c8d8b081c76a75ea` | ⚠️ Unaudited |
| JCollateralCapErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x102011863cc4f506d1387cd6b22c522602ae0fbf` | ⚠️ Unaudited |
| JoeBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33` | ⚠️ Unaudited |
| JoeDynamicSubLPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf2fbb9cb80edfb7d3f2d170a65ae3bfa42d0b86` | ⚠️ Unaudited |
| JoeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x9ad6c38be94206ca50bb0d90783181662f0cfa10`; avalanche `0xe2ecc226fd2d5cead96f3f9f00efae9fafe75eb8` | ⚠️ Unaudited |
| JoeLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdf50fea3527fad31fa840b748fd3694ae8a47cc` | ⚠️ Unaudited |
| JoeMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x4247c5dbac51a135939cc904c34e4913b6bcdcfe`; avalanche `0x861726bfe27931a4e22a7277bde6cb8432b65856` | ⚠️ Unaudited |
| JoeMakerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3` | ⚠️ Unaudited |
| JoePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x781655d802670bba3c89aebaaea59d3182fd755d`; avalanche `0xa389f9430876455c36478deea9769b7ca4e3ddb1`; avalanche `0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256` | ⚠️ Unaudited |
| JoeRoll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacff0fbf56baeb9ef677de19aded8f7a950bcb58` | ⚠️ Unaudited |
| JoeRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60ae616a2155ee3d9a68541ba4544862310933d4` | ⚠️ Unaudited |
| Joetroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb`; avalanche `0x8b33e813e6757f5c1a5e662333463c2ab23d99b7` | ⚠️ Unaudited |
| Joetroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xdc13687554205e5b89ac783db14bb5bba4a1edac` | ⚠️ Unaudited |
| JUSDCAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x387d95523403e7f2f4ce23d603fe033d72ea9b4d` | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x267a4576293d55b53c769606e886e1f343149df5`; avalanche `0x81b53932b3fa037a7d1d649a3c7fc0baaa3d9136`; avalanche `0xd915fdb10530ef2a8337b4b0bb33f1b0bc015531` | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xc22f01ddc8010ee05574028528614634684ec29e` | ⚠️ Unaudited |
| KashiPairMediumRiskV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x74a81cb5b6996d9347b864b9a1492a6509e51e65`; arbitrum `0xa010ee0226cd071bebd8919a1f675cae1f1f5d3e` | ⚠️ Unaudited |
| LevelFinanceStakingLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0bf531afdf4b8d937df2a802eb43aeb608e63d66`; bsc `0x4437db9538eb74c7418a1668766536b279c52709` | ⚠️ Unaudited |
| LevSwapperTester | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ab1a92d2877a5efbf42885159122556edd39a32` | ⚠️ Unaudited |
| LiquityStabilityPoolStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0e58a776cffb7a94eb532d4b8719671478d6444d`; ethereum `0x1edc13c5fc1c6e0731ae4fc1bc4cd6570bbc755c`; ethereum `0x808e6287be7435f9d81d33335a4243c47547f0d0` | ⚠️ Unaudited |
| LockingMultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: arbitrum `0x13e17fd348f242ff71b9e022ce3714b139321b20`; arbitrum `0x20f2b910bee18125f34c07925bbfe344a139646f`; arbitrum `0x852563e148d431178e5831647feb8eda3f4371ca`; arbitrum `0x8d476a39a0086660cd629da76f369b9e068c7b2b`; arbitrum `0x8d8bdf89547a10311c7982290a36d12285268e90`; arbitrum `0x9512b9d436ecef6893ec11d5261a8c867f6984e6`; arbitrum `0x98164ded88e2a4862bde8e7d4b831a6e3be02d0a`; arbitrum `0x99be6baebef8006967267a68fba4bf3a1a669b5d`; arbitrum `0xd30c939b322b4fccb6f1ed9513d79fb2c6c1ba7b`; arbitrum `0xe06d95f8b8b2ae222690e9fe5ac0ff2febbd73b6`; arbitrum `0xe71896e4c8ce8447aabe82cd5eb752ccaeb609ad` | ⚠️ Unaudited |
| LPChainlinkOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x04a34ff16f31c8d6ea7b2c4489df13caa53e31d6`; avalanche `0x279d54add72935d845074675de0dbcfdc66800a3` | ⚠️ Unaudited |
| LPResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x04df48ac59cd1ff079752405db731cc21e092682`; avalanche `0x107cca6a1b1d942e87bae1365861aa75c1d1dea6` | ⚠️ Unaudited |
| LPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x006d8e69365bd93c38f4af1814207a4002f938c5`; avalanche `0x43838338f30795185dabf1e52dae6a3feedc953d`; avalanche `0x663ef4455a07243d9029ba0fc48297ae181aeb38`; avalanche `0x87a5bf86d6c96775d926f43700c0fd99ee0c2e82`; avalanche `0xa6247e6fba04354afd4d688de946ae1370b3c15e`; avalanche `0xad2f284db532a57d6940f3a46d875549dceb030d` | ⚠️ Unaudited |
| LQTYStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-378801 | `0x48686c24697fe9042531b64d792304e514e74339` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-378878 | `0x41d5a04b4e03dc27dc1f5c5a576ad2187bc601af` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-378817 | `0xca0d86afc25c57a6d2acdf331cabd4c9cee05533` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | moonriver | unit-378814 | `0xef2dbdfec54c466f7ff92c9c5c75abb6794f0195` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | base | unit-378951 | `0x4035957323fc05ad9704230e3dc1e7663091d262` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378857 | `0x957a8af7894e76e16db17c2a913496a4e60b7090` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 16 deployments: optimism `0x610e598e5267eabe099df95d1301da85dd3f4ad4`; optimism `0xa3ba2164553d2f266863968641a9ca47525cb11d`; optimism `0xa9ba9852a249aa9c596c990cc409cfeaf653fac0`; optimism `0xf1f201097189f84ef305c3720208fe8c618ad227`; bsc `0x854a86d09ce114e07ac3e63946be91b6b1cf10a3`; bsc `0xab137bb12e93fedb8b639771c4c4fe29ac138ee6`; polygon `0x1ca9f1a7cf93284fff9ec9a7eb627f9de04a0ea8`; polygon `0xf4b36812d1645dca9d562846e3abf416d590349e`; moonriver `0x15f57fbcb7a443ac6022e051a46cae19491bc298`; moonriver `0x43838338f30795185dabf1e52dae6a3feedc953d`; arbitrum `0x2fdc6093f227b532500a59c6538cf177725e58ce`; arbitrum `0x9d16087301225a377392942de4bb5b23e35a894b`; arbitrum `0xb94d2014735b96152ddf97825a816fca26846e91`; avalanche `0x0c11084f9bb72e4305088d329a5a1a64a6df2a3c`; avalanche `0x56d924066bf9ef61caa26f8f1aeb451ea950e475`; linea `0x4035957323fc05ad9704230e3dc1e7663091d262` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378873 | `0xb3a66127ccb143bfb01d3aecd3ce9d17381b130d` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | linea | unit-378884 | `0x60bbefe16dc584f9af10138da1dfbb4cdf25a097` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | blast | unit-378938 | `0xca8a205a579e06cb1be137ea3a5e5698c091f018` | ⚠️ Unaudited |
| LzOFTV2FeeHandler | unknown | project_anchor | own_supporting | 0 | base | unit-378953 | `0x52b2773fb2f69d565c651d364f0aa95ebed097e4` | ⚠️ Unaudited |
| LzOFTV2FeeHandler | unknown | project_anchor | own_supporting | 0 | linea | unit-378883 | `0x41b191911cf3482b31cfcd65bd3c79e76b26b35a` | ⚠️ Unaudited |
| LzOFTV2FeeHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: ethereum `0xac5e47836a4c3ba251285c7994a52ccb39152006`; linea `0x52b2773fb2f69d565c651d364f0aa95ebed097e4` | ⚠️ Unaudited |
| LzOFTV2FeeHandler | unknown | project_anchor | own_supporting | 0 | blast | unit-378905 | `0x630fc1758de85c566bdec1d75a894794e1819d7e` | ⚠️ Unaudited |
| LzProxyOFTV2 | unknown | project_anchor | own_supporting | 0 | ethereum | n/a | 6 deployments: ethereum `0x0f51ccf269747fa2eb4aba4a7b173cb2a73d86ea`; ethereum `0x439a5f0f5e8d149dda9a0ca367d4a8e4d6f83c10`; ethereum `0x64535e0901fcb819a614ac2f7aaa3d95e087e093`; ethereum `0x8d0ac6c1d28ef9a14e8c3ecfcf558a84540a84e4`; ethereum `0xc1235796b310106f46c2352e0c93fde50fbacdb6`; ethereum `0xe708c153d55f946ab0cf8c565db1472c37d3a714` | ⚠️ Unaudited |
| LzReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x2f2eb576cd065e5d4aa815433a094cc794fb0b40`; arbitrum `0x5aa097d103345caa60d8c70165a1a3fa8ac2ba07`; arbitrum `0x630dfe7da0b93e31c4402b8a3badda203ed1b3c5` | ⚠️ Unaudited |
| LzSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x0fb878e8c5b66321632d4a0f348f982c872e9be0`; avalanche `0x290ba9e612d42ef084ef1f2e34b7a0d363aadc1b`; avalanche `0xafae6100130b5c49a4915616e110071fd2d16373` | ⚠️ Unaudited |
| MagicApe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x713ead803dea8d18cd25215c92dfee9c92718140` | ⚠️ Unaudited |
| MagicApe | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378791 | `0xf35b31b941d94b249eaded041db1b05b7097feb6` | ⚠️ Unaudited |
| MagicApeHarvestor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5226d847cadabb7fcbd6c2a8568c58a6e10465bf`; ethereum `0x598330d0f504297f53799e37cff80ed564eb3525` | ⚠️ Unaudited |
| MagicApeOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4b4c275a5bbbb68a4dcc99c7c47be3ec04108940`; ethereum `0xed7062044d08e2bc6d1176bde8ea22fc4ebba5c1` | ⚠️ Unaudited |
| MagicCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0c963a595afb4609c5cc6bb0a9dad01925b91886`; ethereum `0x247d7e28aa79dffe09b287d191393242411ad85f`; ethereum `0x49af4181b36b629089a3b26e046d313a115ec911`; ethereum `0x597d51a8b93ff4aed8f2517885ef3b626b1d42db`; ethereum `0x79317218de52dfa2a233a3aeed098161889418c7`; ethereum `0x98bf3e7da6f5a81630730d538715e35d8c0d3ede` | ⚠️ Unaudited |
| MagicGlp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x5efc10c353fa30c5758037fdf0a233e971ecc2e0`; avalanche `0xde3f63412f7f9eb1bc23ac3c3d2c7e642f0c9198` | ⚠️ Unaudited |
| MagicGlpHarvestor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 7 deployments: arbitrum `0x588d402c868add9053f8f0098c2dc3443c991d17`; arbitrum `0x919fe3564811916bb105b921158f67fd7fa02b3f`; arbitrum `0xc99a4863173ef52ccb7ea05440da0e37ba39c139`; arbitrum `0xdb4f804be23306f12c616e972856af52a438567e`; avalanche `0x05b3b96df07b4630373ae7506e51777b547335b0`; avalanche `0x338f3e04d5718b739ed4d46ecd1adb8c0288a335`; avalanche `0xdcb9bd145b5a31dbbf30428247d1be8659fa0bf1` | ⚠️ Unaudited |
| MagicGlpLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x11cb89e609472c3d732175dae43c56b3d4406797`; arbitrum `0x1aeddd45cbf085efdbf8ceee19e439db9f48ace2`; arbitrum `0x49bd7db43695c38661067765be9484f8177b13f3`; arbitrum `0xde36def82f9da4493925407e37e6548d5d9bd7ed`; arbitrum `0xea06ac85984afcbd4b6c6d0e46dbeb06f11313a6` | ⚠️ Unaudited |
| MagicGlpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: arbitrum `0xa0fc5f7f1a72ae4842b89d5aa42fb8870b599a4b`; avalanche `0x985f9a5c7faec17484ef60c02a24b8667ba38545` | ⚠️ Unaudited |
| MagicGlpRewardHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x52d75bb25a806e247b9b849081685f9913d449d3`; avalanche `0xf4f7be1574d5d551ec9698d21215dd3e967b8596` | ⚠️ Unaudited |
| MagicGlpSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x08a47f1f14292b0655b70588c76b614f64074db4`; arbitrum `0x2386937474ed353cca2b0531cee31228a7e56a46`; arbitrum `0x48686c24697fe9042531b64d792304e514e74339`; arbitrum `0x89963accaa9ddd00da7c9bde4308b5e4021d14d3`; arbitrum `0xa919730e82d8d2ef8459115b72fa42d6292f65e9`; arbitrum `0xeb07b275dce4b32fa3bbf505104c26e9a3b478d9` | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378770 | `0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3` | ⚠️ Unaudited |
| MagicLevel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x0253db0dda6c063fae1e5fb28318e6dbe1c14e16`; bsc `0x23a22b4777f16c3941ce3ef2179c58963aafd309`; bsc `0x2906ae98fdaf225a697a09158d10843a89cf0fc5`; bsc `0x6e93686d34a9ebf7c589998a576ab603719500ef`; bsc `0x75adc3b980c5c73ee35ecc41bf0d8b19699501b7`; bsc `0x87ac701ba8acb1966526375da68a692cebb8af75`; bsc `0xc094c2a5c349ead7839c1805126da71cc1cc1a39`; bsc `0xd825d06061fdc0585e4373f0a3f01a8c02b0e6a4`; bsc `0xd8cbd5b22d7d37c978609e4e394ce8b9c003993b` | ⚠️ Unaudited |
| MagicLevelHarvestor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x35467bbd152a0f4d9166e649728c101fe4806eaa`; bsc `0x418ade5929fb6a9e3666ab19332e70a0f0a64470`; bsc `0x630fc1758de85c566bdec1d75a894794e1819d7e`; bsc `0x640605cb9366c98b6d324d8cb04f98b363b76521`; bsc `0xa32d03497ff5c32bcfeebe6a677dbe4a496fd918` | ⚠️ Unaudited |
| MagicLevelOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x006d8e69365bd93c38f4af1814207a4002f938c5`; bsc `0x0df56a0cf3e6da667c9532203fca4c8ef138a181`; bsc `0x358a429f2fe8605f895d70480c51950a56cf3289`; bsc `0x789004ede61c9f855a0ecaad7f0616bf23f0c952`; bsc `0x7c8fef8ea9b1fe46a7689bfb8149341c90431d38`; bsc `0x8e534c5d52c921dbd6debc56503cf0e2dce6d534`; bsc `0xb76403d52ca4d4f5c791859d93553e14742cc9d1`; bsc `0xbc7fa554a65a98502457fcfc2f1afa28113d7920`; bsc `0xdea1b44b710af105f4a0c0ab734a7b8f543e9d70` | ⚠️ Unaudited |
| MagicLevelRewardHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x60bbefe16dc584f9af10138da1dfbb4cdf25a097`; bsc `0xaf2fbb9cb80edfb7d3f2d170a65ae3bfa42d0b86`; bsc `0xba7fd957ad9b7c0238e6e4413dba69e83224a582` | ⚠️ Unaudited |
| MagicLP | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378756 | `0x6c843d25a2b0ee3e8844492e891dc7257645023a` | ⚠️ Unaudited |
| MagicLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: base `0x75097b761514588b7c700f71a84ddbb5ad686074`; arbitrum `0x522cbaabb594d538f0813927b18b99f2638f1fad`; arbitrum `0x61ff8adceb5a5f70e485e5e66266f009c653253a`; linea `0xa3372cd2178c52fdcb1f6e4c4e93014b4db3b20d` | ⚠️ Unaudited |
| MagicUSD0pp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x034de98226851e267c401069dcc18c2680fe907a`; ethereum `0x73075fd1522893d9dc922991542f98f08f2c1c99`; ethereum `0xdb36f69b88ec1388dbfac90132cd396fd4749963` | ⚠️ Unaudited |
| MagicUSD0ppHarvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0f9af7168cc8819ce3066867509a7f9170fb108b`; ethereum `0x80014629ca75441599a1efd2283e3f71a8ec0aab` | ⚠️ Unaudited |
| MagicUSD0ppOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x21713cfd14241475b30f7145d263ac5f48b98d7c`; ethereum `0xaab7e5ebd209c811ba0347d31ce17cd70b6fd97d` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x25c27fb282c5d974e9b091d45f28ba5de128e022`; base `0x85e8a3087c90992badd74be44f18626b2359f490`; base `0xa6247e6fba04354afd4d688de946ae1370b3c15e` | ⚠️ Unaudited |
| MarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x14d6df05ce338f8b32491532e9e0b23838ad213e`; base `0x43838338f30795185dabf1e52dae6a3feedc953d`; base `0x978d34a96780414c5978ab3e861b0d098b2a006c` | ⚠️ Unaudited |
| MarketLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x87072985aa1a2647da7dc3fc514fc4fa093022c2`; arbitrum `0xc4ee4956e8ed8934ee5c02313bb24f5c6848ad4d` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x4e585c367dafa5db5e182a192e73f4e0900e764d`; bsc `0x73feaa1ee314f8c655e354234017be2193c9e24e`; bsc `0x91dc89a7d4c68adb622b51e402fedeb74ac3e756` | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6a4f121ca35509af06a0be99093d08462f53052` | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x188bed1968b795d5c9022f6a0bb5931ac4c18f00`; avalanche `0x3eb4ec45b791c6d43b8dd5373c2e94d8996e8945` | ⚠️ Unaudited |
| MasterChefLPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8d68266e7cb6a4c7c8e230993fc42634c0e4770` | ⚠️ Unaudited |
| MasterContractOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16ebacab63581e69d6f7594c9eb1a05df808ea75` | ⚠️ Unaudited |
| MathLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x503d141915a740f98da6c12a1156cd4decc13b4c` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xedd1cb10d6dde82c805f7fc9988ee3d89c115e34` | ⚠️ Unaudited |
| MigrationStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0704a2c10685acd614f2a569c54613ea56e0ddd6`; ethereum `0x3ba00b72740e649b7afcd849d921bfce501df1b0`; ethereum `0x41febf3a2bbfc786e4449bda61b50449f5bbb679`; ethereum `0x507e4cc5d9878520424ce0c3ab19d0002c0ec94e`; ethereum `0x5e8f81a133a0d096733de584b9f2d238eb567682`; ethereum `0x8d8bdf89547a10311c7982290a36d12285268e90`; ethereum `0xa03afd15f2cd6e9e551c7062a63f00dfe740bf23`; ethereum `0xbbf9fdf9f8aae61b0a63bbd94f8d517683fc9162` | ⚠️ Unaudited |
| MimAvaxLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xba7fd957ad9b7c0238e6e4413dba69e83224a582`; avalanche `0xfdf2c2689c130b0686331c9ada0e40ec1a1a58d7` | ⚠️ Unaudited |
| MimAvaxOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x4437db9538eb74c7418a1668766536b279c52709`; avalanche `0xd96f48665a1410c0cd669a88898eca36b9fc2cce` | ⚠️ Unaudited |
| MimAvaxSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xbc00ca0d71231c5e23ba90a90d8c5d9039c39614`; avalanche `0xd7477321a84f3d39b8d742580f3740016658135d` | ⚠️ Unaudited |
| MimCauldronDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: arbitrum `0x19de605cf11908a1bd4e096625d3c24cb4a558b0`; arbitrum `0x1fff78fd2e139bc1315711dd3ea176bc7028635a`; arbitrum `0x5be2c1c8c0045594a4aaa244e237840f94d95a15`; arbitrum `0x642c3b5c6092348f7e7e005da79b87afdfd3411d`; arbitrum `0x66436c64da9d9a61bcc3f652490d20d7cf19765d`; arbitrum `0x9620a2a6a6c6dcef83fcab71430aaad55e7c0999`; arbitrum `0xb099cc8cd672646317c2da0414aea7d3838ed258`; arbitrum `0xba9167fe9f0ac2dcb9a3a60870caa5127a783a7e`; arbitrum `0xc4e343b89fb261f42432d9078dde9798e67c33ba`; arbitrum `0xc5c01568a3b5d8c203964049615401aaf0783191`; arbitrum `0xe2601e7e0923a0d879e9206fcaa902ce25aeb7dd` | ⚠️ Unaudited |
| MimCauldronDistributorLens | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x05e46ffd98f94f62cc2817d54d5f0b1fd065b76d`; arbitrum `0x70c87439e70ec656a9ae8168b8ed8a194622d026`; arbitrum `0x9b0b1c5df1bfe11dbc189c00de58d36c6ca3f583`; arbitrum `0x9b2794aeff2e6bd2b3e32e095e878bf17eb6bdcc` | ⚠️ Unaudited |
| MintableBaseToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x35247165119b69a40edd5304969560d0ef486921`; arbitrum `0x6260101218ec4ccfff1b778936c6f2400f95a954` | ⚠️ Unaudited |
| MintableBurnableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0b938cc6a48e1c3b48a33adcf9a726e776d348dd`; base `0x6bf837c1d07806ef23a4dccb2b3aa28927341d12`; linea `0x4a3a6dd60a34bb2aba60d73b4c88315e9ceb6a3d` | ⚠️ Unaudited |
| MintableBurnableERC20 | token | project_anchor | own_supporting | 0 | linea | unit-378885 | `0xdd3b8084af79b9bae3d1b668c0de08ccc2c9429a` | ⚠️ Unaudited |
| MintableBurnableUpgradeableERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0xb5e02dfced45b56169da57d0fa45a84a3c7443e4`; arbitrum `0x099b75a39465ace29147b2a1d68bddf3c644d88a`; arbitrum `0x174a483eed1496f584a0c2b65b61b1de73d2d938`; arbitrum `0x746bd2ecd0d658bbb6f7b617403e39b7ce11e042`; arbitrum `0x7dc6e682a0990e86a1e86b62db00e8615c1f2879`; arbitrum `0xd6c71c793f04670650bccc116451dd70a3665268`; avalanche `0xd1140b6dcf3f1a125f5cb9d87d1ab3ca46acf528` | ⚠️ Unaudited |
| MockTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb682fc2af3a1791081ac4efb60176c0a0c8ed20` | ⚠️ Unaudited |
| mSpellReporter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 19 deployments: arbitrum `0x1fc83f75499b7620d53757f0b01e2ae626aae530`; arbitrum `0x20cb52832f35c61ccdbe5c336e405fe979de9430`; arbitrum `0x35f78ebb33b69d0006910913480f483271638053`; arbitrum `0x3817c8bd84dace344e66c6810f2a1225f998d988`; arbitrum `0x3fc4468d3e9c63b83c341307193190b7b5a28edd`; arbitrum `0x59b3d5ddf93a3782f7b7a4be1214722fc6fecd45`; arbitrum `0x5f468e4c8d46004641f44dbd4de3ee734e90882d`; arbitrum `0x7386946a2e2a8412c09a63afa6ec047cecc0423f`; arbitrum `0xef9c97e356bc5ff2460e25f40f608101ce15d70b`; avalanche `0x07aa382caee3f9e6d1791c8ef5f77a9088c6e9fc`; avalanche `0x14d358136d2510df260ef630e4f7ea2aaf81a2dd`; avalanche `0x15a2a96608b48ebfd80c31da8a9be340a354cd46`; avalanche `0x32596b9f8e1461c349ec99abefa17137840f5c85`; avalanche `0x476b1e35dde474cb9aa1f6b85c9cc589bfa85c1f`; avalanche `0x5651958a6e4db3327db1fa9198b9954608a0f194`; avalanche `0x5d28da94086984cc3529d0c0ef6d968eeb7620b4`; avalanche `0x78a538cf4c73dba3794c0385d28758fed517cccf`; avalanche `0xd2b62aef2102c09f475b23dda6b61072e848cf28`; avalanche `0xf8beb5c479a9b58f581076697bbce83baade90c7` | ⚠️ Unaudited |
| mSpellReporterManual | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x648af26592c7425447b8eee647f4106b97a27793`; arbitrum `0xf33eb640773827afbbb886fa2d60b071d51d2d85`; avalanche `0x75e14253de6a5c2af12d5f1a1ea0a2e11e69ec10`; avalanche `0x96bac90bee7f416d33601d1dc45efb19aca8ca62` | ⚠️ Unaudited |
| MSpellSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cab9fdb70f4b024b5916d428fc2b83186359439` | ⚠️ Unaudited |
| mSpellStaking | token | project_anchor | own_supporting | 0 | ethereum | unit-378773 | `0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797` | ⚠️ Unaudited |
| mSpellStaking | token | project_anchor | own_supporting | 0 | arbitrum | unit-378843 | `0x1df188958a8674b5177f77667b8d173c3cdd9e51` | ⚠️ Unaudited |
| MSpellStakingHub | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x3b9e7f15876c45956ba5f337cb47849375f7f764`; arbitrum `0xa39ceeafe6e7a506ca4db24be0469125575ef606`; arbitrum `0xcfbe02c1d2d52eb183f6c05e93f29e8a1729e73b` | ⚠️ Unaudited |
| MSpellStakingSpoke | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3886a691e88f1a51918b915aa1a0dfbc9af5f755`; ethereum `0xb5980ee2944a52719e6fd93a07269b1e97f65ec5`; ethereum `0xbbb3bc7cbb4f51a10cb4578d5fea6e709539900a` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: ethereum `0xafe0bb622d83fdbf86686e097aec9a4d9f2c47db`; arbitrum `0x280c64c4c4869cf2a6762eadd4701360c1b11f97`; arbitrum `0x3886a691e88f1a51918b915aa1a0dfbc9af5f755`; arbitrum `0xc30911b52b5752447ab08615973e434c801cd652`; arbitrum `0xdc9bc38db4886f9db3ba6a5736ea5e3637ceee96` | ⚠️ Unaudited |
| MultiRewardsClaimingHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x15838e7a6322a6f37d2c27628a82b9115e6d7f85`; arbitrum `0x3877efdb6d6bfa2816303707dab6a2fe1b43a943`; arbitrum `0x46cc171a2ee5756db9205f80d6d14389f8d0d32b`; arbitrum `0x766cb0422831e599e468014fabd144c1ecd677d3`; arbitrum `0xa40bcb311267d79ba905a6174f277e96d97789bd`; arbitrum `0xc699e79ae3f3f415819afc84487682d0503110c4` | ⚠️ Unaudited |
| MultiRewardsStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d2070b13929df15b13d96cfc509c574168988cd` | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8392f6669292fa56123f71949b52d883ae57e225` | ⚠️ Unaudited |
| MyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x64a743938fe7018ef88308af765455269fbc0c42`; arbitrum `0x9cc903e42d3b14981c2109905556207c6527d482` | ⚠️ Unaudited |
| NegativeInterestStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5abd043aaaff2cdb0de3de45a010f0355a1c6e7` | ⚠️ Unaudited |
| NullValueCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d1c9b9bfda66226e4ff3b6bf8f565baeb26254f` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378744 | `0x287176dfbec7e8cee0f876fc7b52960ee1784adc` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | optimism | unit-378799 | `0x287176dfbec7e8cee0f876fc7b52960ee1784adc` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | bsc | unit-378877 | `0x287176dfbec7e8cee0f876fc7b52960ee1784adc` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | polygon | unit-378818 | `0xe1261e47b08a22df93af46889ee504c2aa6dfd4c` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | moonriver | unit-378812 | `0x287176dfbec7e8cee0f876fc7b52960ee1784adc` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378845 | `0x287176dfbec7e8cee0f876fc7b52960ee1784adc` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378865 | `0x287176dfbec7e8cee0f876fc7b52960ee1784adc` | ⚠️ Unaudited |
| OlympusBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x28aac73a0c080daa8b7fb728aad43a00584cd8f0`; ethereum `0x48d4ad77857f18ec5bfe634479756e1414c276a7`; ethereum `0x539b6c906244ac34e348bbe77885cdfa994a3776`; ethereum `0x575409f8d77c12b05fed8b455815f0e54797381c`; ethereum `0x6a01e5bad8fd2ef29dc23ded1f5971641349f219`; ethereum `0x8510c8c2b6891e04864fa196693d44e6b6ec2514`; ethereum `0x8ba0abc724d7baa232da37ad0f729530c713b0ce`; ethereum `0x956c43998316b6a2f21f89a1539f73fb5b78c151`; ethereum `0x996668c46fc0b764afda88d83eb58afc933a1626`; ethereum `0xc20cfff07076858a7e642e396180ec390e5a02f7`; ethereum `0xd03056323b7a63e2095ae97fa1ad92e4820ff045`; ethereum `0xd215d166a6a0be3616cab7c938fb2f7ddb6cb580` | ⚠️ Unaudited |
| OlympusBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaaa6a2d4b26067a391e7b7d65c16bb2d5fa571a` | ⚠️ Unaudited |
| OlympusStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x416f96071b8ad875de4d3daa8bcb570da3757b3e`; ethereum `0xfd31c7d00ca47653c6ce64af53c1571f9c36566a` | ⚠️ Unaudited |
| OlympusTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31f8cc382c9898b273eff4e0b7626a6987c846e8` | ⚠️ Unaudited |
| OnsenAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0316508a1b5abf1cae42912dc2c8b9774b682ffc` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09f77e8a13de9a35a7231028187e9fd5db8a2acb` | ⚠️ Unaudited |
| PancakeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbcfccbde45ce874adcb698cc183debcf17952812` | ⚠️ Unaudited |
| PancakeRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05ff2b0db69458a0750badebc4f9e13add608c7f` | ⚠️ Unaudited |
| PangolinDynamicSubLPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe05811aff7a105fe05b7144f4e0dd777a83a194e` | ⚠️ Unaudited |
| PeggedOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cbfbb38498df0e1e7a4506593cdb02db9001564` | ⚠️ Unaudited |
| PLPOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x02d4c5c47c6e779f44709f35f0131c1cdb407fbf`; ethereum `0x2bcccb83178f9fd889eb937979d659a5997ca327`; ethereum `0x85e8a3087c90992badd74be44f18626b2359f490`; ethereum `0x9d72680409b906bf964dbfc89c7c270a88fe4de6`; ethereum `0xbc00ca0d71231c5e23ba90a90d8c5d9039c39614`; ethereum `0xd825d06061fdc0585e4373f0a3f01a8c02b0e6a4`; ethereum `0xdfe08dafcedf428932336fbfe7bfbf0403ad58e5`; ethereum `0xe5683f4bd410ea185692b5e6c9513be6bf1017ec`; ethereum `0xfe0f13fd5f928539c5bc377c8200a699fc95ca02` | ⚠️ Unaudited |
| PoolBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8` | ⚠️ Unaudited |
| PoolManagerV4 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d3a388e310aaa498430d1fe541d6d64ddb423de` | ⚠️ Unaudited |
| PopsicleUSDCUSDTLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7fa554a65a98502457fcfc2f1afa28113d7920` | ⚠️ Unaudited |
| PopsicleUSDCUSDTSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa85b0bb658d519247494b6020cae6e65f572950` | ⚠️ Unaudited |
| PopsicleUSDCUSTLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8176c5408c5dec30149232a74ef8873379b59982` | ⚠️ Unaudited |
| PopsicleUSDCUSTSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b95bf93b5873c8cb9ae3374e3054736a5b79676` | ⚠️ Unaudited |
| PopsicleUSDCWETHLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x04146736fef83a25e39834a972cf6a5c011acead`; ethereum `0x2ca12e0ca5c2e1ee8dc18eaa0d24eed647ae7531` | ⚠️ Unaudited |
| PopsicleUSDCWETHOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0d52048451207106184f0423caf055ae24a5a38a`; ethereum `0x7c8fef8ea9b1fe46a7689bfb8149341c90431d38` | ⚠️ Unaudited |
| PopsicleUSDCWETHSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0e0e2c6204976ba791fba95efbb54f9f76556a57`; ethereum `0xc97c7f6e60fdd610a0fca4792bbbd1dbd028d474` | ⚠️ Unaudited |
| PopsicleUSTUSDTLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e93686d34a9ebf7c589998a576ab603719500ef` | ⚠️ Unaudited |
| PopsicleUSTUSDTSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2141d069c75c76eff779fc3ca187233dafc1e7c` | ⚠️ Unaudited |
| PopsicleWBTCWETHLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x64c65549c10d86de6f00c3b0d5132d8f742af8c4`; ethereum `0x6eb1709e0b562097bf1cc48bc6a378446c297c04` | ⚠️ Unaudited |
| PopsicleWBTCWETHSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa1cdf7d4e983a4dbc3833f6bbfdb3eb112fef5c1`; ethereum `0xf82397056a454ad3cbb6be67b07df7a75458bbfa` | ⚠️ Unaudited |
| PopsicleWETHUSDTLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2906ae98fdaf225a697a09158d10843a89cf0fc5`; ethereum `0x9ca03febde38c2c8a2e8f3d74e23a58192ca921d` | ⚠️ Unaudited |
| PopsicleWETHUSDTSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xad2f284db532a57d6940f3a46d875549dceb030d`; ethereum `0xbd73aa17ce60b0e83d972ab1fb32f7ce138ca32a` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75e42e6f01baf1d6022bea862a28774a9f8a4a0c` | ⚠️ Unaudited |
| PositionRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb87a436b93ffe9d75c5cfa7bacfff96430b09868` | ⚠️ Unaudited |
| PotionPointRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2258590acdbea77dcc9c974ceb0b22b9329e6bbc` | ⚠️ Unaudited |
| PrecompileTester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 12 deployments: avalanche `0x2cc9bea92d4b5a066a83aed1699eccc086298109`; avalanche `0x377aa0ead98a5525a582cabca926cb9adc39e709`; avalanche `0x3a062dd7126ee8a30b16a881954fb32a57fcb19c`; avalanche `0x48686c24697fe9042531b64d792304e514e74339`; avalanche `0x51d22d6584f177149bedf885ce5896c744d299d5`; avalanche `0x651c441af9bece5a473b56ba0f75ffcca6c8064e`; avalanche `0x87072985aa1a2647da7dc3fc514fc4fa093022c2`; avalanche `0x97cdab04d01d0ed827aa6efcf9f1131d3e61bbf0`; avalanche `0xa877be76a88e69bf567cb24082bf0ecbe03dc23e`; avalanche `0xb13352c12d7b024ed6abaaa94355352b72e3a00f`; avalanche `0xb597fb1d5c27b4dfd717d502bc29ed6106aea876`; avalanche `0xd93809d3f164e9be73a0dc493fd295e6fe3b4674` | ⚠️ Unaudited |
| PriceFeedTimelock | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x107b31d84bf6cec672f3af924471bb6f4fb8555a`; avalanche `0x99f873a8e3e21ccf3e9b691f02fc86a6a2ec2bd3`; avalanche `0xd7ae651985a871c1bc254748c40ecc733110bc2e`; avalanche `0xe34309613b061545d42c4160ec4d64240b114482` | ⚠️ Unaudited |
| PrivateMultiRewardsStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 14 deployments: arbitrum `0x18f7cca3d98ad96cf26dbda1db3fd71e30d32d31`; arbitrum `0x366ac67fa2848cc94519b3ef3222b98e1ce9f18b`; arbitrum `0x3bf887d9174d111d192fdbef3c3cbc9bfcf56836`; arbitrum `0x5b51f27c279aeecc8352688b69d55b533417e263`; arbitrum `0x8fac044da635c79b5ae9377498eadba9a4111482`; arbitrum `0xa2af3e88d32eec0c90a9a78a3693f9b03ee8128e`; arbitrum `0xa5e1a7c707a3498ed65494819086b3372bd31ba6`; arbitrum `0xa7940dcb17214fabce26e146613804308c01c295`; arbitrum `0xaf4fdcaa6d9d5be4acd8fce02fa37f72b31a74cb`; arbitrum `0xc35553797c222727c19553010625af3808149718`; arbitrum `0xe5e501e4090f8cf4ff5992345df870d2223888ec`; arbitrum `0xe6f823a64fbf127d4a989d747871bf79e69017e7`; arbitrum `0xeb0deab1099dd5a7d499b89a6f47cef8f08c5680`; arbitrum `0xf9398c1751824904744f3d99d29b94cc4c8c7eea` | ⚠️ Unaudited |
| PrivateRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 6 deployments: ethereum `0x9b6f6c00f91579fb058572a875f1da2a4ad7ad51`; base `0x635693f0d3ff2eeb95d19e680ed5fbecc5e7d3be`; arbitrum `0xe046ac4f2d1676767657e10376c2f32230482bed`; linea `0xaf2fbb9cb80edfb7d3f2d170a65ae3bfa42d0b86`; blast `0x19c08f59c4d75407652a6a970078e79d117d0fd7`; blast `0xa98973deeb93efa9f4a3ed3d8ccf0644150a63ac` | ⚠️ Unaudited |
| PrivilegedCauldronV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378748 | 2 deployments: ethereum `0x406b89138782851d3a8c04c743b010ceb0374352`; ethereum `0x85f60d3ea4e86af43c9d4e9cc9095281fc25c405` | ⚠️ Unaudited |
| PrivilegedCauldronV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x40d95c4b34127cf43438a963e7c066156c5b87a3`; ethereum `0x6bcd99d6009ac1666b58cb68fb4a50385945cda2`; ethereum `0xc6d3b82f9774db8f92095b5e4352a8bb8b0dc20d`; ethereum `0xce450a23378859fb5157f4c4cccaf48faa30865b`; ethereum `0xed510639e1b07c9145cd570f8dd0ca885f760e09` | ⚠️ Unaudited |
| PrivilegedCheckpointCauldronV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x289424add4a1a503870eb475fd8bf1d586b134ed`; ethereum `0x46f54d434063e5f1a2b2cc6d9aaa657b1b9ff82c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: ethereum `0x1ac2674853e9da332dd3cb451375412bce5757a1`; arbitrum `0x90da0af7d7a80e92f414e007c699ba3be446d379`; arbitrum `0xee5ff675d8d974a90336747e4183e1eb0f820580`; arbitrum `0xf762bc80b9e29432e99aba02c06a65d2934de4cf`; arbitrum `0xff11d8b068b0e8e583769542ce9bc23036ed448f`; avalanche `0x1035b0c31d92d5a8cd9efcc9ed240aaa64c3d784` | ⚠️ Unaudited |
| ProxyOFTV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x195dda36b484d31581c99bcf3f1c3ce581f5bece`; ethereum `0x3a5770733479220ca4067c12526a7cb3d1d0574e` | ⚠️ Unaudited |
| ProxyOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 104 deployments: ethereum `0x0988572c7120fbda493a74a7f7f1b451be0c1743`; ethereum `0x0a81e2c11ab6d587becb59e8951a41830f61a7f6`; ethereum `0x0df56a0cf3e6da667c9532203fca4c8ef138a181`; ethereum `0x105cc8faca360bbecf2242d1b6a11d2d00db36ff`; ethereum `0x1888c9486fa6611d6291b1f05db8958523437c5d`; ethereum `0x1e57631ec67703b7045e03abd42b66eaa70d620b`; ethereum `0x3379c405086ee30e85c90a0a8c065d7aec0f2f7c`; ethereum `0x39dba7955cee12578b7548df7ebf88f835d51be1`; ethereum `0x3cc89ea432c36c8f96731765997722192202459d`; ethereum `0x3e8171e4a64052e3a14f5100d3ddad9c9368d317`; ethereum `0x40cc67db2713f34daca67d93acdef59d3b8279a9`; ethereum `0x416c83631f165af3f0ff4f814e606494589038a7`; ethereum `0x52b2773fb2f69d565c651d364f0aa95ebed097e4`; ethereum `0x5516d8ba01c82845f84ed3f753c49e612a94f6f2`; ethereum `0x563111a691302d9700abc617e99236d6a6fc537b`; ethereum `0x64422a1337082bf99e6052ff52684374eb1a7fb7`; ethereum `0x66a809a31e6909c835219cc09ea0f52135ff0a11`; ethereum `0x72c6a9564383758fb6d4ea2f66e41c6597cf4c9e`; ethereum `0x73d32281454da7cfcc131b5c4ccb04fb63907992`; ethereum `0x76c936a0db6eeeb54e615b93a6faaa9930c02c19`; ethereum `0x7d76568d84de8a0f34bbf315f53d7772c1fabcd8`; ethereum `0x87a5bf86d6c96775d926f43700c0fd99ee0c2e82`; ethereum `0x8cbc6f9811b266268b94b84afed0e5ee26d61ddc`; ethereum `0x9141fd00c1d2fbc5e92361dcd9854417409cadb7`; ethereum `0x96a5b3b70294bfaab842d498c07d5aed581395a0`; ethereum `0xa32d03497ff5c32bcfeebe6a677dbe4a496fd918`; ethereum `0xa996a383f0527409fe3e8476eae70a5f7801bceb`; ethereum `0xaf6a783715a6495c9047c064a747cd56c3f0cf7b`; ethereum `0xc8c18c60e7c8dc2f8f505a76c03e8fadf20bc603`; ethereum `0xca7d4d51477e27a515d0d261ba6f36aa5dd5beb3`; ethereum `0xe11d52125495ba56820e12e9dc13325f0b421a52`; ethereum `0xed5d79f369d878c9038ac156d7d71b6364756f8e`; optimism `0x04146736fef83a25e39834a972cf6a5c011acead`; optimism `0x8cee5b335f450933b4720b5b84e6125d4225fb62`; optimism `0xbd73aa17ce60b0e83d972ab1fb32f7ce138ca32a`; optimism `0xc845c5baf57f61eb925d400aebff0501c0e9d2ba`; bsc `0x1409df276a1b0097e2c5f2c1a46b38c83d171172`; bsc `0x4d526f103307b548227f502655f7b80796b64f52`; bsc `0x75097b761514588b7c700f71a84ddbb5ad686074`; bsc `0x93503ab9f3aa708b757caf3238b7673bab2e3409`; bsc `0x978d34a96780414c5978ab3e861b0d098b2a006c`; bsc `0xc2758b836cf4eebb4712746a087b426959e1de26`; bsc `0xdd45c6614305d705a444b3bab0405d68ac85dba5`; bsc `0xfa85b0bb658d519247494b6020cae6e65f572950`; bsc `0xfe0f13fd5f928539c5bc377c8200a699fc95ca02`; arbitrum `0x03348761a9deb05673c60867d0aaf9ed50372ef9`; arbitrum `0x048fcf0fd3b3d14d27cfc7f41232085ed9d26fb4`; arbitrum `0x0cbaa5b345e6967ada9d616c9969750f3a382a54`; arbitrum `0x0d52048451207106184f0423caf055ae24a5a38a`; arbitrum `0x0e1ea2269d6e22dfeebce7b0a4c6c3d415b5bc85`; arbitrum `0x1ba40e263d33abd536adc164164d2ac7a3ac3c6e`; arbitrum `0x1fb1950d46d31b13d2dab2be3660c698e4d9f99e`; arbitrum `0x2f614a99e70f52ab07cba65fed8816e5500f3b0c`; arbitrum `0x309d154a865ea235883adaca14d532c633250ea3`; arbitrum `0x3204bd001c71ede7db15224120bff38b6fffa1be`; arbitrum `0x322a768bf0fb4baa829c3576b7ad2de26c2316f0`; arbitrum `0x38a67c0f839e5f8939b12f9181a1924e4e4375ed`; arbitrum `0x3e4216c5f1f57c43a01180ac819eec23168a5c12`; arbitrum `0x4a4d9a80c3d0ecf159b99b915fa74d1e36af5ce2`; arbitrum `0x4bf0f7b7251aba09b091c765861878840763f0e4`; arbitrum `0x4ed0935ecc03d7fcefb059e279bcd910a02f284c`; arbitrum `0x56ac5f5f95312b05ee268af00fa3545f7fea949f`; arbitrum `0x576432d6f58dc75ffd127538afc07577ad32865e`; arbitrum `0x6665230b121a5bb5745a114a887821d2d1f67579`; arbitrum `0x681e0e9ffa58e63b5156d7bd19af411f500d8c93`; arbitrum `0x76a31395915229e60b54d5fc40df15ee2a81b9b0`; arbitrum `0x7a377f1114e9533888703d684d3ee13aeca11c71`; arbitrum `0x8ef051ea42932c435d4eb5d21307b3d750b4e026`; arbitrum `0x964734970fd3af39abad1c7ab150f678f74ac3ea`; arbitrum `0x9e7af85b84d4796dd02165f38480ef825bb84592`; arbitrum `0xa245cf83c31d5b08d22eb02e6e3bce20f8916a25`; arbitrum `0xa6138e451216b18ec93a2927280130c02cff8185`; arbitrum `0xc1cd2b62420451aac9f2a28df92549e200849ce3`; arbitrum `0xcfb7beb159744147a5b67a85b2b76f27667a824f`; arbitrum `0xd136a832da8bb859050fdc8528cefdc3a820b98e`; arbitrum `0xd1631dd915cc7b0ad94c307b576012817f6c41a5`; arbitrum `0xd63537a6f38eed8c6f77099f751bcd5f6047e5c3`; arbitrum `0xd6b8bd85a9593cb47c8c15c95bbf3e593c5dc591`; arbitrum `0xe03df67e7e79395479b283eaf699d272336e43ef`; arbitrum `0xe322cb93fb2c61bcebf0c41d67c46f18330da3e8`; arbitrum `0xe45ea46d381ce3616bd509621e1cc67b1e71921b`; arbitrum `0xe8579c9fba03fa4688f378b1350b6b1ad1642498`; arbitrum `0xe94c443e2d124cf9d5b5a6f1ce0e29dc464551da`; arbitrum `0xe9986e5723ade584de92d233c7edfb858a253271`; arbitrum `0xea9554bb47116c9a03bc9ebc4cab6529b383f48f`; arbitrum `0xed7062044d08e2bc6d1176bde8ea22fc4ebba5c1`; arbitrum `0xf3dd60f044c6409b0c15a57ffb87447b992efc53`; avalanche `0x0cc93802f800ccee67914c3072e80d23e920a3e2`; avalanche `0x0e1ea2269d6e22dfeebce7b0a4c6c3d415b5bc85`; avalanche `0x15f57fbcb7a443ac6022e051a46cae19491bc298`; avalanche `0x1e21573cfc456f8add4c27ff16b50112e3adc7ac`; avalanche `0x2ca12e0ca5c2e1ee8dc18eaa0d24eed647ae7531`; avalanche `0x3cc89ea432c36c8f96731765997722192202459d`; avalanche `0x59b3d5ddf93a3782f7b7a4be1214722fc6fecd45`; avalanche `0x694808221d4f31d5849f2aba08584e2c8f4b99ff`; avalanche `0x7aaa365d8811a23a767554ffa78850b06d24f0a9`; avalanche `0x7e0f0cc086b069d1ae3edb7e7aeecc770b6d3aeb`; avalanche `0xa02de9526b17b3087c83340a0de544dcf9d034bb`; avalanche `0xb69c154030ce89340cdceca8eed93283499a8276`; avalanche `0xde99f828f9f634c0ded2c8d78fc9dce2531b31c3`; avalanche `0xf8b72e847e648bc87c8269fe258cbe908fa2a71d`; blast `0x2612c7a5fdaf8dea4f4d6c7a9da8e32a003706f6`; blast `0x70becf593a0f094dd7d5f8b8b48fb8582c0ec575`; blast `0xf675bb0c1cde2179d19b2ea0e6e5e9d2053b3d87` | ⚠️ Unaudited |
| PythAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: ethereum `0xec5b37ce14e6cad1804a185cbd462bdc697082d3`; arbitrum `0x176e4c4e22995440ef4631aed0c0547c7e34738b`; arbitrum `0x43676b461a27b2d8127f14a163340889bce1565a`; arbitrum `0x46d9f53b68cb930993e1c9e490d1847046e057de`; arbitrum `0xe03d243a3167c868ac150a051b626e3b20e2c0d7` | ⚠️ Unaudited |
| R256 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b2d94bf0f0a4eeb7d00d67524b251ffbb91c86a` | ⚠️ Unaudited |
| R256Basic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8a520f13ab264a288f7736ddf11f2fcf3246c3` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22199a49a999c351ef7927602cfb187ec3cae489` | ⚠️ Unaudited |
| Receiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9c33a563e096e5d22b48719dbd3336c92a49794` | ⚠️ Unaudited |
| RedeemHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1e83825613de12e8f0502da939523558f0b819e` | ⚠️ Unaudited |
| RedstoneAggregator | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | unit-378925 | `0x86e761f620b7ac8ea373e0463c8c3bcce7bd385b` | ⚠️ Unaudited |
| ReferralStorage | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6fab3f0c7199b0d34d7fbe83394fc0e0d06e99d` | ⚠️ Unaudited |
| Registry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xb537622964bc456087156b4ff9e761a701b49292`; arbitrum `0xed698799decdda38314d8168418bb07b45d8ab90` | ⚠️ Unaudited |
| RescueSwapperFunds | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc799d2b9106a1e3fbdfe619c67a4682c0c457bed` | ⚠️ Unaudited |
| RevertingToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1aa92da659e914982975f8f109a05be904a0d3e0`; arbitrum `0xa9ada7af412ea98864467d2e142829a13d096270` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: arbitrum `0x5c04a12eb54a093c396f61355c6da0b15890150d`; arbitrum `0x986b4e5a001ef77c99498e68db070c5b047f43aa`; avalanche `0x2274491950b2d6d79b7e69b683b482282ba14885`; avalanche `0x45b2c4139d96f44667577c0d7f7a7d170b420324`; avalanche `0x7dcdb863215656e34470690432058b03d7ec03b6`; avalanche `0xe72438e508039e94250756c69c3e6b520e4d3f99` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bab7207d4e27b5de4a15d540b7297281b45ed2a` | ⚠️ Unaudited |
| RewardHarvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x71c7267d4c5a4b54f6f995f66ad51f13dc688d6b`; ethereum `0x79533f85479e04d2214305638b6586b724bec951`; ethereum `0x7e0f0cc086b069d1ae3edb7e7aeecc770b6d3aeb`; ethereum `0xa454406be7690c78ee96f99790a8b509460854ea`; ethereum `0xb7ddfabc87c7d5b3f3c1be8559f4c4704fa57754`; ethereum `0xe685a35347ddc8d58ed2838a291c8a66d5bdb0ca` | ⚠️ Unaudited |
| RewardRouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x159854e14a862df9e39e1d128b8e5f70b4a3ce9b`; arbitrum `0x5e4766f932ce00aa4a1a82d3da85adf15c5694a1`; arbitrum `0xa906f338cb21815cbc4bc87ace9e68c87ef8d8f1`; arbitrum `0xb95db5b167d75e6d04227cfffa61069348d271f5` | ⚠️ Unaudited |
| RewardTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x0755d33e45ed2b874c9ebf5b279023c8bd1e5e93`; arbitrum `0x1addd80e6039594ee970e5872d247bf0414c8903`; arbitrum `0x4e971a87900b931ff39d1aad67697f49835400b6`; arbitrum `0x908c4d94d34924765f1edc22a1dd098397c59dd4`; arbitrum `0xd2d1162512f927a7e282ef43a362659e4f2a728f` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | ethereum | unit-378759 | `0x7202b7ca846fc93467e95fa279bc6085f2d5b6fe` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: arbitrum `0xabbc5f99639c9b6bcb58544ddf04efa6802f4064`; linea `0x0d2a5107435cbbbe21db1adb5f1e078e63e59449` | ⚠️ Unaudited |
| SdeusdPermissionedSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf2121ad4e32d3a68d4eeb081a78dffaac1ab2a9` | ⚠️ Unaudited |
| SDEUSDSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x15be4a020c06edab63f7a8df77804637543c94fa`; ethereum `0x2fa679628cd9a64180e0466be0088e7a7731ea87`; ethereum `0x5fc91246a4cae9841148680ee180f145c34b68ec`; ethereum `0x64d4160d5f5efffaf90317c47b80d73b36108180`; ethereum `0xb4c4822b0aed249773aa57641be86d7172978ba7`; ethereum `0xc0a86cf3af6263479e92a6caf2426d4e6de07d3d` | ⚠️ Unaudited |
| ShortsTrackerTimelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79b6ee65fc1466b5fd95e20650df740c085c6c2a` | ⚠️ Unaudited |
| SikobaContinuousSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4994e81897a920c0fea235eb8cedeed3c6fff697` | ⚠️ Unaudited |
| SikobaPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ade7bc90c34e8b2ca92590e525305c85f2d03` | ⚠️ Unaudited |
| SikobaToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b40089e6cba08696d9ae48f38e2b06faff81765` | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: avalanche `0x05d06afb994047acee8c205500ab1aa25c5a3388`; avalanche `0x0babedc30d786ed751ff4b68da96da4a4cab3689`; avalanche `0x692782448c146806be6a3c0b801d5eab5f8e8551`; avalanche `0x88e02662c1c22a256c5ac9be93bfe2c4ff5dda60`; avalanche `0x89ecdda0d98b796e1bb93a578e0559509a033f00`; avalanche `0x9f509ae4e18d5a14afb51e16519c2936915b896c`; avalanche `0xd0c23f8a3777d96e7561b0b5c5ce8b5afc0c2fa1`; avalanche `0xe734779ca7a5eca71bf87af3938b60b22f628cd3`; avalanche `0xeb1f569271b2997779e11c5df6f457753d6e0b55` | ⚠️ Unaudited |
| SimpleSLPTWAP0OracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66f03b0d30838a3fee971928627ea6f59b236065` | ⚠️ Unaudited |
| SimpleSLPTWAP1OracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d51b575591f8f74a2763ade75d3cdcf6789266f` | ⚠️ Unaudited |
| sko_ping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d4c2f88f2e403ec2ae5079726a13873673683fc` | ⚠️ Unaudited |
| SkoSaleMVP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb11d6ec05f4e1280a83540511d19cb131afd176f` | ⚠️ Unaudited |
| SmartChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x0c3d6892aa3b23811af3bd1bbea8b0740e8e4528`; bsc `0x2dcf4cdff4dd954683fe0a6123077f8a025b66cf`; bsc `0xa5137e08c48167e363be8ec42a68f4f54330964e`; bsc `0xce54ba909d23b9d4be0ff0d84e5ae83f0add8d9a` | ⚠️ Unaudited |
| SolidlyGaugeVolatileLPStrategy | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-378808 | `0xa3372cd2178c52fdcb1f6e4c4e93014b4db3b20d` | ⚠️ Unaudited |
| SolidlyGaugeVolatileLPStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc2fdefbd7816f7b9163196fb546e9b383eb22a2b` | ⚠️ Unaudited |
| SolidlyLikeVolatileLPLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x3a163ed7044a33af1b331ea4a2fcbbc26d63b7f9`; optimism `0xb69c154030ce89340cdceca8eed93283499a8276` | ⚠️ Unaudited |
| SolidlyLikeVolatileLPSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x601c5634c8435ceea8e87d0b5404c206f1e305db`; optimism `0x70b868191b588384b96233cad7c27457026a7493` | ⚠️ Unaudited |
| SolidlyLpWrapper | unknown | project_anchor | own_supporting | 0 | optimism | unit-378805 | `0x6eb1709e0b562097bf1cc48bc6a378446c297c04` | ⚠️ Unaudited |
| SolidlyStrategyLens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x59be9fcb06cc9c8bee44b9861131d4614fb11bda`; optimism `0x640605cb9366c98b6d324d8cb04f98b363b76521`; optimism `0x8bee5db2315df7868295c531b36baa53439cf528`; optimism `0x8e24bc43f2dbf3105068635d50d72158bad9d419`; optimism `0xe8681a8c8d8e24b65526c2f94fd5ef9d3ec18726` | ⚠️ Unaudited |
| sOlympus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x04f2694c8fcee23e8fd0dfea1d4f5bb8c352111f`; ethereum `0xaec1162bbc994c52663bb195916c0bf2db189376` | ⚠️ Unaudited |
| SpellGovernor | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x4bdc6f8720976aadee7f2a64fcf03ba83f9dd71e`; arbitrum `0xdc1db46a805793db237949a6e6a743418996549f` | ⚠️ Unaudited |
| SpellPowerStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x196b73a33f10bc839de082ccf799027190448ca1`; arbitrum `0x3b6bbc741154f7377c2eb2cd2c944f7e828cb34f`; arbitrum `0x609f4c6b7937cffeb50fd469839c11283242fd72`; arbitrum `0x8b8718114532c66ab375918d32885f5f4f68b884`; arbitrum `0x9961bf8c5c338d88de9e75328fdfaa9d42f9fc02`; arbitrum `0xa5901a7473d9f3dec7e3ab8bbb18ed820972397e`; arbitrum `0xe0f82977920d8cbfbf188a3abe567cfa2445abd6`; arbitrum `0xfa99563fcf45e0caec3700137e71157eb89ce385` | ⚠️ Unaudited |
| SpellTimelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0xce1cc7b753eea5a8d609d9f1a5ee4e6c8e146848`; arbitrum `0x5572348fa7c81f986c6323277464e31c9d7eac2d`; arbitrum `0xe2be92be640c277bcbd33bd57f77f0b350192238`; arbitrum `0xfce52f14c092932db32d678eea5eeaf7344688c2` | ⚠️ Unaudited |
| sSpellV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378743 | `0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9` | ⚠️ Unaudited |
| StakedGlp | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2f546ad4edd93b956c8999be404cdcafde3e89ae`; arbitrum `0x5402b5f40310bded796c7d0f3ff6683f5c0cffdf` | ⚠️ Unaudited |
| StakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa55ce3e25bd4cb6c5375aa393335b708db790915`; ethereum `0xc8c436271f9a6f10a5b80c8b8ed7d0e8f37a612d` | ⚠️ Unaudited |
| StakingPools | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab8e74017a8cc7c15ffccd726603790d26d7deca` | ⚠️ Unaudited |
| StakingWarmup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2882a5cd82ac49e06620382660f5ed932607c5f1`; ethereum `0xd175a863ff44bd6927bfa99123f3fc426f0d3345` | ⚠️ Unaudited |
| stdeUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5c5b196abe0d54485975d1ec29617d42d9198326` | ⚠️ Unaudited |
| StrategyExecutor | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x3de40d940f5a4b13bd5aab85346f52e153985cd0`; ethereum `0x5d30dcd259651d44978f20cbd88aaed3b7eee9ca`; ethereum `0x762d06bb0e45f5acaeea716336142a39376e596e`; ethereum `0x7bc6ce247a8d8a789716ee28ebf071a4972398fb`; ethereum `0xb076579b9317f281f567271821c32419b0d5bdf8`; optimism `0x7e05363e225c1c8096b1cd233b59457104b84908`; optimism `0xd69e75c1c2a0f2838a6bba8bdff9d08c8f137cd9`; optimism `0xfd2281453d970964c46b58cd4ebf50b45e820d58` | ⚠️ Unaudited |
| SushiBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8798249c2e607446efb7ad49ec89dd1865ff4272` | ⚠️ Unaudited |
| SwapperTester | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3a062dd7126ee8a30b16a881954fb32a57fcb19c`; avalanche `0x526a17c623809792c033c9816ae9a6fa80acdfdd`; avalanche `0x7ad0e580d8458bbef71ec6a1755c59651e1eaaa7`; avalanche `0xd8284e7bf0ac2171b5cf6ea92edd90158ed9e020` | ⚠️ Unaudited |
| SwapperTesterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c963a595afb4609c5cc6bb0a9dad01925b91886` | ⚠️ Unaudited |
| SyrupBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x009cf7bc57584b7998236eff51b98a168dcea9b0` | ⚠️ Unaudited |
| TestContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 23 deployments: polygon `0x0bfc4d468c130f27887b4df6a7f9e85dddbacffb`; polygon `0x29be2644721689c45a5a317d5fb452747e454dce`; polygon `0x3a163ed7044a33af1b331ea4a2fcbbc26d63b7f9`; polygon `0x3aff990be4b0b7fab2cc2e56d5f28bd90ea1384b`; polygon `0x49af4181b36b629089a3b26e046d313a115ec911`; polygon `0x601c5634c8435ceea8e87d0b5404c206f1e305db`; polygon `0x6c464923568a466262e2bb614723a98813b0b548`; polygon `0x70b868191b588384b96233cad7c27457026a7493`; polygon `0x72015edee0bc8a08480df29e8540cd595452dfcb`; polygon `0x7e0f0cc086b069d1ae3edb7e7aeecc770b6d3aeb`; polygon `0x98bf3e7da6f5a81630730d538715e35d8c0d3ede`; polygon `0xac6c439253987be9aff6aac047ec8501ea13d512`; polygon `0xb69c154030ce89340cdceca8eed93283499a8276`; polygon `0xea06102389ebcf286c374979849214b4dfcc7d43`; polygon `0xf6939a5d9081799041294b05f1939a06a0adb75c`; arbitrum `0x119f99bc1e0519f89c831da89050edb7217b8889`; arbitrum `0x2f3dba450679f93ad6b40949a5ca0dff313eda2c`; arbitrum `0x316f7b6e7b260ad4bd60dd5f5d601b3cc516617e`; arbitrum `0x333e28e557dc026518e25d1d426c4407a0a3b5e8`; arbitrum `0x4b4fe55e2538cc458742216529cea3e8a2478f8f`; arbitrum `0xf10ec658a94c4e5c523ea9a5ed6f24b631f13f50`; blast `0xdea1b44b710af105f4a0c0ab734a7b8f543e9d70`; blast `0xfc301d1d8a4cc14c59289aeec41fe8721d554fc9` | ⚠️ Unaudited |
| TestForMelen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09f5e032aae0d6b693db30b2a3daccf2fb878679` | ⚠️ Unaudited |
| TestForMelen2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bc998bf2e25ea49b212b9db35491047c28074cc` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: ethereum `0xdf4364671bd0d93b56db54c2fc30e18596d5ed30`; arbitrum `0x09fec993be76230296ce8c3b8edafd32b6240126`; arbitrum `0x460e1a727c9cae785314994d54bde0804582bc6e`; arbitrum `0x4e39741be5a45ad129eddc1148bd201b8e098eb6`; arbitrum `0x5cf5e6a4e430034836c9999a09781fc464615f42`; arbitrum `0x9fd825166311545eab45690ab5def0d992fdaa44`; arbitrum `0xaa50bd556ce0fe61d4a57718ba43177a3ab6a597`; arbitrum `0xe7e740fa40ca16b15b621b49de8e9f0d69cf4858`; arbitrum `0xf3cf3d73e00d3149ba25c55951617151c67b2350` | ⚠️ Unaudited |
| TimePower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x184a07c9cfd6165d6accdc373eb00bc5cd8733cf` | ⚠️ Unaudited |
| TimeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x869d1b8610c038a6c4f37bd757135d4c29ae8917` | ⚠️ Unaudited |
| TokenLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 14 deployments: ethereum `0xd877a7637caf517f207e77fbdaef58511efaad7e`; arbitrum `0x2d99d20693787cf7896c746185b7abe3b4fb62d0`; arbitrum `0x46c49ec4a9671ba7b872ab97c0f3bcc8b7433801`; arbitrum `0x4b4c275a5bbbb68a4dcc99c7c47be3ec04108940`; arbitrum `0x7724e9a2015ac9eb8a75fa43cc1358c9df9d5733`; arbitrum `0x795c1107b6cd24c81bc6a551fe662ba3d8bcb2a9`; arbitrum `0xa116565cdf0aa5f1fe36f82a9c8f0dc1dfc82cf0`; arbitrum `0xa73353ad409878095eff3ee35cfc1eda55008ec6`; arbitrum `0xc8ef845433e749d48b5f70fd4634d92177fde5bf`; arbitrum `0xcf2aa3dbd31bf592cf5d8ebfd2f54c6c11e64ee4`; arbitrum `0xd1140b6dcf3f1a125f5cb9d87d1ab3ca46acf528`; arbitrum `0xe2c6322190f3e8b2730e9b79f6de1ce21715dd74`; arbitrum `0xe8b450e761ef727e4ccc7751aa23a2f6e01c6716`; arbitrum `0xfb0a779cf0c62060bcf3d8bc7da374bdb71fcc87` | ⚠️ Unaudited |
| TokenLocker | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x1092b0c039f51297ccc9d9c861a2f9a18facd674`; arbitrum `0x18168e0c2f236ff355f4875217266685b30c8c62`; arbitrum `0x6e74cd9c528393d2fe5b47997270d3c7e9f13da1`; arbitrum `0x882d37bc0572738babd604c01b053b2ca058419b`; arbitrum `0xf6a75b6285f12ddd6e34032cbb9594267eb481c3` | ⚠️ Unaudited |
| TokenManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdddc546e07f1374a07b270b7d863371e575ea96a` | ⚠️ Unaudited |
| TokenMigrator | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x310e831f2c55366ad93fbb4517947c48d93539a7` | ⚠️ Unaudited |
| TokenMintERC20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ad61b0a150d79219dcf64e1e6cc01f0b64c4ce` | ⚠️ Unaudited |
| TokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: optimism `0xae031bde8582be194aeebc097710c97a538bbe90`; optimism `0xd7f347807c82e94018b5e093cacec712c4695718`; avalanche `0x588d402c868add9053f8f0098c2dc3443c991d17`; avalanche `0x9cd243e5200b290f10d74d93e0ca6c9e51b3d664` | ⚠️ Unaudited |
| TokenSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 15 deployments: ethereum `0x5f8a4030cdad25e93c0b34b5972eba6cab1e2fe5`; ethereum `0x827170823f5d75785f4d9662e42aef9b12d93f67`; ethereum `0xd3941893cfd1a563333f7383259b21daf34c14a8`; arbitrum `0x05803a6b250333e07ecffcef317a7079100184cc`; arbitrum `0x0a3b95b04fd629a900b6c83f0b5dfb77df057665`; arbitrum `0x16310c0fe8844ede84d766da9ffe24dff1afb4ff`; arbitrum `0x2783f666161e63cb4f0f6431d01735744d0845b7`; arbitrum `0x40107186bd4b60dfa8c292e46675e080f9d67b6d`; arbitrum `0x45c208d5c590caee3b047aef09f7e1d32899a126`; arbitrum `0x988d95d38be1be9bcfadb795654c74abd5ad7b70`; arbitrum `0xab0fbe08b8d41508e6a8bbd5f9046d4246992116`; arbitrum `0xad633c68d26754dc4de277aa1e2106ed00882395`; arbitrum `0xc704f586afb3b1fc7cd7d53ce03d5e0aa3f9f077`; arbitrum `0xf47ef4a213054cbdb87dde243ed8fd121fac3547`; arbitrum `0xf88d7bdd39aff61055b629fcc270e3b100b7df85` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 126 deployments: avalanche `0x0147c0212ca4aba29d26dffd3c800893080ef296`; avalanche `0x01b269d2e685127f6ca3dfdc3494b204dd2145e3`; avalanche `0x02d632ba7f2a046817af67ef7b279080d3cab641`; avalanche `0x0473f2bb3eebfe6c014f196835624d6db12465a9`; avalanche `0x0584e65ae8a47f5cb8e6a10ec487ab06132fd302`; avalanche `0x072c476cc6f75f9c1ef88f9e7c5eed69686f97f6`; avalanche `0x0769179b35243a0506e890e09603c922be72cd75`; avalanche `0x089ec7a075afe4af4e49ff11a21a0c3b61c22dcc`; avalanche `0x0a3b77599e3c313a9059ff768faee349a0972c0e`; avalanche `0x0a64e8d4408f9d3ac1322fb93f4c3dd8143b0d7b`; avalanche `0x0cc47aa1252f25fd95b65f19c2fd6db33366a557`; avalanche `0x0f9e9622c9cb6f8ea6cf19fa26252c3c3c06e27b`; avalanche `0x0fb72b771511062c5fd1811fbdfdfeda4afaf162`; avalanche `0x0fefca42e2dbbb046e46e0572ccfc2aa7cfb54b0`; avalanche `0x10f67276b71842a0c757d4432124096b32cb5029`; avalanche `0x1237804f7f4b538844fa5be835f1862b57dfb337`; avalanche `0x132492509bc416f95fcbaba63f3d9dceecce10d3`; avalanche `0x14d458a63561ffe961544252d8eb05e606664301`; avalanche `0x14f28f124db1af40a3f034c611db75dea736e08a`; avalanche `0x1565398057096d4bf5b843f37279dee15e0feae4`; avalanche `0x16f419bbca0529ecc99ff595681b822e328ed79e`; avalanche `0x1771ba12fe9427c8416e7b64ae7349f287dba954`; avalanche `0x1a772776921a8d6cfdb266891d69907c474c30a9`; avalanche `0x1b2d9116606c09d6c9903eabc1bca2e6239b440c`; avalanche `0x1fcfdee3ab694032255cd5ffe24d66b6c85501ad`; avalanche `0x23eb4187580524d25ff93a3571b1969b8018f628`; avalanche `0x25dd4a2900ee3b16f8381349a34813d41d29d7cc`; avalanche `0x2a834dd3e1732ee6c37c8b93b7b5b08091086401`; avalanche `0x2aa5eeb740a9f873f07798e6a61ffc12ac75d2da`; avalanche `0x2cd215bc634df4962f296578a2b87a9d7a1de38b`; avalanche `0x2d92eeaa1fe94cd41c22b3fe987d48a0b2e048eb`; avalanche `0x31ba32089d5474fe5b60411985c5d227d9d859ce`; avalanche `0x357211bf58a13e626eeeb2e82e1297b9ebf67b1c`; avalanche `0x386fbff27b386738cbd16f253adf0f5f72122329`; avalanche `0x3c32463e25f562fbb3684125246c5b2ed30354ec`; avalanche `0x3c9211212118ce5fab57676c88541841d6d7b5d9`; avalanche `0x3cb560faeff708e21513b0ea7e65963f08eaad04`; avalanche `0x3ccfc1d0319c52f177f4281ac5146cffa62f8e24`; avalanche `0x3dca53bd528f5cb71ad837d6760074733ca60a63`; avalanche `0x3e612511900457c364190abf4b072a9fd001acd1`; avalanche `0x3e92639d1231befffd38d887199f87b813ff864d`; avalanche `0x43feff8296f4e7fd914b99e51a78c65c95682414`; avalanche `0x444d68379832b3570503c7f0e67c54087a6890fe`; avalanche `0x45acb67c90615acbe9566c6aadc23ef418587d87`; avalanche `0x4d0b7302d7ad0b0f9efdf16caed64868ed377313`; avalanche `0x4e931f09ee083b7abfb116889622d6f337112538`; avalanche `0x52d69a3f6ed50857e57be1f0cf1914db385ea435`; avalanche `0x5410c210c0011fe8dbd3aaef3d376e4105e4c118`; avalanche `0x5caaf127cda59a1e640414aaebecd2408c006e22`; avalanche `0x5d57f62027f567855e815489d2365c7976899c7c`; avalanche `0x5da155d0e75aa0e2b4c9cfc662275b95915405ca`; avalanche `0x5f0902b53f91b92b41f5a04c80bca3a722865095`; avalanche `0x5fe9ad068fb4c60c5ee173b12305803cb05ec7ec`; avalanche `0x61ecdb614646ccf28c027b2bde9fcdf602ff90e2`; avalanche `0x627237170706db6b63362e14b8195f2df87e9f80`; avalanche `0x650967969025dd84a3328f30b110eed22a76f430`; avalanche `0x66b1452bb1b5e05ce08725d392a1c9a5e5f3142d`; avalanche `0x66fa316b49ee32aab7a7f88f08e16d8e907efb63`; avalanche `0x670968ed86ae309f552acc60cb6716b9f8198eec`; avalanche `0x68b28fe0e0f91c672dcb91e5d18ac7a95f264bff`; avalanche `0x6af7e24ac12b6e6e72606746833587edafeec3a5`; avalanche `0x6baa882234924aa48d6c2a3d1d46d0ed723a4db8`; avalanche `0x6d34318aaeb5a2d404c0c176cc7db69865368edb`; avalanche `0x6ee70ba71c6e95893b34b78d20906858fd031ec7`; avalanche `0x703473623885ffd8357527c61ec14a03a6b96460`; avalanche `0x70466e105170d8bad56ba390a48bac649fad27cc`; avalanche `0x70a5e4384a39775918eb430dede38b0121be307b`; avalanche `0x70f7d4bc2725288a72ed3ca85a167c70bb5ac7da`; avalanche `0x73cd077010c53bbc140b70b8ddb9c832db6e9ca0`; avalanche `0x763dc8d725637571ea4cb85b6de3a1f568e64864`; avalanche `0x76eaa100e46475d69d22d9f42810ba4136f63008`; avalanche `0x770b6e8a1b39f1a3ea06069cbd6d1e0b5db264f3`; avalanche `0x7a609a474ac272f552b19defecd440210fdc490e`; avalanche `0x7d0a3006bafd1df0ac2870d4cf3c8ecb22311326`; avalanche `0x7e4d8a05e10f6cb3d19822ac7742ec034a31c1d4`; avalanche `0x7e94999005976e0715b3bac0ad2f70aa8822063f`; avalanche `0x7ef4e0a14f81f4964dbcb65ad915ce2361b975e0`; avalanche `0x7fa4538f2cd08d4be4172351544cec6206bcb6fe`; avalanche `0x810998c1014b877cde1370bf75e5defa0fcbf66d`; avalanche `0x815cbe0e248d2d378c5e9c141b2ba9adaba2c9ee`; avalanche `0x81a00330a5d7a1d4e73570a3959a7e2ad998237e`; avalanche `0x8637eb17e3f5553c9890db55f4d104e4b908636d`; avalanche `0x86884879b4213187e19fc2cd191133b86b43cc3b`; avalanche `0x872f15955dbdc1055405305558bf89ab3af8030f`; avalanche `0x895a539c88ca8a360ff0b085fd9c054ca61c02e7`; avalanche `0x8b58a5a6e8651d6ade1deec04e89131fae662afc`; avalanche `0x90bbc3995f473d64f973ab8066e77b98a71f6fce`; avalanche `0x927be1425f2c3599ced2146459f6491ee450848b`; avalanche `0x948cf23e1593d6b41d8de8b79e603e4734566e8f`; avalanche `0x952d827765b0b65465e3ab280b0d42819656d57e`; avalanche `0x96a6b2d888ec1dec1db4495680c7596616c20718`; avalanche `0x9711563c33968d063fe0a41f809c4834fa997c50`; avalanche `0x99727c80726332b3b59ff5158f106c6155f4e01e`; avalanche `0x9b711b3a4ea4390c77c9438852086b3d5af3bc5c`; avalanche `0x9c5b9ea52e0270a6bdc4d0daf9224766000e135d`; avalanche `0x9eb54aed8426cbcbb2d65ea74c94aadadf793200`; avalanche `0x9f8c00dce50f2cc5f4f9bad0a79cdd1023b7c983`; avalanche `0x9fcb6badfd73112c08e1cd607bbc09246263fa1c`; avalanche `0xa526c8919f190ae0b93049aa1bdc1264d4419d97`; avalanche `0xafb2aa50d458a5611a8e212f094871a992c7fe8b`; avalanche `0xb2d98a914c471ef2736e6875503f84bcae191cf1`; avalanche `0xb31a198f6fc551b3cb1262f4cec863f7240dfec0`; avalanche `0xb3d05b9db17fd6308b85875ad7344c1c4fb8a30e`; avalanche `0xb7b46f62b924c857ef49fadc73e57fc6f0693e26`; avalanche `0xb864ba8d53a87472d6eab93ebae58c65023d274e`; avalanche `0xc3e997334527e6f9fcefc5606e3a34f47b2b3429`; avalanche `0xc6001b0e628c967af6638f7538791ab3c4669249`; avalanche `0xc698d4fa211bdba3e48fe880efe371372774673c`; avalanche `0xcbaf300379da70be2f7964f6076610b633c15965`; avalanche `0xcdac336a4839090a091b0e7a9f8938f3a730fbeb`; avalanche `0xd603663bf9f8e3709445492112a9271248fa5360`; avalanche `0xdc0d421bef747406bb5c947dd75e7fda5ea187a7`; avalanche `0xddf06d89c908bc38e03067d65408d632fda4fd9d`; avalanche `0xde8cb3a7084e5bb6acc39afe8d0e67825379d652`; avalanche `0xdf1339ef77ba1ebd33cbe0d83b289af4c0ef8fe7`; avalanche `0xdf781bb633ab9d0041877f169ba47f07ba242aa4`; avalanche `0xe5ba4d94be0480a9dd21e38dfad5e9e408cd298b`; avalanche `0xea347ef58dfb129035dd40d6f88b453400d6d0c3`; avalanche `0xec8184390ff917370d700c10ea3c85d25fdd7d1a`; avalanche `0xf19c35991d1c2b961e5bce260095f34a55ecb452`; avalanche `0xf2eb595f140d86fe7631ae2ed711f4e844734279`; avalanche `0xfa4329691859e8f3a811b039e9e747b8d76abf9b`; avalanche `0xfa4ceb42b72f0c5e9cdedf68c006bdee5d0a1846`; avalanche `0xfb058632c903ef564ba9be42da94e818691a3fe9`; avalanche `0xfc22e8fa703c557ce2224524824a0784fed56a25`; avalanche `0xfc2f38445be02504df62753216fd2a4566747bbb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x2f4391579839c5e3bcd6d471ea4aab3de0bb5140`; avalanche `0x592f70bd9ec0ce89c4b430fac4dbc020b2419f37` | ⚠️ Unaudited |
| TreasuryLend | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04dd97255ddee29c941d85f5b5cde6ace8bd207f` | ⚠️ Unaudited |
| TreasuryManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8121b44a290ee16981d87b92fc16b2366de6b3` | ⚠️ Unaudited |
| TreasurySwap | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa25b17d7deee59f9e326e45cc3c0c1b158e74316` | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x3c5486b85faae29b071f2a616a59ca7bf8f73682`; avalanche `0x82ea6f7bf853a199ab921137b119b6d41f08038e`; avalanche `0xe6ffd92b9f77fbf5bfec0f3d9c9d027c4cf3ba6e` | ⚠️ Unaudited |
| TroveManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2` | ⚠️ Unaudited |
| UmbrellaAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: linea `0x15f57fbcb7a443ac6022e051a46cae19491bc298`; linea `0x23a22b4777f16c3941ce3ef2179c58963aafd309`; linea `0xe470189172d1e37751f0453bbaf9c86c2ec202ef` | ⚠️ Unaudited |
| Unipool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbb424fd93cdec0ef330d8a8c985e8b147f62339` | ⚠️ Unaudited |
| UpperBoundedInverseOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecabba5a41af5895e3202b87c026dcae5b32b076` | ⚠️ Unaudited |
| UsdcAvaxLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x2af303aa6dbcc94f16a6bbc732b6575f2294b357`; avalanche `0x38a67c0f839e5f8939b12f9181a1924e4e4375ed`; avalanche `0xc845c5baf57f61eb925d400aebff0501c0e9d2ba` | ⚠️ Unaudited |
| UsdcAvaxLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x648af26592c7425447b8eee647f4106b97a27793`; avalanche `0xef9c97e356bc5ff2460e25f40f608101ce15d70b` | ⚠️ Unaudited |
| UsdcAvaxOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x08b918dd18e087893bb9d711d9e0bbaa7a63ef63`; avalanche `0x471ee749ba270eb4c1165b5ad95e614947f6fceb`; avalanche `0xb9565f2612e35cd58513145f1c7ed790504f265a` | ⚠️ Unaudited |
| UsdcAvaxSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x20cb52832f35c61ccdbe5c336e405fe979de9430`; avalanche `0x4ec0000da67399afcf4ad04da6089afd63bef901`; avalanche `0x6eb1709e0b562097bf1cc48bc6a378446c297c04` | ⚠️ Unaudited |
| UsdceAvaxLevSwapperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d76568d84de8a0f34bbf315f53d7772c1fabcd8` | ⚠️ Unaudited |
| UsdceAvaxSwapperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6da65013d5814da632f1a94f3501abc8e54c98ae` | ⚠️ Unaudited |
| UsdceAvaxSwapperV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b76afc2e52f84e04ee3fb1961277783fb804750` | ⚠️ Unaudited |
| USTMiddleLayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3844a28a5d209a72d57da62045bc4ac4f4b18bff` | ⚠️ Unaudited |
| USTStrategyV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4eff93bc468cb31f6b838bc0fb171b0a00b1417` | ⚠️ Unaudited |
| USTStrategyV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cd243e5200b290f10d74d93e0ca6c9e51b3d664` | ⚠️ Unaudited |
| Utilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37c41ef2281893b5971769370d6cdd35864b503` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x489ee077994b6658eafa855c308275ead8097c4a` | ⚠️ Unaudited |
| VeJoeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x4b4e0888091fb1de74a7e7404b2dc4eb897fbc17`; avalanche `0xdefdbe9cafcf25e1c0c23b53a631e4fbe8e4e933` | ⚠️ Unaudited |
| VelodromeVolatileLpHarvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2af303aa6dbcc94f16a6bbc732b6575f2294b357` | ⚠️ Unaudited |
| VelodromeVolatileLPLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x98bf3e7da6f5a81630730d538715e35d8c0d3ede`; optimism `0xf76da2d3656e1cc5ca2fbb9663c89f7d8aae20fc` | ⚠️ Unaudited |
| VelodromeVolatileLPSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x198892f3709a6a03f4de1165057f78a9f2741b6e`; optimism `0x79533f85479e04d2214305638b6586b724bec951`; optimism `0xac6c439253987be9aff6aac047ec8501ea13d512` | ⚠️ Unaudited |
| Vester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x199070ddfd1cfb69173aa2f7e20906f26b363004`; arbitrum `0x7c100c0f55a15221a4c1c5a25db8c98a81df49b2`; arbitrum `0xa75287d2f8b217273e7fcd7e86ef07d33972042e` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x1635b506a88fbf428465ad65d00e8d6b6e5846c3`; ethereum `0x27b7b1ad7288079a66d12350c828d3c00a6f07d7`; ethereum `0x2f50d538606fa9edd2b11e2446beb18c9d5846bb`; ethereum `0x575ccd8e2d300e2377b43478339e364000318e2c`; ethereum `0x5f18c75abdae578b483e5f43f12a39cf75b973a9`; ethereum `0x5f3b5dfeb7b28cdbd7faba78963ee202a494e2a2`; ethereum `0x5faf6a2d186448dfa667c51cb3d695c7a6e52d8e`; ethereum `0x64e3c23bfc40722d3b649844055f1d51c1ac041d`; ethereum `0x6c3f90f043a72fa612cbac8115ee7e52bde6e490`; ethereum `0x705350c4bcd35c9441419ddd5d2f097d7a55410f`; ethereum `0x7ca5b0a2910b33e9759dc7ddb0413949071d7575`; ethereum `0x7da96a3891add058ada2e826306d812c638d87a7`; ethereum `0x8078198fc424986ae89ce4a910fc109587b6abf3`; ethereum `0xa258c4606ca8206d8aa700ce2143d7db854d168c`; ethereum `0xa90996896660decc6e997655e065b23788857849`; ethereum `0xa9fe4601811213c340e850ea305481aff02f5b28`; ethereum `0xb1f2cdec61db658f091671f5f199635aef202cac`; ethereum `0xbc89cd85491d81c6ad2954e6d0362ee29fca8f53`; ethereum `0xd061d61a4d941c39e5453435b6345dc261c2fce0`; ethereum `0xd533a949740bb3306d119cc777fa900ba034cd52`; ethereum `0xda816459f1ab5631232fe5e97a05bbbb94970c95`; ethereum `0xdcd90c7f6324cfa40d7169ef80b12031770b4325`; ethereum `0xe14d13d8b3b85af791b2aadd661cdbd5e6097db1` | ⚠️ Unaudited |
| WAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7` | ⚠️ Unaudited |
| WBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ⚠️ Unaudited |
| WBTC | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |
| WETHRebasing | token | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0x4300000000000000000000000000000000000004` | ⚠️ Unaudited |
| WhitelistedCauldronV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378751 | `0x53375add9d2dfe19398ed65baaeffe622760a9a6` | ⚠️ Unaudited |
| WhitelistedCauldronV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x3e3728ffdc79961a03613a8b011bb39001773c1d`; avalanche `0xe8681a8c8d8e24b65526c2f94fd5ef9d3ec18726`; avalanche `0xe9c057d6d4edc8935c931ec307df225a1c2d04ff` | ⚠️ Unaudited |
| WhitelistedCauldronV4 | unknown | project_anchor | own_core | 0 | ethereum | n/a | 2 deployments: ethereum `0x1062eb452f8c7a94276437ec1f4aaca9b1495b72`; ethereum `0xf75edb14f320df35bb1db1bb4204762431614e46` | ⚠️ Unaudited |
| WhitelistedCheckpointCauldronV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x333e28e557dc026518e25d1d426c4407a0a3b5e8`; ethereum `0x42bb6d1bb09959a61cc1d1d98ccc7902dfde3e92` | ⚠️ Unaudited |
| Whitelister | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4809cb637cd0592492be650a3d6ebd11c034e5cc` | ⚠️ Unaudited |
| wMEMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0da67235dd5787d67955420c84ca1cecd4e5bb3b` | ⚠️ Unaudited |
| wMEMOLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x2be431ee7e74b1cb7cfa16fc90578ef42ef361b0`; avalanche `0x3fc4468d3e9c63b83c341307193190b7b5a28edd`; avalanche `0x7386946a2e2a8412c09a63afa6ec047cecc0423f` | ⚠️ Unaudited |
| wMemoOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9`; avalanche `0x41d65ce96342a3d9c3d878856e283e839d29df42`; avalanche `0x4c56dbcc056655b8813539af9c819ae128c07e17`; avalanche `0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3`; avalanche `0xb099cc8cd672646317c2da0414aea7d3838ed258`; avalanche `0xc9facfa2fc50c9a30c77a2ad14e2db107d591918` | ⚠️ Unaudited |
| wMEMOSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x13f193d5328d967076c5ed80be9ed5a79224ddab`; avalanche `0x1df188958a8674b5177f77667b8d173c3cdd9e51`; avalanche `0x3bab7207d4e27b5de4a15d540b7297281b45ed2a`; avalanche `0x469a991a6bb8cbbfee42e7ab846edeef1bc0b3d3`; avalanche `0xe788abab092c165fab7ded7b7d2962abc808ee6c` | ⚠️ Unaudited |
| wOHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca76543cf381ebbb277be79574059e32108e3e65` | ⚠️ Unaudited |
| WrappedKRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaaff72a8cbbfc5cf343ba4e26f65a257065bff1` | ⚠️ Unaudited |
| WrappedLuna | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2877702675e6ceb975b4a1dff9fb7baf4c91ea9` | ⚠️ Unaudited |
| WrappedmAAPL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc199e74f633af6c2f5978a6e4598aaf47edf0d42`; ethereum `0xd36932143f6ebdedd872d5fb0651f4b72fd15a84` | ⚠️ Unaudited |
| WrappedmAMZN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cae9e4d663793c2a2a0b211c1cf4bbca2b9caa7` | ⚠️ Unaudited |
| WrappedmBABA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56aa298a19c93c6801fdde870fa63ef75cc0af72` | ⚠️ Unaudited |
| WrappedmGOOGL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59a921db27dd6d4d974745b7ffc5c33932653442` | ⚠️ Unaudited |
| WrappedmIAU | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d350417d9787e000cc1b95d70e9536dcd91f373` | ⚠️ Unaudited |
| WrappedMIR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09a3ecafa817268f77be1283176b946c4ff2e608` | ⚠️ Unaudited |
| WrappedmMSFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41bbedd7286daab5910a1f15d12cbda839852bd7` | ⚠️ Unaudited |
| WrappedmNFLX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8d674114bac90148d11d3c1d33c61835a0f9dcd` | ⚠️ Unaudited |
| WrappedMNT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x156b36ec68fdbf84a925230ba96cb1ca4c4bde45` | ⚠️ Unaudited |
| WrappedmQQQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b02c8de71680e71f0820c996e4be43c2f57d15` | ⚠️ Unaudited |
| WrappedmSLV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d1555d8cb3c846bb4f7d5b1b1080872c3166676` | ⚠️ Unaudited |
| WrappedmTSLA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ca39943e91d704678f5d00b6616650f066fd63` | ⚠️ Unaudited |
| WrappedmTWTR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb0414627e6f1e3f082de65cd4f9c693d78cca9` | ⚠️ Unaudited |
| WrappedmUSO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x31c63146a635eb7465e5853020b39713ac356991`; ethereum `0x4fd69d2a7d76c0564a984a79972aad628750f214` | ⚠️ Unaudited |
| WrappedmVIXY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf72fcd9dcf0190923fadd44811e240ef4533fc86` | ⚠️ Unaudited |
| WrappedSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x676ad1b33ae6423c6618c1aecf53baa29cf39ee5` | ⚠️ Unaudited |
| WrappedUST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa47c8bf37f92abed4a126bda807a7b7498661acd` | ⚠️ Unaudited |
| wsOHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x583043074788bec7c5b2bcb555bb926483d57d4f`; ethereum `0xfb53b349144dbd764cea73542b9cd1cbd124e3e8` | ⚠️ Unaudited |
| XJoeLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc022abba577e991edd6515e28f779ed4d732b888` | ⚠️ Unaudited |
| xJoeOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xf33eb640773827afbbb886fa2d60b071d51d2d85`; avalanche `0xf675bb0c1cde2179d19b2ea0e6e5e9d2053b3d87` | ⚠️ Unaudited |
| XJOEStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x244bafbae9c47c795d3ab76ee77c5ba62e92285b` | ⚠️ Unaudited |
| XJoeSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x303a59a1020807b6fd78d3bb0e3c8b6a26bbc0b9` | ⚠️ Unaudited |
| YVCrvStETHOracleV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x54bc88c6f3b56059bfea29fcb8eb4704ea0db16e`; ethereum `0xacc35d43ec3c7da472dce28a93149dd025051f7e` | ⚠️ Unaudited |
| YVCVXETHLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe345156cdec151d9f843f94ade7770efa9d56417` | ⚠️ Unaudited |
| YVCVXETHOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991536bf23fa40b578fc3e1e3725e51d1bf889f3` | ⚠️ Unaudited |
| YVCVXETHSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf80a7b98b59e7f71baa149990baa6044728321bb` | ⚠️ Unaudited |
| YVDAILevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8af1558a2ca227607b49a3293e278c6875f9a40` | ⚠️ Unaudited |
| YVDAIOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab137bb12e93fedb8b639771c4c4fe29ac138ee6` | ⚠️ Unaudited |
| YVDAISwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb3a46896d2855e7932fc8ea5a8465fd07f7fb57` | ⚠️ Unaudited |
| YVMIM3CRVLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b2794aeff2e6bd2b3e32e095e878bf17eb6bdcc` | ⚠️ Unaudited |
| YVMIM3CRVOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x547fd22a2d2a9e109a78eb88fc640d166a64d45f` | ⚠️ Unaudited |
| YVMIM3CRVSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05e46ffd98f94f62cc2817d54d5f0b1fd065b76d` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c7b8e971c704371772edaf16e0db381a8d02027` | ⚠️ Unaudited |
| ZeroXGLPWrapperLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x3f16dfcfd23c1aa4472c80b2d2688e5c8222d71b`; arbitrum `0x983ca3b5d2a07700354a2127a874f37ea1962037`; arbitrum `0xacb2e2748221345c6f64cfcf9f3f6cf28ba4be05` | ⚠️ Unaudited |
| ZeroXGLPWrapperSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x0b7bc6fced57e979d5cf48980c6b64f9857e26b3`; arbitrum `0x66893197b8a95c5c1fdfcbfaaeae807ca620b8fe`; arbitrum `0x7f54026fc12d9c24c43cd951cf2b7c88694cfe11` | ⚠️ Unaudited |
| ZeroXSolidlyLikeVolatileLPLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x5fbaf14a1c65cea90b25fd4c186a1669bf421d5d`; optimism `0x6e4358c889bb7871061904be31fe47c3b8b7f442`; optimism `0x70becf593a0f094dd7d5f8b8b48fb8582c0ec575`; optimism `0x7c8fef8ea9b1fe46a7689bfb8149341c90431d38` | ⚠️ Unaudited |
| ZeroXSolidlyLikeVolatileLPSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x741a2378a8e003acbadbc21506bc624062ace36e` | ⚠️ Unaudited |
| ZeroXTokenLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x29cf1123adc07fe5b23cf46ab7247afe9fbd20ff`; ethereum `0x3b47e8ef1fc0f7fafdd0f428e727a9918e94fbe9` | ⚠️ Unaudited |
| ZeroXTokenSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x26f20d6dee51ad59af339bedf9f721113d01b6b3`; ethereum `0x6655bdefd9e03b552075bc992c986e48294aed2b` | ⚠️ Unaudited |
| Zorro01Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd716b424423bbc88362ce73ef976d37322eb744` | ⚠️ Unaudited |
| Zorro02Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba3c9f9a427d2bdb7e260353dce57a94cd8ddd8` | ⚠️ Unaudited |
| ZZZToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bca936670fbf15165312faa3c2eec997e42f4a2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FeeHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: ethereum `0x1d1b15237c0af393721a4385de5405de211fd82b`; ethereum `0xe4aec83cba57e2b0b9ed8bc9801123f44f393037`; optimism `0x0b79a169bf618bdd2a73698fc8ec4a451182a012`; optimism `0x6efdd3f8d372740ceb43b3a12f5c56f60be8f491`; arbitrum `0x34e19751b637fa3e9f15cb7b1995dc997975da14`; arbitrum `0xa9ea2b6f533db3679eeda162e23c1159439347bb`; arbitrum `0xaf068f0b9de8979e1210f14f82e2fd0be10b9059`; arbitrum `0xe66be95fe4e3889a66925d996af3e4dc173754a2`; arbitrum `0xe73988783489c3dde005d93455ed448f5e6f3faf` | ⚠️ Unaudited (bytecode match) |
| Implementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x58b49ed48e8d676b7eaad5c7b2f2f83b8e72e1a9`; arbitrum `0xcdde93ad2275d3871a606248205145d9f69dbb95` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (629)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002688c4296a2c4d800f271fe6f01741111b09be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b71a425db7c8b65a46cf39c23a188e10a2de99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c6808eb242c826d32f03712d66d5e613782363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02152d5edcdba56a55efee36ceb9d9f7e47aeb5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02dcc3aaa2f0c97fe0abfaf07df3e0c7ae56557a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06ce8086965234400fdecab190b115c2c0717047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07374b547cae235227635c13266c69847a3e46fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0901b541beff2cd44859701619e245e82f48e62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a2290c3e97db5823eb11e60de64a0a98fdd2451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9ae947495034c0bbbab845fd75b5bbafc91aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b81cff64efc89fcdbe7da78054232daa89d73ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bdb2ed45ea8337f6437ef193c2ffd32fc9b75e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cc3114cd2e4adc3ed5691fa28b8cf106579d90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce41af9dfa0d697da79dd30b8b73bf52a107499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce658f9bc3af831271199578449810023dba703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d07e5d0c6657a59153359d6552c4664b6634f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d89774935e3d88b91f0cea0991f4fcd7d9f5470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d91518d59a6bf5f9b1576edead855c643a70cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e1ea2269d6e22dfeebce7b0a4c6c3d415b5bc85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ea2207e31dc03701b12e4b322df1bbb404b8855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec271d3bdb1a723088d1dcef6b7ebf9c1b0d377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f75c5f723681a6897dc2fb6ffa672a4929028a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1067c6dc34c86b5f23f4a9bdbe7a639ad613342c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1085fa0770a88a132e3b8aae21c84755d70081ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13f193d5328d967076c5ed80be9ed5a79224ddab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1440ecdfc61386a64116e58326bc7d6074e80815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15282d93b1f2c92a034936f6f56a55c0d423e8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x152b59937ecb0f1030d81d2206c4cbb3fd0ce015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15a2a96608b48ebfd80c31da8a9be340a354cd46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16495612e7b35bbc8c672cd76de83bcc81774552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170d177f083e377d9a3fe222deef7bd5486853f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184a07c9cfd6165d6accdc373eb00bc5cd8733cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18672b1b0c623a30089a280ed9256379fb0e4e62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188041ad83145351ef45f4bb91d08886648aeaf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a783886f03710abf4a6833f50d5e69047123be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9e59364785ebf00e8ef2c15e132d0f661585ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dab6560494b04473a0be3e7d83cf3fdf3a51828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dde3505fa0dd8ef2253dbbc1aea0b4355c38d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1df188958a8674b5177f77667b8d173c3cdd9e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7d3bf98d3f8d8ce193236c3e0ec4b00e32daae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fc83f75499b7620d53757f0b01e2ae626aae530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x205d52e9ea8e42659ac5c7f83863b18d27d7e0f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20915f71474c127e5c3cdc41c75cb21d4e0605f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20cb52832f35c61ccdbe5c336e405fe979de9430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x217c089db99274f142bbdb48e409180b045e24ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226845c2ba216b8bb1aaadfd4e14de69426c5445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23208ca4f2b30d8f7d54bf2d5a822d1a2f876501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x244bafbae9c47c795d3ab76ee77c5ba62e92285b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24a76073ab9131b25693f3b75dd1ce996fd3116c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378742 | `0x257101f20cb7243e2c7129773ed5dbbcef8b34e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x271fbe8ab7f1fb262f81c77ea5303f03da9d3d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2869e74a15d3c0c797b04feaef93734060a4477c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x286ed6c7a0797e370ed47c8f0f57ad68060af7c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x292a6f6156c9e197aa2d059a3194ea8d235b3f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x294c8cebce8c6b065d23b97133ce10fded601aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ec0d55b8f26298a5350c64f56281eb070bf47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a28789645776eaa95f6d491ff375781ea5b40dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a7d59e327759acd5d11a8fb652bf4072d28ac04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeb5c8776567c4eeebda1450e343b1bef49ae32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b7e624bdb839975d56d8428d9f6a4cf1160d3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc706b83ab08d0437b8a397242c3284b5f81d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be431ee7e74b1cb7cfa16fc90578ef42ef361b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c9b39f4d18e2e19c1f3d2b378128ee7ebe9f372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cb8d5a94efec5cc2f53cfbce7e0e88754217f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d370111f8ffcf5bff0f56ba43c62c2ad98be7a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e61da9d555625200c9eae7f2de9a269ca93f9a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ebef24da09489218ba2becb01867f6daaedcd4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ef4b38a128ecc1ac06b43055553f95af59523de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307f4344b1e425f6210620bf15ab242e88c6639f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a2f3c3aa6d12c0a36bed210dcf1b32ef6228cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x319c06103bc51b3c01a1a121451aa5e2a2a7778f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31aa15da826da3311788b208d31cae34074d1dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31edd3b42b35ede1fc2a8f59edde7f39a8112560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326fe113a130c569b44aff93b3637f3ac956ecdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32facb5a46e02decaf5f939ab12c123eee203a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378745 | `0x3410297d89dcdaf4072b805efc1ef701bb3dd9bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x368440b3121f32df336d393834eafd8fa787c4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369d81cf263abc7ee567d8836a39234141d4da07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36d9386ad4b8636459c365295ddc7e70e33889bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36fb071d5d30e5207ecc010c0ea3cc9ad75838a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x387177b33830f48199110f186f47797c66556b3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38a67c0f839e5f8939b12f9181a1924e4e4375ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e7627eb98a40e7528bcce709a80083093ba2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3910dce33441360e4c1d2749afa08e1a59af2546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3993d34e7e99abf6b6f367309975d1360222d446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39abc0483046d7ad4957c8ada6e0787824a7c21d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a283d9c08e8b55966afb64c515f5143cf907611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b38ce23799dc56664ff6048892510abffdb7a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b6831c0077a1e44ed0a21841c3bc4dc11bce833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bab7207d4e27b5de4a15d540b7297281b45ed2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3be09dea9ca8b6205d05f196e9c68fc35190a514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c08533dbcd0ab64bff5306a9d6d1de912b81b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d229e1b4faab62f621ef2f6a610961f7bd7b23b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d94b714382f61107a71690463b921e1db6b6735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da7ff6c15c0c97d9c2df4af82a9910384b372fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f16dfcfd23c1aa4472c80b2d2688e5c8222d71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f37712726c9e509c5479f13e17cb1033411d864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40745803c2faa8e8402e2ae935933d07ca8f355c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x409893c94aad411030e5a78fd39b015221dfb8b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40cf1c8fd53c7b6473e53a3c71c543d0713394f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4169ef3b885416bd553567e78585a97ee52ba700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a37655a7afb85787bd60a9fa750225567da186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d5d78049d44444ac6d5e1ec67990f24efacd58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d65ce96342a3d9c3d878856e283e839d29df42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41df5d28c7e801c4df0ab33421e2ed6ce52d2567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b9dea10b51a696949715797bdfd69489fc3b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42dd7dc055a04c3d795a3dfd2eaaf7d480367a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4316416f429b04fb12df8952fa1434e6b9d77c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x445918e531aff4ef2ed31ec497d40ec7eb125582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44b95da0a7e912cbf63d2eea6285ce1b14dc84aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x450bb6774dd8a756274e0ab4107953259d2ac541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x469561357211a6ce4707dc48174d6c617ccb0402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x469a991a6bb8cbbfee42e7ab846edeef1bc0b3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4710a77a0e0f4c7b0e11cdeb74acb042e62b8d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x476b1e35dde474cb9aa1f6b85c9cc589bfa85c1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480a0af04186080bac985e595d66ea3bf351eb4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480af6d9abe851e2fc4162b2b93fff8cf84ddee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4863c6df17dd59311b7f67e694dd835adc87f2d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9cb5d0b755275fd188f87c0a8df531b0c7c7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bdc9b55bdc73b717d83dd436bf9ee3f2b89ac37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c18e409dc8619bfb6a1cb56d114c3f592e0ae79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1d4ad2fa2ba5510acbb0f428ec861e1f7ea3a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c517d4e2c851ca76d7ec94b805269df0f2201de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c56dbcc056655b8813539af9c819ae128c07e17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c5d4f542765b66154b2e789abd8e69ed4504112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca9b3063ec5866a4b82e437059d2c43d1be596f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cb152b45e667f86a0470776bed0be93a5f1c534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d9a788bc0801112fb8ad8faac5c4a00d02b2ff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1f162fd143e4a829341efd6dd451b018b10f9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4efb0e6aba6517ce4fdd3f31013cbbc0bbb8dbfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f37395bdfbe3a0dca124ad3c9dbfe6a6cbc31d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f51264b07db8b2910e892eeef22460de23268a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8846ae9380b90d2e71d5e3d042dff3e7ebb40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50996c7e748b1b83130b4854945d86ba6fc81f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50c39ea8f3d72310c8b56a56b333994266e9b477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50dc3537617cfa20f1b401de98d0efeb412cf9ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f35f4fd499898801282a415f4c3a689663719f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x528baca578523855a64ee9c276826f934c86a54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a430b5b7407fa103c5ae974744e4cc945354e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5473b1bcbbc45d38d8fbb50a18a73afb8b0637a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5488fb4a4bdad44a2e35614e8918fd22c2f4b9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54a8c6c4b3256d24652dae3fc1511c871593de9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54c80f1c4718e3e6df71b83bb9cb389ec41f07a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378752 | `0x551a7cff4de931f32893c928bbc3d25bf1fc5147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5624b48ec2848bd642230b46405e1f65938c5fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57823e61f1f6d0af24e80e5232901cf9d69eef4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584b0fd8f038fe8aedf4057ca3cb3d840446fbbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5852bda4520f1b000c760c1dfb8ba5db8fcbaa90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x596f8e49ace6fc8e09b561972360dc216f1c2a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599ea9f2c71971fda372d54dee338e535f49623d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59b3d5ddf93a3782f7b7a4be1214722fc6fecd45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0d404d2042b92eb7948ac5943128e1088fd24b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa00dce91409b58b6a1338639b9daa63eb22be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac53910dea4779e5ac3a7e997df8e9d5f6a7c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bea27d52e36c58dbce2921773396f33f2bd780a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d0f47b32fdd343bfa74ce221808e2abe4a53827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e0198c158276efaebc5a32c8351fb5d679d4288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e70f7acb8ec0231c00220d11c74dc2b23187103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fc6b5187fa4756a060f719ee518262e5562478f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x600e571106c31c4ca1bf4177ba808e37146a4a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b1b1f20373005030095fbe7cde032625fc96c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62191ef48bf8fd7a0e10ecb066b0350e6a9c18a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x625fe79547828b1b54467e5ed822a9a8a074bd61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x627bb157ebc0b77ad9f990dd2ad75878603abf08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6340678b2bab22a37d781cd8da958a3cd1d97cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63564e223ba1fdb491c6ca68f63c67a578443ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x649e0b707a90f1d73b27f83358c4d9bcc91fd622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6527a927bdb147d15fde4326381843f55fbfe986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656dd75d33a6241a0c4c2368eb00441ad3113ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65a8b215f34df5c30c64523d638ea698065ffa15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x663ef4455a07243d9029ba0fc48297ae181aeb38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66436c64da9d9a61bcc3f652490d20d7cf19765d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x679fcb9b33fc4ae10ff4f96caef49c1ae3f8fa67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67fe41a94e779ccfa22cff02cc2957dc9c0e4286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69aafff1218ba086ac782f98cb8399d1226e2af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69d7469e677e4c8fa4581d36908b0c9c8750baa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69f79536d304a556603ff55d4dac017ddf50af50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69fb7c45726cfe2badee8317005d3f94be838840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a5b5e025f2febf11646050e28240279215c0da8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af700a9b52bdea2e33dbdcacae638fd8e118bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b04c535c852ad19345571247ee12b5bf23dacb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b44d94ecdfaf0cb00def55212e226603bb68793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b765d07cf966c745b340adca67749fe75b5c345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c6a54a124e7b9859014425b8c0142ee0b19febf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c86adb5696d2632973109a337a50ef7bdc48ff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ddd163240c21189ed0c89d30f6681142bf05ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e8093ebb80cd9f7395681ad8de90ca93b08d9aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e8f6d1da6232d5e40b0b8758a0145d6c5123eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f4e8c8832ed1a1e14e030d56c015196a705fbf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7002b727ef8f5571cb5f9d70d13dbeeb4dfae9d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70a1151e0bb32484e25c107e3a69886a8361482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70fc957eb90e37af82acdbd12675699797745f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x720310d711455f032fcbb3feadf858534fb257c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72de985c5af6f96f3be22784b5533218421e6394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747459fc40d80a500440f9d650818f7fa5754acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x750e9887425f9f325504fe69b7173a4cacd55351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x752ebeb79963cf0732e9c0fec72a49fd1defaeac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75e14253de6a5c2af12d5f1a1ea0a2e11e69ec10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7624c0dd4f5d06d650ddff25ffec45d032501260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x780db9770ddc236fd659a39430a8a7cc07d0c320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x783128730280053ef00f675b777288e80565f26a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78a538cf4c73dba3794c0385d28758fed517cccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79d584d2d49ec8ce8ea379d69364b700bd35874d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af331398dc340bf327904077eb68f27f75a9693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c11f78ce78768518d743e81fdfa2f860c6b9a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c868f045a60501a2f4159446545939771dda323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d20ecb58d9d661aef2bd0ee953d53567e695dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7da2ef41913adc5285ffdcfa3622f5f81c946500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6327cce4bbdb936ee744a7bae6c2978b62183f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6c50f75badb725fddaa47c063d8f8407defc5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec8e02b74cdd1c1c222dbf3bf47f3256b734099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fa0320180b0d6e12b3ab47aa0fbb3da9e3e926c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80333bd8791fee04c4c3e1ca8a524cefa7c94737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80466c64868e1ab14a1ddf27a676c3fcbe638fe5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378764 | `0x806e16ec797c69afa8590a55723ce4cc1b54050e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81373aad854e31e6da610b2fa5260c6c60db8dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818709b85052ddc521fae9c78737b27316337e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8282bd15dca2ea2bdf24163e8f2781b30c43a2ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8301ae4fc9c624d1d396cbdaa1ed877821d7c511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x832f436ad2813c76aae756703cacb5c1028d11da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x847ee1227a9900b73aeeb3a47fac92c52fd54ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8484673ca7bff40f82b041916881aea15ee84834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x856ff1aaff4782eee27d2c6bbad48781f57f88cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85fd0626e2d7f07a2b08718f2ea2e044b1d5f163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88e9cb153df9b8c46bd0c99081fc5e6c67149863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89086653f185a0431d24043d92772942c141bab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x896a3f03176f05cfbb4f006bfcd8723f2b0d741c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ac9a0b48fc66875de710ab7ee53027970064dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89d32bf7b120630b24fe9edc8c7534a73016c999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ea1e4232680a66470a725ffd399082a375d1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aeb58603efb7a9f63712a2506df01b685ba1c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b6861d07d3688103d0ad801fabfc4f6bac231de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b8dce09b0deb003573215d5be238534b1cf11bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c5a7f011f733fbb0a6c969c058716d5ce9bc933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d76f31e7c3b8f637131df15d9b4a3f8ba93bd75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f300679f893584149af176562abc64f8e3b4476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4ef8c623c33cdb6a57c19aecb87e161fa7691f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f68f4810cce3194b6cb6f3d50fa58c2c9bdd1d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f7405d5738468863a516b3cb6c8984845983d9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fdd3fbfeb32b28fb73555518f8b361bcea741a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90218033ce26b3d41c45795e903c7989817f0dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x908fcbf4cc0cb550cdaf668c94bf75321da54536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x913a3a0d83b87497587e66a7f9603ccd998ba572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9164e210d123e6566daf113136a73684c4ab01e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92ab2e6786412bb81bcfef8ca5ef540bd91e0c79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94635b2034ccec3293b81d411cd77c36c353f41d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9555b042f969e561855e5f28cb1230819149a8d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ecdc6caaf7e4805fcef2679a92338351d24297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966cbdecefb60a289b0460f7638f4a75f432ca06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96bac90bee7f416d33601d1dc45efb19aca8ca62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96d07ff312c56e08462308bca2f5e505e8111a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9732d3ee0f185d7c2d610e30dc5de28ef68ad7c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f60ffc47fafbcba3ea364bff2abcbabf85c849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9838eccc42659fa8aa7daf2ad134b53984c9427b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x983ca3b5d2a07700354a2127a874f37ea1962037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98638facf9a3865cd033f36548713183f6996122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98a7f18d4e56cfe84e3d081b40001b3d5bd3eb8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f8dc2eac0940e609a8dcb9fc905f0158af2288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bd5b13f51e27b58174968a8983b450a300cda05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9be82cddb5c266e010c97e4b1b5b2df53c16384d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c2186cabc49782632efd00ba28bdb92086470a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d01d5d682ff448b0d1f84d7d1ad9e8dc709618d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dfbf2b2af574ca8ba6dd3fd397287944269f720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e291bfbb158ffaaf1c3a8ccd694be0d49d6aada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f33628e6389b3a918dbd1aa5e9fe0f4a0c62ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ff8b4c842e4a95dab5089781427c836dae94831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa219008f38a698cc5df6074f0f147a5eab2a2ebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2518b71ee64e910741f5cf480b19e8e402de4d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2fcda2dd82b7ab6b0c6cf116b6546e57499fad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3c8931ec0fef9bf05386d154c4cd1e93aa92a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa402f9e5015be2de7aed695e47f2729246cc9434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa504742cefe2f9027328b49c7cffec3d79b5ab1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6e97d76d21ae347b13c343508826496b07202e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7e98815c0193e01165720c3abea43b885ae67fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa85461afc2deec01bda23b5cd267d51f765fba10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa869b9171c8f912c592abc58005922718d0d49b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8fa2460927332ed475364c602d916fbc095b1b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9b386dcd598acf3ce53460631feefbba730cbf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0850ddf8ab99286a473a7d2a96e07cefa89034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa25a6fa9e4dadae0d3ee59bea19fbcf0284830c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa346781ddd7009caa644a4980f044c50cd2ae22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabb326cd92b0e48fa6dfc54d69cd1750a1007a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac288da6a8c5b6406562c27d54ba22666fe3adca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac8a4d55c1d6ea3f84a6c868f2b5a5ec3cef2800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacab7f05a612690b9e05ca3bfc1ff2e99169a39f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad19c0506f5277bbf92d8dfde1a51a15aed42606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad430500ecda11e38c9bcb08a702274b94641112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcfcf9894335dc340f6cd182afa45999f45fc44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae14b769eac8ddb3caa79bd3d7c21d2986327bce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaee70429bdfbf599a979f50d5fde5eb0d317e0f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08eb288c57a37bc82238168ad96e15975602cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb13352c12d7b024ed6abaaa94355352b72e3a00f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb19059ebb43466c323583928285a49f558e572fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ebf227188e44ac268565c73e0fcd82d4bfb1e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb311acd3eba1acfa29957cad50746738d52070dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb556fa4c4752321b3154f08dfbdfcf34847f2eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb576491f1e6e5e62f1d8f26062ee822b40b0e0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb57a959cdb3d5e460f9a7cc48ed05ec29dff049a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61009896eb35d81d02f15b2a1380252d2141725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7cb99cc08a83ab6823c9dd0bf4830a7e01e6375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb80dde125af28f3b124d6fa1ff11fad5967940ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8687d7dc9d8fa32fabde63e19b2dbc9bb8b2138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8a3f8e783d52cfb9e632276714234661db698e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb911d7e59ba82fdf477a2ab22ff25125072c9282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb960c386eca71d28c95cb064d2f4720fbad1f8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9b55db94eb5581d7716235f5f55156f73878211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f861b7755ff09cfd65cfe262d19823607b1f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbac8459641f765b26e8984f29082629359f084c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb3fda661149f6e45d829d5dd54a1608577c5fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb9997a195a031e4d7d29c14ea3fc53cf94f4b86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4d0f452b347cf25ee84509ed99bd478ac96b5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6977251621591fd3e8222cc89081841510b547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7507bea8d7bcb49f511cf59651b5114e6e7667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcda2acfe820c92b8e0b389733aaaae4f930a9f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdaf491a8c45981ccdfe46455f9d62b5c9b1632f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe83fd842db4937c0c3d15b2aba6af7e854f8dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe9b99d4dc860ac6fb97e56102815a8f973967c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfcf63294ad7105dea65aa58f8ae5be2d9d0952a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc00978c2bfc2c0ac159367080992b287c075164b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc014f34d5ba10b6799d76b0f5acdeee577805085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08550a4cc5333f40e593ecc4c4724808085d304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0bd9eb88840ee181c5cadf0a2914d41a403007a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1793a29609ffff81f10139fa0a7a444c9e106ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1db00a8e5ef7bfa476395cdbcc98235477cde4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1dbac8eb17f3684bf87847cd9525dfbcd9a4033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc423aefe189394aed22f954eba943f303b42d1dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc455e6c7936c2382f04306d329abc5d36444d3f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4ad29ba4b3c580e6d59105fff484999997675ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4afee724025a33c041b39f374014dcbb8c52459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4e343b89fb261f42432d9078dde9798e67c33ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc54106a999bede585c9574f2e4cb31df46cbdd83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5fa220347375ac4f91f9e4a4aab362f22801504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67a44d958eef0ff316c3a7c9e14fb96f6dedaa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc684432fd6322c6d58b6bc5d28b18569aa0ad0a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc79486741f488369cf814cd801e5d9cde305af78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7bab672806932fcaf918b4318796b02b0832856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8dcc12f457eecb38d070815731c63639ae87aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9332fdcb1c491dcc683bae86fe3cb70360738bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc95bd7460ece4007973458d1c0f8ccc46c1880df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9853117981374667e0eb3434ad22008133c6c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9facfa2fc50c9a30c77a2ad14e2db107d591918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca3d75ac011bf5ad07a98d02f18225f9bd9a6bdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb08717451aae9ef950a2524e33b6dcaba60147b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb1f6f6bf3bcc01cdb6ba3ab22f5849333efe6ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb70bbaec89b577617f835e7a2e126da9e5acf21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8a15af05102713d4e9628f20824111f9331b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbd7fd48c7a2a095ce053d5998db12ca0ea65264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbed82324afcc67e77e9ce9a23d85d49d65cfe90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccebbf77c3eeb298113392363e0c9863b37111b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd7167b3a16f6177e34e2b9ae0d7c3eeee4a4b6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb55051fc792303ddc7c1052cc5161baed88e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb71cbf4f6b8db8d13d1be655988cbc523bc8b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfb3cfeae8c3f39aecdf7ec275a00d29eca08535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c71ecd0787bb792e2bb8eeef030a66467bba1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0e6bc02657451fe16cddd7cab8cd55e39d25d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd10d54830714003575d9f472d62268a29c902e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b62aef2102c09f475b23dda6b61072e848cf28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2d43555134dc575bf7279f4ba18809645db0f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3e576b5dcde3580420a5ef78f3639ba9cd1b967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd404bef05e9e256765440a1b9a6b56750c4cedec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd446a98f88e1d053d1f64986e3ed083bb1ab7e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd51a44d3fae010294c616388b506acda1bfaae46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd596195c86252d664a23ff559327bef69ea730f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6953e2c5546860a244aacb0e5af67a16d3725de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd710df47b264f6e08325412d929f7354b8221f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7477321a84f3d39b8d742580f3740016658135d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd794f13b9a494118cc83ec8880d22a44f1a843cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd79964c70cb06224fda4c48387b53e9819bcb71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8c9d9071123a059c6e0a945cf0e0c82b508d816` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8f49c747aed8d394f6f1841546e2b83e09a357d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9f2b927eb692f88689e08e53d729109c84cc5a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc892358d55d5ae1ec47a531130d62151eba36e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd05247d34d85bcc145c74e2f1d070352fef83f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd1052137472cca4c2f55b93cc9c0f06ec20b6b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdede1cce94cdaa3ce358e561895775db369b72e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf41e21dae8bf6ae3eddb83337f8364eb7fc1659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe02bf848395a538c7c624c2bfe377b039f067a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0c29b1a278d4b5eae5016a7bc9bfee6c663d146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0d2007f6f2a71b90143d6667257d95643183f2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1ac243f14de48eba4c267e82d97ebc7d260d318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2968dd5557383109998c29c3a5842d73f66ff97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe38daa41be7ca22f724b9cf6d13cd920bf18a3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3997288987e6297ad550a69b31439504f513267` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3cd7c4739f8b068d1fe32b81a0e67ebc27b36cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3e3fb7e9f48d26817b7210c9bd6b22744790415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ee57d3fbdbae9b506a92da79ca8454ac288e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe45217a77c332ff767112dc89e568c473c5fad2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4e8219982e088c4895800ca60891dbc023ee2da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe55be4c8f2d3c11536f61c8977dac4ad58446059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5afcf332a5457e8fafcd668bce3df953762dfe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6191aa754f9a881e0a73f2028edf324242f39e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe782adaa40f2148ccd0e181ce090e44900e392ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7cd2b4eb1d98cd6a4a48b6071d46401ac7dc5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84251b93d9524e0d2e621ba7dc7cb3579f997c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84f5b1582ba325fdf9ce6b0c1f087ccfc924e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8b2989276e2ca8fdea2268e3551b2b4b2418950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe911fa14a49ac37e79ae8a60bd22a5f6a78c85a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe92b32d8f55564e0eedbd665ffd810cc918f5627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe94c443e2d124cf9d5b5a6f1ce0e29dc464551da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe965db54fe154765460c5289a2b383d34fd6010b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe96a9bdb549f4cc4ee8deb7085bd6ffe4b273b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea6876dde9e3467564acbee1ed5bac88783205e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeae4365f8714b8fdc66ed0f2a3d90338c9dd84eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb4480152bef93fa7bd01a7f427f1dd3069fc4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed27b3ba4d7f6a0b176de2c6f9b36a7cce566e38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed4064f376cb8d68f770fb1ff088a3d0f3ff5c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedcf198bc94ddcabb21dbeb38ad9f9793208f12a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef1385d2b5dc6d14d5fecb86d53cdbefeca20fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef633d1af20ed99a69b7cf46da5be63da07ed5ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9c97e356bc5ff2460e25f40f608101ce15d70b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf113929f69fabe165a2280cac00c5f77196aa34c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf18056bbd320e96a48e3fbf8bc061322531aac99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf22995a3ea2c83f6764c711115b23a88411cafdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf313a91af8930ae7fe3e6f8ba7ce62024928ee77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf574cbebbd549273af82b42cd0230de9ea6efef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5e9eb18b3ecdfda07ea55133f427d47add6884f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71040d20cc3ffbb28c1abcef46134c7936624e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf780dec6c8f7b4a14858fe3ccd64e4cc1f8f3e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7dbc322d72c1788a1e37eee738e2ea9c7fa875e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8beb5c479a9b58f581076697bbce83baade90c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf939e0a03fb07f59a73314e73794be0e57ac1b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa267599bc504a60806b24656495d89064cbd972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3e2db8eb6c646e0d24046c1a185934d41a8f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa712ee4788c042e2b7bb55e6cb8ec569c4530c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb230bc3de97ee43d2501bcaab9a50bba9b69e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb81be4bde317d32ec6934db87e05cfdc5245437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbef0cb133e2921aad88bbd993990834ca33bda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc2796c47063d6fcb98006081778c7b45b13a4c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc780e0e273098e6efdad6f30caa48ffc659cd6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc92d0e9fa35df17e3a6d9f40716ca2ce749922b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfce0b2fe7d7d5057c82a896e4d8ec0e4b813f71f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdf2c2689c130b0686331c9ada0e40ec1a1a58d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff051db87adfb0be398016ee5c68280ad49f1fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff498bbcbf40d0f30f178f553e8fa36153baf30b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x12ea786c9e53c5740fef04efd568e69d6e9f3e98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b95bf93b5873c8cb9ae3374e3054736a5b79676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x38091ad1880c21530d5b174b10d1ce24b40a584a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3eb5fc2a08ba67cb918758e5bcdd749c70fe7e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x60bbefe16dc584f9af10138da1dfbb4cdf25a097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x789004ede61c9f855a0ecaad7f0616bf23f0c952` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8176c5408c5dec30149232a74ef8873379b59982` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x86e761f620b7ac8ea373e0463c8c3bcce7bd385b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8cbc6f9811b266268b94b84afed0e5ee26d61ddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x93503ab9f3aa708b757caf3238b7673bab2e3409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0da6e0cdb841eeb8b38fece81fd7e6e0cb5ed2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb2c3a9c577068479b1e5119f6b7da98d25ba48f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd076f5426bd1f4cee4054aba60331fa1d075dc49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd825d06061fdc0585e4373f0a3f01a8c02b0e6a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdd3b8084af79b9bae3d1b668c0de08ccc2c9429a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xef2dbdfec54c466f7ff92c9c5c75abb6794f0195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf675bb0c1cde2179d19b2ea0e6e5e9d2053b3d87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39447351fe7939c064cdd9a258f22fc76233e28e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70035ebd0fd9b4ff28f4e8eddabc40d0ddcc6d6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e006a1b461a37002a7d0137d890988876fb0ae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbb2aaeb8c9da72bb7fadb42a9c84aacf26974fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08b918dd18e087893bb9d711d9e0bbaa7a63ef63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0df56a0cf3e6da667c9532203fca4c8ef138a181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb3f5c7d0ac3944a9d9a9623d6b50bcea85a26753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc7a161cfd0e133d289b13692b636b8e8b5cd8d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0x090185f2135308bad17527004364ebcc2d37e5f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 10 deployments: fantom `0x0dec85e74a92c52b7f708c4b10207d9560cefaf0`; fantom `0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83`; fantom `0x6f86e65b255c9111109d2d2325ca2dfc82456efc`; fantom `0xa48d959ae2e88f1daa7d5f611e01908106de7598`; fantom `0xb32b31dfafbd53e310390f641c7119b5b9ea0488`; fantom `0xf68b78cb64c49967719214aa029a29712ddd567f`; kava `0x3a2761f421b7e3fd18c1ad50c461b2de2f77c367`; kava `0x729d8855a1d21ab5f84db80e00759e7149936e30`; kava `0xaad094f6a75a14417d39f04e690fc216f080a41a`; kava `0xd6b8bd85a9593cb47c8c15c95bbf3e593c5dc591` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378829 | `0x287176dfbec7e8cee0f876fc7b52960ee1784adc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378830 | `0x4fdffa59bf8dda3f4d5b38f260eab8bfac6d7bc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378831 | `0x64c65549c10d86de6f00c3b0d5132d8f742af8c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378832 | `0x7208d9f9398d7b02c5c22c334c2a7a3a98c0a45d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378833 | `0x74a0bca2eeedf8883cb91e37e9ff49430f20a616` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378834 | `0x82f0b8b456c1a451378467398982d4834b6829c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378835 | `0x8e45af6743422e488afacdad842ce75a09eaed34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378836 | `0xa3fc1b4b7f06c2391f7ad7d4795c1cd28a59917e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378837 | `0xc5c01568a3b5d8c203964049615401aaf0783191` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378838 | `0xd4357d43545f793101b592bacab89943dc89d11b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378839 | `0xed745b045f9495b8bfc7b58eea8e0d0597884e12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-378840 | `0xef7a0bd972672b4eb5df28f2f544f6b0bf03298a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-378841 | `0xf08e4cc9015a1b8f49a8eec7c7c64c14b9abd7c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378842 | `0xf5bce5077908a1b7370b9ae04adc565ebd643966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1d7ca62f6af49ec66f6680b8606e634e55ef22c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x218c3c3d49d0e7b37aff0d8bb079de36ae61a4c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2c78f1b70ccf63cdee49f9233e9faa99d43aa07e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x340fe1d898eccaad394e2ba0fc1f93d27c7b717a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc1be9a4d5d45beeacae296a7bd5fadbfc14602c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd67de0e0a0fd7b15dc8348bb9be742f3c5850454` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe0ce60af0850bf54072635e66e79df17082a1109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kava | n/a | `0x090185f2135308bad17527004364ebcc2d37e5f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378819 | `0x1b77fdabaa7fefd55f4ac075b6e817b8d773315b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378820 | `0x287176dfbec7e8cee0f876fc7b52960ee1784adc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378821 | `0x30d525cbb79d2baae7637ea748631a6360ce7c16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378822 | `0x3cff6f628ebc88e167640966e67314cf6466e6a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378823 | `0x471ee749ba270eb4c1165b5ad95e614947f6fceb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378824 | `0x526a17c623809792c033c9816ae9a6fa80acdfdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378825 | `0x630fc1758de85c566bdec1d75a894794e1819d7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378826 | `0x7ad0e580d8458bbef71ec6a1755c59651e1eaaa7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378827 | `0x895731a0c3836a5534561268f15eba377218651d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378828 | `0xc7a161cfd0e133d289b13692b636b8e8b5cd8d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xacdd6e28b7440fe17eefd927337480dd1ea7a97b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc7a161cfd0e133d289b13692b636b8e8b5cd8d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bfcd5dd76218bf9e3be8a1055f9e6d27e5745eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x173e60c2b7f219909608f14cefacf4c6a7c42eeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x193d7e62f5b7b178a7d50cc7b9acfab919e2dae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x205d52e9ea8e42659ac5c7f83863b18d27d7e0f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24a76073ab9131b25693f3b75dd1ce996fd3116c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2791affa064714a5be4cbea6ddbe70c9058182b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x292a6f6156c9e197aa2d059a3194ea8d235b3f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d4b38f2634acb024856afde0568f59968e7c045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3816a80f324b8f6f34cf76e5ba9a256130d37f50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x469a991a6bb8cbbfee42e7ab846edeef1bc0b3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a9cb5d0b755275fd188f87c0a8df531b0c7c7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x585a94dae6a34541891fdbdc0a897fa2cb2fbe23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5abce3da61ed3d72b6823213a7af6e45f6a4f949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x790c86944e764498a0e5442a0208011714222aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e174ef19d5ce71b0423e05efb79db2b9c56b1e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x860d841bfd1cfef72a14b2b734005799f07dc7ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x943807bd009c51791e61d8a4e132d40d0ebbfb60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x94635b2034ccec3293b81d411cd77c36c353f41d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d4f0dce68af79a2532e92a19f6b8a6e34c43f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb345e554f32dc923670bad66f3dc8ffd6c3b4408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba1acfa03c9ca6f51eee79aadcbe2821d5c1a0eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe7d5968296843756109d42946d01195320922ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfa4966a2b06471445a34b93c931e1d075cd3b12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc25ad0a91b6cca2579139d009b501ca4ab95abbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9fdb5f33a552768958479538e0c6b47cf1206a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8284e7bf0ac2171b5cf6ea92edd90158ed9e020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe931cd918e97fe5ce15e68758e0c18bc60ad56f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb81be4bde317d32ec6934db87e05cfdc5245437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05300c3c6d0d9d6e06165eba21a681ea124d6df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07dfe570aabed486f5577472f7f7952de425a922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b94d3afa017e853c82676b4118500b8f9de5864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e0e2c6204976ba791fba95efbb54f9f76556a57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e1ec3666478c86ff4d5452a89250bbf9d18ad6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11cb89e609472c3d732175dae43c56b3d4406797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x160bb4cba352ffbf2021ce848f37674eeac9b38f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16c5536c1b01c8037fba75bd7b9fd08d59a1ecc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18ce97e5a240813d922c6dcf962c91257f5d8b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x195759c3f9fb62d740dd432e7a982c5dee1298a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a6708c0b9fb96df50c0a327be76ee4f088f0849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1af353148f2316487b5311fcd522c037842d232c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c4b41ba54492f551e98ed0a9a59b952a962c452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x250a0a76bb0139d65f14500c0149d2766ea109b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2518a37e079958b6c7c65f7c18617145ed95610d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2bcccb83178f9fd889eb937979d659a5997ca327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f1ba281ca9c32bce9c6e8792ba6448434178f89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x33fa3df22bac262f72a688877e728094b6eb35c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a0fa80d30f8164212ac547c7d3eb8a254cef572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3bcda00c257179d4abee0d1d94a8a9720554f1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x41d5a04b4e03dc27dc1f5c5a576ad2187bc601af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47d99d622b25d86f4ff8925ca8db21ea47044f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x491a254756ef2b482477bc0d32f65cd6f10dad5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4acc99dc595e2df9838ddcb1ec5d94fe96ae7f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54fe8edb139404228dd70c5fd0a06c7b46c86fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x563111a691302d9700abc617e99236d6a6fc537b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x587b32c2a5505e61cbeb252493e1286cab1f41c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b4dfdeb4f4680425e0e78d6029eb9af5afef862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5bbfa5f49ec557eaba9427ac434f21b69113fe20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5cfca5b2149a20a166508b28e5fcfa65c44c6b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e1e12945adc54b5e5dd01582a19223ba5a424ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x62387711313cc10f433b32e010a05bf768c2f037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x64c65549c10d86de6f00c3b0d5132d8f742af8c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65f17eff747aeb3b14bb3712c6850c2da45d0ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66a809a31e6909c835219cc09ea0f52135ff0a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b516b23a260e2d904dbfa47c7e7afd04e5adbc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c6f89bce78d4e083a7ba71574594aeaffee6459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77b995ff2bd2b5287f940bc379fbe214506403e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7aca03e01e170107d01381a13281e4517f0a9e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d9d90a915a74e4acaea1c0de4efa07fd9e87740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8165aa29e883892d4b84775ec8abd0b6cfaec225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x859ae89bf8fba0563d218983473890afb102b834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x867c10e94a3ab56baeaaeefb6e147f87ee8a3067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x884d2e9ff9e36b3e5ce293f48e959b39ab9d0861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8e7982492f6d330d0e1aab9e110d7dffc69c20fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x931b5dffebf156b3c295f0c50bbad494d35989ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x959c6189e6039606a79e209213f85f6e0a5bb378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9732d3ee0f185d7c2d610e30dc5de28ef68ad7c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x997fba28c75747417571c5f3fe50015aac2bb073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1246c3d11049e4d3fdb319455d1c721a65f83fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2008a8c6a0f8f5cc6ca59b38d5dd90455a840d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa49facb26236aa5842b0817f634c482de9a38f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4e65d6ea294e3f4847651921adfd4e93f7c55fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa60ef5447008adaf6de56320e9dff507b828b9d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa668762fb20bcd7148db1bdb402ec06eb6dad569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa71a7cbfb554519c5a8d2f9d0043ed0ff22959fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaeee314a3b0d88439b77fca9f125bbb66baaf61c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb06b4639b93863fecc3993eb0d6bf9779716bce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5a917ed59db899f26ce05cc75e6bc16f927f800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbaf1a2e7d8525c3a75a51067550ec6154a8cb510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb09ac1c984b9d93104cedb21642cc15d09bfec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb83b6ecdeff084d7cd0a6ad96c3e7483672d204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc05fb8b47f6d574672a70eee04d73c647ac21e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc7fa554a65a98502457fcfc2f1afa28113d7920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf70239349cd43598f7587a093232d07c5d0aa78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc356607e2ec30884bb0f84033c4d81419d2350bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc63085dd11fc473e6db8eba20af191885d9158e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7d35cdbc83cb4b90027a8036193f989c1395be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb28044e38b67281c85bd5374403ae109f7088bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd12cf5515a1acb84967980fcfada2832851e3075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd19dacf775f9cdce4926c0467e3add92ca9c9c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdad1d732e319fa87fe54afb10f229ae78b881ac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc3b37b5f0fe5d3f8b8701a3f8d81a02ee8a1e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe59bb0090de7bdb1198fec7018134691f404d0d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8a191026e71c303b0f40f15be93403f7d529707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef2dbdfec54c466f7ff92c9c5c75abb6794f0195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf47b8c42664ef345f0be5e1c2dbfeea027d61dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf975aa561812cb957aa29c8dfac2c2494868ecbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa85b0bb658d519247494b6020cae6e65f572950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdebd11f8f821b7bf404dfafd4d2bc83dcb8bb26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x233332a01ebf20f770883ebff68374b015accb9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x471ee749ba270eb4c1165b5ad95e614947f6fceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6171619b5793099f8c577fe5dfc08cea35a3b3aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-378910 | `0x6e4358c889bb7871061904be31fe47c3b8b7f442` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-378912 | `0x7202b7ca846fc93467e95fa279bc6085f2d5b6fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-378914 | `0x741a2378a8e003acbadbc21506bc624062ace36e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-378930 | `0xa3372cd2178c52fdcb1f6e4c4e93014b4db3b20d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb9565f2612e35cd58513145f1c7ed790504f265a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc7a161cfd0e133d289b13692b636b8e8b5cd8d8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-378945 | `0xeda89b8b19ebef5fc0d5e21ebad174366c230d35` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 1933
- Live contracts: 17
- Unknown liveness contracts: 1916
- Source-verified contracts: 1348
- Currently scope-matched contracts retained as-is: 1
- Classification counts: currently scope matched=1, candidate auto own=2, candidate review=368, contamination review=104, third party or infra=1, exact address book overlap=11, source verified unclassified=861, unverified unclassified=585

Showing first 200 of 1933 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | GmxV2CauldronOrderAgent<br>`0x8157075b278718c3c075043faa85822ad98d60f2` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate auto own | MagicLP<br>`0x6c843d25a2b0ee3e8844492e891dc7257645023a` | project_anchor | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate auto own | MagicLP<br>`0x2958db359d22411cdf9825f8b27f17350a6fc6bb` | project_anchor | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronLib<br>`0x785afad4e404aebdb8f07e43fbef9ed15c5faa35` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV3<br>`0x3e2a2bc69e5c22a8da4056b413621d1820eb493e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV3<br>`0x95fdc98fd66c1935168b5e002f62b7f8147d0f0f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV3<br>`0xc33d23aa4b8a3dd2a3c539276ab57363cc927202` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV3_2<br>`0xe19b0d53b6416d139b2a447c3ae7fb9fe161a12c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV4<br>`0x43243f7bddcb850acb687c42bbf5066c224054a5` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV4<br>`0xa841011a3414d034e1275a9928c5c1eddc4c3b9d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV4<br>`0xc4113ae18e0d3213c6a06947a2ffc70ad3517c77` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CheckpointCauldronV4<br>`0xf36a106153038c436c470674da0ff1f0dadeb23b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | FTT3MonthUnlock<br>`0x46c68e70c5de077c87e79394b639fde780e5c83a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x772589e99bc9c54dd40acb7d73f88ccbc9d9cf47` |
| candidate review | FTT3MonthUnlock<br>`0x600d08a0c2ae496b9614c8342cd2781e130b7862` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x772589e99bc9c54dd40acb7d73f88ccbc9d9cf47` |
| candidate review | FTT3YearUnlock<br>`0xd769010d3813bafaf4addbfe258eafd07828bb83` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x772589e99bc9c54dd40acb7d73f88ccbc9d9cf47` |
| candidate review | MagicUSD0pp<br>`0x034de98226851e267c401069dcc18c2680fe907a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicUSD0pp<br>`0xdb36f69b88ec1388dbfac90132cd396fd4749963` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicUSD0ppHarvester<br>`0x0f9af7168cc8819ce3066867509a7f9170fb108b` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicUSD0ppHarvester<br>`0x80014629ca75441599a1efd2283e3f71a8ec0aab` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MSpellStakingSpoke<br>`0x3886a691e88f1a51918b915aa1a0dfbc9af5f755` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MSpellStakingSpoke<br>`0xb5980ee2944a52719e6fd93a07269b1e97f65ec5` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MSpellStakingSpoke<br>`0xbbb3bc7cbb4f51a10cb4578d5fea6e709539900a` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | PrivateRouter<br>`0x9b6f6c00f91579fb058572a875f1da2a4ad7ad51` | non_address_book | adapter | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | ProxyAdmin<br>`0x1ac2674853e9da332dd3cb451375412bce5757a1` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | TestForMelen<br>`0x09f5e032aae0d6b693db30b2a3daccf2fb878679` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | TestForMelen2<br>`0x1bc998bf2e25ea49b212b9db35491047c28074cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | WhitelistedCheckpointCauldronV4<br>`0x333e28e557dc026518e25d1d426c4407a0a3b5e8` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | WhitelistedCheckpointCauldronV4<br>`0x42bb6d1bb09959a61cc1d1d98ccc7902dfde3e92` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV3_2<br>`0xb6957806b7fd389323628674bcdfcd61b9cc5e02` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | DegenBox<br>`0x233332a01ebf20f770883ebff68374b015accb9c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | DegenBox<br>`0xb3f5c7d0ac3944a9d9a9623d6b50bcea85a26753` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | SolidlyGaugeVolatileLPStrategy<br>`0xa3372cd2178c52fdcb1f6e4c4e93014b4db3b20d` | project_anchor | operational_periphery | live | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLevel<br>`0x0253db0dda6c063fae1e5fb28318e6dbe1c14e16` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLevel<br>`0x23a22b4777f16c3941ce3ef2179c58963aafd309` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLevel<br>`0x2906ae98fdaf225a697a09158d10843a89cf0fc5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLevel<br>`0x6e93686d34a9ebf7c589998a576ab603719500ef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLevel<br>`0x75adc3b980c5c73ee35ecc41bf0d8b19699501b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLevel<br>`0x87ac701ba8acb1966526375da68a692cebb8af75` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLevel<br>`0xc094c2a5c349ead7839c1805126da71cc1cc1a39` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLevel<br>`0xd825d06061fdc0585e4373f0a3f01a8c02b0e6a4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLevel<br>`0xd8cbd5b22d7d37c978609e4e394ce8b9c003993b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLevelHarvestor<br>`0x35467bbd152a0f4d9166e649728c101fe4806eaa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLevelHarvestor<br>`0x418ade5929fb6a9e3666ab19332e70a0f0a64470` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLevelHarvestor<br>`0x630fc1758de85c566bdec1d75a894794e1819d7e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLevelHarvestor<br>`0x640605cb9366c98b6d324d8cb04f98b363b76521` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLevelHarvestor<br>`0xa32d03497ff5c32bcfeebe6a677dbe4a496fd918` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLevelRewardHandler<br>`0x60bbefe16dc584f9af10138da1dfbb4cdf25a097` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLevelRewardHandler<br>`0xaf2fbb9cb80edfb7d3f2d170a65ae3bfa42d0b86` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLevelRewardHandler<br>`0xba7fd957ad9b7c0238e6e4413dba69e83224a582` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | DegenBox<br>`0x7a3b799e929c9bef403976405d8908fa92080449` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | DegenBox<br>`0xe56f37ef2e54ecaa41a9675da1c3445736d60b42` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV4<br>`0x2f1ba281ca9c32bce9c6e8792ba6448434178f89` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV4<br>`0x3477df28ce70cecf61fffa7a95be4bec3b3c7e75` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV4<br>`0x8d99a15a2be434431cf16d98e23f7fafe0d0da30` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV4<br>`0x9affe9639db246fe85d048834386f79daa59fbc4` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV4<br>`0xe8de4c60da9c00da512c827e02224c8609fc916a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | DegenBox<br>`0x0d2a5107435cbbbe21db1adb5f1e078e63e59449` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | DegenBox<br>`0x6e4358c889bb7871061904be31fe47c3b8b7f442` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | DegenBox<br>`0xa3372cd2178c52fdcb1f6e4c4e93014b4db3b20d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | Factory<br>`0x9620a2a6a6c6dcef83fcab71430aaad55e7c0999` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLP<br>`0x75097b761514588b7c700f71a84ddbb5ad686074` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | Market<br>`0x25c27fb282c5d974e9b091d45f28ba5de128e022` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | Market<br>`0x85e8a3087c90992badd74be44f18626b2359f490` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | Market<br>`0xa6247e6fba04354afd4d688de946ae1370b3c15e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | PrivateRouter<br>`0x635693f0d3ff2eeb95d19e680ed5fbecc5e7d3be` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronLib<br>`0x11689993dff3f79b27440f4ce74d52bb952aac10` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | CauldronLib<br>`0x2be431ee7e74b1cb7cfa16fc90578ef42ef361b0` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | CauldronLib<br>`0x4f51264b07db8b2910e892eeef22460de23268a7` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | CauldronLib<br>`0x5d28da94086984cc3529d0c0ef6d968eeb7620b4` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | CauldronLib<br>`0xc1f1862de85374378173566a8f3be28da3c3ec70` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | CauldronLib<br>`0xdbbd9632401ef424b66e2fdc0368e492b8dce280` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronLib<br>`0xef633d1af20ed99a69b7cf46da5be63da07ed5ee` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | CauldronLib<br>`0xff498bbcbf40d0f30f178f553e8fa36153baf30b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | CauldronV4<br>`0x303a59a1020807b6fd78d3bb0e3c8b6a26bbc0b9` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | CauldronV4<br>`0xdf46f6b1a5f794f21ead4008c7de4e02dc045297` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV4<br>`0xe05811aff7a105fe05b7144f4e0dd777a83a194e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV4<br>`0xed50bbabf93a9d3dd7f60bc24d2712606b4c14de` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV4<br>`0xee22ba16e912694e925020f8f22ea2277214eb16` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV4<br>`0xef2acb3d21272d0111e8e90484d598ee7e04e16e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV4WithRewarder<br>`0x247d7e28aa79dffe09b287d191393242411ad85f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV4WithRewarder<br>`0x5651958a6e4db3327db1fa9198b9954608a0f194` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | CauldronV4WithRewarder<br>`0x79533f85479e04d2214305638b6586b724bec951` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV4WithRewarder<br>`0x967dbcae94c4dd461ada08fc920bdf87edffe9ec` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | CauldronV4WithRewarder<br>`0x96bac90bee7f416d33601d1dc45efb19aca8ca62` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | CauldronV4WithRewarder<br>`0x98bf3e7da6f5a81630730d538715e35d8c0d3ede` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV4WithRewarder<br>`0xa3c8931ec0fef9bf05386d154c4cd1e93aa92a12` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | CauldronV4WithRewarder<br>`0xac6c439253987be9aff6aac047ec8501ea13d512` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | CauldronV4WithRewarder<br>`0xc435ccc777fe74c11965353738977d710b25534f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | CauldronV4WithRewarder<br>`0xcd959bfcc2931feec89dd98821af03d535500c5c` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | CauldronV4WithRewarder<br>`0xd404bef05e9e256765440a1b9a6b56750c4cedec` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | CauldronV4WithRewarder<br>`0xe45217a77c332ff767112dc89e568c473c5fad2b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | DegenBox<br>`0x268ab9ecbc5fa40f32d9873ea3a8c02ca9c54be4` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | DegenBox<br>`0xfd7234b4727d2c05c26a61d99ebab5f4985745f5` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxGlpRewardHandler<br>`0x8d99a15a2be434431cf16d98e23f7fafe0d0da30` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxGlpRewardHandler<br>`0xf4b36812d1645dca9d562846e3abf416d590349e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxGlpWrapper<br>`0xd8cbd5b22d7d37c978609e4e394ce8b9c003993b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxLens<br>`0x714085ea0880fa247fbed8c29937392beea2cd74` | non_address_book | periphery | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronOrderAgent<br>`0x0155b6fe74f90a3840ebf750ea4237d542c83203` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronOrderAgent<br>`0x0ad2ce601eb1d89f559ffbd1bca042c246ca1954` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronOrderAgent<br>`0x10b37af228afb20e8561fde83e5f882625ce1615` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronOrderAgent<br>`0x153ecdc6844085a5c487b3beb8a704176b07fc17` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronOrderAgent<br>`0x1ae691bae53d91bbba6db553960e761c13a1ec69` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronOrderAgent<br>`0x1b65520aa60168e989a8c6e0747eb8ab71750f36` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronOrderAgent<br>`0x2d9b2deb9767fc470208b1f5f3fac19f0a04056c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | GmxV2CauldronOrderAgent<br>`0x49676b9bbbe9db0dd3a94cd6db68b5e2c7969757` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronOrderAgent<br>`0x5389e325c440243b7976d630f031f3921ffc674e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronOrderAgent<br>`0x59eea3c00a7035c40787b1b01e15c4ecf790677c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | GmxV2CauldronOrderAgent<br>`0x5b82fac52ab10807fab0897a0ba05b26eb50e684` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronOrderAgent<br>`0x6b101c2d7ce2f8283d8788b25ecef107f76987ff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | GmxV2CauldronOrderAgent<br>`0x71f94a027cc72c7b860a4c161740157ec2cf15bb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronOrderAgent<br>`0x8e2c80487d847478ca3f2174fb50bdfbdb2cd862` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronOrderAgent<br>`0x8e4a1186e00f7a5c5df980feba1768540050ae4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronOrderAgent<br>`0xa822ae04aac8715428d759b9e4bdf5fca724aa5e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronOrderAgent<br>`0xcfd3c27ca46ea9aa8a3c8713a700419d9622e8b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronOrderAgent<br>`0xecabba5a41af5895e3202b87c026dcae5b32b076` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronOrderAgent<br>`0xede9a6d19cf38d4e6aa80233333786853d1c21aa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | GmxV2CauldronOrderAgent<br>`0xf48959414cb1a94d29cd5160d9b9e785ff67124a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronOrderAgent<br>`0xf6e2a4b77888a731d1613f73909b3068602734a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronRouterOrder<br>`0x02a97f80afc2d507bba371f11fe236994159414a` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronRouterOrder<br>`0x1ce8ec91b4dbb83c35075b200dcddeca83418f27` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronRouterOrder<br>`0x3a5770733479220ca4067c12526a7cb3d1d0574e` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronRouterOrder<br>`0x4b0004ad6ed8c85e61f679e366b98bff91338790` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | GmxV2CauldronRouterOrder<br>`0x6c1ef1661c38bd3552441fd982fb538b1df6df76` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | GmxV2CauldronRouterOrder<br>`0x709aa62d4c453b4c070ab886b97565b61500bf7c` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronRouterOrder<br>`0x73962c1816e6be9b2d9266ab67cbacaa6ab5ca5f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | GmxV2CauldronRouterOrder<br>`0x760c0d870c574d53af2acd8369a9f237412c5c6f` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronRouterOrder<br>`0x8764f828305953f2c0ed2f9b7b3a4adf4ed7682a` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronRouterOrder<br>`0x8b14ffe5cd42399019027a9042ece1179428854a` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronRouterOrder<br>`0x94ea6ba2662468ac8a9f3e4d3f0de37cd1e00fc2` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronRouterOrder<br>`0x992b72d10b45fc393efa455c791f2effcdefabcb` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronRouterOrder<br>`0x9d982669d3712041a40eaea50a07f4cc037bf712` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | GmxV2CauldronRouterOrder<br>`0xa6032fe870c518a2eb8f0004d7b3e9aa0381ed3e` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronRouterOrder<br>`0xb01a7aa773eef362c3bd70ae8430585d4e8e2167` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronRouterOrder<br>`0xb14e4e829209e5a171994f4c4a364b05965d6989` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronRouterOrder<br>`0xb621b8440184565edfe7f578017cef958a18faac` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronRouterOrder<br>`0xba95c5b1e82a0da88efb5b20aec2a69514390b43` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronRouterOrder<br>`0xcde8edf505bad39dd606e7532d9c9cdfe74c42b7` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronRouterOrder<br>`0xede6ec7a2fea378daa209f44a8157a5f39bc4fe5` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronV4<br>`0x017ccd8ef10fb8bb3a5a04b2798212132eed6bdb` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronV4<br>`0x0c89137660eb246ba69c8917e0f3045533166b9b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronV4<br>`0x1b867b05004c26415aee34b20b1e51ba77a67043` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronV4<br>`0x4809cb637cd0592492be650a3d6ebd11c034e5cc` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronV4<br>`0x74322fdeb6f98fdb4e0fcd87b0125a3dad410359` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronV4<br>`0xa6299cd046bfcc48cb9c7624c98b6045e6c6b210` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronV4<br>`0xb3d7229611af4befd3ec04a33dafaf48ec47f2f0` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GmxV2CauldronV4<br>`0xf69553afd55c8d012a164383b005a486b7a2bd5e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GMXV2Experiment_OrderAgent<br>`0x6ac1163b6f60ba8d6dc1a7f4ccd122418ce0746d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GMXV2Experiment_OrderAgent<br>`0x704df21351fe4249bd27d09ed51615fd1b9ab431` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GMXV2Experiment_OrderAgent<br>`0x7ad66f7493ffc7ae7d78974a80243bbb3a1fdead` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GMXV2Experiment_RouterOrder<br>`0x3b0ecac5653107a985be93ab25d8dbb8a608eee5` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GMXV2Experiment_RouterOrder<br>`0x8d9e68a0df885ac655963f62238e6d7238616e59` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | GMXV2Experiment_RouterOrder<br>`0x9cab9fdb70f4b024b5916d428fc2b83186359439` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | LockingMultiRewards<br>`0x13e17fd348f242ff71b9e022ce3714b139321b20` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | LockingMultiRewards<br>`0x20f2b910bee18125f34c07925bbfe344a139646f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | LockingMultiRewards<br>`0x852563e148d431178e5831647feb8eda3f4371ca` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | LockingMultiRewards<br>`0x8d476a39a0086660cd629da76f369b9e068c7b2b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | LockingMultiRewards<br>`0x8d8bdf89547a10311c7982290a36d12285268e90` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | LockingMultiRewards<br>`0x9512b9d436ecef6893ec11d5261a8c867f6984e6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | LockingMultiRewards<br>`0x99be6baebef8006967267a68fba4bf3a1a669b5d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | LockingMultiRewards<br>`0xd30c939b322b4fccb6f1ed9513d79fb2c6c1ba7b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | LockingMultiRewards<br>`0xe06d95f8b8b2ae222690e9fe5ac0ff2febbd73b6` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | LockingMultiRewards<br>`0xe71896e4c8ce8447aabe82cd5eb752ccaeb609ad` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicGlpRewardHandler<br>`0x41b8dbde2d4127111fbedf31783781ae69300026` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLP<br>`0x522cbaabb594d538f0813927b18b99f2638f1fad` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MagicLP<br>`0x61ff8adceb5a5f70e485e5e66266f009c653253a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MarketLens<br>`0x87072985aa1a2647da7dc3fc514fc4fa093022c2` | non_address_book | periphery | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MarketLens<br>`0xc4ee4956e8ed8934ee5c02313bb24f5c6848ad4d` | non_address_book | periphery | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MathLib<br>`0x503d141915a740f98da6c12a1156cd4decc13b4c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | mSpellStaking<br>`0x694808221d4f31d5849f2aba08584e2c8f4b99ff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | mSpellStaking<br>`0x6cc0cd7d25e291029b55c767b9a2d1d9a18ae668` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb4efda6daf5ef75d08869a0f9c0213278fb43b6c` |
| candidate review | MSpellStakingHub<br>`0x3b9e7f15876c45956ba5f337cb47849375f7f764` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MSpellStakingHub<br>`0xa39ceeafe6e7a506ca4db24be0469125575ef606` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MSpellStakingHub<br>`0xcfbe02c1d2d52eb183f6c05e93f29e8a1729e73b` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MultiRewards<br>`0x3886a691e88f1a51918b915aa1a0dfbc9af5f755` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MultiRewards<br>`0xdc9bc38db4886f9db3ba6a5736ea5e3637ceee96` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MultiRewardsClaimingHandler<br>`0x15838e7a6322a6f37d2c27628a82b9115e6d7f85` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MultiRewardsClaimingHandler<br>`0x3877efdb6d6bfa2816303707dab6a2fe1b43a943` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MultiRewardsClaimingHandler<br>`0x46cc171a2ee5756db9205f80d6d14389f8d0d32b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MultiRewardsClaimingHandler<br>`0x766cb0422831e599e468014fabd144c1ecd677d3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MultiRewardsClaimingHandler<br>`0xa40bcb311267d79ba905a6174f277e96d97789bd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | MultiRewardsClaimingHandler<br>`0xc699e79ae3f3f415819afc84487682d0503110c4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | PrivateMultiRewardsStaking<br>`0x18f7cca3d98ad96cf26dbda1db3fd71e30d32d31` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | PrivateMultiRewardsStaking<br>`0x366ac67fa2848cc94519b3ef3222b98e1ce9f18b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | PrivateMultiRewardsStaking<br>`0x3bf887d9174d111d192fdbef3c3cbc9bfcf56836` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | PrivateMultiRewardsStaking<br>`0x5b51f27c279aeecc8352688b69d55b533417e263` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | PrivateMultiRewardsStaking<br>`0x8fac044da635c79b5ae9377498eadba9a4111482` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | PrivateMultiRewardsStaking<br>`0xa2af3e88d32eec0c90a9a78a3693f9b03ee8128e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | PrivateMultiRewardsStaking<br>`0xa5e1a7c707a3498ed65494819086b3372bd31ba6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | PrivateMultiRewardsStaking<br>`0xa7940dcb17214fabce26e146613804308c01c295` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | PrivateMultiRewardsStaking<br>`0xaf4fdcaa6d9d5be4acd8fce02fa37f72b31a74cb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | PrivateMultiRewardsStaking<br>`0xc35553797c222727c19553010625af3808149718` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | PrivateMultiRewardsStaking<br>`0xe5e501e4090f8cf4ff5992345df870d2223888ec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | PrivateMultiRewardsStaking<br>`0xe6f823a64fbf127d4a989d747871bf79e69017e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | PrivateMultiRewardsStaking<br>`0xeb0deab1099dd5a7d499b89a6f47cef8f08c5680` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | PrivateMultiRewardsStaking<br>`0xf9398c1751824904744f3d99d29b94cc4c8c7eea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | PrivateRouter<br>`0xe046ac4f2d1676767657e10376c2f32230482bed` | non_address_book | adapter | unknown | verified | review: missing_independent_ownership_evidence | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | ProxyAdmin<br>`0x90da0af7d7a80e92f414e007c699ba3be446d379` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | ProxyAdmin<br>`0xee5ff675d8d974a90336747e4183e1eb0f820580` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | ProxyAdmin<br>`0xf762bc80b9e29432e99aba02c06a65d2934de4cf` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |
| candidate review | ProxyAdmin<br>`0xff11d8b068b0e8e583769542ce9bc23036ed448f` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfb3485c2e209a5cfbdc1447674256578f1a80ee3` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [11-14-2023_Abracadabra_GMXV2.pdf](https://github.com/GuardianAudits/Audits/blob/main/AbracadabraMoney/11-14-2023_Abracadabra_GMXV2.pdf) | Guardian | Audit | 2023-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [2024-02-06_Abracadabra_LockingMultiRewards.pdf](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/2024-02-06_Abracadabra_LockingMultiRewards.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2024-03-21_MIMSwap.pdf](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/2024-03-21_MIMSwap.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | matched | 6 | 2 | 0 | 12 | high |
| [2024-12-16_Abracadabra_BoundSpell_Report.pdf](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/2024-12-16_Abracadabra_BoundSpell_Report.pdf) | unknown | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [MagicGlpReview.md](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/MagicGlpReview.md) | unknown | Audit | n/a | unknown | Direct | address | matched | 3 | 1 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3361] 11-14-2023_Abracadabra_GMXV2.pdf — matched: Contracts extracted from findings location fields in the audit report. The report does not have a dedicated scope table but the findings clearly indicate the audited contracts.
- [9649] 2024-02-06_Abracadabra_LockingMultiRewards.pdf — no match: Only one contract (LockingMultiReward) is explicitly in scope. The report mentions 'staking rewards contract' and all findings reference LockingMultiReward.sol.
- [9650] 2024-03-21_MIMSwap.pdf — matched: Extracted from audit report summary and findings sections. The report explicitly lists contracts in scope and mentions them in findings.
- [9651] 2024-12-16_Abracadabra_BoundSpell_Report.pdf — no match: No reason recorded
- [9652] MagicGlpReview.md — matched: Extracted 10 contracts from the scope table. No audit date found in the report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 11-14-2023_Abracadabra_GMXV2.pdf | GmxV2CauldronOrderAgent | own contract | GmxV2CauldronOrderAgent (selected) `0x8157075b278718c3c075043faa85822ad98d60f2` — deployed 2023-12-14 02:40:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 11-14-2023_Abracadabra_GMXV2.pdf | GmxV2CauldronV4 | ambiguous — not counted | GmxV2CauldronV4 (alternative) `0x4f9737e994da9811b8830775fd73e2f1c8e40741` — deployed 2023-11-27 20:38:26+03 — liveness: live (current_address_book_code)<br>GmxV2CauldronV4 (alternative) `0x66805f6e719d7e67d46e8b2501c1237980996c6a` — deployed 2023-12-07 00:51:48+03 — liveness: live (current_address_book_code)<br>GmxV2CauldronV4 (alternative) `0x2b02bbeab8ecab792d3f4dda7a76f63aa21934fa` — deployed 2023-11-27 20:38:12+03 — liveness: live (current_address_book_code)<br>GmxV2CauldronV4 (alternative) `0x7962acfcfc2ccebc810045391d60040f635404fb` — deployed 2023-11-27 20:38:33+03 — liveness: live (current_address_book_code)<br>GmxV2CauldronV4 (alternative) `0xd7659d913430945600dfe875434b6d80646d552a` — deployed 2023-11-27 20:38:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 11-14-2023_Abracadabra_GMXV2.pdf | GmOracleWithAggregator | unmatched — not counted | — | Listed in findings locations (e.g., GMOCL-1, GMOCL-2, GMOCL-3) | no |
| 11-14-2023_Abracadabra_GMXV2.pdf | CauldronV4 | ambiguous — not counted | CauldronV4 (alternative) `0x726413d7402ff180609d0ebc79506df8633701b1` — deployed 2023-01-27 01:10:24+03 — liveness: live (current_address_book_code)<br>CauldronV4 (alternative) `0x00380cb5858664078f2289180cc32f74440ac923` — deployed 2024-07-31 06:49:23+03 — liveness: live (current_address_book_code)<br>CauldronV4 (alternative) `0x207763511da879a900973a5e092382117c3c1588` — deployed 2022-12-10 17:40:23+03 — liveness: live (current_address_book_code)<br>CauldronV4 (alternative) `0x7d8df3e4d06b0e19960c19ee673c0823beb90815` — deployed 2023-04-20 00:35:47+03 — liveness: live (current_address_book_code)<br>CauldronV4 (alternative) `0x692887e8877c6dd31593cda44c382db5b289b684` — deployed 2023-02-18 18:37:47+03 — liveness: live (current_address_book_code)<br>CauldronV4 (alternative) `0x7259e152103756e1616a77ae982353c3751a6a90` — deployed 2023-01-30 18:28:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-02-06_Abracadabra_LockingMultiRewards.pdf | LockingMultiReward | unmatched — not counted | — | Listed in findings locations and scope description | no |
| 2024-03-21_MIMSwap.pdf | Router | own contract | Router (alternative) `0x7202b7ca846fc93467e95fa279bc6085f2d5b6fe` — deployed 2024-08-16 02:35:11+03 — liveness: live (current_address_book_code)<br>Router (selected) `0x63d8e76143a1fd075981a44e27652adffee09f01` — deployed 2024-04-27 06:01:10+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-04-27 was 43d from audit; next candidate 154d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-21_MIMSwap.pdf | MagicLP | ambiguous — not counted | MagicLP (alternative) `0x2958db359d22411cdf9825f8b27f17350a6fc6bb` — deployed 2024-04-27 06:00:36+03 — liveness: live (current_address_book_code)<br>MagicLP (alternative) `0x6c843d25a2b0ee3e8844492e891dc7257645023a` — deployed 2024-08-16 02:34:11+03 — liveness: live (code_present_context)<br>Factory (proxy) (alternative) `0x8d0cd3eef1794f59f2b3a664ef07fcad401fec73` — deployed 2024-04-27 06:01:03+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-03-21_MIMSwap.pdf | Factory | own proxy deployment | Factory (alternative) `0xdf46f6b1a5f794f21ead4008c7de4e02dc045297` — deployed 2024-08-16 02:34:59+03 — liveness: live (code_present_context)<br>Factory (proxy) (selected) `0x8d0cd3eef1794f59f2b3a664ef07fcad401fec73` — deployed 2024-04-27 06:01:03+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-04-27 was 43d from audit; next candidate 154d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-21_MIMSwap.pdf | BlastMagicLP | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | BlastOnboarding | own proxy deployment | BlastOnboarding (proxy) (selected) `0xa64b73699cc7334810e382a4c09caec53636ab96` — deployed 2024-02-29 17:42:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-21_MIMSwap.pdf | BlastBox | own contract | BlastBox (selected) `0xc8f5eb8a632f9600d1c7bc91e97dad5f8b1e3748` — deployed 2024-02-29 17:27:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-21_MIMSwap.pdf | BlastGovernor | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | BlastCauldron | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | BlastCauldronV4 | own contract | BlastCauldronV4 (selected) `0x79e8cad80e2aa49a246b789584c45aab1cfe402e` — deployed 2024-02-29 20:45:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-21_MIMSwap.pdf | BlastTokenRegistry | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | FeeRateModel | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | FeeRateImplementation | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | MIM | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | SPELL | own contract | Spell (selected) `0x090185f2135308bad17527004364ebcc2d37e5f6` — deployed 2021-05-18 01:10:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-21_MIMSwap.pdf | BlastPoints | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | BlastWrappers | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | PrivateRouter | unmatched — not counted | — | mentioned in invariants section | no |
| 2024-03-21_MIMSwap.pdf | DegenBox | ambiguous — not counted | DegenBox (alternative) `0xd96f48665a1410c0cd669a88898eca36b9fc2cce` — deployed 2021-10-14 22:24:53+03 — liveness: live (code_present_context)<br>DegenBox (alternative) `0x1fc83f75499b7620d53757f0b01e2ae626aae530` — deployed 2021-10-14 20:31:04+03 — liveness: live (code_present_context)<br>DegenBox (alternative) `0x7c8fef8ea9b1fe46a7689bfb8149341c90431d38` — deployed 2022-06-22 14:12:43+03 — liveness: live (code_present_context)<br>DegenBox (alternative) `0xa93c81f564579381116ee3e007c9fcfd2eba1723` — deployed 2022-08-06 20:21:56+03 — liveness: live (code_present_context)<br>DegenBox (alternative) `0x090185f2135308bad17527004364ebcc2d37e5f6` — deployed 2021-11-18 15:30:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | BoundSpellActionReceiver | unmatched — not counted | — | — | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | BoundSpellActionSender | unmatched — not counted | — | — | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | BoundSpellCrosschainActions | unmatched — not counted | — | — | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | Create3Deployer | unmatched — not counted | — | — | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | Create3Factory | unmatched — not counted | — | — | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | MultiRewards | unmatched — not counted | — | — | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | MultiRewardsClaimingHandler | unmatched — not counted | — | — | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | SpellPowerStaking | unmatched — not counted | — | — | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | TokenLocker | unmatched — not counted | — | — | no |
| MagicGlpReview.md | MagicGlp | own proxy deployment | MagicGlp (proxy) (selected) `0x85667409a723684fe1e57dd1abde8d88c2f54214` — deployed 2023-01-27 01:09:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| MagicGlpReview.md | MagicGlpRewardHandler | unmatched — not counted | — | listed in scope table | no |
| MagicGlpReview.md | CauldronV4 | own contract | CauldronV4 (selected) `0x726413d7402ff180609d0ebc79506df8633701b1` — deployed 2023-01-27 01:10:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| MagicGlpReview.md | ProxyOracle | unmatched — not counted | — | listed in scope table | no |
| MagicGlpReview.md | MagicGlpOracle | unmatched — not counted | — | listed in scope table | no |
| MagicGlpReview.md | DegenBoxERC4626Wrapper | unmatched — not counted | — | listed in scope table | no |
| MagicGlpReview.md | MagicGlpHarvestor | unmatched — not counted | — | listed in scope table | no |
| MagicGlpReview.md | MagicGlpSwapper | unmatched — not counted | — | listed in scope table | no |
| MagicGlpReview.md | MagicGlpLevSwapper | unmatched — not counted | — | listed in scope table | no |
| MagicGlpReview.md | DegenBox | own contract | DegenBox (selected) `0x7c8fef8ea9b1fe46a7689bfb8149341c90431d38` — deployed 2022-06-22 14:12:43+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x4a3a6dd60a34bb2aba60d73b4c88315e9ceb6a3d` | MintableBurnableERC20 | token | $602.52 | Verified native implementation with $602.52 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf5bce5077908a1b7370b9ae04adc565ebd643966` | BentoBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x74c764d41b77dbbb4fe771dab1939b00b146894a` | BentoBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x08b918dd18e087893bb9d711d9e0bbaa7a63ef63` | CakeStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2c9f65bd1a501cb406584f5532ce57c28829b131` | CauldronFeeWithdrawer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6cbafee1fab76ca5b5e144c43b3b50d42b7c8c8f` | CauldronLowRiskV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ff9061bb8f97d948942cef376d98b51fa38b91f` | CauldronMediumRiskV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x390db10e65b5ab920c19149c919d970ad9d18a41` | CauldronV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35a0dd182e4bca59d5931eae13d0a2332fa30321` | CauldronV2CheckpointV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x003d5a75d284824af736df51933be522de9eed0f` | CauldronV2Flat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x692cf15f80415d83e8c0e139cabcda67fcc12c90` | CauldronV2MultiChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc89958b03a55b5de2221acb25b58b89a000215e6` | CauldronV2Multichain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7ce7d9ed62b9a6c5ace1c6ec9aeb115fa3064757` | CauldronV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8227965a7f42956549afaec319f4e444aa438df5` | CauldronV3_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x68f498c230015254aff0e1eb6f85da558dff2362` | CauldronV3_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00380cb5858664078f2289180cc32f74440ac923` | CauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x207763511da879a900973a5e092382117c3c1588` | CauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x692887e8877c6dd31593cda44c382db5b289b684` | CauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd96f48665a1410c0cd669a88898eca36b9fc2cce` | DegenBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xa93c81f564579381116ee3e007c9fcfd2eba1723` | DegenBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x090185f2135308bad17527004364ebcc2d37e5f6` | DegenBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x79533f85479e04d2214305638b6586b724bec951` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8e7982492f6d330d0e1aab9e110d7dffc69c20fc` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x08b918dd18e087893bb9d711d9e0bbaa7a63ef63` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x6e858b0dd9a9dcdf710b28c236292e30ba079728` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x26f20d6dee51ad59af339bedf9f721113d01b6b3` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9ba780f8a517e2245892a388427973c8b7c3b769` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb2c3a9c577068479b1e5119f6b7da98d25ba48f4` | EthereumWithdrawer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdf46f6b1a5f794f21ead4008c7de4e02dc045297` | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3477df28ce70cecf61fffa7a95be4bec3b3c7e75` | GmxGlpRewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x017ccd8ef10fb8bb3a5a04b2798212132eed6bdb` | GmxV2CauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x52b2773fb2f69d565c651d364f0aa95ebed097e4` | LzOFTV2FeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x41b191911cf3482b31cfcd65bd3c79e76b26b35a` | LzOFTV2FeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf35b31b941d94b249eaded041db1b05b7097feb6` | MagicApe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3` | MagicInternetMoneyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6c843d25a2b0ee3e8844492e891dc7257645023a` | MagicLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797` | mSpellStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1df188958a8674b5177f77667b8d173c3cdd9e51` | mSpellStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x406b89138782851d3a8c04c743b010ceb0374352` | PrivilegedCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7202b7ca846fc93467e95fa279bc6085f2d5b6fe` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xa3372cd2178c52fdcb1f6e4c4e93014b4db3b20d` | SolidlyGaugeVolatileLPStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x6eb1709e0b562097bf1cc48bc6a378446c297c04` | SolidlyLpWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9` | sSpellV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x53375add9d2dfe19398ed65baaeffe622760a9a6` | WhitelistedCauldronV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1062eb452f8c7a94276437ec1f4aaca9b1495b72` | WhitelistedCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 399 |
| upstream | 55 |
| standard_library | 14 |
| needs_review | 663 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 10 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 4 ambiguous, 28 unmatched
- Matched-own operational status: 10 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: address=3, temporal_name=2, unique_name=5

Zero-match audit list:

- [9649] 2024-02-06_Abracadabra_LockingMultiRewards.pdf
- [9651] 2024-12-16_Abracadabra_BoundSpell_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
