# Agentic Audit Brief: Hemi Staking

## Project Overview

- Project: Hemi Staking (`hemi-staking`)
- Website: [https://app.hemi.xyz/en/stake/dashboard/](https://app.hemi.xyz/en/stake/dashboard/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.403Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: bsc, ethereum, optimism, swellchain
- Contract surface: 111 unique implementations (200 raw deployments)
- DeFi Llama TVL: $27,662,621.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 52 project-authored contract(s) across 3 chain(s); 1 ERC4626 vault, 7 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 15 common project-authored base contract(s) (accesscontrolinternal, ownableinternal, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 237; live-surface contracts included: 188 (102 live, 86 unknown).
- Excluded by liveness: 49 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/42 (2.4%)
- Deployed-live implementations: 42 of 111 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/43
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 68
- Unique implementations: 111
- Raw deployments: 200
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 2 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 2.3% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VeHemi | unknown | ethereum | n/a | 2 deployments: ethereum [`0x85c53e...733999`](./contracts/ethereum-1/0x85c53e354f7a97c61330a6601c3d4faee2733999/); ethereum `0xe24b0f...d06ef7` | ✅ Audited |

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BinanceHemiOFT | unknown | bsc | n/a | 4 deployments: bsc [`0x5ffd0e...5afc5b`](./contracts/bsc-56/0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b/); bsc `0xb8dbff...a2c3c3`; bsc `0xd275f9...42506e`; bsc `0xfc5538...e91575` | ⚠️ Unaudited |
| CoreFacet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x90b9e5...a0014f`](./contracts/ethereum-1/0x90b9e5de5dbe8d5c882aac8c097fd5a235a0014f/); ethereum `0xe16e1d...d52301` | ⚠️ Unaudited |
| EnzoBTC | unknown | ethereum | n/a | [`0x6a9a65...fbce4a`](./contracts/ethereum-1/0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a/) | ⚠️ Unaudited |
| EnzoNetwork | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7efb35...c5c567`](./contracts/ethereum-1/0x7efb3515d9ec4537fafca635a1de7da7a5c5c567/); ethereum `0xdc2156...950068` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x132428...5312c0`](./contracts/ethereum-1/0x1324285bb2ddadfc9bebc2f8fc5049d7985312c0/); ethereum `0x976018...377b61` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5cd923...ee5296`](./contracts/ethereum-1/0x5cd923fb3a229813e53253a37dce0b1d8aee5296/); ethereum `0x87440b...e50338` | ⚠️ Unaudited |
| GasPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x627524...0400c9`](./contracts/ethereum-1/0x627524aec280300dfa58ddb30709a0f3810400c9/); ethereum `0xfe851a...1be184` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0xa6b71e...896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/); optimism [`0xa6b71e...896ab2`](./contracts/optimism-10/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | ⚠️ Unaudited |
| GovernanceToken | token | optimism | n/a | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | ⚠️ Unaudited |
| HemiLock | unknown | bsc | n/a | 4 deployments: bsc [`0x0795a3...ff1026`](./contracts/bsc-56/0x0795a3c4898d823946f953bd1234c0e7b7ff1026/); bsc `0x7070fa...fb89f9`; bsc `0x86bb2b...94046b`; bsc `0xfbe1ba...6eae8b` | ⚠️ Unaudited |
| Initializer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x03d9c4...676872`](./contracts/ethereum-1/0x03d9c4e4bc5d3678a9076cac50db0251d8676872/); ethereum `0xfec7c4...3d8d9c` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0x5eaa10...9f191e`](./contracts/ethereum-1/0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0x6daf3a...9c0d51`](./contracts/ethereum-1/0x6daf3a3497d8abdfe12915add9829f83a79c0d51/) | ⚠️ Unaudited |
| LiquidationFacet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x38e2a4...852695`](./contracts/ethereum-1/0x38e2a41ab14b382e0188c8368937ee392e852695/); ethereum `0xde8714...4fe7b8` | ⚠️ Unaudited |
| MintSecurity | unknown | ethereum | n/a | 2 deployments: ethereum [`0x316c1b...2ab302`](./contracts/ethereum-1/0x316c1b6b0c7051a10073abf0d06f9cc5ae2ab302/); ethereum `0x47c4ac...620a1c` | ⚠️ Unaudited |
| MintStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x81d7da...6b2c59`](./contracts/ethereum-1/0x81d7dab8b95085034d9ce90958038251726b2c59/); ethereum `0xb3cf78...3d02ab` | ⚠️ Unaudited |
| MIPS | unknown | ethereum | n/a | [`0x42ff66...ba9c2a`](./contracts/ethereum-1/0x42ff661af011939f699d67bd021d237ebcba9c2a/) | ⚠️ Unaudited |
| MockDstOFT | unknown | bsc | n/a | 35 deployments: bsc [`0x04db2d...cec72c`](./contracts/bsc-56/0x04db2da16318e616d28f0da7aa59eeb12acec72c/); bsc `0x14c9bc...298fba`; bsc `0x182c58...8463a1`; bsc `0x25c304...77d608`; bsc `0x2dd586...1142a8`; bsc `0x3a82a4...9cd2f4`; bsc `0x3ea24e...fbbcad`; bsc `0x466140...53a8f3`; bsc `0x4f2acd...1bd83e`; bsc `0x4ff907...c0f538`; bsc `0x51bc60...865761`; bsc `0x656f1f...c9e4d0`; bsc `0x6e3ac5...245365`; bsc `0x760c66...4ba3b7`; bsc `0x790e5f...e36acb`; bsc `0x8e4f0e...6110bf`; bsc `0x8f1561...9c0bb3`; bsc `0x951f5d...7d2c1d`; bsc `0x9bfc21...722406`; bsc `0xa3ceec...ac4da2`; bsc `0xb908ca...0c476e`; bsc `0xbd5caa...128a66`; bsc `0xbf504a...fb3735`; bsc `0xbf7d0f...35b2e2`; bsc `0xc340d0...090657`; bsc `0xc9ffa2...a03b46`; bsc `0xd86a00...df086b`; bsc `0xdb2d0b...2c3766`; bsc `0xdbd9cf...3bd39a`; bsc `0xe002c5...9e0ed9`; bsc `0xe2a466...ba8cc8`; bsc `0xe2adb4...77f938`; bsc `0xf22873...9b7e0f`; bsc `0xf3b36c...5893e0`; bsc `0xffd74e...2dfd09` | ⚠️ Unaudited |
| MockLock | unknown | bsc | n/a | 2 deployments: bsc [`0x32a21e...169a23`](./contracts/bsc-56/0x32a21ec8ee93971d4b4093c0895fd841c7169a23/); bsc `0xded54c...aad82e` | ⚠️ Unaudited |
| MultiCollateralHintHelpers | periphery | ethereum | n/a | 2 deployments: ethereum [`0x90d3b9...b9a9a2`](./contracts/ethereum-1/0x90d3b9982c2fbc9ebb583e9906ec4e3449b9a9a2/); ethereum `0xca5ded...efe8f2` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3e83fd...d385ec`](./contracts/ethereum-1/0x3e83fd30fb9df3cdceb07a834e890dc287d385ec/); ethereum `0xd6a233...c41d93` | ⚠️ Unaudited |
| OFT | unknown | bsc | n/a | 6 deployments: bsc [`0x10061d...7b180c`](./contracts/bsc-56/0x10061d0593441ff74536158592e1be3f4c7b180c/); bsc `0x37d8c0...74d931`; bsc `0x64b5bb...609373`; bsc `0x707c24...412075`; bsc `0xa30e1a...076f30`; bsc `0xc141b6...a96515` | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | [`0x39a000...3a4d7e`](./contracts/ethereum-1/0x39a0005415256b9863afe2d55edcf75ecc3a4d7e/) | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | n/a | [`0x613f36...24ed20`](./contracts/ethereum-1/0x613f36be58ba712b37474f4b82484d680d24ed20/) | ⚠️ Unaudited |
| PriceFeedAggregatorFacet | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xef5e87...e05c1e`](./contracts/ethereum-1/0xef5e87476c4ac90a0973a2bf114ac770c4e05c1e/); ethereum `0xefaa8b...026860` | ⚠️ Unaudited |
| PriceFeedChainlink | operational_periphery | ethereum | n/a | [`0xf64af3...c1ac09`](./contracts/ethereum-1/0xf64af34e614955760c331fc055b25bcf9dc1ac09/) | ⚠️ Unaudited |
| RewardVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2863e3...542c02`](./contracts/ethereum-1/0x2863e3d0f29e2eec6adefc0df0d3171dad542c02/); ethereum `0x583f89...18905d` | ⚠️ Unaudited |
| RewardVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x56cabe...acf261`](./contracts/ethereum-1/0x56cabed729121977c0c4a94231fc945fa3acf261/); ethereum `0xd85191...6ac710` | ⚠️ Unaudited |
| RewardVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5f88f7...9b935a`](./contracts/ethereum-1/0x5f88f74f2474925df0be9ef93ca8c3671d9b935a/); ethereum `0x84c593...9dee22` | ⚠️ Unaudited |
| SatoshiXApp | unknown | ethereum | n/a | 2 deployments: ethereum [`0x07bbc5...0aa4ec`](./contracts/ethereum-1/0x07bbc5a83b83a5c440d1caedbf1081426d0aa4ec/); ethereum `0xb8374e...5b67e6` | ⚠️ Unaudited |
| SmartVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x980963...56ba45`](./contracts/ethereum-1/0x980963c8ebb2840708be935b197b83c71256ba45/); ethereum `0x980fe4...ce4665` | ⚠️ Unaudited |
| SmartVaultManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x355961...4aed86`](./contracts/ethereum-1/0x355961ace96134fe7ba72b24b24559e7ca4aed86/); ethereum `0xf3d691...0c3e20` | ⚠️ Unaudited |
| StabilityPoolFacet | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x23e727...08ccff`](./contracts/ethereum-1/0x23e727e4919eb9f11200197014ab96d03008ccff/); ethereum `0x9a3c72...811dd3` | ⚠️ Unaudited |
| TransferStrategy | core_logic | ethereum | n/a | [`0x26cfab...52bb9e`](./contracts/ethereum-1/0x26cfabb6548e744219fa4b8923efd51f7352bb9e/) | ⚠️ Unaudited |
| TroveHelper | periphery | ethereum | n/a | 2 deployments: ethereum [`0x00072c...f9428f`](./contracts/ethereum-1/0x00072c48501f53cb2bb9efcdd7a0ee569cf9428f/); ethereum `0x205631...44ce59` | ⚠️ Unaudited |
| TroveManagerGetters | governance | ethereum | n/a | 2 deployments: ethereum [`0x8ab3cf...a34985`](./contracts/ethereum-1/0x8ab3cf1d5a8b8ec661eff615f2882c9938a34985/); ethereum `0xe673be...b8b7a8` | ⚠️ Unaudited |
| VeHemi | unknown | ethereum | n/a | 2 deployments: ethereum [`0x03e77f...8e28db`](./contracts/ethereum-1/0x03e77f120e5a36c5a6800a5731af37673d8e28db/); ethereum `0x093447...c91bba` | ⚠️ Unaudited |
| VeHemi | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0d1866...8457c3`](./contracts/ethereum-1/0x0d1866b08a9cc2f3ecb927e10c838545f38457c3/); ethereum `0x85872d...7b5fae` | ⚠️ Unaudited |
| VeHemi | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1770b9...2d3585`](./contracts/ethereum-1/0x1770b9c7449369108b52dd3706cf373dcc2d3585/); ethereum `0xf71313...f57771` | ⚠️ Unaudited |
| VeHemi | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17e424...1d8836`](./contracts/ethereum-1/0x17e42436446bc14094952b8dfa27dce8f01d8836/); ethereum `0x5caf9f...58f31d` | ⚠️ Unaudited |
| VeHemi | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1a6ec1...27b275`](./contracts/ethereum-1/0x1a6ec1f22b38c4c13cb79ab55494a9c86727b275/); ethereum `0x1ec7e6...d4baa8` | ⚠️ Unaudited |
| VeHemiAragonAdapter | adapter | ethereum | n/a | [`0xdee010...b9c5da`](./contracts/ethereum-1/0xdee010e6f73e951de73484fc9dfffe12d7b9c5da/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (68)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DebtTokenWithLz | unknown | ethereum | n/a | `0x195885...f0d0d2` | ❓ Unverified |
| DebtTokenWithLz | unknown | ethereum | n/a | `0xb4818b...2766cb` | ❓ Unverified |
| Proxy (impl: 0x350db6babcf9ff504c515517414110310572e953) | unknown | ethereum | n/a | 2 deployments: ethereum `0x1c238a...0d7e86`; ethereum `0x350db6...72e953` | ❓ Unverified |
| Proxy (impl: 0x4d4737312b7a33c7adc93f06cdd3ea3b29b0075f) | unknown | ethereum | n/a | 2 deployments: ethereum `0x256bd2...e15789`; ethereum `0x4d4737...b0075f` | ❓ Unverified |
| Proxy (impl: 0x62a5ed526a5059f7567bc48cb226d636d110bdf3) | unknown | ethereum | n/a | 2 deployments: ethereum `0x0a1ca3...e55be2`; ethereum `0x62a5ed...10bdf3` | ❓ Unverified |
| Proxy (impl: 0x8056f157a92b1a78cdc221120dda461ac2f44640) | unknown | ethereum | n/a | 2 deployments: ethereum `0x6182ac...fceb92`; ethereum `0x8056f1...f44640` | ❓ Unverified |
| Proxy (impl: 0xba0df5f65dca3392b4673724b819a48df7132413) | unknown | ethereum | n/a | 2 deployments: ethereum `0x092000...49eb1b`; ethereum `0xba0df5...132413` | ❓ Unverified |
| Proxy (impl: 0xea886242814ebe477644a451b7a33d3369fbe938) | unknown | ethereum | n/a | 2 deployments: ethereum `0x3258cf...5b6f52`; ethereum `0xea8862...fbe938` | ❓ Unverified |
| StakingVault | unknown | ethereum | n/a | `0xccfd19...029825` | ❓ Unverified |
| StakingVault | unknown | ethereum | n/a | `0xcdace5...2f4f9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01cc29...a300a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0341e3...0835fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04dcfe...ebb634` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x0f1331...ec7f7c`; ethereum `0x47c597...dc3748` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x137600...aba8b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a9890...d55635` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1af662...844663` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f1431...b33beb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x20299a...e99b35`; ethereum `0xbb4982...17fe2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x254653...141e45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x2704b3...e79037`; ethereum `0x503a01...231378` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a0089...a1e6ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x2f7dd0...ebc3dc`; ethereum `0xc47375...d90e4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32db5c...072981` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x34643c...c8f4a5`; ethereum `0x709632...78ab78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3dd142...521e38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4182cd...eb55b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44afcf...95f317` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x50a8ad...93c760`; ethereum `0x53a19d...4d4b26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50be59...7d6538` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x512122...3e86e6`; ethereum `0x8df045...9d14fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x613c82...47503f`; ethereum `0xa11c3c...896eb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b3ae1...605d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x779e9d...5d6a6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8309fc...81eda0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85e5fd...ddd911` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89a7e3...b8f77e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8db2a3...07ea00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dd8b1...8b1f6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x922b26...2afd45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93736a...0747f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95e5b9...7bdf71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a09b1...69f835` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f36c8...f07825` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f45ea...318886` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae9c41...372f5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0fe76...b3b5f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8405b...176922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba50dd...f6a783` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb861b...f5d880` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0xbdadcb...8429fe`; ethereum `0xdc23b6...5f920c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc02d47...b153f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5de90...28aac3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5e9b5...f02219` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9479b...436edf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd37dd0...bcbf3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4f20c...76a3f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd63c04...c6ba2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd73687...f438ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf53302...76c496` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8dc82...6ce89a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c3497...cb67d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5687ba...d1ee0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x963b5b...bd0a34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd74432...4d5b30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe38d19...b3ca10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe55744...ef005a` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | n/a | `0x8970a6...dd6da1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Report_HEMI-PRO_FINAL_22.pdf](https://github.com/hemilabs/audit-reports/blob/master/Bitcoin_Tunnel/Audit_Report_HEMI-PRO_FINAL_22.pdf) | HEMI-PRO | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Quantstamp - BTC Tunnel - FinalReport (1).pdf](https://github.com/hemilabs/audit-reports/blob/master/Bitcoin_Tunnel/Quantstamp%20-%20BTC%20Tunnel%20-%20FinalReport%20(1).pdf) | Quantstamp | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Audit_Report_HEMI-TOK_FINAL_21.pdf](https://github.com/hemilabs/audit-reports/blob/master/Hemi_Token/Audit_Report_HEMI-TOK_FINAL_21.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [HemiToken - Final Report.pdf](https://github.com/hemilabs/audit-reports/blob/master/Hemi_Token/HemiToken%20-%20Final%20Report.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Audit_Report_HEMI-VOT_FINAL_21.pdf](https://github.com/hemilabs/audit-reports/blob/master/veHEMI/Audit_Report_HEMI-VOT_FINAL_21.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x5ffd0e...5afc5b`](./contracts/bsc-56/0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b/) | BinanceHemiOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90b9e5...a0014f`](./contracts/ethereum-1/0x90b9e5de5dbe8d5c882aac8c097fd5a235a0014f/) | CoreFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a9a65...fbce4a`](./contracts/ethereum-1/0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a/) | EnzoBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7efb35...c5c567`](./contracts/ethereum-1/0x7efb3515d9ec4537fafca635a1de7da7a5c5c567/) | EnzoNetwork | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x627524...0400c9`](./contracts/ethereum-1/0x627524aec280300dfa58ddb30709a0f3810400c9/) | GasPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6b71e...896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | GnosisSafeProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | GovernanceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0795a3...ff1026`](./contracts/bsc-56/0x0795a3c4898d823946f953bd1234c0e7b7ff1026/) | HemiLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03d9c4...676872`](./contracts/ethereum-1/0x03d9c4e4bc5d3678a9076cac50db0251d8676872/) | Initializer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5eaa10...9f191e`](./contracts/ethereum-1/0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6daf3a...9c0d51`](./contracts/ethereum-1/0x6daf3a3497d8abdfe12915add9829f83a79c0d51/) | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38e2a4...852695`](./contracts/ethereum-1/0x38e2a41ab14b382e0188c8368937ee392e852695/) | LiquidationFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x316c1b...2ab302`](./contracts/ethereum-1/0x316c1b6b0c7051a10073abf0d06f9cc5ae2ab302/) | MintSecurity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81d7da...6b2c59`](./contracts/ethereum-1/0x81d7dab8b95085034d9ce90958038251726b2c59/) | MintStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42ff66...ba9c2a`](./contracts/ethereum-1/0x42ff661af011939f699d67bd021d237ebcba9c2a/) | MIPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04db2d...cec72c`](./contracts/bsc-56/0x04db2da16318e616d28f0da7aa59eeb12acec72c/) | MockDstOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x32a21e...169a23`](./contracts/bsc-56/0x32a21ec8ee93971d4b4093c0895fd841c7169a23/) | MockLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90d3b9...b9a9a2`](./contracts/ethereum-1/0x90d3b9982c2fbc9ebb583e9906ec4e3449b9a9a2/) | MultiCollateralHintHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e83fd...d385ec`](./contracts/ethereum-1/0x3e83fd30fb9df3cdceb07a834e890dc287d385ec/) | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10061d...7b180c`](./contracts/bsc-56/0x10061d0593441ff74536158592e1be3f4c7b180c/) | OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39a000...3a4d7e`](./contracts/ethereum-1/0x39a0005415256b9863afe2d55edcf75ecc3a4d7e/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x613f36...24ed20`](./contracts/ethereum-1/0x613f36be58ba712b37474f4b82484d680d24ed20/) | PreimageOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef5e87...e05c1e`](./contracts/ethereum-1/0xef5e87476c4ac90a0973a2bf114ac770c4e05c1e/) | PriceFeedAggregatorFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf64af3...c1ac09`](./contracts/ethereum-1/0xf64af34e614955760c331fc055b25bcf9dc1ac09/) | PriceFeedChainlink | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2863e3...542c02`](./contracts/ethereum-1/0x2863e3d0f29e2eec6adefc0df0d3171dad542c02/) | RewardVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56cabe...acf261`](./contracts/ethereum-1/0x56cabed729121977c0c4a94231fc945fa3acf261/) | RewardVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f88f7...9b935a`](./contracts/ethereum-1/0x5f88f74f2474925df0be9ef93ca8c3671d9b935a/) | RewardVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07bbc5...0aa4ec`](./contracts/ethereum-1/0x07bbc5a83b83a5c440d1caedbf1081426d0aa4ec/) | SatoshiXApp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x980963...56ba45`](./contracts/ethereum-1/0x980963c8ebb2840708be935b197b83c71256ba45/) | SmartVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x355961...4aed86`](./contracts/ethereum-1/0x355961ace96134fe7ba72b24b24559e7ca4aed86/) | SmartVaultManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23e727...08ccff`](./contracts/ethereum-1/0x23e727e4919eb9f11200197014ab96d03008ccff/) | StabilityPoolFacet | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26cfab...52bb9e`](./contracts/ethereum-1/0x26cfabb6548e744219fa4b8923efd51f7352bb9e/) | TransferStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00072c...f9428f`](./contracts/ethereum-1/0x00072c48501f53cb2bb9efcdd7a0ee569cf9428f/) | TroveHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ab3cf...a34985`](./contracts/ethereum-1/0x8ab3cf1d5a8b8ec661eff615f2882c9938a34985/) | TroveManagerGetters | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03e77f...8e28db`](./contracts/ethereum-1/0x03e77f120e5a36c5a6800a5731af37673d8e28db/) | VeHemi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d1866...8457c3`](./contracts/ethereum-1/0x0d1866b08a9cc2f3ecb927e10c838545f38457c3/) | VeHemi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1770b9...2d3585`](./contracts/ethereum-1/0x1770b9c7449369108b52dd3706cf373dcc2d3585/) | VeHemi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17e424...1d8836`](./contracts/ethereum-1/0x17e42436446bc14094952b8dfa27dce8f01d8836/) | VeHemi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a6ec1...27b275`](./contracts/ethereum-1/0x1a6ec1f22b38c4c13cb79ab55494a9c86727b275/) | VeHemi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdee010...b9c5da`](./contracts/ethereum-1/0xdee010e6f73e951de73484fc9dfffe12d7b9c5da/) | VeHemiAragonAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 68 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [3959] Audit_Report_HEMI-PRO_FINAL_22.pdf
- [3960] Quantstamp - BTC Tunnel - FinalReport (1).pdf
- [11922] Audit_Report_HEMI-TOK_FINAL_21.pdf
- [11923] HemiToken - Final Report.pdf

Fork inheritance lineage and inherited audits are included when available.
