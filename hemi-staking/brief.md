# Agentic Audit Brief: Hemi Staking

## Project Overview

- Project: Hemi Staking (`hemi-staking`)
- Website: [https://app.hemi.xyz/en/stake/dashboard/](https://app.hemi.xyz/en/stake/dashboard/)
- Lifecycle: active (Tier 0, 92.5% below peak)
- Generated: 2026-06-10T20:59:04.573Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: bsc, ethereum, optimism, swellchain
- Contract surface: 120 unique implementations (207 raw deployments)
- DeFi Llama TVL: $36,924,885.97
- On-chain TVL (included contracts): $16,416,309.47
- TVL by chain: Ethereum $16,416,017.69 | Optimism $291.78

## Project Description

Hemi Staking is a Hemi-chain staking and farming product that lets users stake supported assets on Hemi to earn rewards and boost points. The staking brief should be limited to the Hemi staking app and its TVL-bearing staking contracts, not unrelated token, bridge, OP Stack, LayerZero, debt-token, or third-party infrastructure.

### Architecture

The Hemi Staking family relies on the L1 and L2 Hemi Contracts for cross-chain messaging and bridging, using OP Stack components to move assets and data between layers. The $HEMI token serves as the native asset across the ecosystem, while staking contracts interact with debt tokens and reward vaults that may be deployed on multiple chains.

## Audit Coverage Summary

- Verified implementations audited: 0/42 (0.0%)
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 78
- Unique implementations: 120
- Raw deployments: 207
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $16,416,309.47
- Latest audit: 2025-10 (fresh)
- Staleness: 1 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DebtTokenWithLz | token | ethereum | 4 deployments: ethereum [`0x195885...f0d0d2`](./contracts/ethereum-1/0x1958853a8be062dc4f401750eb233f5850f0d0d2/); ethereum `0xa32313...9d6c8d`; ethereum `0xb247bc...2b5a9d`; ethereum `0xb4818b...2766cb` | ⚠️ Unaudited |
| StakingVault | core_logic | ethereum | 4 deployments: ethereum [`0xb4d479...8e93ec`](./contracts/ethereum-1/0xb4d4793a1cd57b6ecebadf6fcbe5aed03e8e93ec/); ethereum `0xccfd19...029825`; ethereum `0xcdace5...2f4f9b`; ethereum `0xce91e9...0e8f7e` | ⚠️ Unaudited |
| RewardVault | core_logic | ethereum | 3 deployments: ethereum [`0x2863e3...542c02`](./contracts/ethereum-1/0x2863e3d0f29e2eec6adefc0df0d3171dad542c02/); ethereum `0x56cabe...acf261`; ethereum `0x84c593...9dee22` | ⚠️ Unaudited |
| GovernanceToken | token | optimism | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | ⚠️ Unaudited |
| GasPool | core_logic | ethereum | 2 deployments: ethereum [`0x627524...0400c9`](./contracts/ethereum-1/0x627524aec280300dfa58ddb30709a0f3810400c9/); ethereum `0xfe851a...1be184` | ⚠️ Unaudited |
| AddressManager | governance | ethereum | [`0xa5f377...9f5e43`](./contracts/ethereum-1/0xa5f37791378c55941a52b4dcb70be4d8d09f5e43/) | ⚠️ Unaudited |
| BinanceHemiOFT | unknown | bsc | 4 deployments: bsc [`0x5ffd0e...5afc5b`](./contracts/bsc-56/0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b/); bsc `0xb8dbff...a2c3c3`; bsc `0xd275f9...42506e`; bsc `0xfc5538...e91575` | ⚠️ Unaudited |
| CoreFacet | unknown | ethereum | 2 deployments: ethereum [`0x90b9e5...a0014f`](./contracts/ethereum-1/0x90b9e5de5dbe8d5c882aac8c097fd5a235a0014f/); ethereum `0xe16e1d...d52301` | ⚠️ Unaudited |
| EnzoBTC | unknown | ethereum | [`0x6a9a65...fbce4a`](./contracts/ethereum-1/0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a/) | ⚠️ Unaudited |
| EnzoBTCOFTAdapter | adapter | ethereum | [`0x99de52...7d63d5`](./contracts/ethereum-1/0x99de5239a8ad65ed86db3d36e0fd9f9cba7d63d5/) | ⚠️ Unaudited |
| EnzoNetwork | unknown | ethereum | 4 deployments: ethereum [`0x7efb35...c5c567`](./contracts/ethereum-1/0x7efb3515d9ec4537fafca635a1de7da7a5c5c567/); ethereum `0x8dd5ac...8d18c3`; ethereum `0xdc2156...950068`; ethereum `0xe8ca7c...43fd71` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | 2 deployments: ethereum [`0x132428...5312c0`](./contracts/ethereum-1/0x1324285bb2ddadfc9bebc2f8fc5049d7985312c0/); ethereum `0x5cd923...ee5296` | ⚠️ Unaudited |
| ERC20MintablePauseableUpgradeable | token | ethereum | 5 deployments: ethereum [`0x1c2253...7d28e0`](./contracts/ethereum-1/0x1c22531aa9747d76fff8f0a43b37954ca67d28e0/); ethereum `0x553d71...e73da2`; ethereum `0x8bf591...48a5a8`; ethereum `0xbeb120...c37f0a`; ethereum `0xe85411...91f711` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | 3 deployments: ethereum [`0x8434dc...25ea69`](./contracts/ethereum-1/0x8434dc705e4b729405dd66c94dfc62bc3825ea69/); ethereum `0xd9db27...709552`; optimism `0xd9db27...709552` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | registry | ethereum | 2 deployments: ethereum [`0xa6b71e...896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/); optimism [`0xa6b71e...896ab2`](./contracts/optimism-10/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | ⚠️ Unaudited |
| HemiLock | unknown | bsc | 4 deployments: bsc [`0x0795a3...ff1026`](./contracts/bsc-56/0x0795a3c4898d823946f953bd1234c0e7b7ff1026/); bsc `0x7070fa...fb89f9`; bsc `0x86bb2b...94046b`; bsc `0xfbe1ba...6eae8b` | ⚠️ Unaudited |
| Initializer | unknown | ethereum | 2 deployments: ethereum [`0x03d9c4...676872`](./contracts/ethereum-1/0x03d9c4e4bc5d3678a9076cac50db0251d8676872/); ethereum `0xfec7c4...3d8d9c` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | [`0xf005df...6fb050`](./contracts/ethereum-1/0xf005dfb08377fad44588af68d0884d272a6fb050/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | [`0x5eaa10...9f191e`](./contracts/ethereum-1/0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e/) | ⚠️ Unaudited |
| L2ERC721Bridge | operational_periphery | optimism | [`0x5a7749...aef23d`](./contracts/optimism-10/0x5a7749f83b81b301cab5f48eb8516b986daef23d/) | ⚠️ Unaudited |
| LiquidationFacet | unknown | ethereum | 2 deployments: ethereum [`0x38e2a4...852695`](./contracts/ethereum-1/0x38e2a41ab14b382e0188c8368937ee392e852695/); ethereum `0xde8714...4fe7b8` | ⚠️ Unaudited |
| MintSecurity | unknown | ethereum | 2 deployments: ethereum [`0x316c1b...2ab302`](./contracts/ethereum-1/0x316c1b6b0c7051a10073abf0d06f9cc5ae2ab302/); ethereum `0x47c4ac...620a1c` | ⚠️ Unaudited |
| MintStrategy | core_logic | ethereum | 2 deployments: ethereum [`0x81d7da...6b2c59`](./contracts/ethereum-1/0x81d7dab8b95085034d9ce90958038251726b2c59/); ethereum `0xb3cf78...3d02ab` | ⚠️ Unaudited |
| MIPS | unknown | ethereum | [`0x42ff66...ba9c2a`](./contracts/ethereum-1/0x42ff661af011939f699d67bd021d237ebcba9c2a/) | ⚠️ Unaudited |
| MockDstOFT | unknown | bsc | 35 deployments: bsc [`0x04db2d...cec72c`](./contracts/bsc-56/0x04db2da16318e616d28f0da7aa59eeb12acec72c/); bsc `0x14c9bc...298fba`; bsc `0x182c58...8463a1`; bsc `0x25c304...77d608`; bsc `0x2dd586...1142a8`; bsc `0x3a82a4...9cd2f4`; bsc `0x3ea24e...fbbcad`; bsc `0x466140...53a8f3`; bsc `0x4f2acd...1bd83e`; bsc `0x4ff907...c0f538`; bsc `0x51bc60...865761`; bsc `0x656f1f...c9e4d0`; bsc `0x6e3ac5...245365`; bsc `0x760c66...4ba3b7`; bsc `0x790e5f...e36acb`; bsc `0x8e4f0e...6110bf`; bsc `0x8f1561...9c0bb3`; bsc `0x951f5d...7d2c1d`; bsc `0x9bfc21...722406`; bsc `0xa3ceec...ac4da2`; bsc `0xb908ca...0c476e`; bsc `0xbd5caa...128a66`; bsc `0xbf504a...fb3735`; bsc `0xbf7d0f...35b2e2`; bsc `0xc340d0...090657`; bsc `0xc9ffa2...a03b46`; bsc `0xd86a00...df086b`; bsc `0xdb2d0b...2c3766`; bsc `0xdbd9cf...3bd39a`; bsc `0xe002c5...9e0ed9`; bsc `0xe2a466...ba8cc8`; bsc `0xe2adb4...77f938`; bsc `0xf22873...9b7e0f`; bsc `0xf3b36c...5893e0`; bsc `0xffd74e...2dfd09` | ⚠️ Unaudited |
| MockLock | unknown | bsc | 2 deployments: bsc [`0x32a21e...169a23`](./contracts/bsc-56/0x32a21ec8ee93971d4b4093c0895fd841c7169a23/); bsc `0xded54c...aad82e` | ⚠️ Unaudited |
| MultiCollateralHintHelpers | periphery | ethereum | 2 deployments: ethereum [`0x90d3b9...b9a9a2`](./contracts/ethereum-1/0x90d3b9982c2fbc9ebb583e9906ec4e3449b9a9a2/); ethereum `0xca5ded...efe8f2` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | ethereum | 2 deployments: ethereum [`0x3e83fd...d385ec`](./contracts/ethereum-1/0x3e83fd30fb9df3cdceb07a834e890dc287d385ec/); ethereum `0xd6a233...c41d93` | ⚠️ Unaudited |
| OFT | unknown | bsc | 6 deployments: bsc [`0x10061d...7b180c`](./contracts/bsc-56/0x10061d0593441ff74536158592e1be3f4c7b180c/); bsc `0x37d8c0...74d931`; bsc `0x64b5bb...609373`; bsc `0x707c24...412075`; bsc `0xa30e1a...076f30`; bsc `0xc141b6...a96515` | ⚠️ Unaudited |
| OptimismMintableERC721Factory | registry | optimism | [`0x69d67c...6e5ef0`](./contracts/optimism-10/0x69d67c1caa8d0717dffa6d2e5b1f7f19926e5ef0/) | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | [`0x613f36...24ed20`](./contracts/ethereum-1/0x613f36be58ba712b37474f4b82484d680d24ed20/) | ⚠️ Unaudited |
| PriceFeedAggregatorFacet | operational_periphery | ethereum | 2 deployments: ethereum [`0xef5e87...e05c1e`](./contracts/ethereum-1/0xef5e87476c4ac90a0973a2bf114ac770c4e05c1e/); ethereum `0xefaa8b...026860` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0xbe81a9...fefb30`](./contracts/ethereum-1/0xbe81a9d662422f667f634f3fc301e2e360fefb30/) | ⚠️ Unaudited |
| SatoshiXApp | unknown | ethereum | 2 deployments: ethereum [`0x07bbc5...0aa4ec`](./contracts/ethereum-1/0x07bbc5a83b83a5c440d1caedbf1081426d0aa4ec/); ethereum `0xb8374e...5b67e6` | ⚠️ Unaudited |
| SmartVault | core_logic | ethereum | 4 deployments: ethereum [`0x306e4d...1c86a8`](./contracts/ethereum-1/0x306e4d77e31db86f7f01463a7da3bf10b81c86a8/); ethereum `0x980963...56ba45`; ethereum `0x980fe4...ce4665`; ethereum `0xcc128e...58076d` | ⚠️ Unaudited |
| SmartVaultManager | core_logic | ethereum | 2 deployments: ethereum [`0x355961...4aed86`](./contracts/ethereum-1/0x355961ace96134fe7ba72b24b24559e7ca4aed86/); ethereum `0xf3d691...0c3e20` | ⚠️ Unaudited |
| StabilityPoolFacet | core_logic | ethereum | 2 deployments: ethereum [`0x23e727...08ccff`](./contracts/ethereum-1/0x23e727e4919eb9f11200197014ab96d03008ccff/); ethereum `0x9a3c72...811dd3` | ⚠️ Unaudited |
| TokenAuthority | governance | ethereum | [`0x2989c3...0a4663`](./contracts/ethereum-1/0x2989c38fb3cfcc0eeaf384ee5f1dc7dc520a4663/) | ⚠️ Unaudited |
| TransferStrategy | core_logic | ethereum | [`0x26cfab...52bb9e`](./contracts/ethereum-1/0x26cfabb6548e744219fa4b8923efd51f7352bb9e/) | ⚠️ Unaudited |
| TroveHelper | periphery | ethereum | 2 deployments: ethereum [`0x00072c...f9428f`](./contracts/ethereum-1/0x00072c48501f53cb2bb9efcdd7a0ee569cf9428f/); ethereum `0x205631...44ce59` | ⚠️ Unaudited |
| TroveManagerGetters | governance | ethereum | 2 deployments: ethereum [`0x8ab3cf...a34985`](./contracts/ethereum-1/0x8ab3cf1d5a8b8ec661eff615f2882c9938a34985/); ethereum `0xe673be...b8b7a8` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | ethereum | 6 deployments: ethereum [`0x094b60...11d3f7`](./contracts/ethereum-1/0x094b60f2295c68a898f3f1d04348b84deb11d3f7/); ethereum `0x0c309b...d0e939`; ethereum `0x6220c9...293512`; ethereum `0xc59472...8b1540`; ethereum `0xca40ef...3e8ef2`; ethereum `0xf692c2...6c470d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (78)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x0f1331014273fd693e30692b2fb451d53dec7f7c) | proxy | ethereum | `0x47c597...dc3748` | ❓ Unverified |
| Proxy (impl: 0x20299aeddb791c0d57dc17ec6c0aa964e4e99b35) | proxy | ethereum | `0xbb4982...17fe2a` | ❓ Unverified |
| Proxy (impl: 0x2704b32aa7f8024f0ddb077deb5816002ae79037) | proxy | ethereum | `0x503a01...231378` | ❓ Unverified |
| Proxy (impl: 0x2f7dd00ffeee5057e125bc1328e2ee18a6ebc3dc) | proxy | ethereum | `0xc47375...d90e4e` | ❓ Unverified |
| Proxy (impl: 0x34643cb136dac519aaa0b47e7490489208c8f4a5) | proxy | ethereum | `0x709632...78ab78` | ❓ Unverified |
| Proxy (impl: 0x350db6babcf9ff504c515517414110310572e953) | proxy | ethereum | `0x1c238a...0d7e86` | ❓ Unverified |
| Proxy (impl: 0x4d4737312b7a33c7adc93f06cdd3ea3b29b0075f) | proxy | ethereum | `0x256bd2...e15789` | ❓ Unverified |
| Proxy (impl: 0x50a8ad29787a80d753d68e22b435f905d793c760) | proxy | ethereum | `0x53a19d...4d4b26` | ❓ Unverified |
| Proxy (impl: 0x512122f8b4d8100548e584b71623fdf57a3e86e6) | proxy | ethereum | `0x8df045...9d14fb` | ❓ Unverified |
| Proxy (impl: 0x613c82a30b25a5751bfe31896354637b4e47503f) | proxy | ethereum | `0xa11c3c...896eb2` | ❓ Unverified |
| Proxy (impl: 0x62a5ed526a5059f7567bc48cb226d636d110bdf3) | proxy | ethereum | `0x0a1ca3...e55be2` | ❓ Unverified |
| Proxy (impl: 0x8056f157a92b1a78cdc221120dda461ac2f44640) | proxy | ethereum | `0x6182ac...fceb92` | ❓ Unverified |
| Proxy (impl: 0xba0df5f65dca3392b4673724b819a48df7132413) | proxy | ethereum | `0x092000...49eb1b` | ❓ Unverified |
| Proxy (impl: 0xbdadcb1f8b0f827f0250e51544e223d7d68429fe) | proxy | ethereum | `0xdc23b6...5f920c` | ❓ Unverified |
| Proxy (impl: 0xea886242814ebe477644a451b7a33d3369fbe938) | proxy | ethereum | `0x3258cf...5b6f52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x01cc29...a300a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0341e3...0835fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x04dcfe...ebb634` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0f1331...ec7f7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x137600...aba8b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1a9890...d55635` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1af662...844663` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1f1431...b33beb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x20299a...e99b35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2704b3...e79037` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2f7dd0...ebc3dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x32db5c...072981` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x34643c...c8f4a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x350db6...72e953` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4182cd...eb55b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x44afcf...95f317` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4d4737...b0075f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x50a8ad...93c760` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x50be59...7d6538` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x512122...3e86e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x580e54...5ed9f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x613c82...47503f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x62a5ed...10bdf3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6b3ae1...605d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7403b8...4443bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x779e9d...5d6a6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8056f1...f44640` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8309fc...81eda0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x85e5fd...ddd911` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x87440b...e50338` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x89a7e3...b8f77e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8dd8b1...8b1f6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x922b26...2afd45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x93736a...0747f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x95e5b9...7bdf71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x976018...377b61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9865bb...493754` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9a09b1...69f835` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f36c8...f07825` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f45ea...318886` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae9c41...372f5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0fe76...b3b5f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb8405b...176922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xba0df5...132413` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xba50dd...f6a783` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbb861b...f5d880` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbdadcb...8429fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc02d47...b153f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc5e9b5...f02219` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc9479b...436edf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd37dd0...bcbf3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd63c04...c6ba2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd73687...f438ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xea8862...fbe938` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf53302...76c496` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf64af3...c1ac09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0c3497...cb67d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5687ba...d1ee0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x963b5b...bd0a34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd74432...4d5b30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe38d19...b3ca10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe55744...ef005a` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | `0x8970a6...dd6da1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Report_HEMI-PRO_FINAL_22.pdf](https://github.com/hemilabs/audit-reports/blob/master/Bitcoin_Tunnel/Audit_Report_HEMI-PRO_FINAL_22.pdf) | HEMI-PRO | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Quantstamp - BTC Tunnel - FinalReport (1).pdf](https://github.com/hemilabs/audit-reports/blob/master/Bitcoin_Tunnel/Quantstamp%20-%20BTC%20Tunnel%20-%20FinalReport%20(1).pdf) | Quantstamp | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb4d479...8e93ec`](./contracts/ethereum-1/0xb4d4793a1cd57b6ecebadf6fcbe5aed03e8e93ec/) | StakingVault | core_logic | $7,966,536.66 | Verified native implementation with $7,966,536.66 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x627524...0400c9`](./contracts/ethereum-1/0x627524aec280300dfa58ddb30709a0f3810400c9/) | GasPool | core_logic | $99.43 | Verified native implementation with $99.43 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5f377...9f5e43`](./contracts/ethereum-1/0xa5f37791378c55941a52b4dcb70be4d8d09f5e43/) | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5ffd0e...5afc5b`](./contracts/bsc-56/0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b/) | BinanceHemiOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90b9e5...a0014f`](./contracts/ethereum-1/0x90b9e5de5dbe8d5c882aac8c097fd5a235a0014f/) | CoreFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a9a65...fbce4a`](./contracts/ethereum-1/0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a/) | EnzoBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c2253...7d28e0`](./contracts/ethereum-1/0x1c22531aa9747d76fff8f0a43b37954ca67d28e0/) | ERC20MintablePauseableUpgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0795a3...ff1026`](./contracts/bsc-56/0x0795a3c4898d823946f953bd1234c0e7b7ff1026/) | HemiLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03d9c4...676872`](./contracts/ethereum-1/0x03d9c4e4bc5d3678a9076cac50db0251d8676872/) | Initializer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf005df...6fb050`](./contracts/ethereum-1/0xf005dfb08377fad44588af68d0884d272a6fb050/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5eaa10...9f191e`](./contracts/ethereum-1/0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38e2a4...852695`](./contracts/ethereum-1/0x38e2a41ab14b382e0188c8368937ee392e852695/) | LiquidationFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81d7da...6b2c59`](./contracts/ethereum-1/0x81d7dab8b95085034d9ce90958038251726b2c59/) | MintStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04db2d...cec72c`](./contracts/bsc-56/0x04db2da16318e616d28f0da7aa59eeb12acec72c/) | MockDstOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x32a21e...169a23`](./contracts/bsc-56/0x32a21ec8ee93971d4b4093c0895fd841c7169a23/) | MockLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90d3b9...b9a9a2`](./contracts/ethereum-1/0x90d3b9982c2fbc9ebb583e9906ec4e3449b9a9a2/) | MultiCollateralHintHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e83fd...d385ec`](./contracts/ethereum-1/0x3e83fd30fb9df3cdceb07a834e890dc287d385ec/) | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10061d...7b180c`](./contracts/bsc-56/0x10061d0593441ff74536158592e1be3f4c7b180c/) | OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef5e87...e05c1e`](./contracts/ethereum-1/0xef5e87476c4ac90a0973a2bf114ac770c4e05c1e/) | PriceFeedAggregatorFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07bbc5...0aa4ec`](./contracts/ethereum-1/0x07bbc5a83b83a5c440d1caedbf1081426d0aa4ec/) | SatoshiXApp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23e727...08ccff`](./contracts/ethereum-1/0x23e727e4919eb9f11200197014ab96d03008ccff/) | StabilityPoolFacet | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2989c3...0a4663`](./contracts/ethereum-1/0x2989c38fb3cfcc0eeaf384ee5f1dc7dc520a4663/) | TokenAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26cfab...52bb9e`](./contracts/ethereum-1/0x26cfabb6548e744219fa4b8923efd51f7352bb9e/) | TransferStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00072c...f9428f`](./contracts/ethereum-1/0x00072c48501f53cb2bb9efcdd7a0ee569cf9428f/) | TroveHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ab3cf...a34985`](./contracts/ethereum-1/0x8ab3cf1d5a8b8ec661eff615f2882c9938a34985/) | TroveManagerGetters | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 5 |
| standard_library | 10 |
| needs_review | 54 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3959] Audit_Report_HEMI-PRO_FINAL_22.pdf
- [3960] Quantstamp - BTC Tunnel - FinalReport (1).pdf

Fork inheritance lineage and inherited audits are included when available.
