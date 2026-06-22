# Agentic Audit Brief: OpenEden

## Project Overview

- Project: OpenEden (`openeden`)
- Website: [https://app.openeden.com/](https://app.openeden.com/)
- Lifecycle: active (Tier 0, 40.7% below peak)
- Generated: 2026-06-21T18:42:00.744Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base, bsc, ethereum, klaytn, polygon
- Contract surface: 211 unique implementations (458 raw deployments)
- DeFi Llama TVL: $225,384,542.40
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

OpenEden is an on-chain capital allocation protocol that tokenizes real-world assets (RWAs) like U.S. Treasury bills and provides stablecoin products (USDO). It enables institutional and retail users to access yield-bearing, compliant digital assets across multiple blockchains.

### Architecture

The TBILL and USDO families share compliance infrastructure (KycManager, ComplianceConfigurationService) and pricing oracles (TBillPriceOracle). USDO relies on TBILL vaults as backing assets, with cross-chain wallets (ArbethWalletSimple, PolygonWalletSimple) enabling multi-chain stablecoin operations.

## Contract Surface Quality

- Indexed contracts: 1535; live-surface contracts included: 458 (456 live, 2 unknown).
- Excluded by liveness: 928 inactive, 149 singleton, 0 uninitialized.
- Deployment units: 6/82 live.
- Detected codebases: none
- Unverified dependencies: 2/4.

## Audit Coverage Summary

- Verified implementations audited: 5/24 (20.8%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 5
- Unverified implementations: 187
- Unique implementations: 211
- Raw deployments: 458
- Audits discovered: 9
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 3 aging, 3 stale, 3 unknown
- Tier 1 coverage: 16.7% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 4 | 16.7% | 2025-03 |
| Hacken | Tier 2 | 1 | 4.2% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| cUSDO | unknown | ethereum | unit-43593 | [`0xad55ae...23e7c0`](./contracts/ethereum-1/0xad55aebc9b8c03fc43cd9f62260391c13c23e7c0/) | ✅ Audited |
| cUSDO | unknown | bsc | unit-43598 | [`0x64748e...ded8ef`](./contracts/bsc-56/0x64748ea3e31d0b7916f0ff91b017b9f404ded8ef/) | ✅ Audited |
| PartnerShip | unknown | bsc | n/a | [`0xe2b551...5b5f56`](./contracts/bsc-56/0xe2b55156183e60354334b345b7d8a436d75b5f56/) | ✅ Audited |
| USDO | unknown | bsc | unit-43595 | [`0x302e52...750aa8`](./contracts/bsc-56/0x302e52aff9815b9d1682473dbfb9c74f9b750aa8/) | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AllowanceLiquidityProvider | operational_periphery | ethereum | n/a | [`0x0aa5dc...6f0ec3`](./contracts/ethereum-1/0x0aa5dc1650cebf5e8db4a6070fa10702666f0ec3/) | ⚠️ Unaudited |
| ArbethWalletSimple | unknown | arbitrum | n/a | [`0xaab4ea...1dc116`](./contracts/arbitrum-42161/0xaab4ea02e5616787931c9e8283cb27f0211dc116/) | ⚠️ Unaudited |
| DSToken | token | ethereum | n/a | [`0x095d37...58fd03`](./contracts/ethereum-1/0x095d37b7463e1c468c7a610f748394c63a58fd03/) | ⚠️ Unaudited |
| Express | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0f8cd1...a76102`](./contracts/ethereum-1/0x0f8cd18df46c77839ad3289798f428a6d2a76102/); bsc `0x82391e...2065bc` | ⚠️ Unaudited |
| FeeManager | governance | bsc | n/a | [`0xaa311e...05f4d7`](./contracts/bsc-56/0xaa311e05f20b5e3d28b56f012b4560f1e405f4d7/) | ⚠️ Unaudited |
| OpenEdenVaultV4 | core_logic | arbitrum | n/a | [`0x331b25...a4c5e3`](./contracts/arbitrum-42161/0x331b256b9c2ebe5113cabf0281a2f4815ca4c5e3/) | ⚠️ Unaudited |
| PriceOracle | operational_periphery | ethereum | n/a | [`0x00d440...eaa7ba`](./contracts/ethereum-1/0x00d440bc15d1cb4d152c5130a5e11690e1eaa7ba/) | ⚠️ Unaudited |
| TimelockController | governance | bsc | n/a | [`0xf209a1...195f79`](./contracts/bsc-56/0xf209a13cb460682297c39e99091e2d543b195f79/) | ⚠️ Unaudited |
| Token | token | ethereum | n/a | [`0x0fd554...202dd3`](./contracts/ethereum-1/0x0fd554503c88e9ce02d6f81799f928c8aa202dd3/) | ⚠️ Unaudited |
| TrustService | unknown | ethereum | n/a | 3 deployments: ethereum [`0x11011f...4220c8`](./contracts/ethereum-1/0x11011fa9b4f83cb318d9f2a9ea4b8047c14220c8/); polygon `0x73fa60...c81e2c`; polygon `0xe55ef4...b877ee` | ⚠️ Unaudited |
| USDOExpressV2 | unknown | bsc | unit-43602 | [`0xafd627...b3767e`](./contracts/bsc-56/0xafd6272ef694bc9a9d197979489543cdefb3767e/) | ⚠️ Unaudited |
| USDOMultiEVMPoRAddressList | unknown | base | n/a | [`0x440139...1a08b0`](./contracts/base-8453/0x440139321a15d14ce0729e004e91d66baf1a08b0/) | ⚠️ Unaudited |
| USDOPoRAssetsTracking | unknown | base | n/a | [`0xa69b96...9af278`](./contracts/base-8453/0xa69b964a597435a2f938cc55faabe34f2a9af278/) | ⚠️ Unaudited |
| VaultRegistrar | core_logic | ethereum | n/a | [`0x121d63...79711d`](./contracts/ethereum-1/0x121d63424e6f8632602f8f67848a28209179711d/) | ⚠️ Unaudited |
| WalletRegistrar | unknown | ethereum | n/a | 2 deployments: ethereum [`0x04c360...194a6f`](./contracts/ethereum-1/0x04c360034c30803eaffcb5e2a4bf708a49194a6f/); ethereum `0x08b9e9...c69090` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| USDO | unknown | ethereum | n/a | 6 deployments: ethereum [`0x12abff...264066`](./contracts/ethereum-1/0x12abff8dca2d09d99019dfcc9bf07539a8264066/); ethereum `0x3ddc84...750dc9`; ethereum `0x55dd37...b5b162`; ethereum `0x80e49d...b4e887`; ethereum `0x823888...823bfe`; ethereum `0x90276e...a2b48c` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Controller | unknown | ethereum | n/a | 3 deployments: ethereum [`0x377de6...a3fe41`](./contracts/ethereum-1/0x377de6729507bb0e56e0aac666bd8522e4a3fe41/); bsc `0xdae70f...7e0fc9`; arbitrum `0xc6773b...dcd01f` | ⚠️ Unaudited (bytecode match) |
| ERC1967Proxy | unknown | ethereum | n/a | 178 deployments: ethereum [`0x12e04c...73220d`](./contracts/ethereum-1/0x12e04c932d682a2999b4582f7c9b86171b73220d/); ethereum `0x179078...49b8c0`; ethereum `0x184cb1...ec649d`; ethereum `0x189fd4...b97229`; ethereum `0x1a798a...c4a6a4`; ethereum `0x1abd24...e06cd3`; ethereum `0x1b9aaf...5d06a5`; ethereum `0x1c292b...2aeeb1`; ethereum `0x1d95f6...3e8c75`; ethereum `0x1df389...9055df`; ethereum `0x1e3a48...f5c1ec`; ethereum `0x1ea550...68ad4f`; ethereum `0x1ed617...ed42bc`; ethereum `0x1f6c5a...be7b8e`; ethereum `0x2043ee...c89a6f`; ethereum `0x226b44...c7c66f`; ethereum `0x2454a0...a2db0d`; ethereum `0x27a66d...7c9eb4`; ethereum `0x27b319...a29d36`; ethereum `0x28b6a5...149ab8`; ethereum `0x29b925...6c625a`; ethereum `0x2a57cd...479a9d`; ethereum `0x2aab57...bd7be8`; ethereum `0x2c240c...ce1196`; ethereum `0x2e508f...b5ec2f`; ethereum `0x2fdb59...5df54f`; ethereum `0x31148b...a63077`; ethereum `0x3347d0...1612a8`; ethereum `0x33f4ba...66b84d`; ethereum `0x356022...3dd63a`; ethereum `0x368e74...9ddf7b`; ethereum `0x37364a...ac6bcb`; ethereum `0x3764ec...703f3f`; ethereum `0x38cc84...382657`; ethereum `0x3a05c9...a1ea7a`; ethereum `0x3a57a2...b73a4e`; ethereum `0x3c1344...f7af43`; ethereum `0x3cae18...ff9905`; ethereum `0x3ea6ed...952b9c`; ethereum `0x3ee1fa...f380e8`; ethereum `0x40430a...f36a55`; ethereum `0x412ab5...354897`; ethereum `0x41830d...6f6084`; ethereum `0x43b93e...947845`; ethereum `0x4470b7...8e6628`; ethereum `0x466513...cd66ab`; ethereum `0x47226a...52e0d7`; ethereum `0x475031...7ffae4`; ethereum `0x486e57...89d68b`; ethereum `0x488efd...cba50b`; ethereum `0x490b8d...027245`; ethereum `0x4ab0d4...9cc5dd`; ethereum `0x4c12a5...a42025`; ethereum `0x508972...c3f289`; ethereum `0x51c2d7...7210fc`; ethereum `0x54fac0...748a02`; ethereum `0x5690fd...e8bba3`; ethereum `0x56a202...ea7cf5`; ethereum `0x56cf2e...6527fe`; ethereum `0x573404...f44184`; ethereum `0x5e7712...0ad734`; ethereum `0x632425...0c9801`; ethereum `0x64c04a...f4c2bc`; ethereum `0x67c312...e42db6`; ethereum `0x68aefb...7f10fd`; ethereum `0x6b1394...1dee2f`; ethereum `0x6dc4b8...67f1b8`; ethereum `0x6fce11...32b870`; ethereum `0x705924...62f4b6`; ethereum `0x71080e...bc7f49`; ethereum `0x74995e...6d6f39`; ethereum `0x757b23...b077c7`; ethereum `0x77798e...f36d98`; ethereum `0x7885af...d86324`; ethereum `0x795d9c...eda75f`; ethereum `0x79c37f...2d6464`; ethereum `0x7c0305...c8edce`; ethereum `0x7d7e1b...4e880e`; ethereum `0x7ed5ab...aa17db`; ethereum `0x807570...6e5e4e`; ethereum `0x829db7...4851e4`; ethereum `0x857c16...5df724`; ethereum `0x86fbb1...76d914`; ethereum `0x8b8835...84d19f`; ethereum `0x8e849c...c55d04`; ethereum `0x903c8f...70d6ff`; ethereum `0x95c7b4...d1bc2e`; ethereum `0x964833...c2e943`; ethereum `0x97dc26...12f522`; ethereum `0x97f08f...795d52`; ethereum `0x9895a9...3d4a90`; ethereum `0x9909cb...2a37ca`; ethereum `0x9b9059...b5ffb1`; ethereum `0x9ed35a...b2d112`; ethereum `0x9f7ccf...efc63a`; ethereum `0x9fbf77...f620e5`; ethereum `0xa024bb...26e5b1`; ethereum `0xa25267...7c73e7`; ethereum `0xa31d3d...093bc7`; ethereum `0xa6a1eb...ae1c77`; ethereum `0xa91602...c29609`; ethereum `0xa95826...7717e7`; ethereum `0xa96422...18b33a`; ethereum `0xab97f1...7281a5`; ethereum `0xabebbb...403ca9`; ethereum `0xaf1de0...24d6fe`; ethereum `0xaf8633...f000d1`; ethereum `0xb69352...522d08`; ethereum `0xb6d3a7...904bcb`; ethereum `0xb826cf...566e5e`; ethereum `0xb8873e...841b24`; ethereum `0xb89519...e9150f`; ethereum `0xb9413f...8d1fef`; ethereum `0xb9cacb...341e03`; ethereum `0xba4fb5...177f2b`; ethereum `0xbaa47f...1b8e8b`; ethereum `0xbc93a6...a874c8`; ethereum `0xbcabe2...7c2471`; ethereum `0xbd01e6...ca4991`; ethereum `0xc1a8d4...8fcb77`; ethereum `0xc4b48a...c63597`; ethereum `0xc622cf...0dda5e`; ethereum `0xc6805c...22cdea`; ethereum `0xc793b3...ceb923`; ethereum `0xc92f87...6bd6ac`; ethereum `0xc9b609...cb7711`; ethereum `0xcd988a...8a4f1c`; ethereum `0xd280bc...1bef9f`; ethereum `0xd2e435...9c7e66`; ethereum `0xd73c20...d2268d`; ethereum `0xd84c25...10e569`; ethereum `0xd8edd4...bd69bb`; ethereum `0xd95b93...7058a0`; ethereum `0xdc12c4...fbe732`; ethereum `0xdfe060...fb9627`; ethereum `0xe30ec1...b113f9`; ethereum `0xe33c57...fd1e9d`; ethereum `0xe3cfd5...6c298b`; ethereum `0xe42c3f...a59100`; ethereum `0xe79f2f...32c094`; ethereum `0xe9302f...3a9ce9`; ethereum `0xe9d419...084e76`; ethereum `0xec0f58...0a6370`; ethereum `0xec43ba...e43e5e`; ethereum `0xf057a3...73b167`; ethereum `0xf10136...65f81d`; ethereum `0xf1213b...794997`; ethereum `0xf1901e...647b7e`; ethereum `0xf2fb28...d5c54e`; ethereum `0xf50375...1db7f5`; ethereum `0xf5a8da...28ce09`; ethereum `0xf632a6...3be4f1`; ethereum `0xf68e85...7edb46`; ethereum `0xf69ea3...127ce1`; ethereum `0xf7ad87...ec77ca`; ethereum `0xf7ffa2...7e1262`; ethereum `0xf83b6b...e85f8b`; ethereum `0xf8c297...a06f22`; ethereum `0xfb16b3...af42af`; ethereum `0xfe68b8...7554eb`; ethereum `0xff3e6c...b0db73`; ethereum `0xff409f...027b23`; ethereum `0xffd3b3...0e4f36`; bsc `0x1b0a0f...5af79f`; bsc `0x32c06b...9e2511`; bsc `0x3848b7...923497`; bsc `0x4b94a9...dcc78e`; bsc `0x65902c...79f91f`; bsc `0x66a72a...6c08c7`; bsc `0xce13e4...94670d`; polygon `0x5be49e...c02657`; polygon `0x5ddb32...7e536c`; polygon `0x6b0e08...a098ca`; polygon `0x736056...a79453`; polygon `0x8ecfe0...6f7cd4`; polygon `0x9351b3...0190d5`; polygon `0xbac139...681a3e`; polygon `0xfce60b...dc43d0` | ⚠️ Unaudited (bytecode match) |
| RedStoneNavProvider | unknown | ethereum | n/a | 58 deployments: ethereum [`0x15023f...400f4c`](./contracts/ethereum-1/0x15023f401e6065a2b55db7a96297960b4b400f4c/); ethereum `0x16501d...72655a`; ethereum `0x174180...06f27b`; ethereum `0x1cf534...d8035f`; ethereum `0x1e5d83...e37021`; ethereum `0x1ffd2c...a4f366`; ethereum `0x225571...14ff01`; ethereum `0x22afdb...0dcb88`; ethereum `0x2d01da...31777a`; ethereum `0x315b14...9eed57`; ethereum `0x323e02...9eb819`; ethereum `0x4a107b...bee141`; ethereum `0x504edc...8d53ee`; ethereum `0x51d016...e202a0`; ethereum `0x527573...c2138a`; ethereum `0x57ccfc...516cf2`; ethereum `0x5843f0...bf255a`; ethereum `0x5eb8fc...19e813`; ethereum `0x619601...e63ff0`; ethereum `0x6a9da2...c89041`; ethereum `0x712244...ba7a2c`; ethereum `0x75b59d...bea84f`; ethereum `0x7b2896...7d5e2b`; ethereum `0x847d22...6140b3`; ethereum `0x897e45...0fa0d4`; ethereum `0x8d2647...35b4b3`; ethereum `0x8fac01...a95ccd`; ethereum `0x909341...9b3a4d`; ethereum `0x94c7bf...bcd832`; ethereum `0x9548c8...bd661b`; ethereum `0x973e41...273d6d`; ethereum `0x9a435f...94b223`; ethereum `0x9f3fcd...d956c5`; ethereum `0xa0e63e...a3e72d`; ethereum `0xa0e803...f444ee`; ethereum `0xa79dcf...f65c98`; ethereum `0xaa9c1e...8a2b00`; ethereum `0xaeb349...48cb68`; ethereum `0xb178b8...39cea9`; ethereum `0xb92a44...ae91e3`; ethereum `0xc39743...b27101`; ethereum `0xc56539...b71c45`; ethereum `0xc6a219...c9b346`; ethereum `0xca9d95...d0e3bb`; ethereum `0xd4a747...96a87b`; ethereum `0xda2ffa...d7752e`; ethereum `0xda8e2d...5d3b85`; ethereum `0xddf17a...2cb44f`; ethereum `0xeb9cc4...b2099f`; ethereum `0xebbee7...2d4f2d`; ethereum `0xecc4bc...8691f1`; ethereum `0xf0f7c9...4647d4`; ethereum `0xf2afc0...894d22`; ethereum `0xf8433d...f1b9a7`; ethereum `0xf8e91f...d4332a`; ethereum `0xfa529c...5bb787`; ethereum `0xfc4392...885644`; polygon `0x229a3b...8fdf8a` | ⚠️ Unaudited (bytecode match) |
| TBillPriceOracle | operational_periphery | bsc | n/a | 3 deployments: ethereum `0xce9a66...e45f40`; bsc [`0x3347d0...1612a8`](./contracts/bsc-56/0x3347d0c6e2bd23b1148fbb7fef5f0fed281612a8/); arbitrum `0xc0952c...045f46` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (187)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0b3605...797a41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b3953...9ca17f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f841c...1f47d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12be0c...870bd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x136471...e49f2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x144e9d...e2a6a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x146729...3fe4e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x147ed9...bff73c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15e39c...e23b0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x170d28...fd82e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x177448...b18bdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c31f8...8b7507` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1cd4ea...78b005` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dd97c...7d8fd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20ca56...def4c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20d288...254ab8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x231d51...2f3f12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23354e...55d95e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x252739...a6bca9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x259c31...626285` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x285241...320e0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x292aab...1e5b49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a6f3f...57e18f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b170c...b72258` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c5c89...4cefcf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ca57e...d176e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d8fff...10c67e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e53d0...647822` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f60b5...955d80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32b2a5...2ab8e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x337220...554a63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x341c28...9841c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x354db3...447e00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x374cc6...513ec2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x375e7b...17508d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x377ea9...46507e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b1a5d...c5cb56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d9e9e...6552b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3dc3e3...e30dfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4038af...514456` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x408cf7...5f1fa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41a5be...8d59e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42eb56...f34d1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46bac0...9ef3cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x470f3b...40dfb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x496a4b...8251bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a5362...457d89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ba72c...43dbb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c48bc...1f8b3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d1883...f3b3c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dd2dc...90d4ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fecbe...44ec07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51cd8f...1451df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53b941...8d9e10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x554bf7...072a90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5575a8...16afd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5760fd...875f15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57a799...dc8f58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ba945...bbede8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5bf369...0c642c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c73e1...513b7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d79f2...444141` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5dbecc...560c7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f567d...1cfe1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5fa2d8...b554b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61dbd4...6616c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6246d1...8bf9e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62f27b...55372e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6367f4...96f0e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6378a8...b1963e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63866e...0bd31b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64b747...bbd4a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x685310...bae4dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6897b1...b30003` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b58f3...bfd5fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c5b5d...1eaa08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c6583...f3f8d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e4887...4f7c7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f6325...18160a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x701cc6...c80d9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70d8c3...4884f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x731206...7899e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74e72d...78362c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7687da...3d85bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76ed0a...ea8aaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7712c3...aa2aec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x776848...93feb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x777e50...723320` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x798d2a...50293a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a6476...db44c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a8588...cd6b97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x802a7f...e07131` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x807157...1c0586` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81e5be...ba2930` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x822ac1...b963b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x838a7e...e9bb3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x852a78...afbcd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88e699...50d83d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x891614...05380e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x899e62...2e7e41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b1e56...01e32f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b8ad7...042d26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8bdda8...5b34cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c3ccc...22cc6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e8ec6...6c9cca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x902d90...4f808c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x944dba...d245e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9753bd...f89932` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97d829...34d218` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98f59b...4cc0fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9bf05d...6de921` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c838a...ead7af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d13f3...e7b3ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9de1c6...4ad9c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fde71...fd23d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa23b06...59fc5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa282f3...ee3ed3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2bd91...ab8b66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2f6ef...b462c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa46a7b...fed8a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa740ca...10e52b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa74372...c9c7dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa77198...f7b61f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa15d3...c1fb36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa167a...cdda5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa93c6...57e41f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab278b...42f282` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab97ed...870220` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacdda1...2807db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb11db3...cdfc83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb217b7...061b85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb23925...7ae87e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5141b...5b33f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb59b15...460c76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb743c5...1e6b39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7c7eb...cdd837` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8981e...789967` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbad119...b7c2db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb514e...f7f839` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcc61b...6059b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf0f2f...45eb92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca3709...981bcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcaf2a0...4938c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcba6eb...a84b4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd6151...059400` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcdeafd...4448f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd012f2...a9b09a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd156d0...3da525` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd26bac...f9b27e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd35a10...77f1ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3bb19...143bdc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3d27c...9665b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3ec37...e70b85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd81be7...fb948e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9e2e5...a0b224` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdae70f...7e0fc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd50c0...5f2e8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd59b1...e3f282` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf472a...107b94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1411a...516a50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe26f3c...500e2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2b551...5b5f56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe33fdc...c245c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6b0c4...ccc9af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6ca5e...f999f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8cdc6...90974c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9cac1...b723e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb1f8f...bf4e9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed3e6b...db5434` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed76df...e02f68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee2493...2093a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee35f9...ea30e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf209a1...195f79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2210a...8ebb0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf451f5...8d3745` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4b2f0...07533f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8724d...cd26eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x00605f...a70dd1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06bb4a...619046` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x12e04c...73220d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc76fd...48eae6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x59689f...33cbb0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x70bf45...ab92d2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaea52c...cecef4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf61f16...6a9604` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x4bfc17...c2b021` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x87e617...facb48` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://openeden.com/Verichains%20Public%20Audit%20Report%20-%20OpenEden%20Vault%20-%20310323.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://hacken.io/audits/openeden/sca-openeden-vault-nov2024) | Hacken | Audit | 2024-12 | aging | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://assets.hacken.io/assets/Terms_of_Service_Hacken_io.pdf) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://assets.hacken.io/assets/Privacy_Notice_Hacken_io.pdf) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://www.chainsecurity.com/security-audit/openeden-usdoexpress) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | 4 | medium |
| [download report](https://reports.chainsecurity.com/OpenEden/ChainSecurity_OpenEden_USDOExpress_Audit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | 0 | n/a |
| [USDO Token, Chain Security, September 2024](https://www.chainsecurity.com/security-audit/openeden-usdo) | ChainSecurity | Audit | 2024-09 | aging | Direct | contract_name | 4 | medium |
| [* Verichains, [***March 2023***]()](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20OpenEden%20Vault%20-%20v1.1.pdf) | Hacken | Audit | 2023-03 | stale | Direct | contract_name | 0 | n/a |
| [* Hacken, [***October 2023***]()](https://hacken.io/audits/openeden) | Hacken | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0aa5dc...6f0ec3`](./contracts/ethereum-1/0x0aa5dc1650cebf5e8db4a6070fa10702666f0ec3/) | AllowanceLiquidityProvider | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaab4ea...1dc116`](./contracts/arbitrum-42161/0xaab4ea02e5616787931c9e8283cb27f0211dc116/) | ArbethWalletSimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x095d37...58fd03`](./contracts/ethereum-1/0x095d37b7463e1c468c7a610f748394c63a58fd03/) | DSToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f8cd1...a76102`](./contracts/ethereum-1/0x0f8cd18df46c77839ad3289798f428a6d2a76102/) | Express | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00d440...eaa7ba`](./contracts/ethereum-1/0x00d440bc15d1cb4d152c5130a5e11690e1eaa7ba/) | PriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3347d0...1612a8`](./contracts/bsc-56/0x3347d0c6e2bd23b1148fbb7fef5f0fed281612a8/) | TBillPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fd554...202dd3`](./contracts/ethereum-1/0x0fd554503c88e9ce02d6f81799f928c8aa202dd3/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11011f...4220c8`](./contracts/ethereum-1/0x11011fa9b4f83cb318d9f2a9ea4b8047c14220c8/) | TrustService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x121d63...79711d`](./contracts/ethereum-1/0x121d63424e6f8632602f8f67848a28209179711d/) | VaultRegistrar | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04c360...194a6f`](./contracts/ethereum-1/0x04c360034c30803eaffcb5e2a4bf708a49194a6f/) | WalletRegistrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 184 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=2
- Match method counts: extraction_exact=53

Zero-match audit list:

- [13618] DL audit link
- [13620] Rendered PDF capture
- [13621] Rendered PDF capture
- [13623] download report
- [13625] * Verichains, [***March 2023***]()
- [13626] * Hacken, [***October 2023***]()

Fork inheritance lineage and inherited audits are included when available.
