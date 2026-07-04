# Agentic Audit Brief: Peapods Finance

## Project Overview

- Project: Peapods Finance (`peapods-finance`)
- Website: [https://peapods.finance](https://peapods.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:42.169Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum, base, berachain, ethereum, mode, sonic
- Contract surface: 132 unique implementations (247 raw deployments)
- DeFi Llama TVL: $5,268,642.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 59 project-authored contract(s) across 6 chain(s); 3 ERC4626 vaults, 9 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 13 common project-authored base contract(s) (decentralizedindex, oftcore, oapp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 420; live-surface contracts included: 247 (126 live, 121 unknown).
- Excluded by liveness: 173 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/33 (33.3%)
- Deployed-live implementations: 34 of 132 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/39
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 93
- Unique implementations: 132
- Raw deployments: 247
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 12 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 11 | 28.2% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CamelotDexAdapter | adapter | arbitrum | n/a | 6 deployments: mode `0x77683b...af7f57`; mode `0x97be1f...b65a36`; mode `0xc38d42...56198f`; arbitrum [`0x22dc5b...1aad7a`](./contracts/arbitrum-42161/0x22dc5b739b34f98be2f2f262bd104ed9ab1aad7a/); arbitrum `0x83eccb...823f94`; arbitrum `0xac9d76...ceb10e` | ✅ Audited |
| DIAOracleV2SinglePriceOracle | operational_periphery | ethereum | n/a | [`0xc815d4...e4466e`](./contracts/ethereum-1/0xc815d43b0d5965d91d06867fff51b2c845e4466e/) | ✅ Audited |
| ERC20Bridgeable | operational_periphery | sonic | n/a | 5 deployments: sonic [`0x02f928...2df875`](./contracts/sonic-146/0x02f92800f57bcd74066f5709f1daa1a4302df875/); base [`0x02f928...2df875`](./contracts/base-8453/0x02f92800f57bcd74066f5709f1daa1a4302df875/); mode [`0x02f928...2df875`](./contracts/mode-34443/0x02f92800f57bcd74066f5709f1daa1a4302df875/); arbitrum [`0x02f928...2df875`](./contracts/arbitrum-42161/0x02f92800f57bcd74066f5709f1daa1a4302df875/); berachain [`0x02f928...2df875`](./contracts/berachain-80094/0x02f92800f57bcd74066f5709f1daa1a4302df875/) | ✅ Audited |
| IndexManager | governance | ethereum | n/a | 10 deployments: ethereum [`0x0bb39b...b4ae6b`](./contracts/ethereum-1/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); ethereum `0x6effcf...b7666e`; sonic `0x9e054f...166060`; base [`0x0bb39b...b4ae6b`](./contracts/base-8453/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); base `0x556059...94ec30`; mode [`0x0bb39b...b4ae6b`](./contracts/mode-34443/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); mode `0x93121a...a567bc`; arbitrum [`0x0bb39b...b4ae6b`](./contracts/arbitrum-42161/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); arbitrum `0x64511c...b14fd8`; berachain `0xc9260c...932f01` | ✅ Audited |
| IndexUtils | unknown | sonic | n/a | 12 deployments: ethereum `0x2bcca7...a1054c`; ethereum `0x521e24...bd03cc`; ethereum `0x88b6db...87d9b7`; ethereum `0x9a103a...7b8db6`; sonic [`0x242325...0f5eca`](./contracts/sonic-146/0x24232517e648525a2a5b9935aadc42ae250f5eca/); base `0x37cd1f...659dde`; base `0x490b03...15826d`; mode `0x9e3417...e3400c`; mode `0x9e9350...efdbe6`; arbitrum `0x4b6d3f...745e0d`; arbitrum `0x5c5c28...65f0c0`; berachain `0x40bd82...386717` | ✅ Audited |
| LendingAssetVaultFactory | unknown | berachain | n/a | 11 deployments: ethereum `0xa811d1...191875`; ethereum `0xbab29f...7912c6`; sonic `0x6786d3...b7a8ec`; sonic `0x898cc8...21d55c`; sonic `0xbf9d21...546855`; base `0x3cc2a9...875cfc`; base `0x48f39f...b7c31e`; mode `0xb7d368...c2b0a3`; arbitrum `0xa9a92c...e1c95e`; arbitrum `0xf252b0...3bda3a`; berachain [`0x37cd1f...659dde`](./contracts/berachain-80094/0x37cd1fd593639d453cd97670bac4e59fd5659dde/) | ✅ Audited |
| PEAS | unknown | ethereum | n/a | [`0x02f928...2df875`](./contracts/ethereum-1/0x02f92800f57bcd74066f5709f1daa1a4302df875/) | ✅ Audited |
| UnweightedIndex | unknown | ethereum | n/a | 2 deployments: ethereum [`0x290e6d...787f7a`](./contracts/ethereum-1/0x290e6d7f9b92d338d2dd44e8358bf11b2f787f7a/); ethereum `0x3c56ca...f5451c` | ✅ Audited |
| V2ReservesCamelot | unknown | arbitrum | n/a | [`0xec8a49...3eeaf8`](./contracts/arbitrum-42161/0xec8a490000e9553a373e54ed71c09c7aa73eeaf8/) | ✅ Audited |
| V3TwapCamelotUtilities | unknown | mode | n/a | 2 deployments: mode [`0x948e2e...18ad48`](./contracts/mode-34443/0x948e2e5f60fdb55052bb9453bb641ca98518ad48/); arbitrum `0xe8869f...e11458` | ✅ Audited |
| WeightedIndex | unknown | ethereum | n/a | 16 deployments: ethereum [`0x027ce4...f9b1c7`](./contracts/ethereum-1/0x027ce48b9b346728557e8d420fe936a72bf9b1c7/); ethereum `0x21eadf...ce8685`; ethereum `0x294067...9c324a`; ethereum `0x515e7f...10a49b`; ethereum `0x6d0ac9...39dab0`; ethereum `0x88e08a...2d1ca4`; ethereum `0xc38d42...56198f`; ethereum `0xcd742f...ef5161`; ethereum `0xd75175...42b62d`; base `0x54ddb5...a60fd5`; mode `0x064efc...34f855`; mode `0xfe6d4d...1d0380`; arbitrum `0x04595a...dfce35`; arbitrum `0x60dc09...4a35ab`; arbitrum `0x6116b4...952b38`; arbitrum `0xce4ab2...eb6b6e` | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AerodromeDexAdapter | unknown | base | n/a | 3 deployments: base [`0x04595a...dfce35`](./contracts/base-8453/0x04595a47216076fd418cdd3fcfd9255e59dfce35/); base `0xb9f885...1ff944`; base `0xf24f39...f9ca0f` | ⚠️ Unaudited |
| AlgebraPool | core_logic | arbitrum | n/a | 3 deployments: mode `0x54f0b2...1b9243`; arbitrum [`0x44cc8b...584a77`](./contracts/arbitrum-42161/0x44cc8b40b1483e62e59ef937441ba6aa8e584a77/); arbitrum `0xcf7145...7bd6d5` | ⚠️ Unaudited |
| aspTKNMinimalOracleFactory | operational_periphery | sonic | n/a | 4 deployments: ethereum `0x7b68b5...30adbe`; sonic [`0x46f081...9f33d0`](./contracts/sonic-146/0x46f0815f0d46bb54d7f1f97358d745eedb9f33d0/); base `0xeed5e9...2d0a67`; mode `0xf29778...97d168` | ⚠️ Unaudited |
| AutoCompoundingPodLpFactory | unknown | mode | n/a | [`0xeec282...03faea`](./contracts/mode-34443/0xeec2820fd5750541511ac032e42f57bdf603faea/) | ⚠️ Unaudited |
| CamelotV3SinglePriceOracle | operational_periphery | arbitrum | n/a | [`0x48b50c...3888a1`](./contracts/arbitrum-42161/0x48b50c792d993a56cdf23b0ad64c257f2a3888a1/) | ⚠️ Unaudited |
| CLPool | core_logic | base | n/a | [`0xd53398...98c37e`](./contracts/base-8453/0xd533986cbb79a015fe9f6c8f92dbb35cc998c37e/) | ⚠️ Unaudited |
| DIAMultiFeedConverter | unknown | ethereum | n/a | [`0x8b55d5...d4aa18`](./contracts/ethereum-1/0x8b55d55790f1369fa6c45e702bf30ea81dd4aa18/) | ⚠️ Unaudited |
| HydrexV3SinglePriceOracle | operational_periphery | base | n/a | 4 deployments: base [`0x429fff...3ee7e0`](./contracts/base-8453/0x429fffd75ff44b3d6ec884c4b79b3ee0603ee7e0/); base `0x5d8290...2777f8`; base `0x87f6a1...4905ee`; base `0xa89283...5f2ca0` | ⚠️ Unaudited |
| IndirectOFT | unknown | sonic | n/a | 5 deployments: sonic [`0x14dec8...4e4965`](./contracts/sonic-146/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); base [`0x14dec8...4e4965`](./contracts/base-8453/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); mode [`0x14dec8...4e4965`](./contracts/mode-34443/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); arbitrum [`0x14dec8...4e4965`](./contracts/arbitrum-42161/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); berachain [`0x14dec8...4e4965`](./contracts/berachain-80094/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/) | ⚠️ Unaudited |
| LendingAssetVault | core_logic | ethereum | n/a | [`0x3717e3...e873aa`](./contracts/ethereum-1/0x3717e340140d30f3a077dd21fac39a86ace873aa/) | ⚠️ Unaudited |
| LeverageFactory | registry | ethereum | n/a | 4 deployments: ethereum [`0x43b9d9...1939d3`](./contracts/ethereum-1/0x43b9d9b0585e5e8a1e069195170adfd0461939d3/); sonic `0xf2db5e...800f96`; base `0x459b54...f38d5f`; arbitrum `0x7225d7...4a1d2f` | ⚠️ Unaudited |
| LeverageFeeProcessor | unknown | base | n/a | 4 deployments: ethereum `0xff673a...c8ae2b`; sonic `0xedd48a...d55544`; base [`0x9698b9...097ae9`](./contracts/base-8453/0x9698b93775907afa0968e9b121744f4641097ae9/); arbitrum `0x97bbe6...beccb3` | ⚠️ Unaudited |
| LeveragePositions | unknown | berachain | n/a | [`0xf290d5...9beb16`](./contracts/berachain-80094/0xf290d511d842396a3c61dd5a2d058844509beb16/) | ⚠️ Unaudited |
| MyOFTAdapter | adapter | ethereum | n/a | [`0x801642...d9b433`](./contracts/ethereum-1/0x801642b6efb861fe624dad704b7a747779d9b433/) | ⚠️ Unaudited |
| PodFlashMintSource | unknown | arbitrum | n/a | 4 deployments: ethereum `0xc73c64...eda601`; sonic `0xb2a28e...7679de`; base `0x1b59d4...af84a0`; arbitrum [`0x0d9a03...cc83c7`](./contracts/arbitrum-42161/0x0d9a0344b290ac1f12452986da6018dc53cc83c7/) | ⚠️ Unaudited |
| PodUnwrapLocker | unknown | sonic | n/a | 5 deployments: ethereum `0xace71c...959d74`; sonic [`0x02b7d3...9494b5`](./contracts/sonic-146/0x02b7d3d5438037d49a25ed15ae34f2d0099494b5/); base `0x76d6bb...6619c2`; arbitrum `0xcb19e5...ca8a3a`; berachain `0x4e4766...31bbac` | ⚠️ Unaudited |
| PodVaultUtility | core_logic | arbitrum | n/a | 5 deployments: ethereum `0x7f782f...0afeef`; ethereum `0xebebc4...159910`; sonic `0x08bafc...1de253`; base `0xaee454...757a5e`; arbitrum [`0x06386d...440fc9`](./contracts/arbitrum-42161/0x06386d5225d642fcbaa11c608fd50c4318440fc9/) | ⚠️ Unaudited |
| ProtocolFeeRouter | unknown | mode | n/a | 2 deployments: mode [`0x9f8c3e...c92355`](./contracts/mode-34443/0x9f8c3ef04810d4dd567b7b224626449db5c92355/); mode `0xdbac33...9aa00f` | ⚠️ Unaudited |
| ProtocolFees | unknown | mode | n/a | 2 deployments: mode [`0xc1081b...b67476`](./contracts/mode-34443/0xc1081b1cb8026d4098b20b9f7fb8b41b3fb67476/); mode `0xeaf725...e1955f` | ⚠️ Unaudited |
| RewardsWhitelist | unknown | mode | n/a | 2 deployments: mode [`0x635f5b...11569a`](./contracts/mode-34443/0x635f5b913d194880eb8bb8643779c8bec011569a/); mode `0xdb9dc6...4a3fa5` | ⚠️ Unaudited |
| ShadowDexAdapter | unknown | sonic | n/a | 3 deployments: sonic [`0x4a7687...7dcc72`](./contracts/sonic-146/0x4a76876f4c792f1de90eddac6c24b222967dcc72/); sonic `0x515e7f...10a49b`; sonic `0x652ab0...a53ffc` | ⚠️ Unaudited |
| StakingPoolToken | unknown | arbitrum | n/a | 7 deployments: ethereum `0x7c9c6c...88f91b`; sonic `0x229874...272919`; sonic `0xeaf725...e1955f`; base `0x8a581e...7e016b`; mode `0xe50d25...c87a72`; arbitrum [`0x211c85...134945`](./contracts/arbitrum-42161/0x211c8544c44aba90741ab8faeffd76c61a134945/); berachain `0xa4f43c...e63044` | ⚠️ Unaudited |
| StakingVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x0588b7...3fba45`](./contracts/ethereum-1/0x0588b70a940fc6b5664326017cb04a683c3fba45/); ethereum `0xb5482f...ba8b9b`; ethereum `0xdab175...7b1ecc` | ⚠️ Unaudited |
| TokenRewards | unknown | ethereum | n/a | 10 deployments: ethereum [`0x0a7734...0618cc`](./contracts/ethereum-1/0x0a7734281725f534f83d1bc9d91c40b1e80618cc/); ethereum `0xba72a2...4a85e2`; sonic `0x635f5b...11569a`; sonic `0xb8f9e6...bec010`; base `0xaa2adb...a32a06`; base `0xbd91d0...dde50e`; mode `0x290e6d...787f7a`; arbitrum `0x37247d...3e4aae`; arbitrum `0xe74397...0005b1`; berachain `0x6116b4...952b38` | ⚠️ Unaudited |
| UniswapDexAdapter | unknown | mode | n/a | [`0xf05ef8...1727cd`](./contracts/mode-34443/0xf05ef850f9ee3d94c7a5609153a82638d41727cd/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x526800...c56b36`](./contracts/ethereum-1/0x5268006a9da67c19a25aeb594f8e921867c56b36/); ethereum `0xae7505...d79160`; base `0x5abdb2...f5a72b` | ⚠️ Unaudited |
| V3TwapKimUtilities | unknown | mode | n/a | 3 deployments: mode [`0x0b9d4c...60c32f`](./contracts/mode-34443/0x0b9d4c3fbf57777283979537baed9b834a60c32f/); mode `0x17b55d...a5b610`; mode `0x903016...4fe622` | ⚠️ Unaudited |
| WeightedIndexFactory | unknown | mode | n/a | [`0x317531...8e2595`](./contracts/mode-34443/0x31753112f1f79334de72729f89049a11f28e2595/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (93)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LeverageManager | unknown | ethereum | n/a | `0x4e6ef3...c62d0b` | ❓ Unverified |
| LeverageManager | unknown | sonic | n/a | `0x0c4b19...118b61` | ❓ Unverified |
| LeverageManager | unknown | arbitrum | n/a | `0x3f2257...e8e2b0` | ❓ Unverified |
| Proxy (impl: 0xc96a6e07e044b70bb4d672f8737a7cbb1fdf3a4f) | unknown | sonic | n/a | 3 deployments: sonic `0x4f325f...aa0320`; sonic `0xa4f43c...e63044`; sonic `0xc96a6e...df3a4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c4b19...118b61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e0f52...d5c6fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x120109...8832d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x147946...571d77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1686b6...8ffc7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f422d...c9190b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24df48...6c71cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27d809...010f8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45c4ad...572611` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48b50c...3888a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a7687...7dcc72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50e6f9...85301d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55af47...40bf76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6974a9...08ab8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7581f7...9f37ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84e4b1...42a1d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88c6ee...df3db3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9acabc...a9d9d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb58556...d33c96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfb4ca...60f75c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc58941...e2cb7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb5cc2...1fd598` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb2d4c...ff3ba3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2315f...0361f0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0f7650...44471d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x182ddd...bc5088` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1ce46d...b4e8f2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x21eadf...ce8685` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x26947f...944265` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x294067...9c324a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2d2d83...e0ca31` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4dd1a2...ae0ba0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x66d39b...daf291` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x87b05f...776cfa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x87caed...46bacd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8e9b4d...4eeb4a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa3d59c...9bb656` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa922ad...d9c6dd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbde78e...7f44f2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc4ba49...1ae039` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xef6ca1...601734` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf79e97...c598bb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfc4c95...137ff4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x074686...db649a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d05d3...265a51` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0fc6ca...6a608d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x14be87...1c853b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x264509...b96ed3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x336836...35d16b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x363c8a...4e75fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37e845...7a8390` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x50e6f9...85301d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x56427d...eb2c95` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62603f...34668c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x652ab0...a53ffc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x667487...327e37` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x694a36...f36635` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7b0079...125714` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87875d...d958c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88f19d...1625ff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x915b8f...fb2268` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x929f65...07eddf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaad319...e3824c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac4050...93cbf1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc97938...253fb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd8a57...a55797` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf0de99...4a9750` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xbf9d21...546855` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x027ce4...f9b1c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x08bafc...1de253` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x17b55d...a5b610` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x182ddd...bc5088` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x186dfe...3c2f80` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3a1bf8...53dd98` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x700bad...c2d0cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8afee0...002caf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb56fce...7b314f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2810e...55d24c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc91104...65fc6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdeb779...ed83d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4abbe...003fba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7caed...dfc805` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf79e47...1dd261` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc4c95...137ff4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x0ada7a...a13ed6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x0d9d37...57b0cd` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x31e355...6ab82d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x4c7378...0ddc21` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xa415a0...957cdf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [sourcehat.com/audits/PeapodsFinance](https://sourcehat.com/audits/PeapodsFinance) | SourceHat | Audit | 2023-12 | stale | Direct | contract_name | 4 | n/a |
| [spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2FNepD2vC6ydmdzIX0TlkF%2FyAudit_report%20(2).pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | 1 | n/a |
| [spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2FhIIhvk8ktnP28clIIAls%2FPeapods_Report.pdf) | SourceHat | Audit | 2024-11 | aging | Direct | contract_name | 2 | n/a |
| [spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2F1H0oxy7m5JgiUvW4syJW%2FPeapods-security-review_2024-11-16%20(2).pdf) | SourceHat | Audit | 2024-12 | aging | Direct | contract_name | 11 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 132 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=18

Fork inheritance lineage and inherited audits are included when available.
