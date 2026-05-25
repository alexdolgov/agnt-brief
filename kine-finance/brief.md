# Agentic Audit Brief: Kine Finance

⚠️ Lifecycle status: DECLINING - TVL changed 12.0% over 90 days

## Project Overview

- Project: Kine Finance (`kine-finance`)
- Lifecycle: declining (Tier 0, 95.8% below peak)
- Generated: 2026-05-25T05:43:21.706Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: avalanche, bsc, ethereum, polygon
- Contract surface: 35 unique implementations (169 raw deployments)
- DeFi Llama TVL: $1,109,052.38
- On-chain TVL (included contracts): $351,759,213.96
- TVL by chain: Bsc $351,326,734.28 | Ethereum $431,496.22 | Polygon $983.05 | Avalanche $0.41

## Project Description

Kine Finance is a decentralized protocol for lending and borrowing digital assets, enabling users to supply assets to earn yield or borrow against collateral. It uses a Compound-like architecture with kToken interest-bearing tokens and a governance-controlled unitroller for market management.

### Architecture

The protocol consists of a single product family where Unitroller proxies delegate governance logic to ControllerV2 implementations, and KMCDDelegator proxies use KMCDDelegate for stablecoin market operations. KEther contracts handle ETH-specific markets, while the Kine token likely serves as a governance or incentive token across deployments.

## Audit Coverage Summary

- Verified implementations audited: 0/33 (0.0%)
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 35
- Raw deployments: 169
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $351,759,213.96
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $351,759,213.96 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| KErc20Delegate | token | polygon | 55 deployments: ethereum `0x1568a7...59eba3`; ethereum `0x24ff63...8e57af`; ethereum `0x377f10...f586ab`; ethereum `0x37fb11...650bed`; ethereum `0x4191eb...735740`; ethereum `0x473ccd...878ee8`; ethereum `0x624c00...ab4b8d`; ethereum `0x63b63b...dd5a73`; ethereum `0xad58be...8ae948`; ethereum `0xbf5250...0a5bf5`; ethereum `0xeebf19...f0a139`; ethereum `0xf9771b...bf755a`; bsc `0x33888c...35a875`; bsc `0x3a8502...9b57c2`; bsc `0x670076...f54fa0`; bsc `0xa58e82...d35780`; bsc `0xad58be...8ae948`; bsc `0xcea2d0...d7d128`; bsc `0xd61867...24b847`; bsc `0xea4c9c...8909e9`; bsc `0xf8c7b7...7c871f`; polygon [`0x0d7030...707913`](./contracts/polygon-137/0x0d7030deb61a06147df06fc44d8e1d1153707913/); polygon `0x108dbe...5f4e81`; polygon `0x255d26...32ecd0`; polygon `0x3770eb...f0b259`; polygon `0x39d1c9...d6b06f`; polygon `0x42dfed...6b76b2`; polygon `0x4f6a33...7c49cd`; polygon `0x6c0ed4...972d91`; polygon `0x75349e...5f47f3`; polygon `0x96f451...e64ef7`; polygon `0xa2b89f...2df002`; polygon `0xabdbd0...1785c8`; polygon `0xada3be...cef876`; polygon `0xb6ffea...b188ac`; polygon `0xc903e8...0ac1b4`; polygon `0xcba50a...b5c1c4`; polygon `0xcf6182...05707f`; polygon `0xd9aa9b...d15432`; polygon `0xe972e2...2e0216`; polygon `0xee5e0c...bced60`; polygon `0xfbb9ef...c42c91`; avalanche [`0x0d7030...707913`](./contracts/avalanche-43114/0x0d7030deb61a06147df06fc44d8e1d1153707913/); avalanche `0x1d903b...32a19f`; avalanche `0x3770eb...f0b259`; avalanche `0x3d2a49...959cf4`; avalanche `0x66a782...7adeda`; avalanche `0x6c0ed4...972d91`; avalanche `0x919faa...64ba45`; avalanche `0xcb46bf...c5db70`; avalanche `0xcba50a...b5c1c4`; avalanche `0xd9aa9b...d15432`; avalanche `0xdd895f...cefd62`; avalanche `0xdedb4b...e3bc64`; avalanche `0xf186a6...2425f9` | ⚠️ Unaudited |
| TokenDispenserSeedI10Y60Y30 | token | ethereum | [`0x3e6503...667ddf`](./contracts/ethereum-1/0x3e650349fd52bc9d7fcd4fb1737e269d1e667ddf/) | ⚠️ Unaudited |
| TokenDispenserPrivateI25Y75 | token | ethereum | [`0x3d3522...0e0de4`](./contracts/ethereum-1/0x3d35222e8d238427e09c94a5aab491de6a0e0de4/) | ⚠️ Unaudited |
| BridgeToken | operational_periphery | avalanche | 16 deployments: avalanche [`0x0378fc...e86788`](./contracts/avalanche-43114/0x0378fcb44f7f673b43ee172eb42014c51de86788/); avalanche `0x0dd1cd...76eaca`; avalanche `0x1e311e...147d41`; avalanche `0x3278b9...e3407b`; avalanche `0x3c73b0...dcfa94`; avalanche `0x68ed14...8036ed`; avalanche `0x70163d...958765`; avalanche `0x7bdb2a...cd3f00`; avalanche `0x8b8c72...0796d0`; avalanche `0x95f6f7...0e604e`; avalanche `0x9e7a8d...4311ea`; avalanche `0xa7e935...0ac10d`; avalanche `0xab5f4f...877661`; avalanche `0xb65798...59608d`; avalanche `0xc23c59...d9e8e9`; avalanche `0xc43669...30fb87` | ⚠️ Unaudited |
| Controller | governance | bsc | 2 deployments: ethereum `0xd819d9...8d4ab4`; bsc [`0xc11c33...1908da`](./contracts/bsc-56/0xc11c339a1b24b3a10f81a309a1d271de141908da/) | ⚠️ Unaudited |
| ControllerV2 | governance | avalanche | 6 deployments: ethereum `0xbb7d94...fd1a92`; bsc `0x3c2ddd...32b571`; polygon `0x171d5c...0d7f28`; polygon `0xdff18a...b96881`; avalanche [`0x0ec312...6679c6`](./contracts/avalanche-43114/0x0ec3126390c606be63a0fa6585e68075f06679c6/); avalanche `0xdff18a...b96881` | ⚠️ Unaudited |
| Kaptain | unknown | ethereum | [`0xf8c7b7...7c871f`](./contracts/ethereum-1/0xf8c7b7709dd106e70133474bdf05d9d5a87c871f/) | ⚠️ Unaudited |
| KaptainV2 | unknown | polygon | 4 deployments: ethereum `0x1540e5...6a9f0c`; bsc `0xd4c220...896a06`; polygon [`0x0544be...a2fc39`](./contracts/polygon-137/0x0544be6693763d64c02f49f16986ba1390a2fc39/); avalanche `0xa64c21...aeece5` | ⚠️ Unaudited |
| KEther | unknown | avalanche | 4 deployments: ethereum `0xa58e82...d35780`; bsc `0x5fbe4e...60b055`; polygon `0xf186a6...2425f9`; avalanche [`0x0544be...a2fc39`](./contracts/avalanche-43114/0x0544be6693763d64c02f49f16986ba1390a2fc39/) | ⚠️ Unaudited |
| Kine | unknown | polygon | 4 deployments: ethereum `0xcbfef8...85f05d`; bsc `0xbfa9df...752d7f`; polygon [`0xa9c174...6ccd87`](./contracts/polygon-137/0xa9c1740fa56e4c0f6ce5a792fd27095c8b6ccd87/); avalanche [`0xa9c174...6ccd87`](./contracts/avalanche-43114/0xa9c1740fa56e4c0f6ce5a792fd27095c8b6ccd87/) | ⚠️ Unaudited |
| KineBox | unknown | avalanche | 2 deployments: avalanche [`0x5f17db...0e9526`](./contracts/avalanche-43114/0x5f17dbc86d60f1a34dc22408d263683c3d0e9526/); avalanche `0xcd96a1...d20a3c` | ⚠️ Unaudited |
| KineCard | unknown | avalanche | [`0x77427a...96d923`](./contracts/avalanche-43114/0x77427a2e5904d7d59b96ba2e30b9f7a03996d923/) | ⚠️ Unaudited |
| KineExchangeTreasury | operational_periphery | bsc | 4 deployments: ethereum `0x545a25...763645`; bsc [`0x1568a7...59eba3`](./contracts/bsc-56/0x1568a7f0bdf67d37dc963c345dbc4a598859eba3/); polygon `0x1d903b...32a19f`; avalanche `0x6e81c7...7cfa0e` | ⚠️ Unaudited |
| KineMarket | unknown | avalanche | [`0xca13ea...f9bd8d`](./contracts/avalanche-43114/0xca13ea4111cd5c86721b657e666eede2e4f9bd8d/) | ⚠️ Unaudited |
| KineMultiSigWallet | governance | avalanche | 5 deployments: ethereum `0xa6e17a...330191`; ethereum `0xbfa9df...752d7f`; bsc `0x6534af...a0446c`; polygon `0xa8c2a4...757198`; avalanche [`0x21e927...cdfac1`](./contracts/avalanche-43114/0x21e9276be3aff3113196423659dc01c9f6cdfac1/) | ⚠️ Unaudited |
| KineOracleV2 | operational_periphery | polygon | 3 deployments: polygon [`0x606627...951e30`](./contracts/polygon-137/0x606627b64d71bf9337c273e97803324cc7951e30/); polygon `0xd546a5...2f9494`; avalanche `0xc903e8...0ac1b4` | ⚠️ Unaudited |
| KineProtocolHelper | periphery | avalanche | 2 deployments: polygon `0xcb46bf...c5db70`; avalanche [`0x39d1c9...d6b06f`](./contracts/avalanche-43114/0x39d1c99a244aa02502defc109e6f2d88efd6b06f/) | ⚠️ Unaudited |
| KineRanch | unknown | polygon | 4 deployments: ethereum `0xa8d764...9cc692`; bsc `0x9e8e62...e2d03b`; polygon [`0x66a782...7adeda`](./contracts/polygon-137/0x66a782c9a077f5adc988cc0b5fb1cdcc9d7adeda/); avalanche `0x68b973...aa3e47` | ⚠️ Unaudited |
| KineSimpleBridge | operational_periphery | avalanche | 4 deployments: ethereum `0x80b91d...42f1d2`; bsc `0xcbfef8...85f05d`; polygon `0x3d2a49...959cf4`; avalanche [`0x171d5c...0d7f28`](./contracts/avalanche-43114/0x171d5c31d196fae671e95594372f049bfd0d7f28/) | ⚠️ Unaudited |
| KineSwap | unknown | avalanche | 3 deployments: avalanche [`0x06cb07...1c1f18`](./contracts/avalanche-43114/0x06cb07eb43c40b17d9e8f55023fc5968f81c1f18/); avalanche `0xb5e41f...7b0b3f`; avalanche `0xf780a7...316e58` | ⚠️ Unaudited |
| KineTreasury | operational_periphery | ethereum | [`0xbcb641...d3bbb7`](./contracts/ethereum-1/0xbcb64143c3b1643a310012125fb73a6b07d3bbb7/) | ⚠️ Unaudited |
| KineUSD | unknown | polygon | 4 deployments: ethereum `0xd4c220...896a06`; bsc `0xd819d9...8d4ab4`; polygon [`0x03324b...fc99a2`](./contracts/polygon-137/0x03324bbc860fbbfd452f6ac0b0b1d76deafc99a2/); avalanche [`0x03324b...fc99a2`](./contracts/avalanche-43114/0x03324bbc860fbbfd452f6ac0b0b1d76deafc99a2/) | ⚠️ Unaudited |
| KMCDDelegate | unknown | bsc | 8 deployments: ethereum `0xaeacff...205179`; ethereum `0xaf2617...b6555f`; bsc [`0x013a07...6e3c9e`](./contracts/bsc-56/0x013a07efbafd343bd4ed2241f97579f4bb6e3c9e/); bsc `0x4f1ab9...177986`; polygon `0x75f213...520de0`; polygon `0xcd6b46...a0c54c`; avalanche `0x75f213...520de0`; avalanche `0xcd6b46...a0c54c` | ⚠️ Unaudited |
| KUSDMinter | unknown | ethereum | [`0x5fbe4e...60b055`](./contracts/ethereum-1/0x5fbe4eb536dadbcee54d5b55ed6559e29c60b055/) | ⚠️ Unaudited |
| KUSDMinterV2 | unknown | bsc | [`0xbb7d94...fd1a92`](./contracts/bsc-56/0xbb7d94a423f4978545ecf73161f0678e8afd1a92/) | ⚠️ Unaudited |
| KUSDMinterV3 | unknown | polygon | 6 deployments: ethereum `0xcea2d0...d7d128`; bsc `0x42fe8e...d28989`; polygon [`0x1b80c2...b774f9`](./contracts/polygon-137/0x1b80c2ae4927dcdb703782d01539168c98b774f9/); polygon `0x29085e...9e6460`; avalanche [`0x1b80c2...b774f9`](./contracts/avalanche-43114/0x1b80c2ae4927dcdb703782d01539168c98b774f9/); avalanche `0x29085e...9e6460` | ⚠️ Unaudited |
| KUSDVault | core_logic | polygon | 4 deployments: ethereum `0xd61867...24b847`; bsc `0xaf2617...b6555f`; polygon [`0x68b973...aa3e47`](./contracts/polygon-137/0x68b9737ae74cf1a169890042f1aa359647aa3e47/); avalanche `0xfcd7ac...19554d` | ⚠️ Unaudited |
| LiquidatorWhitelist | operational_periphery | avalanche | 2 deployments: polygon `0xc34f77...c7eb51`; avalanche [`0x96f451...e64ef7`](./contracts/avalanche-43114/0x96f4516a9d150574cb6d8ae3380f28f330e64ef7/) | ⚠️ Unaudited |
| LPStakingRewards | unknown | ethereum | 4 deployments: ethereum [`0x80850d...5e52bf`](./contracts/ethereum-1/0x80850db68db03792ca5650fbdaccebe1da5e52bf/); ethereum `0x834c3b...33606b`; ethereum `0xa457ac...c2793b`; ethereum `0xc75ba7...a0c9b6` | ⚠️ Unaudited |
| OracleHelper | operational_periphery | avalanche | 2 deployments: polygon `0xdd895f...cefd62`; avalanche [`0xabdbd0...1785c8`](./contracts/avalanche-43114/0xabdbd0461ba9ffb0a4ed5cb210866f50ce1785c8/) | ⚠️ Unaudited |
| RewardClaimer | operational_periphery | ethereum | [`0xea4c9c...8909e9`](./contracts/ethereum-1/0xea4c9c6249a05b6abd4aede99a185b03948909e9/) | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | avalanche | 9 deployments: ethereum `0x377f4f...6e5393`; ethereum `0x67d920...c9258f`; ethereum `0xcea3ec...1a9b33`; bsc `0x308043...d919ad`; bsc `0x6c2c7c...85d3d7`; polygon `0x4d7242...2a8636`; polygon `0x69c78c...ceedf9`; avalanche [`0x108dbe...5f4e81`](./contracts/avalanche-43114/0x108dbee7fbc3a774b97628356edbb606815f4e81/); avalanche `0x437309...522e80` | ⚠️ Unaudited |
| Timelock | governance | ethereum | [`0x9e8e62...e2d03b`](./contracts/ethereum-1/0x9e8e622e0ba0dee491fbc42d1bb12ab947e2d03b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | polygon | `0x9a5c4b...8c5199` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1641b4...200e5d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x0d7030...707913`](./contracts/polygon-137/0x0d7030deb61a06147df06fc44d8e1d1153707913/) | KErc20Delegate | token | $351,759,208.55 | Verified native implementation with $351,759,208.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e6503...667ddf`](./contracts/ethereum-1/0x3e650349fd52bc9d7fcd4fb1737e269d1e667ddf/) | TokenDispenserSeedI10Y60Y30 | token | $5.37 | Verified native implementation with $5.37 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d3522...0e0de4`](./contracts/ethereum-1/0x3d35222e8d238427e09c94a5aab491de6a0e0de4/) | TokenDispenserPrivateI25Y75 | token | $0.04 | Verified native implementation with $0.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc11c33...1908da`](./contracts/bsc-56/0xc11c339a1b24b3a10f81a309a1d271de141908da/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0ec312...6679c6`](./contracts/avalanche-43114/0x0ec3126390c606be63a0fa6585e68075f06679c6/) | ControllerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8c7b7...7c871f`](./contracts/ethereum-1/0xf8c7b7709dd106e70133474bdf05d9d5a87c871f/) | Kaptain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0544be...a2fc39`](./contracts/polygon-137/0x0544be6693763d64c02f49f16986ba1390a2fc39/) | KaptainV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0544be...a2fc39`](./contracts/avalanche-43114/0x0544be6693763d64c02f49f16986ba1390a2fc39/) | KEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa9c174...6ccd87`](./contracts/polygon-137/0xa9c1740fa56e4c0f6ce5a792fd27095c8b6ccd87/) | Kine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5f17db...0e9526`](./contracts/avalanche-43114/0x5f17dbc86d60f1a34dc22408d263683c3d0e9526/) | KineBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x77427a...96d923`](./contracts/avalanche-43114/0x77427a2e5904d7d59b96ba2e30b9f7a03996d923/) | KineCard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1568a7...59eba3`](./contracts/bsc-56/0x1568a7f0bdf67d37dc963c345dbc4a598859eba3/) | KineExchangeTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xca13ea...f9bd8d`](./contracts/avalanche-43114/0xca13ea4111cd5c86721b657e666eede2e4f9bd8d/) | KineMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x21e927...cdfac1`](./contracts/avalanche-43114/0x21e9276be3aff3113196423659dc01c9f6cdfac1/) | KineMultiSigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x606627...951e30`](./contracts/polygon-137/0x606627b64d71bf9337c273e97803324cc7951e30/) | KineOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x39d1c9...d6b06f`](./contracts/avalanche-43114/0x39d1c99a244aa02502defc109e6f2d88efd6b06f/) | KineProtocolHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x66a782...7adeda`](./contracts/polygon-137/0x66a782c9a077f5adc988cc0b5fb1cdcc9d7adeda/) | KineRanch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x171d5c...0d7f28`](./contracts/avalanche-43114/0x171d5c31d196fae671e95594372f049bfd0d7f28/) | KineSimpleBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x06cb07...1c1f18`](./contracts/avalanche-43114/0x06cb07eb43c40b17d9e8f55023fc5968f81c1f18/) | KineSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbcb641...d3bbb7`](./contracts/ethereum-1/0xbcb64143c3b1643a310012125fb73a6b07d3bbb7/) | KineTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x03324b...fc99a2`](./contracts/polygon-137/0x03324bbc860fbbfd452f6ac0b0b1d76deafc99a2/) | KineUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x013a07...6e3c9e`](./contracts/bsc-56/0x013a07efbafd343bd4ed2241f97579f4bb6e3c9e/) | KMCDDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fbe4e...60b055`](./contracts/ethereum-1/0x5fbe4eb536dadbcee54d5b55ed6559e29c60b055/) | KUSDMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbb7d94...fd1a92`](./contracts/bsc-56/0xbb7d94a423f4978545ecf73161f0678e8afd1a92/) | KUSDMinterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1b80c2...b774f9`](./contracts/polygon-137/0x1b80c2ae4927dcdb703782d01539168c98b774f9/) | KUSDMinterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x68b973...aa3e47`](./contracts/polygon-137/0x68b9737ae74cf1a169890042f1aa359647aa3e47/) | KUSDVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x96f451...e64ef7`](./contracts/avalanche-43114/0x96f4516a9d150574cb6d8ae3380f28f330e64ef7/) | LiquidatorWhitelist | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80850d...5e52bf`](./contracts/ethereum-1/0x80850db68db03792ca5650fbdaccebe1da5e52bf/) | LPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xabdbd0...1785c8`](./contracts/avalanche-43114/0xabdbd0461ba9ffb0a4ed5cb210866f50ce1785c8/) | OracleHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea4c9c...8909e9`](./contracts/ethereum-1/0xea4c9c6249a05b6abd4aede99a185b03948909e9/) | RewardClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x108dbe...5f4e81`](./contracts/avalanche-43114/0x108dbee7fbc3a774b97628356edbb606815f4e81/) | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
