# Agentic Audit Brief: Folks Finance

## Project Overview

- Project: Folks Finance (`folks-finance`)
- Website: [https://folks.finance/](https://folks.finance/)
- Lifecycle: active (Tier 0, 82% below peak)
- Generated: 2026-06-21T17:43:26.908Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, avalanche, base, bsc, ethereum, polygon, sei
- Contract surface: 141 unique implementations (253 raw deployments)
- DeFi Llama TVL: $89,343,382.00
- On-chain TVL (included contracts): $302,625,119.05
- TVL by chain: Ethereum $201,577,330.29 | Avalanche $99,071,506.57 | Polygon $1,886,521.78 | Arbitrum $75,264.06 | Base $12,644.92 | Bsc $1,851.43

## Project Description

Folks Finance is a cross-chain DeFi protocol offering lending, borrowing, and liquid staking services. It enables users to supply and borrow assets across multiple chains via its xChain product, and participate in liquid staking for ALGO through the xALGO product.

### Architecture

The xChain family relies on spoke tokens and adapters to bridge assets across chains, while the xALGO family operates independently for ALGO staking. Both families share infrastructure through proxy patterns and deployer clusters, but no direct token flows between them are evident from the contract surface.

## Contract Surface Quality

- Indexed contracts: 466; live-surface contracts included: 253 (249 live, 4 unknown).
- Excluded by liveness: 193 inactive, 20 singleton, 0 uninitialized.
- Deployment units: 7/20 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 7/32.

## Audit Coverage Summary

- Verified implementations audited: 2/50 (4.0%)
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 91
- Unique implementations: 141
- Raw deployments: 253
- Audits discovered: 21
- Scoreable audits (matched contracts): 2
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/folksfinance/information))
- ASD (verified + unaudited TVL): $302,625,119.05
- Latest audit: 2025-10 (fresh)
- Staleness: 1 fresh, 1 aging, 15 stale, 1 unknown
- Tier 1 coverage: 2.0% (Immunefi)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Immunefi | Tier 1 | 1 | 2.0% | n/a |
| unknown | Tier 2 | 1 | 2.0% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeRouterSpoke | operational_periphery | sei | n/a | 3 deployments: bsc `0x57d77f...f074a4`; polygon `0xf854ac...753cc5`; sei [`0x0700b2...20779c`](./contracts/sei-1329/0x0700b2cb26688c035bd5dbbda070be408c20779c/) | ✅ Audited |
| Hub | unknown | avalanche | n/a | [`0xb39c03...934449`](./contracts/avalanche-43114/0xb39c03297e87032ff69f4d42a6698e4c4a934449/) | ✅ Audited |

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AethirToken | token | ethereum | n/a | [`0xbe0ed4...c5226b`](./contracts/ethereum-1/0xbe0ed4138121ecfc5c0e56b40517da27e6c5226b/) | ⚠️ Unaudited |
| StakedAvUSDV2 | token | avalanche | n/a | [`0x06d47f...72219e`](./contracts/avalanche-43114/0x06d47f3fb376649c3a9dafe069b3d6e35572219e/) | ⚠️ Unaudited |
| StakedAvantCoinV2 | token | avalanche | n/a | [`0x649342...deba84`](./contracts/avalanche-43114/0x649342c6bff544d82df1b2ba3c93e0c22cdeba84/) | ⚠️ Unaudited |
| SpokeErc20Token | token | base | n/a | 41 deployments: ethereum `0x12d4fe...5a5a90`; ethereum `0x3aea5e...4219e4`; ethereum `0x63bcb6...ee7eea`; ethereum `0x7967b0...cc8f92`; ethereum `0x91461b...644bb2`; ethereum `0xac3a01...565714`; ethereum `0xb39c03...934449`; ethereum `0xb3abd8...aa7cda`; ethereum `0xff785f...211723`; bsc `0x12db97...54156f`; bsc `0x4db12f...3380a5`; polygon `0x1a4020...3179e9`; polygon `0x2e6e46...9b7a98`; polygon `0x57d77f...f074a4`; polygon `0x63ad90...c982b8`; polygon `0x69f312...694cd1`; polygon `0xa526f9...c84000`; polygon `0xab07af...626322`; polygon `0xc03094...cf2ac6`; polygon `0xcb6656...16a75a`; polygon `0xf2ee68...94abf0`; sei `0x12db97...54156f`; sei `0x4db12f...3380a5`; sei `0x7218bd...6aee81`; sei `0x802063...90b03b`; base [`0x123f83...da9bfd`](./contracts/base-8453/0x123f831a762a165107ee2e07416f4aa713da9bfd/); base `0x31a324...42606c`; base `0x50d5bb...8567ea`; base `0x7ace2b...ac12bb`; base `0x7c7961...b605fb`; base `0x8d9aad...b4c51c`; base `0x9009c9...6e6e35`; arbitrum `0x1b2a8d...def8df`; arbitrum `0x2d1c07...d541a5`; arbitrum `0x624363...af091c`; arbitrum `0x74416b...6ee097`; arbitrum `0xc0a353...0c7590`; arbitrum `0xcd6801...44fddf`; arbitrum `0xdf2da9...b19111`; arbitrum `0xe69e06...4cbd2c`; avalanche `0xe53189...8db073` | ⚠️ Unaudited |
| UChildERC20 | token | ethereum | n/a | [`0x2791bc...a84174`](./contracts/ethereum-1/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | ⚠️ Unaudited |
| SpokeGasToken | token | arbitrum | n/a | 6 deployments: ethereum `0xe3b0e4...d05883`; bsc `0x5f2f47...7ecab0`; polygon `0x4db12f...3380a5`; sei `0x5f2f47...7ecab0`; base `0xe3b0e4...d05883`; arbitrum [`0x37d761...393cdd`](./contracts/arbitrum-42161/0x37d761883a01e9f0b0d7fe59eec8c21d94393cdd/) | ⚠️ Unaudited |
| SpokeRewardsV2GasToken | token | polygon | n/a | [`0xcd7ee4...5108bf`](./contracts/polygon-137/0xcd7ee494fa616fdbe38aa0a9355e20b7215108bf/) | ⚠️ Unaudited |
| StablecoinUpgradeable | token | ethereum | n/a | [`0xcfd748...f7f2ec`](./contracts/ethereum-1/0xcfd748b9de538c9f5b1805e8db9e1d4671f7f2ec/) | ⚠️ Unaudited |
| SpokeRewardsV2Erc20Token | token | arbitrum | n/a | [`0x025961...b3f228`](./contracts/arbitrum-42161/0x0259617be41ada4d97ded60daf848caa6db3f228/) | ⚠️ Unaudited |
| SpokeCircleToken | token | bsc | n/a | 19 deployments: ethereum `0x21c624...e7ecc2`; ethereum `0x5162ac...bf8cfa`; ethereum `0x61c80b...3a69dd`; ethereum `0xb7ab35...4d7884`; ethereum `0xd4f7fa...7a3a38`; ethereum `0xf4c542...2f847e`; bsc [`0x0700b2...20779c`](./contracts/bsc-56/0x0700b2cb26688c035bd5dbbda070be408c20779c/); bsc `0x7218bd...6aee81`; bsc `0xcd7ee4...5108bf`; polygon `0x59a6e7...fb5361`; polygon `0xa95cf7...bfcbf0`; base `0x3ef10e...f9acd7`; base `0xbf142d...3c62df`; base `0xe0c45a...3d0d8f`; base `0xf4c542...2f847e`; arbitrum `0x23a96d...6a87f6`; arbitrum `0x2e6e46...9b7a98`; arbitrum `0x531490...5d14d4`; arbitrum `0xf4c542...2f847e` | ⚠️ Unaudited |
| AccountManager | governance | avalanche | n/a | [`0x12db97...54156f`](./contracts/avalanche-43114/0x12db9758c4d9902334c523b94e436258eb54156f/) | ⚠️ Unaudited |
| AddressesWhitelist | unknown | avalanche | n/a | 2 deployments: avalanche [`0x89245a...6bed7b`](./contracts/avalanche-43114/0x89245a4bd8948713fd5f6da7c84cf6d2b76bed7b/); avalanche `0x99f183...af1d0f` | ⚠️ Unaudited |
| Aero | token | base | n/a | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| AlwaysEligibleAddressOracle | operational_periphery | sei | n/a | [`0x85aa8d...76293d`](./contracts/sei-1329/0x85aa8d7fc0b44fdc2773c3252617b8d60076293d/) | ⚠️ Unaudited |
| AvantCoin | unknown | avalanche | n/a | [`0xfd2c2a...289053`](./contracts/avalanche-43114/0xfd2c2a98009d0cbed715882036e43d26c4289053/) | ⚠️ Unaudited |
| AvantMintingV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x58c32c...76cc04`](./contracts/avalanche-43114/0x58c32c34fd4ae48a7d45ec4b3c940b41d676cc04/); avalanche `0xcb4313...62a49c` | ⚠️ Unaudited |
| AvantOFTAdapter | adapter | avalanche | n/a | [`0x352460...a1bd85`](./contracts/avalanche-43114/0x3524609c4d8111d45afc912bf1e1270cd5a1bd85/) | ⚠️ Unaudited |
| AvUSD | unknown | avalanche | n/a | [`0x24de87...a0e346`](./contracts/avalanche-43114/0x24de8771bc5ddb3362db529fc3358f2df3a0e346/) | ⚠️ Unaudited |
| BridgedYBTCB | operational_periphery | avalanche | unit-43363 | [`0x2cd3cd...3d7335`](./contracts/avalanche-43114/0x2cd3cdb3bd68eea0d3be81da707bc0c8743d7335/) | ⚠️ Unaudited |
| CCIPDataAdapter | adapter | sei | n/a | [`0xeb48a1...de69c9`](./contracts/sei-1329/0xeb48a1ee43b91959a1686b70b7cd482c65de69c9/) | ⚠️ Unaudited |
| CCIPTokenAdapter | adapter | sei | n/a | 2 deployments: polygon `0xc7bc4a...a4c3cd`; sei [`0x5c60f1...9dd04e`](./contracts/sei-1329/0x5c60f12838b8e3eeb525f299cd7c454c989dd04e/) | ⚠️ Unaudited |
| CreditMessaging | unknown | sei | n/a | [`0x13379b...0d75e1`](./contracts/sei-1329/0x13379b489fb2e76cedf96bceaa2441e5930d75e1/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | avalanche | unit-43370 | [`0xff7f8f...e8009b`](./contracts/avalanche-43114/0xff7f8f301f7a706e3cfd3d2275f5dc0b9ee8009b/) | ⚠️ Unaudited |
| ERC20Predicate | token | ethereum | unit-43352 | [`0x40ec5b...5bbbdf`](./contracts/ethereum-1/0x40ec5b33f54e0e8a33a975908c5ba1c14e5bbbdf/) | ⚠️ Unaudited |
| EtherPredicate | unknown | ethereum | unit-43356 | [`0x8484ef...922b30`](./contracts/ethereum-1/0x8484ef722627bf18ca5ae6bcf031c23e6e922b30/) | ⚠️ Unaudited |
| FeeLibV1 | unknown | sei | n/a | 3 deployments: sei [`0x711b5a...830d8e`](./contracts/sei-1329/0x711b5aafd4d0a5b7b863ca434a2678d086830d8e/); sei `0xcd4302...423311`; sei `0xde4860...abaeb2` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | n/a | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | ⚠️ Unaudited |
| LoanManager | governance | avalanche | n/a | [`0xf4c542...2f847e`](./contracts/avalanche-43114/0xf4c542518320f09943c35db6773b2f9feb2f847e/) | ⚠️ Unaudited |
| MerklePatriciaProof | operational_periphery | ethereum | n/a | [`0xa6fa4f...d1c0aa`](./contracts/ethereum-1/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| Minter | operational_periphery | base | n/a | [`0xeb0183...a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | ⚠️ Unaudited |
| MultiSign | governance | ethereum | n/a | 31 deployments: ethereum [`0x1073d5...6ede78`](./contracts/ethereum-1/0x1073d55dfb892ed86151015402db8b1cdb6ede78/); ethereum `0x2147bd...bbc5fd`; ethereum `0x2591c2...461d8c`; ethereum `0x315bab...0b6f25`; ethereum `0x3ecbf8...a3d566`; ethereum `0x46f057...4eaa53`; ethereum `0x492184...58ea19`; ethereum `0x5c1e4c...18608b`; ethereum `0x66fc2d...ac6a0e`; ethereum `0x6e36e3...9fe3e6`; ethereum `0x7272b2...9f2cec`; ethereum `0x7f9922...c6de44`; ethereum `0x83f7f1...541fa9`; ethereum `0x860a80...ff898e`; ethereum `0x863c87...55ce6c`; ethereum `0x866eb2...96918c`; ethereum `0x97e9d0...428591`; ethereum `0x9ab2ce...6f8165`; ethereum `0x9b8a83...847a34`; ethereum `0xa2eea1...d9c367`; ethereum `0xb60fa2...6aca2a`; ethereum `0xb723d5...d155ea`; ethereum `0xd4707b...0385d1`; ethereum `0xd48ede...fedd68`; ethereum `0xd9334d...272761`; ethereum `0xe23090...9df5ae`; ethereum `0xf1dcb5...30056f`; ethereum `0xf26b8b...72a71f`; ethereum `0xf7db20...945b3a`; ethereum `0xfbca8b...600bb6`; ethereum `0xff72e1...209ecb` | ⚠️ Unaudited |
| NativeSeiTokensERC20 | token | sei | n/a | [`0x5cf682...df9423`](./contracts/sei-1329/0x5cf6826140c1c56ff49c808a1a75407cd1df9423/) | ⚠️ Unaudited |
| OFTTokenERC20 | token | sei | n/a | [`0x160345...9342d8`](./contracts/sei-1329/0x160345fc359604fc6e70e3c5facbde5f7a9342d8/) | ⚠️ Unaudited |
| PYUSD | unknown | ethereum | unit-43354 | [`0x6c3ea9...23a0e8`](./contracts/ethereum-1/0x6c3ea9036406852006290770bedfcaba0e23a0e8/) | ⚠️ Unaudited |
| RequestsManager | governance | avalanche | n/a | 2 deployments: avalanche [`0x4c129d...6fc887`](./contracts/avalanche-43114/0x4c129d3aa27272211d151ca39a0a01e4c16fc887/); avalanche `0x5f0aef...9e2972` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | base | n/a | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | ⚠️ Unaudited |
| RootChainManager | governance | ethereum | unit-43358 | [`0xa0c68c...c77c77`](./contracts/ethereum-1/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| Router | adapter | base | n/a | [`0xcf77a3...874e43`](./contracts/base-8453/0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43/) | ⚠️ Unaudited |
| SpokeCommon | unknown | arbitrum | n/a | 7 deployments: ethereum `0xc7bc4a...a4c3cd`; bsc `0xc7bc4a...a4c3cd`; polygon `0x5f2f47...7ecab0`; sei `0xc7bc4a...a4c3cd`; base `0xc7bc4a...a4c3cd`; arbitrum [`0x57d77f...f074a4`](./contracts/arbitrum-42161/0x57d77fd37670e22188d1c92d7cec931bccf074a4/); avalanche `0xc03094...cf2ac6` | ⚠️ Unaudited |
| SpokeRewardsV2Common | unknown | sei | n/a | 6 deployments: ethereum `0xc6c682...6c38cc`; bsc `0x531490...5d14d4`; polygon `0x6bc143...1ed352`; sei [`0x1b2a8d...def8df`](./contracts/sei-1329/0x1b2a8d56967d00700dd5c94e27b1a116a1def8df/); base `0xd97af2...9d4ae3`; arbitrum `0x6bc143...1ed352` | ⚠️ Unaudited |
| StablecoinUpgradeableV2 | token | ethereum | unit-43355 | [`0x8292bb...6317ed`](./contracts/ethereum-1/0x8292bb45bf1ee4d140127049757c2e0ff06317ed/) | ⚠️ Unaudited |
| SyrupDrip | unknown | ethereum | n/a | [`0x509712...e986ea`](./contracts/ethereum-1/0x509712f368255e92410893ba2e488f40f7e986ea/) | ⚠️ Unaudited |
| TokenMessaging | token | sei | n/a | [`0x1502fa...275d3d`](./contracts/sei-1329/0x1502fa4be69d526124d453619276faccab275d3d/) | ⚠️ Unaudited |
| VeArtProxy | unknown | base | n/a | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | ⚠️ Unaudited |
| VestingWallet | operational_periphery | ethereum | n/a | [`0xf9d9f4...6336b6`](./contracts/ethereum-1/0xf9d9f4ae37d09d50a279058c008a4fa98b6336b6/) | ⚠️ Unaudited |
| Voter | unknown | base | n/a | [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | base | n/a | [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | ⚠️ Unaudited |
| xMPL | unknown | ethereum | n/a | [`0xc7e8b3...260b45`](./contracts/ethereum-1/0xc7e8b36e0766d9b04c93de68a9d47dd11f260b45/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (91)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x7463f8...f9cc86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9718a2...5efe77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2a261...fdd8ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd38cbf...2c5b36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd65556...7202fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdab5b2...d5f821` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8a1c5...e69b83` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69f312...694cd1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab07af...626322` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x11e732...53bee5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a8fed...0eb9c1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2110de...8b24b1` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x0b2ef2...a1d5e0` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x213299...86bb85` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x2b7995...b16168` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x37d761...393cdd` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x531490...5d14d4` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x57d77f...f074a4` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x63efda...dd46df` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x9a1020...5c68ff` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xe3b0e4...d05883` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xf4c542...2f847e` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xf854ac...753cc5` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xfc828c...4ce695` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ff936...29fbc1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x91461b...644bb2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x703310...c8d70b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6df89...da3c75` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc7bc4a...a4c3cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x012482...156153` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04a3d4...5b34aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x07c911...134a23` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0aee2b...f3cdc6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0b4e69...acd79d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e563b...0d78dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x10a448...912dc5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x11f82b...57a1dd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x13a21b...a90737` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1b5a1d...536465` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1c7ec7...f9a9d2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x213299...86bb85` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x23a96d...6a87f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x24db05...6bc86f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x27389a...0788a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2b7995...b16168` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2f643d...650204` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x398715...5d4aac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3b1c2e...7aa812` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3e85a5...a46d19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3f63a6...222b59` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3f87f3...72ddca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4161d7...641fce` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x42bb92...d8b387` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x45060a...11a084` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4fb4c3...417fac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5431e7...eadefa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5562d8...5fcedb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5f2f47...7ecab0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5f8a1d...77e948` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5fe123...8c816a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x63efda...dd46df` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x666aea...a48e0f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x66dd1c...323d11` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7902db...be55b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7c532a...362c7c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7cd4af...e0b6c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7fd218...031aca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x802063...90b03b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c3b4e...62f054` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c893d...5bc015` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x93fd59...527d7b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x94307e...f20adb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x953345...1411e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a1020...5c68ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9e4456...3e1a5a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa1e102...e697c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb3782d...c8b252` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc7bc4a...a4c3cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcd6801...44fddf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd4f87e...d0010c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd7ff49...8358d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd9d50d...1139dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdc887a...37431a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe396e1...61f80c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe47285...3294c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe69e06...4cbd2c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef7a6e...5d57dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf51a72...b9c50b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf854ac...753cc5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfc828c...4ce695` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfdf0bf...09ff58` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://www.coinspect.com/doc/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Folks%20Finance%20v220314.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Folks-Finance-Design-Review.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/Folks-Finance-Design-Review.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [OtterSec - Audit of XChain Lending - May 2024.pdf](https://github.com/Folks-Finance/audits/blob/main/OtterSec%20-%20Audit%20of%20XChain%20Lending%20-%20May%202024.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 3 | high |
| [Vantage Point - Smart Contract Audit of xChain Liquid Governance - June 2023.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Smart%20Contract%20Audit%20of%20xChain%20Liquid%20Governance%20-%20June%202023.pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [Folks Finance maintains the highest standards of security and we have hired several professional organizations for ongoing audits of the protocol source code. Click the following link to have a look at all the reports [.](https://github.com/Folks-Finance/audits)](https://github.com/Folks-Finance/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [immunefi.com/bug-bounty/folksfinance](https://immunefi.com/bug-bounty/folksfinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Adevar - Algorand Wormhole NTT - October 2025.pdf](https://github.com/Folks-Finance/audits/blob/main/Adevar%20-%20Algorand%20Wormhole%20NTT%20-%20October%202025.pdf) | Adevar | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Certik - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Certik%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | CertiK | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [Coinspect - Audit of Liquid Staking - August 2024.pdf](https://github.com/Folks-Finance/audits/blob/main/Coinspect%20-%20Audit%20of%20Liquid%20Staking%20-%20August%202024.pdf) | Coinspect | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [Coinspect - Smart Contract Audit - March 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Coinspect%20-%20Smart%20Contract%20Audit%20-%20March%202022.pdf) | Coinspect | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Runtime Verification - Design Review.pdf](https://github.com/Folks-Finance/audits/blob/main/Runtime%20Verification%20-%20Design%20Review.pdf) | Runtime Verification | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [Runtime Verification - Smart Contract Audit - February 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Runtime%20Verification%20-%20Smart%20Contract%20Audit%20-%20February%202022.pdf) | Runtime Verification | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [Trail of Bits - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Trail%20of%20Bits%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | Trail of Bits | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [Vantage Point - Revision Audit of Liquid Governance V2 - June 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Liquid%20Governance%20V2%20-%20June%202022.pdf) | Vantage Point | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Vantage Point - Revision Audit of Liquid Governance V3 - March 2023.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Liquid%20Governance%20V3%20-%20March%202023.pdf) | Vantage Point | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [Vantage Point - Revision Audit of Liquid Governance V3 - September 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Liquid%20Governance%20V3%20-%20September%202022.pdf) | Vantage Point | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Vantage Point - Revision Audit of Token Pair and Oracle Adapter - May 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Token%20Pair%20and%20Oracle%20Adapter%20-%20May%202022.pdf) | Vantage Point | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [Vantage Point - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | Vantage Point | Audit | 2022-12 | stale | Direct | contract_name | 0 | n/a |
| [Vantage Point - Smart Contract Audit - February 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Smart%20Contract%20Audit%20-%20February%202022.pdf) | Vantage Point | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [Mitigation Audit _ Folks Finance 34929 - [Smart Contract - Critical] Accounting Discrepancy in Fee Retention Leads to Protocol Insolvency and Fund Freezing.md](https://github.com/immunefi-team/Bounty_Boosts/blob/main/Mitigation%20Audit%20%7C%20Folks%20Finance/Mitigation%20Audit%20_%20Folks%20Finance%2034929%20-%20%5BSmart%20Contract%20-%20Critical%5D%20Accounting%20Discrepancy%20in%20Fee%20Retention%20Leads%20to%20Protocol%20Insolvency%20and%20Fund%20Freezing.md) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Mitigation Audit _ Folks Finance 35089 - [Smart Contract - Insight] Malicious actor can control interest rates by DoSing borrowings and manipulate utilization ratio at his will.md](https://github.com/immunefi-team/Bounty_Boosts/blob/main/Mitigation%20Audit%20%7C%20Folks%20Finance/Mitigation%20Audit%20_%20Folks%20Finance%2035089%20-%20%5BSmart%20Contract%20-%20Insight%5D%20Malicious%20actor%20can%20control%20interest%20rates%20by%20DoSing%20borrowings%20and%20manipulate%20utilization%20ratio%20at%20his%20will.md) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xbe0ed4...c5226b`](./contracts/ethereum-1/0xbe0ed4138121ecfc5c0e56b40517da27e6c5226b/) | AethirToken | token | $201,370,104.17 | Verified native implementation with $201,370,104.17 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x06d47f...72219e`](./contracts/avalanche-43114/0x06d47f3fb376649c3a9dafe069b3d6e35572219e/) | StakedAvUSDV2 | token | $92,524,818.41 | Verified native implementation with $92,524,818.41 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x649342...deba84`](./contracts/avalanche-43114/0x649342c6bff544d82df1b2ba3c93e0c22cdeba84/) | StakedAvantCoinV2 | token | $6,171,512.41 | Verified native implementation with $6,171,512.41 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x123f83...da9bfd`](./contracts/base-8453/0x123f831a762a165107ee2e07416f4aa713da9bfd/) | SpokeErc20Token | token | $2,461,060.68 | Verified native implementation with $2,461,060.68 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x37d761...393cdd`](./contracts/arbitrum-42161/0x37d761883a01e9f0b0d7fe59eec8c21d94393cdd/) | SpokeGasToken | token | $30,016.63 | Verified native implementation with $30,016.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xcd7ee4...5108bf`](./contracts/polygon-137/0xcd7ee494fa616fdbe38aa0a9355e20b7215108bf/) | SpokeRewardsV2GasToken | token | $21,017.44 | Verified native implementation with $21,017.44 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x025961...b3f228`](./contracts/arbitrum-42161/0x0259617be41ada4d97ded60daf848caa6db3f228/) | SpokeRewardsV2Erc20Token | token | $5.21 | Verified native implementation with $5.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0700b2...20779c`](./contracts/bsc-56/0x0700b2cb26688c035bd5dbbda070be408c20779c/) | SpokeCircleToken | token | $0.01 | Verified native implementation with $0.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x12db97...54156f`](./contracts/avalanche-43114/0x12db9758c4d9902334c523b94e436258eb54156f/) | AccountManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x89245a...6bed7b`](./contracts/avalanche-43114/0x89245a4bd8948713fd5f6da7c84cf6d2b76bed7b/) | AddressesWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x85aa8d...76293d`](./contracts/sei-1329/0x85aa8d7fc0b44fdc2773c3252617b8d60076293d/) | AlwaysEligibleAddressOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xfd2c2a...289053`](./contracts/avalanche-43114/0xfd2c2a98009d0cbed715882036e43d26c4289053/) | AvantCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x58c32c...76cc04`](./contracts/avalanche-43114/0x58c32c34fd4ae48a7d45ec4b3c940b41d676cc04/) | AvantMintingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x5c60f1...9dd04e`](./contracts/sei-1329/0x5c60f12838b8e3eeb525f299cd7c454c989dd04e/) | CCIPTokenAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x13379b...0d75e1`](./contracts/sei-1329/0x13379b489fb2e76cedf96bceaa2441e5930d75e1/) | CreditMessaging | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x711b5a...830d8e`](./contracts/sei-1329/0x711b5aafd4d0a5b7b863ca434a2678d086830d8e/) | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf4c542...2f847e`](./contracts/avalanche-43114/0xf4c542518320f09943c35db6773b2f9feb2f847e/) | LoanManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xeb0183...a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x160345...9342d8`](./contracts/sei-1329/0x160345fc359604fc6e70e3c5facbde5f7a9342d8/) | OFTTokenERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4c129d...6fc887`](./contracts/avalanche-43114/0x4c129d3aa27272211d151ca39a0a01e4c16fc887/) | RequestsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x57d77f...f074a4`](./contracts/arbitrum-42161/0x57d77fd37670e22188d1c92d7cec931bccf074a4/) | SpokeCommon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x1b2a8d...def8df`](./contracts/sei-1329/0x1b2a8d56967d00700dd5c94e27b1a116a1def8df/) | SpokeRewardsV2Common | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x509712...e986ea`](./contracts/ethereum-1/0x509712f368255e92410893ba2e488f40f7e986ea/) | SyrupDrip | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x1502fa...275d3d`](./contracts/sei-1329/0x1502fa4be69d526124d453619276faccab275d3d/) | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf9d9f4...6336b6`](./contracts/ethereum-1/0xf9d9f4ae37d09d50a279058c008a4fa98b6336b6/) | VestingWallet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7e8b3...260b45`](./contracts/ethereum-1/0xc7e8b36e0766d9b04c93de68a9d47dd11f260b45/) | xMPL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 59 |
| upstream | 6 |
| standard_library | 7 |
| needs_review | 69 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 17
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, low=1
- Match method counts: extraction_exact=16

Zero-match audit list:

- [13144] DL audit link
- [13145] Folks-Finance-Design-Review.pdf
- [13149] Vantage Point - Smart Contract Audit of xChain Liquid Governance - June 2023.pdf
- [13150] Folks Finance maintains the highest standards of security and we have hired several professional organizations for ongoing audits of the protocol source code. Click the following link to have a look at all the reports [.](https://github.com/Folks-Finance/audits)
- [13152] Adevar - Algorand Wormhole NTT - October 2025.pdf
- [13153] Certik - Smart Contract Audit - December 2022.pdf
- [13154] Coinspect - Audit of Liquid Staking - August 2024.pdf
- [13155] Coinspect - Smart Contract Audit - March 2022.pdf
- [13156] Runtime Verification - Design Review.pdf
- [13157] Runtime Verification - Smart Contract Audit - February 2022.pdf
- [13158] Trail of Bits - Smart Contract Audit - December 2022.pdf
- [13159] Vantage Point - Revision Audit of Liquid Governance V2 - June 2022.pdf
- [13160] Vantage Point - Revision Audit of Liquid Governance V3 - March 2023.pdf
- [13161] Vantage Point - Revision Audit of Liquid Governance V3 - September 2022.pdf
- [13162] Vantage Point - Revision Audit of Token Pair and Oracle Adapter - May 2022.pdf
- [13163] Vantage Point - Smart Contract Audit - December 2022.pdf
- [13164] Vantage Point - Smart Contract Audit - February 2022.pdf

Fork inheritance lineage and inherited audits are included when available.
