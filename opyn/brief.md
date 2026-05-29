# Agentic Audit Brief: Opyn

⚠️ Lifecycle status: DEAD - TVL changed 3.7% over 90 days

## Project Overview

- Project: Opyn (`opyn`)
- Website: [https://www.opyn.co](https://www.opyn.co)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-29T11:47:26.202Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: avalanche, ethereum
- Contract surface: 103 unique implementations (200 raw deployments)
- DeFi Llama TVL: $2,020,344.00
- On-chain TVL (included contracts): $1,022,254.47
- TVL by chain: Ethereum $1,022,249.03 | Avalanche $5.44

## Project Description

Opyn is a decentralized options protocol that enables users to create, trade, and manage options and structured products on Ethereum and Avalanche. It offers capital-efficient derivatives through its Gamma and Squeeth product lines, allowing for hedging, speculation, and yield generation.

### Architecture

Opyn Gamma and Squeeth share infrastructure through the Controller contract, which is used in Squeeth and may interact with Gamma's margin pools. The Convexity factory is a legacy component for deploying options, while Gamma and Squeeth represent the active product lines with distinct collateral and trading mechanisms.

## Audit Coverage Summary

- Verified implementations audited: 16/33 (48.5%)
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 70
- Unique implementations: 103
- Raw deployments: 200
- Audits discovered: 157
- Scoreable audits (matched contracts): 37
- ASD (verified + unaudited TVL): $104,307.99
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 157 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $104,307.99 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 16 | 48.5% | n/a |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MarginPool | core_logic | avalanche | 9 deployments: ethereum `0x0cb5bd...ddf680`; ethereum `0x593480...56c6ef`; avalanche [`0x06aa7f...f8e5b0`](./contracts/avalanche-43114/0x06aa7f18b263c67a04fc890a2166a4b54bf8e5b0/); avalanche `0x527514...66d50e`; avalanche `0x5b4289...c5708b`; avalanche `0x9c7918...48017a`; avalanche `0xb628d6...b15024`; avalanche `0xccf662...4fdb9d`; avalanche `0xfe9c85...f5591f` | ✅ Audited |
| ABDKMath64x64 | unknown | ethereum | 2 deployments: ethereum [`0x21a8d1...be0f32`](./contracts/ethereum-1/0x21a8d15322c257abd2b22a56edde758398be0f32/); ethereum `0x64187a...a493d5` | ✅ Audited |
| AddressBook | unknown | ethereum | 11 deployments: ethereum [`0x1e31f2...15cbe4`](./contracts/ethereum-1/0x1e31f2dcbad4dc572004eae6355fb18f9615cbe4/); ethereum `0x57ade7...5fbeaf`; avalanche `0x27d60b...5ac87d`; avalanche `0x3ab3ff...cba7b6`; avalanche `0x58d6bd...e40854`; avalanche `0x5a2e87...94e9a6`; avalanche `0x63e48a...be7310`; avalanche `0x8b5bff...7aa0eb`; avalanche `0xac289a...481ed4`; avalanche `0xbca124...110510`; avalanche `0xef3b91...4ee698` | ✅ Audited |
| Controller | governance | avalanche | 4 deployments: ethereum `0x448608...5e23d7`; ethereum `0xae1e3a...2e9f86`; avalanche [`0x02b70a...fc0e18`](./contracts/avalanche-43114/0x02b70ab8fd23f95e0cd8f8ea604415eb7cfc0e18/); avalanche `0xeadf3d...7aa23d` | ✅ Audited |
| MarginCalculator | unknown | avalanche | 4 deployments: ethereum `0x7a48d1...cfd3c7`; ethereum `0xacabf8...1d82ac`; avalanche [`0x2c726a...46b337`](./contracts/avalanche-43114/0x2c726a7da5500bd59a488e0065c41822bb46b337/); avalanche `0xbd5a1d...ac2afd` | ✅ Audited |
| MarginVault | core_logic | avalanche | 3 deployments: ethereum `0x8ba5e7...1850ed`; avalanche [`0x8b5685...52858a`](./contracts/avalanche-43114/0x8b5685586f43c07aa0f911bb5d5db8b56252858a/); avalanche `0x9b011c...88912f` | ✅ Audited |
| OptionsExchange | unknown | ethereum | 3 deployments: ethereum [`0x146077...b2e75f`](./contracts/ethereum-1/0x1460771b713e8e58e350f9d82f7b83acb6b2e75f/); ethereum `0x39246c...817c71`; ethereum `0x5778f2...216017` | ✅ Audited |
| OptionsFactory | registry | ethereum | 2 deployments: ethereum [`0xb52996...a4feac`](./contracts/ethereum-1/0xb529964f86fbf99a6aa67f72a27e59fa3fa4feac/); ethereum `0xcc5d90...c7777c` | ✅ Audited |
| Oracle | operational_periphery | avalanche | 12 deployments: ethereum `0x65d66c...a483a1`; ethereum `0x7054e0...746415`; ethereum `0xc497f4...26da23`; ethereum `0xef196a...777670`; avalanche [`0x00bf1e...b54f2d`](./contracts/avalanche-43114/0x00bf1e9b876d63f5cd4ee114211a9a7b7fb54f2d/); avalanche `0x108abf...0f0b10`; avalanche `0x454a11...405bd0`; avalanche `0x47a8fa...c1a89a`; avalanche `0x5c76e7...f5e8eb`; avalanche `0x6f010d...bd7c9f`; avalanche `0x72c959...1d45ad`; avalanche `0xa7516c...ece8bb` | ✅ Audited |
| Otoken | token | avalanche | 9 deployments: ethereum `0x7087ef...5d38ee`; ethereum `0xe86ed5...153469`; avalanche [`0x03b284...9ed931`](./contracts/avalanche-43114/0x03b28469a3f5cbdcba91485b82de17d64b9ed931/); avalanche `0x0fd7e1...cfc823`; avalanche `0x3c19dd...351c29`; avalanche `0x459a8b...224677`; avalanche `0x9d7915...4fe904`; avalanche `0xbc2804...c21425`; avalanche `0xe0ebdd...0c7bfe` | ✅ Audited |
| OtokenFactory | registry | avalanche | 10 deployments: ethereum `0x7c0679...4bdf8e`; ethereum `0xe21127...f47e26`; avalanche [`0x0dc319...60c3d2`](./contracts/avalanche-43114/0x0dc3197fdd54cf5e8f8961bbf626be320160c3d2/); avalanche `0x215967...725505`; avalanche `0x25bc1c...9f66a5`; avalanche `0x6fb3f1...3b0b14`; avalanche `0x90fcbd...249eae`; avalanche `0xc0cf10...d98a53`; avalanche `0xf9745a...ea0955`; avalanche `0xfc8c59...e98060` | ✅ Audited |
| PayableProxyController | governance | ethereum | [`0x8f7dd6...4f70ac`](./contracts/ethereum-1/0x8f7dd610c457fc7cb26b0f9db4e77581f94f70ac/) | ✅ Audited |
| ShortHelper | periphery | ethereum | [`0x3b4095...1632c5`](./contracts/ethereum-1/0x3b4095d5ff0e629972caaa50bd3004b09a1632c5/) | ✅ Audited |
| ShortPowerPerp | unknown | ethereum | [`0xa653e2...863a38`](./contracts/ethereum-1/0xa653e22a963ff0026292cc8b67941c0ba7863a38/) | ✅ Audited |
| Whitelist | unknown | ethereum | 9 deployments: ethereum [`0x224436...011882`](./contracts/ethereum-1/0x2244364c94a9fcb6f9ae3a4cf38f279706011882/); ethereum `0xa5ea18...0a6779`; avalanche `0x4980d7...2289d0`; avalanche `0x4c6598...ba4904`; avalanche `0x939588...32fa93`; avalanche `0xa83941...ea6b4f`; avalanche `0xd79756...add13c`; avalanche `0xe3243b...d2c1fe`; avalanche `0xe9963a...6087c9` | ✅ Audited |
| WPowerPerp | unknown | ethereum | [`0xf1b99e...64e86b`](./contracts/ethereum-1/0xf1b99e3e573a1a9c5e6b2ce818b617f0e664e86b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UniswapV3Pool | core_logic | ethereum | [`0x82c427...f0d29c`](./contracts/ethereum-1/0x82c427adfdf2d245ec51d8046b41c4ee87f0d29c/) | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | 3 deployments: avalanche [`0x6bf686...9a9fb3`](./contracts/avalanche-43114/0x6bf686d99a4ce17798c45d09c21181fac29a9fb3/); avalanche `0x98d031...a87787`; avalanche `0x9dd6be...a3e3a3` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | avalanche | 6 deployments: avalanche [`0x1e5341...fbdb5c`](./contracts/avalanche-43114/0x1e5341cb798864e2f979d4679de35646d9fbdb5c/); avalanche `0x4375e9...4dc234`; avalanche `0x62e04b...bc05e4`; avalanche `0xabd2a9...f567dc`; avalanche `0xafe24b...f3b1c7`; avalanche `0xee5b96...94785c` | ⚠️ Unaudited |
| AllowListOffChainManaged | unknown | avalanche | [`0x5ae9b3...8e0df8`](./contracts/avalanche-43114/0x5ae9b340a98085d0fc25ae98a5eb704ba08e0df8/) | ⚠️ Unaudited |
| DeltaStrikeSelection | unknown | avalanche | 4 deployments: avalanche [`0x431058...7e1bb9`](./contracts/avalanche-43114/0x431058f0eef3833b9a73bce19ba35c23d47e1bb9/); avalanche `0xb00b89...301290`; avalanche `0xbf96a7...fd1d58`; avalanche `0xc16a88...135379` | ⚠️ Unaudited |
| DepositAndPlaceOrder | unknown | avalanche | 2 deployments: avalanche [`0x193c89...89cedb`](./contracts/avalanche-43114/0x193c8993480df4c1dbbdb39db07511f7d789cedb/); avalanche `0xe0fdba...729698` | ⚠️ Unaudited |
| ManualVolOracle | operational_periphery | avalanche | 3 deployments: avalanche [`0x175bcf...80bc39`](./contracts/avalanche-43114/0x175bcf06ef1120a432ea3f7cdf33fc0af980bc39/); avalanche `0x9e5e8d...ed05dd`; avalanche `0xfda869...ee0bb3` | ⚠️ Unaudited |
| OptionsPremiumPricer | operational_periphery | avalanche | 3 deployments: avalanche [`0x03bb97...76e66e`](./contracts/avalanche-43114/0x03bb97fa0fe4f85e378f6bc32a4ef9141876e66e/); avalanche `0x54daf3...3cab89`; avalanche `0xbd5103...805b21` | ⚠️ Unaudited |
| OptionsPremiumPricerInStables | operational_periphery | avalanche | 2 deployments: avalanche [`0x9c31f6...7464e8`](./contracts/avalanche-43114/0x9c31f6fafda0b9cd762f2850c3438d20a87464e8/); avalanche `0xa24669...b7ce9f` | ⚠️ Unaudited |
| RibbonDeltaVault | core_logic | avalanche | [`0x9d725c...b52b13`](./contracts/avalanche-43114/0x9d725c6d242e816da485d676056466e18cb52b13/) | ⚠️ Unaudited |
| RibbonThetaVault | core_logic | avalanche | 7 deployments: avalanche [`0x0f4032...d54684`](./contracts/avalanche-43114/0x0f403289ed880a2edb21cfc6927d5950c6d54684/); avalanche `0x10b87d...0cd00c`; avalanche `0x16b08b...8f588b`; avalanche `0x243dd8...cb3ffb`; avalanche `0xb7ec3b...e4f480`; avalanche `0xd00a29...98fa65`; avalanche `0xdcfd14...5b926e` | ⚠️ Unaudited |
| SqrtPriceMathPartial | operational_periphery | ethereum | [`0x9cf8dc...828460`](./contracts/ethereum-1/0x9cf8dcbcf115b06d8f577e73cb9edfdb27828460/) | ⚠️ Unaudited |
| StakedaoPricer | operational_periphery | ethereum | 5 deployments: ethereum [`0x4c6568...513401`](./contracts/ethereum-1/0x4c65680554c35c27dddb2f276f95225953513401/); ethereum `0x4d6e00...566d8f`; ethereum `0x642b99...e4caed`; ethereum `0xaf751e...7b35d3`; ethereum `0xb4cbbd...1b39c3` | ⚠️ Unaudited |
| StrikeSelection | unknown | avalanche | 5 deployments: avalanche [`0x00d27c...960d81`](./contracts/avalanche-43114/0x00d27cbb90ae158f2db39c899e006a05df960d81/); avalanche `0x05351b...e3dbed`; avalanche `0x4fc945...f7ba3e`; avalanche `0x67ea3d...ea84ac`; avalanche `0x6c2bd3...8ccf7b` | ⚠️ Unaudited |
| TickMathExternal | unknown | ethereum | [`0x4d9d7f...e6fdfc`](./contracts/ethereum-1/0x4d9d7f7ae80d51628aa56ef37720718c99e6fdfc/) | ⚠️ Unaudited |
| VaultLifecycle | core_logic | avalanche | [`0xe0854d...b9223e`](./contracts/avalanche-43114/0xe0854ddd162ffe4e2ff1db6e62b544521cb9223e/) | ⚠️ Unaudited |
| VaultQueue | core_logic | avalanche | 2 deployments: avalanche [`0x2986e8...b14648`](./contracts/avalanche-43114/0x2986e874370a1398807d76d70c73e7ec7db14648/); avalanche `0xe6325f...66d8be` | ⚠️ Unaudited |

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
| [AddressBook.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/core/AddressBook.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 11 | low |
| [Controller.md (also discovered via alternate URL)](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/core/Controller.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 5 | low |
| [MarginCalculator.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/core/MarginCalculator.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 4 | low |
| [MarginPool.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/core/MarginPool.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 9 | medium |
| [Oracle.md (also discovered via alternate URL)](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/core/Oracle.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 12 | low |
| [OtokenFactory.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/core/OtokenFactory.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 10 | low |
| [OtokenSpawner.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/core/OtokenSpawner.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Whitelist.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/core/Whitelist.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 9 | high |
| [PermitCallee.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/external/callees/PermitCallee.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TradeCallee.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/external/callees/TradeCallee.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WETH9.md (also discovered via alternate URL)](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/external/canonical-weth/WETH9.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PayableProxyController.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/external/proxies/PayableProxyController.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [AddressBookInterface.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/interfaces/AddressBookInterface.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AggregatorInterface.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/interfaces/AggregatorInterface.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CalleeInterface.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/interfaces/CalleeInterface.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ERC20Interface.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/interfaces/ERC20Interface.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MarginCalculatorInterface.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/interfaces/MarginCalculatorInterface.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MarginPoolInterface.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/interfaces/MarginPoolInterface.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OpynPricerInterface.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/interfaces/OpynPricerInterface.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OracleInterface.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/interfaces/OracleInterface.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OtokenInterface.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/interfaces/OtokenInterface.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WETH9Interface.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/interfaces/WETH9Interface.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WSTETHInterface.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/interfaces/WSTETHInterface.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WhitelistInterface.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/interfaces/WhitelistInterface.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [YearnVaultInterface.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/interfaces/YearnVaultInterface.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ZeroXExchangeInterface.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/interfaces/ZeroXExchangeInterface.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Actions.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/libs/Actions.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [FixedPointInt256.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/libs/FixedPointInt256.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MarginVault.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/libs/MarginVault.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | low |
| [SignedConverter.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/libs/SignedConverter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Mock0xERC20Proxy.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/mocks/Mock0xERC20Proxy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Mock0xExchange.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/mocks/Mock0xExchange.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockAddressBook.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/mocks/MockAddressBook.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockCToken.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/mocks/MockCToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockCUSDC.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/mocks/MockCUSDC.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockChainlinkAggregator.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/mocks/MockChainlinkAggregator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockController.md (also discovered via alternate URL)](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/mocks/MockController.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockDumbERC20.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/mocks/MockDumbERC20.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockERC20.md (also discovered via alternate URL)](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/mocks/MockERC20.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockOracle.md (also discovered via alternate URL)](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/mocks/MockOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockOtoken.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/mocks/MockOtoken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockPermitERC20.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/mocks/MockPermitERC20.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockPricer.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/mocks/MockPricer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockWSTETHToken.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/mocks/MockWSTETHToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockWhitelistModule.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/mocks/MockWhitelistModule.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockYToken.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/mocks/MockYToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BokkyPooBahsDateTimeLibrary.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/BokkyPooBahsDateTimeLibrary.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Spawn.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/Spawn.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Address.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/Address.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Create2.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/Create2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ReentrancyGuard.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/ReentrancyGuard.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SafeERC20.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/SafeERC20.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SignedSafeMath.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/SignedSafeMath.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Strings.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/Strings.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ERC20Upgradeable.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/upgradeability/ERC20Upgradeable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ContextUpgradeable.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/upgradeability/GSN/ContextUpgradeable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IERC20Upgradeable.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/upgradeability/IERC20Upgradeable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Initializable.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/upgradeability/Initializable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OwnableUpgradeSafe.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/upgradeability/OwnableUpgradeSafe.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OwnedUpgradeabilityProxy.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/upgradeability/OwnedUpgradeabilityProxy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Proxy.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/upgradeability/Proxy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ReentrancyGuardUpgradeSafe.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/upgradeability/ReentrancyGuardUpgradeSafe.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UpgradeabilityProxy.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/upgradeability/UpgradeabilityProxy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ECDSAUpgradeable.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/upgradeability/cryptography/ECDSAUpgradeable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EIP712Upgradeable.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/upgradeability/erc20-permit/EIP712Upgradeable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ERC20PermitUpgradeable.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/upgradeability/erc20-permit/ERC20PermitUpgradeable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IERC20PermitUpgradeable.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/upgradeability/erc20-permit/IERC20PermitUpgradeable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SafeMathUpgradeable.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/upgradeability/math/SafeMathUpgradeable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CountersUpgradeable.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/packages/oz/upgradeability/utils/CountersUpgradeable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainLinkPricer.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/pricers/ChainLinkPricer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CompoundPricer.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/pricers/CompoundPricer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WstethPricer.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/pricers/WstethPricer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [YearnPricer.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/pricers/YearnPricer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ActionTester.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/tests/ActionTester.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CalculatorTester.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/tests/CalculatorTester.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CallTester.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/tests/CallTester.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CalleeAllowanceTester.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/tests/CalleeAllowanceTester.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [FixedPointInt256Tester.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/tests/FixedPointInt256Tester.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [FlashUnwrap.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/tests/FlashUnwrap.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MarginVaultTester.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/tests/MarginVaultTester.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OtokenImplV1.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/tests/OtokenImplV1.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SignedConverterTester.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/tests/SignedConverterTester.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UpgradeableContractV1.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/tests/UpgradeableContractV1.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UpgradeableContractV2.md](https://github.com/opynfinance/GammaProtocol/blob/master/docs/contracts-documentation/tests/UpgradeableContractV2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ShortPowerPerp.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/core/ShortPowerPerp.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [WPowerPerp.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/core/WPowerPerp.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [WSqueeth.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/core/WSqueeth.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Uni.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/import/Uni.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IController.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/interfaces/IController.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IERC20Detailed.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/interfaces/IERC20Detailed.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IOracle.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/interfaces/IOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IShortPowerPerp.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/interfaces/IShortPowerPerp.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IVaultManagerNFT.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/interfaces/IVaultManagerNFT.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IWETH9.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/interfaces/IWETH9.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IWPowerPerp.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/interfaces/IWPowerPerp.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OracleLibrary.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/libs/OracleLibrary.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Power2Base.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/libs/Power2Base.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VaultLib.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/libs/VaultLib.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IUniswapV3FlashCallback.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/mocks/IUniswapV3FlashCallback.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockShortPowerPerp.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/mocks/MockShortPowerPerp.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockUniPositionManager.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/mocks/MockUniPositionManager.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockUniswapV3Pool.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/mocks/MockUniswapV3Pool.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockVaultNFTManager.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/mocks/MockVaultNFTManager.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockWPowerPerp.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/mocks/MockWPowerPerp.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockWSqueeth.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/mocks/MockWSqueeth.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ShortHelper.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/periphery/ShortHelper.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [CrabStrategy.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/strategy/CrabStrategy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [StrategyBase.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/strategy/base/StrategyBase.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [StrategyFlashSwap.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/strategy/base/StrategyFlashSwap.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [StrategyMath.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/strategy/base/StrategyMath.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ControllerTester.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/test/ControllerTester.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OracleTester.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/test/OracleTester.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VaultLibTester.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/hardhat/docs/contracts-documentation/test/VaultLibTester.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [README.md (also discovered via alternate URL)](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/zen-bull-netting/docs/src/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SUMMARY.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/zen-bull-netting/docs/src/SUMMARY.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contract.CallbackValidation.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/zen-bull-netting/docs/src/src/FlashSwap.sol/contract.CallbackValidation.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contract.FlashSwap.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/zen-bull-netting/docs/src/src/FlashSwap.sol/contract.FlashSwap.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contract.PoolAddress.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/zen-bull-netting/docs/src/src/FlashSwap.sol/contract.PoolAddress.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contract.NettingLib.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/zen-bull-netting/docs/src/src/NettingLib.sol/contract.NettingLib.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contract.ZenBullNetting.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/zen-bull-netting/docs/src/src/ZenBullNetting.sol/contract.ZenBullNetting.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contract.IController.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/zen-bull-netting/docs/src/src/interface/IController.sol/contract.IController.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contract.ICrabStrategyV2.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/zen-bull-netting/docs/src/src/interface/ICrabStrategyV2.sol/contract.ICrabStrategyV2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contract.IEulerSimpleLens.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/zen-bull-netting/docs/src/src/interface/IEulerSimpleLens.sol/contract.IEulerSimpleLens.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contract.IFlashZen.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/zen-bull-netting/docs/src/src/interface/IFlashZen.sol/contract.IFlashZen.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contract.IOracle.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/zen-bull-netting/docs/src/src/interface/IOracle.sol/contract.IOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contract.IWETH.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/zen-bull-netting/docs/src/src/interface/IWETH.sol/contract.IWETH.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contract.IZenBullStrategy.md](https://github.com/opynfinance/squeeth-monorepo/blob/main/packages/zen-bull-netting/docs/src/src/interface/IZenBullStrategy.sol/contract.IZenBullStrategy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CTokenInterface.md (also discovered via alternate URL)](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/CTokenInterface.md) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 26 | medium |
| [CompoundOracleInterface.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/CompoundOracleInterface.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | low |
| [Context.md (also discovered via alternate URL)](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/Context.md) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 26 | high |
| [Dai.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/Dai.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | high |
| [ERC20.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/ERC20.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | high |
| [ERC20Detailed.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/ERC20Detailed.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ERC20Mintable.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/ERC20Mintable.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | high |
| [FixedPointUint256.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/FixedPointUint256.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | high |
| [IERC20.md (also discovered via alternate URL)](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/IERC20.md) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 26 | low |
| [LibNote.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/LibNote.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | medium |
| [Migrations.md (also discovered via alternate URL)](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/Migrations.md) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 26 | high |
| [MinterRole.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/MinterRole.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | high |
| [MockCompoundOracle.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/MockCompoundOracle.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | low |
| [MockOtokensExchange.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/MockOtokensExchange.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | high |
| [MockUniswapFactory.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/MockUniswapFactory.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | high |
| [OptionsContract.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/OptionsContract.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OptionsExchange.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/OptionsExchange.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | medium |
| [OptionsFactory.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/OptionsFactory.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | low |
| [OptionsUtils.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/OptionsUtils.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | high |
| [Ownable.md (also discovered via alternate URL)](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/Ownable.md) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 26 | low |
| [Roles.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/Roles.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | high |
| [SafeMath.md (also discovered via alternate URL)](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/SafeMath.md) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 26 | high |
| [StringComparator.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/StringComparator.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | high |
| [TestImports.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/TestImports.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | high |
| [UniswapExchangeInterface.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/UniswapExchangeInterface.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | high |
| [UniswapFactoryInterface.md](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/UniswapFactoryInterface.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | high |
| [oToken.md (also discovered via alternate URL)](https://github.com/opynfinance/ConvexityProtocol/blob/dev/docs/oToken.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 26 | low |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x5ae9b3...8e0df8`](./contracts/avalanche-43114/0x5ae9b340a98085d0fc25ae98a5eb704ba08e0df8/) | AllowListOffChainManaged | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x431058...7e1bb9`](./contracts/avalanche-43114/0x431058f0eef3833b9a73bce19ba35c23d47e1bb9/) | DeltaStrikeSelection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x193c89...89cedb`](./contracts/avalanche-43114/0x193c8993480df4c1dbbdb39db07511f7d789cedb/) | DepositAndPlaceOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x175bcf...80bc39`](./contracts/avalanche-43114/0x175bcf06ef1120a432ea3f7cdf33fc0af980bc39/) | ManualVolOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x03bb97...76e66e`](./contracts/avalanche-43114/0x03bb97fa0fe4f85e378f6bc32a4ef9141876e66e/) | OptionsPremiumPricer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9c31f6...7464e8`](./contracts/avalanche-43114/0x9c31f6fafda0b9cd762f2850c3438d20a87464e8/) | OptionsPremiumPricerInStables | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cf8dc...828460`](./contracts/ethereum-1/0x9cf8dcbcf115b06d8f577e73cb9edfdb27828460/) | SqrtPriceMathPartial | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x00d27c...960d81`](./contracts/avalanche-43114/0x00d27cbb90ae158f2db39c899e006a05df960d81/) | StrikeSelection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe0854d...b9223e`](./contracts/avalanche-43114/0xe0854ddd162ffe4e2ff1db6e62b544521cb9223e/) | VaultLifecycle | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2986e8...b14648`](./contracts/avalanche-43114/0x2986e874370a1398807d76d70c73e7ec7db14648/) | VaultQueue | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 120
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=17, low=16, medium=4
- Match method counts: extraction_exact=732

Zero-match audit list:

- [9183] OtokenSpawner.md
- [9185] PermitCallee.md
- [9186] TradeCallee.md
- [9187] WETH9.md
- [9189] AddressBookInterface.md
- [9190] AggregatorInterface.md
- [9192] CalleeInterface.md
- [9193] ERC20Interface.md
- [9194] MarginCalculatorInterface.md
- [9195] MarginPoolInterface.md
- [9196] OpynPricerInterface.md
- [9197] OracleInterface.md
- [9198] OtokenInterface.md
- [9199] WETH9Interface.md
- [9200] WSTETHInterface.md
- [9201] WhitelistInterface.md
- [9202] YearnVaultInterface.md
- [9203] ZeroXExchangeInterface.md
- [9204] Actions.md
- [9205] FixedPointInt256.md
- [9207] SignedConverter.md
- [9208] Mock0xERC20Proxy.md
- [9209] Mock0xExchange.md
- [9210] MockAddressBook.md
- [9211] MockCToken.md
- [9212] MockCUSDC.md
- [9213] MockChainlinkAggregator.md
- [9214] MockController.md
- [9215] MockDumbERC20.md
- [9216] MockERC20.md
- [9217] MockOracle.md
- [9218] MockOtoken.md
- [9219] MockPermitERC20.md
- [9220] MockPricer.md
- [9221] MockWSTETHToken.md
- [9222] MockWhitelistModule.md
- [9223] MockYToken.md
- [9224] BokkyPooBahsDateTimeLibrary.md
- [9225] Spawn.md
- [9226] Address.md
- [9228] Create2.md
- [9231] ReentrancyGuard.md
- [9232] SafeERC20.md
- [9234] SignedSafeMath.md
- [9235] Strings.md
- [9236] ERC20Upgradeable.md
- [9237] ContextUpgradeable.md
- [9238] IERC20Upgradeable.md
- [9239] Initializable.md
- [9240] OwnableUpgradeSafe.md
- [9241] OwnedUpgradeabilityProxy.md
- [9242] Proxy.md
- [9243] ReentrancyGuardUpgradeSafe.md
- [9244] UpgradeabilityProxy.md
- [9245] ECDSAUpgradeable.md
- [9246] EIP712Upgradeable.md
- [9247] ERC20PermitUpgradeable.md
- [9248] IERC20PermitUpgradeable.md
- [9249] SafeMathUpgradeable.md
- [9250] CountersUpgradeable.md
- [9251] ChainLinkPricer.md
- [9252] CompoundPricer.md
- [9253] WstethPricer.md
- [9254] YearnPricer.md
- [9255] ActionTester.md
- [9256] CalculatorTester.md
- [9257] CallTester.md
- [9258] CalleeAllowanceTester.md
- [9259] FixedPointInt256Tester.md
- [9260] FlashUnwrap.md
- [9261] MarginVaultTester.md
- [9262] OtokenImplV1.md
- [9263] SignedConverterTester.md
- [9264] UpgradeableContractV1.md
- [9265] UpgradeableContractV2.md
- [9270] WSqueeth.md
- [9272] Uni.md
- [9273] IController.md
- [9274] IERC20Detailed.md
- [9275] IOracle.md
- [9276] IShortPowerPerp.md
- [9277] IVaultManagerNFT.md
- [9278] IWETH9.md
- [9279] IWPowerPerp.md
- [9280] OracleLibrary.md
- [9281] Power2Base.md
- [9282] VaultLib.md
- [9283] IUniswapV3FlashCallback.md
- [9287] MockShortPowerPerp.md
- [9288] MockUniPositionManager.md
- [9289] MockUniswapV3Pool.md
- [9290] MockVaultNFTManager.md
- [9291] MockWPowerPerp.md
- [9292] MockWSqueeth.md
- [9294] CrabStrategy.md
- [9295] StrategyBase.md
- [9296] StrategyFlashSwap.md
- [9297] StrategyMath.md
- [9298] ControllerTester.md
- [9299] OracleTester.md
- [9300] VaultLibTester.md
- [9301] README.md
- [9302] SUMMARY.md
- [9303] contract.CallbackValidation.md
- [9304] contract.FlashSwap.md
- [9305] contract.PoolAddress.md
- [9306] contract.NettingLib.md
- [9308] contract.ZenBullNetting.md
- [9309] contract.IController.md
- [9310] contract.ICrabStrategyV2.md
- [9311] contract.IEulerSimpleLens.md
- [9312] contract.IFlashZen.md
- [9313] contract.IOracle.md
- [9314] contract.IWETH.md
- [9315] contract.IZenBullStrategy.md
- [9322] ERC20Detailed.md
- [9332] OptionsContract.md
- [9345] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [9346] 0002-metadata-manifest-and-pull-command.md
- [9347] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
