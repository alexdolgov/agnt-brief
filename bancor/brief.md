# Agentic Audit Brief: Bancor

⚠️ Lifecycle status: DEAD - TVL dropped 19.2% over 90 days

## Project Overview

- Project: Bancor (`bancor`)
- Website: [https://app.bancor.network/](https://app.bancor.network/)
- Lifecycle: dead (Tier 0, 99.1% below peak)
- Generated: 2026-07-04T14:53:05.233Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: ethereum
- Contract surface: 170 unique implementations (463 raw deployments)
- DeFi Llama TVL: $22,652,984.00
- On-chain TVL (included contracts): $37,484,755.51
- TVL by chain: Ethereum $37,484,755.51

## Project Description

Dexs. Structurally: 126 project-authored contract(s) across 1 chain(s); 8 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 27 common project-authored base contract(s) (upgradeable, time, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 476; live-surface contracts included: 463 (383 live, 80 unknown).
- Excluded by liveness: 13 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 18/88 (20.5%)
- Deployed-live implementations: 91 of 170 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 18/91
- Verified + Unaudited implementations: 73
- Verified by bytecode match: 0
- Unverified implementations: 79
- Unique implementations: 170
- Raw deployments: 463
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $5,516,516.06
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 18 match-unverified
- Tier 1 coverage: 19.3% (ChainSecurity, ConsenSys Diligence, OpenZeppelin)
- Note: This protocol is classified as [dead]. ASD of $5,516,516.06 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 11 | 12.1% | 2022-09 |
| OpenZeppelin | Tier 1 | 11 | 12.1% | 2022-08 |
| Consensys Diligence | Tier 1 | 5 | 5.5% | 2017-05 |
| PeckShield | Tier 2 | 5 | 5.5% | 2022-04 |
| Halborn | Tier 2 | 1 | 1.1% | 2020-08 |

## Contract Surface

### ✅ Verified + Audited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SmartToken | unknown | ethereum | n/a | 17 deployments: ethereum [`0x1b51a2...2ba7c7`](./contracts/ethereum-1/0x1b51a2b74de5cfb40a99d84bc027819ad02ba7c7/); ethereum `0x1f573d...a7ff1c`; ethereum `0x43e879...773dc8`; ethereum `0x4bf2f1...dd48d8`; ethereum `0x6e7c0c...8c117f`; ethereum `0x6fe08a...17fe52`; ethereum `0x718618...09119a`; ethereum `0x970d48...c0c4dd`; ethereum `0x99ebd3...67b340`; ethereum `0xb1c62b...668c96`; ethereum `0xb1cd6e...4a5533`; ethereum `0xcba34b...5239c0`; ethereum `0xdde116...f32ae7`; ethereum `0xea45c7...a10cb0`; ethereum `0xee01b3...8e6e72`; ethereum `0xf132d2...cfc8dc`; ethereum `0xf4ef10...1e0668` | ✅ Audited |
| TokenHolder | token | ethereum | n/a | 2 deployments: ethereum [`0xd1d846...6b9b55`](./contracts/ethereum-1/0xd1d846312b819743974786050848d9b3d06b9b55/); ethereum `0xebcc95...63f491` | ✅ Audited |
| BancorChanger | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb72a0f...270468`](./contracts/ethereum-1/0xb72a0fa1e537c956dfca72711c468efd81270468/); ethereum `0xca83bd...629ff4` | ✅ Audited |
| BancorNetwork | unknown | ethereum | n/a | 18 deployments: ethereum [`0x00bfa0...ca8e63`](./contracts/ethereum-1/0x00bfa047ec1c5e849779107900afd948efca8e63/); ethereum `0x0e936b...f4de4a`; ethereum `0x2f9ec3...23ccb0`; ethereum `0x3006eb...2cfc75`; ethereum `0x3ab656...04eead`; ethereum `0x568e7c...3e5e07`; ethereum `0x5f5805...3f667f`; ethereum `0x751a3e...a10255`; ethereum `0x7a84b0...07b19e`; ethereum `0x835ebb...fc45c1`; ethereum `0x8dfeb8...fea9f7`; ethereum `0x923cab...7d3a5f`; ethereum `0x955a85...59e1e6`; ethereum `0xa21e1c...d8f4ea`; ethereum `0xe0cb1b...ffa4fb`; ethereum `0xe2a277...dcd1f7`; ethereum `0xeee90e...14bfc0`; ethereum `0xf20b9e...39126a` | ✅ Audited |
| BancorNetworkInfo | periphery | ethereum | n/a | [`0xc6e7e7...7cac13`](./contracts/ethereum-1/0xc6e7e708f46a23ee9590b503f03ba3e2c67cac13/) | ✅ Audited |
| BancorPortal | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe18bd2...1f88e2`](./contracts/ethereum-1/0xe18bd28677ec53c67d765521c8a586bc611f88e2/); ethereum `0xf5de92...3d2b0f` | ✅ Audited |
| BancorV1Migration | operational_periphery | ethereum | n/a | [`0xd761d5...c3cc96`](./contracts/ethereum-1/0xd761d538240e23b465c9c08236d781029dc3cc96/) | ✅ Audited |
| BNTPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x9810e2...c07bd8`](./contracts/ethereum-1/0x9810e2949de1e2c12d576c0d6d7af0f925c07bd8/); ethereum `0xcc06b5...22af65` | ✅ Audited |
| CrowdsaleController | governance | ethereum | n/a | [`0xbbc797...f89710`](./contracts/ethereum-1/0xbbc79794599b19274850492394004087cbf89710/) | ✅ Audited |
| EtherToken | token | ethereum | n/a | 2 deployments: ethereum [`0xc08294...2ce315`](./contracts/ethereum-1/0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315/); ethereum `0xd76b5c...b746ae` | ✅ Audited |
| LiquidityPoolV2Converter | unknown | ethereum | n/a | 8 deployments: ethereum [`0x0c06d6...2ea2af`](./contracts/ethereum-1/0x0c06d629e02ddafeb276ce04e910fedc292ea2af/); ethereum `0x52d43f...acdc95`; ethereum `0x58fe3e...801fa6`; ethereum `0x61bbc2...40a0f3`; ethereum `0x802c95...ca3c20`; ethereum `0x992321...396361`; ethereum `0x9deee3...bb8b94`; ethereum `0xeb771c...927758` | ✅ Audited |
| NetworkSettings | unknown | ethereum | n/a | 3 deployments: ethereum [`0x59d037...24e0a2`](./contracts/ethereum-1/0x59d03727d8f3fc695ca74f2dfdf0fd698424e0a2/); ethereum `0x68e4f8...4ecd96`; ethereum `0x88d031...1e48ca` | ✅ Audited |
| PendingWithdrawals | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x0074f8...145f4a`](./contracts/ethereum-1/0x0074f83a6a78555cc784504358028fed2b145f4a/); ethereum `0x5f8347...bb6acb`; ethereum `0xf59fd6...96958f` | ✅ Audited |
| PoolCollection | core_logic | ethereum | n/a | 12 deployments: ethereum [`0x05e29f...c15bb8`](./contracts/ethereum-1/0x05e29f07b9710368a1d5658750e9b4b478c15bb8/); ethereum `0x395ed9...9d664b`; ethereum `0x5ce512...13a3d0`; ethereum `0x6f9124...9cb714`; ethereum `0xad3339...b813a7`; ethereum `0xb67d56...564c6c`; ethereum `0xb8d803...61da69`; ethereum `0xd2a572...d51558`; ethereum `0xd982e0...f642b4`; ethereum `0xde1b3c...d883e4`; ethereum `0xec9596...f261b3`; ethereum `0xf506b9...8f7ec7` | ✅ Audited |
| PoolMigrator | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x1a1b00...66ee69`](./contracts/ethereum-1/0x1a1b00c006793341f4dbfe62fdf9991f4366ee69/); ethereum `0x59340f...8a017d`; ethereum `0x85aa62...1d951d`; ethereum `0xc1c7ca...846219` | ✅ Audited |
| PoolToken | core_logic | ethereum | n/a | [`0xab05cf...68e344`](./contracts/ethereum-1/0xab05cf7c6c3a288cd36326e4f7b8600e7268e344/) | ✅ Audited |
| StandardRewards | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9c0b29...78320d`](./contracts/ethereum-1/0x9c0b2923db14b8625e84e8ad04764f992b78320d/); ethereum `0xa2647a...8a1947`; ethereum `0xe9f3bb...7a4b53` | ✅ Audited |
| Vault | core_logic | ethereum | n/a | [`0x60917e...2dadc4`](./contracts/ethereum-1/0x60917e542addd13bfd1a7f81cd654758052dadc4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (73)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MasterVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x649765...2bc373`](./contracts/ethereum-1/0x649765821d9f64198c905ec0b2b037a4a52bc373/); ethereum `0xf3b685...f10144` | ⚠️ Unaudited |
| DSToken | unknown | ethereum | n/a | 4 deployments: ethereum [`0x247a30...06aeee`](./contracts/ethereum-1/0x247a30f60a3566385919f1be65935a301006aeee/); ethereum `0x48fb25...387f94`; ethereum `0xdbd62d...a54e20`; ethereum `0xdce156...fbaf17` | ⚠️ Unaudited |
| ExternalRewardsVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x2a2a2b...a631e1`](./contracts/ethereum-1/0x2a2a2be5ccf20f3633c6ca2d429ac51186a631e1/); ethereum `0x30cc28...c23b1e` | ⚠️ Unaudited |
| AirDropper | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x69532f...3f20bf`](./contracts/ethereum-1/0x69532f0b00157866933cda7c1bb8bb0c373f20bf/); ethereum `0xbe8ea1...5c9499` | ⚠️ Unaudited |
| AutoCompoundingRewards | unknown | ethereum | n/a | [`0x036f8b...6f6cdc`](./contracts/ethereum-1/0x036f8b31d78ca354ada40dbd117e54f78b6f6cdc/) | ⚠️ Unaudited |
| BancorArbitrage | unknown | ethereum | n/a | 12 deployments: ethereum [`0x08da38...65461c`](./contracts/ethereum-1/0x08da389a1400e3699f58843484b0513aa065461c/); ethereum `0x2dd6b6...da75a7`; ethereum `0x2fde9e...85d1b2`; ethereum `0x577552...ed5df7`; ethereum `0x68cd59...3fb810`; ethereum `0x6dbe10...74e912`; ethereum `0x770abf...d3c343`; ethereum `0xb04e45...1a1ee2`; ethereum `0xbd19f6...5d7e51`; ethereum `0xd80a40...1b0ada`; ethereum `0xdbcb8a...9af34a`; ethereum `0xe9a8e0...a0902d` | ⚠️ Unaudited |
| BancorBuyer | unknown | ethereum | n/a | [`0x77a77e...34d924`](./contracts/ethereum-1/0x77a77eca75445841875ebb67a33d0a97dc34d924/) | ⚠️ Unaudited |
| BancorConverter | unknown | ethereum | n/a | 27 deployments: ethereum [`0x0301db...47ccf7`](./contracts/ethereum-1/0x0301db8ddf7e441b0fb4d2b4d198d852df47ccf7/); ethereum `0x0f20ad...aea19b`; ethereum `0x12c8c7...e5ed46`; ethereum `0x43fd2b...de205d`; ethereum `0x56af6b...d2f913`; ethereum `0x578f3c...b3e2d8`; ethereum `0x62c37c...caa769`; ethereum `0x6427b5...df5f28`; ethereum `0x665f41...256f0e`; ethereum `0x674391...b5e692`; ethereum `0x78c212...098840`; ethereum `0x803530...a42c59`; ethereum `0x866e79...3d5b91`; ethereum `0xa3a89d...ff5bad`; ethereum `0xabf66d...83f5e8`; ethereum `0xb626a5...1d1c78`; ethereum `0xc2a34d...bdc3b6`; ethereum `0xc4628a...144ade`; ethereum `0xc6725a...b9db29`; ethereum `0xd3ec78...c743ba`; ethereum `0xd8132c...d7c495`; ethereum `0xd8c2ca...fbdde9`; ethereum `0xdc0aeb...c356c0`; ethereum `0xdc2f2b...d30109`; ethereum `0xe21940...b3ea77`; ethereum `0xec041f...7af8b7`; ethereum `0xf8b211...58ce35` | ⚠️ Unaudited |
| BancorConverterExtensions | adapter | ethereum | n/a | [`0xf46002...9012f7`](./contracts/ethereum-1/0xf46002c37af6fb078ae1833fd447698a0c9012f7/) | ⚠️ Unaudited |
| BancorConverterFactory | unknown | ethereum | n/a | 13 deployments: ethereum [`0x03f667...81694d`](./contracts/ethereum-1/0x03f66746572a369521f681e8e90ccc737381694d/); ethereum `0x3cc4a2...a8042e`; ethereum `0x4f2ed3...24fde7`; ethereum `0x52d7c7...f1ffa2`; ethereum `0x5ed8c0...bb802b`; ethereum `0x7d3f86...c9d3dc`; ethereum `0x99d8fb...208232`; ethereum `0xa75f62...511abe`; ethereum `0xa96a30...1f7448`; ethereum `0xbef6a4...04d259`; ethereum `0xbf1ad2...2f0851`; ethereum `0xce0305...995fa5`; ethereum `0xda96de...8409a0` | ⚠️ Unaudited |
| BancorConverterRegistry | registry | ethereum | n/a | 7 deployments: ethereum [`0x85e27a...8ab847`](./contracts/ethereum-1/0x85e27a5718382f32238497e78b4a40dd778ab847/); ethereum `0x9876b4...58c3d8`; ethereum `0x9b44f7...c41a81`; ethereum `0xc1933e...cd92f5`; ethereum `0xce0247...1f12ea`; ethereum `0xf6e2d7...a4c518`; ethereum `0xf84b33...74495d` | ⚠️ Unaudited |
| BancorConverterRegistryData | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2bf0b9...c3a86b`](./contracts/ethereum-1/0x2bf0b9119535a7a5e9a3f8ad1444594845c3a86b/); ethereum `0xe500ad...39b56f` | ⚠️ Unaudited |
| BancorConverterUpgrader | unknown | ethereum | n/a | 4 deployments: ethereum [`0xaebf10...7c3d5c`](./contracts/ethereum-1/0xaebf1085dd9a0fa403a75399c956595e3a7c3d5c/); ethereum `0xc724bc...a6268f`; ethereum `0xe727b1...a3429f`; ethereum `0xfae75b...984bd5` | ⚠️ Unaudited |
| BancorFormula | unknown | ethereum | n/a | 13 deployments: ethereum [`0x524619...78afc0`](./contracts/ethereum-1/0x524619eb9b4cdffa7da13029b33f24635478afc0/); ethereum `0x55f09a...4f7398`; ethereum `0x63bc9a...2af385`; ethereum `0x6f7df4...da4fc7`; ethereum `0x71fbcf...748759`; ethereum `0x8b5db7...be62e2`; ethereum `0x8d10c0...395b98`; ethereum `0xa04989...4ae73a`; ethereum `0xd288fb...1a9603`; ethereum `0xdeecd5...e791d0`; ethereum `0xe39b6f...34bc1c`; ethereum `0xe6095e...96c58e`; ethereum `0xffd2de...454742` | ⚠️ Unaudited |
| BancorFormulaProxy | unknown | ethereum | n/a | [`0x8b0c11...3af6f2`](./contracts/ethereum-1/0x8b0c11e0df925387de1ce92504fe0e4af23af6f2/) | ⚠️ Unaudited |
| BancorGasPriceLimit | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x7fd539...4daa6e`](./contracts/ethereum-1/0x7fd539ef2be3192b6d6bdf095968bac2d74daa6e/); ethereum `0xafb06c...b99590` | ⚠️ Unaudited |
| BancorGovernance | unknown | ethereum | n/a | 2 deployments: ethereum [`0x892f48...5d00e4`](./contracts/ethereum-1/0x892f481bd6e9d7d26ae365211d9b45175d5d00e4/); ethereum `0xebfafc...f82eb2` | ⚠️ Unaudited |
| BancorNetwork | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2f1475...1638a3`](./contracts/ethereum-1/0x2f14750b0d267be47dcd30a134796c2e4b1638a3/); ethereum `0xeef417...9dd4fb` | ⚠️ Unaudited |
| BancorNetworkInfo | periphery | ethereum | n/a | 2 deployments: ethereum [`0x8e303d...d6e760`](./contracts/ethereum-1/0x8e303d296851b320e6a697bacb979d13c9d6e760/); ethereum `0xfd47c7...66ae7b` | ⚠️ Unaudited |
| BancorNetworkPathFinder | unknown | ethereum | n/a | 9 deployments: ethereum [`0x22cb7c...88daef`](./contracts/ethereum-1/0x22cb7c925357faabebe077e5b5bcfa046388daef/); ethereum `0x41172c...bf9578`; ethereum `0x6ae013...3f79d8`; ethereum `0x6f0cd8...b72861`; ethereum `0x9afb6f...10d137`; ethereum `0xa47228...dfa2b5`; ethereum `0xa8c415...bb37bb`; ethereum `0xb290f5...2ec7ba`; ethereum `0xb9e996...272a92` | ⚠️ Unaudited |
| BancorPortal | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9f292c...e133d5`](./contracts/ethereum-1/0x9f292ccb69ff9a0644475c7bc8d4651039e133d5/); ethereum `0xe7e533...d274d4` | ⚠️ Unaudited |
| BancorPriceFloor | operational_periphery | ethereum | n/a | [`0x7ec6a7...268549`](./contracts/ethereum-1/0x7ec6a713197fcbb4cfe7213800470b0940268549/) | ⚠️ Unaudited |
| BancorQuickConverter | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcf1cc6...49139b`](./contracts/ethereum-1/0xcf1cc6ed5b653def7417e3fa93992c3ffe49139b/); ethereum `0xf87a7e...dd38b1` | ⚠️ Unaudited |
| BancorX | unknown | ethereum | n/a | 7 deployments: ethereum [`0x39198f...e321f3`](./contracts/ethereum-1/0x39198fd6a016e0fb17370b58916801d59fe321f3/); ethereum `0x3fdf3b...c83749`; ethereum `0x57928a...8f1f73`; ethereum `0xc326d5...754816`; ethereum `0xe7abef...da1bde`; ethereum `0xeaf3ce...6069c1`; ethereum `0xeddf6e...eda30b` | ⚠️ Unaudited |
| BancorXHelper | periphery | ethereum | n/a | [`0x984384...b5ba4b`](./contracts/ethereum-1/0x984384e2bc5ee14260c7dbbe77fa788da4b5ba4b/) | ⚠️ Unaudited |
| BNTPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x02651e...95eaca`](./contracts/ethereum-1/0x02651e355d26f3506c1e644ba393fdd9ac95eaca/); ethereum `0xfb07a6...b1ffa3` | ⚠️ Unaudited |
| CarbonBatcher | periphery | ethereum | n/a | [`0x70ab82...25842a`](./contracts/ethereum-1/0x70ab8222a5fff4b360764bb51cbea76f0025842a/) | ⚠️ Unaudited |
| CarbonController | governance | ethereum | n/a | 7 deployments: ethereum [`0x16b9b6...79d72d`](./contracts/ethereum-1/0x16b9b6f8d2077db1032531f0e1f6019d2679d72d/); ethereum `0x1a3122...c218cf`; ethereum `0x1e0804...32bf2c`; ethereum `0x21f02a...c086ee`; ethereum `0x5ec3b3...4e5b20`; ethereum `0x6db6ee...8b12c1`; ethereum `0xd59bca...063ff8` | ⚠️ Unaudited |
| CarbonPOL | unknown | ethereum | n/a | 2 deployments: ethereum [`0x779b3b...4ab123`](./contracts/ethereum-1/0x779b3bea233ebc5947c5ff0ffd7f4f90654ab123/); ethereum `0x945ac6...287105` | ⚠️ Unaudited |
| CarbonVortex | unknown | ethereum | n/a | 5 deployments: ethereum [`0x2c0fa8...923502`](./contracts/ethereum-1/0x2c0fa8b5c3a26ae8f014efb50ff27d95dd923502/); ethereum `0x55effb...f472ad`; ethereum `0x676b91...ce95c0`; ethereum `0x727170...f0fb9e`; ethereum `0xd241a7...be23ca` | ⚠️ Unaudited |
| CarbonVortex | unknown | ethereum | n/a | [`0xd053dc...d79801`](./contracts/ethereum-1/0xd053dcd7037af7204cece544ea9f227824d79801/) | ⚠️ Unaudited |
| CheckpointStore | unknown | ethereum | n/a | [`0xf8a2fb...b87b32`](./contracts/ethereum-1/0xf8a2fb650e25a26ce839d64be8a0abbcb0b87b32/) | ⚠️ Unaudited |
| ContractFeatures | unknown | ethereum | n/a | [`0x563172...6ce699`](./contracts/ethereum-1/0x563172281800b139f69fb038cc2c08cad56ce699/) | ⚠️ Unaudited |
| ContractRegistry | registry | ethereum | n/a | 7 deployments: ethereum [`0x7148b1...e395e6`](./contracts/ethereum-1/0x7148b1c9154bcf273a2c7d7b90e3edc6fee395e6/); ethereum `0x95fee9...91553b`; ethereum `0xa3bf8e...718e6a`; ethereum `0xa9d755...622ade`; ethereum `0xc74be0...49d0a4`; ethereum `0xd19970...8738b3`; ethereum `0xf078b4...9b88d6` | ⚠️ Unaudited |
| ConversionPathFinder | unknown | ethereum | n/a | 3 deployments: ethereum [`0x33f772...85d323`](./contracts/ethereum-1/0x33f77247994cb0ae517fcbd7b78c97a7e385d323/); ethereum `0x3663d6...51fcc3`; ethereum `0xa48e64...bbe489` | ⚠️ Unaudited |
| ConverterFactory | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4ade0e...8ea269`](./contracts/ethereum-1/0x4ade0e57bc2e129f62547af4d620fb40d28ea269/); ethereum `0x5c58ac...0a03e0`; ethereum `0x9afb9d...4dcb25`; ethereum `0xc9cd0b...2eb348` | ⚠️ Unaudited |
| ConverterRegistry | unknown | ethereum | n/a | 5 deployments: ethereum [`0x06915f...7c3c6d`](./contracts/ethereum-1/0x06915fb082d34ff4fe5105e5ff2829dc5e7c3c6d/); ethereum `0x3b3bf1...f51e55`; ethereum `0xc0205e...a60f19`; ethereum `0xdbe6a3...a245c9`; ethereum `0xeb5378...296ca9` | ⚠️ Unaudited |
| ConverterUpgrader | unknown | ethereum | n/a | 5 deployments: ethereum [`0x430626...6e0f31`](./contracts/ethereum-1/0x430626f79ac4ecea6a4be20ad3d68965b36e0f31/); ethereum `0x7dfb51...c87410`; ethereum `0x92f18a...67d724`; ethereum `0x9eed81...3ac742`; ethereum `0xcff01c...8be486` | ⚠️ Unaudited |
| DADBridgeWrapper | operational_periphery | ethereum | n/a | [`0x62a65d...444557`](./contracts/ethereum-1/0x62a65d8d5803c825096c76509d9442819e444557/) | ⚠️ Unaudited |
| ExternalProtectionVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0xea4d66...61c27c`](./contracts/ethereum-1/0xea4d665a290c9171ebcd1fca4068e55bb461c27c/); ethereum `0xfd3166...2cad57` | ⚠️ Unaudited |
| FeeBurner | unknown | ethereum | n/a | [`0x4610fc...195445`](./contracts/ethereum-1/0x4610fc898f94ac0b6bfe2b836fd59f6d03195445/) | ⚠️ Unaudited |
| FixedSupplyUpgrader | unknown | ethereum | n/a | 2 deployments: ethereum [`0x808991...aaa58d`](./contracts/ethereum-1/0x808991993c105dd7472b568500fee9ddd3aaa58d/); ethereum `0x92c79b...8acc08` | ⚠️ Unaudited |
| LiquidityPoolV1Converter | unknown | ethereum | n/a | 10 deployments: ethereum [`0x1c378a...d38d1a`](./contracts/ethereum-1/0x1c378a82064799444b14b3b10fc5c4d5e3d38d1a/); ethereum `0x271a2c...b4f5bf`; ethereum `0x427250...b78b94`; ethereum `0x7026dd...32ce78`; ethereum `0x74bc8f...b65efc`; ethereum `0x841a5c...3f5998`; ethereum `0x8e2491...635143`; ethereum `0xac621a...0f6b08`; ethereum `0xb59382...ea125c`; ethereum `0xc3a2fa...2104e5` | ⚠️ Unaudited |
| LiquidityPoolV1ConverterFactory | unknown | ethereum | n/a | 10 deployments: ethereum [`0x273d13...6b2a2d`](./contracts/ethereum-1/0x273d13a01e15154182b91f1daab6bd3bfa6b2a2d/); ethereum `0x2b6d1d...213f55`; ethereum `0x363923...8f664c`; ethereum `0x39b9ed...3418fd`; ethereum `0x3e2188...247893`; ethereum `0x554e32...b07d15`; ethereum `0xb09e8c...f4a042`; ethereum `0xc7b626...75d679`; ethereum `0xc85c58...0f3d4e`; ethereum `0xd282fe...46d0dc` | ⚠️ Unaudited |
| LiquidityPoolV2ConverterAnchorFactory | registry | ethereum | n/a | [`0x5e37e1...6a12ec`](./contracts/ethereum-1/0x5e37e1e55bbe2a7c4f77c97da0a8e261e36a12ec/) | ⚠️ Unaudited |
| LiquidityPoolV2ConverterCustomFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0xcbefd9...c7b098`](./contracts/ethereum-1/0xcbefd93a4a405a13f7ebfa1796c91d677dc7b098/); ethereum `0xe88a9a...42ef5e` | ⚠️ Unaudited |
| LiquidityPoolV2ConverterFactory | unknown | ethereum | n/a | 8 deployments: ethereum [`0x0d2d64...4b868a`](./contracts/ethereum-1/0x0d2d6404d67355199033ac6ce0af0f31144b868a/); ethereum `0x1acb35...1fa59a`; ethereum `0x2f6bff...406fb7`; ethereum `0x6a41ce...80e7be`; ethereum `0x6cd352...a6f3dd`; ethereum `0x8164f8...4f6ed3`; ethereum `0xacff89...bf00a5`; ethereum `0xb68c5d...fa3bfe` | ⚠️ Unaudited |
| LiquidityProtection | unknown | ethereum | n/a | 19 deployments: ethereum [`0x086e10...0ecdd6`](./contracts/ethereum-1/0x086e10c99c1226623a317fdd22cf3c43a10ecdd6/); ethereum `0x135742...494e99`; ethereum `0x14d074...8ccfd5`; ethereum `0x26c57e...179903`; ethereum `0x2966a1...fc1ef6`; ethereum `0x42743f...816f90`; ethereum `0x49d689...f9c051`; ethereum `0x53f36c...4ace88`; ethereum `0x54c75f...b84f65`; ethereum `0x633088...2b311a`; ethereum `0x64f21d...97f176`; ethereum `0x843bd7...65d8e6`; ethereum `0x853c2d...07220e`; ethereum `0x85cbbb...9001e5`; ethereum `0x9ab934...601bcf`; ethereum `0xc9d9dc...93c298`; ethereum `0xddc05a...e4f5fb`; ethereum `0xeead39...8f3c0c`; ethereum `0xfa6711...5cb220` | ⚠️ Unaudited |
| LiquidityProtectionSettings | unknown | ethereum | n/a | [`0xd444ec...1d7da9`](./contracts/ethereum-1/0xd444ec18952c7caf09636f21807683dacc1d7da9/) | ⚠️ Unaudited |
| LiquidityProtectionStore | unknown | ethereum | n/a | [`0xf5fab5...3cfb55`](./contracts/ethereum-1/0xf5fab5dbd2f3bf675de4cb76517d4767013cfb55/) | ⚠️ Unaudited |
| LiquidityProtectionSystemStore | unknown | ethereum | n/a | [`0xc4c563...b87131`](./contracts/ethereum-1/0xc4c5634de585d43daec8fa2a6fb6286cd9b87131/) | ⚠️ Unaudited |
| LiquidTokenConverter | unknown | ethereum | n/a | 9 deployments: ethereum [`0x1b5ef5...3e27fe`](./contracts/ethereum-1/0x1b5ef5c0b42f8bef27d9f0fee21f28a7763e27fe/); ethereum `0x23f351...b808b0`; ethereum `0x5936a8...42402b`; ethereum `0x7fa080...c77cf7`; ethereum `0x8f535c...ee822f`; ethereum `0xddfcee...0b82b3`; ethereum `0xe0f510...67c281`; ethereum `0xe24b63...b5bc72`; ethereum `0xf51fa5...57f2cf` | ⚠️ Unaudited |
| LiquidTokenConverterFactory | unknown | ethereum | n/a | 9 deployments: ethereum [`0x2358ae...f46144`](./contracts/ethereum-1/0x2358ae98efc851954a19fe8b80d14a2f6cf46144/); ethereum `0x280ce5...7af27d`; ethereum `0x9f7206...15993b`; ethereum `0xa0005a...5a80f8`; ethereum `0xbb18cd...438172`; ethereum `0xcd9c22...921c83`; ethereum `0xce0ed5...d18edb`; ethereum `0xde11d6...259552`; ethereum `0xf68f0e...2778a5` | ⚠️ Unaudited |
| MultiSigWallet | governance | ethereum | n/a | 17 deployments: ethereum [`0x589411...4e4658`](./contracts/ethereum-1/0x5894110995b8c8401bd38262ba0c8ee41d4e4658/); ethereum `0x6d3bf5...4c8146`; ethereum `0x79e7cc...10dd26`; ethereum `0x7af136...0393ee`; ethereum `0x84af4a...55df19`; ethereum `0x8c4b31...3aecfb`; ethereum `0x9d0357...7f3010`; ethereum `0xad0483...d24036`; ethereum `0xb43c50...737a88`; ethereum `0xb7f230...cf341c`; ethereum `0xc39e56...86051d`; ethereum `0xc7a965...070acc`; ethereum `0xc9eaa9...dc0f31`; ethereum `0xcc1aac...f9db75`; ethereum `0xd046ee...36e177`; ethereum `0xd498c8...06f5b8`; ethereum `0xe2b1b8...d329cd` | ⚠️ Unaudited |
| NetworkSettings | unknown | ethereum | n/a | 2 deployments: ethereum [`0x51a6d0...1cebd1`](./contracts/ethereum-1/0x51a6d03b156af044bda570cf35a919db851cebd1/); ethereum `0x83e181...09b14f` | ⚠️ Unaudited |
| PendingWithdrawals | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x7f0506...bb92ce`](./contracts/ethereum-1/0x7f05068f4dcc4df9dd54f52b647b0241ebbb92ce/); ethereum `0x857eb0...ba9b8a` | ⚠️ Unaudited |
| PoolMigrator | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x330ee7...4d198d`](./contracts/ethereum-1/0x330ee79a0a4f310315d58629c3afc20d384d198d/); ethereum `0x97cec0...e4a191` | ⚠️ Unaudited |
| PoolTokenFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x9e9129...8d9d5f`](./contracts/ethereum-1/0x9e912953db31fe933bda43374208e967058d9d5f/); ethereum `0xab4a0b...1f7108` | ⚠️ Unaudited |
| PoolTokensContainer | unknown | ethereum | n/a | [`0x0bfa9a...325630`](./contracts/ethereum-1/0x0bfa9a42e1a86bbb9e0bc43e394b880416325630/) | ⚠️ Unaudited |
| PriceOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xd32c9a...29f8a1`](./contracts/ethereum-1/0xd32c9af1587e2fc89498fd3c5e303fec9b29f8a1/); ethereum `0xea6f6d...50c826` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 2 deployments: ethereum [`0x059d3d...2cf9a1`](./contracts/ethereum-1/0x059d3d353336886cfaf17383c9fb6715652cf9a1/); ethereum `0x642879...2f0034` | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | 8 deployments: ethereum [`0x035867...6696a7`](./contracts/ethereum-1/0x0358678f0d150681531f317de7d9a3aca56696a7/); ethereum `0x318fea...eb3e67`; ethereum `0x457fe4...36859f`; ethereum `0x4b9069...5c9841`; ethereum `0x5dafb3...b3080b`; ethereum `0xb443de...90dfce`; ethereum `0xe4f2a9...2931e6`; ethereum `0xeb69bd...1f2f2b` | ⚠️ Unaudited |
| StakingRewardsClaim | unknown | ethereum | n/a | [`0x6248e4...88af58`](./contracts/ethereum-1/0x6248e4118818c9075a142ef8a12e09d49888af58/) | ⚠️ Unaudited |
| StakingRewardsStore | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b0f32...0f9614`](./contracts/ethereum-1/0x6b0f323c752a96fb1def915bc963ed6d5b0f9614/); ethereum `0x891aff...fb5693` | ⚠️ Unaudited |
| StandardPoolConverter | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x55069d...27f6e6`](./contracts/ethereum-1/0x55069dd523b39933eb872f6a34307e71ae27f6e6/); ethereum `0x5ba02e...30eb1a` | ⚠️ Unaudited |
| StandardPoolConverterFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0xbc4a79...8126e6`](./contracts/ethereum-1/0xbc4a79787d3dafcb781a1e4ff914204db38126e6/); ethereum `0xdbc3c6...8fa9f2`; ethereum `0xff7015...eb9f3d` | ⚠️ Unaudited |
| StandardRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb0b958...00f372`](./contracts/ethereum-1/0xb0b958398abb0b5db4ce4d7598fb868f5a00f372/); ethereum `0xdfe331...881f0d` | ⚠️ Unaudited |
| TokenGovernance | token | ethereum | n/a | 2 deployments: ethereum [`0xa489c2...afc244`](./contracts/ethereum-1/0xa489c2b5b36835a327851ab917a80562b5afc244/); ethereum `0xce1462...07ef94` | ⚠️ Unaudited |
| TransparentUpgradeableProxyImmutable | proxy | ethereum | n/a | 2 deployments: ethereum [`0x41eeba...9488cb`](./contracts/ethereum-1/0x41eeba3355d7d6ff628b7982f3f9d055c39488cb/); ethereum `0x9a1deb...a2296d` | ⚠️ Unaudited |
| Utils | unknown | ethereum | n/a | [`0x2c7b0f...40adfc`](./contracts/ethereum-1/0x2c7b0f0527828357b2daa898da3021955640adfc/) | ⚠️ Unaudited |
| VortexBurner | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2f87b1...0f1142`](./contracts/ethereum-1/0x2f87b1fca1769bc3361700078e1985b2dc0f1142/); ethereum `0x8843f6...976748` | ⚠️ Unaudited |
| Voucher | unknown | ethereum | n/a | 2 deployments: ethereum [`0x460cb0...109d0a`](./contracts/ethereum-1/0x460cb0b4fb97b5a05b6105d7fd8d464902109d0a/); ethereum `0xc6b2f9...953997` | ⚠️ Unaudited |
| Whitelist | unknown | ethereum | n/a | [`0xc5b87c...3124fe`](./contracts/ethereum-1/0xc5b87c4b8e25f863935722a9767658102d3124fe/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (79)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x06096d...02c6ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x083782...37745b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x091035...ab083f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e4e83...21355b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x103607...25c031` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x136593...412b89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x176707...9dde6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1894d6...e9f9ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b5674...7263d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20bced...f4d8d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b6563...b98bf1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2bc345...535bd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ca576...1d3ca2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35db38...f97a39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3aafb6...874d13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3af2bd...d6ca55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c497b...b30ea9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ce6eb...21d2f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3df58f...6b7f19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40eec5...316953` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43f604...0cb345` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46cce2...64225f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b506f...879b3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52d47d...cf1631` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b828a...997453` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x609f13...315f1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x627d32...7093cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62d883...f6c5ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62f233...284231` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63b95a...9baa68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69b1d7...1bbe82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dd1a5...1c179c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e0dfd...ef7755` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f904b...b819c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x700ac7...363009` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x709032...03975b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x741b92...d7ef78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ae27c...4e1f44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8006ee...e05a5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x840321...36610c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b4e11...b988f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d634a...d3e639` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ed9a1...404010` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f7d6f...90e3db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x924fa6...ae3dbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9461fb...76e466` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x947766...892d01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97b155...64b103` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f2833...5f6eb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5c10d...72b398` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6cf31...a28c16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa93321...fd4c9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafe57d...a19cb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb005d0...68a52f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb59abc...e40dcf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc12aa...db57d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8c1af...433a9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc972d0...b651fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca0907...6e9142` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbd283...626694` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcce7a4...5ba322` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccf9c9...d80bf0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd54fa...7467db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcdbb8b...178cb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd38b75...453a70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd523d8...1b1a12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd59530...4dc512` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd72cf0...559ee9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc7040...9646be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb1734...77406c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef2d93...e28358` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf240ea...168c4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3ae8d...707252` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3d889...81e3a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4776f...102654` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf68f21...1ec59b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf87714...c2bece` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc6638...894a9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfeda93...a64ef1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-BancorV3-v1.0.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/PeckShield-Audit-Report-BancorV3-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 5 | n/a |
| [OpenZeppelin-V3-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-V3-Audit-Report.pdf) | OpenZeppelin | Audit | 2022-06 | stale | Direct | contract_name | 11 | n/a |
| [OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf) | OpenZeppelin | Audit | 2022-08 | stale | Direct | contract_name | 2 | n/a |
| [ChainSecurity-V3-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/ChainSecurity-V3-Audit-Report.pdf) | ChainSecurity | Audit | 2022-09 | stale | Direct | contract_name | 11 | n/a |
| [drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view](https://drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view?usp=sharing) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view](https://drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view?usp=sharing) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view](https://drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view?usp=sharing) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view](https://drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view?usp=sharing) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Bancor_smartcontract_halborn_report_V1.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Bancor_smartcontract_halborn_report_V1.pdf) | Halborn | Audit | 2020-08 | stale | Direct | contract_name | 1 | n/a |
| [drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view](https://drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view?usp=sharing) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory)](https://gist.github.com/Arachnid/c65fd1bd61a8e0294aef95a4808edc78) | Consensys Diligence | Audit | 2017-05 | stale | Direct | contract_name | 5 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x69532f...3f20bf`](./contracts/ethereum-1/0x69532f0b00157866933cda7c1bb8bb0c373f20bf/) | AirDropper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08da38...65461c`](./contracts/ethereum-1/0x08da389a1400e3699f58843484b0513aa065461c/) | BancorArbitrage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77a77e...34d924`](./contracts/ethereum-1/0x77a77eca75445841875ebb67a33d0a97dc34d924/) | BancorBuyer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0301db...47ccf7`](./contracts/ethereum-1/0x0301db8ddf7e441b0fb4d2b4d198d852df47ccf7/) | BancorConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf46002...9012f7`](./contracts/ethereum-1/0xf46002c37af6fb078ae1833fd447698a0c9012f7/) | BancorConverterExtensions | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03f667...81694d`](./contracts/ethereum-1/0x03f66746572a369521f681e8e90ccc737381694d/) | BancorConverterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85e27a...8ab847`](./contracts/ethereum-1/0x85e27a5718382f32238497e78b4a40dd778ab847/) | BancorConverterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bf0b9...c3a86b`](./contracts/ethereum-1/0x2bf0b9119535a7a5e9a3f8ad1444594845c3a86b/) | BancorConverterRegistryData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaebf10...7c3d5c`](./contracts/ethereum-1/0xaebf1085dd9a0fa403a75399c956595e3a7c3d5c/) | BancorConverterUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x524619...78afc0`](./contracts/ethereum-1/0x524619eb9b4cdffa7da13029b33f24635478afc0/) | BancorFormula | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b0c11...3af6f2`](./contracts/ethereum-1/0x8b0c11e0df925387de1ce92504fe0e4af23af6f2/) | BancorFormulaProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fd539...4daa6e`](./contracts/ethereum-1/0x7fd539ef2be3192b6d6bdf095968bac2d74daa6e/) | BancorGasPriceLimit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x892f48...5d00e4`](./contracts/ethereum-1/0x892f481bd6e9d7d26ae365211d9b45175d5d00e4/) | BancorGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f1475...1638a3`](./contracts/ethereum-1/0x2f14750b0d267be47dcd30a134796c2e4b1638a3/) | BancorNetwork | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22cb7c...88daef`](./contracts/ethereum-1/0x22cb7c925357faabebe077e5b5bcfa046388daef/) | BancorNetworkPathFinder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ec6a7...268549`](./contracts/ethereum-1/0x7ec6a713197fcbb4cfe7213800470b0940268549/) | BancorPriceFloor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf1cc6...49139b`](./contracts/ethereum-1/0xcf1cc6ed5b653def7417e3fa93992c3ffe49139b/) | BancorQuickConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39198f...e321f3`](./contracts/ethereum-1/0x39198fd6a016e0fb17370b58916801d59fe321f3/) | BancorX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x984384...b5ba4b`](./contracts/ethereum-1/0x984384e2bc5ee14260c7dbbe77fa788da4b5ba4b/) | BancorXHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70ab82...25842a`](./contracts/ethereum-1/0x70ab8222a5fff4b360764bb51cbea76f0025842a/) | CarbonBatcher | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16b9b6...79d72d`](./contracts/ethereum-1/0x16b9b6f8d2077db1032531f0e1f6019d2679d72d/) | CarbonController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x779b3b...4ab123`](./contracts/ethereum-1/0x779b3bea233ebc5947c5ff0ffd7f4f90654ab123/) | CarbonPOL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c0fa8...923502`](./contracts/ethereum-1/0x2c0fa8b5c3a26ae8f014efb50ff27d95dd923502/) | CarbonVortex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8a2fb...b87b32`](./contracts/ethereum-1/0xf8a2fb650e25a26ce839d64be8a0abbcb0b87b32/) | CheckpointStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x563172...6ce699`](./contracts/ethereum-1/0x563172281800b139f69fb038cc2c08cad56ce699/) | ContractFeatures | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7148b1...e395e6`](./contracts/ethereum-1/0x7148b1c9154bcf273a2c7d7b90e3edc6fee395e6/) | ContractRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33f772...85d323`](./contracts/ethereum-1/0x33f77247994cb0ae517fcbd7b78c97a7e385d323/) | ConversionPathFinder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ade0e...8ea269`](./contracts/ethereum-1/0x4ade0e57bc2e129f62547af4d620fb40d28ea269/) | ConverterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06915f...7c3c6d`](./contracts/ethereum-1/0x06915fb082d34ff4fe5105e5ff2829dc5e7c3c6d/) | ConverterRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x430626...6e0f31`](./contracts/ethereum-1/0x430626f79ac4ecea6a4be20ad3d68965b36e0f31/) | ConverterUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62a65d...444557`](./contracts/ethereum-1/0x62a65d8d5803c825096c76509d9442819e444557/) | DADBridgeWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea4d66...61c27c`](./contracts/ethereum-1/0xea4d665a290c9171ebcd1fca4068e55bb461c27c/) | ExternalProtectionVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4610fc...195445`](./contracts/ethereum-1/0x4610fc898f94ac0b6bfe2b836fd59f6d03195445/) | FeeBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x808991...aaa58d`](./contracts/ethereum-1/0x808991993c105dd7472b568500fee9ddd3aaa58d/) | FixedSupplyUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c378a...d38d1a`](./contracts/ethereum-1/0x1c378a82064799444b14b3b10fc5c4d5e3d38d1a/) | LiquidityPoolV1Converter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x273d13...6b2a2d`](./contracts/ethereum-1/0x273d13a01e15154182b91f1daab6bd3bfa6b2a2d/) | LiquidityPoolV1ConverterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e37e1...6a12ec`](./contracts/ethereum-1/0x5e37e1e55bbe2a7c4f77c97da0a8e261e36a12ec/) | LiquidityPoolV2ConverterAnchorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbefd9...c7b098`](./contracts/ethereum-1/0xcbefd93a4a405a13f7ebfa1796c91d677dc7b098/) | LiquidityPoolV2ConverterCustomFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d2d64...4b868a`](./contracts/ethereum-1/0x0d2d6404d67355199033ac6ce0af0f31144b868a/) | LiquidityPoolV2ConverterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x086e10...0ecdd6`](./contracts/ethereum-1/0x086e10c99c1226623a317fdd22cf3c43a10ecdd6/) | LiquidityProtection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd444ec...1d7da9`](./contracts/ethereum-1/0xd444ec18952c7caf09636f21807683dacc1d7da9/) | LiquidityProtectionSettings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5fab5...3cfb55`](./contracts/ethereum-1/0xf5fab5dbd2f3bf675de4cb76517d4767013cfb55/) | LiquidityProtectionStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4c563...b87131`](./contracts/ethereum-1/0xc4c5634de585d43daec8fa2a6fb6286cd9b87131/) | LiquidityProtectionSystemStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b5ef5...3e27fe`](./contracts/ethereum-1/0x1b5ef5c0b42f8bef27d9f0fee21f28a7763e27fe/) | LiquidTokenConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2358ae...f46144`](./contracts/ethereum-1/0x2358ae98efc851954a19fe8b80d14a2f6cf46144/) | LiquidTokenConverterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51a6d0...1cebd1`](./contracts/ethereum-1/0x51a6d03b156af044bda570cf35a919db851cebd1/) | NetworkSettings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f0506...bb92ce`](./contracts/ethereum-1/0x7f05068f4dcc4df9dd54f52b647b0241ebbb92ce/) | PendingWithdrawals | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x330ee7...4d198d`](./contracts/ethereum-1/0x330ee79a0a4f310315d58629c3afc20d384d198d/) | PoolMigrator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bfa9a...325630`](./contracts/ethereum-1/0x0bfa9a42e1a86bbb9e0bc43e394b880416325630/) | PoolTokensContainer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd32c9a...29f8a1`](./contracts/ethereum-1/0xd32c9af1587e2fc89498fd3c5e303fec9b29f8a1/) | PriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x035867...6696a7`](./contracts/ethereum-1/0x0358678f0d150681531f317de7d9a3aca56696a7/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6248e4...88af58`](./contracts/ethereum-1/0x6248e4118818c9075a142ef8a12e09d49888af58/) | StakingRewardsClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b0f32...0f9614`](./contracts/ethereum-1/0x6b0f323c752a96fb1def915bc963ed6d5b0f9614/) | StakingRewardsStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55069d...27f6e6`](./contracts/ethereum-1/0x55069dd523b39933eb872f6a34307e71ae27f6e6/) | StandardPoolConverter | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc4a79...8126e6`](./contracts/ethereum-1/0xbc4a79787d3dafcb781a1e4ff914204db38126e6/) | StandardPoolConverterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa489c2...afc244`](./contracts/ethereum-1/0xa489c2b5b36835a327851ab917a80562b5afc244/) | TokenGovernance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c7b0f...40adfc`](./contracts/ethereum-1/0x2c7b0f0527828357b2daa898da3021955640adfc/) | Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f87b1...0f1142`](./contracts/ethereum-1/0x2f87b1fca1769bc3361700078e1985b2dc0f1142/) | VortexBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x460cb0...109d0a`](./contracts/ethereum-1/0x460cb0b4fb97b5a05b6105d7fd8d464902109d0a/) | Voucher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5b87c...3124fe`](./contracts/ethereum-1/0xc5b87c4b8e25f863935722a9767658102d3124fe/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 96 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 71 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=35

Zero-match audit list:

- [15068] drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view
- [15069] drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view
- [15070] drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view
- [15071] drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view
- [15073] drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view

Fork inheritance lineage and inherited audits are included when available.
