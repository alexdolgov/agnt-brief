# Agentic Audit Brief: Proxy

## Project Overview

- Project: Proxy (`proxy`)
- Lifecycle: active (Tier 0, 38.7% below peak)
- Generated: 2026-06-10T20:59:09.385Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum, polygon
- Contract surface: 278 unique implementations (372 raw deployments)
- DeFi Llama TVL: $19,955,618.58
- On-chain TVL (included contracts): $735.64
- TVL by chain: Polygon $735.64

## Project Description

Proxy Finance is a Bitcoin-focused DeFi protocol centered on BTCpx, a BTC wrapper, and related yield mechanisms. Its ecosystem includes PRXY governance/staking, farmProxy/fPRXY rewards, bonding, and programs for other assets; DefiLlama categorizes the protocol as a Bridge, but the description should not imply that active cross-chain transfer infrastructure is its sole or primary function without additional supporting evidence.

### Architecture

The single product family encompasses all core contracts: BTCpx_Proxy manages the wrapped Bitcoin token, ProxyTokenV2 is the native PRXY token, and PRXYStaking handles staking rewards. No separate families or shared infrastructure are evident from the contract surface.

## Audit Coverage Summary

- Verified implementations audited: 1/12 (8.3%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 266
- Unique implementations: 278
- Raw deployments: 372
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $735.64
- Latest audit: 2021-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 8.3% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BTCpx | unknown | ethereum | 2 deployments: ethereum [`0x9c3218...dd1021`](./contracts/ethereum-1/0x9c32185b81766a051e08de671207b34466dd1021/); polygon [`0x9c3218...dd1021`](./contracts/polygon-137/0x9c32185b81766a051e08de671207b34466dd1021/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ProxyTokenV2 | token | polygon | [`0xab3d68...cb8591`](./contracts/polygon-137/0xab3d689c22a2bb821f50a4ff0f21a7980dcb8591/) | ⚠️ Unaudited |
| BTCpx_Proxy | unknown | polygon | 3 deployments: polygon [`0x22acae...db6a4f`](./contracts/polygon-137/0x22acaee85ddb83a3a33b7f0928a0e2c3bfdb6a4f/); polygon `0x553cbd...e86a4d`; polygon `0xa4d383...85436e` | ⚠️ Unaudited |
| Distributor | operational_periphery | polygon | 8 deployments: polygon [`0x10eaaf...ffbfd9`](./contracts/polygon-137/0x10eaafd8cfd04133bd75f34b47477ddb56ffbfd9/); polygon `0x30f09a...e922a4`; polygon `0x45a82f...a2c49f`; polygon `0x538d61...15dfb1`; polygon `0x635c74...20f449`; polygon `0x8fd82f...ad0d7e`; polygon `0x972ce5...17ef90`; polygon `0x9bbd98...9e296a` | ⚠️ Unaudited |
| fPRXY | unknown | polygon | 21 deployments: polygon [`0x256116...4b68e1`](./contracts/polygon-137/0x256116a8ea8bad13897462117d88082c464b68e1/); polygon `0x278008...dde21b`; polygon `0x2989aa...777668`; polygon `0x2c2e02...53e5db`; polygon `0x305ce2...05afcc`; polygon `0x31ed1e...930ae6`; polygon `0x3c76f8...8458b7`; polygon `0x5997bc...e3611a`; polygon `0x5aa04a...4e8f91`; polygon `0x60c566...32f44f`; polygon `0x63d6f5...50f45c`; polygon `0x6423d9...b30849`; polygon `0x6f0908...ad9095`; polygon `0x7de6dc...5036f9`; polygon `0xa3a86e...aef97d`; polygon `0xa7b415...5f1d6d`; polygon `0xb535fe...15c0b4`; polygon `0xb93432...209d74`; polygon `0xc6da9e...129a56`; polygon `0xd89727...6b1e0a`; polygon `0xd9e135...ce4822` | ⚠️ Unaudited |
| iBTCpxToken | token | polygon | 16 deployments: polygon [`0x007b18...0b9374`](./contracts/polygon-137/0x007b18aeb79c3566ad4d8a6185b553d8c30b9374/); polygon `0x027a78...c8dc29`; polygon `0x0efa49...f73e7d`; polygon `0x124e09...8195ce`; polygon `0x1b2c64...db41e1`; polygon `0x4d11af...0219ba`; polygon `0x61d17a...399f90`; polygon `0x7839a5...040604`; polygon `0xa8d077...135f69`; polygon `0xac6791...e7a094`; polygon `0xafc832...10bf14`; polygon `0xb7e1b1...bff71f`; polygon `0xb98919...4f14fd`; polygon `0xbaa94c...af63d3`; polygon `0xc49eb8...fc8fce`; polygon `0xce5565...354b51` | ⚠️ Unaudited |
| PRXYStaking | unknown | polygon | 8 deployments: polygon [`0x015cee...f5268d`](./contracts/polygon-137/0x015cee3ab6d03267b1b2c05d2ac9e2250af5268d/); polygon `0x37601e...354eca`; polygon `0x47c93e...d8e199`; polygon `0x731112...d837ef`; polygon `0x7a65d9...0342e3`; polygon `0x87d2c3...7fe063`; polygon `0xdff11b...50b9cd`; polygon `0xfa098c...a9f067` | ⚠️ Unaudited |
| PRXYTreasury | operational_periphery | polygon | 21 deployments: polygon [`0x0a1c06...8a2cb0`](./contracts/polygon-137/0x0a1c0672f8a2b9b281c0b24752891e4e6d8a2cb0/); polygon `0x0f2215...85e86a`; polygon `0x1c08a5...cafc30`; polygon `0x1ea123...ea1af2`; polygon `0x1f3433...c09945`; polygon `0x2da6b7...2755af`; polygon `0x3157f7...8d3cf4`; polygon `0x39b380...dfd202`; polygon `0x45f1c5...f9d85d`; polygon `0x6e48d5...0a88ba`; polygon `0x7f0b5e...2061ca`; polygon `0x950e66...1685a7`; polygon `0xa1d3f5...751550`; polygon `0xa6b278...4cec52`; polygon `0xb9fd56...7b81de`; polygon `0xd88b73...67a4d1`; polygon `0xdbbb15...f03c53`; polygon `0xedc51a...6380a8`; polygon `0xf6ef1c...703baf`; polygon `0xf77ce4...e73e55`; polygon `0xffc373...b2b974` | ⚠️ Unaudited |
| sPRXY | unknown | polygon | 19 deployments: polygon [`0x07fd17...3a7149`](./contracts/polygon-137/0x07fd1729fd2229dea20a621735301035c33a7149/); polygon `0x0dd24c...86f7ea`; polygon `0x150fb2...b4c98d`; polygon `0x31f7b3...c0d74a`; polygon `0x426ac2...ffc20d`; polygon `0x4b32ec...7e717e`; polygon `0x521ab8...7fcde9`; polygon `0x5ffe35...0dcf2a`; polygon `0x66a21c...2bd0ac`; polygon `0x762b7d...6ab4ba`; polygon `0x88d3ee...ec9cfb`; polygon `0xb7f2f8...595beb`; polygon `0xb8e65e...67e0c1`; polygon `0xca79b5...2fd9fd`; polygon `0xdd3961...124d3e`; polygon `0xdedc7a...932706`; polygon `0xf56b72...e23f2f`; polygon `0xf656ef...432137`; polygon `0xfb18d2...ad04fa` | ⚠️ Unaudited |
| StakingHelper | periphery | polygon | 4 deployments: polygon [`0x5009d5...c27524`](./contracts/polygon-137/0x5009d57a54cd6854137bac0d54a5eba9c3c27524/); polygon `0x5e961d...12ac7b`; polygon `0xc4d6ca...622f62`; polygon `0xd32872...5cbe57` | ⚠️ Unaudited |
| StakingWarmup | unknown | polygon | 2 deployments: polygon [`0x07ca30...8bcb3a`](./contracts/polygon-137/0x07ca30df73ff0a8c1300fc35c6e20cfe5f8bcb3a/); polygon `0x611ccb...b08862` | ⚠️ Unaudited |
| xBTCpx | unknown | polygon | [`0x9c50e7...58f8e1`](./contracts/polygon-137/0x9c50e75281915bfdca55e5ea855bc30fa158f8e1/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (266)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x1aa3fc...f0670c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1e21c1...298155` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3cdbdb...695aa4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x43aee8...7371ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x720a54...432677` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa489f0...c978df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa9045f...fbad9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xca6a87...49cd8b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x005068...8f63fb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x017ee2...f01d08` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x01b4d2...beedeb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x01ea55...fe9ff8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x01f3c8...90676c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0218e7...4e65de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x023f25...1ae1c0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x037364...c4c3c4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x03d758...095ed3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x03f33a...79f977` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x04b661...8cbb43` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x04cf1c...cd0938` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x057a24...2f058c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x064a4e...3556e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x06af56...68ee04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x06b955...c0d7f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x06bb98...c45402` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x07b824...dacad2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x087f5d...aafa4f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0951b3...f29c08` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0aaddf...81b72d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0bcc4c...ba6a62` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0e4028...d567ee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0e5443...117145` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0f63d2...3ae0ea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0fc029...265509` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1095fd...fc7a7b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x10ec26...33120f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x122945...9a7e54` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1296c0...99d40d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x14b4b4...221d71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x14cdc2...d69719` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x16b3df...408457` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x176b2a...ad488c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x18a410...ea5d6b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1d3855...e8db2e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1e71bc...d666ad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x20cb01...a1f9ca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x20ef24...fe2d74` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x20f6ed...0065f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x20fe5f...8493d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x23bb38...2a1b49` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x24b386...e98572` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2854cf...e4538c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2a4a1e...0ea804` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2c5246...5077cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2e21d9...5def66` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2eff60...d2ad3f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3038a7...eaabe7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x314bdc...fc9135` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x315047...18e07d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3189af...fa04c0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x320270...b46146` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3298fe...58debb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3312fa...04e25a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x33315c...1a4b20` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x339ae3...f0a481` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x33ed7f...3ce580` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x37c7f5...c17c14` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x37df3a...1dc7ad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x38502b...82a5d4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3904a1...b268aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x392811...ee812b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x396471...a9bbd1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x39dfb1...b9490e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3ac201...24d41d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3bc55f...72a33d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3cdbdb...695aa4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3ce7a5...31d078` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3cfee5...7ba70b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x40b8a9...6c2c6e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x415d3d...d1496e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x43aee8...7371ff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4472d9...1a45fd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x462f8f...a92bc0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x46e786...bbba20` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4896dd...a08b91` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4a2765...4bb3bc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4a3db1...d61a0c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4ad852...11c38b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4b8c1a...ba03af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4bc64c...3b1ca1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4cfbb3...f4bc4b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4d38c7...8fd237` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4dfe4e...7eb8a1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4f2c1e...569cb1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4ff066...45783e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5040e5...d8c7bb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5251d5...9d9a07` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x528ab4...9c3cae` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x52f84a...3807b3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5500c0...238b41` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x55d8f3...56baa2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x56a11b...d84338` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5801e0...70ab6d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x581de9...77c8c4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x59a3f6...9cb8d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5a6a29...a68067` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5aad94...4bf77b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5ae1bb...86f51f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x61b923...f097b6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x63acc8...506ae1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6467a9...44b3f3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x67445e...a93ef7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6aa3c8...88b449` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6aae3b...662e63` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6d6633...6ab778` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6e4ac0...b6d54e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6f7186...fd9594` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6fa420...8e7fbd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x704792...8f244b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x711c5e...0bcb2e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x714f2d...525725` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x71aaf6...cc9f12` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x72c9ac...ede5bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x73588f...665f32` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7526ea...91c51a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7626aa...9a8bab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x76cd90...88b489` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x77391c...9b18bc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7746f9...66db95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x783328...cc901d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x79a1f2...2cbfed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x79ebc9...104964` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7b2e54...3ffdca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7b348b...b155cb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7cf623...de39b6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7e4eb1...ddf12d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x80a701...911f74` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x81a329...f86032` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x83c960...af795e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x85ed6b...320ac9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8708e2...3ae229` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x878984...8ace01` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x878e22...be0140` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x87e92c...fbe226` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x87f8e5...001890` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x886c55...f8b124` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8870c7...fedf03` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8c68b7...2d4f28` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8c8c00...21355a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8d2fbd...e1073c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8e390a...4910ff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8f7ab1...712cc5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x90252b...4144c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x908b65...3a6bd9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9202b2...eb848f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x923f49...4cf1d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x93622f...d420f0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x93fa4c...74ae6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9492eb...8779a1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x94c49f...bd146e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x97f09c...1d45cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9827f8...ee5953` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x983a5a...52b29c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x98e986...7b9165` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9ae918...b9cede` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9aea04...4b6e2a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9afb53...8a941b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9c7543...7a8f5d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9e432d...94f7da` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9f1f33...49d18b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9f963a...40fb7d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9fa09b...3c6374` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa2a405...d8f09e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa46a8d...0d62d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa4a7b5...84859f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa52914...72b328` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa7a07f...99d509` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa805bc...68728b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xaafda1...144282` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xabe4cd...67ff5e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xad79c4...3c5075` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xaff78d...d60200` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb2ae35...04bae9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb2f3ce...798e42` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb4af2e...406673` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb4ca9c...6b0481` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb5208b...9272aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb58e62...f2f4a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb7e08b...4874ad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb8e0b1...1e9127` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbe2ab6...e3231e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc01878...128d0b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc06df5...78592e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc1c3f7...bfb12d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc37320...954246` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc38693...696b49` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc3dddc...dd7772` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc478b4...78d6e0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc54326...f722ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc546fe...dd56ae` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc8c3dd...713f21` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc8e539...679934` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc97e03...27d1e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc9af40...ff9a14` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc9d5dc...1f7544` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcb8979...c1f7da` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcc38f0...5f6288` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcdaf34...865661` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xce0af3...dab8de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcea29f...1684b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd0061e...b52d4c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd124ea...f6cba9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd2a731...a1e02b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd2b75d...b679b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd38c5f...954aee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd4fea7...523919` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xda6497...539a04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdb2f32...23dec3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdb76ab...b9dd2a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdbaa91...ee510f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdbece5...a4a9ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdcaabe...45a9af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xddb68a...d61667` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xddcc2e...583d3c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe14c02...d0b8e7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe19d15...f84740` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe26a82...838863` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe357db...9fd285` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe3fb2e...e00c17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe43b49...5fa6b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe6c7b4...770c08` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe738cf...1e31f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe74749...efd1a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe8db3c...ddf488` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe8f6b4...3f9131` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe91a7d...e78445` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe9c0d0...7569b7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xee6177...804293` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xee6513...d086aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xee7f60...f544d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xeee36f...ecfaca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xef185a...f6cdfd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xef6930...860d39` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf0769f...6a23ba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf093d1...8b0dbd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf198da...c3dfab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf1c67c...abd6bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf1dff5...3000fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf209ab...023b45` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf2623c...428bf4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf3bf55...d7d8ef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf4ebb9...d6fcec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf54662...937592` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf6cf66...92a6f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf736d5...e4fb93` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf7673d...783933` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf86751...5a29e2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf88691...c7829b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfa947b...a6a015` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfaae73...35a3c1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfc09a5...0f1106` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfc18ce...826bd5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfc7971...4d6676` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfd4add...370307` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfdda1a...27dde4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfe447f...c9831f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [BTC Proxy Smart Contracts Audit Report - QuillAudits.pdf](https://github.com/Quillhash/Audit_Reports/blob/master/BTC%20Proxy%20Smart%20Contracts%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xab3d68...cb8591`](./contracts/polygon-137/0xab3d689c22a2bb821f50a4ff0f21a7980dcb8591/) | ProxyTokenV2 | token | $735.64 | Verified native implementation with $735.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x22acae...db6a4f`](./contracts/polygon-137/0x22acaee85ddb83a3a33b7f0928a0e2c3bfdb6a4f/) | BTCpx_Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x10eaaf...ffbfd9`](./contracts/polygon-137/0x10eaafd8cfd04133bd75f34b47477ddb56ffbfd9/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x007b18...0b9374`](./contracts/polygon-137/0x007b18aeb79c3566ad4d8a6185b553d8c30b9374/) | iBTCpxToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x015cee...f5268d`](./contracts/polygon-137/0x015cee3ab6d03267b1b2c05d2ac9e2250af5268d/) | PRXYStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0a1c06...8a2cb0`](./contracts/polygon-137/0x0a1c0672f8a2b9b281c0b24752891e4e6d8a2cb0/) | PRXYTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x07fd17...3a7149`](./contracts/polygon-137/0x07fd1729fd2229dea20a621735301035c33a7149/) | sPRXY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5009d5...c27524`](./contracts/polygon-137/0x5009d57a54cd6854137bac0d54a5eba9c3c27524/) | StakingHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x07ca30...8bcb3a`](./contracts/polygon-137/0x07ca30df73ff0a8c1300fc35c6e20cfe5f8bcb3a/) | StakingWarmup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9c50e7...58f8e1`](./contracts/polygon-137/0x9c50e75281915bfdca55e5ea855bc30fa158f8e1/) | xBTCpx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 254 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
