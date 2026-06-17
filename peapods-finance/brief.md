# Agentic Audit Brief: Peapods Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 30.6% over 90 days

## Project Overview

- Project: Peapods Finance (`peapods-finance`)
- Website: [https://peapods.finance](https://peapods.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:49.754Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, berachain, ethereum, mode, sonic
- Contract surface: 94 unique implementations (226 raw deployments)
- DeFi Llama TVL: $6,327,474.74
- On-chain TVL (included contracts): $891,942.25
- TVL by chain: Ethereum $758,790.78 | Arbitrum $97,895.03 | Base $35,256.44

## Project Description

Peapods Finance is a DeFi protocol focused on Volatility Farming: enabling users to generate sustainable yield for liquid assets through Pods and related staking/liquidity mechanisms. Its index, pod, leverage, and DEX-integration components should be treated as implementation mechanics rather than the sole project identity, and any PEAS governance or utility claims should be separately substantiated.

### Architecture

IndexManager creates and manages Pods using WeightedIndex implementations, while LeverageManager adds leverage to these Pods. StakingPoolToken and TokenRewards handle staking and yield distribution for Pod tokens, and ERC20Bridgeable facilitates cross-chain token transfers. All families rely on UpgradeableBeacon proxies for upgradeability and share the PEAS token as a common utility and governance asset.

## Contract Surface Quality

- Indexed contracts: 418; live-surface contracts included: 226 (63 live, 163 unknown).
- Excluded by liveness: 138 inactive, 54 singleton, 0 uninitialized.
- Deployment units: 0/24 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Dependencies extracted: 17; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 21/37 (56.8%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 1
- Unverified implementations: 57
- Unique implementations: 94
- Raw deployments: 226
- Audits discovered: 4
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $891,942.25
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 3 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $891,942.25 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 21 | 56.8% | 2024-12 |
| yAudit | Tier 2 | 2 | 5.4% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AerodromeDexAdapter | adapter | base | n/a | 3 deployments: base [`0x04595a...dfce35`](./contracts/base-8453/0x04595a47216076fd418cdd3fcfd9255e59dfce35/); base `0xb9f885...1ff944`; base `0xf24f39...f9ca0f` | ✅ Audited |
| CamelotDexAdapter | adapter | arbitrum | n/a | 3 deployments: arbitrum [`0x22dc5b...1aad7a`](./contracts/arbitrum-42161/0x22dc5b739b34f98be2f2f262bd104ed9ab1aad7a/); arbitrum `0x83eccb...823f94`; arbitrum `0xac9d76...ceb10e` | ✅ Audited |
| DIAOracleV2SinglePriceOracle | operational_periphery | arbitrum | n/a | 3 deployments: ethereum `0xc815d4...e4466e`; base `0x420180...cbe179`; arbitrum [`0x0d71e8...ac6653`](./contracts/arbitrum-42161/0x0d71e8487df7ed8ac111bfab9cc44cc69bac6653/) | ✅ Audited |
| ERC20Bridgeable | operational_periphery | sonic | n/a | 5 deployments: sonic [`0x02f928...2df875`](./contracts/sonic-146/0x02f92800f57bcd74066f5709f1daa1a4302df875/); base [`0x02f928...2df875`](./contracts/base-8453/0x02f92800f57bcd74066f5709f1daa1a4302df875/); mode [`0x02f928...2df875`](./contracts/mode-34443/0x02f92800f57bcd74066f5709f1daa1a4302df875/); arbitrum [`0x02f928...2df875`](./contracts/arbitrum-42161/0x02f92800f57bcd74066f5709f1daa1a4302df875/); berachain [`0x02f928...2df875`](./contracts/berachain-80094/0x02f92800f57bcd74066f5709f1daa1a4302df875/) | ✅ Audited |
| IndexManager | governance | ethereum | n/a | 8 deployments: ethereum [`0x0bb39b...b4ae6b`](./contracts/ethereum-1/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); ethereum `0x6effcf...b7666e`; sonic `0x9e054f...166060`; base [`0x0bb39b...b4ae6b`](./contracts/base-8453/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); base `0x556059...94ec30`; arbitrum [`0x0bb39b...b4ae6b`](./contracts/arbitrum-42161/0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b/); arbitrum `0x64511c...b14fd8`; berachain `0xc9260c...932f01` | ✅ Audited |
| IndexUtils | unknown | arbitrum | n/a | 19 deployments: ethereum `0x2bcca7...a1054c`; ethereum `0x521e24...bd03cc`; ethereum `0x88b6db...87d9b7`; ethereum `0x9a103a...7b8db6`; sonic `0x242325...0f5eca`; base `0x37cd1f...659dde`; base `0x490b03...15826d`; base `0x59b730...a0a962`; base `0xa15cf7...5f0042`; arbitrum [`0x19f6bd...96724d`](./contracts/arbitrum-42161/0x19f6bdfb1c22c3636525a1a07734313d7b96724d/); arbitrum `0x1f422d...c9190b`; arbitrum `0x25648a...e83d2e`; arbitrum `0x36c5e5...e1ad83`; arbitrum `0x3e462a...e06c19`; arbitrum `0x4b6d3f...745e0d`; arbitrum `0x5c5c28...65f0c0`; arbitrum `0xa06439...350c10`; arbitrum `0xbb6f81...252bed`; berachain `0x40bd82...386717` | ✅ Audited |
| LendingAssetVaultFactory | registry | base | n/a | 6 deployments: ethereum `0xbab29f...7912c6`; sonic `0x6786d3...b7a8ec`; base [`0x3cc2a9...875cfc`](./contracts/base-8453/0x3cc2a9d0cab4176ee485016f5620c88b8a875cfc/); base `0x48f39f...b7c31e`; arbitrum `0xa9a92c...e1c95e`; arbitrum `0xf252b0...3bda3a` | ✅ Audited |
| LeverageManager | governance | base | n/a | 2 deployments: base [`0x002373...fdc6c7`](./contracts/base-8453/0x002373c90ca02869024f6acc0c61874063fdc6c7/); arbitrum `0x55af47...40bf76` | ✅ Audited |
| PEAS | unknown | ethereum | n/a | [`0x02f928...2df875`](./contracts/ethereum-1/0x02f92800f57bcd74066f5709f1daa1a4302df875/) | ✅ Audited |
| ProtocolFeeRouter | adapter | base | n/a | 4 deployments: base [`0x45c4ad...572611`](./contracts/base-8453/0x45c4adf501cd90ffd62bbc4b7cbe99bf31572611/); base `0xabcafc...affcdb`; arbitrum `0x98bb5a...59fe39`; arbitrum `0xeebb4b...054ae2` | ✅ Audited |
| ProtocolFees | unknown | arbitrum | n/a | 4 deployments: base `0x301846...9660fd`; base `0x83eccb...823f94`; arbitrum [`0x2492fd...4ec8a2`](./contracts/arbitrum-42161/0x2492fd2134a68fbfb3471390ac2d13fd2d4ec8a2/); arbitrum `0xbf9d21...546855` | ✅ Audited |
| RewardsWhitelist | unknown | base | n/a | 4 deployments: base [`0x0d7a0f...9bc24e`](./contracts/base-8453/0x0d7a0f0deba08c984c6517f5eec59503ff9bc24e/); base `0xfa9d58...e0296f`; arbitrum `0x14940e...9396ba`; arbitrum `0xac4050...93cbf1` | ✅ Audited |
| TokenRewards | token | arbitrum | n/a | 2 deployments: base `0xaa2adb...a32a06`; arbitrum [`0x37247d...3e4aae`](./contracts/arbitrum-42161/0x37247d24937425b1f13e7745e90db3546d3e4aae/) | ✅ Audited |
| UnweightedIndex | unknown | ethereum | n/a | [`0x3c56ca...f5451c`](./contracts/ethereum-1/0x3c56cabe6dbbad11c4fe36f09777ef417ef5451c/) | ✅ Audited |
| V2ReservesCamelot | unknown | arbitrum | n/a | [`0xec8a49...3eeaf8`](./contracts/arbitrum-42161/0xec8a490000e9553a373e54ed71c09c7aa73eeaf8/) | ✅ Audited |
| V3TwapAerodromeUtilities | unknown | base | n/a | [`0x024ff4...d5229d`](./contracts/base-8453/0x024ff47d552cb222b265d68c7aeb26e586d5229d/) | ✅ Audited |
| V3TwapCamelotUtilities | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x0b9d4c...60c32f`](./contracts/arbitrum-42161/0x0b9d4c3fbf57777283979537baed9b834a60c32f/); arbitrum `0x88b6db...87d9b7`; arbitrum `0xe8869f...e11458` | ✅ Audited |
| V3TwapUtilities | unknown | arbitrum | n/a | 5 deployments: base `0x0b9d4c...60c32f`; base `0x920093...c9bdc0`; arbitrum [`0x024ff4...d5229d`](./contracts/arbitrum-42161/0x024ff47d552cb222b265d68c7aeb26e586d5229d/); arbitrum `0x948e2e...18ad48`; arbitrum `0xadb070...49466b` | ✅ Audited |
| VariableInterestRate | operational_periphery | base | n/a | 10 deployments: base [`0x11c96e...de5064`](./contracts/base-8453/0x11c96ef61b7c08f1eedab3ee141a4b10eade5064/); base `0x4777f8...8df291`; base `0x5288e7...1ef07b`; base `0x544361...000a81`; base `0xb38177...450869`; arbitrum `0x28da3f...f0519d`; arbitrum `0x41799b...a48310`; arbitrum `0x769707...6ea044`; arbitrum `0x8b6018...fde9ca`; arbitrum `0xf0f08c...a8923a` | ✅ Audited |
| WeightedIndex | unknown | base | n/a | 21 deployments: ethereum `0x027ce4...f9b1c7`; ethereum `0x515e7f...10a49b`; ethereum `0x88e08a...2d1ca4`; base [`0x016c3f...2e02d0`](./contracts/base-8453/0x016c3f33a008e99ba332da0002b08521bd2e02d0/); base `0x252dae...55ca3e`; base `0x4edabe...b727a6`; base `0x52c2cf...9ca0ac`; base `0x54ddb5...a60fd5`; base `0x6786d3...b7a8ec`; base `0xd1a4d1...296d5b`; base `0xe04257...a796d8`; arbitrum `0x04595a...dfce35`; arbitrum `0x185127...c09fb7`; arbitrum `0x288e94...c31f52`; arbitrum `0x491393...763d32`; arbitrum `0x4cf859...e24433`; arbitrum `0x5288e7...1ef07b`; arbitrum `0x60dc09...4a35ab`; arbitrum `0x6116b4...952b38`; arbitrum `0xce4ab2...eb6b6e`; arbitrum `0xf38009...e7e625` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UniswapV3Pool | core_logic | arbitrum | n/a | 4 deployments: ethereum `0x526800...c56b36`; ethereum `0xae7505...d79160`; base `0x5abdb2...f5a72b`; arbitrum [`0x23d177...f3f8b2`](./contracts/arbitrum-42161/0x23d17764f41aea93fdbb5beffa83571f0bf3f8b2/) | ⚠️ Unaudited |
| CLPool | core_logic | base | n/a | 3 deployments: base [`0x2787d7...f529d6`](./contracts/base-8453/0x2787d72d17db123351ebe903237e761ebcf529d6/); base `0xb0a65b...17309e`; base `0xd53398...98c37e` | ⚠️ Unaudited |
| AlgebraPool | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x44cc8b...584a77`](./contracts/arbitrum-42161/0x44cc8b40b1483e62e59ef937441ba6aa8e584a77/); arbitrum `0xcf7145...7bd6d5` | ⚠️ Unaudited |
| aspTKNMinimalOracleFactory | operational_periphery | base | n/a | 12 deployments: ethereum `0x7b68b5...30adbe`; sonic `0x46f081...9f33d0`; base [`0x25b9dd...0fdb8d`](./contracts/base-8453/0x25b9dd337e64f0c5fb34bf6f46fe17e1d50fdb8d/); base `0x39d284...58d2fb`; base `0xa24b7c...a068e2`; base `0xc2b0a3...e62374`; base `0xeed5e9...2d0a67`; arbitrum `0x5c9715...98305e`; arbitrum `0x73a97a...403c1c`; arbitrum `0x9c2ef6...256aa2`; arbitrum `0xcd64e9...213f5e`; arbitrum `0xd8eea1...d6759b` | ⚠️ Unaudited |
| CamelotV3SinglePriceOracle | operational_periphery | arbitrum | n/a | [`0x48b50c...3888a1`](./contracts/arbitrum-42161/0x48b50c792d993a56cdf23b0ad64c257f2a3888a1/) | ⚠️ Unaudited |
| DIAMultiFeedConverter | unknown | ethereum | n/a | [`0x8b55d5...d4aa18`](./contracts/ethereum-1/0x8b55d55790f1369fa6c45e702bf30ea81dd4aa18/) | ⚠️ Unaudited |
| HydrexV3SinglePriceOracle | operational_periphery | base | n/a | 4 deployments: base [`0x429fff...3ee7e0`](./contracts/base-8453/0x429fffd75ff44b3d6ec884c4b79b3ee0603ee7e0/); base `0x5d8290...2777f8`; base `0x87f6a1...4905ee`; base `0xa89283...5f2ca0` | ⚠️ Unaudited |
| IndirectOFT | unknown | sonic | n/a | 5 deployments: sonic [`0x14dec8...4e4965`](./contracts/sonic-146/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); base [`0x14dec8...4e4965`](./contracts/base-8453/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); mode [`0x14dec8...4e4965`](./contracts/mode-34443/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); arbitrum [`0x14dec8...4e4965`](./contracts/arbitrum-42161/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/); berachain [`0x14dec8...4e4965`](./contracts/berachain-80094/0x14dec875e8ff3eae9f62198e7c29a0021c4e4965/) | ⚠️ Unaudited |
| LeverageFactory | registry | ethereum | n/a | 4 deployments: ethereum [`0x43b9d9...1939d3`](./contracts/ethereum-1/0x43b9d9b0585e5e8a1e069195170adfd0461939d3/); sonic `0xf2db5e...800f96`; base `0x459b54...f38d5f`; arbitrum `0x7225d7...4a1d2f` | ⚠️ Unaudited |
| LeverageFeeProcessor | unknown | base | n/a | 4 deployments: ethereum `0xff673a...c8ae2b`; sonic `0xedd48a...d55544`; base [`0x9698b9...097ae9`](./contracts/base-8453/0x9698b93775907afa0968e9b121744f4641097ae9/); arbitrum `0x97bbe6...beccb3` | ⚠️ Unaudited |
| MyOFTAdapter | adapter | ethereum | n/a | [`0x801642...d9b433`](./contracts/ethereum-1/0x801642b6efb861fe624dad704b7a747779d9b433/) | ⚠️ Unaudited |
| PodFlashMintSource | unknown | arbitrum | n/a | 7 deployments: ethereum `0xc73c64...eda601`; sonic `0xb2a28e...7679de`; base `0x1b59d4...af84a0`; base `0x67be5a...c101fd`; base `0xf59c79...4bcd1a`; arbitrum [`0x0d9a03...cc83c7`](./contracts/arbitrum-42161/0x0d9a0344b290ac1f12452986da6018dc53cc83c7/); arbitrum `0x8cf3b7...6347e9` | ⚠️ Unaudited |
| PodUnwrapLocker | unknown | sonic | n/a | 5 deployments: ethereum `0xace71c...959d74`; sonic [`0x02b7d3...9494b5`](./contracts/sonic-146/0x02b7d3d5438037d49a25ed15ae34f2d0099494b5/); base `0x76d6bb...6619c2`; arbitrum `0xcb19e5...ca8a3a`; berachain `0x4e4766...31bbac` | ⚠️ Unaudited |
| PodVaultUtility | core_logic | arbitrum | n/a | 5 deployments: ethereum `0x7f782f...0afeef`; ethereum `0xebebc4...159910`; sonic `0x08bafc...1de253`; base `0xaee454...757a5e`; arbitrum [`0x06386d...440fc9`](./contracts/arbitrum-42161/0x06386d5225d642fcbaa11c608fd50c4318440fc9/) | ⚠️ Unaudited |
| StakingVault | core_logic | ethereum | n/a | [`0xdab175...7b1ecc`](./contracts/ethereum-1/0xdab17556ae10062f5939e56d44063c12eb7b1ecc/) | ⚠️ Unaudited |
| WeightedIndexFactory | registry | base | n/a | 2 deployments: base [`0x389ac6...5eee89`](./contracts/base-8453/0x389ac635535e3c58ee22864f146b87e3235eee89/); arbitrum `0xae2cb5...46985c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LeveragePositions | unknown | sonic | n/a | 2 deployments: sonic [`0x26947f...944265`](./contracts/sonic-146/0x26947f4ddccd36604b141989ebf3e66f78944265/); berachain `0xf290d5...9beb16` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (57)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0e0f52...d5c6fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1686b6...8ffc7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7581f7...9f37ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88c6ee...df3db3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9acabc...a9d9d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb58556...d33c96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc58941...e2cb7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2315f...0361f0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x182ddd...bc5088` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1ce46d...b4e8f2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x21eadf...ce8685` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2d2d83...e0ca31` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x66d39b...daf291` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8e9b4d...4eeb4a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc4ba49...1ae039` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xef6ca1...601734` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf79e97...c598bb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfc4c95...137ff4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x074686...db649a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d05d3...265a51` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0fc6ca...6a608d` | ❓ Unverified |
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
| UnnamedContract | unknown | mode | n/a | `0x54f0b2...1b9243` | ❓ Unverified |
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
| UnnamedContract | unknown | arbitrum | n/a | `0xc91104...65fc6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdeb779...ed83d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4abbe...003fba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7caed...dfc805` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf79e47...1dd261` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc4c95...137ff4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://sourcehat.com/audits/PeapodsFinance) | SourceHat | Audit | 2023-12 | stale | Direct | contract_name | 57 | high |
| [Rendered PDF capture](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2FNepD2vC6ydmdzIX0TlkF%2FyAudit_report%20(2).pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | 3 | high |
| [Rendered PDF capture](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2FhIIhvk8ktnP28clIIAls%2FPeapods_Report.pdf) | SourceHat | Audit | 2024-11 | aging | Direct | contract_name | 59 | high |
| [Rendered PDF capture](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2F1H0oxy7m5JgiUvW4syJW%2FPeapods-security-review_2024-11-16%20(2).pdf) | SourceHat | Audit | 2024-12 | aging | Direct | contract_name | 96 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x25b9dd...0fdb8d`](./contracts/base-8453/0x25b9dd337e64f0c5fb34bf6f46fe17e1d50fdb8d/) | aspTKNMinimalOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b55d5...d4aa18`](./contracts/ethereum-1/0x8b55d55790f1369fa6c45e702bf30ea81dd4aa18/) | DIAMultiFeedConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43b9d9...1939d3`](./contracts/ethereum-1/0x43b9d9b0585e5e8a1e069195170adfd0461939d3/) | LeverageFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9698b9...097ae9`](./contracts/base-8453/0x9698b93775907afa0968e9b121744f4641097ae9/) | LeverageFeeProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d9a03...cc83c7`](./contracts/arbitrum-42161/0x0d9a0344b290ac1f12452986da6018dc53cc83c7/) | PodFlashMintSource | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x02b7d3...9494b5`](./contracts/sonic-146/0x02b7d3d5438037d49a25ed15ae34f2d0099494b5/) | PodUnwrapLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06386d...440fc9`](./contracts/arbitrum-42161/0x06386d5225d642fcbaa11c608fd50c4318440fc9/) | PodVaultUtility | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdab175...7b1ecc`](./contracts/ethereum-1/0xdab17556ae10062f5939e56d44063c12eb7b1ecc/) | StakingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x389ac6...5eee89`](./contracts/base-8453/0x389ac635535e3c58ee22864f146b87e3235eee89/) | WeightedIndexFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 7 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=512

Fork inheritance lineage and inherited audits are included when available.
