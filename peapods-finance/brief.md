# Agentic Audit Brief: Peapods Finance

## Project Overview

- Project: Peapods Finance (`peapods-finance`)
- Website: [https://peapods.finance](https://peapods.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.008Z
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

- Coverage of deployed-live implementations: 11/32 (34.4%)
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
| CamelotDexAdapter | adapter | arbitrum | n/a | 6 deployments: mode `0x77683b25f7324315da0ee721de2b88cf19af7f57`; mode `0x97be1fa213ac6200c91fe3ee2676cf5879b65a36`; mode `0xc38d4240a1e47ef954247a38aafdd3e85f56198f`; arbitrum [`0x22dc5b739b34f98be2f2f262bd104ed9ab1aad7a`](./contracts/arbitrum-42161/0x22dc5b739b34f98be2f2f262bd104ed9ab1aad7a/); arbitrum `0x83eccba9f04c94a6c520114c48f493095e823f94`; arbitrum `0xac9d76199e4a304810512638fe24e58df2ceb10e` | ✅ Audited |
| DIAOracleV2SinglePriceOracle | operational_periphery | ethereum | n/a | [`0xc815d43b0d5965d91d06867fff51b2c845e4466e`](./contracts/ethereum-1/0xc815d43b0d5965d91d06867fff51b2c845e4466e/) | ✅ Audited |
| ERC20Bridgeable | operational_periphery | sonic | n/a | 5 deployments: sonic [`0x02f92800f57bcd74066f5709f1daa1a4302df875`](./contracts/sonic-146/0x02f92800f57bcd74066f5709f1daa1a4302df875/); base [`0x02f92800f57bcd74066f5709f1daa1a4302df875`](./contracts/base-8453/0x02f92800f57bcd74066f5709f1daa1a4302df875/); mode [`0x02f92800f57bcd74066f5709f1daa1a4302df875`](./contracts/mode-34443/0x02f92800f57bcd74066f5709f1daa1a4302df875/); arbitrum [`0x02f92800f57bcd74066f5709f1daa1a4302df875`](./contracts/arbitrum-42161/0x02f92800f57bcd74066f5709f1daa1a4302df875/); berachain [`0x02f92800f57bcd74066f5709f1daa1a4302df875`](./contracts/berachain-80094/0x02f92800f57bcd74066f5709f1daa1a4302df875/) | ✅ Audited |
| IndexManager | governance | ethereum | n/a | 10 deployments: ethereum [`0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b`](./contracts/ethereum-1/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); ethereum `0x6effcf94993d6a6081204fc3c30473468eb7666e`; sonic `0x9e054f6c328d8e424a2354af726fdc88cb166060`; base [`0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b`](./contracts/base-8453/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); base `0x556059e80cb0073d4a9547081cf0f80cbb94ec30`; mode [`0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b`](./contracts/mode-34443/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); mode `0x93121a4e52912d0e5a93fbb822d5cf141da567bc`; arbitrum [`0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b`](./contracts/arbitrum-42161/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); arbitrum `0x64511cce99ab01a6dd136207450ea81263b14fd8`; berachain `0xc9260ce495b5eec77219bf4faccf27eefd932f01` | ✅ Audited |
| IndexUtils | unknown | sonic | n/a | 12 deployments: ethereum `0x2bcca7ea2c7eca696ace6d71c9719fb171a1054c`; ethereum `0x521e246fadbab84a3b75d8c9c6c7ae4433bd03cc`; ethereum `0x88b6db67000f8ef34ae1a34542b2e4b43b87d9b7`; ethereum `0x9a103ab4fe2de5db16338b16fd7550d21d7b8db6`; sonic [`0x24232517e648525a2a5b9935aadc42ae250f5eca`](./contracts/sonic-146/0x24232517e648525a2a5b9935aadc42ae250f5eca/); base `0x37cd1fd593639d453cd97670bac4e59fd5659dde`; base `0x490b03c6afe733576cf1f5d2a821cf261b15826d`; mode `0x9e341711c58ef919fec9448e0dead5c852e3400c`; mode `0x9e93507942f7e1bf9aaeb9608562957e8aefdbe6`; arbitrum `0x4b6d3fdf201d5a169d933adbe063614113745e0d`; arbitrum `0x5c5c288f5ef3559aaf961c5cca0e77ac3565f0c0`; berachain `0x40bd82a15e958e5e8e81d43bba736a14ed386717` | ✅ Audited |
| LendingAssetVaultFactory | unknown | berachain | n/a | 11 deployments: ethereum `0xa811d1bb3e8faf4ec503a1876976df5d5f191875`; ethereum `0xbab29f09f595bf2c8d4142ee544e1bc1db7912c6`; sonic `0x6786d3f3e4e05fc126d0511c2e96017759b7a8ec`; sonic `0x898cc8a83f2d854b06c1703abb5b2fa18321d55c`; sonic `0xbf9d217014ae75ed2a82a75761b3b8b600546855`; base `0x3cc2a9d0cab4176ee485016f5620c88b8a875cfc`; base `0x48f39fd89142cf062825c47206f202a012b7c31e`; mode `0xb7d368571bc7c2920bd0222dbe2c33de89c2b0a3`; arbitrum `0xa9a92c6440f5b98ca6bb2b02e5d0578904e1c95e`; arbitrum `0xf252b0478fab0c31abcab802955d03258d3bda3a`; berachain [`0x37cd1fd593639d453cd97670bac4e59fd5659dde`](./contracts/berachain-80094/0x37cd1fd593639d453cd97670bac4e59fd5659dde/) | ✅ Audited |
| PEAS | unknown | ethereum | n/a | [`0x02f92800f57bcd74066f5709f1daa1a4302df875`](./contracts/ethereum-1/0x02f92800f57bcd74066f5709f1daa1a4302df875/) | ✅ Audited |
| UnweightedIndex | unknown | ethereum | n/a | 2 deployments: ethereum [`0x290e6d7f9b92d338d2dd44e8358bf11b2f787f7a`](./contracts/ethereum-1/0x290e6d7f9b92d338d2dd44e8358bf11b2f787f7a/); ethereum `0x3c56cabe6dbbad11c4fe36f09777ef417ef5451c` | ✅ Audited |
| V2ReservesCamelot | unknown | arbitrum | n/a | [`0xec8a490000e9553a373e54ed71c09c7aa73eeaf8`](./contracts/arbitrum-42161/0xec8a490000e9553a373e54ed71c09c7aa73eeaf8/) | ✅ Audited |
| V3TwapCamelotUtilities | unknown | mode | n/a | 2 deployments: mode [`0x948e2e5f60fdb55052bb9453bb641ca98518ad48`](./contracts/mode-34443/0x948e2e5f60fdb55052bb9453bb641ca98518ad48/); arbitrum `0xe8869f393d083bc41358b6c13b1ebce54fe11458` | ✅ Audited |
| WeightedIndex | unknown | ethereum | n/a | 16 deployments: ethereum [`0x027ce48b9b346728557e8d420fe936a72bf9b1c7`](./contracts/ethereum-1/0x027ce48b9b346728557e8d420fe936a72bf9b1c7/); ethereum `0x21eadff43eab8d0824d5c3bcb2e75ed1f3ce8685`; ethereum `0x294067538f59cf9e3bd31af12194cd530f9c324a`; ethereum `0x515e7fd1c29263dff8d987f15fa00c12cd10a49b`; ethereum `0x6d0ac92624c04003de6655a86cacc858dc39dab0`; ethereum `0x88e08adb69f2618adf1a3ff6cc43c671612d1ca4`; ethereum `0xc38d4240a1e47ef954247a38aafdd3e85f56198f`; ethereum `0xcd742ff64f1274deaedc37f8126f9d191fef5161`; ethereum `0xd751755c597888b2dc1dc2ad0466927d7c42b62d`; base `0x54ddb5de08584206df4dd5b50220764c6aa60fd5`; mode `0x064efc5cb0b7bc52ac9e717ea5f3f35f3534f855`; mode `0xfe6d4d56e0d736d441e480133f3779eee81d0380`; arbitrum `0x04595a47216076fd418cdd3fcfd9255e59dfce35`; arbitrum `0x60dc09b440e3b27ec5d71604db71e62dfb4a35ab`; arbitrum `0x6116b4584e596b30e711c6b64bf7d42587952b38`; arbitrum `0xce4ab22d33b7f13c541e638aca27df1841eb6b6e` | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AerodromeDexAdapter | unknown | base | n/a | 3 deployments: base [`0x04595a47216076fd418cdd3fcfd9255e59dfce35`](./contracts/base-8453/0x04595a47216076fd418cdd3fcfd9255e59dfce35/); base `0xb9f88534d856dc3c6785f47a0c6944b71d1ff944`; base `0xf24f39fe95aaab3ccbee9e478e46b1b7adf9ca0f` | ⚠️ Unaudited |
| AlgebraPool | core_logic | arbitrum | n/a | 3 deployments: mode `0x54f0b20d4e140d9beb0e2fadb4f3c425621b9243`; arbitrum [`0x44cc8b40b1483e62e59ef937441ba6aa8e584a77`](./contracts/arbitrum-42161/0x44cc8b40b1483e62e59ef937441ba6aa8e584a77/); arbitrum `0xcf71459248557807b87cf988f30ae7845f7bd6d5` | ⚠️ Unaudited |
| aspTKNMinimalOracleFactory | operational_periphery | sonic | n/a | 4 deployments: ethereum `0x7b68b5c8ba1b2d399dc371270ea5cecf5b30adbe`; sonic [`0x46f0815f0d46bb54d7f1f97358d745eedb9f33d0`](./contracts/sonic-146/0x46f0815f0d46bb54d7f1f97358d745eedb9f33d0/); base `0xeed5e974a792f9ac91f3582ef79f2d95e12d0a67`; mode `0xf29778125dd98f9ee16d0a1a00ae2414e897d168` | ⚠️ Unaudited |
| AutoCompoundingPodLpFactory | unknown | mode | n/a | [`0xeec2820fd5750541511ac032e42f57bdf603faea`](./contracts/mode-34443/0xeec2820fd5750541511ac032e42f57bdf603faea/) | ⚠️ Unaudited |
| CamelotV3SinglePriceOracle | operational_periphery | arbitrum | n/a | [`0x48b50c792d993a56cdf23b0ad64c257f2a3888a1`](./contracts/arbitrum-42161/0x48b50c792d993a56cdf23b0ad64c257f2a3888a1/) | ⚠️ Unaudited |
| CLPool | core_logic | base | n/a | [`0xd533986cbb79a015fe9f6c8f92dbb35cc998c37e`](./contracts/base-8453/0xd533986cbb79a015fe9f6c8f92dbb35cc998c37e/) | ⚠️ Unaudited |
| DIAMultiFeedConverter | unknown | ethereum | n/a | [`0x8b55d55790f1369fa6c45e702bf30ea81dd4aa18`](./contracts/ethereum-1/0x8b55d55790f1369fa6c45e702bf30ea81dd4aa18/) | ⚠️ Unaudited |
| HydrexV3SinglePriceOracle | operational_periphery | base | n/a | 4 deployments: base [`0x429fffd75ff44b3d6ec884c4b79b3ee0603ee7e0`](./contracts/base-8453/0x429fffd75ff44b3d6ec884c4b79b3ee0603ee7e0/); base `0x5d82905ed25dbe508948f827f61a7110302777f8`; base `0x87f6a1ad256a2d5d60c2ff6b398777fa634905ee`; base `0xa892833f8caabc61059576c3a74fb49f115f2ca0` | ⚠️ Unaudited |
| IndirectOFT | unknown | sonic | n/a | 5 deployments: sonic [`0x14dec875e8ff3eae9f62198e7c29a0021c4e4965`](./contracts/sonic-146/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); base [`0x14dec875e8ff3eae9f62198e7c29a0021c4e4965`](./contracts/base-8453/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); mode [`0x14dec875e8ff3eae9f62198e7c29a0021c4e4965`](./contracts/mode-34443/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); arbitrum [`0x14dec875e8ff3eae9f62198e7c29a0021c4e4965`](./contracts/arbitrum-42161/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); berachain [`0x14dec875e8ff3eae9f62198e7c29a0021c4e4965`](./contracts/berachain-80094/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/) | ⚠️ Unaudited |
| LendingAssetVault | core_logic | ethereum | n/a | [`0x3717e340140d30f3a077dd21fac39a86ace873aa`](./contracts/ethereum-1/0x3717e340140d30f3a077dd21fac39a86ace873aa/) | ⚠️ Unaudited |
| LeverageFactory | registry | ethereum | n/a | 4 deployments: ethereum [`0x43b9d9b0585e5e8a1e069195170adfd0461939d3`](./contracts/ethereum-1/0x43b9d9b0585e5e8a1e069195170adfd0461939d3/); sonic `0xf2db5e810a1839bf004737c086322f4bf4800f96`; base `0x459b5464af691a7f46d24ce6ce9a5b81d3f38d5f`; arbitrum `0x7225d7c6096dc4ba6b244e0c8ed667fd814a1d2f` | ⚠️ Unaudited |
| LeverageFeeProcessor | unknown | base | n/a | 4 deployments: ethereum `0xff673afd42f850fcf2f6883bc2a4d7d34fc8ae2b`; sonic `0xedd48a71f739b5ed0776d1d604a35a5872d55544`; base [`0x9698b93775907afa0968e9b121744f4641097ae9`](./contracts/base-8453/0x9698b93775907afa0968e9b121744f4641097ae9/); arbitrum `0x97bbe65e0f1adf91c5735662ceeef1462abeccb3` | ⚠️ Unaudited |
| LeveragePositions | unknown | berachain | n/a | [`0xf290d511d842396a3c61dd5a2d058844509beb16`](./contracts/berachain-80094/0xf290d511d842396a3c61dd5a2d058844509beb16/) | ⚠️ Unaudited |
| MyOFTAdapter | adapter | ethereum | n/a | [`0x801642b6efb861fe624dad704b7a747779d9b433`](./contracts/ethereum-1/0x801642b6efb861fe624dad704b7a747779d9b433/) | ⚠️ Unaudited |
| PodFlashMintSource | unknown | arbitrum | n/a | 4 deployments: ethereum `0xc73c64bb519f6c9229c2a34d88c6313962eda601`; sonic `0xb2a28e49fca4db6bb109b28741eb9a9e1b7679de`; base `0x1b59d458a8a70c8d464802b4d499558e68af84a0`; arbitrum [`0x0d9a0344b290ac1f12452986da6018dc53cc83c7`](./contracts/arbitrum-42161/0x0d9a0344b290ac1f12452986da6018dc53cc83c7/) | ⚠️ Unaudited |
| PodUnwrapLocker | unknown | sonic | n/a | 5 deployments: ethereum `0xace71c69ab1c44c8330da420bc6fab1c51959d74`; sonic [`0x02b7d3d5438037d49a25ed15ae34f2d0099494b5`](./contracts/sonic-146/0x02b7d3d5438037d49a25ed15ae34f2d0099494b5/); base `0x76d6bb1fafb23b314807aa9961f6374cea6619c2`; arbitrum `0xcb19e5077dbf8f145842154ac1f7faa656ca8a3a`; berachain `0x4e4766b64b1d55cc92fd494eb57ed8cdc231bbac` | ⚠️ Unaudited |
| PodVaultUtility | core_logic | arbitrum | n/a | 5 deployments: ethereum `0x7f782f23d954ce129d74db62435a139aa90afeef`; ethereum `0xebebc4ce9ff6520b793f4f96aff28d9f4d159910`; sonic `0x08bafc8f264772b4788f56abb9963cf57f1de253`; base `0xaee454b09c10ae53dc7648b6e1a9f15db9757a5e`; arbitrum [`0x06386d5225d642fcbaa11c608fd50c4318440fc9`](./contracts/arbitrum-42161/0x06386d5225d642fcbaa11c608fd50c4318440fc9/) | ⚠️ Unaudited |
| ProtocolFeeRouter | unknown | mode | n/a | 2 deployments: mode [`0x9f8c3ef04810d4dd567b7b224626449db5c92355`](./contracts/mode-34443/0x9f8c3ef04810d4dd567b7b224626449db5c92355/); mode `0xdbac337e5c1bd7d68aa9d807f29b2636aa9aa00f` | ⚠️ Unaudited |
| ProtocolFees | unknown | mode | n/a | 2 deployments: mode [`0xc1081b1cb8026d4098b20b9f7fb8b41b3fb67476`](./contracts/mode-34443/0xc1081b1cb8026d4098b20b9f7fb8b41b3fb67476/); mode `0xeaf725566b4913e4d1fa04e2ec88f78b35e1955f` | ⚠️ Unaudited |
| RewardsWhitelist | unknown | mode | n/a | 2 deployments: mode [`0x635f5b913d194880eb8bb8643779c8bec011569a`](./contracts/mode-34443/0x635f5b913d194880eb8bb8643779c8bec011569a/); mode `0xdb9dc623e965a4a2675cb13708c7d4db584a3fa5` | ⚠️ Unaudited |
| ShadowDexAdapter | unknown | sonic | n/a | 3 deployments: sonic [`0x4a76876f4c792f1de90eddac6c24b222967dcc72`](./contracts/sonic-146/0x4a76876f4c792f1de90eddac6c24b222967dcc72/); sonic `0x515e7fd1c29263dff8d987f15fa00c12cd10a49b`; sonic `0x652ab0d74902304f15e35bc12e5cf624caa53ffc` | ⚠️ Unaudited |
| StakingPoolToken | unknown | arbitrum | n/a | 7 deployments: ethereum `0x7c9c6c832a94511586c52561fce8cfc9db88f91b`; sonic `0x22987483b2585927bd9b3215611be70225272919`; sonic `0xeaf725566b4913e4d1fa04e2ec88f78b35e1955f`; base `0x8a581e373544047716bfc2aaa9c3ad3df27e016b`; mode `0xe50d25eacfcf9e53609e2fe95f4deefb2dc87a72`; arbitrum [`0x211c8544c44aba90741ab8faeffd76c61a134945`](./contracts/arbitrum-42161/0x211c8544c44aba90741ab8faeffd76c61a134945/); berachain `0xa4f43cf1173697bb44cc7af0b7dd424619e63044` | ⚠️ Unaudited |
| StakingVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x0588b70a940fc6b5664326017cb04a683c3fba45`](./contracts/ethereum-1/0x0588b70a940fc6b5664326017cb04a683c3fba45/); ethereum `0xb5482f99700bcb9904bf0397db78ece093ba8b9b`; ethereum `0xdab17556ae10062f5939e56d44063c12eb7b1ecc` | ⚠️ Unaudited |
| TokenRewards | unknown | ethereum | n/a | 10 deployments: ethereum [`0x0a7734281725f534f83d1bc9d91c40b1e80618cc`](./contracts/ethereum-1/0x0a7734281725f534f83d1bc9d91c40b1e80618cc/); ethereum `0xba72a27bb27b32560f41bcc0e8d53c5f664a85e2`; sonic `0x635f5b913d194880eb8bb8643779c8bec011569a`; sonic `0xb8f9e639ba6610e2aec352cc549d502611bec010`; base `0xaa2adb675d6cd5040b712657f37b49c929a32a06`; base `0xbd91d04f0156674e389611d789ec08828ddde50e`; mode `0x290e6d7f9b92d338d2dd44e8358bf11b2f787f7a`; arbitrum `0x37247d24937425b1f13e7745e90db3546d3e4aae`; arbitrum `0xe743974cfc4c8670796ded0027bbe0a8420005b1`; berachain `0x6116b4584e596b30e711c6b64bf7d42587952b38` | ⚠️ Unaudited |
| UniswapDexAdapter | unknown | mode | n/a | [`0xf05ef850f9ee3d94c7a5609153a82638d41727cd`](./contracts/mode-34443/0xf05ef850f9ee3d94c7a5609153a82638d41727cd/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x5268006a9da67c19a25aeb594f8e921867c56b36`](./contracts/ethereum-1/0x5268006a9da67c19a25aeb594f8e921867c56b36/); ethereum `0xae750560b09ad1f5246f3b279b3767afd1d79160`; base `0x5abdb204b1e5365fc523b6aac9d0fc405bf5a72b` | ⚠️ Unaudited |
| V3TwapKimUtilities | unknown | mode | n/a | 3 deployments: mode [`0x0b9d4c3fbf57777283979537baed9b834a60c32f`](./contracts/mode-34443/0x0b9d4c3fbf57777283979537baed9b834a60c32f/); mode `0x17b55d4ce08a55fe6235149d7b4fe97911a5b610`; mode `0x9030165704cf36cb25e4e927124b611bac4fe622` | ⚠️ Unaudited |
| WeightedIndexFactory | unknown | mode | n/a | [`0x31753112f1f79334de72729f89049a11f28e2595`](./contracts/mode-34443/0x31753112f1f79334de72729f89049a11f28e2595/) | ⚠️ Unaudited |

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
| LeverageManager | unknown | ethereum | n/a | `0x4e6ef371c9cdde8c3e6716affeebad14c8c62d0b` | ❓ Unverified |
| LeverageManager | unknown | sonic | n/a | `0x0c4b19994f466ac4b6ba8f9b220d83bec6118b61` | ❓ Unverified |
| LeverageManager | unknown | arbitrum | n/a | `0x3f2257b6f1fd055aee020027740f266127e8e2b0` | ❓ Unverified |
| Proxy (impl: 0xc96a6e07e044b70bb4d672f8737a7cbb1fdf3a4f) | unknown | sonic | n/a | 3 deployments: sonic `0x4f325fe3e1f88d73d9e80e034691d6bfebaa0320`; sonic `0xa4f43cf1173697bb44cc7af0b7dd424619e63044`; sonic `0xc96a6e07e044b70bb4d672f8737a7cbb1fdf3a4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c4b19994f466ac4b6ba8f9b220d83bec6118b61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e0f5254b60d4387d3d607600947a57085d5c6fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1201099811f904de7c0b75bf49b89d36fc8832d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14794665d2f467a6e393e1a7210c49a1aa571d77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1686b67e17960b020a8e500fc9e5bc49c68ffc7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f422d01d513efc565e034ddc6c5db20f1c9190b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24df48d8b5ddffb23adf2739c9e56c8b6c6c71cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27d8097f06abcaec585719b6c084456f18010f8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45c4adf501cd90ffd62bbc4b7cbe99bf31572611` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48b50c792d993a56cdf23b0ad64c257f2a3888a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a76876f4c792f1de90eddac6c24b222967dcc72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50e6f962aabf6487954d8564133995b91285301d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55af4715b96e6860df65778b3de872fe1c40bf76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6974a9446f30af188ed5935d3d623b267808ab8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7581f7467fb8b1a1fa787aa124dfb381269f37ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84e4b1f81ece66d1331c9dfe7ca111394c42a1d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88c6eeceb352d7e38ca8cd48f3d2642c91df3db3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9acabcf5ba56abaa599af9d13987174495a9d9d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb58556a66cd945182da0429760ccfdc2b2d33c96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfb4ca6d43ad76326395ee80fd3208916a60f75c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc58941f35936240751b142fb054b6e52d9e2cb7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb5cc249f3cd098941b6d838094112d1341fd598` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb2d4cae3624ac90822e6d5385dfe42a8aff3ba3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2315f5350baa58f1d8f7a0b4f8eeacfac0361f0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0f7650301940cbf8b3e245780c2a1f736f44471d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x182dddd2b29a8551ef6430ba2008842211bc5088` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1ce46d25f4de5edc50dd5c3c34fb0e37bfb4e8f2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x21eadff43eab8d0824d5c3bcb2e75ed1f3ce8685` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x26947f4ddccd36604b141989ebf3e66f78944265` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x294067538f59cf9e3bd31af12194cd530f9c324a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2d2d83afe241c1ca57fec3eb9c4f4786f1e0ca31` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4dd1a2bd6686432cf86ef79393178a7622ae0ba0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x66d39b2bbfa826038a8cc403919a178d50daf291` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x87b05f610707df1e2f92f6a28d2f70b6ab776cfa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x87caed1e19da46098e710b69cae33e74c146bacd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8e9b4dad84e6d66b27643a1077f2a3ea254eeb4a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa3d59cc14c9b39aa02dd5c6f76885ecda29bb656` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa922ad82da33e46b1f645740162bb5c5eed9c6dd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbde78ec31f524ecf4878a89f205b1e9c4e7f44f2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc4ba497fdd70eca0cf50fe26f3a3863e1c1ae039` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xef6ca17b721756c4de10c7838a8cdf2f8a601734` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf79e973ca79e06b77e48a1df37109f80dcc598bb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfc4c956330bf15d0e8bf6d617ece6d6612137ff4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x07468655b83e5baa3e8b8bc1044ca88ef1db649a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d05d300adecc11c7753eeb5149c1a4c33265a51` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0fc6ca1ad988bb08111584b419ea21519d6a608d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x14be87ac5355a5ea7b78d5b2ccffbb3e511c853b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x264509a866033d84529474ba47f88b9908b96ed3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x336836d0d499ec66e84b33b40eb0d39fee35d16b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x363c8a1f9828fe492d1910856d0a983f714e75fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37e84588f6bd782044a4c45a7b7d5bf8ab7a8390` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x50e6f962aabf6487954d8564133995b91285301d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x56427dad84b2b245d38fbe1465bb8f3f2aeb2c95` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62603f6ed89ed8d2100f19d555d22520e834668c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x652ab0d74902304f15e35bc12e5cf624caa53ffc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x66748756af1070284d484f8cc6c9185e28327e37` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x694a3659cc5bb48c29924f395b8e2b3d30f36635` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7b0079453d9c54f573c23338b2f850b694125714` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87875db4c98e35e94c5693a4731533693ad958c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88f19d67cf74a3ab93d8ceed0e7b0d16361625ff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x915b8fd1e9e03749d396781d952cc8e7d7fb2268` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x929f65574ea93716f0234518fee63cbb7c07eddf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaad319383a6cff51afe4c003aca34391c6e3824c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac4050e06520e71785b00832dd390ad0a093cbf1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc979380b02a7de52788bcc366fe550bfff253fb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd8a5733eb1e57617cc783b7419e528657a55797` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf0de996292a195dbb5fc94ff1899781c874a9750` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xbf9d217014ae75ed2a82a75761b3b8b600546855` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x027ce48b9b346728557e8d420fe936a72bf9b1c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x08bafc8f264772b4788f56abb9963cf57f1de253` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x17b55d4ce08a55fe6235149d7b4fe97911a5b610` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x182dddd2b29a8551ef6430ba2008842211bc5088` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x186dfe865c682fd2cb98d52f99c9c7a0573c2f80` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3a1bf8187b156ac1101254c0014f20367a53dd98` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x700bad1a9faa837ac386ac16b46faae178c2d0cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8afee0d008fa4c358109c4c6c02f1dd17d002caf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb56fce87a32d4ad3574b2a84c343e591a97b314f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2810eb57526df869049fbf4c541791a3255d24c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc91104fe3de5478a73a6fa0a2a80a3226b65fc6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdeb7798c2dadb3daf28484d67a7919d42eed83d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4abbe1b9c4382c550eb81e9f4dd908918003fba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7caed3c6ea6f1db7a0bf02ff45cdb8b86dfc805` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf79e475e8f13f824aa9c9470a726e754da1dd261` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc4c956330bf15d0e8bf6d617ece6d6612137ff4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x0ada7a77de209ac9261ccb6e6155eaf499a13ed6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x0d9d37b7262161e61e5f55dcba6198401257b0cd` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x31e35550b15b2dfd267edfb39dd9f3cd1c6ab82d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x4c73789b76a801679b46b98bb5f994053d0ddc21` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xa415a0f3daebc70451769072d801f13ff5957cdf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [sourcehat.com/audits/PeapodsFinance](https://sourcehat.com/audits/PeapodsFinance) | SourceHat | Audit | 2023-12 | stale | Direct | contract_name | 4 | n/a |
| [spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2FNepD2vC6ydmdzIX0TlkF%2FyAudit_report%20(2).pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | 1 | n/a |
| [spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2FhIIhvk8ktnP28clIIAls%2FPeapods_Report.pdf) | SourceHat | Audit | 2024-11 | aging | Direct | contract_name | 2 | n/a |
| [spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2F1H0oxy7m5JgiUvW4syJW%2FPeapods-security-review_2024-11-16%20(2).pdf) | SourceHat | Audit | 2024-12 | aging | Direct | contract_name | 11 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x04595a47216076fd418cdd3fcfd9255e59dfce35`](./contracts/base-8453/0x04595a47216076fd418cdd3fcfd9255e59dfce35/) | AerodromeDexAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x44cc8b40b1483e62e59ef937441ba6aa8e584a77`](./contracts/arbitrum-42161/0x44cc8b40b1483e62e59ef937441ba6aa8e584a77/) | AlgebraPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x46f0815f0d46bb54d7f1f97358d745eedb9f33d0`](./contracts/sonic-146/0x46f0815f0d46bb54d7f1f97358d745eedb9f33d0/) | aspTKNMinimalOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xeec2820fd5750541511ac032e42f57bdf603faea`](./contracts/mode-34443/0xeec2820fd5750541511ac032e42f57bdf603faea/) | AutoCompoundingPodLpFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x48b50c792d993a56cdf23b0ad64c257f2a3888a1`](./contracts/arbitrum-42161/0x48b50c792d993a56cdf23b0ad64c257f2a3888a1/) | CamelotV3SinglePriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd533986cbb79a015fe9f6c8f92dbb35cc998c37e`](./contracts/base-8453/0xd533986cbb79a015fe9f6c8f92dbb35cc998c37e/) | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b55d55790f1369fa6c45e702bf30ea81dd4aa18`](./contracts/ethereum-1/0x8b55d55790f1369fa6c45e702bf30ea81dd4aa18/) | DIAMultiFeedConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x429fffd75ff44b3d6ec884c4b79b3ee0603ee7e0`](./contracts/base-8453/0x429fffd75ff44b3d6ec884c4b79b3ee0603ee7e0/) | HydrexV3SinglePriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x14dec875e8ff3eae9f62198e7c29a0021c4e4965`](./contracts/sonic-146/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/) | IndirectOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3717e340140d30f3a077dd21fac39a86ace873aa`](./contracts/ethereum-1/0x3717e340140d30f3a077dd21fac39a86ace873aa/) | LendingAssetVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43b9d9b0585e5e8a1e069195170adfd0461939d3`](./contracts/ethereum-1/0x43b9d9b0585e5e8a1e069195170adfd0461939d3/) | LeverageFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9698b93775907afa0968e9b121744f4641097ae9`](./contracts/base-8453/0x9698b93775907afa0968e9b121744f4641097ae9/) | LeverageFeeProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xf290d511d842396a3c61dd5a2d058844509beb16`](./contracts/berachain-80094/0xf290d511d842396a3c61dd5a2d058844509beb16/) | LeveragePositions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x801642b6efb861fe624dad704b7a747779d9b433`](./contracts/ethereum-1/0x801642b6efb861fe624dad704b7a747779d9b433/) | MyOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d9a0344b290ac1f12452986da6018dc53cc83c7`](./contracts/arbitrum-42161/0x0d9a0344b290ac1f12452986da6018dc53cc83c7/) | PodFlashMintSource | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x02b7d3d5438037d49a25ed15ae34f2d0099494b5`](./contracts/sonic-146/0x02b7d3d5438037d49a25ed15ae34f2d0099494b5/) | PodUnwrapLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06386d5225d642fcbaa11c608fd50c4318440fc9`](./contracts/arbitrum-42161/0x06386d5225d642fcbaa11c608fd50c4318440fc9/) | PodVaultUtility | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x9f8c3ef04810d4dd567b7b224626449db5c92355`](./contracts/mode-34443/0x9f8c3ef04810d4dd567b7b224626449db5c92355/) | ProtocolFeeRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xc1081b1cb8026d4098b20b9f7fb8b41b3fb67476`](./contracts/mode-34443/0xc1081b1cb8026d4098b20b9f7fb8b41b3fb67476/) | ProtocolFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x635f5b913d194880eb8bb8643779c8bec011569a`](./contracts/mode-34443/0x635f5b913d194880eb8bb8643779c8bec011569a/) | RewardsWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4a76876f4c792f1de90eddac6c24b222967dcc72`](./contracts/sonic-146/0x4a76876f4c792f1de90eddac6c24b222967dcc72/) | ShadowDexAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x211c8544c44aba90741ab8faeffd76c61a134945`](./contracts/arbitrum-42161/0x211c8544c44aba90741ab8faeffd76c61a134945/) | StakingPoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0588b70a940fc6b5664326017cb04a683c3fba45`](./contracts/ethereum-1/0x0588b70a940fc6b5664326017cb04a683c3fba45/) | StakingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a7734281725f534f83d1bc9d91c40b1e80618cc`](./contracts/ethereum-1/0x0a7734281725f534f83d1bc9d91c40b1e80618cc/) | TokenRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xf05ef850f9ee3d94c7a5609153a82638d41727cd`](./contracts/mode-34443/0xf05ef850f9ee3d94c7a5609153a82638d41727cd/) | UniswapDexAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x0b9d4c3fbf57777283979537baed9b834a60c32f`](./contracts/mode-34443/0x0b9d4c3fbf57777283979537baed9b834a60c32f/) | V3TwapKimUtilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x31753112f1f79334de72729f89049a11f28e2595`](./contracts/mode-34443/0x31753112f1f79334de72729f89049a11f28e2595/) | WeightedIndexFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 93 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=18

Fork inheritance lineage and inherited audits are included when available.
