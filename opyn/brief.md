# Agentic Audit Brief: Opyn

⚠️ Lifecycle status: DECLINING - TVL changed 3.7% over 90 days

## Project Overview

- Project: Opyn (`opyn`)
- Website: [https://www.opyn.co](https://www.opyn.co)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-10T20:59:08.824Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: avalanche, ethereum
- Contract surface: 103 unique implementations (200 raw deployments)
- DeFi Llama TVL: $2,020,344.00
- On-chain TVL (included contracts): $1,022,254.47
- TVL by chain: Ethereum $1,022,249.03 | Avalanche $5.44

## Project Description

Opyn includes legacy decentralized options infrastructure such as Gamma and Squeeth on Ethereum and Avalanche, with residual TVL and historical derivatives contracts. Its current public positioning has shifted toward Opyn Markets, described as a forthcoming Uniswap-like perpetuals ecosystem. Gamma and Squeeth should be treated as legacy or unresolved-current-status product lines unless current activity is independently verified.

### Architecture

Opyn Gamma and Squeeth share infrastructure through the Controller contract, which is used in Squeeth and may interact with Gamma's margin pools. The Convexity factory is a legacy component for deploying options, while Gamma and Squeeth represent the active product lines with distinct collateral and trading mechanisms.

## Audit Coverage Summary

- Verified implementations audited: 0/33 (0.0%)
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 70
- Unique implementations: 103
- Raw deployments: 200
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,022,254.47
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,022,254.47 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MarginPool | core_logic | avalanche | 9 deployments: ethereum `0x0cb5bd...ddf680`; ethereum `0x593480...56c6ef`; avalanche [`0x06aa7f...f8e5b0`](./contracts/avalanche-43114/0x06aa7f18b263c67a04fc890a2166a4b54bf8e5b0/); avalanche `0x527514...66d50e`; avalanche `0x5b4289...c5708b`; avalanche `0x9c7918...48017a`; avalanche `0xb628d6...b15024`; avalanche `0xccf662...4fdb9d`; avalanche `0xfe9c85...f5591f` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | ethereum | [`0x82c427...f0d29c`](./contracts/ethereum-1/0x82c427adfdf2d245ec51d8046b41c4ee87f0d29c/) | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | 3 deployments: avalanche [`0x6bf686...9a9fb3`](./contracts/avalanche-43114/0x6bf686d99a4ce17798c45d09c21181fac29a9fb3/); avalanche `0x98d031...a87787`; avalanche `0x9dd6be...a3e3a3` | ⚠️ Unaudited |
| ABDKMath64x64 | unknown | ethereum | 2 deployments: ethereum [`0x21a8d1...be0f32`](./contracts/ethereum-1/0x21a8d15322c257abd2b22a56edde758398be0f32/); ethereum `0x64187a...a493d5` | ⚠️ Unaudited |
| AddressBook | unknown | ethereum | 11 deployments: ethereum [`0x1e31f2...15cbe4`](./contracts/ethereum-1/0x1e31f2dcbad4dc572004eae6355fb18f9615cbe4/); ethereum `0x57ade7...5fbeaf`; avalanche `0x27d60b...5ac87d`; avalanche `0x3ab3ff...cba7b6`; avalanche `0x58d6bd...e40854`; avalanche `0x5a2e87...94e9a6`; avalanche `0x63e48a...be7310`; avalanche `0x8b5bff...7aa0eb`; avalanche `0xac289a...481ed4`; avalanche `0xbca124...110510`; avalanche `0xef3b91...4ee698` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | avalanche | 6 deployments: avalanche [`0x1e5341...fbdb5c`](./contracts/avalanche-43114/0x1e5341cb798864e2f979d4679de35646d9fbdb5c/); avalanche `0x4375e9...4dc234`; avalanche `0x62e04b...bc05e4`; avalanche `0xabd2a9...f567dc`; avalanche `0xafe24b...f3b1c7`; avalanche `0xee5b96...94785c` | ⚠️ Unaudited |
| AllowListOffChainManaged | unknown | avalanche | [`0x5ae9b3...8e0df8`](./contracts/avalanche-43114/0x5ae9b340a98085d0fc25ae98a5eb704ba08e0df8/) | ⚠️ Unaudited |
| Controller | governance | avalanche | 4 deployments: ethereum `0x448608...5e23d7`; ethereum `0xae1e3a...2e9f86`; avalanche [`0x02b70a...fc0e18`](./contracts/avalanche-43114/0x02b70ab8fd23f95e0cd8f8ea604415eb7cfc0e18/); avalanche `0xeadf3d...7aa23d` | ⚠️ Unaudited |
| DeltaStrikeSelection | unknown | avalanche | 4 deployments: avalanche [`0x431058...7e1bb9`](./contracts/avalanche-43114/0x431058f0eef3833b9a73bce19ba35c23d47e1bb9/); avalanche `0xb00b89...301290`; avalanche `0xbf96a7...fd1d58`; avalanche `0xc16a88...135379` | ⚠️ Unaudited |
| DepositAndPlaceOrder | unknown | avalanche | 2 deployments: avalanche [`0x193c89...89cedb`](./contracts/avalanche-43114/0x193c8993480df4c1dbbdb39db07511f7d789cedb/); avalanche `0xe0fdba...729698` | ⚠️ Unaudited |
| ManualVolOracle | operational_periphery | avalanche | 3 deployments: avalanche [`0x175bcf...80bc39`](./contracts/avalanche-43114/0x175bcf06ef1120a432ea3f7cdf33fc0af980bc39/); avalanche `0x9e5e8d...ed05dd`; avalanche `0xfda869...ee0bb3` | ⚠️ Unaudited |
| MarginCalculator | unknown | avalanche | 4 deployments: ethereum `0x7a48d1...cfd3c7`; ethereum `0xacabf8...1d82ac`; avalanche [`0x2c726a...46b337`](./contracts/avalanche-43114/0x2c726a7da5500bd59a488e0065c41822bb46b337/); avalanche `0xbd5a1d...ac2afd` | ⚠️ Unaudited |
| MarginVault | core_logic | avalanche | 3 deployments: ethereum `0x8ba5e7...1850ed`; avalanche [`0x8b5685...52858a`](./contracts/avalanche-43114/0x8b5685586f43c07aa0f911bb5d5db8b56252858a/); avalanche `0x9b011c...88912f` | ⚠️ Unaudited |
| OptionsExchange | unknown | ethereum | 3 deployments: ethereum [`0x146077...b2e75f`](./contracts/ethereum-1/0x1460771b713e8e58e350f9d82f7b83acb6b2e75f/); ethereum `0x39246c...817c71`; ethereum `0x5778f2...216017` | ⚠️ Unaudited |
| OptionsFactory | registry | ethereum | 2 deployments: ethereum [`0xb52996...a4feac`](./contracts/ethereum-1/0xb529964f86fbf99a6aa67f72a27e59fa3fa4feac/); ethereum `0xcc5d90...c7777c` | ⚠️ Unaudited |
| OptionsPremiumPricer | operational_periphery | avalanche | 3 deployments: avalanche [`0x03bb97...76e66e`](./contracts/avalanche-43114/0x03bb97fa0fe4f85e378f6bc32a4ef9141876e66e/); avalanche `0x54daf3...3cab89`; avalanche `0xbd5103...805b21` | ⚠️ Unaudited |
| OptionsPremiumPricerInStables | operational_periphery | avalanche | 2 deployments: avalanche [`0x9c31f6...7464e8`](./contracts/avalanche-43114/0x9c31f6fafda0b9cd762f2850c3438d20a87464e8/); avalanche `0xa24669...b7ce9f` | ⚠️ Unaudited |
| Oracle | operational_periphery | avalanche | 12 deployments: ethereum `0x65d66c...a483a1`; ethereum `0x7054e0...746415`; ethereum `0xc497f4...26da23`; ethereum `0xef196a...777670`; avalanche [`0x00bf1e...b54f2d`](./contracts/avalanche-43114/0x00bf1e9b876d63f5cd4ee114211a9a7b7fb54f2d/); avalanche `0x108abf...0f0b10`; avalanche `0x454a11...405bd0`; avalanche `0x47a8fa...c1a89a`; avalanche `0x5c76e7...f5e8eb`; avalanche `0x6f010d...bd7c9f`; avalanche `0x72c959...1d45ad`; avalanche `0xa7516c...ece8bb` | ⚠️ Unaudited |
| Otoken | token | avalanche | 9 deployments: ethereum `0x7087ef...5d38ee`; ethereum `0xe86ed5...153469`; avalanche [`0x03b284...9ed931`](./contracts/avalanche-43114/0x03b28469a3f5cbdcba91485b82de17d64b9ed931/); avalanche `0x0fd7e1...cfc823`; avalanche `0x3c19dd...351c29`; avalanche `0x459a8b...224677`; avalanche `0x9d7915...4fe904`; avalanche `0xbc2804...c21425`; avalanche `0xe0ebdd...0c7bfe` | ⚠️ Unaudited |
| OtokenFactory | registry | avalanche | 10 deployments: ethereum `0x7c0679...4bdf8e`; ethereum `0xe21127...f47e26`; avalanche [`0x0dc319...60c3d2`](./contracts/avalanche-43114/0x0dc3197fdd54cf5e8f8961bbf626be320160c3d2/); avalanche `0x215967...725505`; avalanche `0x25bc1c...9f66a5`; avalanche `0x6fb3f1...3b0b14`; avalanche `0x90fcbd...249eae`; avalanche `0xc0cf10...d98a53`; avalanche `0xf9745a...ea0955`; avalanche `0xfc8c59...e98060` | ⚠️ Unaudited |
| PayableProxyController | governance | ethereum | [`0x8f7dd6...4f70ac`](./contracts/ethereum-1/0x8f7dd610c457fc7cb26b0f9db4e77581f94f70ac/) | ⚠️ Unaudited |
| RibbonDeltaVault | core_logic | avalanche | [`0x9d725c...b52b13`](./contracts/avalanche-43114/0x9d725c6d242e816da485d676056466e18cb52b13/) | ⚠️ Unaudited |
| RibbonThetaVault | core_logic | avalanche | 7 deployments: avalanche [`0x0f4032...d54684`](./contracts/avalanche-43114/0x0f403289ed880a2edb21cfc6927d5950c6d54684/); avalanche `0x10b87d...0cd00c`; avalanche `0x16b08b...8f588b`; avalanche `0x243dd8...cb3ffb`; avalanche `0xb7ec3b...e4f480`; avalanche `0xd00a29...98fa65`; avalanche `0xdcfd14...5b926e` | ⚠️ Unaudited |
| ShortHelper | periphery | ethereum | [`0x3b4095...1632c5`](./contracts/ethereum-1/0x3b4095d5ff0e629972caaa50bd3004b09a1632c5/) | ⚠️ Unaudited |
| ShortPowerPerp | unknown | ethereum | [`0xa653e2...863a38`](./contracts/ethereum-1/0xa653e22a963ff0026292cc8b67941c0ba7863a38/) | ⚠️ Unaudited |
| SqrtPriceMathPartial | operational_periphery | ethereum | [`0x9cf8dc...828460`](./contracts/ethereum-1/0x9cf8dcbcf115b06d8f577e73cb9edfdb27828460/) | ⚠️ Unaudited |
| StakedaoPricer | operational_periphery | ethereum | 5 deployments: ethereum [`0x4c6568...513401`](./contracts/ethereum-1/0x4c65680554c35c27dddb2f276f95225953513401/); ethereum `0x4d6e00...566d8f`; ethereum `0x642b99...e4caed`; ethereum `0xaf751e...7b35d3`; ethereum `0xb4cbbd...1b39c3` | ⚠️ Unaudited |
| StrikeSelection | unknown | avalanche | 5 deployments: avalanche [`0x00d27c...960d81`](./contracts/avalanche-43114/0x00d27cbb90ae158f2db39c899e006a05df960d81/); avalanche `0x05351b...e3dbed`; avalanche `0x4fc945...f7ba3e`; avalanche `0x67ea3d...ea84ac`; avalanche `0x6c2bd3...8ccf7b` | ⚠️ Unaudited |
| TickMathExternal | unknown | ethereum | [`0x4d9d7f...e6fdfc`](./contracts/ethereum-1/0x4d9d7f7ae80d51628aa56ef37720718c99e6fdfc/) | ⚠️ Unaudited |
| VaultLifecycle | core_logic | avalanche | [`0xe0854d...b9223e`](./contracts/avalanche-43114/0xe0854ddd162ffe4e2ff1db6e62b544521cb9223e/) | ⚠️ Unaudited |
| VaultQueue | core_logic | avalanche | 2 deployments: avalanche [`0x2986e8...b14648`](./contracts/avalanche-43114/0x2986e874370a1398807d76d70c73e7ec7db14648/); avalanche `0xe6325f...66d8be` | ⚠️ Unaudited |
| Whitelist | unknown | ethereum | 9 deployments: ethereum [`0x224436...011882`](./contracts/ethereum-1/0x2244364c94a9fcb6f9ae3a4cf38f279706011882/); ethereum `0xa5ea18...0a6779`; avalanche `0x4980d7...2289d0`; avalanche `0x4c6598...ba4904`; avalanche `0x939588...32fa93`; avalanche `0xa83941...ea6b4f`; avalanche `0xd79756...add13c`; avalanche `0xe3243b...d2c1fe`; avalanche `0xe9963a...6087c9` | ⚠️ Unaudited |
| WPowerPerp | unknown | ethereum | [`0xf1b99e...64e86b`](./contracts/ethereum-1/0xf1b99e3e573a1a9c5e6b2ce818b617f0e664e86b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (70)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x003991...cc7e86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x01cc03...7d2e7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x027d66...95e4e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d8881...728c44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x20cb32...549093` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x26d6f5...aa92d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x33fff8...22f6e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3636f7...8b5d87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ca3ce...dca398` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x44f181...5a3bdf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x48828a...43c064` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x498daa...a13e51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4f6f0e...28e3e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x50388c...4be3cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5a7524...078d3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x62f55e...a1ff90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6aaebf...1d0cdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6babb7...021d01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x769a8d...2e55e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x792eca...e5607a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7be5ed...d715a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x802f0b...d8badd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x82d89e...8f61f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x91a6a7...8fb049` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x93c3b7...0e50fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x952419...21cc08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x95b49a...e5a1c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa7df5b...b667e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xab4ea1...ee1d35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xad4611...b605bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae67dc...ff522d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb56ba2...1e8b96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb611a3...76579b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbd9817...5537cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb4d1d...457a4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd0c9ca...4b8711` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd4cccc...24590d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd99721...b96dbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdbd3dd...be26d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdd7eca...c479ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe0319d...4fcabf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe8303f...9d4b60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec1a34...096a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec44e3...6c6c34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef298f...5e9fa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf8e87f...8660b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf95872...59aade` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd4a00...270394` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x04c75f...aeadc0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0cd322...927abc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1627b5...84292b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1ce1fe...c94d39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2156b6...298906` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2ba283...c02326` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x31e6ad...f1ad45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x328494...c6c6ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3405ad...ee0021` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x34c737...c41103` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5b69a3...58f01d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7b859b...49c39e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8c4fd2...b4f6ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8f49d8...89df66` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9a0b5e...beb3bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9a66a6...c066d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaf6183...f4fef4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc1b7b1...016371` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc8698b...e29873` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xed3866...405e6b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xef0ac6...5a9631` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfce6a2...18448c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x06aa7f...f8e5b0`](./contracts/avalanche-43114/0x06aa7f18b263c67a04fc890a2166a4b54bf8e5b0/) | MarginPool | core_logic | $917,946.48 | Verified native implementation with $917,946.48 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e31f2...15cbe4`](./contracts/ethereum-1/0x1e31f2dcbad4dc572004eae6355fb18f9615cbe4/) | AddressBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5ae9b3...8e0df8`](./contracts/avalanche-43114/0x5ae9b340a98085d0fc25ae98a5eb704ba08e0df8/) | AllowListOffChainManaged | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x02b70a...fc0e18`](./contracts/avalanche-43114/0x02b70ab8fd23f95e0cd8f8ea604415eb7cfc0e18/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x431058...7e1bb9`](./contracts/avalanche-43114/0x431058f0eef3833b9a73bce19ba35c23d47e1bb9/) | DeltaStrikeSelection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x193c89...89cedb`](./contracts/avalanche-43114/0x193c8993480df4c1dbbdb39db07511f7d789cedb/) | DepositAndPlaceOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x175bcf...80bc39`](./contracts/avalanche-43114/0x175bcf06ef1120a432ea3f7cdf33fc0af980bc39/) | ManualVolOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2c726a...46b337`](./contracts/avalanche-43114/0x2c726a7da5500bd59a488e0065c41822bb46b337/) | MarginCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8b5685...52858a`](./contracts/avalanche-43114/0x8b5685586f43c07aa0f911bb5d5db8b56252858a/) | MarginVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x146077...b2e75f`](./contracts/ethereum-1/0x1460771b713e8e58e350f9d82f7b83acb6b2e75f/) | OptionsExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb52996...a4feac`](./contracts/ethereum-1/0xb529964f86fbf99a6aa67f72a27e59fa3fa4feac/) | OptionsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x03bb97...76e66e`](./contracts/avalanche-43114/0x03bb97fa0fe4f85e378f6bc32a4ef9141876e66e/) | OptionsPremiumPricer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9c31f6...7464e8`](./contracts/avalanche-43114/0x9c31f6fafda0b9cd762f2850c3438d20a87464e8/) | OptionsPremiumPricerInStables | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x00bf1e...b54f2d`](./contracts/avalanche-43114/0x00bf1e9b876d63f5cd4ee114211a9a7b7fb54f2d/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x03b284...9ed931`](./contracts/avalanche-43114/0x03b28469a3f5cbdcba91485b82de17d64b9ed931/) | Otoken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0dc319...60c3d2`](./contracts/avalanche-43114/0x0dc3197fdd54cf5e8f8961bbf626be320160c3d2/) | OtokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f7dd6...4f70ac`](./contracts/ethereum-1/0x8f7dd610c457fc7cb26b0f9db4e77581f94f70ac/) | PayableProxyController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b4095...1632c5`](./contracts/ethereum-1/0x3b4095d5ff0e629972caaa50bd3004b09a1632c5/) | ShortHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa653e2...863a38`](./contracts/ethereum-1/0xa653e22a963ff0026292cc8b67941c0ba7863a38/) | ShortPowerPerp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cf8dc...828460`](./contracts/ethereum-1/0x9cf8dcbcf115b06d8f577e73cb9edfdb27828460/) | SqrtPriceMathPartial | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x00d27c...960d81`](./contracts/avalanche-43114/0x00d27cbb90ae158f2db39c899e006a05df960d81/) | StrikeSelection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe0854d...b9223e`](./contracts/avalanche-43114/0xe0854ddd162ffe4e2ff1db6e62b544521cb9223e/) | VaultLifecycle | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2986e8...b14648`](./contracts/avalanche-43114/0x2986e874370a1398807d76d70c73e7ec7db14648/) | VaultQueue | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x224436...011882`](./contracts/ethereum-1/0x2244364c94a9fcb6f9ae3a4cf38f279706011882/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1b99e...64e86b`](./contracts/ethereum-1/0xf1b99e3e573a1a9c5e6b2ce818b617f0e664e86b/) | WPowerPerp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 43 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 56 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
