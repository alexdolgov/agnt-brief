# Agentic Audit Brief: Bunny

## Project Overview

- Project: Bunny (`bunny`)
- Website: [https://pancakebunny.finance/](https://pancakebunny.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:38.345Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: bsc
- Contract surface: 142 unique implementations (383 raw deployments)
- DeFi Llama TVL: $2,923,535.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 93 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 14 common project-authored base contract(s) (upgradeabilityproxy, proxy, vaultcontroller). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 461; live-surface contracts included: 366 (327 live, 39 unknown).
- Excluded by liveness: 95 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/109 (6.4%)
- Deployed-live implementations: 109 of 142 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/109
- Verified + Unaudited implementations: 102
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 142
- Raw deployments: 383
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 7 | 6.4% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BunnyPool | unknown | bsc | n/a | 2 deployments: bsc [`0xb24633...bc1f44`](./contracts/bsc-56/0xb24633bacc60bb1f907633c4c507f6e6d5bc1f44/); bsc `0xcadc8c...d7889d` | ✅ Audited |
| BunnyToken | token | bsc | n/a | [`0xc9849e...a11a51`](./contracts/bsc-56/0xc9849e6fdb743d08faee3e34dd2d1bc69ea11a51/) | ✅ Audited |
| VaultCakeToCake | core_logic | bsc | n/a | [`0x537a7c...9e354a`](./contracts/bsc-56/0x537a7c41f3dff2dcb9018cec636b42069d9e354a/) | ✅ Audited |
| VaultCakeToCake | core_logic | bsc | n/a | [`0xedfcb7...da28ed`](./contracts/bsc-56/0xedfcb78e73f7ba6ad2d829bf5d462a0924da28ed/) | ✅ Audited |
| VaultFlipToCake | core_logic | bsc | n/a | 12 deployments: bsc [`0x203ee2...f92cb1`](./contracts/bsc-56/0x203ee29ba85bbdfa23bfae5d77620aefdaf92cb1/); bsc `0x74fdc2...3416dd`; bsc `0x7d52a1...11a921`; bsc `0x7f0320...3e2344`; bsc `0x81fa6f...4f9551`; bsc `0xac2092...24eb39`; bsc `0xac7d40...8403fa`; bsc `0xbdd478...0cd702`; bsc `0xc1d9ea...306f77`; bsc `0xd22204...7bb0ad`; bsc `0xf92f12...2c61d7`; bsc `0xfeed0b...a11aac` | ✅ Audited |
| VaultFlipToFlip | core_logic | bsc | n/a | [`0x0d17e7...eb8eaa`](./contracts/bsc-56/0x0d17e7b77c678c79c3ab5176e164ff0bcceb8eaa/) | ✅ Audited |
| VaultFlipToFlip | core_logic | bsc | n/a | 6 deployments: bsc [`0x285f79...bf1f1f`](./contracts/bsc-56/0x285f793ce97079d4a5712e616afbbb971dbf1f1f/); bsc `0x633e53...71e77b`; bsc `0xa599d6...af00aa`; bsc `0xc341c6...b22ff6`; bsc `0xe0aca3...71ca62`; bsc `0xfdb7d4...70286c` | ✅ Audited |

### ⚠️ Verified + Unaudited (102)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x00e682...53ca44`](./contracts/bsc-56/0x00e68201d47b2a18675b72c2ee0221ba4353ca44/); bsc `0x9578ed...3d9e97` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | 25 deployments: bsc [`0x16b7ab...270e1a`](./contracts/bsc-56/0x16b7ab1a41632e2ae4aa7ee7c56c8c379f270e1a/); bsc `0x1a3270...f14675`; bsc `0x231aef...b84d4f`; bsc `0x273db5...1295c8`; bsc `0x3866cd...04f1d0`; bsc `0x4dbd3f...e46f69`; bsc `0x5b89fb...efb0db`; bsc `0x5dabd9...42ac24`; bsc `0x5fb9ab...048e8d`; bsc `0x640aab...49b87e`; bsc `0x7347d8...df8717`; bsc `0x77f70c...9ab4b5`; bsc `0x7f4196...ce89a8`; bsc `0x95733e...f98e61`; bsc `0xa6340d...f8e860`; bsc `0xb71b23...58e764`; bsc `0xbd574b...d42c24`; bsc `0xbeddd9...6f750a`; bsc `0xc30e44...8f567a`; bsc `0xd5f708...b12330`; bsc `0xe34c8e...30ddde`; bsc `0xe5f382...ddef0d`; bsc `0xe977b0...9ddbf8`; bsc `0xf0a227...2b8e7c`; bsc `0xfad04f...8c890a` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x227858...bef4a1`](./contracts/bsc-56/0x2278584dda0b2b937db1b2b71044e6b02bbef4a1/); bsc `0xa17c54...aec210` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x443e8a...1fa1de`](./contracts/bsc-56/0x443e8ad4652ca341ce9027506fdc45b1951fa1de/); bsc `0x64f1fe...f9c92b` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x6ded1d...d4a07e`](./contracts/bsc-56/0x6ded1db18e1c634ba231d3254e3a3ab012d4a07e/); bsc `0xf84e38...a619ab` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | 3 deployments: bsc [`0xa9b005...c778fc`](./contracts/bsc-56/0xa9b005d891414e0d6e0353490e099d0ca4c778fc/); bsc `0xcb1e37...029341`; bsc `0xd60196...348183` | ⚠️ Unaudited |
| BankBNB | unknown | bsc | n/a | 2 deployments: bsc [`0x18a9ee...5e9451`](./contracts/bsc-56/0x18a9eee6dc4fb50f86c4abb67bd5f23a3c5e9451/); bsc `0x83adb2...e4f738` | ⚠️ Unaudited |
| BankBNB | unknown | bsc | n/a | 2 deployments: bsc [`0x4e4ded...fe3f80`](./contracts/bsc-56/0x4e4dedb46cf681ec9e3a24582981845760fe3f80/); bsc `0xaf8980...0b2036` | ⚠️ Unaudited |
| BankBNB | unknown | bsc | n/a | 2 deployments: bsc [`0x926940...2dbbb8`](./contracts/bsc-56/0x926940fa307562ac71bb401525e1bba6e32dbbb8/); bsc `0xb28aa3...2d761b` | ⚠️ Unaudited |
| BankBridge | unknown | bsc | n/a | 2 deployments: bsc [`0x08bfd4...e5a249`](./contracts/bsc-56/0x08bfd44ffdfb32ac8f5efd790609e0fad6e5a249/); bsc `0xcbaea5...9c5963` | ⚠️ Unaudited |
| BankBridge | unknown | bsc | n/a | [`0xd6d3fd...5bbdc1`](./contracts/bsc-56/0xd6d3fd432228911daaccb4c5be8c6efaf85bbdc1/) | ⚠️ Unaudited |
| BankConfig | unknown | bsc | n/a | [`0xeb9fc5...28cb08`](./contracts/bsc-56/0xeb9fc522da9e2976cd112f36c6c9f2ee4d28cb08/) | ⚠️ Unaudited |
| BunnyBNBPool | unknown | bsc | n/a | [`0xc80ea5...d66e0d`](./contracts/bsc-56/0xc80ea568010bca1ad659d1937e17834972d66e0d/) | ⚠️ Unaudited |
| BunnyChef | unknown | bsc | n/a | 2 deployments: bsc [`0x40e318...4d04ce`](./contracts/bsc-56/0x40e31876c4322bd033bab028474665b12c4d04ce/); bsc `0xf3976c...87f3f8` | ⚠️ Unaudited |
| BunnyChef | unknown | bsc | n/a | [`0x502230...1e9247`](./contracts/bsc-56/0x5022301097b896a49de6c38f825b8c31d11e9247/) | ⚠️ Unaudited |
| BunnyFeeBox | unknown | bsc | n/a | [`0x3749f6...1894bb`](./contracts/bsc-56/0x3749f69b2d99e5586d95d95b6f9b5252c71894bb/) | ⚠️ Unaudited |
| BunnyMinterMigrator | unknown | bsc | n/a | [`0x46057f...269227`](./contracts/bsc-56/0x46057f91e88cbf91546e791a8c95753542269227/) | ⚠️ Unaudited |
| BunnyMinterV2 | unknown | bsc | n/a | 12 deployments: bsc [`0x56eb09...26c7b4`](./contracts/bsc-56/0x56eb09a237dae7aa6b319895d79b7f558326c7b4/); bsc `0x6298e5...c436b4`; bsc `0x75940c...099741`; bsc `0x773bca...524be0`; bsc `0x7ed1b8...85c5d2`; bsc `0x819eea...219b5d`; bsc `0xaabe04...7860ba`; bsc `0xae6fa6...a6966e`; bsc `0xaebbfa...73dffb`; bsc `0xc31b71...e35fc0`; bsc `0xc39c78...72d15d`; bsc `0xedfb16...68f3f5` | ⚠️ Unaudited |
| BunnyMinterV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x8cb887...d65219`](./contracts/bsc-56/0x8cb88701790f650f273c8bb2cc4c5f439cd65219/); bsc `0x919b56...f8aa02` | ⚠️ Unaudited |
| BunnyPoolV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x4fd014...3e014d`](./contracts/bsc-56/0x4fd0143a3da1e4ba762d42ff53be5fab633e014d/); bsc `0xfd25b3...0277b9` | ⚠️ Unaudited |
| CakeFlipVault | core_logic | bsc | n/a | 7 deployments: bsc [`0x23b68a...8f3891`](./contracts/bsc-56/0x23b68a3c008512a849981b6e69bbac16048f3891/); bsc `0x3649b6...2ffa00`; bsc `0x569b83...09d5ab`; bsc `0x62f2d4...b26609`; bsc `0x916acb...cbfbf0`; bsc `0xa3bff2...7a52b1`; bsc `0xdc6e9d...989bf8` | ⚠️ Unaudited |
| CompensationTreasury | unknown | bsc | n/a | 2 deployments: bsc [`0x098909...94c0ee`](./contracts/bsc-56/0x0989091f27708bc92ea4ca60073e03592b94c0ee/); bsc `0x92e64e...9c5421` | ⚠️ Unaudited |
| CompensationTreasury | unknown | bsc | n/a | [`0xccc434...05c77c`](./contracts/bsc-56/0xccc434698193f6d9f1125c8eedd7edd98805c77c/) | ⚠️ Unaudited |
| ComptrollerTester | unknown | bsc | n/a | [`0x145ee0...ad6a2c`](./contracts/bsc-56/0x145ee0eb839b38e979ec9e0b4929b5469dad6a2c/) | ⚠️ Unaudited |
| Dashboard | unknown | bsc | n/a | 2 deployments: bsc [`0xce8b1a...b04161`](./contracts/bsc-56/0xce8b1aed01c0720d7e5805e16fe08c9946b04161/); bsc `0xe375a1...45ac2e` | ⚠️ Unaudited |
| DashboardBSC | unknown | bsc | n/a | 2 deployments: bsc [`0x21200d...af567d`](./contracts/bsc-56/0x21200d3eca172a99cd91460fec5570bc8baf567d/); bsc `0xd43202...37e286` | ⚠️ Unaudited |
| DashboardBSC | unknown | bsc | n/a | 10 deployments: bsc [`0x41cbb9...c549fe`](./contracts/bsc-56/0x41cbb968fc4251bdf4894ec05d25aefd35c549fe/); bsc `0x59a5f2...8ce8d3`; bsc `0x83104d...7b8f06`; bsc `0x8b5653...f55ba5`; bsc `0xc0393c...801970`; bsc `0xc05d56...07ceba`; bsc `0xcf4dbb...0741a3`; bsc `0xef802a...77d949`; bsc `0xfa1978...e1cb11`; bsc `0xfb4a92...0ff99b` | ⚠️ Unaudited |
| DashboardBSC | unknown | bsc | n/a | 2 deployments: bsc [`0x8608c5...63cff3`](./contracts/bsc-56/0x8608c5032ca0d7cd42c5e973eb8f68371563cff3/); bsc `0xb3c96d...31f5f4` | ⚠️ Unaudited |
| DashboardBSC | unknown | bsc | n/a | 2 deployments: bsc [`0xb10bfe...da0d48`](./contracts/bsc-56/0xb10bfe5b40f814b4c21a0ce601005dcc1eda0d48/); bsc `0xf9696d...e1f761` | ⚠️ Unaudited |
| DashboardBSC | unknown | bsc | n/a | 2 deployments: bsc [`0xd925cc...9c0f55`](./contracts/bsc-56/0xd925ccbe59da4513ce3389b7fd6aedf0f99c0f55/); bsc `0xf2225f...8d0116` | ⚠️ Unaudited |
| FlipVaultV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x1b0888...3438a6`](./contracts/bsc-56/0x1b08884fc194ef19212253d7b12fa1a3083438a6/); bsc `0xc5bcab...73bec0` | ⚠️ Unaudited |
| MigrationRewards | operational_periphery | bsc | n/a | [`0x033361...306c83`](./contracts/bsc-56/0x033361ddf05d969ba77bccfc51f49c9ce3306c83/) | ⚠️ Unaudited |
| MoundOfferingBSC | unknown | bsc | n/a | 2 deployments: bsc [`0x36a2a6...76b1ec`](./contracts/bsc-56/0x36a2a60c6f16556f441783465f05146eda76b1ec/); bsc `0xb71fa5...504d5a` | ⚠️ Unaudited |
| MoundTokenBSC | token | bsc | n/a | [`0x4c97c9...f244fe`](./contracts/bsc-56/0x4c97c901b5147f8c1c7ce3c5cf3eb83b44f244fe/) | ⚠️ Unaudited |
| MoundTokenBSC | unknown | bsc | n/a | 2 deployments: bsc [`0x5b44f5...c83732`](./contracts/bsc-56/0x5b44f594d52efa5240f87ee2f53038b85ec83732/); bsc `0x7fc76f...c1e1bd` | ⚠️ Unaudited |
| PBunnyToken | unknown | bsc | n/a | 2 deployments: bsc [`0x26cc5e...15a343`](./contracts/bsc-56/0x26cc5efee2e216170b7aae8b7b4aedf87015a343/); bsc `0x77d2d3...1583a7` | ⚠️ Unaudited |
| PotBunnyLover | unknown | bsc | n/a | 2 deployments: bsc [`0x60d8a5...bc243b`](./contracts/bsc-56/0x60d8a581d519397e870c5376228cd7e7abbc243b/); bsc `0xe0d17b...2b2ca4` | ⚠️ Unaudited |
| PriceCalculatorBSC | unknown | bsc | n/a | 9 deployments: bsc [`0x16d973...1472cc`](./contracts/bsc-56/0x16d973c8c838e772a3f4fbdeb356a24e3f1472cc/); bsc `0x2ed1f2...c532b3`; bsc `0x2f4b82...3ca2dc`; bsc `0x37651c...46b80a`; bsc `0x40dc1a...dfaffa`; bsc `0x433c8e...87adc2`; bsc `0x7c4c4b...0e121e`; bsc `0xc061d1...dd15a6`; bsc `0xfa64d8...80be7c` | ⚠️ Unaudited |
| PriceCalculatorBSC | unknown | bsc | n/a | [`0xf5bf8a...d4fb7d`](./contracts/bsc-56/0xf5bf8a9249e3cc4cb684e3f23db9669323d4fb7d/) | ⚠️ Unaudited |
| PriceCalculatorBSCV1 | unknown | bsc | n/a | 2 deployments: bsc [`0x542c06...54ddb0`](./contracts/bsc-56/0x542c06a5dc3f27e0fbdc9fb7bc6748f26d54ddb0/); bsc `0x81ef2b...eebba0` | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | 3 deployments: bsc [`0x581968...2efea9`](./contracts/bsc-56/0x581968ffb6d614d79f3cc341be3720a9fd2efea9/); bsc `0x9cee40...b265a8`; bsc `0xaa599b...d33d2b` | ⚠️ Unaudited |
| QubitPool | unknown | bsc | n/a | [`0x33f938...eb8d05`](./contracts/bsc-56/0x33f93897e914a7482a262ef10a94319840eb8d05/) | ⚠️ Unaudited |
| SafeVenus | unknown | bsc | n/a | 7 deployments: bsc [`0x0a9cda...7784d2`](./contracts/bsc-56/0x0a9cda0c4114bd3cc6bb116b013e7778a77784d2/); bsc `0x65abd3...cd10ea`; bsc `0x8494d7...67426a`; bsc `0x87d1b1...8fba52`; bsc `0x8ddee8...adc577`; bsc `0xc260c8...25668d`; bsc `0xf8186e...d4ccf4` | ⚠️ Unaudited |
| SafeVenus | unknown | bsc | n/a | 2 deployments: bsc [`0x4aa7fa...482a71`](./contracts/bsc-56/0x4aa7fafe0991dbd30cc5023cc284eff6b6482a71/); bsc `0x5a573e...3d8dbb` | ⚠️ Unaudited |
| SafeVenus | unknown | bsc | n/a | 2 deployments: bsc [`0x64a9a6...5d1b80`](./contracts/bsc-56/0x64a9a636f7c4e04c11feeb2ad9af3243685d1b80/); bsc `0x94dbc8...ccd86b` | ⚠️ Unaudited |
| SafeVenus | unknown | bsc | n/a | 2 deployments: bsc [`0x816860...73b014`](./contracts/bsc-56/0x81686096e33c8d12eaa3876a5fd8bcd44573b014/); bsc `0xe05f8f...a39f7e` | ⚠️ Unaudited |
| StrategyBUNNY | unknown | bsc | n/a | 2 deployments: bsc [`0x119d02...8c5f09`](./contracts/bsc-56/0x119d02e4b44cace93a75002572902016488c5f09/); bsc `0xc9e63e...590184` | ⚠️ Unaudited |
| StrategyBUNNY | unknown | bsc | n/a | 2 deployments: bsc [`0x573924...4d50b7`](./contracts/bsc-56/0x5739249a2bb2c75c7a1ca834e660ddc7164d50b7/); bsc `0xac380b...6ec359` | ⚠️ Unaudited |
| StrategyQBT | unknown | bsc | n/a | 2 deployments: bsc [`0x21c9b7...80c984`](./contracts/bsc-56/0x21c9b7c5c74fde3ecf770c60d635934f9380c984/); bsc `0x5021dc...a1fc21` | ⚠️ Unaudited |
| StrategyQBT | unknown | bsc | n/a | 2 deployments: bsc [`0x3d9dc1...e57dd3`](./contracts/bsc-56/0x3d9dc12c214145a3f201ba075f083f385ce57dd3/); bsc `0xb67cc0...70f80d` | ⚠️ Unaudited |
| StrategyVBNB | unknown | bsc | n/a | 2 deployments: bsc [`0x124080...073d25`](./contracts/bsc-56/0x124080b98e6433a45477bb4620da4433df073d25/); bsc `0xb980a3...b89be2` | ⚠️ Unaudited |
| TestFlipVaultV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x9059a4...428ddb`](./contracts/bsc-56/0x9059a45bc4f5d82d0c9654e33d4e560636428ddb/); bsc `0xffa180...ed0c2f` | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0x85c916...414cc3`](./contracts/bsc-56/0x85c9162a51e03078bdcd08d4232bab13ed414cc3/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x3fb5a8...c12e7d`](./contracts/bsc-56/0x3fb5a8c998551adf47197f166c5e99b113c12e7d/); bsc `0xc0091a...a6993e` | ⚠️ Unaudited |
| TripleSlopeModel | unknown | bsc | n/a | [`0xd31f93...4b31b7`](./contracts/bsc-56/0xd31f93307a5f7c0254198f3dd81152d4a54b31b7/) | ⚠️ Unaudited |
| VaultBNBTester | unknown | bsc | n/a | 2 deployments: bsc [`0x31d369...defe97`](./contracts/bsc-56/0x31d36988aa5f0221b5c70b3fb786d4695ddefe97/); bsc `0x4daaf1...3816b7` | ⚠️ Unaudited |
| VaultBunny | unknown | bsc | n/a | 2 deployments: bsc [`0xaef1eb...bbbbaf`](./contracts/bsc-56/0xaef1ebb01f67e290e3b2b1f49e71654711bbbbaf/); bsc `0xb03758...b5d940` | ⚠️ Unaudited |
| VaultBunnyBNB | unknown | bsc | n/a | 10 deployments: bsc [`0x017fd8...638c5a`](./contracts/bsc-56/0x017fd859191e631aae83627b203ef82a6b638c5a/); bsc `0x0cb448...eae378`; bsc `0x3c13ab...b27979`; bsc `0x4ef98a...423e8a`; bsc `0x4fba55...ee6157`; bsc `0x7188b1...efb0f3`; bsc `0xbecce1...449269`; bsc `0xc9c251...e8e7d9`; bsc `0xd7bdba...7f4f35`; bsc `0xf1b4ea...e59dad` | ⚠️ Unaudited |
| VaultBunnyBNB | core_logic | bsc | n/a | [`0xa6c29a...783622`](./contracts/bsc-56/0xa6c29a422d1612293669156a34f2793526783622/) | ⚠️ Unaudited |
| VaultBunnyBNBLegacy | unknown | bsc | n/a | 2 deployments: bsc [`0x2c2084...1fa794`](./contracts/bsc-56/0x2c2084ad8e2f811597eda99baa403481351fa794/); bsc `0x69ff78...905cbc` | ⚠️ Unaudited |
| VaultBunnyBNBLegacy | unknown | bsc | n/a | [`0x5af361...c59f00`](./contracts/bsc-56/0x5af361c537c5486f3dc6fa16d599275e6ec59f00/) | ⚠️ Unaudited |
| VaultBunnyBNBTreasury | unknown | bsc | n/a | 2 deployments: bsc [`0x4fd02a...b2afd3`](./contracts/bsc-56/0x4fd02a241a0b2e69a15f73a0cbd3650ee5b2afd3/); bsc `0x77fb75...8ac14f` | ⚠️ Unaudited |
| VaultBunnyMaximizer | unknown | bsc | n/a | 2 deployments: bsc [`0x317e66...64949e`](./contracts/bsc-56/0x317e663d882223aace086778fbcdf21b6264949e/); bsc `0x87627b...002ff9` | ⚠️ Unaudited |
| VaultBunnyMaximizer | core_logic | bsc | n/a | [`0xc004a3...667329`](./contracts/bsc-56/0xc004a3b5af216e9c2c59a9ea8bc3ee07af667329/) | ⚠️ Unaudited |
| VaultCompensation | unknown | bsc | n/a | 4 deployments: bsc [`0x1e8d70...09d72c`](./contracts/bsc-56/0x1e8d700c6ae1c46038cca53d789093b18c09d72c/); bsc `0x2ff46c...9aff33`; bsc `0x41fa6d...9550ca`; bsc `0x964de6...daa730` | ⚠️ Unaudited |
| VaultFlipToCake | unknown | bsc | n/a | 12 deployments: bsc [`0x0dec5a...89ae8a`](./contracts/bsc-56/0x0dec5af8fcbb21b224797616733f93563789ae8a/); bsc `0x1afa3b...406593`; bsc `0x391e8d...ca9f1e`; bsc `0x4a1fc0...48471a`; bsc `0x4ac7d1...20c139`; bsc `0x519422...9b4534`; bsc `0x6ee46a...8a2000`; bsc `0x7078b5...669de2`; bsc `0x8a8d6b...39b7b8`; bsc `0xc555e2...db0f20`; bsc `0xdf94b7...2d4afb`; bsc `0xe84895...ef1ce6` | ⚠️ Unaudited |
| VaultFlipToCake | unknown | bsc | n/a | 3 deployments: bsc [`0x5d1dcb...c56831`](./contracts/bsc-56/0x5d1dcb4460799f5d5a40a1f4eca558ade1c56831/); bsc `0x87dfcd...85293f`; bsc `0xaba9c9...9f3aa4` | ⚠️ Unaudited |
| VaultFlipToCakeLegacy | unknown | bsc | n/a | 2 deployments: bsc [`0x15241e...6506bf`](./contracts/bsc-56/0x15241e51d15f802bca1617354b5fdc67136506bf/); bsc `0xa5b8cd...538ff2` | ⚠️ Unaudited |
| VaultFlipToCakeLegacy | unknown | bsc | n/a | 2 deployments: bsc [`0x1adc1b...60ec05`](./contracts/bsc-56/0x1adc1b51305823a8d50c6fd5493feff71260ec05/); bsc `0x7e3c99...e6fbba` | ⚠️ Unaudited |
| VaultFlipToCakeLegacy | unknown | bsc | n/a | 6 deployments: bsc [`0x3f1393...090bd5`](./contracts/bsc-56/0x3f139386406b0924ef115baff71d0d30cc090bd5/); bsc `0x41df17...fccc4f`; bsc `0x7c0c81...4bfd38`; bsc `0x92a0f7...a4975c`; bsc `0xcbd447...ad0058`; bsc `0xe07bda...ebd0cc` | ⚠️ Unaudited |
| VaultFlipToCakeLegacy | unknown | bsc | n/a | 2 deployments: bsc [`0x63048d...763a14`](./contracts/bsc-56/0x63048d3009dc2e47a31ad08e6474408a13763a14/); bsc `0x866fd0...e199d4` | ⚠️ Unaudited |
| VaultFlipToFlip | unknown | bsc | n/a | 11 deployments: bsc [`0x14cfc6...b0f57a`](./contracts/bsc-56/0x14cfc6136fc9b3cea9064315125482019ab0f57a/); bsc `0x1ec31b...cce1af`; bsc `0x44f4e4...646473`; bsc `0x4a1be0...4a8274`; bsc `0x6b3ede...34cf52`; bsc `0x829388...05528c`; bsc `0x8a1f45...0e9c13`; bsc `0xa119d2...5feb72`; bsc `0xaa972c...2e15c6`; bsc `0xcbc6f8...ccbd1e`; bsc `0xd415e6...0838ea` | ⚠️ Unaudited |
| VaultFlipToFlip | unknown | bsc | n/a | 3 deployments: bsc [`0x1d5c98...c71186`](./contracts/bsc-56/0x1d5c982bb7233d2740161e7beddcc14548c71186/); bsc `0x93546b...3df939`; bsc `0xe23969...4273dd` | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | unknown | bsc | n/a | 6 deployments: bsc [`0x0137d8...7a792e`](./contracts/bsc-56/0x0137d886e832842a3b11c568d5992ae73f7a792e/); bsc `0x138179...118210`; bsc `0x1b6e3d...507b99`; bsc `0x7eaaea...92e98a`; bsc `0xc1aae5...656ee6`; bsc `0xe02bcf...c26032` | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | unknown | bsc | n/a | 2 deployments: bsc [`0x06a980...b35c85`](./contracts/bsc-56/0x06a980c97504019770e36587d995519abeb35c85/); bsc `0xa59efe...5a43e7` | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | unknown | bsc | n/a | [`0x283a84...552254`](./contracts/bsc-56/0x283a843f428c0125be1cb910d335c1284b552254/) | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | unknown | bsc | n/a | 2 deployments: bsc [`0x8816f0...1bd56f`](./contracts/bsc-56/0x8816f093f050c1d4637d769f744960c1b41bd56f/); bsc `0xc0314b...ee5ef3` | ⚠️ Unaudited |
| VaultFlipToQBT | unknown | bsc | n/a | 2 deployments: bsc [`0xdccd72...1da62a`](./contracts/bsc-56/0xdccd72f1b56b723e53e2a3242dc9c803df1da62a/); bsc `0xe6b3fb...fa5a8f` | ⚠️ Unaudited |
| VaultFlipToQBT_Legacy | unknown | bsc | n/a | 2 deployments: bsc [`0x68917b...24ba7c`](./contracts/bsc-56/0x68917b9698b1260aff4cb02ad45f1b93c424ba7c/); bsc `0x6a028c...14bd04` | ⚠️ Unaudited |
| VaultQBTBNB | unknown | bsc | n/a | 2 deployments: bsc [`0x71f118...6549b0`](./contracts/bsc-56/0x71f118b0180f36495b1c6467ed966514516549b0/); bsc `0xd1ad19...9b6c39` | ⚠️ Unaudited |
| VaultQubit | core_logic | bsc | n/a | 8 deployments: bsc [`0x401c22...e38c9a`](./contracts/bsc-56/0x401c22395200caaae87f8ab9f9446636dde38c9a/); bsc `0x4b107b...0c5729`; bsc `0x4fc359...67b2a6`; bsc `0x53fd20...6f3403`; bsc `0x67c42b...494e46`; bsc `0xb9cf0d...0d6d74`; bsc `0xde80ce...82eea3`; bsc `0xee3ee0...2aced6` | ⚠️ Unaudited |
| VaultQubit | unknown | bsc | n/a | 2 deployments: bsc [`0x6935d1...40c327`](./contracts/bsc-56/0x6935d1d00c86fa787bf36628def4f7d9d940c327/); bsc `0x9150bd...c2fcae` | ⚠️ Unaudited |
| VaultQubitBridge | unknown | bsc | n/a | [`0x12c624...21d053`](./contracts/bsc-56/0x12c62464d8cf4a9ca6f2eead1d7954a9fc21d053/) | ⚠️ Unaudited |
| VaultQubitCompensation | unknown | bsc | n/a | [`0x71715e...9a212e`](./contracts/bsc-56/0x71715e8fe0c13c6c63c1cf39da110c4ed79a212e/) | ⚠️ Unaudited |
| VaultRelayer | unknown | bsc | n/a | 8 deployments: bsc [`0x31e541...d92546`](./contracts/bsc-56/0x31e5417f609fb4a60b2a4ce53833623657d92546/); bsc `0x399621...f625eb`; bsc `0x56d921...dae9ee`; bsc `0x74a96e...ae8451`; bsc `0x85122f...d8b1c4`; bsc `0xd63cb8...9ce1a9`; bsc `0xe326b1...fb5b77`; bsc `0xf77126...cc5e01` | ⚠️ Unaudited |
| VaultRelayer | unknown | bsc | n/a | 2 deployments: bsc [`0x34d3ff...321c03`](./contracts/bsc-56/0x34d3ff7f0476b38f990e9b8571acae60f6321c03/); bsc `0x68243c...8112d2` | ⚠️ Unaudited |
| VaultRelayInternal | unknown | bsc | n/a | 4 deployments: bsc [`0x067ed1...0f33d5`](./contracts/bsc-56/0x067ed15bac752698dd525452cd493079220f33d5/); bsc `0xa73f13...f00189`; bsc `0xc12fca...12e121`; bsc `0xd98b6c...fb8aa9` | ⚠️ Unaudited |
| VaultRelayInternal | unknown | bsc | n/a | 2 deployments: bsc [`0x88d75e...8f1b8f`](./contracts/bsc-56/0x88d75e28f510ea80e5f7581ea0839a14b88f1b8f/); bsc `0xb37076...ca60aa` | ⚠️ Unaudited |
| VaultVenus | unknown | bsc | n/a | 6 deployments: bsc [`0x0243a2...38a67a`](./contracts/bsc-56/0x0243a20b20eca78ddedf6b8ddb43a0286438a67a/); bsc `0x0ba950...133ffc`; bsc `0x22af73...2fd250`; bsc `0x52cfa1...eb38a3`; bsc `0x549d2e...954f6a`; bsc `0x5ccc0b...13e4ed` | ⚠️ Unaudited |
| VaultVenus | unknown | bsc | n/a | 2 deployments: bsc [`0x0a9fef...6de73b`](./contracts/bsc-56/0x0a9feffa52316787db9666148dfbbb67a16de73b/); bsc `0x583819...ceacd8` | ⚠️ Unaudited |
| VaultVenus | unknown | bsc | n/a | 19 deployments: bsc [`0x0c236a...28e46e`](./contracts/bsc-56/0x0c236a52e308054dfc98eefeabd12ebe2428e46e/); bsc `0x0f1638...df3ca6`; bsc `0x1bd22b...62bc10`; bsc `0x4520cc...8b3205`; bsc `0x576f90...b98dfc`; bsc `0x6ada6b...16b6de`; bsc `0x82a88d...9b4b27`; bsc `0x838edd...8a74ae`; bsc `0x899860...814b88`; bsc `0x9fec0e...a25495`; bsc `0xa1da8e...fb2093`; bsc `0xb3383d...8b1dc8`; bsc `0xbc5fc6...a1516b`; bsc `0xd38e80...c5ddf7`; bsc `0xd684df...1acc1b`; bsc `0xd95343...196df0`; bsc `0xde3f34...8c08d6`; bsc `0xe4f115...b2ac4c`; bsc `0xfbfbed...fb97e2` | ⚠️ Unaudited |
| VaultVenus | core_logic | bsc | n/a | 5 deployments: bsc [`0x7cd22b...8ed03c`](./contracts/bsc-56/0x7cd22bd5b7a45f952a4f375aa6d5bf08538ed03c/); bsc `0x7d2de1...7b3ee7`; bsc `0xa08a26...e3a208`; bsc `0xa55544...fcb4de`; bsc `0xf70e33...e8de85` | ⚠️ Unaudited |
| VaultVenusBridge | unknown | bsc | n/a | 5 deployments: bsc [`0x26c61f...7bceef`](./contracts/bsc-56/0x26c61f40dda9199ac5390a574b820de5d07bceef/); bsc `0x3eb1c6...111859`; bsc `0x50f039...6523ee`; bsc `0x5d6f64...e9e7ba`; bsc `0x8123ca...8f0da5` | ⚠️ Unaudited |
| VaultVenusBridge | unknown | bsc | n/a | [`0x31c16d...940e3f`](./contracts/bsc-56/0x31c16d0b0625c0f969d1abfc3ab719cc91940e3f/) | ⚠️ Unaudited |
| VaultVenusBridgeOwner | unknown | bsc | n/a | [`0x07d97a...c90546`](./contracts/bsc-56/0x07d97a7788d33a21af269d5bdb8b7474cdc90546/) | ⚠️ Unaudited |
| VaultVenusBridgeOwner | unknown | bsc | n/a | 2 deployments: bsc [`0x500f1f...e8ea71`](./contracts/bsc-56/0x500f1f9b16ff707f81d5281de6e5d5b14ce8ea71/); bsc `0x5a4ed6...136701` | ⚠️ Unaudited |
| ZapBSC | unknown | bsc | n/a | 6 deployments: bsc [`0x281313...8ae1be`](./contracts/bsc-56/0x2813134452c937a2018e4c7666b351e9708ae1be/); bsc `0x2e113a...d5bba0`; bsc `0x634456...3dd26b`; bsc `0x9ef161...773734`; bsc `0xacd576...878c16`; bsc `0xdc6fc3...d29de0` | ⚠️ Unaudited |
| ZapBSC | unknown | bsc | n/a | 2 deployments: bsc [`0x341451...1693ba`](./contracts/bsc-56/0x341451b977a57cde16d01978c63c19b7851693ba/); bsc `0xcbd5cf...967cf6` | ⚠️ Unaudited |
| ZapBSC | unknown | bsc | n/a | 2 deployments: bsc [`0x97964e...238606`](./contracts/bsc-56/0x97964e5b4c253312a348e3523fb96748b2238606/); bsc `0xdc2bbb...586a0c` | ⚠️ Unaudited |
| ZapBSC | unknown | bsc | n/a | 2 deployments: bsc [`0xcbec8e...3574b1`](./contracts/bsc-56/0xcbec8e7ab969f6eb873df63d04b4eafc353574b1/); bsc `0xf4c17e...7913d5` | ⚠️ Unaudited |
| ZapPCS | unknown | bsc | n/a | 2 deployments: bsc [`0x1d9aa7...b3cfb4`](./contracts/bsc-56/0x1d9aa7382840d36a9baf3ecf3986530cf4b3cfb4/); bsc `0xe6d6c4...59d2bb` | ⚠️ Unaudited |
| ZapPCS | unknown | bsc | n/a | 2 deployments: bsc [`0xa17917...466199`](./contracts/bsc-56/0xa17917719087663653b70f5b34356ce221466199/); bsc `0xb6b01e...db3a90` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0162a6...85270a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x028c5d...12a9b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f7483...54411c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ecb04...fb8163` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x271cd0...3497aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x343511...e46a6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47026f...ca1711` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48e198...216d33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7aaba3...74759b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7cb11e...7f752b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ef838...23e974` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a9729...631144` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e46ec...22598f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c1ecc...38caa5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d2fa7...9ae849` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa00c8b...04ab99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0744b...561f87` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa4efbc...5a3efd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa6dc01...7579c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad6908...d83e90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xafa322...e48a20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0a700...fd8668` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc04fc3...db8ed2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce157b...f85413` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce1cf4...4f9713` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xddc9b8...ab801f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdefd3e...b95da6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0b615...1ef659` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb3fb8...1abd40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec8563...5bc7f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf39f63...678c67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7c88c...718cc8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfafd83...56b65d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [[HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf](https://github.com/PancakeBunny-finance/Bunny/blob/main/audits/%5BHAECHI%20AUDIT%5D%20PancakeBunny%20Smart%20Contract%20Audit%20Report%20ver%202.0.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 7 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 142 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=7

Fork inheritance lineage and inherited audits are included when available.
