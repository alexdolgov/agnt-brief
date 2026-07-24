# Agentic Audit Brief: Bunny

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Bunny (`bunny`)
- Website: [https://pancakebunny.finance/](https://pancakebunny.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, polygon
- Contract surface: 174 unique implementations (461 raw deployments)
- Coverage basis: 4/10 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,923,535.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Bunny. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across bsc, ethereum. Structural roles: 19 unclassified, 3 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: unclassified (19), core (3)
- Contract kinds: contract (22)
- Detected standards: ownable (2), erc1967proxy (1), erc20 (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AdminUpgradeabilityProxy (`0xedfcb78e73f7ba6ad2d829bf5d462a0924da28ed`, chain 56)
- BunnyPool (`0xcadc8cb26c8c7cb46500e61171b5f27e9bd7889d`, chain 56)
- BunnyToken (`0xc9849e6fdb743d08faee3e34dd2d1bc69ea11a51`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 22; live-surface rows included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/10 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 164 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 117
- Confirmed-live implementations: 10 of 174 unique; 164 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/141
- Verified + Unaudited implementations: 137
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 174
- Raw deployments: 461
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 2.8% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BunnyBNBPool | unknown | project_anchor | own_supporting | 0 | bsc | unit-381556 | `0xc80ea568010bca1ad659d1937e17834972d66e0d` | ✅ Audited |
| BunnyPool | core_logic | project_anchor | own_supporting | 0 | bsc | unit-381558 | `0xcadc8cb26c8c7cb46500e61171b5f27e9bd7889d` | ✅ Audited |
| BunnyToken | token | project_anchor | own_supporting | 0 | bsc | unit-381557 | `0xc9849e6fdb743d08faee3e34dd2d1bc69ea11a51` | ✅ Audited |
| VaultCakeToCake | core_logic | project_anchor | own_supporting | 1 | bsc | unit-381562 | `0xedfcb78e73f7ba6ad2d829bf5d462a0924da28ed` | ✅ Audited |

### ⚠️ Verified + Unaudited (137)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x00e68201d47b2a18675b72c2ee0221ba4353ca44`; bsc `0x9578edd1512967fb548591451ae535a4c03d9e97` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 25 deployments: bsc `0x16b7ab1a41632e2ae4aa7ee7c56c8c379f270e1a`; bsc `0x1a3270692361c88b5a6fa442c798b12b38f14675`; bsc `0x231aeff3f80657d4bcf92bad96b350c322b84d4f`; bsc `0x273db553f7f3d7b4d8d23288d29d48f2ab1295c8`; bsc `0x3866cd4a629fde0bbbad2c869e5bc9cb5704f1d0`; bsc `0x4dbd3f3c994ce73acd73d9e3f692f72ec7e46f69`; bsc `0x5b89fbf685be65f2addd57195d0e909e4fefb0db`; bsc `0x5dabd9c43e38f5a370d9cf49c465e9ecb342ac24`; bsc `0x5fb9ab1b12621b7c0559c984865359d258048e8d`; bsc `0x640aab067240baea2dd0f47e6a728f817d49b87e`; bsc `0x7347d86cddb41093f11e98ea75a619e59fdf8717`; bsc `0x77f70c18abb20d5649dbd2d5ca206666489ab4b5`; bsc `0x7f41967e0677fde02ac519d3e8b187beffce89a8`; bsc `0x95733e6f67bf60b31151ed0edce58570c5f98e61`; bsc `0xa6340d4707442ac1a73699621400210385f8e860`; bsc `0xb71b2389f0fea214e11e678def852e11a958e764`; bsc `0xbd574b9f587f8e338ebe6bdceebbe0721fd42c24`; bsc `0xbeddd97e2bf5b057b7f1b5d709eeb3364b6f750a`; bsc `0xc30e44dd705b553e116b6a708b418042218f567a`; bsc `0xd5f70837eda031e795dfef33bde7fc6880b12330`; bsc `0xe34c8ea04dfbe4b304a3b2460ee906a62a30ddde`; bsc `0xe5f382be84a9edc6a6199c67dee0832092ddef0d`; bsc `0xe977b01a76fa703b26356c9d711ee28a599ddbf8`; bsc `0xf0a227d69633f91fd780529014fe958d3b2b8e7c`; bsc `0xfad04f952e1bdbc72381e741fd59ca74788c890a` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2278584dda0b2b937db1b2b71044e6b02bbef4a1`; bsc `0xa17c544a05e3b4b8af662368eb9c3c19f8aec210` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x443e8ad4652ca341ce9027506fdc45b1951fa1de`; bsc `0x64f1fee66ea37f4eff5d7e3de3dc270a0af9c92b` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6ded1db18e1c634ba231d3254e3a3ab012d4a07e`; bsc `0xf84e3809971798bd372aecdc03ae977759a619ab` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0xa9b005d891414e0d6e0353490e099d0ca4c778fc`; bsc `0xcb1e37a93a30ffe34d24f296cdcc6a9d44029341`; bsc `0xd601966588e812218a45f3ec06d3a89602348183` | ⚠️ Unaudited |
| BankBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x18a9eee6dc4fb50f86c4abb67bd5f23a3c5e9451`; bsc `0x83adb23313ac1abeb21fd3e56e099667ade4f738` | ⚠️ Unaudited |
| BankBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4e4dedb46cf681ec9e3a24582981845760fe3f80`; bsc `0xaf8980dc6f7600bba0c7610b1701f8f4660b2036` | ⚠️ Unaudited |
| BankBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x926940fa307562ac71bb401525e1bba6e32dbbb8`; bsc `0xb28aa33315efcf4714468f133823b8062e2d761b` | ⚠️ Unaudited |
| BankBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x08bfd44ffdfb32ac8f5efd790609e0fad6e5a249`; bsc `0xcbaea5b29dc2d52988bd20c3f5a47b06ea9c5963` | ⚠️ Unaudited |
| BankBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6d3fd432228911daaccb4c5be8c6efaf85bbdc1` | ⚠️ Unaudited |
| BankConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb9fc522da9e2976cd112f36c6c9f2ee4d28cb08` | ⚠️ Unaudited |
| BulkSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bfbde87cbc22272b481060144908bc4a9797174` | ⚠️ Unaudited |
| BunnyChef | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x40e31876c4322bd033bab028474665b12c4d04ce`; bsc `0xf3976c7472e1a4ef24828b4e373bdaf51f87f3f8` | ⚠️ Unaudited |
| BunnyChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5022301097b896a49de6c38f825b8c31d11e9247` | ⚠️ Unaudited |
| BunnyFeeBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x2918910d6b03de534b6746d3e0abeacaeb718977`; bsc `0x34e1df34115ad2472ffee938e3b991cbdc3b7612`; bsc `0x886b5ac7b9668dea5b2e6cdfdaa161b6e3e989e7`; bsc `0xcaf359ac59bdd9881ccb218cc0c6feda70522fd6`; bsc `0xe4b9963f0f79b9b9c2abdb94ce246ea8c50199a3` | ⚠️ Unaudited |
| BunnyFeeBox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x3749f69b2d99e5586d95d95b6f9b5252c71894bb` | ⚠️ Unaudited |
| BunnyMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0b4a714aaf59e46cb1900e3c031017fd72667efe`; bsc `0xb8b0cbee15819473cbb0715306faa2d3758cbf67` | ⚠️ Unaudited |
| BunnyMinterMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46057f91e88cbf91546e791a8c95753542269227` | ⚠️ Unaudited |
| BunnyMinterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: bsc `0x56eb09a237dae7aa6b319895d79b7f558326c7b4`; bsc `0x6298e5485596b7a281ed35d90c7ef6fb85c436b4`; bsc `0x75940cfebaaad520abe0a47cd13cb0949d099741`; bsc `0x773bca2fcca11c597a942d396f8389e6ec524be0`; bsc `0x7ed1b84fa5e2b9c47e06af7f3af3287b5d85c5d2`; bsc `0x819eea71d3f93bb604816f1797d4828c90219b5d`; bsc `0xaabe04c21202fbf9f39493c33237cc9ce67860ba`; bsc `0xae6fa6fcfbc75a838bd89695214ce280e3a6966e`; bsc `0xaebbfa9399d8f5c2c5411269ac422e266273dffb`; bsc `0xc31b712bad4326227ee93e88c0e6b1839be35fc0`; bsc `0xc39c78a5e90a57a030bcffc6ae5fadb14d72d15d`; bsc `0xedfb16fd596f80e9af59c88b501c9dd93c68f3f5` | ⚠️ Unaudited |
| BunnyMinterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8cb88701790f650f273c8bb2cc4c5f439cd65219`; bsc `0x919b5653602767dda80ff8ccf110938a80f8aa02` | ⚠️ Unaudited |
| BunnyOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e92ab57653998a33d59ede08d3f4423305d35d1` | ⚠️ Unaudited |
| BunnyPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb24633bacc60bb1f907633c4c507f6e6d5bc1f44` | ⚠️ Unaudited |
| BunnyPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x28ecb0a0e1f64a622954cd3f2dd2f8e128292276`; bsc `0x31fe3aaa80f601b2ad3e1e777d9315820006ef13` | ⚠️ Unaudited |
| BunnyPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4fd0143a3da1e4ba762d42ff53be5fab633e014d`; bsc `0xfd25b3f1b62a1db34f2cc2676149230f290277b9` | ⚠️ Unaudited |
| CakeFlipVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x23b68a3c008512a849981b6e69bbac16048f3891`; bsc `0x3649b6d0ab5727e0e02ac47aafec6b26e62ffa00`; bsc `0x569b83f79ab97757b6ab78ddbc40b1eeb009d5ab`; bsc `0x62f2d4a792d13da569ec5fc0067da71cacb26609`; bsc `0x916acb3e3b9f4b19fcfbfb327a64ea5e5fcbfbf0`; bsc `0xa3bff2efd9bbeb098cc01a1285f7ca98227a52b1`; bsc `0xdc6e9d719be6cc0ef4cd6484f7e215f904989bf8` | ⚠️ Unaudited |
| CakeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a8235ada127f6b5532387a029235640d1419e8d` | ⚠️ Unaudited |
| CompensationTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0989091f27708bc92ea4ca60073e03592b94c0ee`; bsc `0x92e64e080d143a691c9c5ef43c67d5cd599c5421` | ⚠️ Unaudited |
| CompensationTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x10fd9e74378542a7a66c8f9d6a693c1ebd19cec4`; bsc `0xcb1fe3e1b6e3d7e92b4e0c7feddf4c916107fcb1`; bsc `0xccc434698193f6d9f1125c8eedd7edd98805c77c` | ⚠️ Unaudited |
| ComptrollerTester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x145ee0eb839b38e979ec9e0b4929b5469dad6a2c` | ⚠️ Unaudited |
| Dashboard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xce8b1aed01c0720d7e5805e16fe08c9946b04161`; bsc `0xe375a12a556e954ccd48c0e0d3943f160d45ac2e` | ⚠️ Unaudited |
| DashboardBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x21200d3eca172a99cd91460fec5570bc8baf567d`; bsc `0xd43202c92fa8462ac23c8425878c20720437e286` | ⚠️ Unaudited |
| DashboardBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x41cbb968fc4251bdf4894ec05d25aefd35c549fe`; bsc `0x59a5f2e3ebc4e47d482d6542244f5398fa8ce8d3`; bsc `0x83104dbb4a7cf833ce8f48636e95d24a737b8f06`; bsc `0x8b565398aa90f8b2926849965b46ef30f2f55ba5`; bsc `0xc0393c9e53e329366dc42a0a8de7ca4725801970`; bsc `0xc05d569ef0c9ad63cff815cccbc103749207ceba`; bsc `0xcf4dbbf910a8f3b0e63bb21e63d4646b350741a3`; bsc `0xef802aa41486a1e9f4f1505b60f65494a277d949`; bsc `0xfa1978d8de1015d87d035f682e7b20ab07e1cb11`; bsc `0xfb4a92c7381f5cb799cc5814d38fbca2320ff99b` | ⚠️ Unaudited |
| DashboardBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8608c5032ca0d7cd42c5e973eb8f68371563cff3`; bsc `0xb3c96d3c3d643c2318e4cdd0a9a48af53131f5f4` | ⚠️ Unaudited |
| DashboardBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb10bfe5b40f814b4c21a0ce601005dcc1eda0d48`; bsc `0xf9696dd31c423b5a9229adf09efc4abfd7e1f761` | ⚠️ Unaudited |
| DashboardBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd925ccbe59da4513ce3389b7fd6aedf0f99c0f55`; bsc `0xf2225f7a0359b97e77a188ba1c809ecdc68d0116` | ⚠️ Unaudited |
| FlipVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a5c2a30861ef2da013d8244066dbc4bbdc7d04c` | ⚠️ Unaudited |
| FlipVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1b08884fc194ef19212253d7b12fa1a3083438a6`; bsc `0xc5bcab07112e8a604b6bb1f11b9511782e73bec0` | ⚠️ Unaudited |
| MigrationRewards | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x033361ddf05d969ba77bccfc51f49c9ce3306c83` | ⚠️ Unaudited |
| MigratorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61010546e65c8fab0202bc13bb51491ad62135fc` | ⚠️ Unaudited |
| MoundOfferingBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x36a2a60c6f16556f441783465f05146eda76b1ec`; bsc `0xb71fa585bb99218bcedbd265418e92a3a2504d5a` | ⚠️ Unaudited |
| MoundOfferingBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48223a85dcee94fe0922d904b62ddd36425e35ad` | ⚠️ Unaudited |
| MoundTokenBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x0c19a8ddca13e638f761df5053b7ff06d3d95bbe`; bsc `0x44e3548ecacd2f9513caefe12da04d35ecb9be13`; bsc `0xbdb6111cc7e8786a2c2a85b6f14324278b2aa15f`; bsc `0xfa03491a58b2cefe295b3a01214f8427f7290474` | ⚠️ Unaudited |
| MoundTokenBSC | token | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x4c97c901b5147f8c1c7ce3c5cf3eb83b44f244fe` | ⚠️ Unaudited |
| MoundTokenBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5b44f594d52efa5240f87ee2f53038b85ec83732`; bsc `0x7fc76f6bf1cb297b0ff184f401b7358055c1e1bd` | ⚠️ Unaudited |
| PBunnyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x26cc5efee2e216170b7aae8b7b4aedf87015a343`; bsc `0x77d2d399b0754c8aad2a105581cec43eb21583a7` | ⚠️ Unaudited |
| PotBunnyLover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x0e699cd2975103c32427fed6817e5b4f2bb8da17`; bsc `0x2d042e7d7b848b1227e6023377d33ab660d1563c`; bsc `0x4e8873d85834cf27e28a0b52dc9ff020a07a8d3e`; bsc `0x7cc54d9b5baee2c08a3ecebad14f0dd5d84b04e7`; bsc `0x8810b03ece92998f001236d4d24723b04846c1c7` | ⚠️ Unaudited |
| PotBunnyLover | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0x60d8a581d519397e870c5376228cd7e7abbc243b`; bsc `0xe0d17b4695862b0a2590730762ec25ee562b2ca4` | ⚠️ Unaudited |
| PotCakeLover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x285037c97a89ce777be0c6f416f9701afaa3b641`; bsc `0x327978eae2806b70e21ada2b86b3da3d051ea7e6`; bsc `0x5a4846169f1bb1f1d9911b28718fc6ac100eb6e9`; bsc `0x6eac3ec7c6c19d44cd32b30f0086b4cdb2c44fc9`; bsc `0x912d2d09c1b8e7120e3060391138e7cb2ebc573d`; bsc `0xaf938a88ac591b9a4d13678c4f72d73bb8efbf94` | ⚠️ Unaudited |
| PresalePancakeBunny | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x641414e2a04c8f8ebbf49ed47cc87dccba42bf07` | ⚠️ Unaudited |
| PriceCalculatorBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x16d973c8c838e772a3f4fbdeb356a24e3f1472cc`; bsc `0x2ed1f2a80c673a1d4c045ab4bbc8fd0b7ec532b3`; bsc `0x2f4b8239965e38a0336bc8c8f80c0d21d03ca2dc`; bsc `0x37651c9ee5a8742452cca49ff41c10065046b80a`; bsc `0x40dc1a4e9f626a2f80d3ea93bd88e07d1adfaffa`; bsc `0x433c8e5641ea7d1696dc6d9e63772570aa87adc2`; bsc `0x7c4c4b15a56f1618b489f7ce8bd69fb6230e121e`; bsc `0xc061d16808423eb60d0c2b090e57d07f83dd15a6`; bsc `0xfa64d83ffb8277b5fe288719e44949a2c980be7c` | ⚠️ Unaudited |
| PriceCalculatorBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xf5bf8a9249e3cc4cb684e3f23db9669323d4fb7d` | ⚠️ Unaudited |
| PriceCalculatorBSCV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x542c06a5dc3f27e0fbdc9fb7bc6748f26d54ddb0`; bsc `0x81ef2bc1e02fee5414e46accc6ae14d833eebba0` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x2ccd4485ee3365ae77a4d6a1a8b47ca0287c7bc7`; bsc `0x581968ffb6d614d79f3cc341be3720a9fd2efea9`; bsc `0x93c517e5191cc2a453b1564672ec1a7e3a58aa5d`; bsc `0x956908570456c4e9705c92c550bb61f1db6a7607`; bsc `0x9cee40fe28fc9de2195dc611291ae810c6b265a8`; bsc `0xaa599bb0d7b6b00bb1ce8350e87d9baed1d33d2b`; bsc `0xe63c8421b3aab5e2acdcfccd326b6878817693dc` | ⚠️ Unaudited |
| QMultiplexer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbd49a14a53617c3c501711221e9d4a3f9ee9e5b` | ⚠️ Unaudited |
| QubitPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x33f93897e914a7482a262ef10a94319840eb8d05` | ⚠️ Unaudited |
| QubitPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5949b3792a8cff98efb600ea146c3842d0ef4a9c`; bsc `0x79907e4ff8010f59c1ebf90c45e569465d620489`; bsc `0xc107d0f6a94075432e35ba0065a96d8d34a1748e` | ⚠️ Unaudited |
| RandomNumberGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2eb45a1017e9e0793e05aaf0796298d9b871ecad` | ⚠️ Unaudited |
| safeSwapBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d36cb4c0aea63ca095d9e26aefb360d279176b0` | ⚠️ Unaudited |
| SafeVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x0a9cda0c4114bd3cc6bb116b013e7778a77784d2`; bsc `0x65abd317bdacc7a5b33265f47f3ab91571cd10ea`; bsc `0x8494d7b1f5b055adb5b260fe3e3eeee38b67426a`; bsc `0x87d1b16742f5c6617ae0ef548572d2de9d8fba52`; bsc `0x8ddee819c025d7f255cc77d1ec64deff14adc577`; bsc `0xc260c850a72c6a56709bc20ff6d2eed67925668d`; bsc `0xf8186e8f896c9570c9abaefa7506e06704d4ccf4` | ⚠️ Unaudited |
| SafeVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4aa7fafe0991dbd30cc5023cc284eff6b6482a71`; bsc `0x5a573e0cab0b5a570f1b9afeb7efcfb85c3d8dbb` | ⚠️ Unaudited |
| SafeVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x64a9a636f7c4e04c11feeb2ad9af3243685d1b80`; bsc `0x94dbc8c26baa731ce3e92f379bbbf377f3ccd86b` | ⚠️ Unaudited |
| SafeVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x81686096e33c8d12eaa3876a5fd8bcd44573b014`; bsc `0xe05f8f17541a1ddc816b7719b5e29065ada39f7e` | ⚠️ Unaudited |
| SortitionSumTreeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b3824706128eb96ed4d50ab3860c77488d77908` | ⚠️ Unaudited |
| StrategyBUNNY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x119d02e4b44cace93a75002572902016488c5f09`; bsc `0xc9e63e6fe6f11cf106dc07ffa109a81f6d590184` | ⚠️ Unaudited |
| StrategyBUNNY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5739249a2bb2c75c7a1ca834e660ddc7164d50b7`; bsc `0xac380b974afdba783f90c0e3ae2a53a9ad6ec359` | ⚠️ Unaudited |
| StrategyHelperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x154d803c328ffd70ef5df52cb027d82821520ece`; bsc `0x6d3a751f4ee348b10eb375d849d5a2539217be49`; bsc `0xa84c09c1a2cf4918caef625682b429398b97a1a0`; bsc `0xc1d2d7c19c031c71fef22a4b5ff2db003b466d29`; bsc `0xf285aa49e7f93750920c1f5ff2965a4ef8987307` | ⚠️ Unaudited |
| StrategyQBT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x21c9b7c5c74fde3ecf770c60d635934f9380c984`; bsc `0x5021dc84a9b3bdd457683245dd9e234db2a1fc21` | ⚠️ Unaudited |
| StrategyQBT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3d9dc12c214145a3f201ba075f083f385ce57dd3`; bsc `0xb67cc06bdc7a0d744991ba4611af37f7ea70f80d` | ⚠️ Unaudited |
| StrategyVBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x124080b98e6433a45477bb4620da4433df073d25`; bsc `0xb980a3ef36a6beaf64a5d9287f47025e73b89be2` | ⚠️ Unaudited |
| TestFlipVaultV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x741e8aa7266cd9df348f6a37466cf7c4e8f1e764` | ⚠️ Unaudited |
| TestFlipVaultV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9059a45bc4f5d82d0c9654e33d4e560636428ddb`; bsc `0xffa1802bb39b6b673dbd3f8ac2a2eecd62ed0c2f` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85c9162a51e03078bdcd08d4232bab13ed414cc3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3fb5a8c998551adf47197f166c5e99b113c12e7d`; bsc `0xc0091ae9f8d710b1e29f991161b88ca0e2a6993e` | ⚠️ Unaudited |
| TripleSlopeModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xb824c640dd8aade41b137841575fdf3c496c24c9`; bsc `0xd31f93307a5f7c0254198f3dd81152d4a54b31b7`; bsc `0xe8188e95d74f9b58801d22403320d0bf38d4345e` | ⚠️ Unaudited |
| VaultBNBTester | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x31d36988aa5f0221b5c70b3fb786d4695ddefe97`; bsc `0x4daaf137dd17018009719b180056806a003816b7` | ⚠️ Unaudited |
| VaultBunny | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xaef1ebb01f67e290e3b2b1f49e71654711bbbbaf`; bsc `0xb037581cf0ce10b04c4735443d95e0c93db5d940` | ⚠️ Unaudited |
| VaultBunnyBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x017fd859191e631aae83627b203ef82a6b638c5a`; bsc `0x0cb448ad7615a739c26cb2505bb3e283daeae378`; bsc `0x3c13abb7746481fc2250eb2e024eab51dfb27979`; bsc `0x4ef98a66dae5a99490117d9828a7f68d08423e8a`; bsc `0x4fba555ab167c2d5c3e647ceb476e76feaee6157`; bsc `0x7188b135950487ee06c48d70010df34321efb0f3`; bsc `0xbecce14f0b557aa2eeda6a34fe603fd264449269`; bsc `0xc9c251c8779a9c9f1f9faeb2f1bdcf151be8e7d9`; bsc `0xd7bdba7037feac9e91f6c092d8a7ae9ae67f4f35`; bsc `0xf1b4ea8a555c8cec8078fdc9e36f62dbc9e59dad` | ⚠️ Unaudited |
| VaultBunnyBNB | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xa6c29a422d1612293669156a34f2793526783622` | ⚠️ Unaudited |
| VaultBunnyBNBLegacy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2c2084ad8e2f811597eda99baa403481351fa794`; bsc `0x69ff781cf86d42af9bf93c06b8be0f16a2905cbc` | ⚠️ Unaudited |
| VaultBunnyBNBLegacy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5af361c537c5486f3dc6fa16d599275e6ec59f00` | ⚠️ Unaudited |
| VaultBunnyBNBTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4fd02a241a0b2e69a15f73a0cbd3650ee5b2afd3`; bsc `0x77fb7519ae4674479a6ca91d8e6f7b03838ac14f` | ⚠️ Unaudited |
| VaultBunnyMaximizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x317e663d882223aace086778fbcdf21b6264949e`; bsc `0x87627baacc06725c46684bfa489871b4ff002ff9`; bsc `0x8df3e90bfb9e234a605d0d166377d410e3a3c46e`; bsc `0xc8e88de1493220631fcd51e14219a846de957fd4` | ⚠️ Unaudited |
| VaultBunnyMaximizer | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xc004a3b5af216e9c2c59a9ea8bc3ee07af667329` | ⚠️ Unaudited |
| VaultCakeToCake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x1953136932098ff25d2c50a20319ecaba43631d3`; bsc `0x272d425a4ab32fac776533078cf1801dd1a100f6`; bsc `0x466be9b5f4fc842e10b74a1f3dacb78d5d349da7`; bsc `0x537a7c41f3dff2dcb9018cec636b42069d9e354a`; bsc `0x6372c88e79f507d419d4226853bccb22d56b857f`; bsc `0x875556191adae0b7bd064d880c536ba2fc597158` | ⚠️ Unaudited |
| VaultCompensation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1e8d700c6ae1c46038cca53d789093b18c09d72c`; bsc `0x2ff46c7908ee2545244d0a11677ee2a0d59aff33`; bsc `0x41fa6d342e41da059d56fe2dc5bdd710459550ca`; bsc `0x964de674cf30f5ae309f5dab38510279a5daa730` | ⚠️ Unaudited |
| VaultFlipToCake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: bsc `0x0dec5af8fcbb21b224797616733f93563789ae8a`; bsc `0x1afa3bcf802b699c7fd7ebb79af152721c406593`; bsc `0x391e8d246236808c668b8ddff95badf863ca9f1e`; bsc `0x4a1fc02dc182cba65fdb9c167e31761e0948471a`; bsc `0x4ac7d13597df5e2a9f93fcd2ee43d8f84620c139`; bsc `0x5194222489899970493676038909b339159b4534`; bsc `0x6ee46a99f9fc95226ee762c3652a137f378a2000`; bsc `0x7078b5e341af626c4188ebcbeb4e34852a669de2`; bsc `0x8a8d6bf47faac29b5dd8481361890c08a639b7b8`; bsc `0xc555e263b8b2750a0e46e42ad355c7d48cdb0f20`; bsc `0xdf94b7eac7a5ebaf603d458e1121ffbe4c2d4afb`; bsc `0xe84895e9b62340f4810042f1c59cc1ed0cef1ce6` | ⚠️ Unaudited |
| VaultFlipToCake | core_logic | non_address_book | non_address_book_inventory (excluded) | 12 | bsc | n/a | 12 deployments: bsc `0x203ee29ba85bbdfa23bfae5d77620aefdaf92cb1`; bsc `0x74fdc215f8309ec58fd34455bf3fee95fb3416dd`; bsc `0x7d52a1697f2df08e6fb2b5a88e0e8e4d7c11a921`; bsc `0x7f0320cef62c88ce1db7d77c1849082c053e2344`; bsc `0x81fa6f9f4599c5316cc53b782de7c01eff4f9551`; bsc `0xac20925e6615ad6871987e199783fa80bf24eb39`; bsc `0xac7d40638271d349cb2dedfdc6268a77738403fa`; bsc `0xbdd478cf8313240efdc54108a2ed389d450cd702`; bsc `0xc1d9ead28fc4cb9658c62594a695a53bfd306f77`; bsc `0xd2220455e760fb27ed8aaa6f9c7e143a687bb0ad`; bsc `0xf92f12b505594eedf65cb8b973819dfa242c61d7`; bsc `0xfeed0bb79035c61cf6519795a02a6a2a69a11aac` | ⚠️ Unaudited |
| VaultFlipToCake | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x5d1dcb4460799f5d5a40a1f4eca558ade1c56831`; bsc `0x87dfcd4032760936606c7a0adbc7acec1885293f`; bsc `0xaba9c9d6de8c175291922edbc93d0881869f3aa4` | ⚠️ Unaudited |
| VaultFlipToCakeLegacy | unknown | project_anchor | own_supporting | 1 | bsc | unit-381561 | 2 deployments: bsc `0x15241e51d15f802bca1617354b5fdc67136506bf`; bsc `0xa5b8cdd3787832adedfe5a04bf4a307051538ff2` | ⚠️ Unaudited |
| VaultFlipToCakeLegacy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1adc1b51305823a8d50c6fd5493feff71260ec05`; bsc `0x7e3c99ee5af3c8be53823250db1d00fffde6fbba` | ⚠️ Unaudited |
| VaultFlipToCakeLegacy | unknown | project_anchor | own_supporting | 4 | bsc | unit-381564 (4 proxies) | 5 deployments: bsc `0x3f139386406b0924ef115baff71d0d30cc090bd5`; bsc `0x7c0c817c0eec80a0c970d9a51e23483b604bfd38`; bsc `0x92a0f75a0f07c90a7ecb65edd549fa6a45a4975c`; bsc `0xcbd4472cbeb7229278f841b2a81f1c0df1ad0058`; bsc `0xe07bdaac4573a00208d148bd5b3e5d2ae4ebd0cc` | ⚠️ Unaudited |
| VaultFlipToCakeLegacy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x41df17d1de8d4e43d5493eb96e01100908fccc4f` | ⚠️ Unaudited |
| VaultFlipToCakeLegacy | unknown | project_anchor | own_supporting | 1 | bsc | unit-381563 | 2 deployments: bsc `0x63048d3009dc2e47a31ad08e6474408a13763a14`; bsc `0x866fd0028eb7fc7eed02def330b05ab503e199d4` | ⚠️ Unaudited |
| VaultFlipToFlip | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x0d17e7b77c678c79c3ab5176e164ff0bcceb8eaa` | ⚠️ Unaudited |
| VaultFlipToFlip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 11 deployments: bsc `0x14cfc6136fc9b3cea9064315125482019ab0f57a`; bsc `0x1ec31b1e84f1e06fe90413096a6c855f05cce1af`; bsc `0x44f4e48018be1d6e9edc6da3c446969418646473`; bsc `0x4a1be0148ffa23c0107dcd17fe115edf7c4a8274`; bsc `0x6b3ede805fea5ae572c3d8ce6072e0a0c534cf52`; bsc `0x829388ec178a8aef8b6bcd6d20395f5b7f05528c`; bsc `0x8a1f4570f7eb49843a1e5cf00dd257c1530e9c13`; bsc `0xa119d2779e8507903353158b404a0881875feb72`; bsc `0xaa972cec6ad8c6b145fbb5cba1d830ea492e15c6`; bsc `0xcbc6f8dfbb439a8adc863251b656c1cd89ccbd1e`; bsc `0xd415e6caa8af7cc17b7abd872a42d5f2c90838ea` | ⚠️ Unaudited |
| VaultFlipToFlip | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x1d5c982bb7233d2740161e7beddcc14548c71186`; bsc `0x93546ba555557049d94e58497ea8eb057a3df939`; bsc `0xe23969d64c481739692162e8097ae316164273dd` | ⚠️ Unaudited |
| VaultFlipToFlip | core_logic | non_address_book | non_address_book_inventory (excluded) | 6 | bsc | n/a | 6 deployments: bsc `0x285f793ce97079d4a5712e616afbbb971dbf1f1f`; bsc `0x633e538ecf0bee1a18c2edfe10c4da0d6e71e77b`; bsc `0xa599d6b81ec4a5ddd8eca85e3aac31e006af00aa`; bsc `0xc341c6a006cab105e8cd2518e25aab311cb22ff6`; bsc `0xe0aca387c6600b455ccfc32b253e2db13b71ca62`; bsc `0xfdb7d4abd0109b36667946726df943e83570286c` | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | unknown | project_anchor | own_supporting | 4 | bsc | unit-381560 (4 proxies) | 5 deployments: bsc `0x0137d886e832842a3b11c568d5992ae73f7a792e`; bsc `0x1381798044ba6a505054cd10b0f896e1c7118210`; bsc `0x1b6e3d394f1d809769407dea84711cf57e507b99`; bsc `0x7eaaeaf2ab59c2c85a17beb15b110f81b192e98a`; bsc `0xc1aae51746bea1a1ec6f17a4f75b422f8a656ee6` | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | unknown | project_anchor | own_supporting | 1 | bsc | unit-381559 | 2 deployments: bsc `0x06a980c97504019770e36587d995519abeb35c85`; bsc `0xa59efef41040e258191a4096dc202583765a43e7` | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x283a843f428c0125be1cb910d335c1284b552254` | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | unknown | project_anchor | own_supporting | 1 | bsc | unit-381565 | 2 deployments: bsc `0x8816f093f050c1d4637d769f744960c1b41bd56f`; bsc `0xc0314bbe19d4d5b048d3a3b974f0ca1b2cee5ef3` | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xe02bcfa3d0072ad2f52ed917a7b125e257c26032` | ⚠️ Unaudited |
| VaultFlipToQBT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0d9966a21bea25af7b17322826a44b1c197df40c`; bsc `0x7702527365bd09c00acfd5db2a77ca8cf6ac6cec` | ⚠️ Unaudited |
| VaultFlipToQBT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xdccd72f1b56b723e53e2a3242dc9c803df1da62a`; bsc `0xe6b3fb8e6c7b9d7fbf3bfd1a50ac8201c2fa5a8f` | ⚠️ Unaudited |
| VaultFlipToQBT_Legacy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x68917b9698b1260aff4cb02ad45f1b93c424ba7c`; bsc `0x6a028cb5aadf8ec767dce0a76c80c5b2d414bd04` | ⚠️ Unaudited |
| VaultMND | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2eedbf05dc91e11fd44b27a77e5d4535387b1e8d` | ⚠️ Unaudited |
| VaultQBTBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3e81d35fbb460bc499af2c755415785aaa803f45`; bsc `0xe8174e7f5126574a4378fdf98a9864f1a806049d` | ⚠️ Unaudited |
| VaultQBTBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x71f118b0180f36495b1c6467ed966514516549b0`; bsc `0xd1ad1943b70340783ed9814ffedcaaae459b6c39` | ⚠️ Unaudited |
| VaultQubit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1399544a07ec41c5e44040b2d60ad0ade3f18be7`; bsc `0x76e6036ca2cce032671110f76edc19779c17d108`; bsc `0x85651328f7b64f1e1d6bf746ee2bf17a70aa9914`; bsc `0x984cba692f86a0bf546d2424b25656225ef7a1b7` | ⚠️ Unaudited |
| VaultQubit | core_logic | non_address_book | non_address_book_inventory (excluded) | 8 | bsc | n/a | 8 deployments: bsc `0x401c22395200caaae87f8ab9f9446636dde38c9a`; bsc `0x4b107b794c9bbfd83e5ac9e8dd59f918510c5729`; bsc `0x4fc359e39a99acfdf44c794ef702fab93067b2a6`; bsc `0x53fd20bc5d4d222764b70817810494f1d06f3403`; bsc `0x67c42b3dac9526efcbfeeb2fc1c56cf77f494e46`; bsc `0xb9cf0d36e82c2a1b46ed51e44dc0a4b0100d6d74`; bsc `0xde80ce223c9f1d1db0bc8d5bdd88e03f6882eea3`; bsc `0xee3ee0beb7919edd31a4506d7d4c93940f2aced6` | ⚠️ Unaudited |
| VaultQubit | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6935d1d00c86fa787bf36628def4f7d9d940c327`; bsc `0x9150bd496e33b66b87dfacdde91300575ec2fcae` | ⚠️ Unaudited |
| VaultQubitBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x12c62464d8cf4a9ca6f2eead1d7954a9fc21d053` | ⚠️ Unaudited |
| VaultQubitBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x6ebc17c00e444f776c35eb4f8c35396e09a6306c`; bsc `0x7a62ecb11a89ed5510db847fb7e4a9ecc161384b`; bsc `0x946d073f0ca8a442278952171456bd6578a6d0a0`; bsc `0xa95be1ebb292c60540c7440ea6be673964a1790c`; bsc `0xf57a9b124334bd9613bc074639e1f8b82a66ae9b` | ⚠️ Unaudited |
| VaultQubitCompensation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x71715e8fe0c13c6c63c1cf39da110c4ed79a212e` | ⚠️ Unaudited |
| VaultQubitCompensation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd0a816795a960926be3c2723ef89a0ba4cf604b` | ⚠️ Unaudited |
| VaultRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x31e5417f609fb4a60b2a4ce53833623657d92546`; bsc `0x399621d129ecb01156b1314f8705beb2eff625eb`; bsc `0x56d9219c49cba7ab371d4e180be67fc855dae9ee`; bsc `0x74a96e6e31cb6b62a16fd433cfac297167ae8451`; bsc `0x85122f34af42bcf48b8ef1b0eaa5f018bed8b1c4`; bsc `0xd63cb8cbb334de3ea48123e6a8646535449ce1a9`; bsc `0xe326b1168ddad2ed2449b65bef6143af43fb5b77`; bsc `0xf77126dd5fcf70589ad6610e3e4ea0f91fcc5e01` | ⚠️ Unaudited |
| VaultRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x34d3ff7f0476b38f990e9b8571acae60f6321c03`; bsc `0x68243c7f4502585cc493022988ac9906568112d2` | ⚠️ Unaudited |
| VaultRelayInternal | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x067ed15bac752698dd525452cd493079220f33d5`; bsc `0xa73f138f67eb660d566d8e627175f74df3f00189`; bsc `0xc12fca77aaa5411c81ba68d9d2df6a635212e121`; bsc `0xd98b6c41fd5e556ef2ecb59cd9fddfc664fb8aa9` | ⚠️ Unaudited |
| VaultRelayInternal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x88d75e28f510ea80e5f7581ea0839a14b88f1b8f`; bsc `0xb37076a10abba60524b83d48160dba50b6ca60aa` | ⚠️ Unaudited |
| VaultVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 6 deployments: bsc `0x0243a20b20eca78ddedf6b8ddb43a0286438a67a`; bsc `0x0ba950f0f099229828c10a9b307280a450133ffc`; bsc `0x22af73683dee5d266b0c36c37d0fd62c402fd250`; bsc `0x52cfa188a1468a521a98eaa798e715fbb9eb38a3`; bsc `0x549d2e2b4fa19179ca5020a981600571c2954f6a`; bsc `0x5ccc0bcba291c5b0d53b6d38c9934d341a13e4ed` | ⚠️ Unaudited |
| VaultVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0a9feffa52316787db9666148dfbbb67a16de73b`; bsc `0x5838198a71b0e2e554b3ecc2a13b6e52e3ceacd8` | ⚠️ Unaudited |
| VaultVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 19 deployments: bsc `0x0c236a52e308054dfc98eefeabd12ebe2428e46e`; bsc `0x0f1638b8dbb656ea20f2557ec75b973067df3ca6`; bsc `0x1bd22be3e318d5b424c7999939d55ec1f562bc10`; bsc `0x4520ccf3e05c12360ebe92163e43a26ecd8b3205`; bsc `0x576f904339b7e3d871e07e5b938fb75adfb98dfc`; bsc `0x6ada6bfacae91444c01bbc568c9e4d5ff116b6de`; bsc `0x82a88d4bda5c061317e131a05896987c319b4b27`; bsc `0x838eddecfa48815361a35e5f80fde845b58a74ae`; bsc `0x899860606e6603bb8c9f27e7f97813f87e814b88`; bsc `0x9fec0e628f28dfd9c0c55a1d7e94ec3a5aa25495`; bsc `0xa1da8ebd2fd80907364ed47a2df80b49dbfb2093`; bsc `0xb3383d12f6a07103fbc59b19dce96a92218b1dc8`; bsc `0xbc5fc6617fd67adb5102c12b0a12009fcba1516b`; bsc `0xd38e80b2bac5b60c93135423e6fadc650fc5ddf7`; bsc `0xd684df0400dbda9e90a58f5561fd24f12e1acc1b`; bsc `0xd953432bf98641e0043d00ac0c2d5d25bd196df0`; bsc `0xde3f341020f2088355f7941c7aca8c1b608c08d6`; bsc `0xe4f1156876ada1e9fd15f6e58df5983ac5b2ac4c`; bsc `0xfbfbed81cb231e6b69ec37e451334cbecbfb97e2` | ⚠️ Unaudited |
| VaultVenus | core_logic | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 5 deployments: bsc `0x7cd22bd5b7a45f952a4f375aa6d5bf08538ed03c`; bsc `0x7d2de1362dc32c1974d3a7cbbbd6ad898e7b3ee7`; bsc `0xa08a2664bd2124dd011224e1cb4fd6e263e3a208`; bsc `0xa555443a5ee77f334648ef4f557c0b5070fcb4de`; bsc `0xf70e331acddfc2a5cd169b8b3d1cc02951e8de85` | ⚠️ Unaudited |
| VaultVenusBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x26c61f40dda9199ac5390a574b820de5d07bceef`; bsc `0x3eb1c6a7d749a300d50bb56192380c1287111859`; bsc `0x50f039406fa66821d84f1ecc80ca18e6db6523ee`; bsc `0x5d6f6477c64695354cf34bea831a1268fce9e7ba`; bsc `0x8123cafca48b37e0f4936b2388d6b8a29f8f0da5` | ⚠️ Unaudited |
| VaultVenusBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x31c16d0b0625c0f969d1abfc3ab719cc91940e3f` | ⚠️ Unaudited |
| VaultVenusBridgeOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07d97a7788d33a21af269d5bdb8b7474cdc90546` | ⚠️ Unaudited |
| VaultVenusBridgeOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x500f1f9b16ff707f81d5281de6e5d5b14ce8ea71`; bsc `0x5a4ed6f29ecd68dc65087f82b048ea9eec136701` | ⚠️ Unaudited |
| VenusBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73f34eba557f7df6e7aadf509733cc53e670fed6` | ⚠️ Unaudited |
| VenusBridgeTester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf22ec43ccf31491274864ffbb09410e3a8fcfe03` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0456c6a001bd46364bbe4387b5129791b18b0d77`; bsc `0x3d2046ea38be2f33deaedbfe4d0a28f29654892d` | ⚠️ Unaudited |
| ZapBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x2813134452c937a2018e4c7666b351e9708ae1be`; bsc `0x2e113a007e39bdc2ba5f9e4ee13ec667e1d5bba0`; bsc `0x634456be9ab2c2b06f2d77e5c7248fbe0e3dd26b`; bsc `0x9ef161c57dc88d9283e0adfab5ee6ab875773734`; bsc `0xacd5763814bcac29dc1f12c6d3d9bc8a55878c16`; bsc `0xdc6fc39ee071ac96265d959201d0be15abd29de0` | ⚠️ Unaudited |
| ZapBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x341451b977a57cde16d01978c63c19b7851693ba`; bsc `0xcbd5cfd1be591241bfbf809e067ff15ba9967cf6` | ⚠️ Unaudited |
| ZapBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x97964e5b4c253312a348e3523fb96748b2238606`; bsc `0xdc2bbb0d33e0e7dea9f5b98f46edbac823586a0c` | ⚠️ Unaudited |
| ZapBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xcbec8e7ab969f6eb873df63d04b4eafc353574b1`; bsc `0xf4c17e321a8c566d21cf8a9f090ef38f727913d5` | ⚠️ Unaudited |
| ZapPCS | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1d9aa7382840d36a9baf3ecf3986530cf4b3cfb4`; bsc `0xe6d6c48bb7865edd092c8755b10eea63f159d2bb` | ⚠️ Unaudited |
| ZapPCS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xa17917719087663653b70f5b34356ce221466199`; bsc `0xb6b01ea4d8761c6b2d1b9040c8855d2e08db3a90` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0162a68a8fbd362b95249ac759152d1bfa85270a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x028c5d121d3cc6d9d1297914d0f6430f6612a9b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f7483a9758c187d11e0c0304545211e7e54411c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ecb046922c9208ebc691ebb3cf3502aa0fb8163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x271cd077d3cc74271523d1f471a63ea98a3497aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34351184b044c32eea35af874658624080e46a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47026fddcea444d0d2c2b6f5a8165bc508ca1711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48e198477a4cb41a66b7f4f4aca2561ebb216d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7aaba3c440e3d7384939a480bf4cae08d574759b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7cb11e3e0692a52ae1f76c660c74cc2ebe7f752b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ef8386969f494bb67d4cabe7c9ad606c923e974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a97298f3456a63c6f114727d228b4a7aa631144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e46ec561305207b69f346615a6688ed2722598f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c1ecced316208574f9eda937025af7d8f38caa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d2fa701f99de97ee14c414c8a886ca4819ae849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa00c8b9a92f4d1091115df7d79129a74c604ab99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0744b6605b332e16c551599d1c151fd14561f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4efbcccd65537af231bd23818531c9dea5a3efd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6dc01b1c6861ab6bb58b5e19d4584ccab7579c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad69085be6b7e0bc0fdd6e95575b9436e9d83e90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xafa322fb64ce0c0dc17c6a431968164588e48a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0a70001ca809c491c107da6f2883dbad0fd8668` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc04fc3812f3d4c07ab3e21897565f6bb2fdb8ed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce157b6bc83031d809e16cbd60491c82a6f85413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce1cf48f30f95005ee0b4083b9b96295984f9713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddc9b81ae3703a2c1dff8db43088fc3c39ab801f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdefd3ee328953284e6e7bcbe3b0fca7923b95da6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0b615ea4ffedecaecf77312c22eb4ce941ef659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb3fb85910d7e028e71b40aae241d8c4051abd40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec856363b0b117a6ef48eb31498a6146bd5bc7f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf39f636e98863a1b8e784134ee98993920678c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7c88c728d9b92cc8c765d5f35f83c9105718cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfafd83ddad8b9d5e13353d5fabbdec907956b65d` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 416
- Live contracts: 19
- Unknown liveness contracts: 397
- Source-verified contracts: 377
- Currently scope-matched contracts retained as-is: 1
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=1, candidate review=281, source verified unclassified=95, unverified unclassified=39

Showing first 200 of 416 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | currently scope matched | BunnyBNBPool<br>`0xc80ea568010bca1ad659d1937e17834972d66e0d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x0137d886e832842a3b11c568d5992ae73f7a792e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x0243a20b20eca78ddedf6b8ddb43a0286438a67a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x067ed15bac752698dd525452cd493079220f33d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x0989091f27708bc92ea4ca60073e03592b94c0ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x0ba950f0f099229828c10a9b307280a450133ffc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x16b7ab1a41632e2ae4aa7ee7c56c8c379f270e1a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x1a3270692361c88b5a6fa442c798b12b38f14675` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x1b6e3d394f1d809769407dea84711cf57e507b99` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x1d5c982bb7233d2740161e7beddcc14548c71186` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x1d9aa7382840d36a9baf3ecf3986530cf4b3cfb4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x21200d3eca172a99cd91460fec5570bc8baf567d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x2278584dda0b2b937db1b2b71044e6b02bbef4a1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x22af73683dee5d266b0c36c37d0fd62c402fd250` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x231aeff3f80657d4bcf92bad96b350c322b84d4f` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x26cc5efee2e216170b7aae8b7b4aedf87015a343` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x273db553f7f3d7b4d8d23288d29d48f2ab1295c8` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x34d3ff7f0476b38f990e9b8571acae60f6321c03` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x3866cd4a629fde0bbbad2c869e5bc9cb5704f1d0` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x3f139386406b0924ef115baff71d0d30cc090bd5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x40e31876c4322bd033bab028474665b12c4d04ce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x41df17d1de8d4e43d5493eb96e01100908fccc4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x443e8ad4652ca341ce9027506fdc45b1951fa1de` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x4daaf137dd17018009719b180056806a003816b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x4dbd3f3c994ce73acd73d9e3f692f72ec7e46f69` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x4fd0143a3da1e4ba762d42ff53be5fab633e014d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x500f1f9b16ff707f81d5281de6e5d5b14ce8ea71` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x52cfa188a1468a521a98eaa798e715fbb9eb38a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x542c06a5dc3f27e0fbdc9fb7bc6748f26d54ddb0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x549d2e2b4fa19179ca5020a981600571c2954f6a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x5a573e0cab0b5a570f1b9afeb7efcfb85c3d8dbb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x5b89fbf685be65f2addd57195d0e909e4fefb0db` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x5d1dcb4460799f5d5a40a1f4eca558ade1c56831` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x5fb9ab1b12621b7c0559c984865359d258048e8d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x60d8a581d519397e870c5376228cd7e7abbc243b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x64a9a636f7c4e04c11feeb2ad9af3243685d1b80` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x69ff781cf86d42af9bf93c06b8be0f16a2905cbc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x7347d86cddb41093f11e98ea75a619e59fdf8717` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x77f70c18abb20d5649dbd2d5ca206666489ab4b5` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x7eaaeaf2ab59c2c85a17beb15b110f81b192e98a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x7f41967e0677fde02ac519d3e8b187beffce89a8` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x83adb23313ac1abeb21fd3e56e099667ade4f738` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x866fd0028eb7fc7eed02def330b05ab503e199d4` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x87dfcd4032760936606c7a0adbc7acec1885293f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x8cb88701790f650f273c8bb2cc4c5f439cd65219` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x9059a45bc4f5d82d0c9654e33d4e560636428ddb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x926940fa307562ac71bb401525e1bba6e32dbbb8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x92a0f75a0f07c90a7ecb65edd549fa6a45a4975c` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x93546ba555557049d94e58497ea8eb057a3df939` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0x95733e6f67bf60b31151ed0edce58570c5f98e61` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xa59efef41040e258191a4096dc202583765a43e7` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xa5b8cdd3787832adedfe5a04bf4a307051538ff2` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xa6340d4707442ac1a73699621400210385f8e860` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xa73f138f67eb660d566d8e627175f74df3f00189` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xa9b005d891414e0d6e0353490e099d0ca4c778fc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xb037581cf0ce10b04c4735443d95e0c93db5d940` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xb10bfe5b40f814b4c21a0ce601005dcc1eda0d48` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xb3c96d3c3d643c2318e4cdd0a9a48af53131f5f4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xb71b2389f0fea214e11e678def852e11a958e764` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xb980a3ef36a6beaf64a5d9287f47025e73b89be2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xbd574b9f587f8e338ebe6bdceebbe0721fd42c24` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xbeddd97e2bf5b057b7f1b5d709eeb3364b6f750a` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xc0314bbe19d4d5b048d3a3b974f0ca1b2cee5ef3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xc1aae51746bea1a1ec6f17a4f75b422f8a656ee6` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xc30e44dd705b553e116b6a708b418042218f567a` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xc5bcab07112e8a604b6bb1f11b9511782e73bec0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xcbaea5b29dc2d52988bd20c3f5a47b06ea9c5963` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xcbd4472cbeb7229278f841b2a81f1c0df1ad0058` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xcbd5cfd1be591241bfbf809e067ff15ba9967cf6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xcbec8e7ab969f6eb873df63d04b4eafc353574b1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xd1ad1943b70340783ed9814ffedcaaae459b6c39` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xd601966588e812218a45f3ec06d3a89602348183` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xd925ccbe59da4513ce3389b7fd6aedf0f99c0f55` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xd98b6c41fd5e556ef2ecb59cd9fddfc664fb8aa9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xdc2bbb0d33e0e7dea9f5b98f46edbac823586a0c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xe02bcfa3d0072ad2f52ed917a7b125e257c26032` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xe07bdaac4573a00208d148bd5b3e5d2ae4ebd0cc` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xe0d17b4695862b0a2590730762ec25ee562b2ca4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xe977b01a76fa703b26356c9d711ee28a599ddbf8` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xf0a227d69633f91fd780529014fe958d3b2b8e7c` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xf5bf8a9249e3cc4cb684e3f23db9669323d4fb7d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xf84e3809971798bd372aecdc03ae977759a619ab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | AdminUpgradeabilityProxy<br>`0xfad04f952e1bdbc72381e741fd59ca74788c890a` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BankBNB<br>`0x18a9eee6dc4fb50f86c4abb67bd5f23a3c5e9451` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BankBNB<br>`0x4e4dedb46cf681ec9e3a24582981845760fe3f80` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BankBNB<br>`0xaf8980dc6f7600bba0c7610b1701f8f4660b2036` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BankBNB<br>`0xb28aa33315efcf4714468f133823b8062e2d761b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BankBridge<br>`0x08bfd44ffdfb32ac8f5efd790609e0fad6e5a249` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BankBridge<br>`0xd6d3fd432228911daaccb4c5be8c6efaf85bbdc1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BankConfig<br>`0xeb9fc522da9e2976cd112f36c6c9f2ee4d28cb08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BunnyChef<br>`0x5022301097b896a49de6c38f825b8c31d11e9247` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BunnyChef<br>`0xf3976c7472e1a4ef24828b4e373bdaf51f87f3f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BunnyMinterMigrator<br>`0x46057f91e88cbf91546e791a8c95753542269227` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BunnyMinterV2<br>`0x6298e5485596b7a281ed35d90c7ef6fb85c436b4` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BunnyMinterV2<br>`0x75940cfebaaad520abe0a47cd13cb0949d099741` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BunnyMinterV2<br>`0x773bca2fcca11c597a942d396f8389e6ec524be0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BunnyMinterV2<br>`0x7ed1b84fa5e2b9c47e06af7f3af3287b5d85c5d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BunnyMinterV2<br>`0x819eea71d3f93bb604816f1797d4828c90219b5d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BunnyMinterV2<br>`0xaabe04c21202fbf9f39493c33237cc9ce67860ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BunnyMinterV2<br>`0xae6fa6fcfbc75a838bd89695214ce280e3a6966e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BunnyMinterV2<br>`0xaebbfa9399d8f5c2c5411269ac422e266273dffb` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BunnyMinterV2<br>`0xc31b712bad4326227ee93e88c0e6b1839be35fc0` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BunnyMinterV2<br>`0xedfb16fd596f80e9af59c88b501c9dd93c68f3f5` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | BunnyPool<br>`0xb24633bacc60bb1f907633c4c507f6e6d5bc1f44` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | CakeFlipVault<br>`0x3649b6d0ab5727e0e02ac47aafec6b26e62ffa00` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | CakeFlipVault<br>`0x569b83f79ab97757b6ab78ddbc40b1eeb009d5ab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | CakeFlipVault<br>`0x62f2d4a792d13da569ec5fc0067da71cacb26609` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | CakeFlipVault<br>`0x916acb3e3b9f4b19fcfbfb327a64ea5e5fcbfbf0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | CakeFlipVault<br>`0xa3bff2efd9bbeb098cc01a1285f7ca98227a52b1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | CakeFlipVault<br>`0xdc6e9d719be6cc0ef4cd6484f7e215f904989bf8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | CompensationTreasury<br>`0x92e64e080d143a691c9c5ef43c67d5cd599c5421` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | CompensationTreasury<br>`0xccc434698193f6d9f1125c8eedd7edd98805c77c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | ComptrollerTester<br>`0x145ee0eb839b38e979ec9e0b4929b5469dad6a2c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | Dashboard<br>`0xce8b1aed01c0720d7e5805e16fe08c9946b04161` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | Dashboard<br>`0xe375a12a556e954ccd48c0e0d3943f160d45ac2e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | DashboardBSC<br>`0x59a5f2e3ebc4e47d482d6542244f5398fa8ce8d3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | DashboardBSC<br>`0x83104dbb4a7cf833ce8f48636e95d24a737b8f06` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | DashboardBSC<br>`0x8b565398aa90f8b2926849965b46ef30f2f55ba5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | DashboardBSC<br>`0xc0393c9e53e329366dc42a0a8de7ca4725801970` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | DashboardBSC<br>`0xc05d569ef0c9ad63cff815cccbc103749207ceba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | DashboardBSC<br>`0xcf4dbbf910a8f3b0e63bb21e63d4646b350741a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | DashboardBSC<br>`0xd43202c92fa8462ac23c8425878c20720437e286` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | DashboardBSC<br>`0xef802aa41486a1e9f4f1505b60f65494a277d949` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | DashboardBSC<br>`0xf2225f7a0359b97e77a188ba1c809ecdc68d0116` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | DashboardBSC<br>`0xf9696dd31c423b5a9229adf09efc4abfd7e1f761` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | DashboardBSC<br>`0xfa1978d8de1015d87d035f682e7b20ab07e1cb11` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | DashboardBSC<br>`0xfb4a92c7381f5cb799cc5814d38fbca2320ff99b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | PriceCalculatorBSC<br>`0x16d973c8c838e772a3f4fbdeb356a24e3f1472cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | PriceCalculatorBSC<br>`0x2ed1f2a80c673a1d4c045ab4bbc8fd0b7ec532b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | PriceCalculatorBSC<br>`0x2f4b8239965e38a0336bc8c8f80c0d21d03ca2dc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | PriceCalculatorBSC<br>`0x37651c9ee5a8742452cca49ff41c10065046b80a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | PriceCalculatorBSC<br>`0x40dc1a4e9f626a2f80d3ea93bd88e07d1adfaffa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | PriceCalculatorBSC<br>`0x433c8e5641ea7d1696dc6d9e63772570aa87adc2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | PriceCalculatorBSC<br>`0x7c4c4b15a56f1618b489f7ce8bd69fb6230e121e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | PriceCalculatorBSC<br>`0xc061d16808423eb60d0c2b090e57d07f83dd15a6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | PriceCalculatorBSC<br>`0xfa64d83ffb8277b5fe288719e44949a2c980be7c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | ProxyAdmin<br>`0x9cee40fe28fc9de2195dc611291ae810c6b265a8` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | ProxyAdmin<br>`0xaa599bb0d7b6b00bb1ce8350e87d9baed1d33d2b` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | SafeVenus<br>`0x0a9cda0c4114bd3cc6bb116b013e7778a77784d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | SafeVenus<br>`0x4aa7fafe0991dbd30cc5023cc284eff6b6482a71` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | SafeVenus<br>`0x65abd317bdacc7a5b33265f47f3ab91571cd10ea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | SafeVenus<br>`0x8494d7b1f5b055adb5b260fe3e3eeee38b67426a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | SafeVenus<br>`0x94dbc8c26baa731ce3e92f379bbbf377f3ccd86b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | Timelock<br>`0x85c9162a51e03078bdcd08d4232bab13ed414cc3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x5b44f594d52efa5240f87ee2f53038b85ec83732` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xb71fa585bb99218bcedbd265418e92a3a2504d5a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | TripleSlopeModel<br>`0xd31f93307a5f7c0254198f3dd81152d4a54b31b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultBNBTester<br>`0x31d36988aa5f0221b5c70b3fb786d4695ddefe97` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultBunny<br>`0xaef1ebb01f67e290e3b2b1f49e71654711bbbbaf` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultBunnyBNB<br>`0x017fd859191e631aae83627b203ef82a6b638c5a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultBunnyBNB<br>`0x0cb448ad7615a739c26cb2505bb3e283daeae378` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultBunnyBNB<br>`0x3c13abb7746481fc2250eb2e024eab51dfb27979` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultBunnyBNB<br>`0x4ef98a66dae5a99490117d9828a7f68d08423e8a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultBunnyBNB<br>`0x4fba555ab167c2d5c3e647ceb476e76feaee6157` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultBunnyBNB<br>`0x7188b135950487ee06c48d70010df34321efb0f3` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultBunnyBNB<br>`0xbecce14f0b557aa2eeda6a34fe603fd264449269` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultBunnyBNB<br>`0xc9c251c8779a9c9f1f9faeb2f1bdcf151be8e7d9` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultBunnyBNB<br>`0xd7bdba7037feac9e91f6c092d8a7ae9ae67f4f35` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultBunnyBNB<br>`0xf1b4ea8a555c8cec8078fdc9e36f62dbc9e59dad` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultBunnyBNBLegacy<br>`0x2c2084ad8e2f811597eda99baa403481351fa794` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultBunnyBNBLegacy<br>`0x5af361c537c5486f3dc6fa16d599275e6ec59f00` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultBunnyMaximizer<br>`0x317e663d882223aace086778fbcdf21b6264949e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultBunnyMaximizer<br>`0x87627baacc06725c46684bfa489871b4ff002ff9` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultCompensation<br>`0x1e8d700c6ae1c46038cca53d789093b18c09d72c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultCompensation<br>`0x2ff46c7908ee2545244d0a11677ee2a0d59aff33` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultCompensation<br>`0x41fa6d342e41da059d56fe2dc5bdd710459550ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultCompensation<br>`0x964de674cf30f5ae309f5dab38510279a5daa730` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCake<br>`0x0dec5af8fcbb21b224797616733f93563789ae8a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCake<br>`0x1afa3bcf802b699c7fd7ebb79af152721c406593` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCake<br>`0x391e8d246236808c668b8ddff95badf863ca9f1e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCake<br>`0x4a1fc02dc182cba65fdb9c167e31761e0948471a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCake<br>`0x4ac7d13597df5e2a9f93fcd2ee43d8f84620c139` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCake<br>`0x5194222489899970493676038909b339159b4534` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCake<br>`0x6ee46a99f9fc95226ee762c3652a137f378a2000` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCake<br>`0x7078b5e341af626c4188ebcbeb4e34852a669de2` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCake<br>`0x8a8d6bf47faac29b5dd8481361890c08a639b7b8` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCake<br>`0xaba9c9d6de8c175291922edbc93d0881869f3aa4` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCake<br>`0xc555e263b8b2750a0e46e42ad355c7d48cdb0f20` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCake<br>`0xdf94b7eac7a5ebaf603d458e1121ffbe4c2d4afb` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCake<br>`0xe84895e9b62340f4810042f1c59cc1ed0cef1ce6` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCakeLegacy<br>`0x15241e51d15f802bca1617354b5fdc67136506bf` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCakeLegacy<br>`0x1adc1b51305823a8d50c6fd5493feff71260ec05` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCakeLegacy<br>`0x63048d3009dc2e47a31ad08e6474408a13763a14` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCakeLegacy<br>`0x7c0c817c0eec80a0c970d9a51e23483b604bfd38` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToCakeLegacy<br>`0x7e3c99ee5af3c8be53823250db1d00fffde6fbba` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToFlip<br>`0x14cfc6136fc9b3cea9064315125482019ab0f57a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToFlip<br>`0x1ec31b1e84f1e06fe90413096a6c855f05cce1af` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToFlip<br>`0x44f4e48018be1d6e9edc6da3c446969418646473` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToFlip<br>`0x4a1be0148ffa23c0107dcd17fe115edf7c4a8274` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToFlip<br>`0x6b3ede805fea5ae572c3d8ce6072e0a0c534cf52` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToFlip<br>`0x829388ec178a8aef8b6bcd6d20395f5b7f05528c` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToFlip<br>`0x8a1f4570f7eb49843a1e5cf00dd257c1530e9c13` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToFlip<br>`0xa119d2779e8507903353158b404a0881875feb72` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToFlip<br>`0xaa972cec6ad8c6b145fbb5cba1d830ea492e15c6` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToFlip<br>`0xcbc6f8dfbb439a8adc863251b656c1cd89ccbd1e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToFlip<br>`0xd415e6caa8af7cc17b7abd872a42d5f2c90838ea` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToFlip<br>`0xe23969d64c481739692162e8097ae316164273dd` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToFlipLegacy<br>`0x06a980c97504019770e36587d995519abeb35c85` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToFlipLegacy<br>`0x1381798044ba6a505054cd10b0f896e1c7118210` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |
| bsc | candidate review | VaultFlipToFlipLegacy<br>`0x283a843f428c0125be1cb910d335c1284b552254` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe87f02606911223c2cf200398ffaf353f60801f7` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf](https://github.com/PancakeBunny-finance/Bunny/blob/main/audits/%5BHAECHI%20AUDIT%5D%20PancakeBunny%20Smart%20Contract%20Audit%20Report%20ver%202.0.pdf) | unknown | Audit | 2021-01 | stale | Direct | n/a | matched | 4 | 1 | 0 | 3 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2752] [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | BunnyBNBPool | own contract | BunnyBNBPool (selected) `0xc80ea568010bca1ad659d1937e17834972d66e0d` — deployed 2020-11-16 13:52:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | BunnyMinter | unmatched — not counted | — | — | no |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | BunnyPool | own contract | BunnyPool (selected) `0xcadc8cb26c8c7cb46500e61171b5f27e9bd7889d` — deployed 2020-11-16 17:22:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | BunnyToken | own contract | BunnyToken (selected) `0xc9849e6fdb743d08faee3e34dd2d1bc69ea11a51` — deployed 2020-10-30 16:09:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | VaultCakeToCake | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0xedfcb78e73f7ba6ad2d829bf5d462a0924da28ed` — deployed 2020-12-23 12:01:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | VaultFlipToCake | unmatched — not counted | — | — | no |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | VaultFlipToFlip | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x15241e51d15f802bca1617354b5fdc67136506bf` | VaultFlipToCakeLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3f139386406b0924ef115baff71d0d30cc090bd5` | VaultFlipToCakeLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x63048d3009dc2e47a31ad08e6474408a13763a14` | VaultFlipToCakeLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0137d886e832842a3b11c568d5992ae73f7a792e` | VaultFlipToFlipLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x06a980c97504019770e36587d995519abeb35c85` | VaultFlipToFlipLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8816f093f050c1d4637d769f744960c1b41bd56f` | VaultFlipToFlipLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 133 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=4

Fork inheritance lineage and inherited audits are included when available.
