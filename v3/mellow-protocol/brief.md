# Agentic Audit Brief: Mellow Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 32 across 13 audit(s)
- Eligible audit results: 21 (13 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Mellow Protocol (`mellow-protocol`)
- Website: [https://mellow.finance](https://mellow.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, fraxtal, manta-pacific, mantle, optimism, plasma, polygon
- Contract surface: 833 unique implementations (839 raw deployments)
- Coverage basis: 17/49 confirmed own live verified implementations (34.7%); conservative 34.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $200,876,073.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Mellow Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 54 contract row(s) across arbitrum, base, bsc, ethereum, fraxtal, manta-pacific, mantle, optimism, plasma, polygon. Structural roles: 36 core, 11 supporting, 5 unclassified, 2 infra. 15 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 54
- Structural roles: core (36), supporting (11), unclassified (5), infra (2)
- Contract kinds: contract (52), abstract (2)
- Detected standards: erc165 (21), accesscontrol (13), erc1967proxy (10), erc20 (9), erc20permit (4), ownable (4), eip1271 (2), erc4626 (2), multicall (2), chainlinkaggregator (1), ownable2step (1)
- Frameworks: openzeppelin (44), openzeppelin-upgradeable (14), chainlink (1)
- Upgradeable-pattern rows: 15

## Fork Analysis

1 of 435 contracts are derived from known codebases. 434 contracts have no detected origin.

### Forked Contracts

**CLPool** (`0x2ae9df...784c82`, chain 8453)
Origin: peapods-finance (`0xd53398...98c37e`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x02e1c9...4b2675`, chain 1)
- UnnamedContract (`0x034faa...954474`, chain 1)
- UnnamedContract (`0x04e058...3a3db9`, chain 1)
- UnnamedContract (`0x06e16d...6132c2`, chain 1)
- UnnamedContract (`0x07c22b...b14f4e`, chain 1)
- UnnamedContract (`0x09bba6...2a9d59`, chain 1)
- UnnamedContract (`0x0bf7b6...534573`, chain 1)
- UnnamedContract (`0x0faea3...fa14eb`, chain 1)
- UnnamedContract (`0x105413...059aea`, chain 1)
- UnnamedContract (`0x13aebe...e6b4bc`, chain 1)
- UnnamedContract (`0x13c7bc...36aa9f`, chain 1)
- UnnamedContract (`0x156bd0...67d1bd`, chain 1)
- UnnamedContract (`0x1616d3...19b53a`, chain 1)
- UnnamedContract (`0x181cb5...eaa76d`, chain 1)
- UnnamedContract (`0x1ae8c0...f80da2`, chain 1)
- UnnamedContract (`0x1b7c5f...5ba287`, chain 1)
- UnnamedContract (`0x1c5da4...4b421b`, chain 1)
- UnnamedContract (`0x1e13a2...872fa8`, chain 1)
- UnnamedContract (`0x1e6b0f...59384f`, chain 1)
- UnnamedContract (`0x1fcd39...ee54eb`, chain 1)
- UnnamedContract (`0x216b64...8a33df`, chain 1)
- UnnamedContract (`0x219138...90c472`, chain 1)
- UnnamedContract (`0x230e1d...477017`, chain 1)
- UnnamedContract (`0x24fd64...ebcae7`, chain 1)
- UnnamedContract (`0x250917...66b864`, chain 1)
- UnnamedContract (`0x255587...f6bac5`, chain 1)
- UnnamedContract (`0x277c6a...e5ccc5`, chain 1)
- UnnamedContract (`0x279c6c...68eadd`, chain 1)
- UnnamedContract (`0x27a907...3187fc`, chain 1)
- UnnamedContract (`0x27e3e8...a81bb1`, chain 1)
- UnnamedContract (`0x296ef1...7853c4`, chain 1)
- UnnamedContract (`0x2a166a...5363d8`, chain 1)
- UnnamedContract (`0x2c04ab...4cfc23`, chain 1)
- UnnamedContract (`0x2e2747...8eba72`, chain 1)
- UnnamedContract (`0x2ea268...942a36`, chain 1)
- UnnamedContract (`0x31e09f...bf871a`, chain 1)
- UnnamedContract (`0x354822...ee7cc6`, chain 1)
- UnnamedContract (`0x35d482...4f3198`, chain 1)
- UnnamedContract (`0x37be38...9563eb`, chain 1)
- UnnamedContract (`0x383c5f...0cd778`, chain 1)
- UnnamedContract (`0x3883d8...04e4d7`, chain 1)
- UnnamedContract (`0x3d1209...9be97b`, chain 1)
- UnnamedContract (`0x3e80e1...316dc8`, chain 1)
- UnnamedContract (`0x3eb8ed...b4b46d`, chain 1)
- UnnamedContract (`0x40d6bb...ae70d0`, chain 1)
- UnnamedContract (`0x40eb52...1505ab`, chain 1)
- UnnamedContract (`0x41dfc0...7027bf`, chain 1)
- UnnamedContract (`0x441c99...8706d7`, chain 1)
- UnnamedContract (`0x45b3ad...1b3285`, chain 1)
- UnnamedContract (`0x49ecc9...6085b7`, chain 1)
- UnnamedContract (`0x4c4944...6f7373`, chain 1)
- UnnamedContract (`0x4d12fa...566b49`, chain 1)
- UnnamedContract (`0x4d7aab...e20792`, chain 1)
- UnnamedContract (`0x4f5d5a...4a60c2`, chain 1)
- UnnamedContract (`0x4f6bc0...bf1c6d`, chain 1)
- UnnamedContract (`0x501d19...fd1942`, chain 1)
- UnnamedContract (`0x505779...c1ab4b`, chain 1)
- UnnamedContract (`0x515906...aa9873`, chain 1)
- UnnamedContract (`0x51add8...0e4bc0`, chain 1)
- UnnamedContract (`0x52cf3f...e32c31`, chain 1)
- UnnamedContract (`0x53e472...407efb`, chain 1)
- UnnamedContract (`0x5403d6...d43ec6`, chain 1)
- UnnamedContract (`0x552f1c...61469e`, chain 1)
- UnnamedContract (`0x55c982...efb738`, chain 1)
- UnnamedContract (`0x57a013...68627f`, chain 1)
- UnnamedContract (`0x58c4b6...8a1031`, chain 1)
- UnnamedContract (`0x5b2099...80d437`, chain 1)
- UnnamedContract (`0x5dbf92...570a75`, chain 1)
- UnnamedContract (`0x614cb9...e4efab`, chain 1)
- UnnamedContract (`0x624a52...a05b71`, chain 1)
- UnnamedContract (`0x628c05...e5d4ed`, chain 1)
- UnnamedContract (`0x637e65...dac86f`, chain 1)
- UnnamedContract (`0x63f1aa...2b3faa`, chain 1)
- UnnamedContract (`0x6408a5...2e9fe9`, chain 1)
- UnnamedContract (`0x649f34...44f45b`, chain 1)
- UnnamedContract (`0x64d00a...ce0ad5`, chain 1)
- UnnamedContract (`0x655827...4cee2b`, chain 1)
- UnnamedContract (`0x666be6...2424e3`, chain 1)
- UnnamedContract (`0x6955ab...6b7e61`, chain 1)
- UnnamedContract (`0x6a2dd3...c440e1`, chain 1)
- UnnamedContract (`0x6ad30f...987deb`, chain 1)
- UnnamedContract (`0x6c97a3...be62bf`, chain 1)
- UnnamedContract (`0x6d73dd...dedef4`, chain 1)
- UnnamedContract (`0x6ea5a3...60fc5a`, chain 1)
- UnnamedContract (`0x6ec0cb...735c7e`, chain 1)
- UnnamedContract (`0x6f9947...6e62cc`, chain 1)
- UnnamedContract (`0x72926d...0e901c`, chain 1)
- UnnamedContract (`0x749b85...0c0c79`, chain 1)
- UnnamedContract (`0x756299...d918d9`, chain 1)
- UnnamedContract (`0x759d43...c61305`, chain 1)
- UnnamedContract (`0x76001f...d0bb84`, chain 1)
- UnnamedContract (`0x76147a...a58fe0`, chain 1)
- UnnamedContract (`0x78674e...29c151`, chain 1)
- UnnamedContract (`0x78a80d...5ea943`, chain 1)
- UnnamedContract (`0x78ba57...47f449`, chain 1)
- UnnamedContract (`0x7a57d6...233e65`, chain 1)
- UnnamedContract (`0x7a6982...a5d1b1`, chain 1)
- UnnamedContract (`0x7af142...864f52`, chain 1)
- UnnamedContract (`0x7e0e4b...6bec97`, chain 1)
- UnnamedContract (`0x7fea4c...0092d1`, chain 1)
- UnnamedContract (`0x8000a2...3cc1d0`, chain 1)
- UnnamedContract (`0x81379c...76daf0`, chain 1)
- UnnamedContract (`0x81698f...df0af0`, chain 1)
- UnnamedContract (`0x8306be...7b27f2`, chain 1)
- UnnamedContract (`0x83b0da...1ccb1a`, chain 1)
- UnnamedContract (`0x881157...b1ac89`, chain 1)
- UnnamedContract (`0x888d2a...e7fa29`, chain 1)
- UnnamedContract (`0x893aa6...290080`, chain 1)
- UnnamedContract (`0x8a78e6...78c1cd`, chain 1)
- UnnamedContract (`0x8bcb28...1e1c26`, chain 1)
- UnnamedContract (`0x8d8b65...758596`, chain 1)
- UnnamedContract (`0x8e024f...64487e`, chain 1)
- UnnamedContract (`0x8e1b32...0a12d2`, chain 1)
- UnnamedContract (`0x8e6c80...34bf48`, chain 1)
- UnnamedContract (`0x8eb26a...d65261`, chain 1)
- UnnamedContract (`0x90c983...b8cb78`, chain 1)
- UnnamedContract (`0x91d3f3...b59098`, chain 1)
- UnnamedContract (`0x936ae7...f47289`, chain 1)
- UnnamedContract (`0x938947...21b231`, chain 1)
- UnnamedContract (`0x941ee1...b1057a`, chain 1)
- UnnamedContract (`0x9437b2...f72003`, chain 1)
- UnnamedContract (`0x959344...08494b`, chain 1)
- UnnamedContract (`0x973495...ad53ea`, chain 1)
- UnnamedContract (`0x9898c6...5d90c9`, chain 1)
- UnnamedContract (`0x9938a0...ec1da0`, chain 1)
- UnnamedContract (`0x99a069...b49d7e`, chain 1)
- UnnamedContract (`0x9bcee2...d9cf8f`, chain 1)
- UnnamedContract (`0x9c5d82...32d88d`, chain 1)
- UnnamedContract (`0x9d0182...434dac`, chain 1)
- UnnamedContract (`0x9d9926...33b838`, chain 1)
- UnnamedContract (`0xa0f487...8eb68b`, chain 1)
- UnnamedContract (`0xa1e382...fa234a`, chain 1)
- UnnamedContract (`0xa1eeeb...4edd00`, chain 1)
- UnnamedContract (`0xa21aa0...b9cf6a`, chain 1)
- UnnamedContract (`0xa33a06...1b7bc0`, chain 1)
- UnnamedContract (`0xa4e41e...5950a6`, chain 1)
- UnnamedContract (`0xa51365...1dbde6`, chain 1)
- UnnamedContract (`0xa59b36...f1939f`, chain 1)
- UnnamedContract (`0xa62243...e74e64`, chain 1)
- UnnamedContract (`0xa6278b...e7196f`, chain 1)
- UnnamedContract (`0xa6af7d...031b8c`, chain 1)
- UnnamedContract (`0xa8a785...02dd2f`, chain 1)
- UnnamedContract (`0xa8d3de...af4c48`, chain 1)
- UnnamedContract (`0xa9a6d3...c5e78c`, chain 1)
- UnnamedContract (`0xab236d...f6a9c5`, chain 1)
- UnnamedContract (`0xabe20d...8feeb5`, chain 1)
- UnnamedContract (`0xacee4a...2624cc`, chain 1)
- UnnamedContract (`0xae0525...d260dc`, chain 1)
- UnnamedContract (`0xb0d19e...592ea5`, chain 1)
- UnnamedContract (`0xb1653e...4e9335`, chain 1)
- UnnamedContract (`0xb17a8d...bf6d42`, chain 1)
- UnnamedContract (`0xb1b967...720545`, chain 1)
- UnnamedContract (`0xb1e5a8...d1423b`, chain 1)
- UnnamedContract (`0xb2657a...1173c2`, chain 1)
- UnnamedContract (`0xb379bf...ddc80b`, chain 1)
- UnnamedContract (`0xb6451d...d28c52`, chain 1)
- UnnamedContract (`0xb65a57...875ee3`, chain 1)
- UnnamedContract (`0xb8050a...f59da2`, chain 1)
- UnnamedContract (`0xbaab39...ba03ba`, chain 1)
- UnnamedContract (`0xbd4bda...9e7d1e`, chain 1)
- UnnamedContract (`0xbdf7b7...77d972`, chain 1)
- UnnamedContract (`0xbfafc9...73bdd6`, chain 1)
- UnnamedContract (`0xc7e8b0...e9ecb5`, chain 1)
- UnnamedContract (`0xc82405...037635`, chain 1)
- UnnamedContract (`0xc8a65b...f27917`, chain 1)
- UnnamedContract (`0xc95b80...8f14e0`, chain 1)
- UnnamedContract (`0xc9932e...2aec21`, chain 1)
- UnnamedContract (`0xc9aaa4...dfe061`, chain 1)
- UnnamedContract (`0xca86ab...50a1ff`, chain 1)
- UnnamedContract (`0xcc1d39...6bb5c1`, chain 1)
- UnnamedContract (`0xcc4de7...e3298b`, chain 1)
- UnnamedContract (`0xcd3c0f...e8a6c7`, chain 1)
- UnnamedContract (`0xcdfa7e...f49c89`, chain 1)
- UnnamedContract (`0xce4e73...2eb38e`, chain 1)
- UnnamedContract (`0xd0ad0f...236e06`, chain 1)
- UnnamedContract (`0xd0f847...3e1116`, chain 1)
- UnnamedContract (`0xd1547c...9fe08b`, chain 1)
- UnnamedContract (`0xd1f59b...7cb4e4`, chain 1)
- UnnamedContract (`0xd1fab7...3eb35a`, chain 1)
- UnnamedContract (`0xd27ffb...850081`, chain 1)
- UnnamedContract (`0xd3442b...b01c44`, chain 1)
- UnnamedContract (`0xd3bb0b...9212f0`, chain 1)
- UnnamedContract (`0xd662df...6ad1ae`, chain 1)
- UnnamedContract (`0xd72866...4629d5`, chain 1)
- UnnamedContract (`0xd89738...7defe6`, chain 1)
- UnnamedContract (`0xdc9c17...7b2153`, chain 1)
- UnnamedContract (`0xdd008e...63bdc4`, chain 1)
- UnnamedContract (`0xde1313...b50b04`, chain 1)
- UnnamedContract (`0xdf96d5...c38461`, chain 1)
- UnnamedContract (`0xe04dc6...e43f2a`, chain 1)
- UnnamedContract (`0xe12e82...b72657`, chain 1)
- UnnamedContract (`0xe3b023...130ca4`, chain 1)
- UnnamedContract (`0xe3c89d...f3129f`, chain 1)
- UnnamedContract (`0xe4357b...bf125d`, chain 1)
- UnnamedContract (`0xe5afac...78dcc6`, chain 1)
- UnnamedContract (`0xe70732...7a152d`, chain 1)
- UnnamedContract (`0xe86399...a04433`, chain 1)
- UnnamedContract (`0xe88cf9...b8a602`, chain 1)
- UnnamedContract (`0xe92931...54200f`, chain 1)
- UnnamedContract (`0xeb1caf...6c734a`, chain 1)
- UnnamedContract (`0xebd53e...ae3e4a`, chain 1)
- UnnamedContract (`0xec3b20...918c91`, chain 1)
- UnnamedContract (`0xecf3bd...9df55c`, chain 1)
- UnnamedContract (`0xef39c1...050892`, chain 1)
- UnnamedContract (`0xf004a8...eef463`, chain 1)
- UnnamedContract (`0xf3a1c4...e071d4`, chain 1)
- UnnamedContract (`0xf47806...d13607`, chain 1)
- UnnamedContract (`0xf4ea27...a15451`, chain 1)
- UnnamedContract (`0xf7a199...f4c4b3`, chain 1)
- UnnamedContract (`0xf85932...14ecb9`, chain 1)
- UnnamedContract (`0xf86e9c...c860f3`, chain 1)
- UnnamedContract (`0xf91053...36e7f6`, chain 1)
- UnnamedContract (`0xf9d20f...3b4b92`, chain 1)
- UnnamedContract (`0xfa3c9e...881336`, chain 1)
- UnnamedContract (`0xfaa5ab...46aa4a`, chain 1)
- UnnamedContract (`0xfbf0ff...632817`, chain 1)
- UnnamedContract (`0xfd23f9...1ca5b2`, chain 1)
- UnnamedContract (`0xfd778b...b23554`, chain 1)
- UnnamedContract (`0xfe805c...327bee`, chain 1)
- UnnamedContract (`0x1ce9d9...954c92`, chain 10)
- UnnamedContract (`0x22171a...bf7c78`, chain 10)
- UnnamedContract (`0x2790aa...eb0a02`, chain 10)
- UnnamedContract (`0x2fa714...4c0f6f`, chain 10)
- UnnamedContract (`0x319c0d...f48c38`, chain 10)
- UnnamedContract (`0x3c01ec...78d8a5`, chain 10)
- UnnamedContract (`0x478946...c0ba25`, chain 10)
- UnnamedContract (`0x4956d4...1a1287`, chain 10)
- UnnamedContract (`0x49efad...1ba77d`, chain 10)
- UnnamedContract (`0x4dc225...8bcd60`, chain 10)
- UnnamedContract (`0x4e9023...15a1ce`, chain 10)
- UnnamedContract (`0x504821...d26d81`, chain 10)
- UnnamedContract (`0x59aa94...738fe0`, chain 10)
- UnnamedContract (`0x65cd4f...bc3144`, chain 10)
- UnnamedContract (`0x67fe54...7ef502`, chain 10)
- UnnamedContract (`0x6b0e1a...96f8e4`, chain 10)
- UnnamedContract (`0x6fe21c...52fb37`, chain 10)
- UnnamedContract (`0x71d022...10ceb8`, chain 10)
- UnnamedContract (`0x724393...f8ca3a`, chain 10)
- UnnamedContract (`0x734eff...bf9684`, chain 10)
- UnnamedContract (`0x739c53...5cf525`, chain 10)
- UnnamedContract (`0x7db963...5d58be`, chain 10)
- UnnamedContract (`0x84ce89...726f6b`, chain 10)
- UnnamedContract (`0x88cfe6...d54035`, chain 10)
- UnnamedContract (`0x893df2...344829`, chain 10)
- UnnamedContract (`0x89bf65...b94681`, chain 10)
- UnnamedContract (`0x8ac2f9...4c078e`, chain 10)
- UnnamedContract (`0x9128ec...77fb59`, chain 10)
- UnnamedContract (`0x96e7ca...45cfea`, chain 10)
- UnnamedContract (`0x9b0c18...aafe3a`, chain 10)
- UnnamedContract (`0xa01164...d59fd7`, chain 10)
- UnnamedContract (`0xb3ebe2...387fe2`, chain 10)
- UnnamedContract (`0xb54aac...ba8be9`, chain 10)
- UnnamedContract (`0xb55da3...e2dab9`, chain 10)
- UnnamedContract (`0xb5652f...7bd08b`, chain 10)
- UnnamedContract (`0xb71ac9...5c80be`, chain 10)
- UnnamedContract (`0xbf30ff...2dfea4`, chain 10)
- UnnamedContract (`0xc8c77a...5e85fd`, chain 10)
- UnnamedContract (`0xd8d730...d93c2b`, chain 10)
- UnnamedContract (`0xebd531...da777c`, chain 10)
- UnnamedContract (`0xed8b81...7d88ba`, chain 10)
- UnnamedContract (`0xee1bac...3ce1f0`, chain 10)
- UnnamedContract (`0xf0e36e...dd4a56`, chain 10)
- UnnamedContract (`0xfc0973...1ccb3a`, chain 10)
- UnnamedContract (`0x2ae580...fb9e71`, chain 56)
- UnnamedContract (`0x759d43...c61305`, chain 56)
- UnnamedContract (`0x94928c...60df8c`, chain 56)
- UnnamedContract (`0xa5faff...ed22b3`, chain 56)
- UnnamedContract (`0xac3456...4ef10e`, chain 56)
- UnnamedContract (`0xc78124...16dda3`, chain 56)
- UnnamedContract (`0xc8e046...7a207d`, chain 56)
- UnnamedContract (`0xe47eac...775e47`, chain 56)
- UnnamedContract (`0x0721ed...cb486f`, chain 137)
- UnnamedContract (`0x0877c0...ec1f38`, chain 137)
- UnnamedContract (`0x0b45d7...ee315e`, chain 137)
- UnnamedContract (`0x0dd522...fe97ff`, chain 137)
- UnnamedContract (`0x13b0ea...29f7cc`, chain 137)
- UnnamedContract (`0x1cb3cb...b3c12b`, chain 137)
- UnnamedContract (`0x1e63e3...79af8a`, chain 137)
- UnnamedContract (`0x208e62...450075`, chain 137)
- UnnamedContract (`0x254652...cdbaaf`, chain 137)
- UnnamedContract (`0x27aebf...ec5836`, chain 137)
- UnnamedContract (`0x61d8f8...a9c27a`, chain 137)
- UnnamedContract (`0x624328...c951f0`, chain 137)
- UnnamedContract (`0x65dc71...003607`, chain 137)
- UnnamedContract (`0x660933...0e6cce`, chain 137)
- UnnamedContract (`0x767877...8478e8`, chain 137)
- UnnamedContract (`0x82aa4d...664fea`, chain 137)
- UnnamedContract (`0x8c528f...7ddf5e`, chain 137)
- UnnamedContract (`0x8ff314...3799c6`, chain 137)
- UnnamedContract (`0x986998...80812b`, chain 137)
- UnnamedContract (`0x9ff527...714b33`, chain 137)
- UnnamedContract (`0xa1251e...b5dcec`, chain 137)
- UnnamedContract (`0xa9212e...b99728`, chain 137)
- UnnamedContract (`0xb1942d...266562`, chain 137)
- UnnamedContract (`0xb1f697...beeb2a`, chain 137)
- UnnamedContract (`0xb37600...6cb516`, chain 137)
- UnnamedContract (`0xc12885...d21f37`, chain 137)
- UnnamedContract (`0xca7e70...d6c66d`, chain 137)
- UnnamedContract (`0xd3d0e8...ae4e1f`, chain 137)
- UnnamedContract (`0xd4d836...249f57`, chain 137)
- UnnamedContract (`0xe06251...e7edcf`, chain 137)
- UnnamedContract (`0xf5eaa5...142280`, chain 137)
- UnnamedContract (`0xf75d5b...647c93`, chain 137)
- UnnamedContract (`0xf9856a...9563fd`, chain 137)
- UnnamedContract (`0x30a7c7...df06bb`, chain 169)
- UnnamedContract (`0x5fed9c...e3f757`, chain 169)
- UnnamedContract (`0x87c7ae...a465b5`, chain 169)
- UnnamedContract (`0x9c807f...a87d78`, chain 169)
- UnnamedContract (`0x9cd45b...03f61f`, chain 169)
- UnnamedContract (`0x9d9645...f1870a`, chain 169)
- UnnamedContract (`0xda0b90...f8f9ed`, chain 169)
- UnnamedContract (`0xdfcd6a...3ece67`, chain 169)
- UnnamedContract (`0x24dd1e...c703df`, chain 252)
- UnnamedContract (`0x35d6c8...57a7df`, chain 252)
- UnnamedContract (`0xbe8e7c...fd051d`, chain 252)
- UnnamedContract (`0xd2d2a9...98b34f`, chain 252)
- UnnamedContract (`0xd6dcc1...437896`, chain 252)
- UnnamedContract (`0xf32fd7...ca9676`, chain 252)
- UnnamedContract (`0x20157d...7b5ad2`, chain 8453)
- UnnamedContract (`0x28d8d6...678750`, chain 8453)
- UnnamedContract (`0x2a0881...29d700`, chain 8453)
- UnnamedContract (`0x2f4f2d...03d4fa`, chain 8453)
- UnnamedContract (`0x47ca96...3d7348`, chain 8453)
- UnnamedContract (`0x4d6997...9b5606`, chain 8453)
- UnnamedContract (`0x4e829f...9cba02`, chain 8453)
- UnnamedContract (`0x4e962b...b3e778`, chain 8453)
- UnnamedContract (`0x53017a...40323d`, chain 8453)
- UnnamedContract (`0x5585d8...6c5eb8`, chain 8453)
- UnnamedContract (`0x62f607...9b0ce5`, chain 8453)
- UnnamedContract (`0x6b0e1a...96f8e4`, chain 8453)
- UnnamedContract (`0x6e4b30...83a73d`, chain 8453)
- UnnamedContract (`0x70a5e5...d2c8c2`, chain 8453)
- UnnamedContract (`0x70acdf...1cbae1`, chain 8453)
- UnnamedContract (`0x71d022...10ceb8`, chain 8453)
- UnnamedContract (`0x731f2c...d3c7a7`, chain 8453)
- UnnamedContract (`0x792930...ffdd60`, chain 8453)
- UnnamedContract (`0x82321f...62e2d0`, chain 8453)
- UnnamedContract (`0x861a29...5e1b5f`, chain 8453)
- UnnamedContract (`0x8741d5...dc60f5`, chain 8453)
- UnnamedContract (`0x893df2...344829`, chain 8453)
- UnnamedContract (`0x8bd5e3...66fb8a`, chain 8453)
- UnnamedContract (`0x919ae9...9e7a8a`, chain 8453)
- UnnamedContract (`0x940d74...64a833`, chain 8453)
- UnnamedContract (`0x96e7ca...45cfea`, chain 8453)
- UnnamedContract (`0x9785ef...7b3c1b`, chain 8453)
- UnnamedContract (`0x988702...709fd9`, chain 8453)
- UnnamedContract (`0x9b6d95...67a0dd`, chain 8453)
- UnnamedContract (`0x9ec3d1...2c789b`, chain 8453)
- UnnamedContract (`0xa46f75...52cb7a`, chain 8453)
- UnnamedContract (`0xa53e78...07ace1`, chain 8453)
- UnnamedContract (`0xaafafd...bff8ad`, chain 8453)
- UnnamedContract (`0xae8cde...1c322e`, chain 8453)
- UnnamedContract (`0xafb624...65ba88`, chain 8453)
- UnnamedContract (`0xb17d90...15b163`, chain 8453)
- UnnamedContract (`0xb24d94...a1c947`, chain 8453)
- UnnamedContract (`0xb2cc22...59dc59`, chain 8453)
- UnnamedContract (`0xbdb39e...e99c14`, chain 8453)
- UnnamedContract (`0xcba8f9...233d85`, chain 8453)
- UnnamedContract (`0xd17613...1f5a71`, chain 8453)
- UnnamedContract (`0xd43058...a23f83`, chain 8453)
- UnnamedContract (`0xd9ef98...c3d3d9`, chain 8453)
- UnnamedContract (`0xdc7ead...df2c0d`, chain 8453)
- UnnamedContract (`0xde5ff8...ad1368`, chain 8453)
- UnnamedContract (`0xe84637...e90ec7`, chain 8453)
- UnnamedContract (`0xe9f4eb...a882aa`, chain 8453)
- UnnamedContract (`0xed8b81...7d88ba`, chain 8453)
- UnnamedContract (`0xf0e36e...dd4a56`, chain 8453)
- UnnamedContract (`0xf1f6c3...67fbc3`, chain 8453)
- UnnamedContract (`0xf5d860...b70799`, chain 8453)
- UnnamedContract (`0xfecdcc...f48410`, chain 8453)
- UnnamedContract (`0x0a9745...00d000`, chain 9745)
- UnnamedContract (`0x316903...9e17d8`, chain 9745)
- UnnamedContract (`0x769673...227dae`, chain 9745)
- UnnamedContract (`0x841e21...1ef9e0`, chain 9745)
- UnnamedContract (`0xa330cc...28b6e2`, chain 9745)
- UnnamedContract (`0xad1b3e...30250c`, chain 9745)
- UnnamedContract (`0xbbf940...f943bb`, chain 9745)
- UnnamedContract (`0xc724d3...3b3a0b`, chain 9745)
- UnnamedContract (`0x022a33...33d7d4`, chain 42161)
- UnnamedContract (`0x222fa9...97cdb2`, chain 42161)
- UnnamedContract (`0x403307...f496d1`, chain 42161)
- UnnamedContract (`0xda1674...b52a7c`, chain 42161)
- AaveVault (`0x3af5e4...8d23ae`, chain 137)
- AaveVaultGovernance (`0x75e858...181bb0`, chain 1)
- ChainlinkOracle (`0x45ce8c...411130`, chain 137)
- Compounder (`0x69fed6...05e7b4`, chain 8453)
- CowswapValidator (`0xd2f34d...f45903`, chain 1)
- CreateStrategyHelper (`0x5b1b1a...db4029`, chain 10)
- CurveValidator (`0xbbfa3f...66eff4`, chain 1)
- DepositWrapper (`0x231002...b9ff64`, chain 1)
- ENA (`0x57e114...1e6061`, chain 1)
- ERC20VaultGovernance (`0x05164e...e930a4`, chain 137)
- FarmWrapper (`0x0fd566...c79655`, chain 1)
- GnosisSafeProxy (`0x002910...e6695e`, chain 1)
- GnosisSafeProxy (`0x175427...5d586e`, chain 169)
- HStrategy (`0x158b75...7030a8`, chain 137)
- Initializer (`0x39c62c...f2060c`, chain 1)
- LpWrapper (`0x09636b...a6ad43`, chain 8453)
- MellowOFT (`0x05e979...957c84`, chain 1)
- MellowOFTAdapter (`0x24e6d6...a2bbba`, chain 252)
- Migrator (`0x643ed3...82beab`, chain 1)
- OracleSubmitter (`0x000000...81907a`, chain 1)
- PulseStrategy (`0x2683b3...a868ed`, chain 1)
- PulseStrategyModule (`0x734eff...bf9684`, chain 8453)
- PulseVeloBotLazy (`0x4b7c2c...beffef`, chain 10)
- SafeProxy (`0x0cf4a2...eeb9f4`, chain 1)
- SafeProxy (`0x0cf4a2...eeb9f4`, chain 56)
- SafeProxy (`0x3f31b8...bb6235`, chain 56)
- SourceCore (`0x013d1e...269afb`, chain 252)
- SourceHelper (`0x474dd6...53ba69`, chain 169)
- StakedUSDeV2 (`0x9d39a5...7a3497`, chain 1)
- StakingRewards (`0x0a6450...848914`, chain 8453)
- TBTC (`0x18084f...d93a88`, chain 1)
- TokenProxy (`0x57b946...58d26c`, chain 1)
- TransparentUpgradeableProxy (`0x004e9c...350568`, chain 1)
- TransparentUpgradeableProxy (`0x08f39b...152547`, chain 1)
- TransparentUpgradeableProxy (`0x20157d...7b5ad2`, chain 1)
- TransparentUpgradeableProxy (`0x3a828c...45b4c7`, chain 1)
- TransparentUpgradeableProxy (`0x48e69c...cce1c7`, chain 1)
- TransparentUpgradeableProxy (`0x5e362e...85430b`, chain 1)
- TransparentUpgradeableProxy (`0x64047d...3f877f`, chain 1)
- TransparentUpgradeableProxy (`0x7f43fd...9ce444`, chain 1)
- TransparentUpgradeableProxy (`0x82f510...9e0b26`, chain 1)
- TransparentUpgradeableProxy (`0xc65433...c47bd8`, chain 1)
- UniV2Validator (`0x006d45...097708`, chain 137)
- UniV3Oracle (`0x1a4071...74cfcf`, chain 1)
- VeloDeployFactory (`0x5b1b1a...db4029`, chain 8453)
- VeloDepositWithdrawModule (`0x28c75f...d70043`, chain 8453)
- WBTC (`0x2260fa...c2c599`, chain 1)
- WhitelistedEthWrapper (`0xfd4a49...56504e`, chain 1)
- WithdrawalQueue (`0x88d282...58bb2b`, chain 252)
- WstETH (`0x7f39c5...5e2ca0`, chain 1)
- YearnVault (`0x9c95ec...c646ce`, chain 1)
- YearnVaultGovernance (`0x2bc5f6...43c127`, chain 137)

## Contract Surface Quality

- Indexed contracts: 54; live-surface contracts included: 54 (53 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 429/702 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 17/49 (34.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 429 own, 30 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 374 discovered implementations excluded (30 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 44
- Deployed-live implementations: 429 of 833 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 17/49
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 380
- Unique implementations: 833
- Raw deployments: 839
- Audits discovered: 21 (21 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 8 fresh, 8 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 19 match-unverified
- Tier 1 coverage: 26.5% (ChainSecurity, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 13 | 26.5% | 2025-02 |
| BlockSec | Tier 2 | 4 | 8.2% | 2022-08 |
| StateMind | Tier 2 | 3 | 6.1% | 2025-01 |
| N/A | Tier 2 | 2 | 4.1% | 2025-11 |
| Decurity | Tier 2 | 1 | 2.0% | 2025-03 |
| Nethermind | Tier 2 | 1 | 2.0% | 2026-03 |
| Pessimistic | Tier 2 | 1 | 2.0% | 2022-12 |
| Sherlock | Tier 1 | 1 | 2.0% | 2025-07 |
| yAudit | Tier 2 | 1 | 2.0% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveVault | unknown | project_anchor | own_supporting | 0 | polygon | unit-247087 | `0x3af5e4...8d23ae` | ✅ Audited |
| AaveVaultGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246847 | `0x75e858...181bb0` | ✅ Audited |
| ChainlinkOracle | unknown | project_anchor | own_supporting | 0 | polygon | unit-247088 | `0x45ce8c...411130` | ✅ Audited |
| CowswapValidator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246966 | `0xd2f34d...f45903` | ✅ Audited |
| CurveValidator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246941 | `0xbbfa3f...66eff4` | ✅ Audited |
| DepositWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246751 | `0x231002...b9ff64` | ✅ Audited |
| DVV | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247497 | `0x5e362e...85430b` | ✅ Audited |
| HStrategy | unknown | project_anchor | own_supporting | 0 | polygon | unit-247075 | `0x158b75...7030a8` | ✅ Audited |
| Initializer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246778 | `0x39c62c...f2060c` | ✅ Audited |
| Migrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246827 | `0x643ed3...82beab` | ✅ Audited |
| OracleSubmitter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246715 | `0x000000...81907a` | ✅ Audited |
| TargetCore | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247500 | `0x48e69c...cce1c7` | ✅ Audited |
| UniV2Validator | unknown | project_anchor | own_supporting | 0 | polygon | unit-247065 | `0x006d45...097708` | ✅ Audited |
| UniV3Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246738 | `0x1a4071...74cfcf` | ✅ Audited |
| WhitelistedEthWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247012 | `0xfd4a49...56504e` | ✅ Audited |
| YearnVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246900 | `0x9c95ec...c646ce` | ✅ Audited |
| YearnVaultGovernance | unknown | project_anchor | own_supporting | 0 | polygon | unit-247085 | `0x2bc5f6...43c127` | ✅ Audited |

### ⚠️ Verified + Unaudited (407)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3TreasuryConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x91eda2...03c8ca` | ⚠️ Unaudited |
| AcreMultiAssetVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a6e0d...afd18d` | ⚠️ Unaudited |
| AddressesWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d0049...6b0f77` | ⚠️ Unaudited |
| AddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xab684a...29aeb3` | ⚠️ Unaudited |
| AggregatorV3wstEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3eb81a...392939` | ⚠️ Unaudited |
| AllowAllValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a563...511bc9` | ⚠️ Unaudited |
| AssetPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21b86f...d28d5d` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe008...e33fe1` | ⚠️ Unaudited |
| AuctionBidder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x773a4c...37b3c4` | ⚠️ Unaudited |
| AuraOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f8211...e6f8ca` | ⚠️ Unaudited |
| AuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x548f00...bc9f0b` | ⚠️ Unaudited |
| AuraVaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b81d6...8dba01` | ⚠️ Unaudited |
| BalancerVaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe55351...fe4ae3` | ⚠️ Unaudited |
| Bank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65fbae...9d9fc6` | ⚠️ Unaudited |
| BasePulseStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c896d...892f14` | ⚠️ Unaudited |
| BasePulseStrategyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c59aa...ae2cb5` | ⚠️ Unaudited |
| BasePulseStrategyUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94ab17...fe046f` | ⚠️ Unaudited |
| BasicRedeemHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000...dc5912` | ⚠️ Unaudited |
| BasicShareManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000...c8725d` | ⚠️ Unaudited |
| BatchCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0347db...9e5e1f` | ⚠️ Unaudited |
| BatchedPhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8e50...f831ca` | ⚠️ Unaudited |
| BeaconAuthorization | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x632c2d...6e83e8` | ⚠️ Unaudited |
| BeaconBackportRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fec9c...ffbfff` | ⚠️ Unaudited |
| BeaconBackportRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c0fb...f07647` | ⚠️ Unaudited |
| BeaconDkg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x024a69...2abd84` | ⚠️ Unaudited |
| BeaconDkgValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4edc83...653f94` | ⚠️ Unaudited |
| BeaconInactivity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67a26f...941ec0` | ⚠️ Unaudited |
| BeaconRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf5180...f5f491` | ⚠️ Unaudited |
| BeaconRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b15fe...e68ff0` | ⚠️ Unaudited |
| BimaBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0de02...8c92c1` | ⚠️ Unaudited |
| BimaCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x227e93...2380ab` | ⚠️ Unaudited |
| BimaPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42ad68...523d67` | ⚠️ Unaudited |
| BimaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49ce2e...faef15` | ⚠️ Unaudited |
| BimaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4bbfb...126799` | ⚠️ Unaudited |
| BimaWrappedCollateralFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76de9b...129dbf` | ⚠️ Unaudited |
| BitcoinDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b94f...0f4d32` | ⚠️ Unaudited |
| BitcoinRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f2766...4839a5` | ⚠️ Unaudited |
| BitmaskVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000...6de339` | ⚠️ Unaudited |
| BLS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x655205...e020cd` | ⚠️ Unaudited |
| BondedECDSAKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9e838...22c105` | ⚠️ Unaudited |
| BondedECDSAKeepFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a7cd8...35c5d7` | ⚠️ Unaudited |
| BondedSortitionPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c46f4...2ede4f` | ⚠️ Unaudited |
| BorrowerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87fed3...cdfaec` | ⚠️ Unaudited |
| brBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2ec37d...8f6646` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x265054...2e2ec5` | ⚠️ Unaudited |
| BridgeFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0e628a...aa5913` | ⚠️ Unaudited |
| BridgeGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa94dd6...0778ee` | ⚠️ Unaudited |
| BridgeGovernanceParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4b16...0d3443` | ⚠️ Unaudited |
| BridgeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb83248...b8f957` | ⚠️ Unaudited |
| brVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1419b4...0e3386` | ⚠️ Unaudited |
| BurnableTokenizedShareManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...33d7b6` | ⚠️ Unaudited |
| BurnerRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00ba6e...33651d` | ⚠️ Unaudited |
| CCIPPeer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17ea3d...908ee1` | ⚠️ Unaudited |
| CelerMinterReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c3f1f...465c95` | ⚠️ Unaudited |
| Claimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25024a...fb5802` | ⚠️ Unaudited |
| CLPool | unknown | project_anchor | own_supporting | 0 | base | unit-247256 | `0x2ae9df...784c82` | ⚠️ Unaudited |
| Collector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x240fbe...bfe312` | ⚠️ Unaudited |
| CollectorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x331348...8a2f18` | ⚠️ Unaudited |
| CollectorV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db672...905c10` | ⚠️ Unaudited |
| Compounder | unknown | project_anchor | own_supporting | 0 | base | unit-247344 | `0x69fed6...05e7b4` | ⚠️ Unaudited |
| Consensus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000...dfd6aa` | ⚠️ Unaudited |
| ConstantAggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c1418...de3d09` | ⚠️ Unaudited |
| ContractRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07648b...d274c7` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca0641...febeb7` | ⚠️ Unaudited |
| Core | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x30ce7b...70e090` | ⚠️ Unaudited |
| CoreVaultsCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x551233...f6bec6` | ⚠️ Unaudited |
| CoveragePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d7b62...6d811a` | ⚠️ Unaudited |
| CoveragePoolBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22428b...2ee39b` | ⚠️ Unaudited |
| CreateStrategyHelper | unknown | project_anchor | own_supporting | 0 | optimism | unit-247032 | `0x5b1b1a...db4029` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c110...db072d` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674...69ebbb` | ⚠️ Unaudited |
| DataCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9135be...796216` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bede1...fdb68c` | ⚠️ Unaudited |
| DefaultBondModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x204043...1a3096` | ⚠️ Unaudited |
| DefaultBondStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x378f3a...b2cb62` | ⚠️ Unaudited |
| DefaultBondTvlModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48f758...b3c03b` | ⚠️ Unaudited |
| DefaultCollateralFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3f95a7...df16d9` | ⚠️ Unaudited |
| DefaultProxyImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x538459...694828` | ⚠️ Unaudited |
| DefaultStakerRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x460e5e...6b9c09` | ⚠️ Unaudited |
| DelayRedeemRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x720081...eb859d` | ⚠️ Unaudited |
| Deposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac184...c04dc5` | ⚠️ Unaudited |
| DepositFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87effe...0faf8b` | ⚠️ Unaudited |
| DepositFunding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d128...ccd125` | ⚠️ Unaudited |
| DepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5240b3...72b09c` | ⚠️ Unaudited |
| DepositLiquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca506...081a56` | ⚠️ Unaudited |
| DepositRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817c0f...372323` | ⚠️ Unaudited |
| DepositStates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8695ff...ae1c80` | ⚠️ Unaudited |
| DepositSweep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x392635...ac9b95` | ⚠️ Unaudited |
| DepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad83d...212517` | ⚠️ Unaudited |
| DineroTreasuryConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x75ec06...493c70` | ⚠️ Unaudited |
| directBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11964b...09954b` | ⚠️ Unaudited |
| DirectBTCMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x704a2f...9481ee` | ⚠️ Unaudited |
| DirectStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a5d3...0eef57` | ⚠️ Unaudited |
| DistributionOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacaace...aa6bc3` | ⚠️ Unaudited |
| DLCBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25be3e...76994c` | ⚠️ Unaudited |
| DLCManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24b042...ca4a76` | ⚠️ Unaudited |
| DonationVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa544b7...50e672` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84...057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca0...8f1483` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083...cc5523` | ⚠️ Unaudited |
| DummyReporter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5475ae...e469ba` | ⚠️ Unaudited |
| DummyReporterTheoriq | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ce9e5...c3b290` | ⚠️ Unaudited |
| ECDSABackportRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ca1a...c036fa` | ⚠️ Unaudited |
| ECDSABackportRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82ab5f...c76108` | ⚠️ Unaudited |
| EcdsaDkgValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0125c8...d4ef27` | ⚠️ Unaudited |
| EcdsaInactivity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8263ef...46f764` | ⚠️ Unaudited |
| ECDSARewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5ac5a...ffca88` | ⚠️ Unaudited |
| ECDSARewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b9e48...91bbb3` | ⚠️ Unaudited |
| ECDSARewardsDistributorEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77ec9...952042` | ⚠️ Unaudited |
| ECDSARewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037a91...5efb84` | ⚠️ Unaudited |
| EigenLayerVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...e89b81` | ⚠️ Unaudited |
| EigenLayerWstETHAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb91f89...d563d6` | ⚠️ Unaudited |
| ENA | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246810 | `0x57e114...1e6061` | ⚠️ Unaudited |
| ENAOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a327e...86b683` | ⚠️ Unaudited |
| ERC20RootVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00ac9d...15ec07` | ⚠️ Unaudited |
| ERC20RootVaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x052485...4e73f8` | ⚠️ Unaudited |
| ERC20RootVaultHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14034a...fe0e30` | ⚠️ Unaudited |
| ERC20TvlModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca60f4...7bd638` | ⚠️ Unaudited |
| ERC20Validator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02b771...f55d63` | ⚠️ Unaudited |
| ERC20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a7f0...e68447` | ⚠️ Unaudited |
| ERC20VaultGovernance | unknown | project_anchor | own_supporting | 0 | polygon | unit-247066 | `0x05164e...e930a4` | ⚠️ Unaudited |
| ERC20Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000...224a08` | ⚠️ Unaudited |
| ExporterDataCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ad64e...197917` | ⚠️ Unaudited |
| ExternalRequestsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36c9b5...76c043` | ⚠️ Unaudited |
| ExternalRequestsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f4d4...dfc872` | ⚠️ Unaudited |
| ExternalRequestsManagerBetaV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052b1c...0fda1b` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000...c4467f` | ⚠️ Unaudited |
| FarmWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246727 | `0x0fd566...c79655` | ⚠️ Unaudited |
| FBTCProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a30f...85b1ae` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000...238648` | ⚠️ Unaudited |
| FeeRebateToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf3fff...f94789` | ⚠️ Unaudited |
| FEOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5250ae...232453` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde2...77a91a` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa...0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088247...57fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a...3778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a...4cbdcf` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FlashLoanArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ffc3a...f0d87b` | ⚠️ Unaudited |
| Fraud | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51bbef...ba3559` | ⚠️ Unaudited |
| FundingScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c70c...93d063` | ⚠️ Unaudited |
| GasPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf153...ae8b89` | ⚠️ Unaudited |
| GasPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c0a34...e46ab3` | ⚠️ Unaudited |
| GearboxDepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d711c...e4712a` | ⚠️ Unaudited |
| GearboxHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11ab30...a32c41` | ⚠️ Unaudited |
| GearboxOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07cb25...fbe26c` | ⚠️ Unaudited |
| GearboxRootVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f2260...bfd16e` | ⚠️ Unaudited |
| GearboxVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1802cd...d31ed1` | ⚠️ Unaudited |
| GearboxVaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x131101...9ca7e9` | ⚠️ Unaudited |
| GearValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7d0b2...aa74a5` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e93...845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e...83c275` | ⚠️ Unaudited |
| GGVOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceed1b...834ea4` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247504 | `0x002910...e6695e` | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2e9391...06be54` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247164 | `0x175427...5d586e` | ⚠️ Unaudited |
| GovernanceTester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87f1e7...f57eae` | ⚠️ Unaudited |
| GrantStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02612d...8a3db3` | ⚠️ Unaudited |
| HStrategyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadf65e...b4e88e` | ⚠️ Unaudited |
| Hypernative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e856c...31c52d` | ⚠️ Unaudited |
| IBTC | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247503 | `0x20157d...7b5ad2` | ⚠️ Unaudited |
| IncentiveVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x558741...ddb7a8` | ⚠️ Unaudited |
| InchDepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd64dee...d4cd44` | ⚠️ Unaudited |
| InstantFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x705112...5f0533` | ⚠️ Unaudited |
| IsSafeWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde14e0...c257a8` | ⚠️ Unaudited |
| KeepBonding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27321f...89a3d5` | ⚠️ Unaudited |
| KeepFactorySelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29fa8f...78261c` | ⚠️ Unaudited |
| KeepRandomBeaconOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7084...fcf9de` | ⚠️ Unaudited |
| KeepRandomBeaconOperatorStatistics | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3975ce...5718e7` | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x099597...599eab` | ⚠️ Unaudited |
| KeepTokenGeyserRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06b586...13fd7d` | ⚠️ Unaudited |
| KeepVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf00da...016c87` | ⚠️ Unaudited |
| KyberHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b0f7f...f0b86c` | ⚠️ Unaudited |
| KyberVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e2bc...35c2dc` | ⚠️ Unaudited |
| KyberVaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x681e36...e24c08` | ⚠️ Unaudited |
| LidoDepositHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...b7317c` | ⚠️ Unaudited |
| LidoTreasuryConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb63a5e...b048a7` | ⚠️ Unaudited |
| LightRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x836cdf...35896e` | ⚠️ Unaudited |
| LightRelayMaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca2f6...efa3c8` | ⚠️ Unaudited |
| LiquidationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d3b9e...6b73ba` | ⚠️ Unaudited |
| Locks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c84a8...d0de40` | ⚠️ Unaudited |
| LPOptimiserStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ad66...369891` | ⚠️ Unaudited |
| LPRewardsKEEPETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a5f2...9d6f44` | ⚠️ Unaudited |
| LPRewardsTBTCSaddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78aa83...482edd` | ⚠️ Unaudited |
| LPRewardsTBTCv2Saddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad9e8...03f76d` | ⚠️ Unaudited |
| LpWrapper | unknown | project_anchor | own_supporting | 0 | base | unit-247231 | `0x09636b...a6ad43` | ⚠️ Unaudited |
| LStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c1fa7...6c055d` | ⚠️ Unaudited |
| LStrategyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d3a5...0ef651` | ⚠️ Unaudited |
| LUSDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f15b8...a41535` | ⚠️ Unaudited |
| MaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x535e01...40140f` | ⚠️ Unaudited |
| ManagedRatiosOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1437dc...5681e2` | ⚠️ Unaudited |
| ManagedValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd0a7...86c872` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe05de6...cc6df2` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11...674335` | ⚠️ Unaudited |
| MellowAccountV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000...664482` | ⚠️ Unaudited |
| MellowOFT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246721 | `0x05e979...957c84` | ⚠️ Unaudited |
| MellowOFTAdapter | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247186 | `0x24e6d6...a2bbba` | ⚠️ Unaudited |
| MellowOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0667d0...d73447` | ⚠️ Unaudited |
| MellowStakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5377e3...9cc461` | ⚠️ Unaudited |
| MellowSymbioticVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247498 | 2 deployments: ethereum `0x04e058...3a3db9`; ethereum `0x08f39b...152547` | ⚠️ Unaudited |
| MellowVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0104bb...f82911` | ⚠️ Unaudited |
| MellowVaultCompat | unknown | project_anchor | own_supporting | 5 | ethereum | unit-247499 (5 proxies) | 6 deployments: ethereum `0x09bba6...2a9d59`; ethereum `0x3a828c...45b4c7`; ethereum `0x64047d...3f877f`; ethereum `0x7f43fd...9ce444`; ethereum `0x82f510...9e0b26`; ethereum `0xc65433...c47bd8` | ⚠️ Unaudited |
| MellowVaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02c4da...4d926f` | ⚠️ Unaudited |
| Members | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640...107ac5` | ⚠️ Unaudited |
| MezoAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e1d7e...e2b5df` | ⚠️ Unaudited |
| MezoBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1af817...27d1f5` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a20...3669ea` | ⚠️ Unaudited |
| MovingFunds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x310667...d42123` | ⚠️ Unaudited |
| MPondLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b1f6a...2c617c` | ⚠️ Unaudited |
| MStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f2641...ca41f8` | ⚠️ Unaudited |
| msUSDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcca553...b37472` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba610d...8df947` | ⚠️ Unaudited |
| MultiCollateralHintHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a6298...3dd490` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42186e...0dcf6b` | ⚠️ Unaudited |
| MultiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00464c...95f462` | ⚠️ Unaudited |
| MUSDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb844a...fdb541` | ⚠️ Unaudited |
| NetworkMiddleware | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f8625...a60b83` | ⚠️ Unaudited |
| NetworkRestakeDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02129f...a3b27c` | ⚠️ Unaudited |
| NoOp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5b85...590daf` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075108...1d6363` | ⚠️ Unaudited |
| OHMOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87e92a...141447` | ⚠️ Unaudited |
| OlympusConcentratedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e7900...326dfe` | ⚠️ Unaudited |
| OlympusStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ec09d...078cf7` | ⚠️ Unaudited |
| OmniCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d8c57...89b4de` | ⚠️ Unaudited |
| OnDemandSPV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1531b6...a4b154` | ⚠️ Unaudited |
| OneSidedDepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2ef05...2cac6b` | ⚠️ Unaudited |
| OperatorSpecificDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x250798...5cc5c2` | ⚠️ Unaudited |
| OptStrategyBotV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2890b9...213cb4` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000...83f062` | ⚠️ Unaudited |
| OracleFactory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246834 | `0x686f66...5e351f` | ⚠️ Unaudited |
| OracleHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...b55e35` | ⚠️ Unaudited |
| OutsourceDepositLogging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478409...ec29ed` | ⚠️ Unaudited |
| PancakeFeesCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6bf0b...4527e2` | ⚠️ Unaudited |
| PancakeSwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31cbfa...d4efd9` | ⚠️ Unaudited |
| PancakeSwapMerklHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c07b3...3cf04e` | ⚠️ Unaudited |
| PancakeSwapMerklPulseStrategyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x215795...ffe2d0` | ⚠️ Unaudited |
| PancakeSwapMerklVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dd38e...7b7517` | ⚠️ Unaudited |
| PancakeSwapMerklVaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x459d21...95fb33` | ⚠️ Unaudited |
| PancakeSwapPulseStrategyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x11669e...9b8df7` | ⚠️ Unaudited |
| PancakeSwapPulseV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bc600...2b5ca8` | ⚠️ Unaudited |
| PancakeSwapVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ef878...90f4e0` | ⚠️ Unaudited |
| PancakeSwapVaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0810b6...9b8cb6` | ⚠️ Unaudited |
| Payment | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x552b0c...42fa05` | ⚠️ Unaudited |
| PhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x964d45...2ec157` | ⚠️ Unaudited |
| PlainTransferEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa3ef...3666c0` | ⚠️ Unaudited |
| PodOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ac774...e76f52` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b459c...ddeafd` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b248f...9cbff2` | ⚠️ Unaudited |
| ProtocolGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00d915...428d05` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037517...ecba5e` | ⚠️ Unaudited |
| Puller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d9ed...c74a95` | ⚠️ Unaudited |
| PulseStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246757 | `0x2683b3...a868ed` | ⚠️ Unaudited |
| PulseStrategyModule | unknown | project_anchor | own_supporting | 0 | base | unit-247368 | `0x734eff...bf9684` | ⚠️ Unaudited |
| PulseStrategyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5050b4...7e9611` | ⚠️ Unaudited |
| PulseStrategyV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x072974...cd5aea` | ⚠️ Unaudited |
| PulseVeloBotLazy | unknown | project_anchor | own_supporting | 0 | optimism | unit-247027 | `0x4b7c2c...beffef` | ⚠️ Unaudited |
| RandomBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5499f5...e3d80b` | ⚠️ Unaudited |
| RandomBeaconChaosnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf23fc1...b0294a` | ⚠️ Unaudited |
| RandomBeaconGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0a308...cb1c63` | ⚠️ Unaudited |
| RatiosStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aa61e...f54ad6` | ⚠️ Unaudited |
| RebalanceWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe9d76...debdf3` | ⚠️ Unaudited |
| Redeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6882ae...57497d` | ⚠️ Unaudited |
| RedeemQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...1903c1` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d807e...a25914` | ⚠️ Unaudited |
| RedemptionScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0972e6...adb887` | ⚠️ Unaudited |
| RedemptionWatchtower | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb8df0a...38e6d3` | ⚠️ Unaudited |
| RedirectingDepositHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000...ef1180` | ⚠️ Unaudited |
| ReimbursementPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369fce...17f9cc` | ⚠️ Unaudited |
| Reservoir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf911f2...22bbc3` | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf1762...1649df` | ⚠️ Unaudited |
| Restaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04f744...b7b5c0` | ⚠️ Unaudited |
| RETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc839b7...069bad` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a07b...f39f7a` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29b06c...50a415` | ⚠️ Unaudited |
| RiskManagerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2355d7...f62b30` | ⚠️ Unaudited |
| RlpPriceAggregatorV3Interface | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e35e7...474ecb` | ⚠️ Unaudited |
| RlpPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03f75a...fff85c` | ⚠️ Unaudited |
| RlpUpOnlyPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x093285...ab0dc6` | ⚠️ Unaudited |
| RockXETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3376eb...61514a` | ⚠️ Unaudited |
| RockXRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3774af...4ba818` | ⚠️ Unaudited |
| RockXRestaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x351eea...69a098` | ⚠️ Unaudited |
| RockXStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x02e3e2...af25ea` | ⚠️ Unaudited |
| rstETHPlusTestCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e8194...f22a0d` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247501 | `0x0cf4a2...eeb9f4` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | bsc | unit-247506 | `0x3f31b8...bb6235` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-247205 | `0x0cf4a2...eeb9f4` | ⚠️ Unaudited |
| ShitcoinOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d0d8...fbefb7` | ⚠️ Unaudited |
| Sigma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18d0d9...d021b5` | ⚠️ Unaudited |
| SignatureDepositQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000...024727` | ⚠️ Unaudited |
| SignatureRedeemQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000...6f4138` | ⚠️ Unaudited |
| SignerBondsManualSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43faf6...f7442f` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x142198...69de32` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35533f...16868b` | ⚠️ Unaudited |
| SingleVaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09c60d...7e43ab` | ⚠️ Unaudited |
| SortedTroves | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870a10...c56b4a` | ⚠️ Unaudited |
| SortitionPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e4cba...ecbcf6` | ⚠️ Unaudited |
| SourceCore | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247183 | `0x013d1e...269afb` | ⚠️ Unaudited |
| SourceHelper | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247167 | `0x474dd6...53ba69` | ⚠️ Unaudited |
| StabilityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f2283...82d627` | ⚠️ Unaudited |
| StakedENA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fd57b...e1018b` | ⚠️ Unaudited |
| StakedTokenDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c5b7...08031e` | ⚠️ Unaudited |
| StakedUsbd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15ba04...1d1eef` | ⚠️ Unaudited |
| StakedUsbdOftAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x450bd4...e0b42f` | ⚠️ Unaudited |
| StakedUSDeV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246903 | `0x9d39a5...7a3497` | ⚠️ Unaudited |
| StakerRewardsBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb59f4...8a0b81` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4befa2...269e9d` | ⚠️ Unaudited |
| StakingDepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8058...6b9730` | ⚠️ Unaudited |
| StakingModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x048408...07705f` | ⚠️ Unaudited |
| StakingPoolRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x118b76...069bd8` | ⚠️ Unaudited |
| StakingPortBacker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x236aa5...ab794b` | ⚠️ Unaudited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | base | unit-247234 | `0x0a6450...848914` | ⚠️ Unaudited |
| stBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdf217e...854017` | ⚠️ Unaudited |
| strETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x030326...0499e5` | ⚠️ Unaudited |
| StUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0da21d...cabf61` | ⚠️ Unaudited |
| Subvault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000...ad5920` | ⚠️ Unaudited |
| sUSDeOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc766f2...98b8ea` | ⚠️ Unaudited |
| SwapModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x000000...b583d6` | ⚠️ Unaudited |
| Symbiosis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd38bb4...c76dd9` | ⚠️ Unaudited |
| SymbiosisTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ef7dd...7231bf` | ⚠️ Unaudited |
| SymbioticVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...da394b` | ⚠️ Unaudited |
| SymbioticWithdrawalQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0c3e33...75e08a` | ⚠️ Unaudited |
| SyncDepositQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...7a3bde` | ⚠️ Unaudited |
| SyrupUSDCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8e292...623ad0` | ⚠️ Unaudited |
| T | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdf702...94bee5` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c42...51f14f` | ⚠️ Unaudited |
| TargetHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bc3c5...75c961` | ⚠️ Unaudited |
| TBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246736 | `0x18084f...d93a88` | ⚠️ Unaudited |
| TBTCConstants | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a152...26750d` | ⚠️ Unaudited |
| TBTCDepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b66b...37cdf0` | ⚠️ Unaudited |
| tBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8ac6d...62c812` | ⚠️ Unaudited |
| TBTCSystem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20a5c...1ab64a` | ⚠️ Unaudited |
| TBTCVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52818e...277fd4` | ⚠️ Unaudited |
| TheCounter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa27a69...e55861` | ⚠️ Unaudited |
| TicksFeesReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x622535...e4ddac` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290d95...f6ebee` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01327c...3c1408` | ⚠️ Unaudited |
| TokenizedShareManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000...91d1df` | ⚠️ Unaudited |
| TokenLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09a028...f75bf7` | ⚠️ Unaudited |
| TokenLogic | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247502 | `0x57b946...58d26c` | ⚠️ Unaudited |
| TokenStakingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda534b...681365` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3086ac...c76827` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20...733ed4` | ⚠️ Unaudited |
| TopUps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c9b5...79d91a` | ⚠️ Unaudited |
| TransferProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0ab75...bc342b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5f73c0...57e76c` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xacb702...d62b8e` | ⚠️ Unaudited |
| TreasuryIntermediateEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84b883...acfed6` | ⚠️ Unaudited |
| TroveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ed4f2...657938` | ⚠️ Unaudited |
| TroveManagerGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e26de...d7b1b1` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b670...d1b987` | ⚠️ Unaudited |
| UnderwriterToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x007854...0df843` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247505 | `0x004e9c...350568` | ⚠️ Unaudited |
| uniBTCRate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe54291...abc716` | ⚠️ Unaudited |
| UniV2Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a74d...c5645f` | ⚠️ Unaudited |
| UniV3Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x021cf3...af34f0` | ⚠️ Unaudited |
| UniV3MEVProtection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d431...1e4f24` | ⚠️ Unaudited |
| UniV3PoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb00b70...430663` | ⚠️ Unaudited |
| UniV3Validator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0347ed...717d73` | ⚠️ Unaudited |
| UniV3Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x047876...f85a78` | ⚠️ Unaudited |
| UniV3VaultConfigurable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c172b...3970e2` | ⚠️ Unaudited |
| UniV3VaultConfigurableGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17af7e...903a89` | ⚠️ Unaudited |
| UniV3VaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x09f873...1e6ada` | ⚠️ Unaudited |
| USDe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c9edd...1e68b3` | ⚠️ Unaudited |
| UsrExternalRequestsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac85ef...a95f2e` | ⚠️ Unaudited |
| USRPriceAggregatorV3Interface | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a9341...c46f64` | ⚠️ Unaudited |
| UsrPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7f4518...9c261c` | ⚠️ Unaudited |
| UsrRedemptionExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60a7b7...897c37` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000...b29801` | ⚠️ Unaudited |
| VaultCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd801ce...b531ab` | ⚠️ Unaudited |
| VaultRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20edb9...34d020` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a477a...778cf6` | ⚠️ Unaudited |
| VaultTokenized | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8327b8...968e40` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x047d41...10d6da` | ⚠️ Unaudited |
| VeloAmmModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x324084...b6bfb5` | ⚠️ Unaudited |
| VeloDeployFactory | unknown | project_anchor | own_supporting | 0 | base | unit-247321 | `0x5b1b1a...db4029` | ⚠️ Unaudited |
| VeloDeployFactoryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x65ab2e...0defff` | ⚠️ Unaudited |
| VeloDepositWithdrawModule | unknown | project_anchor | own_supporting | 0 | base | unit-247247 | `0x28c75f...d70043` | ⚠️ Unaudited |
| VeloOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e53a7...9c9426` | ⚠️ Unaudited |
| VeloSugarHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1d5fe7...4c6dae` | ⚠️ Unaudited |
| VendingMachine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cca7e...47680e` | ⚠️ Unaudited |
| VendingMachineV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce1f98...026d4b` | ⚠️ Unaudited |
| VendingMachineV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7570a2...6437e6` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000...2ede3c` | ⚠️ Unaudited |
| VetoSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04a216...303d5b` | ⚠️ Unaudited |
| VoltzVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec4b7e...ea82ba` | ⚠️ Unaudited |
| VoltzVaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4270eb...0dea27` | ⚠️ Unaudited |
| VoltzVaultHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x361b36...45f4b6` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1d...2499bf` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326483...0e86c6` | ⚠️ Unaudited |
| WalletCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fb59...43ffe5` | ⚠️ Unaudited |
| WalletProposalValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30019d...fbdec2` | ⚠️ Unaudited |
| WalletRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d7e8...65c832` | ⚠️ Unaudited |
| WalletRegistryGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aed6c...d47fe8` | ⚠️ Unaudited |
| Wallets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67913...ba47bf` | ⚠️ Unaudited |
| WBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246749 | `0x2260fa...c2c599` | ⚠️ Unaudited |
| wBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f6647...2a6658` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f89...c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa...756cc2` | ⚠️ Unaudited |
| WhiteList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9f66...86577d` | ⚠️ Unaudited |
| WithdrawalHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x937092...3c7286` | ⚠️ Unaudited |
| WithdrawalQueue | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247192 | `0x88d282...58bb2b` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x147379...f2d786` | ⚠️ Unaudited |
| WrappedIBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c6f29...8d2da1` | ⚠️ Unaudited |
| WstETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246857 | `0x7f39c5...5e2ca0` | ⚠️ Unaudited |
| WStethOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eed88...fdef96` | ⚠️ Unaudited |
| WStethRatiosAggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x773ae8...dc709c` | ⚠️ Unaudited |
| WstUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1202f5...c75055` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (409)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246718 | `0x02e1c9...4b2675` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246719 | `0x034faa...954474` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246720 | `0x0430f1...93c31f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246722 | `0x06d3aa...08233d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246723 | `0x06e16d...6132c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246724 | `0x07c22b...b14f4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246725 | `0x0bf7b6...534573` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246726 | `0x0faea3...fa14eb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246728 | `0x0ffae0...200674` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246729 | `0x105413...059aea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246730 | `0x13aebe...e6b4bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246731 | `0x13c7bc...36aa9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246732 | `0x156bd0...67d1bd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246733 | `0x1608bb...81ed44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246734 | `0x1616d3...19b53a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246737 | `0x181cb5...eaa76d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246739 | `0x1ae8c0...f80da2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246741 | `0x1b7c5f...5ba287` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246742 | `0x1c5da4...4b421b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246744 | `0x1e13a2...872fa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246745 | `0x1e6b0f...59384f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246746 | `0x1fcd39...ee54eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246747 | `0x216b64...8a33df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246748 | `0x219138...90c472` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246750 | `0x230e1d...477017` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246754 | `0x24fd64...ebcae7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246755 | `0x250917...66b864` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246756 | `0x255587...f6bac5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246758 | `0x277c6a...e5ccc5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246759 | `0x279c6c...68eadd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246760 | `0x27a907...3187fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246761 | `0x27e3e8...a81bb1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246762 | `0x296316...63858e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246763 | `0x296ef1...7853c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246764 | `0x2a166a...5363d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246765 | `0x2c04ab...4cfc23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246766 | `0x2e2747...8eba72` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246767 | `0x2ea268...942a36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246769 | `0x31e09f...bf871a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246771 | `0x354822...ee7cc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246772 | `0x35d482...4f3198` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246774 | `0x37be38...9563eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246775 | `0x383c5f...0cd778` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246777 | `0x3883d8...04e4d7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246779 | `0x3b0178...f96f27` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246780 | `0x3c834e...1af114` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246781 | `0x3d1209...9be97b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246782 | `0x3e80e1...316dc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246783 | `0x3eb8ed...b4b46d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246785 | `0x40d6bb...ae70d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246786 | `0x40eb52...1505ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246787 | `0x41dfc0...7027bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246788 | `0x441c99...8706d7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246789 | `0x4551cc...baa0f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246790 | `0x45b3ad...1b3285` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246792 | `0x49ecc9...6085b7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246793 | `0x4a68c8...ff5216` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246794 | `0x4c4944...6f7373` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246795 | `0x4d12fa...566b49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246796 | `0x4d7aab...e20792` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246797 | `0x4ee923...18507e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246798 | `0x4f5d5a...4a60c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246799 | `0x4f6bc0...bf1c6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246800 | `0x501d19...fd1942` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246801 | `0x505779...c1ab4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246802 | `0x515906...aa9873` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246803 | `0x51add8...0e4bc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246804 | `0x52cf3f...e32c31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246805 | `0x53e472...407efb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246806 | `0x5403d6...d43ec6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246807 | `0x552f1c...61469e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246808 | `0x55c982...efb738` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246809 | `0x57a013...68627f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246811 | `0x58c4b6...8a1031` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246812 | `0x5b0160...686070` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246813 | `0x5b2099...80d437` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246814 | `0x5dbb92...49c6cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246815 | `0x5dbf92...570a75` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246818 | `0x5f93db...4dc828` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246820 | `0x614cb9...e4efab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246822 | `0x624a52...a05b71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246823 | `0x628c05...e5d4ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246824 | `0x637e65...dac86f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246825 | `0x63f1aa...2b3faa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246826 | `0x6408a5...2e9fe9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246828 | `0x649f34...44f45b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246829 | `0x64d00a...ce0ad5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246830 | `0x655827...4cee2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246831 | `0x666be6...2424e3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246832 | `0x66a0b4...15ee0f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246833 | `0x670b30...c10da9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246835 | `0x6955ab...6b7e61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246836 | `0x6a2dd3...c440e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246837 | `0x6ad30f...987deb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246838 | `0x6c97a3...be62bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246839 | `0x6d73dd...dedef4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246840 | `0x6ea5a3...60fc5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246841 | `0x6ec0cb...735c7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246842 | `0x6f9947...6e62cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246843 | `0x72926d...0e901c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246844 | `0x749b85...0c0c79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246845 | `0x756299...d918d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246846 | `0x759d43...c61305` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246848 | `0x76001f...d0bb84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246849 | `0x76147a...a58fe0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246850 | `0x78674e...29c151` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246851 | `0x78a80d...5ea943` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246852 | `0x78ba57...47f449` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246853 | `0x7a57d6...233e65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246854 | `0x7a6982...a5d1b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246855 | `0x7af142...864f52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246856 | `0x7e0e4b...6bec97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246858 | `0x7fea4c...0092d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246859 | `0x8000a2...3cc1d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246860 | `0x81379c...76daf0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246861 | `0x81698f...df0af0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246862 | `0x81b9ed...65cb29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246864 | `0x8306be...7b27f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246865 | `0x83b0da...1ccb1a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246867 | `0x847a11...0aa530` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246868 | `0x84cd30...5b05d4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246869 | `0x85f13c...f3866e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246871 | `0x881157...b1ac89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246872 | `0x888d2a...e7fa29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246874 | `0x893aa6...290080` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246875 | `0x8a072c...3b1318` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246876 | `0x8a78e6...78c1cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246877 | `0x8bcb28...1e1c26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246879 | `0x8d8b65...758596` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246880 | `0x8e024f...64487e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246881 | `0x8e1b32...0a12d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246882 | `0x8e6c80...34bf48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246883 | `0x8eb26a...d65261` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246884 | `0x90c983...b8cb78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246885 | `0x91d3f3...b59098` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246886 | `0x936ae7...f47289` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246887 | `0x938947...21b231` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246888 | `0x941100...a7c7a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246889 | `0x941ee1...b1057a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246890 | `0x9437b2...f72003` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246891 | `0x959344...08494b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246892 | `0x973495...ad53ea` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246893 | `0x98589d...09cd5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246894 | `0x9898c6...5d90c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246895 | `0x9938a0...ec1da0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246896 | `0x99a069...b49d7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246897 | `0x9bcee2...d9cf8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246898 | `0x9c5d82...32d88d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246902 | `0x9d0182...434dac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246905 | `0x9d9926...33b838` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246906 | `0xa0f487...8eb68b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246907 | `0xa1e382...fa234a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246908 | `0xa1eeeb...4edd00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246909 | `0xa21aa0...b9cf6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246910 | `0xa33a06...1b7bc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246911 | `0xa4e41e...5950a6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246912 | `0xa501de...efaaa2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246913 | `0xa51365...1dbde6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246914 | `0xa59b36...f1939f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246915 | `0xa62243...e74e64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246916 | `0xa6278b...e7196f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246918 | `0xa6af7d...031b8c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246919 | `0xa794cd...e0757a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246920 | `0xa8a785...02dd2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246921 | `0xa8d3de...af4c48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246922 | `0xa9a6d3...c5e78c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246923 | `0xab236d...f6a9c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246924 | `0xabe20d...8feeb5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246925 | `0xacee4a...2624cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246926 | `0xae0525...d260dc` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246927 | `0xaee023...2d49f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246928 | `0xb0d19e...592ea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246929 | `0xb1653e...4e9335` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246930 | `0xb17a8d...bf6d42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246931 | `0xb1b967...720545` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246932 | `0xb1e5a8...d1423b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246933 | `0xb2657a...1173c2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246934 | `0xb32028...dcfab0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246935 | `0xb379bf...ddc80b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246936 | `0xb5d078...6123f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246937 | `0xb6451d...d28c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246938 | `0xb65a57...875ee3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246939 | `0xb8050a...f59da2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246940 | `0xbaab39...ba03ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246942 | `0xbd4bda...9e7d1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246943 | `0xbdf7b7...77d972` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246945 | `0xbfafc9...73bdd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246946 | `0xc7e8b0...e9ecb5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246947 | `0xc82405...037635` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246948 | `0xc8a65b...f27917` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246949 | `0xc95b80...8f14e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246950 | `0xc9932e...2aec21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246951 | `0xc9aaa4...dfe061` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246952 | `0xca86ab...50a1ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246953 | `0xcc1d39...6bb5c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246954 | `0xcc4de7...e3298b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246955 | `0xcd3c0f...e8a6c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246957 | `0xcdfa7e...f49c89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246958 | `0xce4e73...2eb38e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246959 | `0xd0ad0f...236e06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246960 | `0xd0f847...3e1116` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246961 | `0xd1547c...9fe08b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246962 | `0xd1f59b...7cb4e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246963 | `0xd1fab7...3eb35a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246964 | `0xd27ffb...850081` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246967 | `0xd3442b...b01c44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246968 | `0xd3bb0b...9212f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246969 | `0xd662df...6ad1ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246971 | `0xd72866...4629d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246972 | `0xd89738...7defe6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246974 | `0xdc9c17...7b2153` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246975 | `0xdd008e...63bdc4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246976 | `0xde1313...b50b04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246977 | `0xdf96d5...c38461` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246979 | `0xe04dc6...e43f2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246980 | `0xe12e82...b72657` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246981 | `0xe28265...092e7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246982 | `0xe3b023...130ca4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246983 | `0xe3c89d...f3129f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246984 | `0xe4357b...bf125d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246985 | `0xe5afac...78dcc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246986 | `0xe70732...7a152d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246987 | `0xe86399...a04433` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246988 | `0xe88cf9...b8a602` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246989 | `0xe92931...54200f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246990 | `0xeb1caf...6c734a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246991 | `0xebd53e...ae3e4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246992 | `0xec3b20...918c91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246993 | `0xecf3bd...9df55c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246994 | `0xeeab67...836fb4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246995 | `0xef39c1...050892` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246996 | `0xf004a8...eef463` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246999 | `0xf3a1c4...e071d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247000 | `0xf47806...d13607` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247002 | `0xf4ea27...a15451` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247003 | `0xf7a199...f4c4b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247004 | `0xf85932...14ecb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247005 | `0xf86e9c...c860f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247006 | `0xf91053...36e7f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247007 | `0xf9d20f...3b4b92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247008 | `0xfa3c9e...881336` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247009 | `0xfaa5ab...46aa4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247010 | `0xfbf0ff...632817` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247011 | `0xfd23f9...1ca5b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247013 | `0xfd778b...b23554` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247015 | `0xfe805c...327bee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247018 | `0x1ce9d9...954c92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247019 | `0x22171a...bf7c78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247020 | `0x2790aa...eb0a02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247021 | `0x2fa714...4c0f6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247022 | `0x319c0d...f48c38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247023 | `0x3c01ec...78d8a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247024 | `0x478946...c0ba25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247025 | `0x4956d4...1a1287` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247026 | `0x49efad...1ba77d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247028 | `0x4dc225...8bcd60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247029 | `0x4e9023...15a1ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247030 | `0x504821...d26d81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247031 | `0x59aa94...738fe0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247033 | `0x65cd4f...bc3144` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247034 | `0x67fe54...7ef502` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247035 | `0x6b0e1a...96f8e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247036 | `0x6fe21c...52fb37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247037 | `0x71d022...10ceb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247038 | `0x724393...f8ca3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247039 | `0x734eff...bf9684` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247040 | `0x739c53...5cf525` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247041 | `0x7db963...5d58be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247042 | `0x84ce89...726f6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247043 | `0x88cfe6...d54035` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247044 | `0x893df2...344829` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247045 | `0x89bf65...b94681` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247046 | `0x8ac2f9...4c078e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247047 | `0x9128ec...77fb59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247048 | `0x96e7ca...45cfea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247049 | `0x9b0c18...aafe3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247050 | `0xa01164...d59fd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247051 | `0xb3ebe2...387fe2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247052 | `0xb54aac...ba8be9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247053 | `0xb55da3...e2dab9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247054 | `0xb5652f...7bd08b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247055 | `0xb71ac9...5c80be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247057 | `0xbf30ff...2dfea4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247058 | `0xc8c77a...5e85fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247059 | `0xd8d730...d93c2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247060 | `0xebd531...da777c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247061 | `0xed8b81...7d88ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247062 | `0xee1bac...3ce1f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247063 | `0xf0e36e...dd4a56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247064 | `0xfc0973...1ccb3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247207 | `0x2ae580...fb9e71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247209 | `0x759d43...c61305` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247213 | `0x94928c...60df8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247215 | `0xa5faff...ed22b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247216 | `0xac3456...4ef10e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247220 | `0xc78124...16dda3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247221 | `0xc8e046...7a207d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247222 | `0xe47eac...775e47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247067 | `0x0721ed...cb486f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247068 | `0x0877c0...ec1f38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247072 | `0x0b45d7...ee315e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247073 | `0x0dd522...fe97ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247074 | `0x13b0ea...29f7cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247076 | `0x1cb3cb...b3c12b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247077 | `0x1e63e3...79af8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247078 | `0x208e62...450075` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247079 | `0x254652...cdbaaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247080 | `0x27aebf...ec5836` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247096 | `0x61d8f8...a9c27a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247097 | `0x624328...c951f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247099 | `0x65dc71...003607` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247100 | `0x660933...0e6cce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247109 | `0x767877...8478e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247112 | `0x82aa4d...664fea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247117 | `0x8c528f...7ddf5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247118 | `0x8ff314...3799c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247123 | `0x986998...80812b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247127 | `0x9ff527...714b33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247128 | `0xa1251e...b5dcec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247131 | `0xa9212e...b99728` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247136 | `0xb1942d...266562` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247137 | `0xb1f697...beeb2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247140 | `0xb37600...6cb516` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247143 | `0xc12885...d21f37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247144 | `0xca7e70...d6c66d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247147 | `0xd3d0e8...ae4e1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247149 | `0xd4d836...249f57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247153 | `0xe06251...e7edcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247160 | `0xf5eaa5...142280` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247161 | `0xf75d5b...647c93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247162 | `0xf9856a...9563fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247166 | `0x30a7c7...df06bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247169 | `0x5fed9c...e3f757` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247171 | `0x87c7ae...a465b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247173 | `0x9c807f...a87d78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247174 | `0x9cd45b...03f61f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247175 | `0x9d9645...f1870a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247177 | `0xda0b90...f8f9ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247178 | `0xdfcd6a...3ece67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247185 | `0x24dd1e...c703df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247187 | `0x35d6c8...57a7df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247194 | `0xbe8e7c...fd051d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247195 | `0xd2d2a9...98b34f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247196 | `0xd6dcc1...437896` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247198 | `0xf32fd7...ca9676` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247242 | `0x20157d...7b5ad2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247248 | `0x28d8d6...678750` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247254 | `0x2a0881...29d700` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247259 | `0x2f4f2d...03d4fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247281 | `0x47ca96...3d7348` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247289 | `0x4d6997...9b5606` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247293 | `0x4e829f...9cba02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247295 | `0x4e962b...b3e778` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247307 | `0x53017a...40323d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247313 | `0x5585d8...6c5eb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247327 | `0x62f607...9b0ce5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247348 | `0x6b0e1a...96f8e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247352 | `0x6e4b30...83a73d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247359 | `0x70a5e5...d2c8c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247362 | `0x70acdf...1cbae1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247364 | `0x71d022...10ceb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247366 | `0x731f2c...d3c7a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247370 | `0x792930...ffdd60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247381 | `0x82321f...62e2d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247394 | `0x861a29...5e1b5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247396 | `0x8741d5...dc60f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247398 | `0x893df2...344829` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247401 | `0x8bd5e3...66fb8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247404 | `0x919ae9...9e7a8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247411 | `0x940d74...64a833` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247416 | `0x96e7ca...45cfea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247418 | `0x9785ef...7b3c1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247422 | `0x988702...709fd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247423 | `0x9b6d95...67a0dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247427 | `0x9ec3d1...2c789b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247429 | `0xa46f75...52cb7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247433 | `0xa53e78...07ace1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247437 | `0xaafafd...bff8ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247439 | `0xae8cde...1c322e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247441 | `0xafb624...65ba88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247442 | `0xb17d90...15b163` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247443 | `0xb24d94...a1c947` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247444 | `0xb2cc22...59dc59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247449 | `0xbdb39e...e99c14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247455 | `0xcba8f9...233d85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247459 | `0xd17613...1f5a71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247462 | `0xd43058...a23f83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247464 | `0xd9ef98...c3d3d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247465 | `0xdc7ead...df2c0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247467 | `0xde5ff8...ad1368` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247470 | `0xe84637...e90ec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247473 | `0xe9f4eb...a882aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247475 | `0xed8b81...7d88ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247478 | `0xf0e36e...dd4a56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247479 | `0xf1f6c3...67fbc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247481 | `0xf5d860...b70799` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247488 | `0xfecdcc...f48410` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-247489 | `0x0a9745...00d000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-247490 | `0x316903...9e17d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-247491 | `0x769673...227dae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-247492 | `0x841e21...1ef9e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-247493 | `0xa330cc...28b6e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-247494 | `0xad1b3e...30250c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-247495 | `0xbbf940...f943bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-247496 | `0xc724d3...3b3a0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-247200 | `0x022a33...33d7d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-247201 | `0x222fa9...97cdb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-247202 | `0x403307...f496d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-247203 | `0xda1674...b52a7c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [blocksec_mellow_vaults_v1.3-signed.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202208_BlockSec_vaults_v1/blocksec_mellow_vaults_v1.3-signed.pdf) | BlockSec | Audit | 2022-08 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 6 | high |
| [ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202208_Chainsecurity_vaults_v1/ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf) | ChainSecurity | Audit | 2022-08 | stale | Direct | contract_name | matched | 9 | 0 | 0 | 34 | high |
| [Mellow Protocol HStrategy Security Analysis.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202211_Pessimistic_HStrategy/Mellow%20Protocol%20HStrategy%20Security%20Analysis.pdf) | Pessimistic | Audit | 2022-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202212_Pessimistic_Gearbox/Mellow%20protocol%20Gearbox%20integration%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [StateMind Mellow LRT report with deployment.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FkF9WEmdIYGcCPdAPltyL%2FStateMind%20Mellow%20LRT%20report%20with%20deployment.pdf) | StateMind | Audit | 2024-05 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 18 | high |
| [Sherlock Mellow Modular LRTs Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FT65xUuoxB4TbuaSjSyst%2FSherlock%20Mellow%20Modular%20LRTs%20Audit%20Report.pdf) | Sherlock | Contest | 2024-08 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2Fz1vRTE4p2jsyru2NDTW5%2FMellow%20Finance%20Simple-LRT%20and%20DVV%20Vault%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-06 | aging | Direct | address | matched | 1 | 1 | 0 | 5 | high |
| [ChainSecurity_MellowFinance_MellowLRT_Audit.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FVOe4RlDJHDolkm4fiVZM%2FChainSecurity_MellowFinance_MellowLRT_Audit.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | matched | 3 | 0 | 0 | 22 | high |
| [Statemind Mellow Multi Vault Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F0QLb9sa0V8su4O0MaCLK%2FStatemind%20Mellow%20Multi%20Vault%20Audit%20Report.pdf) | Statemind | Audit | 2025-01 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 14 | high |
| [ChainSecurity Mellow Multivault Audit.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FUabZ3jdmQWi13qIivg13%2FChainSecurity%20Mellow%20Multivault%20Audit.pdf) | ChainSecurity | Audit | 2025-02 | aging | Direct | contract_name | matched | 3 | 0 | 0 | 15 | high |
| [Nethermind Mellow Interop Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FDyGtu1VK0bKYsUxQI0ES%2FNethermind%20Mellow%20Interop%20Audit%20Report.pdf) | Nethermind | Audit | 2025-03 | aging | Direct | contract_name | matched | 2 | 1 | 0 | 16 | high |
| [Decurity Mellow Interop Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FFHTkyHS9rabfh8AMkJU3%2FDecurity%20Mellow%20Interop%20Audit%20Report.pdf) | Decurity | Audit | 2025-03 | aging | Direct | contract_name | matched | 2 | 1 | 0 | 7 | high |
| [Sherlock_Mellow-Core-Vaults_20250728.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FLBYikKe3UYNWMV8Kte52%2FSherlock_Mellow-Core-Vaults_20250728.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [Nethermind_Mellow-Core-Vaults_20250903.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FNs4351hVFYzadiFii2az%2FNethermind_Mellow-Core-Vaults_20250903.pdf) | Nethermind | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 75 | high |
| [NM_0758_Mellow-1.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F2GBCylSChOvXlBDteguf%2FNM_0758_Mellow-1.pdf) | Nethermind | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [NM0735-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FEKdTZHaxv3h0qKauW9TU%2FNM0735-FINAL_MELLOW%20(1).pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NM0758-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FqiqkyRtS5hyeGOGEkUlO%2FNM0758-FINAL_Mellow%20(1).pdf) | Nethermind | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [NM0798-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F3pkyCLIShMV1QdiygMDh%2FNM0798-FINAL_MELLOW%20(1).pdf) | Nethermind | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NM0812-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FiJpqr8BmY5Fdjfd1fw5n%2FNM0812-FINAL_Mellow%20(1).pdf) | Nethermind | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NM0703-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FM2HU6Mm6042D009NBVaa%2FNM0703-FINAL_MELLOW%20(1).pdf) | N/A | Audit | 2025-11 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [NM0682-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FuoD71STRiDu2ON8SHpvK%2FNM0682-FINAL_Mellow%20(1).pdf) | N/A | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17626] blocksec_mellow_vaults_v1.3-signed.pdf — matched: Extracted contract names from findings and recommendations. The audit date is from the cover page: 'Date:August 4, 2022'.
- [17627] ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf — matched: Extracted from ChainSecurity audit report for Mellow Vaults. Scope section lists excluded files; all other contracts in the repository are considered in scope. The report date is on the cover page: Aug 09, 2022.
- [17628] Mellow Protocol HStrategy Security Analysis.pdf — matched: Scope explicitly lists four files. IntegrationVault mentioned in findings but not in scope; excluded.
- [17629] Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf — no match: Scope explicitly listed 8 files under 'The scope of the audit included only the following files:' on page 3. Audit date from cover page and final page.
- [17630] StateMind Mellow LRT report with deployment.pdf — matched: Scope section explicitly lists 20 files. Audit date from header: '06-05-2024 - 27-05-2024' indicates end date 2024-05-27.
- [17631] Sherlock Mellow Modular LRTs Audit Report.pdf — matched: Extracted contract names from the report text, including those mentioned in findings and code snippets. The scope section mentions the repository and branch but does not list individual contracts; however, contracts are referenced throughout the findings.
- [17632] Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf — matched: All contracts listed in the 'Scope of Audit' table and mainnet deployments are included. The audit date is from the cover page 'JUNE 09, 2025'.
- [17633] ChainSecurity_MellowFinance_MellowLRT_Audit.pdf — matched: All 25 contracts listed in the scope table on page 5 of the report.
- [17634] Statemind Mellow Multi Vault Audit Report.pdf — matched: Scope section explicitly lists 16 files. Audit date from cover page: 06-01-2025 - 31-01-2025, using end date.
- [17635] ChainSecurity Mellow Multivault Audit.pdf — matched: Extracted 18 contracts from scope tables in the report. Audit date from cover page.
- [17636] Nethermind Mellow Interop Audit Report.pdf — matched: All 18 contracts listed in the 'Audited Files' table on page 3 are in scope. The audit date is the final report date (March 19, 2025) from the summary table.
- [17637] Decurity Mellow Interop Audit Report.pdf — matched: All contracts listed in scope section of the report.
- [17638] Sherlock_Mellow-Core-Vaults_20250728.pdf — no match: All contracts listed in the scope section of the audit report were extracted. The audit date is the end date of the audit period (July 14 - July 28, 2025).
- [17639] Nethermind_Mellow-Core-Vaults_20250903.pdf — no match: All contracts listed in the 'Audited Files' table (Section 2) are in scope. The audit date is explicitly stated as 'Final Report September 03, 2025' on the cover page and in the summary table.
- [17640] NM_0758_Mellow-1.pdf — no match: Audit report for Mellow Finance's SyncDepositQueue contract. Scope includes SyncDepositQueue.sol and its parent SyncQueue.sol.
- [17641] NM0735-FINAL_MELLOW (1).pdf — no match: The audit scope is explicitly the SwapModule contract in src/utils/SwapModule.sol. The audit date is November 19, 2025 from the cover page.
- [17642] NM0758-FINAL_Mellow (1).pdf — no match: Audit report for Mellow Finance's SyncDepositQueue contract. Scope includes SyncDepositQueue.sol and its parent SyncQueue.sol.
- [17643] NM0798-FINAL_MELLOW (1).pdf — no match: Only one contract in scope: BurnableTokenizedShareManager. Audit date from cover page and summary table.
- [17644] NM0812-FINAL_Mellow (1).pdf — no match: The audit scope is a pull request with 2 lines of code. The only contract explicitly mentioned in scope is ShareManager.
- [17645] NM0703-FINAL_MELLOW (1).pdf — matched: The audit report explicitly states the scope is the OracleSubmitter contract. The date is from the cover page and summary table.
- [17646] NM0682-FINAL_Mellow (1).pdf — matched: Only one contract in scope: Migrator.sol. Audit date from cover page and summary table.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| blocksec_mellow_vaults_v1.3-signed.pdf | LStrategy | unmatched — not counted | — | Mentioned in finding 2.1.1 | no |
| blocksec_mellow_vaults_v1.3-signed.pdf | ProtocolGovernance | unmatched — not counted | — | Mentioned in finding 2.1.2 | no |
| blocksec_mellow_vaults_v1.3-signed.pdf | AggregateVault | unmatched — not counted | — | Mentioned in finding 2.2.1 | no |
| blocksec_mellow_vaults_v1.3-signed.pdf | IntegrationVault | unmatched — not counted | — | Mentioned in finding 2.2.3 | no |
| blocksec_mellow_vaults_v1.3-signed.pdf | BaseValidator | unmatched — not counted | — | Mentioned in finding 2.2.4 | no |
| blocksec_mellow_vaults_v1.3-signed.pdf | ERC20RootVault | unmatched — not counted | — | Mentioned in findings 2.2.5, 2.3.1, 2.3.5 | no |
| blocksec_mellow_vaults_v1.3-signed.pdf | AaveVault | own contract | AaveVault (selected) `0x3af5e4...8d23ae` — deployed 2022-07-28 20:08:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_mellow_vaults_v1.3-signed.pdf | YearnVaultGovernance | own contract | YearnVaultGovernance (selected) `0x2bc5f6...43c127` — deployed 2022-07-28 21:03:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_mellow_vaults_v1.3-signed.pdf | YearnVault | own contract | YearnVault (selected) `0x9c95ec...c646ce` — deployed 2022-07-29 17:00:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_mellow_vaults_v1.3-signed.pdf | UniV3Oracle | own contract | UniV3Oracle (selected) `0x1a4071...74cfcf` — deployed 2022-07-29 16:52:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ProtocolGovernance | unmatched — not counted | — | listed in scope and described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | UnitPricesGovernance | unmatched — not counted | — | inherited by ProtocolGovernance, described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ContractRegistry | unmatched — not counted | — | excluded from scope but mentioned as part of system | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | VaultRegistry | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | DefaultAccessControl | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ChainlinkOracle | own contract | ChainlinkOracle (selected) `0x45ce8c...411130` — deployed 2022-07-28 20:07:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | UniV3Oracle | own contract | UniV3Oracle (selected) `0x1a4071...74cfcf` — deployed 2022-07-29 16:52:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | LStrategy | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | MStrategy | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ERC20Vault | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ERC20RootVault | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | AggregateVault | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | IntegrationVault | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | YearnVault | own contract | YearnVault (selected) `0x9c95ec...c646ce` — deployed 2022-07-29 17:00:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | AaveVault | own contract | AaveVault (selected) `0x3af5e4...8d23ae` — deployed 2022-07-28 20:08:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | UniV3Vault | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | MellowVault | unmatched — not counted | — | mentioned as out of scope but part of system | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | VaultGovernance | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | YearnVaultGovernance | own contract | YearnVaultGovernance (selected) `0x2bc5f6...43c127` — deployed 2022-07-28 21:03:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ERC20RootVaultGovernance | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | AaveVaultGovernance | own contract | AaveVaultGovernance (selected) `0x75e858...181bb0` — deployed 2022-07-29 16:54:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | BaseValidator | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | UniV2Validator | own contract | UniV2Validator (selected) `0x006d45...097708` — deployed 2022-07-28 20:05:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | UniV3Validator | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ERC20Validator | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | CowswapValidator | own contract | CowswapValidator (selected) `0xd2f34d...f45903` — deployed 2022-07-29 16:48:28+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | CurveValidator | own contract | CurveValidator (selected) `0xbbfa3f...66eff4` — deployed 2022-07-29 16:48:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | CommonLibrary | unmatched — not counted | — | mentioned in scope and findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ExceptionsLibrary | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | PermissionIdsLibrary | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | SemverLibrary | unmatched — not counted | — | excluded from scope | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | BatchCall | unmatched — not counted | — | excluded from scope | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ContractMeta | unmatched — not counted | — | excluded from scope | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | DefaultProxy | unmatched — not counted | — | excluded from scope | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | DefaultProxyAdmin | unmatched — not counted | — | excluded from scope | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | IOracle | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | IVaultRegistry | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | IContractMeta | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | IVault | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | IAggregateVault | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | IIntegrationVault | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | IValidator | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | LStrategyOrderHelper | unmatched — not counted | — | mentioned in findings | no |
| Mellow Protocol HStrategy Security Analysis.pdf | HStrategy | own contract | HStrategy (selected) `0x158b75...7030a8` — deployed 2022-10-04 16:21:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mellow Protocol HStrategy Security Analysis.pdf | HStrategyHelper | unmatched — not counted | — | listed in scope | no |
| Mellow Protocol HStrategy Security Analysis.pdf | UniV3Helper | unmatched — not counted | — | listed in scope | no |
| Mellow Protocol HStrategy Security Analysis.pdf | DefaultAccessControlLateInit | unmatched — not counted | — | listed in scope | no |
| Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf | IGearboxRootVault | unmatched — not counted | — | listed in scope | no |
| Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf | IGearboxVault | unmatched — not counted | — | listed in scope | no |
| Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf | IGearboxVaultGovernance | unmatched — not counted | — | listed in scope | no |
| Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf | GearboxRootVault | unmatched — not counted | — | listed in scope | no |
| Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf | GearboxVault | unmatched — not counted | — | listed in scope | no |
| Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf | GearboxVaultGovernance | unmatched — not counted | — | listed in scope | no |
| Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf | IntegrationVault | unmatched — not counted | — | listed in scope | no |
| Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf | GearboxHelper | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | VaultConfigurator | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | ManagedValidator | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | DefaultBondStrategy | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | DepositWrapper | own contract | DepositWrapper (selected) `0x231002...b9ff64` — deployed 2023-02-19 16:59:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| StateMind Mellow LRT report with deployment.pdf | ChainlinkOracle | own contract | ChainlinkOracle (selected) `0x45ce8c...411130` — deployed 2022-07-28 20:07:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| StateMind Mellow LRT report with deployment.pdf | DefaultAccessControl | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | ERC20SwapValidator | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | ManagedRatiosOracle | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | ERC20SwapModule | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | DefaultBondTvlModule | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | DefaultBondValidator | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | DefaultBondModule | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | ManagedTvlModule | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | ERC20TvlModule | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | DefaultModule | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | AllowAllValidator | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | ConstantAggregatorV3 | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | WStethRatiosAggregatorV3 | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | FullMath | unmatched — not counted | — | listed in scope | no |
| Sherlock Mellow Modular LRTs Audit Report.pdf | Vault | unmatched — not counted | — | mentioned in code snippets and findings | no |
| Sherlock Mellow Modular LRTs Audit Report.pdf | ChainlinkOracle | own contract | ChainlinkOracle (selected) `0x45ce8c...411130` — deployed 2022-07-28 20:07:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock Mellow Modular LRTs Audit Report.pdf | WStethRatiosAggregatorV3 | unmatched — not counted | — | mentioned in findings | no |
| Sherlock Mellow Modular LRTs Audit Report.pdf | ConstantAggregatorV3 | unmatched — not counted | — | mentioned in findings | no |
| Sherlock Mellow Modular LRTs Audit Report.pdf | SimpleDVTStakingStrategy | unmatched — not counted | — | mentioned in findings | no |
| Sherlock Mellow Modular LRTs Audit Report.pdf | StakingModule | unmatched — not counted | — | mentioned in findings | no |
| Sherlock Mellow Modular LRTs Audit Report.pdf | Configurator | unmatched — not counted | — | mentioned in findings | no |
| Sherlock Mellow Modular LRTs Audit Report.pdf | RatiosOracle | unmatched — not counted | — | mentioned in findings | no |
| Sherlock Mellow Modular LRTs Audit Report.pdf | PriceOracle | unmatched — not counted | — | mentioned in findings | no |
| Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf | VaultControl | unmatched — not counted | — | listed in scope table | no |
| Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf | DVV | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5e362e...85430b` — deployed 2024-08-02 20:07:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf | MellowVaultCompat | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x64047d...3f877f` — deployed 2024-08-15 18:12:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x82f510...9e0b26` — deployed 2024-06-24 21:20:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3a828c...45b4c7` — deployed 2024-08-15 17:45:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc65433...c47bd8` — deployed 2024-06-24 20:46:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7f43fd...9ce444` — deployed 2024-08-14 18:59:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf | ERC4626Vault | unmatched — not counted | — | listed in scope table | no |
| Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf | VaultControlStorage | unmatched — not counted | — | listed in scope table | no |
| Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf | MigratorDVV | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | VaultConfigurator | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | DefaultModule | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | ERC20SwapModule | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | ERC20TvlModule | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | ManagedTvlModule | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | StakingModule | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | DefaultBondModule | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | DefaultBondTvlModule | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | ChainlinkOracle | own contract | ChainlinkOracle (selected) `0x45ce8c...411130` — deployed 2022-07-28 20:07:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | ConstantAggregatorV3 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | ManagedRatiosOracle | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | WStethRatiosAggregatorV3 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | AdminProxy | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | DefaultProxyImplementation | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | Initializer | own contract | Initializer (selected) `0x39c62c...f2060c` — deployed 2024-06-08 11:21:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | DefaultBondStrategy | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | SimpleDVTStakingStrategy | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | DefaultAccessControl | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | DepositWrapper | own contract | DepositWrapper (selected) `0x231002...b9ff64` — deployed 2023-02-19 16:59:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | RestrictingKeeper | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | AllowAllValidator | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | DefaultBondValidator | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | ERC20SwapValidator | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | ManagedValidator | unmatched — not counted | — | listed in scope table | no |
| Statemind Mellow Multi Vault Audit Report.pdf | EigenLayerFactoryHelper | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | ERC4626Adapter | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | EigenLayerAdapter | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | EigenLayerWstETHAdapter | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | IsolatedEigenLayerVault | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | IsolatedEigenLayerVaultFactory | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | IsolatedEigenLayerWstETHVault | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | IsolatedEigenLayerWstETHVaultFactory | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | SymbioticAdapter | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | EigenLayerWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | SymbioticWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | RatiosStrategy | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | Claimer | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | WhitelistedEthWrapper | own contract | WhitelistedEthWrapper (selected) `0xfd4a49...56504e` — deployed 2025-02-20 14:04:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Statemind Mellow Multi Vault Audit Report.pdf | MultiVault | own contract | 0xe88cf9… (selected) `0xe88cf9...b8a602` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Statemind Mellow Multi Vault Audit Report.pdf | MultiVaultStorage | unmatched — not counted | — | listed in scope | no |
| ChainSecurity Mellow Multivault Audit.pdf | ERC4626Adapter | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | SymbioticAdapter | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | EigenLayerAdapter | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | EigenLayerWstETHAdapter | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | IsolatedEigenLayerVault | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | IsolatedEigenLayerVaultFactory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | IsolatedEigenLayerWstETHVault | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | IsolatedEigenLayerWstETHVaultFactory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | WhitelistedEthWrapper | own contract | WhitelistedEthWrapper (selected) `0xfd4a49...56504e` — deployed 2025-02-20 14:04:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity Mellow Multivault Audit.pdf | SymbioticWithdrawalQueue | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | EigenLayerWithdrawalQueue | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | EigenLayerWstETHWithdrawalQueue | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | RatiosStrategy | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | Claimer | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | MultiVault | own contract | 0xe88cf9… (selected) `0xe88cf9...b8a602` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity Mellow Multivault Audit.pdf | MultiVaultStorage | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | Migrator | own contract | Migrator (selected) `0x643ed3...82beab` — deployed 2025-01-23 14:16:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity Mellow Multivault Audit.pdf | EigenLayerFactoryHelper | unmatched — not counted | — | listed in scope table | no |
| Nethermind Mellow Interop Audit Report.pdf | TargetCore | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x48e69c...cce1c7` — deployed 2025-08-22 17:33:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind Mellow Interop Audit Report.pdf | SourceCore | ambiguous — not counted | 0x9cd45b… (alternative) `0x9cd45b...03f61f` — liveness: live (current_address_book_code)<br>SourceCore (alternative) `0x013d1e...269afb` — deployed 2025-07-18 19:02:43+03 — liveness: live (current_address_book_code)<br>0x24dd1e… (alternative) `0x24dd1e...c703df` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Nethermind Mellow Interop Audit Report.pdf | TargetCoreStorage | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | SourceCoreStorage | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | Delegator | own contract | 0xd1547c… (selected) `0xd1547c...9fe08b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind Mellow Interop Audit Report.pdf | WithdrawalQueue | ambiguous — not counted | 0xebd53e… (alternative) `0xebd53e...ae3e4a` — liveness: live (current_address_book_code)<br>WithdrawalQueue (alternative) `0x88d282...58bb2b` — deployed 2025-07-18 22:39:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Nethermind Mellow Interop Audit Report.pdf | Oracle | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | MellowOFT | ambiguous — not counted | MellowOFT (alternative) `0x05e979...957c84` — deployed 2025-07-28 01:16:59+03 — liveness: live (current_address_book_code)<br>0xf3a1c4… (alternative) `0xf3a1c4...e071d4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Nethermind Mellow Interop Audit Report.pdf | MellowOFTAdapter | ambiguous — not counted | 0x9d9645… (alternative) `0x9d9645...f1870a` — liveness: live (current_address_book_code)<br>MellowOFTAdapter (alternative) `0x24e6d6...a2bbba` — deployed 2025-07-18 19:02:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Nethermind Mellow Interop Audit Report.pdf | ISourceCoreStorage | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | ITargetCoreStorage | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | ITargetCore | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | ISourceCore | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | IWithdrawalQueue | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | IDelegator | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | IOracle | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | IMellowOFT | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | IMellowOFTAdapter | unmatched — not counted | — | listed in audited files table | no |
| Decurity Mellow Interop Audit Report.pdf | TargetCore | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x48e69c...cce1c7` — deployed 2025-08-22 17:33:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Decurity Mellow Interop Audit Report.pdf | SourceCore | ambiguous — not counted | 0x9cd45b… (alternative) `0x9cd45b...03f61f` — liveness: live (current_address_book_code)<br>SourceCore (alternative) `0x013d1e...269afb` — deployed 2025-07-18 19:02:43+03 — liveness: live (current_address_book_code)<br>0x24dd1e… (alternative) `0x24dd1e...c703df` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Decurity Mellow Interop Audit Report.pdf | TargetCoreStorage | unmatched — not counted | — | listed in scope section | no |
| Decurity Mellow Interop Audit Report.pdf | SourceCoreStorage | unmatched — not counted | — | listed in scope section | no |
| Decurity Mellow Interop Audit Report.pdf | Delegator | own contract | 0xd1547c… (selected) `0xd1547c...9fe08b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Decurity Mellow Interop Audit Report.pdf | WithdrawalQueue | ambiguous — not counted | 0xebd53e… (alternative) `0xebd53e...ae3e4a` — liveness: live (current_address_book_code)<br>WithdrawalQueue (alternative) `0x88d282...58bb2b` — deployed 2025-07-18 22:39:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Decurity Mellow Interop Audit Report.pdf | Oracle | unmatched — not counted | — | listed in scope section | no |
| Decurity Mellow Interop Audit Report.pdf | MellowOFT | ambiguous — not counted | MellowOFT (alternative) `0x05e979...957c84` — deployed 2025-07-28 01:16:59+03 — liveness: live (current_address_book_code)<br>0xf3a1c4… (alternative) `0xf3a1c4...e071d4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Decurity Mellow Interop Audit Report.pdf | MellowOFTAdapter | ambiguous — not counted | 0x9d9645… (alternative) `0x9d9645...f1870a` — liveness: live (current_address_book_code)<br>MellowOFTAdapter (alternative) `0x24e6d6...a2bbba` — deployed 2025-07-18 19:02:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | Factory | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | BasicRedeemHook | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | LidoDepositHook | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | RedirectingDepositHook | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | FenwickTreeLibrary | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | ShareManagerFlagLibrary | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | SlotLibrary | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | TransferLibrary | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | BasicShareManager | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | RiskManager | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | ShareManager | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | TokenizedShareManager | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | ACLModule | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | BaseModule | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | CallModule | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | ShareModule | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | SubvaultModule | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | VaultModule | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | VerifierModule | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | BitmaskVerifier | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | Consensus | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | MellowACL | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | EigenLayerVerifier | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | ERC20Verifier | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | OwnedCustomVerifier | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | SymbioticVerifier | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | Verifier | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | DepositQueue | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | Queue | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | RedeemQueue | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | SignatureDepositQueue | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | SignatureQueue | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | SignatureRedeemQueue | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | Subvault | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | VaultConfigurator | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | BitmaskVerifier | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | Consensus | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | Verifier | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | MellowACL | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | EigenLayerVerifier | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | OwnedCustomVerifier | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ERC20Verifier | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | SymbioticVerifier | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | SymbioticStrategy | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | SignatureDepositQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | RedeemQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | SignatureQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | Queue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | DepositQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | SignatureRedeemQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | TokenizedShareManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | RiskManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ShareManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | FeeManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | BasicShareManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | LidoDepositHook | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | RedirectingDepositHook | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | BasicRedeemHook | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | TransferLibrary | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ShareManagerFlagLibrary | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | SlotLibrary | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | FenwickTreeLibrary | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IMellowACL | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IConsensus | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IVerifier | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ICustomVerifier | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IRedeemQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IDepositQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ISignatureQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IRiskManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ITokenizedShareManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IShareManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IFeeManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IHook | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IRedeemHook | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IFactory | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IFactoryEntity | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IOracle | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ISymbioticRegistry | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ISymbioticVault | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ISymbioticStakerRewards | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IRewardsCoordinator | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IDelegationManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IAllocationManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ISignatureUtils | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IStrategy | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IStrategyManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IWSTETH | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IVerifierModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IBaseModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IShareModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IACLModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IVaultModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ISubvaultModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ICallModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | Factory | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | OracleHelper | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | Subvault | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | VaultConfigurator | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | VerifierModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | SubvaultModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ACLModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | CallModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ShareModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | VaultModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | BaseModule | unmatched — not counted | — | listed in scope table | no |
| NM_0758_Mellow-1.pdf | SyncDepositQueue | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0758_Mellow-1.pdf | SyncQueue | unmatched — not counted | — | listed in Audited Files table | no |
| NM0735-FINAL_MELLOW (1).pdf | SwapModule | unmatched — not counted | — | Listed in Audited Files table and throughout report as the sole contract in scope. | no |
| NM0758-FINAL_Mellow (1).pdf | SyncDepositQueue | unmatched — not counted | — | listed in Audited Files table | no |
| NM0758-FINAL_Mellow (1).pdf | SyncQueue | unmatched — not counted | — | listed in Audited Files table | no |
| NM0798-FINAL_MELLOW (1).pdf | BurnableTokenizedShareManager | unmatched — not counted | — | listed in Audited Files table | no |
| NM0812-FINAL_Mellow (1).pdf | ShareManager | unmatched — not counted | — | The changes are meant to transfer the fees from the ShareManager contract to the feeRecipient address via burn and mint. | no |
| NM0703-FINAL_MELLOW (1).pdf | OracleSubmitter | own contract | OracleSubmitter (selected) `0x000000...81907a` — deployed 2025-11-21 14:54:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| NM0682-FINAL_Mellow (1).pdf | Migrator | own contract | Migrator (selected) `0x643ed3...82beab` — deployed 2025-01-23 14:16:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x2ae9df...784c82` | CLPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5b1b1a...db4029` | CreateStrategyHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x57e114...1e6061` | ENA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x05164e...e930a4` | ERC20VaultGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0fd566...c79655` | FarmWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x20157d...7b5ad2` | IBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x09636b...a6ad43` | LpWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x05e979...957c84` | MellowOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x24e6d6...a2bbba` | MellowOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2683b3...a868ed` | PulseStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x734eff...bf9684` | PulseStrategyModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4b7c2c...beffef` | PulseVeloBotLazy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x013d1e...269afb` | SourceCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x474dd6...53ba69` | SourceHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9d39a5...7a3497` | StakedUSDeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0a6450...848914` | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x18084f...d93a88` | TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x57b946...58d26c` | TokenLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x004e9c...350568` | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5b1b1a...db4029` | VeloDeployFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x28c75f...d70043` | VeloDepositWithdrawModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2260fa...c2c599` | WBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x88d282...58bb2b` | WithdrawalQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f39c5...5e2ca0` | WstETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 390 |
| upstream | 22 |
| standard_library | 10 |
| needs_review | 411 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 32 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 9 ambiguous, 267 unmatched
- Matched-own operational status: 32 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=21
- Match method counts: unique_name=32

Zero-match audit list:

- [17629] Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf
- [17638] Sherlock_Mellow-Core-Vaults_20250728.pdf
- [17639] Nethermind_Mellow-Core-Vaults_20250903.pdf
- [17640] NM_0758_Mellow-1.pdf
- [17641] NM0735-FINAL_MELLOW (1).pdf
- [17642] NM0758-FINAL_Mellow (1).pdf
- [17643] NM0798-FINAL_MELLOW (1).pdf
- [17644] NM0812-FINAL_Mellow (1).pdf

Fork inheritance lineage and inherited audits are included when available.
