# Agentic Audit Brief: Allbridge

⚠️ Lifecycle status: DECLINING - TVL dropped 8.2% over 90 days

## Project Overview

- Project: Allbridge (`allbridge`)
- Website: [https://app.allbridge.io](https://app.allbridge.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:52:59.789Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, aurora, avalanche, base, bsc, celo, ethereum, fantom, harmony, linea, optimism, polygon, sonic, unichain
- Contract surface: 195 unique implementations (357 raw deployments)
- DeFi Llama TVL: $22,541,708.00
- On-chain TVL (included contracts): $323,216,816.18
- TVL by chain: Polygon $303,422,509.75 | Ethereum $15,878,484.47 | Bsc $2,099,130.39 | Arbitrum $758,338.41 | Base $457,534.09 | Celo $318,258.32 | Avalanche $160,379.08 | Optimism $74,004.22 | Unichain $26,547.22 | Sonic $21,630.23

## Project Description

Bridge. Structurally: 88 project-authored contract(s) across 8 chain(s); 18 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 18 common project-authored base contract(s) (gasusage, freezable, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 383; live-surface contracts included: 355 (169 live, 186 unknown).
- Excluded by liveness: 28 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/28 (0.0%)
- Deployed-live implementations: 43 of 195 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/44
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 4
- Unverified implementations: 151
- Unique implementations: 195
- Raw deployments: 357
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $323,216,816.18
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 7 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $323,216,816.18 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| QiStablecoin | token | polygon | n/a | [`0xa3fa99...6997f1`](./contracts/polygon-137/0xa3fa99a148fa48d14ed51d610c367c61876997f1/) | ⚠️ Unaudited |
| Pool | core_logic | polygon | n/a | 32 deployments: ethereum `0x1d3df1...8d403c`; ethereum `0x542ad3...a9ce97`; ethereum `0x7dbf07...74135d`; ethereum `0xa7062b...c57c4d`; ethereum `0xb827b1...9d1b0e`; ethereum `0xcab34d...51abad`; ethereum `0xce01bc...539172`; ethereum `0xe6fc2a...97063c`; optimism `0x3b96f8...f1f68f`; optimism `0xb24a05...b0deea`; bsc `0x179aad...799ca0`; bsc `0x731822...f29953`; bsc `0x8033d5...1d8b10`; bsc `0xb19cd6...3d2554`; bsc `0xb19dad...da0e02`; bsc `0xf833af...537811`; unichain `0xba2fba...a094d7`; unichain `0xd0a1ff...d9fce1`; polygon [`0x0394c4...090791`](./contracts/polygon-137/0x0394c4f17738a10096510832beab89a9dd090791/); polygon `0x171f3f...a47826`; polygon `0x218556...0bd604`; polygon `0x4c42df...2eb0a6`; polygon `0x58cc62...9437da`; polygon `0x6d92cf...9e3622`; sonic `0xca0dc3...43c71f`; base `0xda6bb1...5e96d5`; arbitrum `0x2b5e5e...c59d6d`; arbitrum `0x47235c...8472c7`; arbitrum `0x690e66...8a21df`; celo `0xfb2c7c...e2b5af`; avalanche `0x2d2f46...8b5784`; avalanche `0xe82735...38ec9f` | ⚠️ Unaudited |
| YellowToken | token | polygon | n/a | 2 deployments: ethereum `0x90b7e2...8a3320`; polygon [`0x18e73a...ab7b81`](./contracts/polygon-137/0x18e73a5333984549484348a94f4d219f4fab7b81/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | [`0xc2c28b...115148`](./contracts/bsc-56/0xc2c28b58db223da89b567a0a98197fc17c115148/) | ⚠️ Unaudited |
| StableTokenV2 | token | celo | n/a | [`0xe8537a...ab4787`](./contracts/celo-42220/0xe8537a3d056da446677b9e9d6c5db704eaab4787/) | ⚠️ Unaudited |
| Accounts | unknown | celo | n/a | 4 deployments: celo [`0x0fe151...67ef53`](./contracts/celo-42220/0x0fe15138b6ecf2b9cc3b2bc12fe9671d4267ef53/); celo `0x565677...e2b98c`; celo `0x907f5c...9c525a`; celo `0xbac4a3...05f603` | ⚠️ Unaudited |
| Ariadne | unknown | ethereum | n/a | [`0xb1c9bc...2a81d2`](./contracts/ethereum-1/0xb1c9bc94acd2fae6aabf4ffae4429b93512a81d2/) | ⚠️ Unaudited |
| AttestationsProxy | unknown | celo | n/a | 18 deployments: celo [`0x2496fd...8e9a3d`](./contracts/celo-42220/0x2496fda4b928e8cf799ac04ea79861ac828e9a3d/); celo `0x252b03...5f1649`; celo `0x30b3c1...0595ac`; celo `0x3a4936...edb3f4`; celo `0x488deb...6c8fa6`; celo `0x4a241b...877da9`; celo `0x65e25c...799411`; celo `0x673f19...74eecb`; celo `0x68da81...504785`; celo `0x93d52a...a0ecf7`; celo `0xb53ce2...d8d96a`; celo `0xc834e7...359afd`; celo `0xcc6517...9e8fbe`; celo `0xdadd05...6f9303`; celo `0xdd944d...99f451`; celo `0xeaaf55...bc9149`; celo `0xf114c7...f5406a`; celo `0xff2ba5...c9fd2d` | ⚠️ Unaudited |
| CctpBridge | operational_periphery | optimism | n/a | 11 deployments: ethereum `0x965a5e...5f31d1`; ethereum `0xc51397...2210d6`; optimism [`0x08391e...7c1cd0`](./contracts/optimism-10/0x08391edf36f41f05d27a1e0fd7a29448417c1cd0/); optimism `0x125ead...13b5d2`; polygon `0x43330f...166dcf`; polygon `0x710282...1ac82c`; base `0x1efe2c...6314f6`; base `0xaefb62...56af62`; arbitrum `0x23e1ae...92ccdb`; arbitrum `0x2ed095...b98a29`; avalanche `0x791a36...47ba6d` | ⚠️ Unaudited |
| DucklingsV1 | unknown | polygon | n/a | 2 deployments: polygon [`0x435b74...c7b0f0`](./contracts/polygon-137/0x435b74f6dc4a0723ca19e4dd2ac8aa1361c7b0f0/); polygon `0x6966c8...6a7add` | ⚠️ Unaudited |
| DucklingsV1 | unknown | polygon | n/a | [`0x8ba842...fe2499`](./contracts/polygon-137/0x8ba842c5190536230105550fd8dbb5446efe2499/) | ⚠️ Unaudited |
| DucklingsV2 | unknown | polygon | n/a | 2 deployments: polygon [`0x1debb8...1febe2`](./contracts/polygon-137/0x1debb826578c6736898982d6c6b4b8511a1febe2/); polygon `0x8056f8...a6b4d0` | ⚠️ Unaudited |
| DuckyFamilyV1 | unknown | polygon | n/a | 3 deployments: polygon [`0x2e1380...f57977`](./contracts/polygon-137/0x2e13807a9b9577651f37322fc79ae786fff57977/); polygon `0x7cf9ed...37c1c8`; polygon `0xb66bf7...ff7675` | ⚠️ Unaudited |
| Election | unknown | celo | n/a | 3 deployments: celo [`0x169c94...3009bc`](./contracts/celo-42220/0x169c946c9f70094b8ad74ee16477f27e713009bc/); celo `0x3db69c...9f6f28`; celo `0xbd7d39...31780e` | ⚠️ Unaudited |
| EpochManager | governance | celo | n/a | [`0x91e35c...dfc535`](./contracts/celo-42220/0x91e35ccea07a15af477e189c1e2bd12569dfc535/) | ⚠️ Unaudited |
| EpochRewards | unknown | celo | n/a | 3 deployments: celo [`0x33285c...63464b`](./contracts/celo-42220/0x33285cab4df24f37899dc14f324530661c63464b/); celo `0x4cadba...562aba`; celo `0x9dc549...f050d9` | ⚠️ Unaudited |
| GasOracle | operational_periphery | ethereum | n/a | 8 deployments: ethereum [`0x0bdf61...5b96e0`](./contracts/ethereum-1/0x0bdf6139f2841a7856ca154d851182c52f5b96e0/); optimism `0x4ad835...199d9a`; bsc `0xcaf00d...b9689b`; polygon `0x163f20...29d612`; base `0x7b2f61...7c6841`; base `0x7b806a...42f6d6`; arbitrum `0x2476b2...ebcb10`; avalanche `0x175fda...a2d29e` | ⚠️ Unaudited |
| GoldToken | token | celo | n/a | 3 deployments: celo [`0x04a182...c7edb2`](./contracts/celo-42220/0x04a182a01a303a4f1333a5ce1213ae54f0c7edb2/); celo `0xb16516...b2c19d`; celo `0xfea1b3...c4f7b1` | ⚠️ Unaudited |
| Governance | unknown | celo | n/a | 3 deployments: celo [`0x40bca4...1824e6`](./contracts/celo-42220/0x40bca46d9f7db71ecaa1e76655c3038a5a1824e6/); celo `0x40cac0...a6c57a`; celo `0xf51d27...7a215d` | ⚠️ Unaudited |
| GovernanceSlasher | unknown | celo | n/a | 2 deployments: celo [`0xb1b7b6...c51e9e`](./contracts/celo-42220/0xb1b7b6af5bb6b527094c7cc5ce8bab32f4c51e9e/); celo `0xed1073...6dbe14` | ⚠️ Unaudited |
| HAPI | unknown | ethereum | n/a | [`0xd9c2d3...84fb54`](./contracts/ethereum-1/0xd9c2d319cd7e6177336b0a9c93c21cb48d84fb54/) | ⚠️ Unaudited |
| HAPIBSC | unknown | bsc | n/a | [`0xd9c2d3...84fb54`](./contracts/bsc-56/0xd9c2d319cd7e6177336b0a9c93c21cb48d84fb54/) | ⚠️ Unaudited |
| HedgetToken | token | bsc | n/a | [`0xc7d8d3...071731`](./contracts/bsc-56/0xc7d8d35eba58a0935ff2d5a33df105dd9f071731/) | ⚠️ Unaudited |
| ImpossibleFinance | unknown | bsc | n/a | [`0xb0e1fc...614af1`](./contracts/bsc-56/0xb0e1fc65c1a741b4662b813eb787d369b8614af1/) | ⚠️ Unaudited |
| IntegerSortedLinkedList | unknown | celo | n/a | [`0xa86051...0d047c`](./contracts/celo-42220/0xa86051f29c45218b5f6cd121ebafb690660d047c/) | ⚠️ Unaudited |
| Messenger | unknown | ethereum | n/a | 7 deployments: ethereum [`0x203e87...9086da`](./contracts/ethereum-1/0x203e8785b4d4312c4152d0c42ba3fa8bd79086da/); optimism `0x309a09...093695`; bsc `0x3c37bd...66c27f`; polygon `0x3e0383...38451c`; base `0x9bc674...558271`; arbitrum `0xd5826d...bc4f9d`; avalanche `0xfd6e9d...36446f` | ⚠️ Unaudited |
| OUpgradeable | proxy | unichain | n/a | 2 deployments: unichain [`0x63f2f0...116ad8`](./contracts/unichain-130/0x63f2f03b44bbbd04483dbeb1b2615f6ef1116ad8/); unichain `0xf48e70...cd32e3` | ⚠️ Unaudited |
| PEN | unknown | ethereum | n/a | [`0x5ee318...c88f66`](./contracts/ethereum-1/0x5ee3188a3f8adee1d736edd4ae85000105c88f66/) | ⚠️ Unaudited |
| PortfolioToken | token | celo | n/a | [`0xbeff0c...63120d`](./contracts/celo-42220/0xbeff0ca03f5a9d4eb79057c81d2596265a63120d/) | ⚠️ Unaudited |
| ProxyAdmin | governance | unichain | n/a | 2 deployments: unichain [`0x818861...73c97a`](./contracts/unichain-130/0x818861321540148dbf6058d585cc0427f273c97a/); unichain `0xcb768e...dc59cc` | ⚠️ Unaudited |
| Rewards | unknown | bsc | n/a | [`0x88f042...085110`](./contracts/bsc-56/0x88f042fdea1d94ccd7b848686f9f529552085110/) | ⚠️ Unaudited |
| StableTokenV3 | token | celo | n/a | [`0xd8763c...d6ca73`](./contracts/celo-42220/0xd8763cba276a3738e6de85b4b3bf5fded6d6ca73/) | ⚠️ Unaudited |
| StakedUSDeOFT | unknown | arbitrum | n/a | [`0x211cc4...5fe5d2`](./contracts/arbitrum-42161/0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2/) | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | unichain | n/a | [`0x01bff4...bc1071`](./contracts/unichain-130/0x01bff41798a0bcf287b996046ca68b395dbc1071/) | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | unichain | n/a | 2 deployments: unichain [`0x915143...60ecc5`](./contracts/unichain-130/0x9151434b16b9763660705744891fa906f660ecc5/); unichain `0xaf37e8...0847ff` | ⚠️ Unaudited |
| TreasureVault | unknown | polygon | n/a | 2 deployments: polygon [`0x68d1e3...74d852`](./contracts/polygon-137/0x68d1e3f802058ce517e9ba871ab182299e74d852/); polygon `0xa0f014...d246d8` | ⚠️ Unaudited |
| USDe | unknown | ethereum | n/a | [`0x4c9edd...1e68b3`](./contracts/ethereum-1/0x4c9edd5852cd905f086c759e8383e09bff1e68b3/) | ⚠️ Unaudited |
| USDeOFT | unknown | arbitrum | n/a | [`0x5d3a1f...52ef34`](./contracts/arbitrum-42161/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | ⚠️ Unaudited |
| Validators | unknown | celo | n/a | [`0xa47961...c8dc95`](./contracts/celo-42220/0xa47961bf08da4267825866757f6e469a40c8dc95/) | ⚠️ Unaudited |
| WormholeMessenger | unknown | arbitrum | n/a | 2 deployments: optimism `0xf98a37...49e377`; arbitrum [`0x5f4e0a...bfc313`](./contracts/arbitrum-42161/0x5f4e0a6b848db318f4afc0b238c09747eebfc313/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | unknown | polygon | n/a | 4 deployments: ethereum `0xa11bd3...ce8c7c`; ethereum `0xf74134...ea3615`; bsc `0x37dfac...0aacb7`; polygon [`0x14743e...4103e7`](./contracts/polygon-137/0x14743e1c6f812154f7ecc980d890f0f5234103e7/) | ⚠️ Unaudited (bytecode match) |
| WrappedToken | token | polygon | n/a | 30 deployments: ethereum `0x087095...f1863f`; ethereum `0x2bd1f3...3f5f0f`; ethereum `0x34ac7e...52d469`; ethereum `0x48b847...9bba72`; ethereum `0x934ac3...6ee8a9`; bsc `0x4f161e...f8ce9e`; bsc `0x68784f...f42b4a`; bsc `0x9df465...71f8f0`; bsc `0xa0a996...e73d97`; polygon [`0x04429f...293346`](./contracts/polygon-137/0x04429fbb948bbd09327763214b45e505a5293346/); polygon `0x72bd80...af6f2f`; polygon `0x7dff46...2ea7a4`; polygon `0xb6ebc3...7b38ca`; polygon `0xbe276e...9b4b19`; celo `0x173234...aed450`; celo `0x47264a...7346a8`; celo `0x6e512b...680cc9`; celo `0x8d2c77...95f92d`; celo `0x8e3670...89b690`; celo `0xed193c...02835c`; avalanche `0xafc436...b291c9`; aurora `0x0f0057...5afd48`; aurora `0x0fad0e...bf41b5`; aurora `0x2bae00...630111`; aurora `0x486d4c...3d785b`; aurora `0x5c92a4...589783`; aurora `0x5ce9f0...34a9dc`; aurora `0x7b8d18...bc51eb`; aurora `0xb14674...f6e762`; aurora `0xc4bdd2...038096` | ⚠️ Unaudited (bytecode match) |
| Bridge | operational_periphery | base | n/a | 20 deployments: ethereum `0x609c69...af0c9e`; ethereum `0xbbbd1b...1de884`; ethereum `0xd5d6b2...5d6fc4`; optimism `0x97e5bf...50d5ab`; bsc `0x3c4fa6...58312f`; bsc `0xbbbd1b...1de884`; bsc `0xd5d6b2...5d6fc4`; unichain `0x782e91...05c598`; polygon `0x7775d6...d7d3e0`; polygon `0xbbbd1b...1de884`; polygon `0xd5d6b2...5d6fc4`; sonic `0x801217...19a116`; base [`0x001e3f...35def7`](./contracts/base-8453/0x001e3f136c2f804854581da55ad7660a2b35def7/); arbitrum `0x9ce344...92d189`; celo `0x80858f...c6ba0e`; celo `0xbbbd1b...1de884`; celo `0xd5d6b2...5d6fc4`; avalanche `0x9068e1...caeea9`; avalanche `0xbbbd1b...1de884`; aurora `0xbbbd1b...1de884` | ⚠️ Unaudited (bytecode match) |
| MultiSig | unknown | celo | n/a | 9 deployments: celo [`0x066f67...bd25f2`](./contracts/celo-42220/0x066f672c03347a24ee3f52d1f184f04f7abd25f2/); celo `0x120c00...49e892`; celo `0x65534a...043372`; celo `0x68e231...ee3903`; celo `0x72306f...72c33d`; celo `0xad52b8...14e7fc`; celo `0xb7feac...ff582a`; celo `0xbcb789...c3a567`; celo `0xc99d54...dd411e` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (151)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1b337b...b56bf2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3415ca...fbd34b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3461fb...229644` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x366a90...dbee50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b91b2...0a04a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4074ab...ba3b62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44f9e6...52cf15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47dfcb...191bfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70d1f1...be8b4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7972d6...d15c33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x937465...5bd74b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0719a...965e58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb24c64...e60efa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba6d8d...f2e1f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc8889...f9c2eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0b6e0...ef31e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec455f...47ab7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4830e...3da83f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x63b693...55e933` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xea7251...b077f1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf357f3...bce9ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0556c7...cbe29c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a76cb...9229c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0ac4a2...8a7229` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0dae5e...7d3bfc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f9016...db5724` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c1353...9a2a05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3420cc...71c4b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3461fb...229644` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x34e27b...3b6954` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37bb14...8bf175` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x442ca9...fdaf5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x454d10...8afb10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47dfcb...191bfd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b0b25...c6a5f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x619c99...c05ffd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ae4b1...2ff416` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x749cf8...10eaea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x776bfe...1ac0e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x779fd5...6a2da2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7bb5df...8a8cdc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d5c70...fcee0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80f955...af396b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8445b8...a153d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f6c5f...0a3f86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95603f...66ea40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa69083...204c78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3404f...b2ea1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbabbcf...7bcf25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc06ebb...0e1b1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc259b0...1bbae1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc3e289...801989` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc4e74...1fd416` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd41ef...c3731b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd16ab8...da6204` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1f17f...81cccd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe23074...7df236` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4631d...4fb58b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xecc1ae...fc14c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf119b1...3e2022` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x13313c...524c4f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x3070c6...e85486` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x44abfa...f62cc0` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xe8a580...c0528b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0fad0e...bf41b5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3461fb...229644` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x44aaa9...3a84d1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x620a78...b21aae` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9bb344...e75cf2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa1f17b...889d0f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb25bdd...6d96f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb30d4d...4a4832` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb43b97...746fbc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xba6d8d...f2e1f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd32880...20595b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd45268...d736c6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdbbe85...54669e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x83b71b...e170c3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x92b033...76634e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc5b78b...6aac70` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 11 deployments: fantom `0x1bb92e...0caa39`; fantom `0x44f723...e0f296`; fantom `0x543acd...87b679`; fantom `0xbbbd1b...1de884`; fantom `0xc3e16e...6ee327`; fantom `0xda0a16...99eabf`; harmony `0x5cb524...9fcd4b`; harmony `0x788ba0...dcad4f`; harmony `0xa21aab...664fd4`; harmony `0xcc9d14...37e71c`; harmony `0xf80ed1...f3383c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x214d97...6d7fad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4dc269...9cd337` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f4be8...a908e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc75553...e307fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe0c333...c67188` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x05266f...3cfe60` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x24c679...47e560` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x42f9e8...01ad9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5ab965...543c30` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7746e4...bea56a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7ed534...88ca18` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d7124...574eac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa82b9e...e54d76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb074e7...94fdea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb51905...0f9f82` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf8d0c...ef6f04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe76d1b...66f130` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfd22b7...7c5423` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x03e39a...7d1089` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x08a4b5...f0bd29` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0cb6fd...42422f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0d6d2c...f2900a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1b7a41...8865b7` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1e3d01...42ba5f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2dad1c...64f261` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x30584e...9f3f7d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3461fb...229644` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4efa94...8bc05e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x55f3b4...ecb381` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x5f86cc...e156f1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6da06a...806ef5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8bc96d...272e59` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8fa407...eedf84` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb658b5...be2b54` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb766b6...2fe062` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb98746...ae9feb` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xba6d8d...f2e1f6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbc4ee7...0f606a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc682c3...67330d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xcb32ea...d10f3f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd0716c...015c3f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xddf776...0b27fe` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf0c3fc...3e8b34` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x48b847...9bba72` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4b0093...1e5970` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x513d0d...fcd5ac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5fbf8d...b521c0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65de05...3b57ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x713157...32db10` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x937465...5bd74b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a3b53...007388` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa666ec...297bd4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xba6d8d...f2e1f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd36ce9...2b010a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdcf579...ea40d2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf216f2...7fd100` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x30572f...42da34` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x39a421...60e2c4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x78ca67...5ce665` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf3dd9d...99b907` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x937465...5bd74b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xba6d8d...f2e1f6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hacken.io/audits](https://hacken.io/audits) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view](https://drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view) | Kudelski Security | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20211105-Neodyme.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20211105-Neodyme.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [20211117-LeastAuthority.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20211117-LeastAuthority.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [20220916-Halborn.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20220916-Halborn.pdf) | Halborn | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [20221104-AckeeBlockchain.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20221104-AckeeBlockchain.pdf) | Ackee Blockchain | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [20221208-Halborn.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20221208-Halborn.pdf) | Halborn | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [20230607-Neodyme.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20230607-Neodyme.pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [hacken.io/audits/allbridge](https://hacken.io/audits/allbridge) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view](https://drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.coinfabrik.com/blog/allbridge-audit-report](https://www.coinfabrik.com/blog/allbridge-audit-report) | unknown | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x0394c4...090791`](./contracts/polygon-137/0x0394c4f17738a10096510832beab89a9dd090791/) | Pool | core_logic | $11,006,859.64 | Verified native implementation with $11,006,859.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x14743e...4103e7`](./contracts/polygon-137/0x14743e1c6f812154f7ecc980d890f0f5234103e7/) | Token | unknown | $6,347,506.07 | Verified native implementation with $6,347,506.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x18e73a...ab7b81`](./contracts/polygon-137/0x18e73a5333984549484348a94f4d219f4fab7b81/) | YellowToken | token | $2,511,435.93 | Verified native implementation with $2,511,435.93 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc2c28b...115148`](./contracts/bsc-56/0xc2c28b58db223da89b567a0a98197fc17c115148/) | BEP20Token | token | $295,181.87 | Verified native implementation with $295,181.87 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04429f...293346`](./contracts/polygon-137/0x04429fbb948bbd09327763214b45e505a5293346/) | WrappedToken | token | $70,578.59 | Verified native implementation with $70,578.59 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x001e3f...35def7`](./contracts/base-8453/0x001e3f136c2f804854581da55ad7660a2b35def7/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x08391e...7c1cd0`](./contracts/optimism-10/0x08391edf36f41f05d27a1e0fd7a29448417c1cd0/) | CctpBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x435b74...c7b0f0`](./contracts/polygon-137/0x435b74f6dc4a0723ca19e4dd2ac8aa1361c7b0f0/) | DucklingsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8ba842...fe2499`](./contracts/polygon-137/0x8ba842c5190536230105550fd8dbb5446efe2499/) | DucklingsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1debb8...1febe2`](./contracts/polygon-137/0x1debb826578c6736898982d6c6b4b8511a1febe2/) | DucklingsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2e1380...f57977`](./contracts/polygon-137/0x2e13807a9b9577651f37322fc79ae786fff57977/) | DuckyFamilyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x91e35c...dfc535`](./contracts/celo-42220/0x91e35ccea07a15af477e189c1e2bd12569dfc535/) | EpochManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x33285c...63464b`](./contracts/celo-42220/0x33285cab4df24f37899dc14f324530661c63464b/) | EpochRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bdf61...5b96e0`](./contracts/ethereum-1/0x0bdf6139f2841a7856ca154d851182c52f5b96e0/) | GasOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x40bca4...1824e6`](./contracts/celo-42220/0x40bca46d9f7db71ecaa1e76655c3038a5a1824e6/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xa86051...0d047c`](./contracts/celo-42220/0xa86051f29c45218b5f6cd121ebafb690660d047c/) | IntegerSortedLinkedList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x203e87...9086da`](./contracts/ethereum-1/0x203e8785b4d4312c4152d0c42ba3fa8bd79086da/) | Messenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xbeff0c...63120d`](./contracts/celo-42220/0xbeff0ca03f5a9d4eb79057c81d2596265a63120d/) | PortfolioToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x88f042...085110`](./contracts/bsc-56/0x88f042fdea1d94ccd7b848686f9f529552085110/) | Rewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x211cc4...5fe5d2`](./contracts/arbitrum-42161/0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2/) | StakedUSDeOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x68d1e3...74d852`](./contracts/polygon-137/0x68d1e3f802058ce517e9ba871ab182299e74d852/) | TreasureVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xa47961...c8dc95`](./contracts/celo-42220/0xa47961bf08da4267825866757f6e469a40c8dc95/) | Validators | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 11 |
| standard_library | 4 |
| needs_review | 145 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1819] hacken.io/audits
- [1820] drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view
- [9788] 20211105-Neodyme.pdf
- [9789] 20211117-LeastAuthority.pdf
- [9790] 20220916-Halborn.pdf
- [9791] 20221104-AckeeBlockchain.pdf
- [9792] 20221208-Halborn.pdf
- [9793] 20230607-Neodyme.pdf
- [12352] hacken.io/audits/allbridge
- [12354] drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view
- [12355] www.coinfabrik.com/blog/allbridge-audit-report

Fork inheritance lineage and inherited audits are included when available.
