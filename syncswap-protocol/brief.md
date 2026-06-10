# Agentic Audit Brief: SyncSwap Protocol

## Project Overview

- Project: SyncSwap Protocol (`syncswap-protocol`)
- Website: [https://syncswap.xyz/](https://syncswap.xyz/)
- Lifecycle: active (Tier 0, 89.4% below peak)
- Generated: 2026-06-10T20:59:17.132Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: linea, scroll, zksync-era
- Contract surface: 157 unique implementations (194 raw deployments)
- DeFi Llama TVL: $9,687,624.00
- On-chain TVL (included contracts): $453,683.50
- TVL by chain: Linea $453,683.50

## Project Description

SyncSwap is a single decentralized exchange (DEX) protocol deployed across multiple chains, including Linea, Scroll, zkSync Era, and Sophon. It enables token swaps and liquidity provision through pool types such as classic, stable, and concentrated liquidity pools.

### Architecture

The SyncSwap family contains the core vault and pool master contracts that manage liquidity and swaps, while the Linea and Scroll families are chain-specific deployments of pool factories that rely on the same underlying pool logic. All families share the same architectural pattern of factory contracts creating and managing pools, with routers providing user-facing swap interfaces.

## Audit Coverage Summary

- Verified implementations audited: 7/30 (23.3%)
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 127
- Unique implementations: 157
- Raw deployments: 194
- Audits discovered: 8
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Staleness: 0 fresh, 0 aging, 8 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| MetaScan | Tier 2 | 7 | 23.3% | 2023-04 |
| Zellic | Tier 2 | 1 | 3.3% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SyncSwapVault | core_logic | linea | [`0x716057...1ab61b`](./contracts/linea-59144/0x7160570bb153edd0ea1775ec2b2ac9b65f1ab61b/) | ✅ Audited |
| ForwarderRegistry | registry | linea | 2 deployments: linea [`0x35f714...5d1670`](./contracts/linea-59144/0x35f714e638927c9176a0c9b46bee250ec95d1670/); linea `0x86c3e1...42f59e` | ✅ Audited |
| SyncSwapClassicPoolFactory | registry | linea | 2 deployments: linea [`0x37bac7...a0ac2d`](./contracts/linea-59144/0x37bac764494c8db4e54bde72f6965bea9fa0ac2d/); scroll [`0x37bac7...a0ac2d`](./contracts/scroll-534352/0x37bac764494c8db4e54bde72f6965bea9fa0ac2d/) | ✅ Audited |
| SyncSwapFeeManager | governance | linea | [`0x12af3e...6c586d`](./contracts/linea-59144/0x12af3ec993ec5d5bd789b3e989c9e95a2f6c586d/) | ✅ Audited |
| SyncSwapFeeRecipient | operational_periphery | linea | [`0xa2a09f...410bd8`](./contracts/linea-59144/0xa2a09f15c2ec6af1b8f9413c148334b231410bd8/) | ✅ Audited |
| SyncSwapPoolMaster | core_logic | linea | 8 deployments: linea [`0x13afc8...10aad0`](./contracts/linea-59144/0x13afc84eed9ab532eab73d9ff5d3df4bf610aad0/); linea `0x16743b...630cc0`; linea `0x5725d2...630c2b`; linea `0x608cb7...64b4a3`; linea `0x619499...0e70aa`; linea `0xa56e84...c85d29`; linea `0xbc632b...5963db`; linea `0xee8790...55b3a0` | ✅ Audited |
| SyncSwapRouter | adapter | linea | [`0x80e382...bd5c69`](./contracts/linea-59144/0x80e38291e06339d10aab483c65695d004dbd5c69/) | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CryptoView_ | unknown | linea | [`0x1f74b4...153a68`](./contracts/linea-59144/0x1f74b44f004ef44c86ac1dd3b5cd662b12153a68/) | ⚠️ Unaudited |
| FeeManagerV3 | governance | linea | 5 deployments: linea [`0x019f6f...dc5785`](./contracts/linea-59144/0x019f6f1d08d9b76969132aa6e29cb6a5cadc5785/); linea `0x2a1417...b20fe6`; linea `0x4100b8...5d8e17`; linea `0x49d982...e110a2`; linea `0xa4bc20...1bd8a1` | ⚠️ Unaudited |
| FeeRegistry | registry | linea | [`0x8cdf4e...b3ec60`](./contracts/linea-59144/0x8cdf4ec0d5ee197b00467a720660c44480b3ec60/) | ⚠️ Unaudited |
| FeeRegistryV3 | registry | linea | [`0x396a9a...c3a02b`](./contracts/linea-59144/0x396a9aa50d206f65d3fc0493dafb800eaac3a02b/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | linea | [`0xcc00f9...9e4d75`](./contracts/linea-59144/0xcc00f934a7541868b9a09f98d7928f727b9e4d75/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorLinea | token | linea | 2 deployments: linea [`0xe35730...353431`](./contracts/linea-59144/0xe357304dc2edd2f9affbc64d69e7e278ef353431/); linea `0xf96d83...f76e41` | ⚠️ Unaudited |
| QuoterV2 | periphery | linea | 6 deployments: linea [`0x0d23e8...c1e044`](./contracts/linea-59144/0x0d23e88093a7f88aa2cd62b377e2f58db4c1e044/); linea `0x1e662e...6c0b10`; linea `0x20e82b...66cdf9`; linea `0x78ebfe...04ba5a`; linea `0xeb0fab...3057a7`; linea `0xee424e...efa57f` | ⚠️ Unaudited |
| SwapLib | unknown | linea | [`0x7f469d...e2d571`](./contracts/linea-59144/0x7f469dd8753f29b6d7690148cbad6a8dd3e2d571/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | linea | [`0xa328e9...776eb4`](./contracts/linea-59144/0xa328e968906f5c5922accc197d6dcfe2c2776eb4/) | ⚠️ Unaudited |
| SyncSwapClassicPoolDelegatedFactory | registry | scroll | 4 deployments: linea `0x957399...1fbaa2`; linea `0xb8abae...5fe32b`; linea `0xf9fa71...891183`; scroll [`0x76f549...8fb54c`](./contracts/scroll-534352/0x76f549af692efa64952d02c075226df9878fb54c/) | ⚠️ Unaudited |
| SyncSwapCryptoBurn_ | unknown | linea | [`0xf69d31...c5b1f0`](./contracts/linea-59144/0xf69d317825bf7524131b7c910d10930ac5c5b1f0/) | ⚠️ Unaudited |
| SyncSwapCryptoPoolDelegatedFactory | registry | linea | 2 deployments: linea [`0x1080ee...a6d1ea`](./contracts/linea-59144/0x1080ee857d165186af7f8d63e8ec510c28a6d1ea/); scroll `0x87aeb5...937018` | ⚠️ Unaudited |
| SyncSwapCryptoPoolLibrary_ | core_logic | linea | [`0xdb2b37...83449d`](./contracts/linea-59144/0xdb2b3755faadaeae8c8fc7f5e107b3153283449d/) | ⚠️ Unaudited |
| SyncSwapPoolMaster_ | core_logic | scroll | [`0x4318a7...07657c`](./contracts/scroll-534352/0x4318a74425e5353a1194cf26138baa87b607657c/) | ⚠️ Unaudited |
| SyncSwapRangePool | core_logic | linea | [`0x3f9732...aaba27`](./contracts/linea-59144/0x3f9732504c285ef578fa3e3b437eee9eceaaba27/) | ⚠️ Unaudited |
| SyncSwapRangePoolFactory | registry | linea | 5 deployments: linea [`0x1ada4a...d907ea`](./contracts/linea-59144/0x1ada4a43e87084bea5787e80e8c5b56543d907ea/); linea `0x35deaf...5e3c6e`; linea `0xc5916f...ee6690`; linea `0xd17cb6...1ae4f1`; scroll `0xb11042...b31838` | ⚠️ Unaudited |
| SyncSwapRouterV2 | adapter | linea | 3 deployments: linea [`0x60f9b3...98cf3f`](./contracts/linea-59144/0x60f9b3a705f1fbdcdee1ba2c2331b8aa8f98cf3f/); linea `0xc2a194...3e8a1e`; scroll `0xfd541d...dc9115` | ⚠️ Unaudited |
| SyncSwapRouterV3 | adapter | linea | 6 deployments: linea [`0x0b64ba...b07c55`](./contracts/linea-59144/0x0b64ba230d4c9d133aa7a52ceff1620178b07c55/); linea `0x363277...61fd9d`; linea `0x41706c...8c1cf7`; linea `0x60210a...c059e5`; linea `0x62f9d1...16f89f`; linea `0x729680...4755f0` | ⚠️ Unaudited |
| SyncSwapStablePoolDelegatedFactory | registry | linea | 4 deployments: linea [`0x024a09...18ad86`](./contracts/linea-59144/0x024a096bab43587d24004c95c3e20fcb7518ad86/); linea `0x576374...10f9a9`; linea `0x61abf7...8e9101`; scroll `0xa2aca6...f38d00` | ⚠️ Unaudited |
| TickLens | periphery | linea | [`0xb86284...3b4604`](./contracts/linea-59144/0xb86284160348d0727e7fc6b131812082243b4604/) | ⚠️ Unaudited |
| V3Migrator | periphery | linea | [`0xa8b49c...707c34`](./contracts/linea-59144/0xa8b49c4cbf805f3252ddbf4de465c34986707c34/) | ⚠️ Unaudited |
| WETH9 | token | linea | [`0xe5d7c2...5cf34f`](./contracts/linea-59144/0xe5d7c2a44ffddf6b295a15c148167daaaf5cf34f/) | ⚠️ Unaudited |
| WrappedEther | unknown | scroll | [`0x530000...000004`](./contracts/scroll-534352/0x5300000000000000000000000000000000000004/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (127)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | zksync-era | `0x075487...0f327d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x0a34fb...906193` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x1b887a...3a084c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x1fc09a...0e3791` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x20b28b...b90c5d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x2da10a...1c0295` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x31a2c9...303978` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x432bcc...681e6c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x582ad7...2d5a3d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x593f66...8c5c55` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x5aea57...9d9a91` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x5b9f21...356ea3` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x621425...f8d091` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x63ad09...906ebb` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x7581a8...946502` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x812515...5c317f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x877b04...6991e9` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x9b5def...26b059` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x9d63d3...4e6f13` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xa757ed...5a4131` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xbb0591...909ffb` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xc6dac3...722601` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xc8a3d1...cb472e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xecdd1c...af58b2` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xf2dad8...aca7cb` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xfd43b4...12811c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xfdfe03...5783d3` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x01ca20...756f3d` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x01d5e4...a00305` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x08d43e...5d4721` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x0a78ca...03decd` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x0ba530...a4e017` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x1262c2...560098` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x155fe0...334bc8` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x16c34b...9c896f` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x16ce95...d9cfd4` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x1c86b5...290172` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x1cf802...c6248c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x222aa0...6a3a77` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x249124...247e7d` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x289670...6640be` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x2977e5...49e22d` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x2b610a...0e8239` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x326919...5d706c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x32b8ac...4ea895` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x3307f2...fe8079` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x3a46e9...78b5e1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x3bf15c...7ef55a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x3d7b58...d88462` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x4459b1...8dc4d1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x45b320...681301` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x4750ba...a03dc6` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x4ebeaf...fa9d27` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x50577c...f12238` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x50ddda...289595` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x533d11...4638ed` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x53c6e6...f4e5a3` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x59ce60...1570f1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x59eed3...24a412` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5a8c16...bcf854` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5baacb...cf9103` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5ff877...678ab1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x626a86...964420` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x6c78b8...a241b6` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x6c979a...09ce61` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x6d5318...2afc32` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x6e5509...74970b` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7a3106...864fb0` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7c0a3a...4f9bd8` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7c42a1...652029` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7f47fe...be9098` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x853483...3d1af2` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x85dfbe...903015` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x8a5ae4...3bc8c4` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x8c6551...e97649` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x8f5970...3bf292` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x91e3d3...32d4e6` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x948702...f72b0c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x95e017...4b17b9` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x98cd97...41b6f7` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xa211df...a1d4f3` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xa3e16b...910960` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xa4bbe8...dce4df` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xa5541d...45bfa0` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xab40ea...9a3890` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xab6994...073926` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb45365...5d6029` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb53b8a...60531f` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb69cda...dd1cda` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xba7535...1bf072` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xbae656...dcd356` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xbe87d2...d45bba` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc062b4...be86c9` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc11d55...f87a09` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc24ce2...5f2dd6` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc3a531...7eeb3a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc5f3d4...82e562` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc70a32...28d8b4` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xccad86...b2b8d8` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xceef58...f5f330` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xcf12b1...ecfee5` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xcf18a4...e91656` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd31603...008784` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd6422b...d3621e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd96c37...f0530d` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xdd2171...a97261` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xdd9635...beb58c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe4cf80...dd3727` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe963e1...923c2e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xedbeca...152169` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xee589e...e3fdb4` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf14a2d...3a90f3` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf274e2...693889` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf3999c...edbe1c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf56588...fea980` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf72f6f...07b87a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf7df79...a9c475` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf8ad6a...8b8d25` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfc107a...0af398` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfcc130...71c578` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfed898...8cacd8` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfede7b...4d802a` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0x5bebda...fb7a9e` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xa033ea...30ce2d` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xdaedec...024f69` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xdfb26a...132611` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xe4cf80...dd3727` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-SyncSwap-v1.0.pdf](https://github.com/syncswap/reports/blob/main/PeckShield-Audit-Report-SyncSwap-v1.0.pdf) | PeckShield | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [SyncSwap - Zellic Audit Report.pdf](https://github.com/syncswap/reports/blob/main/SyncSwap%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-05 | stale | Direct | contract_name | 1 | high |
| [MetaScan_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | contract_name | 16 | high |
| [MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | contract_name | 16 | high |
| [MetaScan_Security_Prover_Report_contracts_202304040106.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Prover_Report_contracts_202304040106.pdf) | MetaScan | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [202304231022.pdf](https://github.com/syncswap/reports/blob/main/202304231022.pdf) | Unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x1f74b4...153a68`](./contracts/linea-59144/0x1f74b44f004ef44c86ac1dd3b5cd662b12153a68/) | CryptoView_ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x019f6f...dc5785`](./contracts/linea-59144/0x019f6f1d08d9b76969132aa6e29cb6a5cadc5785/) | FeeManagerV3 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x8cdf4e...b3ec60`](./contracts/linea-59144/0x8cdf4ec0d5ee197b00467a720660c44480b3ec60/) | FeeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x396a9a...c3a02b`](./contracts/linea-59144/0x396a9aa50d206f65d3fc0493dafb800eaac3a02b/) | FeeRegistryV3 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xcc00f9...9e4d75`](./contracts/linea-59144/0xcc00f934a7541868b9a09f98d7928f727b9e4d75/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xe35730...353431`](./contracts/linea-59144/0xe357304dc2edd2f9affbc64d69e7e278ef353431/) | NonfungibleTokenPositionDescriptorLinea | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x7f469d...e2d571`](./contracts/linea-59144/0x7f469dd8753f29b6d7690148cbad6a8dd3e2d571/) | SwapLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xa328e9...776eb4`](./contracts/linea-59144/0xa328e968906f5c5922accc197d6dcfe2c2776eb4/) | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x76f549...8fb54c`](./contracts/scroll-534352/0x76f549af692efa64952d02c075226df9878fb54c/) | SyncSwapClassicPoolDelegatedFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xf69d31...c5b1f0`](./contracts/linea-59144/0xf69d317825bf7524131b7c910d10930ac5c5b1f0/) | SyncSwapCryptoBurn_ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1080ee...a6d1ea`](./contracts/linea-59144/0x1080ee857d165186af7f8d63e8ec510c28a6d1ea/) | SyncSwapCryptoPoolDelegatedFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xdb2b37...83449d`](./contracts/linea-59144/0xdb2b3755faadaeae8c8fc7f5e107b3153283449d/) | SyncSwapCryptoPoolLibrary_ | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x4318a7...07657c`](./contracts/scroll-534352/0x4318a74425e5353a1194cf26138baa87b607657c/) | SyncSwapPoolMaster_ | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3f9732...aaba27`](./contracts/linea-59144/0x3f9732504c285ef578fa3e3b437eee9eceaaba27/) | SyncSwapRangePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1ada4a...d907ea`](./contracts/linea-59144/0x1ada4a43e87084bea5787e80e8c5b56543d907ea/) | SyncSwapRangePoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x60f9b3...98cf3f`](./contracts/linea-59144/0x60f9b3a705f1fbdcdee1ba2c2331b8aa8f98cf3f/) | SyncSwapRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0b64ba...b07c55`](./contracts/linea-59144/0x0b64ba230d4c9d133aa7a52ceff1620178b07c55/) | SyncSwapRouterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x024a09...18ad86`](./contracts/linea-59144/0x024a096bab43587d24004c95c3e20fcb7518ad86/) | SyncSwapStablePoolDelegatedFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xb86284...3b4604`](./contracts/linea-59144/0xb86284160348d0727e7fc6b131812082243b4604/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xa8b49c...707c34`](./contracts/linea-59144/0xa8b49c4cbf805f3252ddbf4de465c34986707c34/) | V3Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 107 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 47 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=33

Zero-match audit list:

- [2071] PeckShield-Audit-Report-SyncSwap-v1.0.pdf
- [2075] MetaScan_Security_Prover_Report_contracts_202304040106.pdf
- [2076] MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf
- [2077] MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf
- [2078] 202304231022.pdf

Fork inheritance lineage and inherited audits are included when available.
