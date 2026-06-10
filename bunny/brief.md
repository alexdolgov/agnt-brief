# Agentic Audit Brief: Bunny

⚠️ Lifecycle status: DECLINING - TVL changed 3.9% over 90 days

## Project Overview

- Project: Bunny (`bunny`)
- Website: [https://pancakebunny.finance/](https://pancakebunny.finance/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-10T22:15:36.238Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-7a87
- Chains: bsc, polygon
- Contract surface: 101 unique implementations (453 raw deployments)
- DeFi Llama TVL: $3,316,661.11
- On-chain TVL (included contracts): $1,887,126.18
- TVL by chain: Bsc $1,840,442.48 | Polygon $46,683.70

## Project Description

Bunny is primarily a yield optimization protocol that aggregates user deposits into auto-compounding vaults, historically across BSC and Polygon, using strategies such as LP token handling and staking in external platforms like Venus and PancakeSwap. Its broader recorded contract surface also includes historical or ancillary product lines and operational contracts such as MoundTokenBSC, MoundOfferingBSC, VaultMND, VaultQBTBNB, VaultFlipToQBT, PotBunnyLover, PotCakeLover, BankBNB, CompensationTreasury, and safeSwapBNB, so not all deployments should be described as a single BUNNY-reward vault family.

### Architecture

All vaults and pools share the BUNNY token for rewards, minted by BunnyMinterV2 and distributed via BunnyChef and BunnyPool contracts. Price calculators and zap contracts provide shared infrastructure for asset valuation and deposit routing across vaults, while proxy contracts enable upgradeability for most core logic.

## Audit Coverage Summary

- Verified implementations audited: 7/73 (9.6%)
- Verified + Unaudited implementations: 66
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 101
- Raw deployments: 453
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $1,362,197.50
- Latest audit: 2021-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,362,197.50 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 7 | 9.6% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BunnyToken | token | polygon | 4 deployments: bsc `0xc9849e...a11a51`; polygon [`0x4c16f6...dc126a`](./contracts/polygon-137/0x4c16f69302ccb511c5fac682c7626b9ef0dc126a/); polygon `0x7a7f11...c91493`; polygon `0x811956...08d0ad` | ✅ Audited |
| VaultCakeToCake | core_logic | bsc | 7 deployments: bsc [`0x195313...3631d3`](./contracts/bsc-56/0x1953136932098ff25d2c50a20319ecaba43631d3/); bsc `0x272d42...a100f6`; bsc `0x466be9...349da7`; bsc `0x537a7c...9e354a`; bsc `0x6372c8...6b857f`; bsc `0x875556...597158`; bsc `0xedfcb7...da28ed` | ✅ Audited |
| BunnyPool | core_logic | polygon | 8 deployments: bsc `0xb24633...bc1f44`; bsc `0xcadc8c...d7889d`; polygon [`0x0cd5fa...880b02`](./contracts/polygon-137/0x0cd5fa517096ab71fdf60ca024923110e5880b02/); polygon `0x10c8cf...63d7ac`; polygon `0x36ad64...87bbf3`; polygon `0x3954e8...22dce5`; polygon `0x9a96ed...dcb1cc`; polygon `0xfbffcd...5aa00f` | ✅ Audited |
| VaultFlipToCake | core_logic | bsc | 27 deployments: bsc [`0x0dec5a...89ae8a`](./contracts/bsc-56/0x0dec5af8fcbb21b224797616733f93563789ae8a/); bsc `0x1afa3b...406593`; bsc `0x203ee2...f92cb1`; bsc `0x391e8d...ca9f1e`; bsc `0x4a1fc0...48471a`; bsc `0x4ac7d1...20c139`; bsc `0x519422...9b4534`; bsc `0x5d1dcb...c56831`; bsc `0x6ee46a...8a2000`; bsc `0x7078b5...669de2`; bsc `0x74fdc2...3416dd`; bsc `0x7d52a1...11a921`; bsc `0x7f0320...3e2344`; bsc `0x81fa6f...4f9551`; bsc `0x87dfcd...85293f`; bsc `0x8a8d6b...39b7b8`; bsc `0xaba9c9...9f3aa4`; bsc `0xac2092...24eb39`; bsc `0xac7d40...8403fa`; bsc `0xbdd478...0cd702`; bsc `0xc1d9ea...306f77`; bsc `0xc555e2...db0f20`; bsc `0xd22204...7bb0ad`; bsc `0xdf94b7...2d4afb`; bsc `0xe84895...ef1ce6`; bsc `0xf92f12...2c61d7`; bsc `0xfeed0b...a11aac` | ✅ Audited |
| VaultFlipToFlip | core_logic | bsc | 21 deployments: bsc [`0x0d17e7...eb8eaa`](./contracts/bsc-56/0x0d17e7b77c678c79c3ab5176e164ff0bcceb8eaa/); bsc `0x14cfc6...b0f57a`; bsc `0x1d5c98...c71186`; bsc `0x1ec31b...cce1af`; bsc `0x285f79...bf1f1f`; bsc `0x44f4e4...646473`; bsc `0x4a1be0...4a8274`; bsc `0x633e53...71e77b`; bsc `0x6b3ede...34cf52`; bsc `0x829388...05528c`; bsc `0x8a1f45...0e9c13`; bsc `0x93546b...3df939`; bsc `0xa119d2...5feb72`; bsc `0xa599d6...af00aa`; bsc `0xaa972c...2e15c6`; bsc `0xc341c6...b22ff6`; bsc `0xcbc6f8...ccbd1e`; bsc `0xd415e6...0838ea`; bsc `0xe0aca3...71ca62`; bsc `0xe23969...4273dd`; bsc `0xfdb7d4...70286c` | ✅ Audited |
| BunnyBNBPool | core_logic | bsc | [`0xc80ea5...d66e0d`](./contracts/bsc-56/0xc80ea568010bca1ad659d1937e17834972d66e0d/) | ✅ Audited |
| BunnyMinter | unknown | bsc | 2 deployments: bsc [`0x0b4a71...667efe`](./contracts/bsc-56/0x0b4a714aaf59e46cb1900e3c031017fd72667efe/); bsc `0xb8b0cb...8cbf67` | ✅ Audited |

### ⚠️ Verified + Unaudited (66)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VaultVenus | core_logic | bsc | 22 deployments: bsc [`0x0243a2...38a67a`](./contracts/bsc-56/0x0243a20b20eca78ddedf6b8ddb43a0286438a67a/); bsc `0x0ba950...133ffc`; bsc `0x0c236a...28e46e`; bsc `0x0f1638...df3ca6`; bsc `0x1bd22b...62bc10`; bsc `0x22af73...2fd250`; bsc `0x4520cc...8b3205`; bsc `0x52cfa1...eb38a3`; bsc `0x549d2e...954f6a`; bsc `0x576f90...b98dfc`; bsc `0x5ccc0b...13e4ed`; bsc `0x6ada6b...16b6de`; bsc `0x82a88d...9b4b27`; bsc `0x899860...814b88`; bsc `0x9fec0e...a25495`; bsc `0xa1da8e...fb2093`; bsc `0xb3383d...8b1dc8`; bsc `0xd684df...1acc1b`; bsc `0xd95343...196df0`; bsc `0xde3f34...8c08d6`; bsc `0xe4f115...b2ac4c`; bsc `0xfbfbed...fb97e2` | ⚠️ Unaudited |
| BunnyPoolV2 | core_logic | bsc | 4 deployments: bsc [`0x28ecb0...292276`](./contracts/bsc-56/0x28ecb0a0e1f64a622954cd3f2dd2f8e128292276/); bsc `0x31fe3a...06ef13`; bsc `0x4fd014...3e014d`; bsc `0xfd25b3...0277b9` | ⚠️ Unaudited |
| MoundTokenBSC | token | bsc | 2 deployments: bsc [`0x4c97c9...f244fe`](./contracts/bsc-56/0x4c97c901b5147f8c1c7ce3c5cf3eb83b44f244fe/); bsc `0x5b44f5...c83732` | ⚠️ Unaudited |
| VaultBunnyMaximizer | core_logic | polygon | 9 deployments: bsc `0x317e66...64949e`; bsc `0x87627b...002ff9`; bsc `0x8df3e9...a3c46e`; bsc `0xc004a3...667329`; polygon [`0x0010c4...2f86e3`](./contracts/polygon-137/0x0010c4377f7c45c0f2a12678fc9d72e8df2f86e3/); polygon `0x3519bc...0b01f2`; polygon `0x39db7c...436d92`; polygon `0x4ad69d...0de1ba`; polygon `0x70aa46...84223b` | ⚠️ Unaudited |
| VaultMND | core_logic | polygon | 4 deployments: polygon [`0x0f39e1...c13d20`](./contracts/polygon-137/0x0f39e117635d5983b9059e9d665f03fa6ac13d20/); polygon `0x470156...f84e34`; polygon `0x6ffbaf...f07c3d`; polygon `0xc93d91...d68acf` | ⚠️ Unaudited |
| VaultBunny | core_logic | bsc | 2 deployments: bsc [`0xaef1eb...bbbbaf`](./contracts/bsc-56/0xaef1ebb01f67e290e3b2b1f49e71654711bbbbaf/); bsc `0xb03758...b5d940` | ⚠️ Unaudited |
| VaultQuickFlipToFlip | core_logic | polygon | 20 deployments: polygon [`0x217286...3171d2`](./contracts/polygon-137/0x217286293e4eade2f1962d17825bec81093171d2/); polygon `0x29270e...c0add7`; polygon `0x2ca5e5...1fcbc4`; polygon `0x3cba7b...a351a8`; polygon `0x40bad3...6ebf6f`; polygon `0x470be5...0dd360`; polygon `0x48db73...7fb58c`; polygon `0x4964e4...ec3e78`; polygon `0x4beb90...2e904f`; polygon `0x4ee929...0462f2`; polygon `0x54e1fe...eef7df`; polygon `0x560f86...1b84c2`; polygon `0x58918f...adfa05`; polygon `0x6d2a07...4e37cf`; polygon `0x95af40...00f7b6`; polygon `0xb0621a...d02f5b`; polygon `0xbea52f...bb6f12`; polygon `0xbf57a7...14b543`; polygon `0xe94096...4f80bd`; polygon `0xf06620...206a92` | ⚠️ Unaudited |
| CakeFlipVault | core_logic | bsc | 7 deployments: bsc [`0x23b68a...8f3891`](./contracts/bsc-56/0x23b68a3c008512a849981b6e69bbac16048f3891/); bsc `0x3649b6...2ffa00`; bsc `0x569b83...09d5ab`; bsc `0x62f2d4...b26609`; bsc `0x916acb...cbfbf0`; bsc `0xa3bff2...7a52b1`; bsc `0xdc6e9d...989bf8` | ⚠️ Unaudited |
| VaultBunnyBNBLegacy | core_logic | bsc | 3 deployments: bsc [`0x2c2084...1fa794`](./contracts/bsc-56/0x2c2084ad8e2f811597eda99baa403481351fa794/); bsc `0x5af361...c59f00`; bsc `0x69ff78...905cbc` | ⚠️ Unaudited |
| VaultSushiFlipToFlip | core_logic | polygon | 7 deployments: polygon [`0x16cee2...8591ca`](./contracts/polygon-137/0x16cee21c231e2c3cf2778fe568230c145c8591ca/); polygon `0x39d28d...c5dd87`; polygon `0x45f10b...254707`; polygon `0x51c30e...ffe174`; polygon `0x87c743...188ece`; polygon `0xc30c92...4f3f05`; polygon `0xdf0be6...4c4b45` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | 25 deployments: bsc [`0x16b7ab...270e1a`](./contracts/bsc-56/0x16b7ab1a41632e2ae4aa7ee7c56c8c379f270e1a/); bsc `0x1a3270...f14675`; bsc `0x227858...bef4a1`; bsc `0x231aef...b84d4f`; bsc `0x273db5...1295c8`; bsc `0x3866cd...04f1d0`; bsc `0x443e8a...1fa1de`; bsc `0x4dbd3f...e46f69`; bsc `0x5b89fb...efb0db`; bsc `0x5fb9ab...048e8d`; bsc `0x7347d8...df8717`; bsc `0x77f70c...9ab4b5`; bsc `0x7f4196...ce89a8`; bsc `0x95733e...f98e61`; bsc `0xa6340d...f8e860`; bsc `0xa9b005...c778fc`; bsc `0xb71b23...58e764`; bsc `0xbd574b...d42c24`; bsc `0xbeddd9...6f750a`; bsc `0xc30e44...8f567a`; bsc `0xd60196...348183`; bsc `0xe977b0...9ddbf8`; bsc `0xf0a227...2b8e7c`; bsc `0xf84e38...a619ab`; bsc `0xfad04f...8c890a` | ⚠️ Unaudited |
| BankBNB | unknown | bsc | 6 deployments: bsc [`0x18a9ee...5e9451`](./contracts/bsc-56/0x18a9eee6dc4fb50f86c4abb67bd5f23a3c5e9451/); bsc `0x4e4ded...fe3f80`; bsc `0x83adb2...e4f738`; bsc `0x926940...2dbbb8`; bsc `0xaf8980...0b2036`; bsc `0xb28aa3...2d761b` | ⚠️ Unaudited |
| BankBridge | operational_periphery | bsc | 3 deployments: bsc [`0x08bfd4...e5a249`](./contracts/bsc-56/0x08bfd44ffdfb32ac8f5efd790609e0fad6e5a249/); bsc `0xcbaea5...9c5963`; bsc `0xd6d3fd...5bbdc1` | ⚠️ Unaudited |
| BankConfig | governance | bsc | [`0xeb9fc5...28cb08`](./contracts/bsc-56/0xeb9fc522da9e2976cd112f36c6c9f2ee4d28cb08/) | ⚠️ Unaudited |
| BulkSender | unknown | bsc | [`0x4bfbde...797174`](./contracts/bsc-56/0x4bfbde87cbc22272b481060144908bc4a9797174/) | ⚠️ Unaudited |
| BunnyChef | unknown | polygon | 5 deployments: bsc `0x40e318...4d04ce`; bsc `0x502230...1e9247`; bsc `0xf3976c...87f3f8`; polygon [`0x1d5e16...3379f0`](./contracts/polygon-137/0x1d5e16993a11596f363b09e2637dac42073379f0/); polygon `0x3048d5...1fd82f` | ⚠️ Unaudited |
| BunnyFeeBox | unknown | bsc | 4 deployments: bsc [`0x3749f6...1894bb`](./contracts/bsc-56/0x3749f69b2d99e5586d95d95b6f9b5252c71894bb/); bsc `0x886b5a...e989e7`; bsc `0xcaf359...522fd6`; bsc `0xe4b996...0199a3` | ⚠️ Unaudited |
| BunnyLauncher | unknown | polygon | [`0x1c0277...9d3914`](./contracts/polygon-137/0x1c02773f409f260f5774c32bc77a05b8c19d3914/) | ⚠️ Unaudited |
| BunnyMinterMigrator | periphery | bsc | [`0x46057f...269227`](./contracts/bsc-56/0x46057f91e88cbf91546e791a8c95753542269227/) | ⚠️ Unaudited |
| BunnyMinterV2 | unknown | polygon | 18 deployments: bsc `0x6298e5...c436b4`; bsc `0x75940c...099741`; bsc `0x773bca...524be0`; bsc `0x7ed1b8...85c5d2`; bsc `0x819eea...219b5d`; bsc `0x8cb887...d65219`; bsc `0xaabe04...7860ba`; bsc `0xae6fa6...a6966e`; bsc `0xaebbfa...73dffb`; bsc `0xc31b71...e35fc0`; bsc `0xc39c78...72d15d`; bsc `0xedfb16...68f3f5`; polygon [`0x5434b6...d1a932`](./contracts/polygon-137/0x5434b612db0578098aa644f8c67da020f2d1a932/); polygon `0x76741b...2b0929`; polygon `0xaed22c...8daf37`; polygon `0xb45bbe...3f624a`; polygon `0xb6d34b...120a4c`; polygon `0xd908f0...d2c321` | ⚠️ Unaudited |
| BunnyOracle | operational_periphery | bsc | [`0x4e92ab...5d35d1`](./contracts/bsc-56/0x4e92ab57653998a33d59ede08d3f4423305d35d1/) | ⚠️ Unaudited |
| CakeVault | core_logic | bsc | [`0x9a8235...419e8d`](./contracts/bsc-56/0x9a8235ada127f6b5532387a029235640d1419e8d/) | ⚠️ Unaudited |
| CompensationTreasury | operational_periphery | bsc | 5 deployments: bsc [`0x098909...94c0ee`](./contracts/bsc-56/0x0989091f27708bc92ea4ca60073e03592b94c0ee/); bsc `0x10fd9e...19cec4`; bsc `0x92e64e...9c5421`; bsc `0xcb1fe3...07fcb1`; bsc `0xccc434...05c77c` | ⚠️ Unaudited |
| Dashboard | unknown | polygon | 7 deployments: bsc `0xce8b1a...b04161`; bsc `0xe375a1...45ac2e`; polygon [`0x4a6fb9...7156be`](./contracts/polygon-137/0x4a6fb99ebbcd477149586e06c59ff4e06e7156be/); polygon `0x712f26...a197ab`; polygon `0x7f9573...786537`; polygon `0xd4d995...9f83b2`; polygon `0xfa71fd...f93c02` | ⚠️ Unaudited |
| DashboardBSC | unknown | bsc | 17 deployments: bsc [`0x21200d...af567d`](./contracts/bsc-56/0x21200d3eca172a99cd91460fec5570bc8baf567d/); bsc `0x41cbb9...c549fe`; bsc `0x59a5f2...8ce8d3`; bsc `0x83104d...7b8f06`; bsc `0x8b5653...f55ba5`; bsc `0xb10bfe...da0d48`; bsc `0xb3c96d...31f5f4`; bsc `0xc0393c...801970`; bsc `0xc05d56...07ceba`; bsc `0xcf4dbb...0741a3`; bsc `0xd43202...37e286`; bsc `0xd925cc...9c0f55`; bsc `0xef802a...77d949`; bsc `0xf2225f...8d0116`; bsc `0xf9696d...e1f761`; bsc `0xfa1978...e1cb11`; bsc `0xfb4a92...0ff99b` | ⚠️ Unaudited |
| FlipVaultV2 | core_logic | bsc | 3 deployments: bsc [`0x1a5c2a...c7d04c`](./contracts/bsc-56/0x1a5c2a30861ef2da013d8244066dbc4bbdc7d04c/); bsc `0x1b0888...3438a6`; bsc `0xc5bcab...73bec0` | ⚠️ Unaudited |
| MigrationRewards | operational_periphery | bsc | [`0x033361...306c83`](./contracts/bsc-56/0x033361ddf05d969ba77bccfc51f49c9ce3306c83/) | ⚠️ Unaudited |
| MigratorV2 | periphery | bsc | [`0x610105...2135fc`](./contracts/bsc-56/0x61010546e65c8fab0202bc13bb51491ad62135fc/) | ⚠️ Unaudited |
| MoundOfferingBSC | unknown | bsc | [`0xb71fa5...504d5a`](./contracts/bsc-56/0xb71fa585bb99218bcedbd265418e92a3a2504d5a/) | ⚠️ Unaudited |
| PBunnyToken | token | bsc | 2 deployments: bsc [`0x26cc5e...15a343`](./contracts/bsc-56/0x26cc5efee2e216170b7aae8b7b4aedf87015a343/); bsc `0x77d2d3...1583a7` | ⚠️ Unaudited |
| PolygonBunnyDistributor | operational_periphery | polygon | 3 deployments: polygon [`0x007abc...fccdca`](./contracts/polygon-137/0x007abc5c40f2636564da2b3b9c05117d5cfccdca/); polygon `0x172b55...66566e`; polygon `0xe49dbc...b56920` | ⚠️ Unaudited |
| PotBunnyLover | unknown | bsc | 7 deployments: bsc [`0x0e699c...b8da17`](./contracts/bsc-56/0x0e699cd2975103c32427fed6817e5b4f2bb8da17/); bsc `0x2d042e...d1563c`; bsc `0x4e8873...7a8d3e`; bsc `0x60d8a5...bc243b`; bsc `0x7cc54d...4b04e7`; bsc `0x8810b0...46c1c7`; bsc `0xe0d17b...2b2ca4` | ⚠️ Unaudited |
| PotCakeLover | unknown | bsc | 6 deployments: bsc [`0x285037...a3b641`](./contracts/bsc-56/0x285037c97a89ce777be0c6f416f9701afaa3b641/); bsc `0x327978...1ea7e6`; bsc `0x5a4846...0eb6e9`; bsc `0x6eac3e...c44fc9`; bsc `0x912d2d...bc573d`; bsc `0xaf938a...efbf94` | ⚠️ Unaudited |
| PresalePancakeBunny | unknown | bsc | [`0x641414...42bf07`](./contracts/bsc-56/0x641414e2a04c8f8ebbf49ed47cc87dccba42bf07/) | ⚠️ Unaudited |
| PriceCalculator | operational_periphery | polygon | 7 deployments: polygon [`0x16cd6f...d2a58d`](./contracts/polygon-137/0x16cd6f6062c9357739627a16a593580437d2a58d/); polygon `0x64be4d...fdefa0`; polygon `0x6ae88d...cd4094`; polygon `0xb57f41...f7c4f8`; polygon `0xc48bec...d502a7`; polygon `0xcbcc18...f3c126`; polygon `0xe3b11c...d38021` | ⚠️ Unaudited |
| PriceCalculatorBSC | operational_periphery | bsc | 10 deployments: bsc [`0x16d973...1472cc`](./contracts/bsc-56/0x16d973c8c838e772a3f4fbdeb356a24e3f1472cc/); bsc `0x2ed1f2...c532b3`; bsc `0x2f4b82...3ca2dc`; bsc `0x37651c...46b80a`; bsc `0x40dc1a...dfaffa`; bsc `0x433c8e...87adc2`; bsc `0x7c4c4b...0e121e`; bsc `0xc061d1...dd15a6`; bsc `0xf5bf8a...d4fb7d`; bsc `0xfa64d8...80be7c` | ⚠️ Unaudited |
| PriceCalculatorBSCV1 | operational_periphery | bsc | 2 deployments: bsc [`0x542c06...54ddb0`](./contracts/bsc-56/0x542c06a5dc3f27e0fbdc9fb7bc6748f26d54ddb0/); bsc `0x81ef2b...eebba0` | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | 7 deployments: bsc [`0x2ccd44...7c7bc7`](./contracts/bsc-56/0x2ccd4485ee3365ae77a4d6a1a8b47ca0287c7bc7/); bsc `0x93c517...58aa5d`; bsc `0x9cee40...b265a8`; bsc `0xaa599b...d33d2b`; polygon `0x4b0844...d6f38f`; polygon `0x4bb798...c3f657`; polygon `0xd7140e...6b04cf` | ⚠️ Unaudited |
| QMultiplexer | unknown | bsc | [`0xdbd49a...ee9e5b`](./contracts/bsc-56/0xdbd49a14a53617c3c501711221e9d4a3f9ee9e5b/) | ⚠️ Unaudited |
| safeSwapBNB | unknown | bsc | [`0x8d36cb...9176b0`](./contracts/bsc-56/0x8d36cb4c0aea63ca095d9e26aefb360d279176b0/) | ⚠️ Unaudited |
| SafeVenus | unknown | bsc | 2 deployments: bsc [`0x5a573e...3d8dbb`](./contracts/bsc-56/0x5a573e0cab0b5a570f1b9afeb7efcfb85c3d8dbb/); bsc `0x64a9a6...5d1b80` | ⚠️ Unaudited |
| StrategyHelperV1 | core_logic | bsc | 5 deployments: bsc [`0x154d80...520ece`](./contracts/bsc-56/0x154d803c328ffd70ef5df52cb027d82821520ece/); bsc `0x6d3a75...17be49`; bsc `0xa84c09...97a1a0`; bsc `0xc1d2d7...466d29`; bsc `0xf285aa...987307` | ⚠️ Unaudited |
| StrategyVBNB | core_logic | bsc | 2 deployments: bsc [`0x124080...073d25`](./contracts/bsc-56/0x124080b98e6433a45477bb4620da4433df073d25/); bsc `0xb980a3...b89be2` | ⚠️ Unaudited |
| TestFlipVaultV3 | core_logic | bsc | 3 deployments: bsc [`0x741e8a...f1e764`](./contracts/bsc-56/0x741e8aa7266cd9df348f6a37466cf7c4e8f1e764/); bsc `0x9059a4...428ddb`; bsc `0xffa180...ed0c2f` | ⚠️ Unaudited |
| Timelock | governance | bsc | 2 deployments: bsc [`0x85c916...414cc3`](./contracts/bsc-56/0x85c9162a51e03078bdcd08d4232bab13ed414cc3/); polygon `0xf36ec1...653f8f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | 2 deployments: polygon [`0x4c1d6a...4c4cac`](./contracts/polygon-137/0x4c1d6a98661477ac1c3a9718531053e62c4c4cac/); polygon `0x9fae94...6c99ca` | ⚠️ Unaudited |
| TripleSlopeModel | unknown | bsc | 3 deployments: bsc [`0xb824c6...6c24c9`](./contracts/bsc-56/0xb824c640dd8aade41b137841575fdf3c496c24c9/); bsc `0xd31f93...4b31b7`; bsc `0xe8188e...d4345e` | ⚠️ Unaudited |
| VaultBNBTester | core_logic | bsc | 2 deployments: bsc [`0x31d369...defe97`](./contracts/bsc-56/0x31d36988aa5f0221b5c70b3fb786d4695ddefe97/); bsc `0x4daaf1...3816b7` | ⚠️ Unaudited |
| VaultBunnyBNB | core_logic | bsc | 11 deployments: bsc [`0x017fd8...638c5a`](./contracts/bsc-56/0x017fd859191e631aae83627b203ef82a6b638c5a/); bsc `0x0cb448...eae378`; bsc `0x3c13ab...b27979`; bsc `0x4ef98a...423e8a`; bsc `0x4fba55...ee6157`; bsc `0x7188b1...efb0f3`; bsc `0xa6c29a...783622`; bsc `0xbecce1...449269`; bsc `0xc9c251...e8e7d9`; bsc `0xd7bdba...7f4f35`; bsc `0xf1b4ea...e59dad` | ⚠️ Unaudited |
| VaultCompensation | core_logic | bsc | 4 deployments: bsc [`0x1e8d70...09d72c`](./contracts/bsc-56/0x1e8d700c6ae1c46038cca53d789093b18c09d72c/); bsc `0x2ff46c...9aff33`; bsc `0x41fa6d...9550ca`; bsc `0x964de6...daa730` | ⚠️ Unaudited |
| VaultFlipToCakeLegacy | core_logic | bsc | 12 deployments: bsc [`0x15241e...6506bf`](./contracts/bsc-56/0x15241e51d15f802bca1617354b5fdc67136506bf/); bsc `0x1adc1b...60ec05`; bsc `0x3f1393...090bd5`; bsc `0x41df17...fccc4f`; bsc `0x63048d...763a14`; bsc `0x7c0c81...4bfd38`; bsc `0x7e3c99...e6fbba`; bsc `0x866fd0...e199d4`; bsc `0x92a0f7...a4975c`; bsc `0xa5b8cd...538ff2`; bsc `0xcbd447...ad0058`; bsc `0xe07bda...ebd0cc` | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | core_logic | bsc | 11 deployments: bsc [`0x0137d8...7a792e`](./contracts/bsc-56/0x0137d886e832842a3b11c568d5992ae73f7a792e/); bsc `0x06a980...b35c85`; bsc `0x138179...118210`; bsc `0x1b6e3d...507b99`; bsc `0x283a84...552254`; bsc `0x7eaaea...92e98a`; bsc `0x8816f0...1bd56f`; bsc `0xa59efe...5a43e7`; bsc `0xc0314b...ee5ef3`; bsc `0xc1aae5...656ee6`; bsc `0xe02bcf...c26032` | ⚠️ Unaudited |
| VaultFlipToQBT | core_logic | bsc | [`0x770252...ac6cec`](./contracts/bsc-56/0x7702527365bd09c00acfd5db2a77ca8cf6ac6cec/) | ⚠️ Unaudited |
| VaultQBTBNB | core_logic | bsc | 4 deployments: bsc [`0x3e81d3...803f45`](./contracts/bsc-56/0x3e81d35fbb460bc499af2c755415785aaa803f45/); bsc `0x71f118...6549b0`; bsc `0xd1ad19...9b6c39`; bsc `0xe8174e...06049d` | ⚠️ Unaudited |
| VaultQuickBunnyETH | core_logic | polygon | 6 deployments: polygon [`0x606ee2...fa382e`](./contracts/polygon-137/0x606ee24b29d4f8785efd84025a487257fdfa382e/); polygon `0x71c0bd...86f6e8`; polygon `0x7a526d...22501d`; polygon `0x9b9c27...2f2bcf`; polygon `0xa91777...672437`; polygon `0xe9271b...c0e0ea` | ⚠️ Unaudited |
| VaultQuickBunnyLP | core_logic | polygon | 6 deployments: polygon [`0x14ae40...cc5f9f`](./contracts/polygon-137/0x14ae4034168bd7ad67a3f9de855d6a491bcc5f9f/); polygon `0x42cd0d...77bef7`; polygon `0x60f4ee...dac60d`; polygon `0x6b86ab...df3513`; polygon `0x70907d...9cb28c`; polygon `0xcdd6d8...d68ff8` | ⚠️ Unaudited |
| VaultRelayer | core_logic | bsc | 10 deployments: bsc [`0x31e541...d92546`](./contracts/bsc-56/0x31e5417f609fb4a60b2a4ce53833623657d92546/); bsc `0x34d3ff...321c03`; bsc `0x399621...f625eb`; bsc `0x56d921...dae9ee`; bsc `0x68243c...8112d2`; bsc `0x74a96e...ae8451`; bsc `0x85122f...d8b1c4`; bsc `0xd63cb8...9ce1a9`; bsc `0xe326b1...fb5b77`; bsc `0xf77126...cc5e01` | ⚠️ Unaudited |
| VaultRelayInternal | core_logic | bsc | 6 deployments: bsc [`0x067ed1...0f33d5`](./contracts/bsc-56/0x067ed15bac752698dd525452cd493079220f33d5/); bsc `0x88d75e...8f1b8f`; bsc `0xa73f13...f00189`; bsc `0xb37076...ca60aa`; bsc `0xc12fca...12e121`; bsc `0xd98b6c...fb8aa9` | ⚠️ Unaudited |
| VaultSushiBunnyLP | core_logic | polygon | [`0xe167cf...53690e`](./contracts/polygon-137/0xe167cf12a60f606c4c83bc34f09c4f9d9453690e/) | ⚠️ Unaudited |
| VaultVenusBridge | operational_periphery | bsc | 2 deployments: bsc [`0x50f039...6523ee`](./contracts/bsc-56/0x50f039406fa66821d84f1ecc80ca18e6db6523ee/); bsc `0x8123ca...8f0da5` | ⚠️ Unaudited |
| VaultVenusBridgeOwner | operational_periphery | bsc | 3 deployments: bsc [`0x07d97a...c90546`](./contracts/bsc-56/0x07d97a7788d33a21af269d5bdb8b7474cdc90546/); bsc `0x500f1f...e8ea71`; bsc `0x5a4ed6...136701` | ⚠️ Unaudited |
| Zap | adapter | bsc | 2 deployments: bsc [`0x0456c6...8b0d77`](./contracts/bsc-56/0x0456c6a001bd46364bbe4387b5129791b18b0d77/); bsc `0x3d2046...54892d` | ⚠️ Unaudited |
| ZapBSC | adapter | bsc | 12 deployments: bsc [`0x281313...8ae1be`](./contracts/bsc-56/0x2813134452c937a2018e4c7666b351e9708ae1be/); bsc `0x2e113a...d5bba0`; bsc `0x341451...1693ba`; bsc `0x634456...3dd26b`; bsc `0x97964e...238606`; bsc `0x9ef161...773734`; bsc `0xacd576...878c16`; bsc `0xcbd5cf...967cf6`; bsc `0xcbec8e...3574b1`; bsc `0xdc2bbb...586a0c`; bsc `0xdc6fc3...d29de0`; bsc `0xf4c17e...7913d5` | ⚠️ Unaudited |
| ZapPCS | adapter | bsc | 4 deployments: bsc [`0x1d9aa7...b3cfb4`](./contracts/bsc-56/0x1d9aa7382840d36a9baf3ecf3986530cf4b3cfb4/); bsc `0xa17917...466199`; bsc `0xb6b01e...db3a90`; bsc `0xe6d6c4...59d2bb` | ⚠️ Unaudited |
| ZapPolygon | adapter | polygon | 8 deployments: polygon [`0x029aed...5afc15`](./contracts/polygon-137/0x029aedb60b27e11d7d13a6faa464a1b1ac5afc15/); polygon `0x208bcc...46fac2`; polygon `0x663462...1b84f6`; polygon `0x6da0f6...86a81d`; polygon `0x733b7e...c18285`; polygon `0xed1443...a1559a`; polygon `0xf0b827...8ca4ff`; polygon `0xf54407...eb7838` | ⚠️ Unaudited |
| ZapSushi | adapter | polygon | 2 deployments: polygon [`0x1ce306...50805e`](./contracts/polygon-137/0x1ce30674c9eed3b346a4412bbd2452f29e50805e/); polygon `0x93bce7...4867b7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x028c5d...12a9b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0f7483...54411c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x271cd0...3497aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x47026f...ca1711` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x48e198...216d33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x64f1fe...f9c92b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6ded1d...d4a07e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7aaba3...74759b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8a9729...631144` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9d2fa7...9ae849` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa00c8b...04ab99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa0744b...561f87` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa17c54...aec210` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xad6908...d83e90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xafa322...e48a20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc04fc3...db8ed2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcb1e37...029341` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xce157b...f85413` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xce1cf4...4f9713` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xddc9b8...ab801f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdefd3e...b95da6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe0b615...1ef659` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xec8563...5bc7f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf39f63...678c67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf7c88c...718cc8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfafd83...56b65d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x464df3...4300a2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x80ffc7...be9f5e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [[HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf](https://github.com/PancakeBunny-finance/Bunny/blob/main/audits/%5BHAECHI%20AUDIT%5D%20PancakeBunny%20Smart%20Contract%20Audit%20Report%20ver%202.0.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 70 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x28ecb0...292276`](./contracts/bsc-56/0x28ecb0a0e1f64a622954cd3f2dd2f8e128292276/) | BunnyPoolV2 | core_logic | $123,427.28 | Verified native implementation with $123,427.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0010c4...2f86e3`](./contracts/polygon-137/0x0010c4377f7c45c0f2a12678fc9d72e8df2f86e3/) | VaultBunnyMaximizer | core_logic | $32,761.63 | Verified native implementation with $32,761.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0f39e1...c13d20`](./contracts/polygon-137/0x0f39e117635d5983b9059e9d665f03fa6ac13d20/) | VaultMND | core_logic | $491.63 | Verified native implementation with $491.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xaef1eb...bbbbaf`](./contracts/bsc-56/0xaef1ebb01f67e290e3b2b1f49e71654711bbbbaf/) | VaultBunny | core_logic | $187.88 | Verified native implementation with $187.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x217286...3171d2`](./contracts/polygon-137/0x217286293e4eade2f1962d17825bec81093171d2/) | VaultQuickFlipToFlip | core_logic | $143.13 | Verified native implementation with $143.13 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x23b68a...8f3891`](./contracts/bsc-56/0x23b68a3c008512a849981b6e69bbac16048f3891/) | CakeFlipVault | core_logic | $134.40 | Verified native implementation with $134.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2c2084...1fa794`](./contracts/bsc-56/0x2c2084ad8e2f811597eda99baa403481351fa794/) | VaultBunnyBNBLegacy | core_logic | $96.53 | Verified native implementation with $96.53 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18a9ee...5e9451`](./contracts/bsc-56/0x18a9eee6dc4fb50f86c4abb67bd5f23a3c5e9451/) | BankBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x08bfd4...e5a249`](./contracts/bsc-56/0x08bfd44ffdfb32ac8f5efd790609e0fad6e5a249/) | BankBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xeb9fc5...28cb08`](./contracts/bsc-56/0xeb9fc522da9e2976cd112f36c6c9f2ee4d28cb08/) | BankConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4bfbde...797174`](./contracts/bsc-56/0x4bfbde87cbc22272b481060144908bc4a9797174/) | BulkSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1d5e16...3379f0`](./contracts/polygon-137/0x1d5e16993a11596f363b09e2637dac42073379f0/) | BunnyChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x46057f...269227`](./contracts/bsc-56/0x46057f91e88cbf91546e791a8c95753542269227/) | BunnyMinterMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5434b6...d1a932`](./contracts/polygon-137/0x5434b612db0578098aa644f8c67da020f2d1a932/) | BunnyMinterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4e92ab...5d35d1`](./contracts/bsc-56/0x4e92ab57653998a33d59ede08d3f4423305d35d1/) | BunnyOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9a8235...419e8d`](./contracts/bsc-56/0x9a8235ada127f6b5532387a029235640d1419e8d/) | CakeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4a6fb9...7156be`](./contracts/polygon-137/0x4a6fb99ebbcd477149586e06c59ff4e06e7156be/) | Dashboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1a5c2a...c7d04c`](./contracts/bsc-56/0x1a5c2a30861ef2da013d8244066dbc4bbdc7d04c/) | FlipVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x033361...306c83`](./contracts/bsc-56/0x033361ddf05d969ba77bccfc51f49c9ce3306c83/) | MigrationRewards | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x610105...2135fc`](./contracts/bsc-56/0x61010546e65c8fab0202bc13bb51491ad62135fc/) | MigratorV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x007abc...fccdca`](./contracts/polygon-137/0x007abc5c40f2636564da2b3b9c05117d5cfccdca/) | PolygonBunnyDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e699c...b8da17`](./contracts/bsc-56/0x0e699cd2975103c32427fed6817e5b4f2bb8da17/) | PotBunnyLover | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x285037...a3b641`](./contracts/bsc-56/0x285037c97a89ce777be0c6f416f9701afaa3b641/) | PotCakeLover | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x641414...42bf07`](./contracts/bsc-56/0x641414e2a04c8f8ebbf49ed47cc87dccba42bf07/) | PresalePancakeBunny | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x16cd6f...d2a58d`](./contracts/polygon-137/0x16cd6f6062c9357739627a16a593580437d2a58d/) | PriceCalculator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x16d973...1472cc`](./contracts/bsc-56/0x16d973c8c838e772a3f4fbdeb356a24e3f1472cc/) | PriceCalculatorBSC | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdbd49a...ee9e5b`](./contracts/bsc-56/0xdbd49a14a53617c3c501711221e9d4a3f9ee9e5b/) | QMultiplexer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8d36cb...9176b0`](./contracts/bsc-56/0x8d36cb4c0aea63ca095d9e26aefb360d279176b0/) | safeSwapBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x154d80...520ece`](./contracts/bsc-56/0x154d803c328ffd70ef5df52cb027d82821520ece/) | StrategyHelperV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x124080...073d25`](./contracts/bsc-56/0x124080b98e6433a45477bb4620da4433df073d25/) | StrategyVBNB | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x741e8a...f1e764`](./contracts/bsc-56/0x741e8aa7266cd9df348f6a37466cf7c4e8f1e764/) | TestFlipVaultV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x85c916...414cc3`](./contracts/bsc-56/0x85c9162a51e03078bdcd08d4232bab13ed414cc3/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb824c6...6c24c9`](./contracts/bsc-56/0xb824c640dd8aade41b137841575fdf3c496c24c9/) | TripleSlopeModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31d369...defe97`](./contracts/bsc-56/0x31d36988aa5f0221b5c70b3fb786d4695ddefe97/) | VaultBNBTester | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x017fd8...638c5a`](./contracts/bsc-56/0x017fd859191e631aae83627b203ef82a6b638c5a/) | VaultBunnyBNB | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e8d70...09d72c`](./contracts/bsc-56/0x1e8d700c6ae1c46038cca53d789093b18c09d72c/) | VaultCompensation | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15241e...6506bf`](./contracts/bsc-56/0x15241e51d15f802bca1617354b5fdc67136506bf/) | VaultFlipToCakeLegacy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x770252...ac6cec`](./contracts/bsc-56/0x7702527365bd09c00acfd5db2a77ca8cf6ac6cec/) | VaultFlipToQBT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e81d3...803f45`](./contracts/bsc-56/0x3e81d35fbb460bc499af2c755415785aaa803f45/) | VaultQBTBNB | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x606ee2...fa382e`](./contracts/polygon-137/0x606ee24b29d4f8785efd84025a487257fdfa382e/) | VaultQuickBunnyETH | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x14ae40...cc5f9f`](./contracts/polygon-137/0x14ae4034168bd7ad67a3f9de855d6a491bcc5f9f/) | VaultQuickBunnyLP | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31e541...d92546`](./contracts/bsc-56/0x31e5417f609fb4a60b2a4ce53833623657d92546/) | VaultRelayer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x50f039...6523ee`](./contracts/bsc-56/0x50f039406fa66821d84f1ecc80ca18e6db6523ee/) | VaultVenusBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x07d97a...c90546`](./contracts/bsc-56/0x07d97a7788d33a21af269d5bdb8b7474cdc90546/) | VaultVenusBridgeOwner | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0456c6...8b0d77`](./contracts/bsc-56/0x0456c6a001bd46364bbe4387b5129791b18b0d77/) | Zap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x281313...8ae1be`](./contracts/bsc-56/0x2813134452c937a2018e4c7666b351e9708ae1be/) | ZapBSC | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x029aed...5afc15`](./contracts/polygon-137/0x029aedb60b27e11d7d13a6faa464a1b1ac5afc15/) | ZapPolygon | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 30 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=70

Fork inheritance lineage and inherited audits are included when available.
