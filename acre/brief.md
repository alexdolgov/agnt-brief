# Agentic Audit Brief: Acre

## Project Overview

- Project: Acre (`acre`)
- Website: [https://acre.fi](https://acre.fi)
- Lifecycle: active (Tier 0, 31.9% below peak)
- Generated: 2026-06-10T20:10:38.609Z
- Pipeline run: v2-pipeline-2026-06-10-b79301-df6b
- Chains: ethereum
- Contract surface: 220 unique implementations (568 raw deployments)
- DeFi Llama TVL: $4,266,336.18
- On-chain TVL (included contracts): $3.02
- TVL by chain: Ethereum $3.02

## Project Description

Acre is a Bitcoin yield protocol centered on BTC/tBTC deposits into an ERC-4626 auto-compounding vault, with acreBTC as the receipt token representing a user's vault position and accrued yield. It should not be described as a broad multi-asset Midas-style mToken issuance platform unless those products are separately attested as Acre-owned.

### Architecture

The Acre family provides the foundational Bitcoin yield token (acreBTC) and its deposit/redemption infrastructure, while mRe7BTC and mRe7YIELD are separate product lines with their own vaults. All families share a common pattern of using proxy-upgraded vaults and data feeds, and the Acre family's MidasAllocator may be used to manage yield across multiple products.

## Audit Coverage Summary

- Verified implementations audited: 1/207 (0.5%)
- Verified + Unaudited implementations: 206
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 220
- Raw deployments: 568
- Audits discovered: 4
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $3.02
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 1 aging, 1 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 0.5% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| stBTC | unknown | ethereum | [`0x4271d4...0e64e2`](./contracts/ethereum-1/0x4271d490e30cc14d87666bd1577dbebc2c0e64e2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (206)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MLiquidityRedemptionVault | core_logic | ethereum | 3 deployments: ethereum [`0x5e5aab...634c9e`](./contracts/ethereum-1/0x5e5aab1aad75853ab8114264c3bf3427b0634c9e/); ethereum `0x689e9f...d86b17`; ethereum `0x97acdf...a1b3a7` | ⚠️ Unaudited |
| MSyrupUsdpDepositVault | core_logic | ethereum | 2 deployments: ethereum [`0x8493f1...73789a`](./contracts/ethereum-1/0x8493f1f2b834c2837c87075b0edac17f5273789a/); ethereum `0xc04e15...f4492f` | ⚠️ Unaudited |
| RedemptionVaultWithUSTB | core_logic | ethereum | 3 deployments: ethereum [`0x489a79...40d701`](./contracts/ethereum-1/0x489a797714708cf088d158714a376d8ff740d701/); ethereum `0x4a6947...da83b9`; ethereum `0x569d7d...c4f0ec` | ⚠️ Unaudited |
| AcreAdapter | adapter | ethereum | 2 deployments: ethereum [`0x6a6092...587ae0`](./contracts/ethereum-1/0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0/); ethereum `0x87bf77...daf031` | ⚠️ Unaudited |
| acreBTC | unknown | ethereum | 4 deployments: ethereum [`0x19531c...396ded`](./contracts/ethereum-1/0x19531c886339dd28b9923d903f6b235c45396ded/); ethereum `0x74b5e7...3e338c`; ethereum `0x7c0391...69d9d5`; ethereum `0x7e3638...a63d94` | ⚠️ Unaudited |
| AcreBtcCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x8b0fdf...fe701e`](./contracts/ethereum-1/0x8b0fdf4f5c6036b3c8b8b451680ce87b0ffe701e/); ethereum `0xd0eed9...9af61f` | ⚠️ Unaudited |
| AcreBtcDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x7d5b8a...b040bb`](./contracts/ethereum-1/0x7d5b8ab9c948fb11433e0eddadd718dc5cb040bb/); ethereum `0xcaacb4...57e5e6` | ⚠️ Unaudited |
| AcreBtcDepositVault | core_logic | ethereum | 4 deployments: ethereum [`0x4c727b...4bb837`](./contracts/ethereum-1/0x4c727b81eb776e2614c72430e306cefd614bb837/); ethereum `0x52e808...a5b35d`; ethereum `0xacfbf6...9a680e`; ethereum `0xd91b5b...86d32e` | ⚠️ Unaudited |
| AcreBtcRedemptionVaultWithSwapper | adapter | ethereum | 2 deployments: ethereum [`0x319a05...3d5106`](./contracts/ethereum-1/0x319a05e260acc2490768a726ccfd341d4b3d5106/); ethereum `0x915fbb...3ca331` | ⚠️ Unaudited |
| acremBTC1 | unknown | ethereum | 2 deployments: ethereum [`0xc344db...4f2368`](./contracts/ethereum-1/0xc344db27feba7f0a881a50f0f702a525a44f2368/); ethereum `0xe35c30...9b107e` | ⚠️ Unaudited |
| BitcoinDepositorV2 | unknown | ethereum | 2 deployments: ethereum [`0x7b90c1...ca2b77`](./contracts/ethereum-1/0x7b90c10c4a5848eb687b7315456da886faca2b77/); ethereum `0xe5f48d...11c777` | ⚠️ Unaudited |
| BitcoinRedeemerV2 | unknown | ethereum | 2 deployments: ethereum [`0x42a5f9...4d55e9`](./contracts/ethereum-1/0x42a5f91586ddf041a6084494b0b375cda34d55e9/); ethereum `0x8abe54...8bda5d` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeed | unknown | ethereum | 15 deployments: ethereum [`0x20c548...1c5bee`](./contracts/ethereum-1/0x20c5486ddc82272856730cc6ae2c9485ee1c5bee/); ethereum `0x2c2d0c...721499`; ethereum `0x3e45d8...4dd14c`; ethereum `0x504c04...11fb5d`; ethereum `0x5b1b99...eb40cc`; ethereum `0x753171...28d6bb`; ethereum `0x7daee1...f837cd`; ethereum `0x7ecbc2...53025a`; ethereum `0x90cd34...5b8508`; ethereum `0x95a17b...d5b87d`; ethereum `0x9e6050...f4279c`; ethereum `0xb1aab9...4c192e`; ethereum `0xfa4f57...457718`; ethereum `0xfcf0fd...9602e7`; ethereum `0xfe052c...51b1e1` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | ethereum | 3 deployments: ethereum [`0x438630...95dc99`](./contracts/ethereum-1/0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99/); ethereum `0x9edca6...eb4e9d`; ethereum `0xe35b66...802e71` | ⚠️ Unaudited |
| DataFeed | unknown | ethereum | 39 deployments: ethereum [`0x01b16e...18f003`](./contracts/ethereum-1/0x01b16ea685735acabe519d682a08acade018f003/); ethereum `0x1498dd...56baf7`; ethereum `0x19569a...616f07`; ethereum `0x1bb6dd...32f0fa`; ethereum `0x1c04a3...ebf085`; ethereum `0x247222...cb1a69`; ethereum `0x24aea6...473e10`; ethereum `0x263a7a...52383c`; ethereum `0x2a2bdb...b75fb7`; ethereum `0x2aee3e...dbb7dc`; ethereum `0x2f319e...e1f4e0`; ethereum `0x3aac6f...c0edc2`; ethereum `0x3c24ec...441ae9`; ethereum `0x4323c7...116aa1`; ethereum `0x449f44...12287c`; ethereum `0x452a72...48f9d2`; ethereum `0x488f2a...573796`; ethereum `0x4cfd86...c76fd3`; ethereum `0x53a709...eaf113`; ethereum `0x6022a0...55081a`; ethereum `0x620330...f6bd4f`; ethereum `0x62c81e...f15e5e`; ethereum `0x63f4fe...5bf8b3`; ethereum `0x654560...83aac3`; ethereum `0x6d233c...cff437`; ethereum `0x6e0433...0d30df`; ethereum `0x718875...5d5b56`; ethereum `0x7811c1...a81188`; ethereum `0x8a8305...a75e79`; ethereum `0xa37cfc...324c1b`; ethereum `0xb8d9ec...b6f5ac`; ethereum `0xb93b94...84251e`; ethereum `0xc747fd...5c947f`; ethereum `0xe7ece9...0ad2d6`; ethereum `0xe85f2b...e30109`; ethereum `0xecca68...61786f`; ethereum `0xed8378...d5c268`; ethereum `0xedba99...62747d`; ethereum `0xfcc991...00ad56` | ⚠️ Unaudited |
| DepositVault | core_logic | ethereum | 5 deployments: ethereum [`0x0e0eb6...d80847`](./contracts/ethereum-1/0x0e0eb6cdad90174f1db606ec186ddd0b5ed80847/); ethereum `0x91ff55...58fb8e`; ethereum `0x993614...796683`; ethereum `0xc8af84...55982b`; ethereum `0xcbcf1e...3369f0` | ⚠️ Unaudited |
| eUSD | unknown | ethereum | 5 deployments: ethereum [`0x4089dc...0cbe27`](./contracts/ethereum-1/0x4089dc8b6637218f13465d28950a82a7e90cbe27/); ethereum `0xb5c5f2...19c701`; ethereum `0xbe1f59...513804`; ethereum `0xe786da...0cea30`; ethereum `0xfac68d...4127f3` | ⚠️ Unaudited |
| EUsdDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0x141f0e...9172b1`](./contracts/ethereum-1/0x141f0e9ed8ba2295254c9df9476cce7bc29172b1/); ethereum `0x7700af...49761a`; ethereum `0xdd2ec1...4cf487` | ⚠️ Unaudited |
| EUsdRedemptionVault | core_logic | ethereum | 6 deployments: ethereum [`0x39592b...69ae4d`](./contracts/ethereum-1/0x39592bdbf6f3b96dd4547063945ab9ece769ae4d/); ethereum `0x4388ba...f43fea`; ethereum `0x5cdabc...efacca`; ethereum `0x672dce...72d116`; ethereum `0x7814b9...e88723`; ethereum `0x8459f6...c92c27` | ⚠️ Unaudited |
| hypeBTC | unknown | ethereum | 2 deployments: ethereum [`0x48599a...c83459`](./contracts/ethereum-1/0x48599ab08115cdf5731a7d8e5da1ac71d3c83459/); ethereum `0xffa36b...c3571e` | ⚠️ Unaudited |
| HypeBtcCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x910cde...4a6f4c`](./contracts/ethereum-1/0x910cde06dfdcb06540744683812b8e2eb04a6f4c/); ethereum `0xf89d50...d2b3c7` | ⚠️ Unaudited |
| HypeBtcDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x389035...bbcac4`](./contracts/ethereum-1/0x389035180efd4ee704f6e1b6a11e8889a1bbcac4/); ethereum `0x57da05...dfe27e` | ⚠️ Unaudited |
| HypeBtcDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0x164645...b146dd`](./contracts/ethereum-1/0x164645fbc7220a3b4f8f5c6b473bcf1b6db146dd/); ethereum `0x355060...945ab3`; ethereum `0xa6d932...8f4576` | ⚠️ Unaudited |
| HypeBtcRedemptionVaultWithSwapper | adapter | ethereum | 3 deployments: ethereum [`0x4bcfda...95001a`](./contracts/ethereum-1/0x4bcfda0a844b49da8bb19562ee52cc385395001a/); ethereum `0x5463a2...e06912`; ethereum `0x7b9a4e...78c151` | ⚠️ Unaudited |
| hypeETH | unknown | ethereum | 2 deployments: ethereum [`0x140e71...1ff8ab`](./contracts/ethereum-1/0x140e71cd72d7ab5735fe8a73028bbe71821ff8ab/); ethereum `0x8e2c2c...4154be` | ⚠️ Unaudited |
| HypeEthCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x1ce3e1...0955dd`](./contracts/ethereum-1/0x1ce3e159f37c36fd1ff9c3b5af8725ef890955dd/); ethereum `0xdf1451...13df4a` | ⚠️ Unaudited |
| HypeEthDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x9ed03d...fcd463`](./contracts/ethereum-1/0x9ed03d76c8e826c6c02eb2e86c38a0d89afcd463/); ethereum `0xe451b7...4ebf5d` | ⚠️ Unaudited |
| HypeEthDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0x109e2a...f6867c`](./contracts/ethereum-1/0x109e2a83502edf977fb035929a51414e93f6867c/); ethereum `0x416ec6...4ec93c`; ethereum `0x54d08a...5fe81f` | ⚠️ Unaudited |
| HypeEthRedemptionVaultWithSwapper | adapter | ethereum | 3 deployments: ethereum [`0x1fe179...9291c7`](./contracts/ethereum-1/0x1fe17936c1cdc73c857263997716e3a60b9291c7/); ethereum `0x543cd6...7765ae`; ethereum `0xecdfd5...940270` | ⚠️ Unaudited |
| hypeUSD | unknown | ethereum | 2 deployments: ethereum [`0xa48cfd...eee17f`](./contracts/ethereum-1/0xa48cfd53263ade6abdb0ac75287cc0d5a2eee17f/); ethereum `0xf51ad2...17a237` | ⚠️ Unaudited |
| HypeUsdCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x0f50b4...4e49c0`](./contracts/ethereum-1/0x0f50b401509798f1919a4e8d38192f78734e49c0/); ethereum `0xc9d25e...25b276` | ⚠️ Unaudited |
| HypeUsdDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x3de2e7...42f5d4`](./contracts/ethereum-1/0x3de2e700d220928ff5180691004824d8ad42f5d4/); ethereum `0x771242...873050` | ⚠️ Unaudited |
| HypeUsdDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0x8d874a...7f3a9e`](./contracts/ethereum-1/0x8d874a929ce6f5c21ab00f1677ccf43fbb7f3a9e/); ethereum `0xb8ba8a...f9d056`; ethereum `0xd6fd5d...ffc1bc` | ⚠️ Unaudited |
| HypeUsdRedemptionVaultWithSwapper | adapter | ethereum | 3 deployments: ethereum [`0x33ed48...3c6fa9`](./contracts/ethereum-1/0x33ed485dcf400e9354173aebf6de37d8c03c6fa9/); ethereum `0x3f5e04...30a855`; ethereum `0x7b83aa...bf799d` | ⚠️ Unaudited |
| JIV | unknown | ethereum | 2 deployments: ethereum [`0x334b32...3e3d42`](./contracts/ethereum-1/0x334b32f6298167d9efdc0f7affe447dba53e3d42/); ethereum `0xc470e9...29e3d5` | ⚠️ Unaudited |
| JivCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x540f33...5d57ff`](./contracts/ethereum-1/0x540f331ebc800b68d4972a01d57b2e1fe45d57ff/); ethereum `0xc4fb4b...587ed1` | ⚠️ Unaudited |
| JivDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x15a4c3...ee3862`](./contracts/ethereum-1/0x15a4c3e5a3e955a81a570e617d83680f57ee3862/); ethereum `0x7a66a9...66433a` | ⚠️ Unaudited |
| JivDepositVault | core_logic | ethereum | 2 deployments: ethereum [`0x30acce...338c06`](./contracts/ethereum-1/0x30acceedff97a3fe11ab52ee7425af4589338c06/); ethereum `0xdd58d3...25dbc2` | ⚠️ Unaudited |
| JivRedemptionVaultWithSwapper | adapter | ethereum | 2 deployments: ethereum [`0x5572eb...062d78`](./contracts/ethereum-1/0x5572eb7f4fb679ff6a99203f12b0484dc1062d78/); ethereum `0xb4fa9f...108221` | ⚠️ Unaudited |
| mAPOLLO | unknown | ethereum | 2 deployments: ethereum [`0x7cf9de...116c05`](./contracts/ethereum-1/0x7cf9dec92ca9fd46f8d86e7798b72624bc116c05/); ethereum `0xd43cc4...97df0c` | ⚠️ Unaudited |
| MApolloCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x562bb5...420c55`](./contracts/ethereum-1/0x562bb5014793e8d2df2b493a947fbd522d420c55/); ethereum `0x84303e...b7ee4b` | ⚠️ Unaudited |
| MApolloDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x9aebf5...bdd358`](./contracts/ethereum-1/0x9aebf5d6f9411bac355021ddfbe9b2c756bdd358/); ethereum `0xf39b57...77cca9` | ⚠️ Unaudited |
| MApolloDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0x4d371c...e4999c`](./contracts/ethereum-1/0x4d371cc63fb8efd48aff59c5a0c064863ae4999c/); ethereum `0xc21511...0d5921`; ethereum `0xd60cb8...7b5dc3` | ⚠️ Unaudited |
| MApolloRedemptionVaultWithSwapper | adapter | ethereum | 3 deployments: ethereum [`0x5aea6d...6af5c0`](./contracts/ethereum-1/0x5aea6d35ed7b3b7ae78694b7da2ee880756af5c0/); ethereum `0x906d24...224a9d`; ethereum `0xcffed5...8c84ee` | ⚠️ Unaudited |
| mBASIS | unknown | ethereum | 3 deployments: ethereum [`0x2a8c22...88b656`](./contracts/ethereum-1/0x2a8c22e3b10036f3aef5875d04f8441d4188b656/); ethereum `0xddfda0...a8bc1e`; ethereum `0xf4ec6b...1d6e5d` | ⚠️ Unaudited |
| MBasisCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x54d478...d439d0`](./contracts/ethereum-1/0x54d4783f47889c73861152f027a1aedf75d439d0/); ethereum `0xe4f2ae...390d24` | ⚠️ Unaudited |
| MBasisDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x1615cb...5d76e4`](./contracts/ethereum-1/0x1615cbc603192ae8a9ff20e98dd0e40a405d76e4/); ethereum `0x2bdaef...39e8e9` | ⚠️ Unaudited |
| MBasisDepositVault | core_logic | ethereum | 5 deployments: ethereum [`0x27c0d4...7780b8`](./contracts/ethereum-1/0x27c0d44b02e1b732f37ba31c466a35053a7780b8/); ethereum `0x408077...f7c926`; ethereum `0x757876...600dec`; ethereum `0xa8a5c4...a15d88`; ethereum `0xf804a6...969840` | ⚠️ Unaudited |
| MBasisRedemptionVault | core_logic | ethereum | 6 deployments: ethereum [`0x19ab19...ca9f0b`](./contracts/ethereum-1/0x19ab19e61a930bc5c7b75bf06cdd954218ca9f0b/); ethereum `0x48f42c...7ca724`; ethereum `0x6390b8...14dc56`; ethereum `0x73cb9a...ee9d84`; ethereum `0x9e7d51...89cb1a`; ethereum `0xb89ea4...bbd877` | ⚠️ Unaudited |
| MBasisRedemptionVaultWithSwapper | adapter | ethereum | 4 deployments: ethereum [`0x0d89c1...17d123`](./contracts/ethereum-1/0x0d89c1c4799353f3805a3e6c4e1cbbb83217d123/); ethereum `0x8378d5...c78a12`; ethereum `0xb83a6c...af86ca`; ethereum `0xddc408...fc8071` | ⚠️ Unaudited |
| mBTC | unknown | ethereum | 2 deployments: ethereum [`0x007115...ef7d9d`](./contracts/ethereum-1/0x007115416ab6c266329a03b09a8aa39ac2ef7d9d/); ethereum `0xebdb72...86a781` | ⚠️ Unaudited |
| MBtcCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x7b904f...fd49c7`](./contracts/ethereum-1/0x7b904f25a1e923cf1f1fc2e5798232132dfd49c7/); ethereum `0xa537ef...a189ee` | ⚠️ Unaudited |
| MBtcDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x5f5b02...e887c9`](./contracts/ethereum-1/0x5f5b02328db057c84217003ad3519c541fe887c9/); ethereum `0x9987be...b3e28e` | ⚠️ Unaudited |
| MBtcDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0x10cc8d...f693bd`](./contracts/ethereum-1/0x10cc8dbca90db7606013d8cd2e77eb024df693bd/); ethereum `0x75515e...754de9`; ethereum `0xd89a4d...747c77` | ⚠️ Unaudited |
| MBtcRedemptionVault | core_logic | ethereum | 3 deployments: ethereum [`0x30d9d1...3efc1a`](./contracts/ethereum-1/0x30d9d1e76869516aea980390494aaed45c3efc1a/); ethereum `0x341cb1...7ecac5`; ethereum `0xcc6efe...82300a` | ⚠️ Unaudited |
| mEDGE | unknown | ethereum | 2 deployments: ethereum [`0x39c189...74fb87`](./contracts/ethereum-1/0x39c1891875afa8faae0ea8d9d3e769c46174fb87/); ethereum `0xbb51e2...ab7a55` | ⚠️ Unaudited |
| MEdgeCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x039150...c0ea2f`](./contracts/ethereum-1/0x0391508a7cf5cf30c233d08849813c2959c0ea2f/); ethereum `0x698da5...0406b7` | ⚠️ Unaudited |
| MEdgeDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x057a3a...56a7d1`](./contracts/ethereum-1/0x057a3a6b45d9bb351f0123de1b8e00fe5a56a7d1/); ethereum `0x20cd58...8d91cb` | ⚠️ Unaudited |
| MEdgeDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0xc904de...a73cc6`](./contracts/ethereum-1/0xc904de3f0a5ad6d85609ec37fc0f30edafa73cc6/); ethereum `0xd0402b...b8515d`; ethereum `0xfe8de1...c668cc` | ⚠️ Unaudited |
| MEdgeRedemptionVaultWithSwapper | adapter | ethereum | 4 deployments: ethereum [`0x6142ad...cc3ad5`](./contracts/ethereum-1/0x6142ad2733c45d42ef3c625d4e33689406cc3ad5/); ethereum `0x844889...d15f1c`; ethereum `0x9b2c5e...6af15d`; ethereum `0xd0bdef...a3ef67` | ⚠️ Unaudited |
| mevBTC | unknown | ethereum | 2 deployments: ethereum [`0x781367...e629a4`](./contracts/ethereum-1/0x7813671f9c083b63fcbecbc182e9a0fc7de629a4/); ethereum `0xb64c01...5963dc` | ⚠️ Unaudited |
| MevBtcCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x931403...0a5b43`](./contracts/ethereum-1/0x931403532a4a30fee41bfe79f5b2159dcd0a5b43/); ethereum `0xffd462...474b65` | ⚠️ Unaudited |
| MevBtcDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x568143...de744f`](./contracts/ethereum-1/0x56814399caaedcee4f58d2e55da058a81dde744f/); ethereum `0xf5fcd6...2d9a41` | ⚠️ Unaudited |
| MevBtcDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0x3549f6...f44b3c`](./contracts/ethereum-1/0x3549f6936dafb87f456dca3a061bc9225ff44b3c/); ethereum `0xa6d60a...491e37`; ethereum `0xad391d...7c77d2` | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | adapter | ethereum | 3 deployments: ethereum [`0x265041...d6ab3c`](./contracts/ethereum-1/0x26504103cc0704de4fad7d6be6538f8b9ed6ab3c/); ethereum `0x2d7d5b...9b950c`; ethereum `0xfeb770...5cf69b` | ⚠️ Unaudited |
| mEVUSD | unknown | ethereum | 2 deployments: ethereum [`0x548857...92785b`](./contracts/ethereum-1/0x548857309befb6fb6f20a9c5a56c9023d892785b/); ethereum `0x7d9bcf...c04b67` | ⚠️ Unaudited |
| MEvUsdCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x6f51d8...e83be6`](./contracts/ethereum-1/0x6f51d8af5be2cf3517b8d6cd07361be382e83be6/); ethereum `0xb94ec9...5b2ebe` | ⚠️ Unaudited |
| MEvUsdDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x06e727...75cf26`](./contracts/ethereum-1/0x06e7279e596af4804a0fcc78ece24059da75cf26/); ethereum `0x508fe9...f40fc9` | ⚠️ Unaudited |
| MEvUsdDepositVault | core_logic | ethereum | 2 deployments: ethereum [`0x545522...498c2a`](./contracts/ethereum-1/0x5455222ccdd32f85c1998f57dc6cf613b4498c2a/); ethereum `0x6a3996...30e40e` | ⚠️ Unaudited |
| MEvUsdRedemptionVaultWithSwapper | adapter | ethereum | 2 deployments: ethereum [`0x9c3743...ac446f`](./contracts/ethereum-1/0x9c3743582e8b2d7ccb5e08caf3c9c33780ac446f/); ethereum `0xfabb7e...d2c6f8` | ⚠️ Unaudited |
| mFARM | unknown | ethereum | 2 deployments: ethereum [`0xa19f6e...f5eca6`](./contracts/ethereum-1/0xa19f6e0df08a7917f2f8a33db66d0af31ff5eca6/); ethereum `0xe60066...68bf40` | ⚠️ Unaudited |
| MFarmCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x65df72...df039b`](./contracts/ethereum-1/0x65df7299a9010e399a38d6b7159d25239cdf039b/); ethereum `0x6ee5bc...be58ea` | ⚠️ Unaudited |
| MFarmDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x9f49b0...ff9524`](./contracts/ethereum-1/0x9f49b0980b141b539e2a94ec0864faf699ff9524/); ethereum `0xbfb6b9...20d5f8` | ⚠️ Unaudited |
| MFarmDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0x313c76...b78164`](./contracts/ethereum-1/0x313c76ecd990b728681f29464978d5637cb78164/); ethereum `0x349c2d...fc4e52`; ethereum `0x695fb3...850c81` | ⚠️ Unaudited |
| MFarmRedemptionVaultWithSwapper | adapter | ethereum | 2 deployments: ethereum [`0xb73d1e...411e89`](./contracts/ethereum-1/0xb73d1e0aedcd5bbeca0119e88288204101411e89/); ethereum `0xf4f042...a7e600` | ⚠️ Unaudited |
| mFONE | unknown | ethereum | 2 deployments: ethereum [`0x238a70...e466ba`](./contracts/ethereum-1/0x238a700ed6165261cf8b2e544ba797bc11e466ba/); ethereum `0x32fb95...6406e2` | ⚠️ Unaudited |
| MFOneCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x8d51db...50e68c`](./contracts/ethereum-1/0x8d51dbc85ceef637c97d02bdaabb5e274850e68c/); ethereum `0xd1660d...597e91` | ⚠️ Unaudited |
| MFOneDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x0c3291...59fbfd`](./contracts/ethereum-1/0x0c3291e8fd4cc415b62ca3789907a4eee759fbfd/); ethereum `0xcf4e49...9c1c00` | ⚠️ Unaudited |
| MFOneDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0x414384...a0c3de`](./contracts/ethereum-1/0x41438435c20b1c2f1fca702d387889f346a0c3de/); ethereum `0x6abbe3...3eef82`; ethereum `0xe802e0...80be50` | ⚠️ Unaudited |
| MFOneRedemptionVaultWithSwapper | adapter | ethereum | 3 deployments: ethereum [`0x0d98b6...ff6c47`](./contracts/ethereum-1/0x0d98b671af8c51f6ffa94248b90df1b11dff6c47/); ethereum `0x44b044...5fd19c`; ethereum `0x807f2c...4a9801` | ⚠️ Unaudited |
| mHYPER | unknown | ethereum | 6 deployments: ethereum [`0x10e235...1080fb`](./contracts/ethereum-1/0x10e2352da4790e547095f06fa3ef3093881080fb/); ethereum `0x9903e9...c781ae`; ethereum `0x9b5528...1191b9`; ethereum `0xa8bb03...d9bbfb`; ethereum `0xe43861...fb0689`; ethereum `0xf406f9...dfcb01` | ⚠️ Unaudited |
| mHyperBTC | unknown | ethereum | 2 deployments: ethereum [`0xc8495e...783085`](./contracts/ethereum-1/0xc8495eaff71d3a563b906295fcf2f685b1783085/); ethereum `0xe00560...59b588` | ⚠️ Unaudited |
| MHyperBtcCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x0c7a74...d085de`](./contracts/ethereum-1/0x0c7a74f9e391f66cd1ad9d934ad897b2cdd085de/); ethereum `0x335992...82517c` | ⚠️ Unaudited |
| MHyperBtcDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x4f6e58...959393`](./contracts/ethereum-1/0x4f6e5852f89c5a94119b039b355ad7043e959393/); ethereum `0xb75b82...043157` | ⚠️ Unaudited |
| MHyperBtcDepositVault | core_logic | ethereum | 2 deployments: ethereum [`0xbccac5...895a52`](./contracts/ethereum-1/0xbccac5cbf0691da65e48810d316a1e5b9f895a52/); ethereum `0xed22a9...3fe65e` | ⚠️ Unaudited |
| MHyperBtcRedemptionVaultWithSwapper | adapter | ethereum | 2 deployments: ethereum [`0x16d4f9...7cdb67`](./contracts/ethereum-1/0x16d4f955b0aa1b1570fe3e9bb2f8c19c407cdb67/); ethereum `0x78f9fb...142610` | ⚠️ Unaudited |
| MHyperCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x43881b...005f68`](./contracts/ethereum-1/0x43881b05c3be68b2d33eb70addf9f666c5005f68/); ethereum `0xfca6c2...7f707f` | ⚠️ Unaudited |
| MHyperDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x92004d...6decde`](./contracts/ethereum-1/0x92004dcc5359ed67f287f32d12715a37916decde/); ethereum `0xe32403...05654a` | ⚠️ Unaudited |
| MHyperDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0xa62249...130e5e`](./contracts/ethereum-1/0xa62249abe86e75717ef9705f2fdb19b39c130e5e/); ethereum `0xba9fd2...f11024`; ethereum `0xd2b5f8...101c63` | ⚠️ Unaudited |
| mHyperETH | unknown | ethereum | 2 deployments: ethereum [`0x5a4286...a2e0c1`](./contracts/ethereum-1/0x5a42864b14c0c8241ef5ab62dae975b163a2e0c1/); ethereum `0xf3c24b...7fe04b` | ⚠️ Unaudited |
| MHyperEthCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x2c6808...2e9850`](./contracts/ethereum-1/0x2c68087e994d24d454ba6c96f7a3152f6a2e9850/); ethereum `0x5c81ee...08a0fd` | ⚠️ Unaudited |
| MHyperEthDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x2f4e7d...c74834`](./contracts/ethereum-1/0x2f4e7d11e54f34f5d02dade106a690efdbc74834/); ethereum `0xbd560c...021ea2` | ⚠️ Unaudited |
| MHyperEthDepositVault | core_logic | ethereum | 2 deployments: ethereum [`0x57b3be...9ecdab`](./contracts/ethereum-1/0x57b3be350c777892611cedc93bcf8c099a9ecdab/); ethereum `0xad6ae6...5fc7f8` | ⚠️ Unaudited |
| MHyperEthRedemptionVaultWithSwapper | adapter | ethereum | 2 deployments: ethereum [`0x15f724...348c57`](./contracts/ethereum-1/0x15f724b35a75f0c28f352b952ea9d1b24e348c57/); ethereum `0x517d00...71c18b` | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | adapter | ethereum | 3 deployments: ethereum [`0x570c15...505e47`](./contracts/ethereum-1/0x570c15bc5faf98531a8b351d69e22e41e3505e47/); ethereum `0x6be2f5...366e98`; ethereum `0xf4b77b...33d6f3` | ⚠️ Unaudited |
| MidasAccessControl | governance | ethereum | 5 deployments: ethereum [`0x0312a9...19ac4b`](./contracts/ethereum-1/0x0312a9d1ff2372ddedcbb21e4b6389afc919ac4b/); ethereum `0x1b5717...11bc24`; ethereum `0x1c2757...be92b2`; ethereum `0xdd5a54...3960e2`; ethereum `0xefb2e2...7a4d9d` | ⚠️ Unaudited |
| MidasAllocator | operational_periphery | ethereum | 2 deployments: ethereum [`0x8d2339...7065b2`](./contracts/ethereum-1/0x8d23399cc87f2f83dc46d303326c634e4d7065b2/); ethereum `0xd72b0c...9659bb` | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | adapter | ethereum | 4 deployments: ethereum [`0x55b40c...2349c6`](./contracts/ethereum-1/0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6/); ethereum `0xa0df4e...d086c0`; ethereum `0xc76e61...1c04c5`; ethereum `0xe43d2d...eccad6` | ⚠️ Unaudited |
| MidasTimelockController | governance | ethereum | [`0xe3eee3...241852`](./contracts/ethereum-1/0xe3eee3e0d2398799c884a47fc40c029c8e241852/) | ⚠️ Unaudited |
| mLIQUIDITY | unknown | ethereum | 2 deployments: ethereum [`0x841eeb...24e29a`](./contracts/ethereum-1/0x841eeb3e2489b2282b0e14202dc8bd8f7624e29a/); ethereum `0xed5905...800104` | ⚠️ Unaudited |
| MLiquidityCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x4b805d...f5a522`](./contracts/ethereum-1/0x4b805d11aaa424f205b7bf7c39f5e3b5d8f5a522/); ethereum `0x745088...76c5af` | ⚠️ Unaudited |
| MLiquidityDataFeed | unknown | ethereum | 2 deployments: ethereum [`0xbf2a93...7e6e7c`](./contracts/ethereum-1/0xbf2a93b420225558a76fc9888c687c14977e6e7c/); ethereum `0xec4449...27adbe` | ⚠️ Unaudited |
| MLiquidityDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0x67e14d...aaefac`](./contracts/ethereum-1/0x67e14dd4f41955a1b10d4482345a1a4b06aaefac/); ethereum `0xaef69c...ffcdd7`; ethereum `0xf89feb...b27e3a` | ⚠️ Unaudited |
| mMEV | unknown | ethereum | 3 deployments: ethereum [`0x030b69...6a0bf3`](./contracts/ethereum-1/0x030b69280892c888670edcdcd8b69fd8026a0bf3/); ethereum `0x4fe7f6...e8080f`; ethereum `0xd194df...84ba24` | ⚠️ Unaudited |
| MMevCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x5f09af...e55d61`](./contracts/ethereum-1/0x5f09aff8b9b1f488b7d1bbad4d89648579e55d61/); ethereum `0xe9e48a...3db87f` | ⚠️ Unaudited |
| MMevDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x4ff00e...080d81`](./contracts/ethereum-1/0x4ff00e912c8f449c8a9fac6861b84e1b5c080d81/); ethereum `0x9bf00b...7ee359` | ⚠️ Unaudited |
| MMevDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0xac5c4d...50e5e5`](./contracts/ethereum-1/0xac5c4dcd870c835f8943e62ab33cdadba850e5e5/); ethereum `0xad2b15...12761e`; ethereum `0xe09273...74704f` | ⚠️ Unaudited |
| MMevRedemptionVaultWithSwapper | adapter | ethereum | 4 deployments: ethereum [`0x482d1e...0d00cb`](./contracts/ethereum-1/0x482d1e94a26bbaef59fc5d038c41b679120d00cb/); ethereum `0xac14a1...34184d`; ethereum `0xe09823...603861`; ethereum `0xfb136e...b67712` | ⚠️ Unaudited |
| mPortofino | unknown | ethereum | 3 deployments: ethereum [`0x636cdf...d060b9`](./contracts/ethereum-1/0x636cdf65a5bb03c25c63ceb20e971f101ed060b9/); ethereum `0x9004b9...d6cd22`; ethereum `0xdadd82...3e87ea` | ⚠️ Unaudited |
| MPortofinoCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x88956c...264403`](./contracts/ethereum-1/0x88956c00a5fa046c823eaed747f21a95d2264403/); ethereum `0xeec3e8...4be21b` | ⚠️ Unaudited |
| MPortofinoDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x21f3bc...0ea749`](./contracts/ethereum-1/0x21f3bcfa912f674c2af3bed5bf8e47a3f40ea749/); ethereum `0xd91546...48719b` | ⚠️ Unaudited |
| MPortofinoDepositVault | core_logic | ethereum | 2 deployments: ethereum [`0x9a5cf6...2d8387`](./contracts/ethereum-1/0x9a5cf6c0a1cee5226e31e3d0a81f2ca2462d8387/); ethereum `0xc5efb1...d344a8` | ⚠️ Unaudited |
| MPortofinoRedemptionVaultWithSwapper | adapter | ethereum | 2 deployments: ethereum [`0xa9111d...0b0c31`](./contracts/ethereum-1/0xa9111ddd2cf8e2727ab08e6f2adb9c53480b0c31/); ethereum `0xb02cc7...346cca` | ⚠️ Unaudited |
| mRE7 | unknown | ethereum | [`0x87c905...afb0cf`](./contracts/ethereum-1/0x87c9053c819bb28e0d73d33059e1b3da80afb0cf/) | ⚠️ Unaudited |
| mRE7BTC | unknown | ethereum | 2 deployments: ethereum [`0x9fb442...9f661a`](./contracts/ethereum-1/0x9fb442d6b612a6dcd2acc67bb53771ef1d9f661a/); ethereum `0xe4b2e0...80aded` | ⚠️ Unaudited |
| MRe7BtcCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x091f97...af383b`](./contracts/ethereum-1/0x091f974e277a19485b9a713ac768850bc5af383b/); ethereum `0x9de073...eb8967` | ⚠️ Unaudited |
| MRe7BtcDataFeed | unknown | ethereum | 2 deployments: ethereum [`0xb5d648...74186d`](./contracts/ethereum-1/0xb5d6483c556bc6810b55b983315016fcb374186d/); ethereum `0xfb2804...0ef23e` | ⚠️ Unaudited |
| MRe7BtcDepositVault | core_logic | ethereum | 2 deployments: ethereum [`0x5e1549...0e47f6`](./contracts/ethereum-1/0x5e154946561aea4e750aac6dead23d37e00e47f6/); ethereum `0xeb6a96...e10148` | ⚠️ Unaudited |
| MRe7BtcRedemptionVaultWithSwapper | adapter | ethereum | 2 deployments: ethereum [`0x1d9953...875615`](./contracts/ethereum-1/0x1d9953c4e85e6d249520e8ff2b134e5ded875615/); ethereum `0x4fd4dd...4321b0` | ⚠️ Unaudited |
| MRe7CustomAggregatorFeed | unknown | ethereum | 3 deployments: ethereum [`0x0a2a51...722395`](./contracts/ethereum-1/0x0a2a51f2f206447de3e3a80fcf92240244722395/); ethereum `0x5da804...247409`; ethereum `0x997346...09cde9` | ⚠️ Unaudited |
| MRe7DataFeed | unknown | ethereum | 2 deployments: ethereum [`0x7e8c63...34da93`](./contracts/ethereum-1/0x7e8c632ab231479886af1bc02b9d646e4634da93/); ethereum `0xc63b92...c11bbe` | ⚠️ Unaudited |
| MRe7DepositVault | core_logic | ethereum | 3 deployments: ethereum [`0x53c764...ed62d8`](./contracts/ethereum-1/0x53c764c938385bc439dc1596413e1557deed62d8/); ethereum `0xce0a29...924ac7`; ethereum `0xf80332...8a7327` | ⚠️ Unaudited |
| MRe7RedemptionVaultWithSwapper | adapter | ethereum | 3 deployments: ethereum [`0x5356b8...565234`](./contracts/ethereum-1/0x5356b8e06589de894d86b24f4079c629e8565234/); ethereum `0x743c08...abffa8`; ethereum `0x7b7982...578683` | ⚠️ Unaudited |
| mSL | unknown | ethereum | 2 deployments: ethereum [`0x76cc16...3f7bbd`](./contracts/ethereum-1/0x76cc16608aa7cd32631bb151801bb095313f7bbd/); ethereum `0x96325d...30f922` | ⚠️ Unaudited |
| MSlCustomAggregatorFeed | unknown | ethereum | 3 deployments: ethereum [`0x12570b...acfc68`](./contracts/ethereum-1/0x12570b84b633629b1db532fd3420f34a30acfc68/); ethereum `0x8d7ee2...be24b1`; ethereum `0xac76ef...7fadfd` | ⚠️ Unaudited |
| MSlDataFeed | unknown | ethereum | 2 deployments: ethereum [`0xbdc030...74f15c`](./contracts/ethereum-1/0xbdc0304210972be75fd2247838bff2b64474f15c/); ethereum `0xf54c49...cf40dc` | ⚠️ Unaudited |
| MSlDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0x521f61...6ccb2f`](./contracts/ethereum-1/0x521f6153b7c5080f550517d9b76d9c08766ccb2f/); ethereum `0xb9e65b...fb6bc4`; ethereum `0xd0bbc3...355c95` | ⚠️ Unaudited |
| MSlRedemptionVaultWithSwapper | adapter | ethereum | 3 deployments: ethereum [`0x0d1c52...1762fc`](./contracts/ethereum-1/0x0d1c52c7cd203e4f84d084a33a062c61d51762fc/); ethereum `0x207bd5...f04f78`; ethereum `0x8bee38...d57c22` | ⚠️ Unaudited |
| msyrupUSD | unknown | ethereum | 2 deployments: ethereum [`0x202266...683464`](./contracts/ethereum-1/0x20226607b4fa64228abf3072ce561d6257683464/); ethereum `0xf62a22...eee2df` | ⚠️ Unaudited |
| MSyrupUsdCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x41c607...efa663`](./contracts/ethereum-1/0x41c60765fa36109b19b21719f4593f19ddefa663/); ethereum `0x8cc8fe...34f35d` | ⚠️ Unaudited |
| MSyrupUsdDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x81c097...7f6f42`](./contracts/ethereum-1/0x81c097e86842051b1ed4299a9e4d213cb07f6f42/); ethereum `0x9df595...92612b` | ⚠️ Unaudited |
| MSyrupUsdDepositVault | core_logic | ethereum | 2 deployments: ethereum [`0x307be9...057a8b`](./contracts/ethereum-1/0x307be9748111571739b92a5dda10191f29057a8b/); ethereum `0x5ae23d...77d1b7` | ⚠️ Unaudited |
| msyrupUSDp | unknown | ethereum | 2 deployments: ethereum [`0x2530e3...567ea5`](./contracts/ethereum-1/0x2530e3d2b30738b2e8d0dd3eb9b17946b0567ea5/); ethereum `0x2fe058...7d8e50` | ⚠️ Unaudited |
| MSyrupUsdpCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x1e2165...7a3fc4`](./contracts/ethereum-1/0x1e2165801d84865587252155fb4580381f7a3fc4/); ethereum `0x337d91...895241` | ⚠️ Unaudited |
| MSyrupUsdpDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x783339...33cfb6`](./contracts/ethereum-1/0x7833397da276d6b588e76466c14c82b2d733cfb6/); ethereum `0xdecc61...f0052a` | ⚠️ Unaudited |
| MSyrupUsdpRedemptionVaultWithSwapper | adapter | ethereum | 2 deployments: ethereum [`0x5113bf...e1cc91`](./contracts/ethereum-1/0x5113bf83400d184cde30af154117e29351e1cc91/); ethereum `0x71efa7...679c44` | ⚠️ Unaudited |
| MSyrupUsdRedemptionVaultWithSwapper | adapter | ethereum | 2 deployments: ethereum [`0x9f7dd5...e2f972`](./contracts/ethereum-1/0x9f7dd5462c183b6577858e16a13a4d864ce2f972/); ethereum `0xc78fc5...c53767` | ⚠️ Unaudited |
| msyrupUSDT | token | ethereum | 2 deployments: ethereum [`0x711077...03ce75`](./contracts/ethereum-1/0x711077ddc66b18e6dcb0a5cb3743f3938a03ce75/); ethereum `0x9a4b20...d9919f` | ⚠️ Unaudited |
| MSyrupUsdtCustomAggregatorFeed | token | ethereum | 2 deployments: ethereum [`0x9e9dbc...e4d70c`](./contracts/ethereum-1/0x9e9dbcbcc8c976face7481288bbb9ab285e4d70c/); ethereum `0xa8010a...b502d2` | ⚠️ Unaudited |
| MSyrupUsdtDataFeed | token | ethereum | 2 deployments: ethereum [`0x5ca035...cd94bc`](./contracts/ethereum-1/0x5ca035326aa66b5db40fb6d3693772f073cd94bc/); ethereum `0x9e1366...02b0cb` | ⚠️ Unaudited |
| MSyrupUsdtDepositVault | core_logic | ethereum | 2 deployments: ethereum [`0x7a4c56...41b3b8`](./contracts/ethereum-1/0x7a4c56b1baaad0ff5d248892e137d415da41b3b8/); ethereum `0x94a404...89f57a` | ⚠️ Unaudited |
| MSyrupUsdtRedemptionVaultWithSwapper | adapter | ethereum | 2 deployments: ethereum [`0x1314fb...1d2084`](./contracts/ethereum-1/0x1314fb72f67681e7617e59bcf92002a9311d2084/); ethereum `0xf9ac90...d4bd4b` | ⚠️ Unaudited |
| mTBILL | unknown | ethereum | 5 deployments: ethereum [`0xa7ab67...25897c`](./contracts/ethereum-1/0xa7ab67aa19f6b387ba12fcedb6d1447e0c25897c/); ethereum `0xb0ea26...71d126`; ethereum `0xd4998c...5c8455`; ethereum `0xdd629e...54e438`; ethereum `0xefed40...39b084` | ⚠️ Unaudited |
| MTBillCustomAggregatorFeed | unknown | ethereum | 3 deployments: ethereum [`0x056339...6b2e5b`](./contracts/ethereum-1/0x056339c044055819e8db84e71f5f2e1f536b2e5b/); ethereum `0x0d84ec...4efc1b`; ethereum `0x77e7d3...f9c32c` | ⚠️ Unaudited |
| MTBillDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x2e0357...490ada`](./contracts/ethereum-1/0x2e0357e38fc7fae9c29050aef3744d4055490ada/); ethereum `0xfcee97...734a2b` | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | [`0x7165c2...cd83d7`](./contracts/ethereum-1/0x7165c2257ab6b6285389d8459938786c0ccd83d7/) | ⚠️ Unaudited |
| mWildUSD | unknown | ethereum | 2 deployments: ethereum [`0x605a84...18db0a`](./contracts/ethereum-1/0x605a84861ee603e385b01b9048bea6a86118db0a/); ethereum `0x78b67f...05163c` | ⚠️ Unaudited |
| MWildUsdCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x19623f...77851e`](./contracts/ethereum-1/0x19623f6af10bcd83b01c787e16219a738877851e/); ethereum `0xb70ece...aae6a6` | ⚠️ Unaudited |
| MWildUsdDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x8d8f82...b2ccd0`](./contracts/ethereum-1/0x8d8f821e72382e433f1bcf079c0365f976b2ccd0/); ethereum `0xe604a4...e99aa1` | ⚠️ Unaudited |
| MWildUsdDepositVault | core_logic | ethereum | 2 deployments: ethereum [`0xa70009...e07b41`](./contracts/ethereum-1/0xa70009c23dbf1222d66b0ca847b4c33ae2e07b41/); ethereum `0xd252eb...ced7c2` | ⚠️ Unaudited |
| MWildUsdRedemptionVaultWithSwapper | adapter | ethereum | 2 deployments: ethereum [`0x2f98a1...8091d6`](./contracts/ethereum-1/0x2f98a13635f6cec0cc45bc1e43969c71d68091d6/); ethereum `0x96927b...d84b51` | ⚠️ Unaudited |
| obeatUSD | unknown | ethereum | 2 deployments: ethereum [`0x2ce151...574b43`](./contracts/ethereum-1/0x2ce15146958bf305dadebbbf31f2d5a4f2574b43/); ethereum `0x9e9f92...a853cf` | ⚠️ Unaudited |
| ObeatUsdLzElevatedMinterBurner | unknown | ethereum | 2 deployments: ethereum [`0x07cf28...1ff579`](./contracts/ethereum-1/0x07cf28d71a38c12e258922d9857ac415ae1ff579/); ethereum `0x42d2b0...653f3b` | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | 17 deployments: ethereum [`0x0aecdf...6f4802`](./contracts/ethereum-1/0x0aecdf39d9d02833a055bf1eca518a83f66f4802/); ethereum `0x1dd188...18dc18`; ethereum `0x215226...234f53`; ethereum `0x2adfb8...efa2a2`; ethereum `0x440040...e3498e`; ethereum `0x553f9c...8ee089`; ethereum `0x5eff78...2e7887`; ethereum `0x66b857...8d9005`; ethereum `0x690f30...fb7687`; ethereum `0x74e0a5...130888`; ethereum `0x84568b...24b6b9`; ethereum `0x849f28...691fc4`; ethereum `0x9e3fd8...076f4e`; ethereum `0xac6f22...d340be`; ethereum `0xc87fce...a12470`; ethereum `0xe2ad97...fe48ba`; ethereum `0xf526ed...3c0e9d` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0xbf25b5...600aac`](./contracts/ethereum-1/0xbf25b58cb8dfad688f7bcb2b87d71c23a6600aac/) | ⚠️ Unaudited |
| RedemptionVault | core_logic | ethereum | 5 deployments: ethereum [`0x2f1372...14975f`](./contracts/ethereum-1/0x2f1372244cedcaf8ee1759d2f02435628f14975f/); ethereum `0x57c0fb...702295`; ethereum `0x8978e3...ae1470`; ethereum `0xe19980...8e2288`; ethereum `0xf6e51d...6d4517` | ⚠️ Unaudited |
| RedemptionVaultWIthBUIDL | core_logic | ethereum | [`0xe123eb...ccc7e9`](./contracts/ethereum-1/0xe123ebc5697151890dddf05943de393ceaccc7e9/) | ⚠️ Unaudited |
| RedemptionVaultWithSwapper | adapter | ethereum | 2 deployments: ethereum [`0x283cbe...e32f39`](./contracts/ethereum-1/0x283cbedecb447dbe114b4268f79ba8b046e32f39/); ethereum `0x91e5f5...ef65cc` | ⚠️ Unaudited |
| RsEthAdapter | adapter | ethereum | [`0xd52ba0...baab2a`](./contracts/ethereum-1/0xd52ba087e30928886baba15b1584d4ac9abaab2a/) | ⚠️ Unaudited |
| StakedUSDeAdapter | adapter | ethereum | [`0xce2326...bd0cea`](./contracts/ethereum-1/0xce2326260c168525a3e905391e8bfee00ebd0cea/) | ⚠️ Unaudited |
| stUSD | unknown | ethereum | 2 deployments: ethereum [`0x6d62d3...4823b6`](./contracts/ethereum-1/0x6d62d3c3c8f9912890788b50299bf4d2c64823b6/); ethereum `0xa14fda...37ba3e` | ⚠️ Unaudited |
| SyrupAdapter | adapter | ethereum | 3 deployments: ethereum [`0xad298d...ac8493`](./contracts/ethereum-1/0xad298d3ec4af69af52701a539d3bd14873ac8493/); ethereum `0xb1e60a...237850`; ethereum `0xd07107...368f5f` | ⚠️ Unaudited |
| SyrupUSDCAdapter | adapter | ethereum | [`0xa869cb...198b67`](./contracts/ethereum-1/0xa869cbc273daae91d6109ee5bb958ac6b7198b67/) | ⚠️ Unaudited |
| TACmBTC | unknown | ethereum | 2 deployments: ethereum [`0x307267...589fd0`](./contracts/ethereum-1/0x307267989a7bec3a57fd7fd96017c49803589fd0/); ethereum `0x73117e...5044b9` | ⚠️ Unaudited |
| TACmBtcDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0x570f37...5bbc08`](./contracts/ethereum-1/0x570f37365fffff0a3884892b7363c0a8615bbc08/); ethereum `0x798910...48a6fb`; ethereum `0xd1c5cb...cbb4f4` | ⚠️ Unaudited |
| TACmBtcRedemptionVault | core_logic | ethereum | 3 deployments: ethereum [`0x6808e4...9ccdf4`](./contracts/ethereum-1/0x6808e4d8add893d0227690f435e1ff734d9ccdf4/); ethereum `0x98bfe1...857609`; ethereum `0xa7c6c1...9a9a96` | ⚠️ Unaudited |
| TACmEDGE | unknown | ethereum | 2 deployments: ethereum [`0x7c5b87...7aa26c`](./contracts/ethereum-1/0x7c5b87e3bde1c70ad11d546a513e305bc07aa26c/); ethereum `0xaa7bee...e7d567` | ⚠️ Unaudited |
| TACmEdgeDepositVault | core_logic | ethereum | 2 deployments: ethereum [`0x8f382a...ee1386`](./contracts/ethereum-1/0x8f382ae7bbdbecda835d26ce3ba64010eaee1386/); ethereum `0x9f8136...cf9635` | ⚠️ Unaudited |
| TACmEdgeRedemptionVault | core_logic | ethereum | 2 deployments: ethereum [`0x375af4...ae36d8`](./contracts/ethereum-1/0x375af40dd6772bb9ad216ad7cbe4d8f91eae36d8/); ethereum `0xa85b5d...1fa458` | ⚠️ Unaudited |
| TACmMEV | unknown | ethereum | 2 deployments: ethereum [`0x1d3147...910202`](./contracts/ethereum-1/0x1d3147d11c88f5008db19cb5dd945ae682910202/); ethereum `0xc2c265...083b46` | ⚠️ Unaudited |
| TACmMevDepositVault | core_logic | ethereum | 2 deployments: ethereum [`0x18f7f9...ee8648`](./contracts/ethereum-1/0x18f7f9f20c495a7f4868ba807c64a5d0a9ee8648/); ethereum `0xc35b2a...c86557` | ⚠️ Unaudited |
| TACmMevRedemptionVault | core_logic | ethereum | 2 deployments: ethereum [`0x1a57ab...e128cc`](./contracts/ethereum-1/0x1a57aba59d50b192f8440e205e3b8b885be128cc/); ethereum `0xdce7eb...b0f504` | ⚠️ Unaudited |
| tBTC | unknown | ethereum | [`0x6b6b87...0857e4`](./contracts/ethereum-1/0x6b6b870c7f449266a9f40f94eca5a6ff9b0857e4/) | ⚠️ Unaudited |
| TBtcCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x65c4e0...0f15ca`](./contracts/ethereum-1/0x65c4e04cc26aadd1ec95c54cd6dba61a270f15ca/); ethereum `0xb164b2...22ca30` | ⚠️ Unaudited |
| TBtcDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x5a096a...90bf1d`](./contracts/ethereum-1/0x5a096ac89eaef68930352a15da49e4eb8590bf1d/); ethereum `0xf7c450...589b3e` | ⚠️ Unaudited |
| TBtcDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0xafcc1c...a352b5`](./contracts/ethereum-1/0xafcc1c556ee0436c10a3054b3d615abb93a352b5/); ethereum `0xce4117...e01afc`; ethereum `0xe4b767...a46fd1` | ⚠️ Unaudited |
| TBtcRedemptionVaultWithSwapper | adapter | ethereum | 3 deployments: ethereum [`0x2db1ec...fe0085`](./contracts/ethereum-1/0x2db1ec186acdeaf7d0fc78bffe335560b0fe0085/); ethereum `0x30d542...d1b3d1`; ethereum `0x438359...47df0a` | ⚠️ Unaudited |
| tETH | unknown | ethereum | 2 deployments: ethereum [`0x72cca9...761e96`](./contracts/ethereum-1/0x72cca9794018c10ce47af3fc8d47e167d0761e96/); ethereum `0xa1150c...a5adab` | ⚠️ Unaudited |
| TEthCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x42e82b...1215b5`](./contracts/ethereum-1/0x42e82b2ee52cdc922cfed82bfcef90ada31215b5/); ethereum `0xea6a49...cc995e` | ⚠️ Unaudited |
| TEthDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x5696b6...e966af`](./contracts/ethereum-1/0x5696b69be96e936e8e489070eb3d4f0e1fe966af/); ethereum `0xc434e7...69fc87` | ⚠️ Unaudited |
| TEthDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0x46eab5...d09e78`](./contracts/ethereum-1/0x46eab5259e1a2f18cbbfeeaa093130a456d09e78/); ethereum `0xc93bb8...a0181b`; ethereum `0xf4376c...718324` | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | adapter | ethereum | 3 deployments: ethereum [`0xc32652...750ebf`](./contracts/ethereum-1/0xc32652ab236f32482f5018b027c8b54c13750ebf/); ethereum `0xe04267...34ba0b`; ethereum `0xe54778...1d9c05` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | [`0x27e6f2...1b0ea7`](./contracts/ethereum-1/0x27e6f273941c5536154c1a6c20c97db7dc1b0ea7/) | ⚠️ Unaudited |
| tUSDe | unknown | ethereum | 2 deployments: ethereum [`0xa01227...dea417`](./contracts/ethereum-1/0xa01227a26a7710bc75071286539e47adb6dea417/); ethereum `0xe5a76d...3af6c3` | ⚠️ Unaudited |
| TUsdeCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x6f0c37...01d526`](./contracts/ethereum-1/0x6f0c371f808996187729ed1bee13ace2e901d526/); ethereum `0xa384e7...3893db` | ⚠️ Unaudited |
| TUsdeDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x507f40...a029d0`](./contracts/ethereum-1/0x507f409ba7e5ef489d5c0e3c4568b24985a029d0/); ethereum `0x8335d9...2ece2d` | ⚠️ Unaudited |
| TUsdeDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0x5ad2e3...8d2dfa`](./contracts/ethereum-1/0x5ad2e3d65f8ecdc36eeba38bae3cc6ff258d2dfa/); ethereum `0x9b5908...b39198`; ethereum `0xbfd184...071429` | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | adapter | ethereum | 3 deployments: ethereum [`0x1ac3e6...77a603`](./contracts/ethereum-1/0x1ac3e68ea5e9dbc592246e2d0d57913aff77a603/); ethereum `0xa3322c...2288f2`; ethereum `0xfaae52...ace18c` | ⚠️ Unaudited |
| WithdrawalQueue | operational_periphery | ethereum | 2 deployments: ethereum [`0x9bc724...b031d6`](./contracts/ethereum-1/0x9bc7249416ecffb75250afff374bb4b93fb031d6/); ethereum `0xe7b8c1...bb5d06` | ⚠️ Unaudited |
| WrappedEEthAdapter | adapter | ethereum | 3 deployments: ethereum [`0x0c3f5f...1fcb69`](./contracts/ethereum-1/0x0c3f5fafb87318c0deaebff096aba019501fcb69/); ethereum `0x6e3b7f...ae8522`; ethereum `0xb79301...534bcc` | ⚠️ Unaudited |
| WstEthAdapter | adapter | ethereum | [`0xa74f99...dbb9d7`](./contracts/ethereum-1/0xa74f994672f232a30067da820f0e54881edbb9d7/) | ⚠️ Unaudited |
| zeroGBTCV | unknown | ethereum | 2 deployments: ethereum [`0x48e284...bb49c4`](./contracts/ethereum-1/0x48e284d0729eb1925066307072758d95dbbb49c4/); ethereum `0x5940c6...3fede4` | ⚠️ Unaudited |
| ZeroGBtcvCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x0f2115...cb9e9a`](./contracts/ethereum-1/0x0f211552e0d7acb267a9eb98b80ee00f47cb9e9a/); ethereum `0x8c7400...c047d2` | ⚠️ Unaudited |
| ZeroGBtcvDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x39f050...341455`](./contracts/ethereum-1/0x39f0507060c12bb88cb68a496544011d2f341455/); ethereum `0x6bffda...7e5fa0` | ⚠️ Unaudited |
| ZeroGBtcvDepositVault | core_logic | ethereum | 2 deployments: ethereum [`0x2ddc91...8e91c6`](./contracts/ethereum-1/0x2ddc913e4c7674a7e42c55db48a92c47158e91c6/); ethereum `0x73ad6a...7e8528` | ⚠️ Unaudited |
| ZeroGBtcvRedemptionVaultWithSwapper | adapter | ethereum | 2 deployments: ethereum [`0x649f86...986aeb`](./contracts/ethereum-1/0x649f8698068ad143a7e18ba9cb0be112d5986aeb/); ethereum `0xffc671...c2361f` | ⚠️ Unaudited |
| zeroGETHV | unknown | ethereum | 2 deployments: ethereum [`0x513bd4...1aaf9a`](./contracts/ethereum-1/0x513bd45be7643fe6c30c41cd4b327e8e341aaf9a/); ethereum `0xfee636...ee6950` | ⚠️ Unaudited |
| ZeroGEthvCustomAggregatorFeed | unknown | ethereum | 3 deployments: ethereum [`0x03fda2...f26ec3`](./contracts/ethereum-1/0x03fda274c303b128eba9e00bf555a3f4f4f26ec3/); ethereum `0xa7ea8d...7d8606`; ethereum `0xa96ee5...75331a` | ⚠️ Unaudited |
| ZeroGEthvDataFeed | unknown | ethereum | 2 deployments: ethereum [`0xac79fe...deb0fe`](./contracts/ethereum-1/0xac79fed395c2238c4fa13084ee440e19e4deb0fe/); ethereum `0xc18091...b8947b` | ⚠️ Unaudited |
| ZeroGEthvDepositVault | core_logic | ethereum | 3 deployments: ethereum [`0x01feb0...e6afcc`](./contracts/ethereum-1/0x01feb0bba21552385de157174f32d97bc0e6afcc/); ethereum `0x3d09a1...f45b04`; ethereum `0xaa192f...196deb` | ⚠️ Unaudited |
| ZeroGEthvRedemptionVaultWithSwapper | adapter | ethereum | 2 deployments: ethereum [`0x364fb0...e049aa`](./contracts/ethereum-1/0x364fb05060e7562b0c6379b5bd3371c412e049aa/); ethereum `0xf0c91b...2008cf` | ⚠️ Unaudited |
| zeroGUSDV | unknown | ethereum | 2 deployments: ethereum [`0x733ace...5fa347`](./contracts/ethereum-1/0x733acea2a9193a249fdb58ede4ea3c8ddc5fa347/); ethereum `0x766255...b6a810` | ⚠️ Unaudited |
| ZeroGUsdvCustomAggregatorFeed | unknown | ethereum | 2 deployments: ethereum [`0x8cf944...442aab`](./contracts/ethereum-1/0x8cf94465f8db8a273673dfe950bd1c9e34442aab/); ethereum `0xb5721b...a9b10c` | ⚠️ Unaudited |
| ZeroGUsdvDataFeed | unknown | ethereum | 2 deployments: ethereum [`0x091074...080e8a`](./contracts/ethereum-1/0x091074f37e8c72ddb8720afae77c44a855080e8a/); ethereum `0x9f819f...df3990` | ⚠️ Unaudited |
| ZeroGUsdvDepositVault | core_logic | ethereum | 2 deployments: ethereum [`0x34031e...dfd0dd`](./contracts/ethereum-1/0x34031e751da2ab19009d8f7eb268face2bdfd0dd/); ethereum `0xc665f0...b9a0b4` | ⚠️ Unaudited |
| ZeroGUsdvRedemptionVaultWithSwapper | adapter | ethereum | 2 deployments: ethereum [`0x37769a...7af6ae`](./contracts/ethereum-1/0x37769af173ea65dfc2880179940d5566817af6ae/); ethereum `0x54e5b3...b3d871` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x002006...71e516` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x06591a...d172d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x157fd9...7750db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2cedea...f22db5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b02e8...0316cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3befd6...f164b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x69e7bf...309d36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x73e324...d33d7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x94a6cc...37655f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb08e67...c0eec5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb1def0...7dc996` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbafcc4...e5a1fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd3c16f...277185` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Read Report](https://drive.google.com/file/d/1ld8VgCkCMxBm65MuAcI8AFjjyAoYTBf6/view) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Read Report](https://drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Read Report](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | 1 | high |
| [Read Report](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf) | yAudit | Audit | 2024-08 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5e5aab...634c9e`](./contracts/ethereum-1/0x5e5aab1aad75853ab8114264c3bf3427b0634c9e/) | MLiquidityRedemptionVault | core_logic | $3.01 | Verified native implementation with $3.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x489a79...40d701`](./contracts/ethereum-1/0x489a797714708cf088d158714a376d8ff740d701/) | RedemptionVaultWithUSTB | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a6092...587ae0`](./contracts/ethereum-1/0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0/) | AcreAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b0fdf...fe701e`](./contracts/ethereum-1/0x8b0fdf4f5c6036b3c8b8b451680ce87b0ffe701e/) | AcreBtcCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c727b...4bb837`](./contracts/ethereum-1/0x4c727b81eb776e2614c72430e306cefd614bb837/) | AcreBtcDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b90c1...ca2b77`](./contracts/ethereum-1/0x7b90c10c4a5848eb687b7315456da886faca2b77/) | BitcoinDepositorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x438630...95dc99`](./contracts/ethereum-1/0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99/) | CustomAggregatorV3CompatibleFeedDiscounted | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01b16e...18f003`](./contracts/ethereum-1/0x01b16ea685735acabe519d682a08acade018f003/) | DataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e0eb6...d80847`](./contracts/ethereum-1/0x0e0eb6cdad90174f1db606ec186ddd0b5ed80847/) | DepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4089dc...0cbe27`](./contracts/ethereum-1/0x4089dc8b6637218f13465d28950a82a7e90cbe27/) | eUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48599a...c83459`](./contracts/ethereum-1/0x48599ab08115cdf5731a7d8e5da1ac71d3c83459/) | hypeBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x910cde...4a6f4c`](./contracts/ethereum-1/0x910cde06dfdcb06540744683812b8e2eb04a6f4c/) | HypeBtcCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x389035...bbcac4`](./contracts/ethereum-1/0x389035180efd4ee704f6e1b6a11e8889a1bbcac4/) | HypeBtcDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x140e71...1ff8ab`](./contracts/ethereum-1/0x140e71cd72d7ab5735fe8a73028bbe71821ff8ab/) | hypeETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ed03d...fcd463`](./contracts/ethereum-1/0x9ed03d76c8e826c6c02eb2e86c38a0d89afcd463/) | HypeEthDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x109e2a...f6867c`](./contracts/ethereum-1/0x109e2a83502edf977fb035929a51414e93f6867c/) | HypeEthDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d874a...7f3a9e`](./contracts/ethereum-1/0x8d874a929ce6f5c21ab00f1677ccf43fbb7f3a9e/) | HypeUsdDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33ed48...3c6fa9`](./contracts/ethereum-1/0x33ed485dcf400e9354173aebf6de37d8c03c6fa9/) | HypeUsdRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x334b32...3e3d42`](./contracts/ethereum-1/0x334b32f6298167d9efdc0f7affe447dba53e3d42/) | JIV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x540f33...5d57ff`](./contracts/ethereum-1/0x540f331ebc800b68d4972a01d57b2e1fe45d57ff/) | JivCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x562bb5...420c55`](./contracts/ethereum-1/0x562bb5014793e8d2df2b493a947fbd522d420c55/) | MApolloCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d371c...e4999c`](./contracts/ethereum-1/0x4d371cc63fb8efd48aff59c5a0c064863ae4999c/) | MApolloDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54d478...d439d0`](./contracts/ethereum-1/0x54d4783f47889c73861152f027a1aedf75d439d0/) | MBasisCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b904f...fd49c7`](./contracts/ethereum-1/0x7b904f25a1e923cf1f1fc2e5798232132dfd49c7/) | MBtcCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f5b02...e887c9`](./contracts/ethereum-1/0x5f5b02328db057c84217003ad3519c541fe887c9/) | MBtcDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39c189...74fb87`](./contracts/ethereum-1/0x39c1891875afa8faae0ea8d9d3e769c46174fb87/) | mEDGE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x039150...c0ea2f`](./contracts/ethereum-1/0x0391508a7cf5cf30c233d08849813c2959c0ea2f/) | MEdgeCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x057a3a...56a7d1`](./contracts/ethereum-1/0x057a3a6b45d9bb351f0123de1b8e00fe5a56a7d1/) | MEdgeDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc904de...a73cc6`](./contracts/ethereum-1/0xc904de3f0a5ad6d85609ec37fc0f30edafa73cc6/) | MEdgeDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6142ad...cc3ad5`](./contracts/ethereum-1/0x6142ad2733c45d42ef3c625d4e33689406cc3ad5/) | MEdgeRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x781367...e629a4`](./contracts/ethereum-1/0x7813671f9c083b63fcbecbc182e9a0fc7de629a4/) | mevBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x931403...0a5b43`](./contracts/ethereum-1/0x931403532a4a30fee41bfe79f5b2159dcd0a5b43/) | MevBtcCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3549f6...f44b3c`](./contracts/ethereum-1/0x3549f6936dafb87f456dca3a061bc9225ff44b3c/) | MevBtcDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x265041...d6ab3c`](./contracts/ethereum-1/0x26504103cc0704de4fad7d6be6538f8b9ed6ab3c/) | MevBtcRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06e727...75cf26`](./contracts/ethereum-1/0x06e7279e596af4804a0fcc78ece24059da75cf26/) | MEvUsdDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x313c76...b78164`](./contracts/ethereum-1/0x313c76ecd990b728681f29464978d5637cb78164/) | MFarmDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb73d1e...411e89`](./contracts/ethereum-1/0xb73d1e0aedcd5bbeca0119e88288204101411e89/) | MFarmRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3291...59fbfd`](./contracts/ethereum-1/0x0c3291e8fd4cc415b62ca3789907a4eee759fbfd/) | MFOneDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d98b6...ff6c47`](./contracts/ethereum-1/0x0d98b671af8c51f6ffa94248b90df1b11dff6c47/) | MFOneRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10e235...1080fb`](./contracts/ethereum-1/0x10e2352da4790e547095f06fa3ef3093881080fb/) | mHYPER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c7a74...d085de`](./contracts/ethereum-1/0x0c7a74f9e391f66cd1ad9d934ad897b2cdd085de/) | MHyperBtcCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f6e58...959393`](./contracts/ethereum-1/0x4f6e5852f89c5a94119b039b355ad7043e959393/) | MHyperBtcDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbccac5...895a52`](./contracts/ethereum-1/0xbccac5cbf0691da65e48810d316a1e5b9f895a52/) | MHyperBtcDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa62249...130e5e`](./contracts/ethereum-1/0xa62249abe86e75717ef9705f2fdb19b39c130e5e/) | MHyperDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c6808...2e9850`](./contracts/ethereum-1/0x2c68087e994d24d454ba6c96f7a3152f6a2e9850/) | MHyperEthCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f4e7d...c74834`](./contracts/ethereum-1/0x2f4e7d11e54f34f5d02dade106a690efdbc74834/) | MHyperEthDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x570c15...505e47`](./contracts/ethereum-1/0x570c15bc5faf98531a8b351d69e22e41e3505e47/) | MHyperRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d2339...7065b2`](./contracts/ethereum-1/0x8d23399cc87f2f83dc46d303326c634e4d7065b2/) | MidasAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55b40c...2349c6`](./contracts/ethereum-1/0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6/) | MidasLzMintBurnOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3eee3...241852`](./contracts/ethereum-1/0xe3eee3e0d2398799c884a47fc40c029c8e241852/) | MidasTimelockController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b805d...f5a522`](./contracts/ethereum-1/0x4b805d11aaa424f205b7bf7c39f5e3b5d8f5a522/) | MLiquidityCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67e14d...aaefac`](./contracts/ethereum-1/0x67e14dd4f41955a1b10d4482345a1a4b06aaefac/) | MLiquidityDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ff00e...080d81`](./contracts/ethereum-1/0x4ff00e912c8f449c8a9fac6861b84e1b5c080d81/) | MMevDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac5c4d...50e5e5`](./contracts/ethereum-1/0xac5c4dcd870c835f8943e62ab33cdadba850e5e5/) | MMevDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x482d1e...0d00cb`](./contracts/ethereum-1/0x482d1e94a26bbaef59fc5d038c41b679120d00cb/) | MMevRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x636cdf...d060b9`](./contracts/ethereum-1/0x636cdf65a5bb03c25c63ceb20e971f101ed060b9/) | mPortofino | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9111d...0b0c31`](./contracts/ethereum-1/0xa9111ddd2cf8e2727ab08e6f2adb9c53480b0c31/) | MPortofinoRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x091f97...af383b`](./contracts/ethereum-1/0x091f974e277a19485b9a713ac768850bc5af383b/) | MRe7BtcCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d9953...875615`](./contracts/ethereum-1/0x1d9953c4e85e6d249520e8ff2b134e5ded875615/) | MRe7BtcRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53c764...ed62d8`](./contracts/ethereum-1/0x53c764c938385bc439dc1596413e1557deed62d8/) | MRe7DepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x521f61...6ccb2f`](./contracts/ethereum-1/0x521f6153b7c5080f550517d9b76d9c08766ccb2f/) | MSlDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d1c52...1762fc`](./contracts/ethereum-1/0x0d1c52c7cd203e4f84d084a33a062c61d51762fc/) | MSlRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x307be9...057a8b`](./contracts/ethereum-1/0x307be9748111571739b92a5dda10191f29057a8b/) | MSyrupUsdDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2530e3...567ea5`](./contracts/ethereum-1/0x2530e3d2b30738b2e8d0dd3eb9b17946b0567ea5/) | msyrupUSDp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e2165...7a3fc4`](./contracts/ethereum-1/0x1e2165801d84865587252155fb4580381f7a3fc4/) | MSyrupUsdpCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5113bf...e1cc91`](./contracts/ethereum-1/0x5113bf83400d184cde30af154117e29351e1cc91/) | MSyrupUsdpRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e9dbc...e4d70c`](./contracts/ethereum-1/0x9e9dbcbcc8c976face7481288bbb9ab285e4d70c/) | MSyrupUsdtCustomAggregatorFeed | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ca035...cd94bc`](./contracts/ethereum-1/0x5ca035326aa66b5db40fb6d3693772f073cd94bc/) | MSyrupUsdtDataFeed | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1314fb...1d2084`](./contracts/ethereum-1/0x1314fb72f67681e7617e59bcf92002a9311d2084/) | MSyrupUsdtRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7ab67...25897c`](./contracts/ethereum-1/0xa7ab67aa19f6b387ba12fcedb6d1447e0c25897c/) | mTBILL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e0357...490ada`](./contracts/ethereum-1/0x2e0357e38fc7fae9c29050aef3744d4055490ada/) | MTBillDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19623f...77851e`](./contracts/ethereum-1/0x19623f6af10bcd83b01c787e16219a738877851e/) | MWildUsdCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d8f82...b2ccd0`](./contracts/ethereum-1/0x8d8f821e72382e433f1bcf079c0365f976b2ccd0/) | MWildUsdDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa70009...e07b41`](./contracts/ethereum-1/0xa70009c23dbf1222d66b0ca847b4c33ae2e07b41/) | MWildUsdDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07cf28...1ff579`](./contracts/ethereum-1/0x07cf28d71a38c12e258922d9857ac415ae1ff579/) | ObeatUsdLzElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f1372...14975f`](./contracts/ethereum-1/0x2f1372244cedcaf8ee1759d2f02435628f14975f/) | RedemptionVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe123eb...ccc7e9`](./contracts/ethereum-1/0xe123ebc5697151890dddf05943de393ceaccc7e9/) | RedemptionVaultWIthBUIDL | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x283cbe...e32f39`](./contracts/ethereum-1/0x283cbedecb447dbe114b4268f79ba8b046e32f39/) | RedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd52ba0...baab2a`](./contracts/ethereum-1/0xd52ba087e30928886baba15b1584d4ac9abaab2a/) | RsEthAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa869cb...198b67`](./contracts/ethereum-1/0xa869cbc273daae91d6109ee5bb958ac6b7198b67/) | SyrupUSDCAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x570f37...5bbc08`](./contracts/ethereum-1/0x570f37365fffff0a3884892b7363c0a8615bbc08/) | TACmBtcDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6808e4...9ccdf4`](./contracts/ethereum-1/0x6808e4d8add893d0227690f435e1ff734d9ccdf4/) | TACmBtcRedemptionVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c5b87...7aa26c`](./contracts/ethereum-1/0x7c5b87e3bde1c70ad11d546a513e305bc07aa26c/) | TACmEDGE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x375af4...ae36d8`](./contracts/ethereum-1/0x375af40dd6772bb9ad216ad7cbe4d8f91eae36d8/) | TACmEdgeRedemptionVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d3147...910202`](./contracts/ethereum-1/0x1d3147d11c88f5008db19cb5dd945ae682910202/) | TACmMEV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72cca9...761e96`](./contracts/ethereum-1/0x72cca9794018c10ce47af3fc8d47e167d0761e96/) | tETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42e82b...1215b5`](./contracts/ethereum-1/0x42e82b2ee52cdc922cfed82bfcef90ada31215b5/) | TEthCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46eab5...d09e78`](./contracts/ethereum-1/0x46eab5259e1a2f18cbbfeeaa093130a456d09e78/) | TEthDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc32652...750ebf`](./contracts/ethereum-1/0xc32652ab236f32482f5018b027c8b54c13750ebf/) | TEthRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f0c37...01d526`](./contracts/ethereum-1/0x6f0c371f808996187729ed1bee13ace2e901d526/) | TUsdeCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x507f40...a029d0`](./contracts/ethereum-1/0x507f409ba7e5ef489d5c0e3c4568b24985a029d0/) | TUsdeDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ac3e6...77a603`](./contracts/ethereum-1/0x1ac3e68ea5e9dbc592246e2d0d57913aff77a603/) | TUsdeRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bc724...b031d6`](./contracts/ethereum-1/0x9bc7249416ecffb75250afff374bb4b93fb031d6/) | WithdrawalQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3f5f...1fcb69`](./contracts/ethereum-1/0x0c3f5fafb87318c0deaebff096aba019501fcb69/) | WrappedEEthAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa74f99...dbb9d7`](./contracts/ethereum-1/0xa74f994672f232a30067da820f0e54881edbb9d7/) | WstEthAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f2115...cb9e9a`](./contracts/ethereum-1/0x0f211552e0d7acb267a9eb98b80ee00f47cb9e9a/) | ZeroGBtcvCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac79fe...deb0fe`](./contracts/ethereum-1/0xac79fed395c2238c4fa13084ee440e19e4deb0fe/) | ZeroGEthvDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01feb0...e6afcc`](./contracts/ethereum-1/0x01feb0bba21552385de157174f32d97bc0e6afcc/) | ZeroGEthvDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x364fb0...e049aa`](./contracts/ethereum-1/0x364fb05060e7562b0c6379b5bd3371c412e049aa/) | ZeroGEthvRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x733ace...5fa347`](./contracts/ethereum-1/0x733acea2a9193a249fdb58ede4ea3c8ddc5fa347/) | zeroGUSDV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cf944...442aab`](./contracts/ethereum-1/0x8cf94465f8db8a273673dfe950bd1c9e34442aab/) | ZeroGUsdvCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x091074...080e8a`](./contracts/ethereum-1/0x091074f37e8c72ddb8720afae77c44a855080e8a/) | ZeroGUsdvDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 104 |
| upstream | 0 |
| standard_library | 102 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=2

Zero-match audit list:

- [2605] Read Report
- [2606] Read Report

Fork inheritance lineage and inherited audits are included when available.
