# Agentic Audit Brief: Ribbon Finance

⚠️ Lifecycle status: DECLINING - TVL changed 5.9% over 90 days

## Project Overview

- Project: Ribbon Finance (`ribbon-finance`)
- Website: [https://www.ribbon.finance/](https://www.ribbon.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:11.443Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: avalanche, ethereum
- Contract surface: 147 unique implementations (598 raw deployments)
- DeFi Llama TVL: $4,851,720.00
- On-chain TVL (included contracts): $179,277,198.59
- TVL by chain: Ethereum $179,277,193.12 | Avalanche $5.48

## Project Description

Ribbon Finance is a DeFi protocol historically focused on crypto structured products, especially Theta Vaults that automate options strategies such as covered calls and put selling. Related Earn/Lend-style products should be treated as historical or specific on-chain modules rather than the protocol's current primary product focus.

### Architecture

Theta Vaults and Ribbon Earn share the RibbonFactory for deployment and management, while Ribbon Lend uses its own PoolFactory and PoolMaster infrastructure. The RBN token is used across Liquidity Gauges for rewards and may be involved in governance via the Ribbon DAO.

## Audit Coverage Summary

- Verified implementations audited: 27/87 (31.0%)
- Verified + Unaudited implementations: 59
- Verified by bytecode match: 1
- Unverified implementations: 60
- Unique implementations: 147
- Raw deployments: 598
- Audits discovered: 14
- Scoreable audits (matched contracts): 14
- ASD (verified + unaudited TVL): $148,562,247.35
- Latest audit: 2023-07 (stale)
- Staleness: 0 fresh, 0 aging, 14 stale, 0 unknown
- Tier 1 coverage: 4.6% (OpenZeppelin)
- Note: This protocol is classified as [declining]. ASD of $148,562,247.35 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 19 | 21.8% | 2021-05 |
| Unknown | Tier 2 | 11 | 12.6% | 2023-07 |
| PeckShield | Tier 2 | 7 | 8.0% | 2022-03 |
| OpenZeppelin | Tier 1 | 4 | 4.6% | 2021-09 |
| Chainsafe | Tier 2 | 2 | 2.3% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (27)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RibbonToken | token | ethereum | 3 deployments: ethereum [`0x3d11e0...efe64f`](./contracts/ethereum-1/0x3d11e0c0de0cf8bfdf85ea05509cfed9f0efe64f/); ethereum `0x5f7160...9737d2`; ethereum `0x6123b0...21fa6b` | ✅ Audited |
| RibbonThetaVaultWithSwap | core_logic | ethereum | 26 deployments: ethereum [`0x2397da...5e4959`](./contracts/ethereum-1/0x2397da3f62f95e9318351e7104dee1a16b5e4959/); ethereum `0x247a93...0e0690`; ethereum `0x253029...0bc6b4`; ethereum `0x257518...89644b`; ethereum `0x3fb82f...0f1f44`; ethereum `0x460e0f...3a23d0`; ethereum `0x4a03d0...f5f167`; ethereum `0x5e6056...2442fd`; ethereum `0x65a833...b13b2f`; ethereum `0x65b7a5...72743b`; ethereum `0x6fc853...453a8e`; ethereum `0x74e524...fbd421`; ethereum `0x7a6a81...800429`; ethereum `0x8c0926...80c846`; ethereum `0xa413cc...81dcf9`; ethereum `0xb8b707...05544f`; ethereum `0xc03ff5...855025`; ethereum `0xcd8786...5450fc`; ethereum `0xd472ec...84868e`; ethereum `0xd5f650...2a2a0e`; ethereum `0xdd9d1b...735def`; ethereum `0xe63151...abd365`; ethereum `0xeaf743...d2666e`; avalanche `0x6bf686...9a9fb3`; avalanche `0x98d031...a87787`; avalanche `0x9dd6be...a3e3a3` | ✅ Audited |
| RibbonThetaSTETHVault | core_logic | ethereum | 19 deployments: ethereum [`0x01f1d8...9365e7`](./contracts/ethereum-1/0x01f1d8744469da81dbb6b7d3e9811f10029365e7/); ethereum `0x1bc5ee...1dcffa`; ethereum `0x20abe9...cfabcc`; ethereum `0x21438c...af6c72`; ethereum `0x24ab80...7e24c6`; ethereum `0x280ed0...572577`; ethereum `0x2bc165...741d77`; ethereum `0x4079d9...734177`; ethereum `0x51a5a8...041f8b`; ethereum `0x53773e...b78e8c`; ethereum `0x5d4c0a...ea1b51`; ethereum `0x8756ea...05f1f7`; ethereum `0x8a0eff...c36ca5`; ethereum `0xa5c2f4...6d986c`; ethereum `0xbcf89a...8147ad`; ethereum `0xc5f2cf...a55741`; ethereum `0xeb74e0...37c733`; ethereum `0xef3c69...ea31e7`; ethereum `0xfc0d9e...016502` | ✅ Audited |
| RibbonEarnVaultFixedRate | core_logic | ethereum | 6 deployments: ethereum [`0x06275b...d79d1c`](./contracts/ethereum-1/0x06275be44e6f886c4e470dcf880f5fb960d79d1c/); ethereum `0x34b447...50ecda`; ethereum `0x5d5b71...24e9eb`; ethereum `0x7a8bfd...d0100f`; ethereum `0xce5513...48ae8c`; ethereum `0xe97d82...a4b8b8` | ✅ Audited |
| RibbonThetaVault | core_logic | ethereum | 52 deployments: ethereum [`0x00a62e...d282e6`](./contracts/ethereum-1/0x00a62ee3d2998f67cc202990b792573961d282e6/); ethereum `0x09bd08...efb030`; ethereum `0x0a2270...fb3234`; ethereum `0x0d58b7...0c6642`; ethereum `0x0fabaf...60467a`; ethereum `0x0ff7c2...141a5a`; ethereum `0x1417fd...211fb7`; ethereum `0x16772a...fbb5ef`; ethereum `0x1939f8...a08682`; ethereum `0x1ebea9...1a89c0`; ethereum `0x23b42c...f1ff87`; ethereum `0x2556e8...5dfa22`; ethereum `0x2a0b88...e8b5b5`; ethereum `0x34107a...2eb167`; ethereum `0x38556e...7c6550`; ethereum `0x43cfea...ccd423`; ethereum `0x4ea9e7...eb80df`; ethereum `0x5ce91e...ebdcf8`; ethereum `0x65112b...227ae0`; ethereum `0x6779da...0f507e`; ethereum `0x6d1c2b...360c47`; ethereum `0x6ec571...8031f8`; ethereum `0x7a477d...8b94b9`; ethereum `0x8b5876...8c3e8c`; ethereum `0x8d0d4c...846e3a`; ethereum `0x94c842...98431a`; ethereum `0x9d1d31...d5014a`; ethereum `0xa0d597...b0d1dc`; ethereum `0xa0db6c...52b79a`; ethereum `0xae517e...78c7f0`; ethereum `0xb0a54c...278eb0`; ethereum `0xb751b2...9da5ff`; ethereum `0xbc9d2f...b35cc1`; ethereum `0xbeba74...49e4ad`; ethereum `0xc0cf10...d98a53`; ethereum `0xc4d100...f027c5`; ethereum `0xc51d4d...39253e`; ethereum `0xcfcf97...1fb3bc`; ethereum `0xd3fe14...68592a`; ethereum `0xd584e7...06f8e5`; ethereum `0xe5ad69...bb3529`; ethereum `0xf63ce1...a60483`; ethereum `0xfe8cf7...995fd1`; avalanche `0x0f4032...d54684`; avalanche `0x10b87d...0cd00c`; avalanche `0x16b08b...8f588b`; avalanche `0x243dd8...cb3ffb`; avalanche `0x7f00bb...ae9c83`; avalanche `0x87e946...d5b592`; avalanche `0xb7ec3b...e4f480`; avalanche `0xd00a29...98fa65`; avalanche `0xdcfd14...5b926e` | ✅ Audited |
| RibbonThetaYearnVault | core_logic | ethereum | 4 deployments: ethereum [`0x2e5bbb...7c7712`](./contracts/ethereum-1/0x2e5bbb23f1db8ee60e577d4da9d8466b257c7712/); ethereum `0x678f0d...f8a67e`; ethereum `0xcc3235...cc9624`; ethereum `0xfb749a...6114be` | ✅ Audited |
| RibbonEarnVault | core_logic | ethereum | 25 deployments: ethereum [`0x0e83c4...428178`](./contracts/ethereum-1/0x0e83c4662af4fe704c7193598b6cdfb4ac428178/); ethereum `0x138748...ae312b`; ethereum `0x1b4494...4ddd15`; ethereum `0x26638c...8bc440`; ethereum `0x3e1646...9621f6`; ethereum `0x47b4da...ad908a`; ethereum `0x547f57...fd886f`; ethereum `0x563c35...1bef22`; ethereum `0x5a64d7...fe135c`; ethereum `0x5ce194...c343c9`; ethereum `0x749b33...16dd5c`; ethereum `0x791679...419f20`; ethereum `0x7946b1...c9050b`; ethereum `0x7b9c29...aaf5d4`; ethereum `0x7bdca4...9f4a72`; ethereum `0x84c2b1...dfd6f0`; ethereum `0x971206...66d999`; ethereum `0xab7c59...59b503`; ethereum `0xabfa87...8529fc`; ethereum `0xb38016...d81c3c`; ethereum `0xc8fce3...b6e9cf`; ethereum `0xce3217...057230`; ethereum `0xd0e300...ca5b50`; ethereum `0xd14541...057856`; ethereum `0xf0ba26...8de649` | ✅ Audited |
| RibbonThetaVaultYearn | core_logic | ethereum | [`0x8fe744...96e54f`](./contracts/ethereum-1/0x8fe74471f198e426e96be65f40eed1f8ba96e54f/) | ✅ Audited |
| RibbonThetaRETHVault | core_logic | ethereum | 10 deployments: ethereum [`0x1c2ee9...6352c2`](./contracts/ethereum-1/0x1c2ee9711592638f7fa3f47181c7eae7606352c2/); ethereum `0x1e8026...928a9a`; ethereum `0x21bfde...2e8e9f`; ethereum `0x8e28f2...c08d6a`; ethereum `0xa1457f...b7486f`; ethereum `0xa1da05...ec5edf`; ethereum `0xbf2093...b77b7c`; ethereum `0xc14a21...eea400`; ethereum `0xd493f9...446e44`; ethereum `0xeef3d6...be196a` | ✅ Audited |
| RibbonDeltaVault | core_logic | ethereum | 4 deployments: ethereum [`0x3fb118...ba0850`](./contracts/ethereum-1/0x3fb118d109dfc7646d37fb2af36b5ea2e5ba0850/); ethereum `0xf10348...fe6f8b`; avalanche `0x551c44...d67625`; avalanche `0x9d725c...b52b13` | ✅ Audited |
| RibbonAutocallVault | core_logic | ethereum | 2 deployments: ethereum [`0x21cfce...bb48e6`](./contracts/ethereum-1/0x21cfcecacb455da44deff585cff04b6172bb48e6/); ethereum `0x9490cc...94cfc9` | ✅ Audited |
| AdminUpgradeabilityProxy | unknown | ethereum | 11 deployments: ethereum [`0x157b07...5d7f47`](./contracts/ethereum-1/0x157b0733f4dd86009c8f7daf2c03c1a5f05d7f47/); ethereum `0x5c86c2...9e2b0c`; ethereum `0x6fe593...4bf9e3`; ethereum `0x996de9...7e49ab`; ethereum `0xa5b117...e1c23d`; avalanche `0x1e5341...fbdb5c`; avalanche `0x4375e9...4dc234`; avalanche `0x62e04b...bc05e4`; avalanche `0xabd2a9...f567dc`; avalanche `0xafe24b...f3b1c7`; avalanche `0xee5b96...94785c` | ✅ Audited |
| MerkleDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0x1ea2f2...07cf90`](./contracts/ethereum-1/0x1ea2f2367e091525c86f00737bba0aa3b107cf90/); ethereum `0x7902e4...8cc1bf` | ✅ Audited |
| OptionsPremiumPricer | operational_periphery | avalanche | 8 deployments: ethereum `0x0a1b63...0975db`; ethereum `0x7c2441...af67a8`; ethereum `0xcf38c1...194e8c`; ethereum `0xd8bb66...65dacc`; ethereum `0xec58c1...525cbc`; avalanche [`0x03bb97...76e66e`](./contracts/avalanche-43114/0x03bb97fa0fe4f85e378f6bc32a4ef9141876e66e/); avalanche `0x54daf3...3cab89`; avalanche `0xbd5103...805b21` | ✅ Audited |
| ProtocolAdapter | adapter | ethereum | 2 deployments: ethereum [`0x8b49fd...6f8504`](./contracts/ethereum-1/0x8b49fdd0cb50ba6d5c053d844fee55e5076f8504/); ethereum `0xff51ca...00d949` | ✅ Audited |
| RibbonCoveredCall | unknown | ethereum | 6 deployments: ethereum [`0x49ca9e...c15b74`](./contracts/ethereum-1/0x49ca9eca607c8483a2b4f955631de2119ac15b74/); ethereum `0x509b51...83fab8`; ethereum `0x5907c9...187dfd`; ethereum `0xd24f76...233676`; ethereum `0xe97557...e6fc75`; ethereum `0xed6137...de0245` | ✅ Audited |
| RibbonEarnVaultFixedRateTemp | core_logic | ethereum | 2 deployments: ethereum [`0x0dd119...5013a1`](./contracts/ethereum-1/0x0dd119bea1bf0edc4fd9c7e96bb829ec3f5013a1/); ethereum `0xa028cb...5b035a` | ✅ Audited |
| RibbonETHCoveredCall | unknown | ethereum | 2 deployments: ethereum [`0x8e65f3...83a939`](./contracts/ethereum-1/0x8e65f34ff5925d3d43ad642bee84ac947583a939/); ethereum `0xb9a143...c9de6d` | ✅ Audited |
| RibbonFactory | registry | ethereum | 4 deployments: ethereum [`0x6e0f73...41ba4f`](./contracts/ethereum-1/0x6e0f736a2a0b81e7d8b7d6ac3608ac977341ba4f/); ethereum `0x84a5a8...138c33`; ethereum `0x863dd8...bf0cd1`; ethereum `0xf1afa2...e3b481` | ✅ Audited |
| RibbonTreasuryVault | operational_periphery | ethereum | 19 deployments: ethereum [`0x1e2d05...301bf5`](./contracts/ethereum-1/0x1e2d05bd78bd50eaa380ef71f86430ed20301bf5/); ethereum `0x1f2077...7d95f4`; ethereum `0x270f4a...7be238`; ethereum `0x2a6b04...98a0fe`; ethereum `0x2e56d6...dfd248`; ethereum `0x4237dd...f07b6e`; ethereum `0x42cf87...c639dc`; ethereum `0x6aac2d...651fd2`; ethereum `0x7664df...7e9648`; ethereum `0x76b20f...fd71fa`; ethereum `0x8d93ac...1a869c`; ethereum `0x9d51c8...fe7ad8`; ethereum `0xa06a03...4dc864`; ethereum `0xbe0b30...32cded`; ethereum `0xbeb419...9572d2`; ethereum `0xc0d57d...411a3b`; ethereum `0xc92e6b...c983ff`; ethereum `0xd906a2...354a8a`; ethereum `0xe44edf...f2e405` | ✅ Audited |
| RibbonTreasuryVaultBare | operational_periphery | ethereum | 2 deployments: ethereum [`0x2b6b6f...976a10`](./contracts/ethereum-1/0x2b6b6fca9e1afc609c76970bcec0f6a738976a10/); ethereum `0x8de73d...23ef24` | ✅ Audited |
| RibbonVolatility | unknown | ethereum | 3 deployments: ethereum [`0x7004f9...53d4b0`](./contracts/ethereum-1/0x7004f9fcde66e2ecabf408132cb21ebbcf53d4b0/); ethereum `0x900e5a...1d8a57`; ethereum `0xa72cc5...4e368f` | ✅ Audited |
| StrikeSelection | unknown | ethereum | 15 deployments: ethereum [`0x001d77...1d0db1`](./contracts/ethereum-1/0x001d77351dad0cd3f696c67ebba5bda0c11d0db1/); ethereum `0x05dc96...94c4cf`; ethereum `0x2d8c02...24ef1c`; ethereum `0x39d379...475000`; ethereum `0x4e2d42...c0498d`; ethereum `0x5e68b6...7fc641`; ethereum `0x896e4d...6482fa`; ethereum `0x9371f3...4513a5`; ethereum `0xc2b10e...753563`; ethereum `0xf6e785...105911`; avalanche `0x00d27c...960d81`; avalanche `0x05351b...e3dbed`; avalanche `0x4fc945...f7ba3e`; avalanche `0x67ea3d...ea84ac`; avalanche `0x6c2bd3...8ccf7b` | ✅ Audited |
| Swap | unknown | ethereum | 4 deployments: ethereum [`0x2b7776...b52014`](./contracts/ethereum-1/0x2b77768ca47d6cc9eb1ae95daee09ad1f3b52014/); ethereum `0xa37e33...b44b08`; ethereum `0xeb8cab...b4e161`; ethereum `0xf0e5c9...5b99da` | ✅ Audited |
| VaultLifecycle | core_logic | ethereum | 20 deployments: ethereum [`0x14cc2c...865511`](./contracts/ethereum-1/0x14cc2c0b624e437202b53e533147982842865511/); ethereum `0x1c3774...bd41f8`; ethereum `0x25af99...f67b40`; ethereum `0x35a3e0...69ecc0`; ethereum `0x4994c9...7d10ee`; ethereum `0x57e954...012d8f`; ethereum `0x58228f...056d82`; ethereum `0x5b69a3...58f01d`; ethereum `0x5ee5db...5caa53`; ethereum `0x93c48f...f1f522`; ethereum `0x9c24f8...cb9ccf`; ethereum `0xb917ee...07dde3`; ethereum `0xc1e51b...8181df`; ethereum `0xda6387...6be115`; ethereum `0xe248f6...57d6c7`; ethereum `0xe55231...835adb`; ethereum `0xe63425...e61128`; ethereum `0xe64524...994f36`; ethereum `0xf25ff2...b5d3b6`; avalanche `0xe0854d...b9223e` | ✅ Audited |
| VaultLifecycleSTETH | core_logic | ethereum | 9 deployments: ethereum [`0x21f0ff...4bd6b0`](./contracts/ethereum-1/0x21f0ff1d33f76b938dec63cffe0ee6171f4bd6b0/); ethereum `0x2c5dd8...089bf1`; ethereum `0x3cc438...7b46ec`; ethereum `0x5cbb58...18f3db`; ethereum `0x84ff09...c08928`; ethereum `0x92c47e...f42836`; ethereum `0xa0025d...dcdc82`; ethereum `0xb48c17...ad38ee`; ethereum `0xcf7dd5...8c8932` | ✅ Audited |
| VaultLifecycleTreasury | operational_periphery | ethereum | 5 deployments: ethereum [`0xa746b0...cd856b`](./contracts/ethereum-1/0xa746b0ceec022d53665840593a0f673f91cd856b/); ethereum `0xb8a80d...ff590d`; ethereum `0xcbd9a7...489c9a`; ethereum `0xe1d00f...90afe2`; ethereum `0xff0629...9b3329` | ✅ Audited |

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SimpleToken | token | ethereum | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| MiniMeToken | token | ethereum | [`0x3472a5...c6e53d`](./contracts/ethereum-1/0x3472a5a71965499acd81997a54bba8d852c6e53d/) | ⚠️ Unaudited |
| PerpToken | token | ethereum | [`0xbc3966...233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | ⚠️ Unaudited |
| RibbonVaultPauser | core_logic | ethereum | [`0xe04e8a...89cdc3`](./contracts/ethereum-1/0xe04e8ae290965ad4f7e40c68041c493d2e89cdc3/) | ⚠️ Unaudited |
| PoolMaster | core_logic | ethereum | 7 deployments: ethereum [`0x0aea75...f8044c`](./contracts/ethereum-1/0x0aea75705be8281f4c24c3e954d1f8b1d0f8044c/); ethereum `0x18b781...107f38`; ethereum `0x3cd0ec...5c616d`; ethereum `0x9c2202...941f2b`; ethereum `0xab1246...ddb84f`; ethereum `0xc59e21...8db57a`; ethereum `0xf458fd...ec6a36` | ⚠️ Unaudited |
| BalancerGovernanceToken | token | ethereum | [`0xba1000...424e3d`](./contracts/ethereum-1/0xba100000625a3754423978a60c9317c58a424e3d/) | ⚠️ Unaudited |
| MarginPool | core_logic | avalanche | 9 deployments: ethereum `0xaf6cb5...d23b91`; ethereum `0xbc9896...b32b9a`; avalanche [`0x06aa7f...f8e5b0`](./contracts/avalanche-43114/0x06aa7f18b263c67a04fc890a2166a4b54bf8e5b0/); avalanche `0x527514...66d50e`; avalanche `0x5b4289...c5708b`; avalanche `0x9c7918...48017a`; avalanche `0xb628d6...b15024`; avalanche `0xccf662...4fdb9d`; avalanche `0xfe9c85...f5591f` | ⚠️ Unaudited |
| AddressBook | unknown | avalanche | 12 deployments: ethereum `0x2da4c4...3119dd`; ethereum `0x89c3ff...9a042c`; ethereum `0x8be768...3f060c`; avalanche [`0x27d60b...5ac87d`](./contracts/avalanche-43114/0x27d60b89e1a104cef79b3e40ead1374bb75ac87d/); avalanche `0x3ab3ff...cba7b6`; avalanche `0x58d6bd...e40854`; avalanche `0x5a2e87...94e9a6`; avalanche `0x63e48a...be7310`; avalanche `0x8b5bff...7aa0eb`; avalanche `0xac289a...481ed4`; avalanche `0xbca124...110510`; avalanche `0xef3b91...4ee698` | ⚠️ Unaudited |
| AevoStakingHelper | periphery | ethereum | [`0xb624bb...3d69ed`](./contracts/ethereum-1/0xb624bbe12a388e52cf379377e3bc3573ff3d69ed/) | ⚠️ Unaudited |
| AllowListOffChainManaged | unknown | avalanche | [`0x5ae9b3...8e0df8`](./contracts/avalanche-43114/0x5ae9b340a98085d0fc25ae98a5eb704ba08e0df8/) | ⚠️ Unaudited |
| Auction | unknown | ethereum | 3 deployments: ethereum [`0x3b383d...50334a`](./contracts/ethereum-1/0x3b383d8e92cc922539f9e9f4d64da119e250334a/); ethereum `0x893402...4084f6`; ethereum `0xc53b98...ccceaa` | ⚠️ Unaudited |
| CErc20Delegate | token | ethereum | [`0x6789db...2f0457`](./contracts/ethereum-1/0x6789db944e35653d07f67eaf4db4e42adf2f0457/) | ⚠️ Unaudited |
| Controller | governance | avalanche | 3 deployments: ethereum `0x53cf72...c967b2`; avalanche [`0x02b70a...fc0e18`](./contracts/avalanche-43114/0x02b70ab8fd23f95e0cd8f8ea604415eb7cfc0e18/); avalanche `0xeadf3d...7aa23d` | ⚠️ Unaudited |
| CosineInterestRateModel | operational_periphery | ethereum | [`0x600eee...706c8e`](./contracts/ethereum-1/0x600eee67d5ffdbb897055c03e3ccdd0ac9706c8e/) | ⚠️ Unaudited |
| DeltaStrikeSelection | unknown | ethereum | 23 deployments: ethereum [`0x3205ca...c02c20`](./contracts/ethereum-1/0x3205ca08d2d55b9ac5376e21b81d5b4a03c02c20/); ethereum `0x32c180...437504`; ethereum `0x33450f...c48931`; ethereum `0x3e10d4...e98348`; ethereum `0x49508f...00c7f0`; ethereum `0x5f14b5...768700`; ethereum `0x63e48a...be7310`; ethereum `0x6472ac...96c807`; ethereum `0x6a0a75...4f977b`; ethereum `0x6a86aa...a4a4fd`; ethereum `0x74f2c2...eb58ea`; ethereum `0x99ac23...430814`; ethereum `0xa529dc...41449b`; ethereum `0xb43345...4c751b`; ethereum `0xbff91e...c2e565`; ethereum `0xf6010d...69024b`; ethereum `0xfa4ac6...6da992`; ethereum `0xfaa5ba...682ad9`; ethereum `0xfbff9b...042b97`; avalanche `0x431058...7e1bb9`; avalanche `0xb00b89...301290`; avalanche `0xbf96a7...fd1d58`; avalanche `0xc16a88...135379` | ⚠️ Unaudited |
| DepositAndPlaceOrder | unknown | avalanche | 2 deployments: avalanche [`0x193c89...89cedb`](./contracts/avalanche-43114/0x193c8993480df4c1dbbdb39db07511f7d789cedb/); avalanche `0xe0fdba...729698` | ⚠️ Unaudited |
| EasyAuction | unknown | avalanche | 3 deployments: avalanche [`0x33b1fa...8e836f`](./contracts/avalanche-43114/0x33b1fa3f012cd72988a35bad87339eb3e48e836f/); avalanche `0xb5d00f...d1ee61`; avalanche `0xc23b92...b9709a` | ⚠️ Unaudited |
| FeeCustody | unknown | ethereum | 2 deployments: ethereum [`0x2d02c1...4046df`](./contracts/ethereum-1/0x2d02c18904988d2d123a103fcc80634ac44046df/); ethereum `0xf2e186...6cf55a` | ⚠️ Unaudited |
| L1Utils | unknown | ethereum | [`0x1db3de...dd8b8b`](./contracts/ethereum-1/0x1db3decabec6ae2a4a16189e36811570bfdd8b8b/) | ⚠️ Unaudited |
| ManualPricer | operational_periphery | ethereum | 24 deployments: ethereum [`0x00e812...5cc87f`](./contracts/ethereum-1/0x00e81211ce0fa2a46a2838d6b4861b5bdb5cc87f/); ethereum `0x2e445b...144af1`; ethereum `0x3250e0...865c86`; ethereum `0x32bccc...5dcecd`; ethereum `0x367b71...817901`; ethereum `0x393952...66bce4`; ethereum `0x3e3aa8...4ebcb1`; ethereum `0x6c538c...78aafc`; ethereum `0x72cfa0...530d4e`; ethereum `0x7a9441...357bd6`; ethereum `0x80a0de...46c525`; ethereum `0x82677b...86b560`; ethereum `0x86dd4b...a62831`; ethereum `0x8918f3...a8b087`; ethereum `0xa1a436...9512a7`; ethereum `0xa1b7e5...6559bb`; ethereum `0xa82a82...5abda3`; ethereum `0xc89cbe...ebae14`; ethereum `0xd5c1eb...8d4f2b`; ethereum `0xd72c97...ce58c1`; ethereum `0xed9af0...60cee1`; ethereum `0xf5de31...120785`; ethereum `0xfbbf25...836147`; ethereum `0xfc9887...9fb0b7` | ⚠️ Unaudited |
| ManualStrikeSelection | token | ethereum | 8 deployments: ethereum [`0x3c8114...d7036c`](./contracts/ethereum-1/0x3c8114263092fd27acfeaa99549d4f3066d7036c/); ethereum `0x8a0967...c26fe3`; ethereum `0x9246cb...be8b8e`; ethereum `0x961d37...d819a5`; ethereum `0xab4051...be1573`; ethereum `0xb3578a...68ab39`; ethereum `0xd3c4e0...41d7c6`; ethereum `0xfd48f3...51b451` | ⚠️ Unaudited |
| MarginCalculator | unknown | avalanche | 4 deployments: ethereum `0x52685a...2806f8`; ethereum `0x5cd207...3f07f1`; avalanche [`0x2c726a...46b337`](./contracts/avalanche-43114/0x2c726a7da5500bd59a488e0065c41822bb46b337/); avalanche `0xbd5a1d...ac2afd` | ⚠️ Unaudited |
| MarginRequirements | unknown | ethereum | 2 deployments: ethereum [`0xc272f9...b833a7`](./contracts/ethereum-1/0xc272f964a74ab7d2b4fd4ba27f6cc27887b833a7/); ethereum `0xcd5f0e...8b7eb8` | ⚠️ Unaudited |
| MarginVault | core_logic | ethereum | 4 deployments: ethereum [`0x70bc7e...8cf447`](./contracts/ethereum-1/0x70bc7e46b8da687eeaae788c467eed56698cf447/); ethereum `0xd12f96...f64541`; avalanche `0x8b5685...52858a`; avalanche `0x9b011c...88912f` | ⚠️ Unaudited |
| MembershipStaking | unknown | ethereum | 3 deployments: ethereum [`0x0e847a...5f040b`](./contracts/ethereum-1/0x0e847afb915710251229848c2eecfb9c505f040b/); ethereum `0x333076...918844`; ethereum `0x4a4e20...354142` | ⚠️ Unaudited |
| MinimalForwarder | unknown | ethereum | [`0x28bbbf...51ba6d`](./contracts/ethereum-1/0x28bbbfd8217407f443d83227daee65e93b51ba6d/) | ⚠️ Unaudited |
| MM | unknown | ethereum | 3 deployments: ethereum [`0x668345...edee11`](./contracts/ethereum-1/0x6683454f70bd27955bb3000c9736aa1b97edee11/); ethereum `0x9af2b8...247652`; ethereum `0xbe278c...d38a17` | ⚠️ Unaudited |
| Optimism | unknown | ethereum | [`0x53796b...b54205`](./contracts/ethereum-1/0x53796b65e0d06e3be01eee92715e842415b54205/) | ⚠️ Unaudited |
| OptionsPremiumPricerInStables | operational_periphery | ethereum | 18 deployments: ethereum [`0x048e2f...adf33a`](./contracts/ethereum-1/0x048e2f1f937b1b98efa7765b3060dee0a2adf33a/); ethereum `0x0c9339...881989`; ethereum `0x231237...ec457d`; ethereum `0x2d3145...aa3b1f`; ethereum `0x5ba2a4...551139`; ethereum `0x8b5ae8...40ee3d`; ethereum `0x8bbe98...125b68`; ethereum `0x916156...69a64e`; ethereum `0x9d02f1...007977`; ethereum `0xa3b980...9bf48c`; ethereum `0xb38f51...681286`; ethereum `0xc4b907...9e3485`; ethereum `0xd1773e...dcfd20`; ethereum `0xe67f1d...82d3d4`; ethereum `0xe8fafa...7135e2`; ethereum `0xf9745a...ea0955`; avalanche `0x9c31f6...7464e8`; avalanche `0xa24669...b7ce9f` | ⚠️ Unaudited |
| OpynOracle | operational_periphery | ethereum | [`0xef3b91...4ee698`](./contracts/ethereum-1/0xef3b91345dd7be2c5c1f95c40545e9bf274ee698/) | ⚠️ Unaudited |
| Oracle | operational_periphery | avalanche | 11 deployments: ethereum `0x071fb7...1c0843`; ethereum `0x79bea2...796d10`; ethereum `0xc69c49...03332e`; avalanche [`0x00bf1e...b54f2d`](./contracts/avalanche-43114/0x00bf1e9b876d63f5cd4ee114211a9a7b7fb54f2d/); avalanche `0x108abf...0f0b10`; avalanche `0x454a11...405bd0`; avalanche `0x47a8fa...c1a89a`; avalanche `0x5c76e7...f5e8eb`; avalanche `0x6f010d...bd7c9f`; avalanche `0x72c959...1d45ad`; avalanche `0xa7516c...ece8bb` | ⚠️ Unaudited |
| OTCWrapper | unknown | ethereum | 4 deployments: ethereum [`0x0862a6...51f121`](./contracts/ethereum-1/0x0862a662dc4483c4e01ae08d57ea170daf51f121/); ethereum `0x8191df...aa78ea`; ethereum `0x9e05d6...ff79d3`; ethereum `0xffda0b...49c5d1` | ⚠️ Unaudited |
| OTCWrapperV2 | unknown | ethereum | 2 deployments: ethereum [`0x1b4eca...072264`](./contracts/ethereum-1/0x1b4eca06140f257b81778b1c516d5c77e5072264/); ethereum `0x5feda5...ae4989` | ⚠️ Unaudited |
| Otoken | token | avalanche | 9 deployments: ethereum `0x0b030f...126009`; ethereum `0x49d479...3adcff`; avalanche [`0x03b284...9ed931`](./contracts/avalanche-43114/0x03b28469a3f5cbdcba91485b82de17d64b9ed931/); avalanche `0x0fd7e1...cfc823`; avalanche `0x3c19dd...351c29`; avalanche `0x459a8b...224677`; avalanche `0x9d7915...4fe904`; avalanche `0xbc2804...c21425`; avalanche `0xe0ebdd...0c7bfe` | ⚠️ Unaudited |
| OtokenFactory | registry | avalanche | 10 deployments: ethereum `0x1872ea...2300ce`; ethereum `0x202702...522856`; avalanche [`0x0dc319...60c3d2`](./contracts/avalanche-43114/0x0dc3197fdd54cf5e8f8961bbf626be320160c3d2/); avalanche `0x215967...725505`; avalanche `0x25bc1c...9f66a5`; avalanche `0x6fb3f1...3b0b14`; avalanche `0x90fcbd...249eae`; avalanche `0xc0cf10...d98a53`; avalanche `0xf9745a...ea0955`; avalanche `0xfc8c59...e98060` | ⚠️ Unaudited |
| PercentStrikeSelection | unknown | ethereum | 7 deployments: ethereum [`0x6221b5...b29eac`](./contracts/ethereum-1/0x6221b5e23b137a405f8df9aaa717f1629cb29eac/); ethereum `0x6cabcf...64207c`; ethereum `0x6fa306...4c8e8f`; ethereum `0x70c7b8...b591bc`; ethereum `0xa2a5ef...8fe8df`; ethereum `0xd486c3...14f701`; ethereum `0xeb03bf...c2266f` | ⚠️ Unaudited |
| PoolFactory | registry | ethereum | 5 deployments: ethereum [`0x2cdaa8...463582`](./contracts/ethereum-1/0x2cdaa8d20acfc53a7f51896211cb209150463582/); ethereum `0x312853...88936c`; ethereum `0x3bcc28...b9db47`; ethereum `0xd5e165...146a47`; ethereum `0xfba8b9...a1b6b0` | ⚠️ Unaudited |
| RethPricer | operational_periphery | ethereum | [`0x30b305...341fc6`](./contracts/ethereum-1/0x30b3059b1e870203aef55b071110b49b22341fc6/) | ⚠️ Unaudited |
| RewardsDistributorDelegate | operational_periphery | ethereum | 2 deployments: ethereum [`0x63a40e...a9fd47`](./contracts/ethereum-1/0x63a40e8bbc2ad3ed1c600abc0e01a8fef7a9fd47/); ethereum `0xec19e0...cb59bb` | ⚠️ Unaudited |
| RewardsDistributorDelegator | operational_periphery | ethereum | 2 deployments: ethereum [`0x02f01b...f12e4e`](./contracts/ethereum-1/0x02f01bb55543a13a9b63fa78bbdb12eb1bf12e4e/); ethereum `0xc953fb...59b88b` | ⚠️ Unaudited |
| RibbonEarnVaultFixedRateKeeperPermissioned | operational_periphery | ethereum | [`0x98d860...8db287`](./contracts/ethereum-1/0x98d86079190c08c2a8ad338c26502695528db287/) | ⚠️ Unaudited |
| RibbonHatToken | token | ethereum | [`0x4f0fe5...f97f33`](./contracts/ethereum-1/0x4f0fe57066ab1c84569dc6dd2edfe08b92f97f33/) | ⚠️ Unaudited |
| RibbonLendDepositHelper | periphery | ethereum | [`0x3abd44...cd8e2e`](./contracts/ethereum-1/0x3abd446d0d90726286554821a903b42af7cd8e2e/) | ⚠️ Unaudited |
| RibbonVIPToken | token | ethereum | 3 deployments: ethereum [`0x678c36...f45dc1`](./contracts/ethereum-1/0x678c3630d82c0b180d1766869d0cb88d2ef45dc1/); ethereum `0xa5f2fd...844178`; ethereum `0xdea5c9...0f1fe5` | ⚠️ Unaudited |
| SAVAXDepositHelper | periphery | avalanche | 4 deployments: avalanche [`0x084a82...168303`](./contracts/avalanche-43114/0x084a82fe209f014b3cb6d5986b2c65b584168303/); avalanche `0x1decc7...264d3c`; avalanche `0x33b395...f587d7`; avalanche `0xadcadf...77f176` | ⚠️ Unaudited |
| SAvaxOracle | operational_periphery | avalanche | 2 deployments: avalanche [`0x6cd451...51c922`](./contracts/avalanche-43114/0x6cd4515759a91cc577ac9595c209cf94e551c922/); avalanche `0x8f1716...6b89fb` | ⚠️ Unaudited |
| SAvaxPricer | operational_periphery | avalanche | [`0x0a59f3...c216c9`](./contracts/avalanche-43114/0x0a59f35f00a482bb04d95428e1ec051cbac216c9/) | ⚠️ Unaudited |
| Spell | unknown | ethereum | [`0x090185...37e5f6`](./contracts/ethereum-1/0x090185f2135308bad17527004364ebcc2d37e5f6/) | ⚠️ Unaudited |
| STETHDepositHelper | periphery | ethereum | 2 deployments: ethereum [`0x07f36c...9f5411`](./contracts/ethereum-1/0x07f36cf3c834e423536680f560b6bad0319f5411/); ethereum `0xedae76...748be1` | ⚠️ Unaudited |
| UnwindPermit | unknown | ethereum | [`0x0aa788...2ef234`](./contracts/ethereum-1/0x0aa7889c6427fd8fc612e87579fdcd1a942ef234/) | ⚠️ Unaudited |
| VaultDeploymentEventEmitter | core_logic | ethereum | [`0x62ef28...e55652`](./contracts/ethereum-1/0x62ef288f5301ac04fee91524c1f32c7e1de55652/) | ⚠️ Unaudited |
| VaultLifecycleEarn | core_logic | ethereum | 5 deployments: ethereum [`0x35fd2e...d1c3d4`](./contracts/ethereum-1/0x35fd2e2f59f24f002bf69ed055df595228d1c3d4/); ethereum `0x5caf79...b9eeca`; ethereum `0x736777...f067e0`; ethereum `0xa85d60...7cb8e4`; ethereum `0xe01e81...3a96f6` | ⚠️ Unaudited |
| VaultLifecycleTreasuryBare | operational_periphery | ethereum | 4 deployments: ethereum [`0x60f0d4...9104f7`](./contracts/ethereum-1/0x60f0d49ffdf05685b94a247a85cc9e4e7d9104f7/); ethereum `0xb4a1b5...d94eef`; ethereum `0xd79527...6666d3`; ethereum `0xf2d442...483f2f` | ⚠️ Unaudited |
| VaultLifecycleWithSwap | core_logic | ethereum | 6 deployments: ethereum [`0x43b552...11afda`](./contracts/ethereum-1/0x43b552ed1b416930ad9c629a45697ac82011afda/); ethereum `0x63b971...83357f`; ethereum `0x92b621...f18152`; ethereum `0xc06944...169377`; ethereum `0xc7654f...9a5e5e`; ethereum `0xf7f426...70ad54` | ⚠️ Unaudited |
| VaultPriceOracle | operational_periphery | ethereum | [`0xe6bcef...77031e`](./contracts/ethereum-1/0xe6bcefc66d6cbc4c555d53b817e738577477031e/) | ⚠️ Unaudited |
| VaultQueue | core_logic | avalanche | 2 deployments: avalanche [`0x2986e8...b14648`](./contracts/avalanche-43114/0x2986e874370a1398807d76d70c73e7ec7db14648/); avalanche `0xe6325f...66d8be` | ⚠️ Unaudited |
| VeRBNRewards | unknown | ethereum | [`0x88f011...1ab33e`](./contracts/ethereum-1/0x88f0110e9fa61aaca84cce7203c8a702681ab33e/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 20 deployments: ethereum [`0x0cb9cc...ef6415`](./contracts/ethereum-1/0x0cb9cc35cefa5622e8d25af36dd56de142ef6415/); ethereum `0x192960...b08608`; ethereum `0x19854c...a9b5f7`; ethereum `0x29893b...29a202`; ethereum `0x36880a...0c9645`; ethereum `0x43277c...f171cc`; ethereum `0x4ba4af...e16fd0`; ethereum `0x4e079d...f9be72`; ethereum `0x5b0655...625a3a`; ethereum `0x8913ea...0b9325`; ethereum `0x8e44db...0534b4`; ethereum `0x903840...d7c8bd`; ethereum `0x967412...814587`; ethereum `0x98c371...339382`; ethereum `0xa2b078...e348fc`; ethereum `0xa8a969...be8732`; ethereum `0xad4dbd...84741a`; ethereum `0xb7fd36...8c9b4e`; ethereum `0xb91309...b85fab`; ethereum `0xd086c9...705692` | ⚠️ Unaudited |
| Whitelist | unknown | ethereum | 9 deployments: ethereum [`0x194b6b...fba053`](./contracts/ethereum-1/0x194b6b1e4df7603abb320e8d4715bf943cfba053/); ethereum `0xb7fef6...fa08f3`; avalanche `0x4980d7...2289d0`; avalanche `0x4c6598...ba4904`; avalanche `0x939588...32fa93`; avalanche `0xa83941...ea6b4f`; avalanche `0xd79756...add13c`; avalanche `0xe3243b...d2c1fe`; avalanche `0xe9963a...6087c9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ManualVolOracle | operational_periphery | ethereum | 10 deployments: ethereum [`0x14416c...03b709`](./contracts/ethereum-1/0x14416c36428bdf554d3354566259af6bcd03b709/); ethereum `0x570fbf...ef7c95`; ethereum `0x7c0bfa...116399`; ethereum `0xe0b7cf...08e098`; ethereum `0xe24854...81ecc4`; ethereum `0xe7a528...181563`; ethereum `0xfeec01...cae78c`; avalanche `0x175bcf...80bc39`; avalanche `0x9e5e8d...ed05dd`; avalanche `0xfda869...ee0bb3` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (60)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x091ee6...f6cef8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1646af...e3e2b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d79f7...c81889` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1dd8c1...e44807` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x20bbb3...0714a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x248797...6a31ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x274994...1f1db0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2a6b34...fd58d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x336045...537fb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3a3e85...094989` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b607f...01dfa0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3fa768...f11e16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47d063...3ab141` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x51a287...1b1844` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5beacf...b675e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x64bed5...c47af0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x67fccb...af1b5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ac82e...6d0e33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7624da...e4ca01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8ea8fa...2f034d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f66cb...cc075c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa8d727...40c3d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa9305e...9a94ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xacb7f3...44d4d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb8cceb...c22080` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb8ff39...6f79d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbd8c31...ca3cde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc127a4...027632` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc84ca7...9b3cd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc85be0...8df5ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcf2203...990503` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd602e0...8f5397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe2e68d...bfde5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf08d6a...6d19aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf513bd...0b5c96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf86189...705b35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf9c28a...b704a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe4233...8df5e1` | ❓ Unverified |
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
| [We're audited by [OpenZeppelin](< >), [ChainSafe](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) and [Peckshield](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf). Despite that, users are advised to exercise caution and only risk funds they can afford to lose.](https://www.openzeppelin.com/news/ribbon-finance-audit) | OpenZeppelin | Audit | 2021-09 | stale | Direct | contract_name | 91 | high |
| [We're audited by [OpenZeppelin](<https://blog.openzeppelin.com/ribbon-finance-audit/ >), [ChainSafe]() and [Peckshield](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf). Despite that, users are advised to exercise caution and only risk funds they can afford to lose.](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) | OpenZeppelin | Audit | 2021-07 | stale | Direct | contract_name | 87 | high |
| [We're audited by [OpenZeppelin](<https://blog.openzeppelin.com/ribbon-finance-audit/ >), [ChainSafe](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) and [Peckshield](). Despite that, users are advised to exercise caution and only risk funds they can afford to lose.](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 6 | high |
| [Quantstamp](https://github.com/ribbon-finance/audit/blob/master/reports/Quantstamp%20Theta%20Vault.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name | 129 | high |
| [Chainsafe-Ribbon-Audit_April-2021.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Chainsafe-Ribbon-Audit_April-2021.pdf) | Chainsafe | Audit | 2021-04 | stale | Direct | contract_name | 8 | high |
| [PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | 5 | high |
| [PeckShield-Audit-Report-RVOL-v1.0rc.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RVOL-v1.0rc.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | 8 | high |
| [PeckShield-Audit-Report-RibbonSwap.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonSwap.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 4 | high |
| [PeckShield-Audit-Report-RibbonTreasuryVault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonTreasuryVault.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | 24 | high |
| [RibbonThetaYearn-18june.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaYearn-18june.pdf) | Unknown | Audit | 2021-06 | stale | Direct | contract_name | 1 | high |
| [RibbonV2-July-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/RibbonV2-July-2021.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 87 | high |
| [ribbon-07-2023.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-07-2023.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 21 | high |
| [ribbon-finance-04-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-finance-04-2021.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 8 | high |
| [ribbon-finance-11-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-finance-11-2021.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 104 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe04e8a...89cdc3`](./contracts/ethereum-1/0xe04e8ae290965ad4f7e40c68041c493d2e89cdc3/) | RibbonVaultPauser | core_logic | $279,563.05 | Verified native implementation with $279,563.05 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x27d60b...5ac87d`](./contracts/avalanche-43114/0x27d60b89e1a104cef79b3e40ead1374bb75ac87d/) | AddressBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5ae9b3...8e0df8`](./contracts/avalanche-43114/0x5ae9b340a98085d0fc25ae98a5eb704ba08e0df8/) | AllowListOffChainManaged | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6789db...2f0457`](./contracts/ethereum-1/0x6789db944e35653d07f67eaf4db4e42adf2f0457/) | CErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x02b70a...fc0e18`](./contracts/avalanche-43114/0x02b70ab8fd23f95e0cd8f8ea604415eb7cfc0e18/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x600eee...706c8e`](./contracts/ethereum-1/0x600eee67d5ffdbb897055c03e3ccdd0ac9706c8e/) | CosineInterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3205ca...c02c20`](./contracts/ethereum-1/0x3205ca08d2d55b9ac5376e21b81d5b4a03c02c20/) | DeltaStrikeSelection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x193c89...89cedb`](./contracts/avalanche-43114/0x193c8993480df4c1dbbdb39db07511f7d789cedb/) | DepositAndPlaceOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x33b1fa...8e836f`](./contracts/avalanche-43114/0x33b1fa3f012cd72988a35bad87339eb3e48e836f/) | EasyAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d02c1...4046df`](./contracts/ethereum-1/0x2d02c18904988d2d123a103fcc80634ac44046df/) | FeeCustody | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1db3de...dd8b8b`](./contracts/ethereum-1/0x1db3decabec6ae2a4a16189e36811570bfdd8b8b/) | L1Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00e812...5cc87f`](./contracts/ethereum-1/0x00e81211ce0fa2a46a2838d6b4861b5bdb5cc87f/) | ManualPricer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c8114...d7036c`](./contracts/ethereum-1/0x3c8114263092fd27acfeaa99549d4f3066d7036c/) | ManualStrikeSelection | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14416c...03b709`](./contracts/ethereum-1/0x14416c36428bdf554d3354566259af6bcd03b709/) | ManualVolOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2c726a...46b337`](./contracts/avalanche-43114/0x2c726a7da5500bd59a488e0065c41822bb46b337/) | MarginCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc272f9...b833a7`](./contracts/ethereum-1/0xc272f964a74ab7d2b4fd4ba27f6cc27887b833a7/) | MarginRequirements | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70bc7e...8cf447`](./contracts/ethereum-1/0x70bc7e46b8da687eeaae788c467eed56698cf447/) | MarginVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x048e2f...adf33a`](./contracts/ethereum-1/0x048e2f1f937b1b98efa7765b3060dee0a2adf33a/) | OptionsPremiumPricerInStables | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0862a6...51f121`](./contracts/ethereum-1/0x0862a662dc4483c4e01ae08d57ea170daf51f121/) | OTCWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b4eca...072264`](./contracts/ethereum-1/0x1b4eca06140f257b81778b1c516d5c77e5072264/) | OTCWrapperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6221b5...b29eac`](./contracts/ethereum-1/0x6221b5e23b137a405f8df9aaa717f1629cb29eac/) | PercentStrikeSelection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cdaa8...463582`](./contracts/ethereum-1/0x2cdaa8d20acfc53a7f51896211cb209150463582/) | PoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30b305...341fc6`](./contracts/ethereum-1/0x30b3059b1e870203aef55b071110b49b22341fc6/) | RethPricer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63a40e...a9fd47`](./contracts/ethereum-1/0x63a40e8bbc2ad3ed1c600abc0e01a8fef7a9fd47/) | RewardsDistributorDelegate | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02f01b...f12e4e`](./contracts/ethereum-1/0x02f01bb55543a13a9b63fa78bbdb12eb1bf12e4e/) | RewardsDistributorDelegator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98d860...8db287`](./contracts/ethereum-1/0x98d86079190c08c2a8ad338c26502695528db287/) | RibbonEarnVaultFixedRateKeeperPermissioned | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f0fe5...f97f33`](./contracts/ethereum-1/0x4f0fe57066ab1c84569dc6dd2edfe08b92f97f33/) | RibbonHatToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3abd44...cd8e2e`](./contracts/ethereum-1/0x3abd446d0d90726286554821a903b42af7cd8e2e/) | RibbonLendDepositHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x678c36...f45dc1`](./contracts/ethereum-1/0x678c3630d82c0b180d1766869d0cb88d2ef45dc1/) | RibbonVIPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x084a82...168303`](./contracts/avalanche-43114/0x084a82fe209f014b3cb6d5986b2c65b584168303/) | SAVAXDepositHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6cd451...51c922`](./contracts/avalanche-43114/0x6cd4515759a91cc577ac9595c209cf94e551c922/) | SAvaxOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0a59f3...c216c9`](./contracts/avalanche-43114/0x0a59f35f00a482bb04d95428e1ec051cbac216c9/) | SAvaxPricer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07f36c...9f5411`](./contracts/ethereum-1/0x07f36cf3c834e423536680f560b6bad0319f5411/) | STETHDepositHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0aa788...2ef234`](./contracts/ethereum-1/0x0aa7889c6427fd8fc612e87579fdcd1a942ef234/) | UnwindPermit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62ef28...e55652`](./contracts/ethereum-1/0x62ef288f5301ac04fee91524c1f32c7e1de55652/) | VaultDeploymentEventEmitter | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35fd2e...d1c3d4`](./contracts/ethereum-1/0x35fd2e2f59f24f002bf69ed055df595228d1c3d4/) | VaultLifecycleEarn | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60f0d4...9104f7`](./contracts/ethereum-1/0x60f0d49ffdf05685b94a247a85cc9e4e7d9104f7/) | VaultLifecycleTreasuryBare | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43b552...11afda`](./contracts/ethereum-1/0x43b552ed1b416930ad9c629a45697ac82011afda/) | VaultLifecycleWithSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6bcef...77031e`](./contracts/ethereum-1/0xe6bcefc66d6cbc4c555d53b817e738577477031e/) | VaultPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2986e8...b14648`](./contracts/avalanche-43114/0x2986e874370a1398807d76d70c73e7ec7db14648/) | VaultQueue | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88f011...1ab33e`](./contracts/ethereum-1/0x88f0110e9fa61aaca84cce7203c8a702681ab33e/) | VeRBNRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x194b6b...fba053`](./contracts/ethereum-1/0x194b6b1e4df7603abb320e8d4715bf943cfba053/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 84 |
| upstream | 4 |
| standard_library | 9 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=14
- Match method counts: extraction_exact=583

Fork inheritance lineage and inherited audits are included when available.
