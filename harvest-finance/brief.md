# Agentic Audit Brief: Harvest Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 14.1% over 90 days

## Project Overview

- Project: Harvest Finance (`harvest-finance`)
- Website: [https://harvest.finance/](https://harvest.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-29T08:22:44.306Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: arbitrum, base, bsc, ethereum, polygon
- Contract surface: 445 unique implementations (1257 raw deployments)
- DeFi Llama TVL: $12,929,392.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Audit Coverage Summary

- Verified implementations audited: 123/265 (46.4%)
- Verified + Unaudited implementations: 142
- Verified by bytecode match: 0
- Unverified implementations: 180
- Unique implementations: 445
- Raw deployments: 1257
- Audits discovered: 10
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Staleness: 0 fresh, 1 aging, 4 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 103 | 38.9% | 2025-01 |
| unknown | Tier 2 | 23 | 8.7% | 2021-02 |
| CertiK | Tier 2 | 21 | 7.9% | 2020-11 |
| PeckShield | Tier 2 | 8 | 3.0% | 2020-10 |

## Contract Surface

### ✅ Verified + Audited (123)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BalancerStrategyMainnet_BAL_WETH | core_logic | ethereum | [`0x2941a4...e8c89b`](./contracts/ethereum-1/0x2941a48956a2bd476eac6671d76921b6b7e8c89b/) | ✅ Audited |
| BalancerStrategyMainnet_DAI_WETH | core_logic | ethereum | [`0xc2c30c...34b5d1`](./contracts/ethereum-1/0xc2c30cd4898b6004fbb82a8c7bd72d3b3734b5d1/) | ✅ Audited |
| BalancerStrategyMainnet_USDC_WETH | core_logic | ethereum | [`0x06a2e6...d080ee`](./contracts/ethereum-1/0x06a2e6347353edd5653b240d70cdc97f37d080ee/) | ✅ Audited |
| BalancerStrategyMainnet_USDT_WETH | core_logic | ethereum | [`0x83ddbb...093fa1`](./contracts/ethereum-1/0x83ddbb631595cc92ca34b17e0cfc24e059093fa1/) | ✅ Audited |
| BalancerStrategyMainnet_WBTC_WETH | core_logic | ethereum | [`0x857be6...07c565`](./contracts/ethereum-1/0x857be610838b6c16b51fff8bfdd039fa3007c565/) | ✅ Audited |
| bDollarStrategyMainnet_BDO_BUSD | core_logic | bsc | 3 deployments: bsc [`0x3068d8...b68931`](./contracts/bsc-56/0x3068d8e178fc0ef0a8ed73a05301e3b46cb68931/); bsc `0xd70e38...e54919`; bsc `0xd8f5a5...a7b6d8` | ✅ Audited |
| bDollarStrategyMainnet_SBDO_BUSD | core_logic | bsc | 3 deployments: bsc [`0x36a1f2...01c90f`](./contracts/bsc-56/0x36a1f264b79f41048d165341b06630d0d201c90f/); bsc `0x74fad0...4da5e6`; bsc `0x77ee32...2f0676` | ✅ Audited |
| BeltSingleAssetStrategyMainnet_BeltBTCB | core_logic | bsc | 2 deployments: bsc [`0xd8707e...72b07d`](./contracts/bsc-56/0xd8707e6dca55a52f4827738367b1c2b17872b07d/); bsc `0xe6cad0...c26dd8` | ✅ Audited |
| BeltStrategyMainnet_BELT_BNB | core_logic | bsc | 5 deployments: bsc [`0x176413...880387`](./contracts/bsc-56/0x176413fca54884e8eef87f8703f984ef98880387/); bsc `0x2e0a0f...c09d59`; bsc `0x3839ed...2d6998`; bsc `0x497173...1b6402`; bsc `0xf869e3...a9a8c5` | ✅ Audited |
| BeltVenusStrategyMainnet | core_logic | bsc | 2 deployments: bsc [`0x3736f9...89653a`](./contracts/bsc-56/0x3736f98190383bb0490d0099cbedd4175f89653a/); bsc `0xda23a5...a210e2` | ✅ Audited |
| ComplifiDerivStrategyMainnet_ETH5x | core_logic | ethereum | 2 deployments: ethereum [`0x4c9920...825064`](./contracts/ethereum-1/0x4c992088252441ee1840ad0213bf27e7b8825064/); ethereum `0x9dbb8f...9dd819` | ✅ Audited |
| ComplifiStrategyClaimMainnet_COMFI_WETH | core_logic | ethereum | 2 deployments: ethereum [`0x2a8365...9ab2c0`](./contracts/ethereum-1/0x2a83655c0bb11554f3f13a301b2afc75c99ab2c0/); ethereum `0x772484...33afe5` | ✅ Audited |
| Controller | governance | ethereum | 3 deployments: ethereum [`0x222412...953b1c`](./contracts/ethereum-1/0x222412af183bceadefd72e4cb1b71f1889953b1c/); ethereum `0x3cc478...7c55e3`; bsc [`0x222412...953b1c`](./contracts/bsc-56/0x222412af183bceadefd72e4cb1b71f1889953b1c/) | ✅ Audited |
| ConvexStrategy3CRVMainnet | core_logic | ethereum | [`0x025003...756029`](./contracts/ethereum-1/0x0250038b2444665f2f146e6ed5cd881eb5756029/) | ✅ Audited |
| ConvexStrategy3CryptoV2Mainnet | core_logic | ethereum | [`0x8cff95...dc7c81`](./contracts/ethereum-1/0x8cff95cb59a22543c9525f1c8b7577b5eddc7c81/) | ✅ Audited |
| ConvexStrategyBUSDMainnet | core_logic | ethereum | [`0x6a19ae...683cde`](./contracts/ethereum-1/0x6a19aea134cc3c6069b2d89b5a1042cabc683cde/) | ✅ Audited |
| ConvexStrategyEURSMainnet | core_logic | ethereum | [`0x59b556...e4c16b`](./contracts/ethereum-1/0x59b5562455b6db440265e0ae63dab8d59fe4c16b/) | ✅ Audited |
| ConvexStrategyEURTMainnet | core_logic | ethereum | [`0x56cfc5...056bb6`](./contracts/ethereum-1/0x56cfc57bc1c5b40dc739b88fbebcc96b05056bb6/) | ✅ Audited |
| ConvexStrategyHBTCMainnet | core_logic | ethereum | [`0xce9bc5...95e5aa`](./contracts/ethereum-1/0xce9bc5157f2d28d64749e27ddfa18159c795e5aa/) | ✅ Audited |
| ConvexStrategyHUSDMainnet | core_logic | ethereum | [`0x000d02...857704`](./contracts/ethereum-1/0x000d02bb5e9ff7bd7aec0c37999b4d1031857704/) | ✅ Audited |
| ConvexStrategyIbEURMainnet | core_logic | ethereum | [`0x015795...fdfd63`](./contracts/ethereum-1/0x01579527d5734c03b8220e96dd5754346bfdfd63/) | ✅ Audited |
| ConvexStrategyLinkMainnet | core_logic | ethereum | [`0x80a66d...fc0b75`](./contracts/ethereum-1/0x80a66dd69ed1b7ddf6ae622aa942c8187dfc0b75/) | ✅ Audited |
| ConvexStrategyMIMMainnet | core_logic | ethereum | [`0x596355...76411c`](./contracts/ethereum-1/0x596355e19910dd683c294906df14ed212f76411c/) | ✅ Audited |
| ConvexStrategyOBTCMainnet | core_logic | ethereum | [`0x1703fe...50d08d`](./contracts/ethereum-1/0x1703fea13672dfe8899e44c21f7e0b626550d08d/) | ✅ Audited |
| ConvexStrategyRenBTCMainnet | core_logic | ethereum | [`0x90e938...95bdc5`](./contracts/ethereum-1/0x90e938c50f56aee8ed12d72b3b178bf5c395bdc5/) | ✅ Audited |
| ConvexStrategystETHMainnet | core_logic | ethereum | [`0x4503af...8af72e`](./contracts/ethereum-1/0x4503af30fe799c4677cf5814ec8160efc98af72e/) | ✅ Audited |
| ConvexStrategyUSDNMainnet | core_logic | ethereum | [`0xff2adc...1e4a6c`](./contracts/ethereum-1/0xff2adcf9e251b656f0c22bf6b153db4c851e4a6c/) | ✅ Audited |
| ConvexStrategyUSDPMainnet | core_logic | ethereum | [`0xa788fe...288e1a`](./contracts/ethereum-1/0xa788fe8aae24220e277d43b70426d384e2288e1a/) | ✅ Audited |
| ConvexStrategyUSTMainnet | core_logic | ethereum | [`0x89f6dd...65c475`](./contracts/ethereum-1/0x89f6dd2f2615471c008e60c86ab0f6727c65c475/) | ✅ Audited |
| ConvexStrategyYCRVMainnet | core_logic | ethereum | [`0xf8b2ef...ea72ec`](./contracts/ethereum-1/0xf8b2ef93a8c89b24324d7507c36db081fbea72ec/) | ✅ Audited |
| CRVStrategyRENBTCMainnet | core_logic | ethereum | 3 deployments: ethereum [`0x2eadfb...70f006`](./contracts/ethereum-1/0x2eadfb06f9d890eba80e999eaba2d445bc70f006/); ethereum `0x86de35...e838b3`; ethereum `0xd2429c...ac20b1` | ✅ Audited |
| CRVStrategyStableMainnet | core_logic | ethereum | 13 deployments: ethereum [`0x03292b...d0966a`](./contracts/ethereum-1/0x03292bdfe36591f70575c77847d7f004ffd0966a/); ethereum `0x1c4734...faa81c`; ethereum `0x2ce34b...8efbff`; ethereum `0x394e65...8f053d`; ethereum `0x68e6aa...bea90b`; ethereum `0x76f9dd...80d58b`; ethereum `0x810b83...980938`; ethereum `0x9d356f...eec462`; ethereum `0xa2bd15...53897c`; ethereum `0xab4ae7...3e6d84`; ethereum `0xd55ada...d216cc`; ethereum `0xd75ffa...ce3f63`; ethereum `0xf32146...cd6e10` | ✅ Audited |
| CRVStrategySwerveDAIMainnet | core_logic | ethereum | 2 deployments: ethereum [`0x6ac757...e7e281`](./contracts/ethereum-1/0x6ac7575a340a3dab2ae9ca07c4dbfc6bf8e7e281/); ethereum `0xf60afe...8bded0` | ✅ Audited |
| CRVStrategySwerveUSDCMainnet | core_logic | ethereum | 3 deployments: ethereum [`0x00f9d5...195bdf`](./contracts/ethereum-1/0x00f9d525828beebf1ee75fb72b1f21932e195bdf/); ethereum `0x18c432...8e9533`; ethereum `0x66b761...335c34` | ✅ Audited |
| CRVStrategyWBTCMainnet | core_logic | ethereum | 2 deployments: ethereum [`0x164385...a76b48`](./contracts/ethereum-1/0x16438572ce90caacd83f175b4b9e22e360a76b48/); ethereum `0xe7048e...a6df19` | ✅ Audited |
| CRVStrategyYCRVMainnet | core_logic | ethereum | 4 deployments: ethereum [`0x2427da...d67c92`](./contracts/ethereum-1/0x2427da81376a0c0a0c654089a951887242d67c92/); ethereum `0x6945f1...b2b73a`; ethereum `0xcf5f83...b2bbf5`; ethereum `0xd21c3b...50c977` | ✅ Audited |
| DelayMinter | unknown | ethereum | [`0x284d72...64f61d`](./contracts/ethereum-1/0x284d7200a0dabb05ee6de698da10d00df164f61d/) | ✅ Audited |
| DepositHelper | periphery | ethereum | [`0xf8ce90...fc0846`](./contracts/ethereum-1/0xf8ce90c2710713552fb564869694b2505bfc0846/) | ✅ Audited |
| Ellipsis3PoolStrategyMainnet | core_logic | bsc | 2 deployments: bsc [`0xb1feb6...3a57ee`](./contracts/bsc-56/0xb1feb6ab4ef7d0f41363da33868e85eb0f3a57ee/); bsc `0xb43aa2...12b6c2` | ✅ Audited |
| EllipsisBTCStrategyMainnet | core_logic | bsc | 2 deployments: bsc [`0x11d4f0...81417f`](./contracts/bsc-56/0x11d4f0398d135b979d1d20761c43878fbb81417f/); bsc `0x69019a...832c5d` | ✅ Audited |
| EllipsisLPStrategyMainnet_EPS_BNB | core_logic | bsc | 2 deployments: bsc [`0x5954f9...7f0178`](./contracts/bsc-56/0x5954f9d5afb005eba67813b5ab82398fac7f0178/); bsc `0xb19254...224bc6` | ✅ Audited |
| FeeRewardForwarder | unknown | ethereum | 8 deployments: ethereum [`0x153c54...c86676`](./contracts/ethereum-1/0x153c544f72329c1ba521ddf5086cf2fa98c86676/); ethereum `0x1fe9cf...704573`; ethereum `0x3d1352...962061`; ethereum `0x9397bd...270d94`; ethereum `0xdfc20a...1e43ae`; ethereum `0xef08a6...eb1153`; bsc `0xa0246c...19a14d`; bsc `0xef08a6...eb1153` | ✅ Audited |
| GooseStrategyMainnet_EGG | core_logic | bsc | 5 deployments: bsc [`0x5cf7ce...0de679`](./contracts/bsc-56/0x5cf7cef972f3deeed205b00bf6c2f8cf070de679/); bsc `0x84619b...89efd5`; bsc `0xa166ea...b75dab`; bsc `0xc11f5f...675a3e`; bsc `0xcfe542...7e4d64` | ✅ Audited |
| GooseStrategyMainnet_EGG_BNB | core_logic | bsc | 3 deployments: bsc [`0x59a369...35f933`](./contracts/bsc-56/0x59a369de3b3c350041202f59eb425363a035f933/); bsc `0xb60e69...b7c7de`; bsc `0xc022b4...b791b2` | ✅ Audited |
| GooseStrategyMainnet_EGG_BUSD | core_logic | bsc | 3 deployments: bsc [`0x444d8c...d4a67d`](./contracts/bsc-56/0x444d8ca235624e2ac98a9eecdbdf54122cd4a67d/); bsc `0xb91f62...207938`; bsc `0xc547c5...d349a2` | ✅ Audited |
| HardRewards | unknown | ethereum | [`0x33da6b...345a14`](./contracts/ethereum-1/0x33da6b1a05b4afcc5a321aacaa1334bda4345a14/) | ✅ Audited |
| LiquidityRecipient | operational_periphery | ethereum | 2 deployments: ethereum [`0x4752db...882a96`](./contracts/ethereum-1/0x4752db62083b71c6af1aed227305572f36882a96/); ethereum `0x7bf835...00f2b3` | ✅ Audited |
| LQTYStakingStrategyMainnet | core_logic | ethereum | 2 deployments: ethereum [`0x33a57d...6a1fe3`](./contracts/ethereum-1/0x33a57da38c313520e9348432d314ff54386a1fe3/); ethereum `0xf13a45...95aef2` | ✅ Audited |
| NarwhaleStrategyMainnet_BAC | core_logic | ethereum | 2 deployments: ethereum [`0x95fcbf...3141b3`](./contracts/ethereum-1/0x95fcbf69373552b3db416dcf97fd06af743141b3/); ethereum `0xcbe0b7...06985e` | ✅ Audited |
| NarwhaleStrategyMainnet_DSD | core_logic | ethereum | 3 deployments: ethereum [`0x27b7b7...4ce07f`](./contracts/ethereum-1/0x27b7b7fe890bc0907bef728e9ca518f8124ce07f/); ethereum `0x7fb556...27d89c`; ethereum `0xdc558e...4d4361` | ✅ Audited |
| NarwhaleStrategyMainnet_ESD | core_logic | ethereum | 2 deployments: ethereum [`0x0c09be...ef2e90`](./contracts/ethereum-1/0x0c09be4864966f400741e45be81f72e875ef2e90/); ethereum `0x547401...2a8079` | ✅ Audited |
| NFT20Strategy_DUDES | core_logic | ethereum | 4 deployments: ethereum [`0x32448d...a78658`](./contracts/ethereum-1/0x32448d412e1821e5fb598291dc2de2ad91a78658/); ethereum `0x78eb4e...42c0cc`; ethereum `0x80fa9f...b36b28`; ethereum `0xf7714d...ff3a4b` | ✅ Audited |
| NFT20Strategy_GPUNK | core_logic | ethereum | 4 deployments: ethereum [`0x610a02...6e1354`](./contracts/ethereum-1/0x610a02867877cf9438438d85a33230c4366e1354/); ethereum `0x7e33ef...1f2649`; ethereum `0x94c349...786bb4`; ethereum `0xca0a74...1de967` | ✅ Audited |
| NFT20Strategy_MASK | core_logic | ethereum | 4 deployments: ethereum [`0x7497fd...235262`](./contracts/ethereum-1/0x7497fd6fad202d2236775b8519827aaae7235262/); ethereum `0xd68d8b...b2fad5`; ethereum `0xf270e3...fc0572`; ethereum `0xfdaf72...12f143` | ✅ Audited |
| NFT20Strategy_MCAT | core_logic | ethereum | 4 deployments: ethereum [`0x405fe1...957b1d`](./contracts/ethereum-1/0x405fe1198edabae6a85c494dcf09f7be6a957b1d/); ethereum `0x44fa58...26158b`; ethereum `0x6c0bc8...007e46`; ethereum `0xc6b1e8...ee1cb5` | ✅ Audited |
| NFT20Strategy_MEME | core_logic | ethereum | 3 deployments: ethereum [`0x29a88c...b0ac61`](./contracts/ethereum-1/0x29a88c78c0d52536e487edbf4c0e6a2501b0ac61/); ethereum `0xc830d1...693a48`; ethereum `0xe085c4...997918` | ✅ Audited |
| NFT20Strategy_MUSE | core_logic | ethereum | 4 deployments: ethereum [`0x215460...906f60`](./contracts/ethereum-1/0x21546068903b82695c6cc26164b4cd15ad906f60/); ethereum `0x7fdc18...756a1b`; ethereum `0x99f315...6c3f7c`; ethereum `0xf47a48...98ee35` | ✅ Audited |
| NFT20Strategy_ROPE | core_logic | ethereum | 4 deployments: ethereum [`0x4230ff...df31d7`](./contracts/ethereum-1/0x4230ff3aed735f4715b56347d3427d6361df31d7/); ethereum `0x4de6cd...f31b86`; ethereum `0x7ce0c1...862395`; ethereum `0x9044d3...32c23a` | ✅ Audited |
| NoMintRewardPool | core_logic | ethereum | 116 deployments: ethereum [`0x017ec1...62c57c`](./contracts/ethereum-1/0x017ec1772a45d2cf68c429a820ef374f0662c57c/); ethereum `0x01f9ca...af7254`; ethereum `0x056e01...5b4924`; ethereum `0x08c795...909e5a`; ethereum `0x093c2a...2449ad`; ethereum `0x10f1fc...41f438`; ethereum `0x12e75b...b07f5a`; ethereum `0x156733...3764b5`; ethereum `0x158edb...42907c`; ethereum `0x15d3a6...5b5b4a`; ethereum `0x16fbb1...65bfa3`; ethereum `0x19f8ce...aa9919`; ethereum `0x26582b...8ab136`; ethereum `0x27f12d...8be7d9`; ethereum `0x298a92...54daa6`; ethereum `0x2a80e0...bd70bd`; ethereum `0x2e2580...cbffe6`; ethereum `0x2f97d9...f6f244`; ethereum `0x316de4...a41270`; ethereum `0x346523...840bd1`; ethereum `0x3483ad...538cba`; ethereum `0x3631a3...321918`; ethereum `0x3a0f8b...0f3793`; ethereum `0x3bdc3e...d1a105`; ethereum `0x3cdde3...a72280`; ethereum `0x3da9d9...cdff8e`; ethereum `0x40c34b...b46614`; ethereum `0x43286f...983e58`; ethereum `0x443563...27d690`; ethereum `0x45a760...82f393`; ethereum `0x489c78...d1d46e`; ethereum `0x493896...393b8f`; ethereum `0x4f7c28...c878bd`; ethereum `0x5365a2...7384fb`; ethereum `0x538613...ab0b68`; ethereum `0x59258f...8dbd4f`; ethereum `0x5bd997...19f58d`; ethereum `0x6291ec...b1d7cc`; ethereum `0x63e7d3...0b0e7a`; ethereum `0x6555c7...c11958`; ethereum `0x6ac4a7...4994a2`; ethereum `0x6b4e1e...0cf7a6`; ethereum `0x6d1b6e...d349a8`; ethereum `0x6f8a97...465517`; ethereum `0x72c50e...a0a3c1`; ethereum `0x747318...0448b4`; ethereum `0x74fad0...4da5e6`; ethereum `0x75071f...d1c960`; ethereum `0x76aef3...1ba1fa`; ethereum `0x77ee32...2f0676`; ethereum `0x78c3e5...36b089`; ethereum `0x797f11...9cce48`; ethereum `0x7aeb36...7b859c`; ethereum `0x7af445...4be9b8`; ethereum `0x7b8ff8...0cb4f6`; ethereum `0x7c4972...7a9b33`; ethereum `0x82bdac...64e04b`; ethereum `0x84646f...8328c7`; ethereum `0x876433...43a4c3`; ethereum `0x8bcbf1...5a3814`; ethereum `0x8dc427...f5c158`; ethereum `0x905cf5...2ec4f2`; ethereum `0x917d64...9ea77b`; ethereum `0x91b5cd...c182fc`; ethereum `0x9494a3...9608c4`; ethereum `0x9523fd...80ef34`; ethereum `0x98ba5e...4588c1`; ethereum `0x99b0d6...5cf9bf`; ethereum `0x9a63d2...f5f946`; ethereum `0x9a9a61...19fddf`; ethereum `0xa112c2...17a268`; ethereum `0xa3cf8d...3a3db5`; ethereum `0xa56522...bc64ef`; ethereum `0xad9169...f22abd`; ethereum `0xae024f...b0546d`; ethereum `0xae160a...0268c5`; ethereum `0xb036b5...a453e5`; ethereum `0xb0c22d...533800`; ethereum `0xb2b405...a95520`; ethereum `0xb3b56c...421f89`; ethereum `0xb492fa...7a11bc`; ethereum `0xb4d1d6...39ff95`; ethereum `0xbb846a...a3e2b0`; ethereum `0xbdbfa2...d3f054`; ethereum `0xc02d1d...4d1a57`; ethereum `0xc0f51a...697de1`; ethereum `0xc24da7...5a311e`; ethereum `0xc47ef3...d18721`; ethereum `0xc5ddd0...6a83ca`; ethereum `0xc6f39c...f87d95`; ethereum `0xc97dda...dd78f4`; ethereum `0xcdac55...64b894`; ethereum `0xcfe110...4bf9c5`; ethereum `0xd8f5a5...a7b6d8`; ethereum `0xda5e97...cdcfad`; ethereum `0xdb9c2e...b2137e`; ethereum `0xdc2724...40d07f`; ethereum `0xddb5d3...d3120e`; ethereum `0xe11c81...158a9d`; ethereum `0xe1f9a3...d44633`; ethereum `0xe2d9fa...917194`; ethereum `0xe58f0d...3a2b16`; ethereum `0xe604fd...0adbe1`; ethereum `0xe72d38...e99b6f`; ethereum `0xec56a2...a0ecda`; ethereum `0xef4da1...d47579`; ethereum `0xf1181a...36cb93`; ethereum `0xf33089...626020`; ethereum `0xf3b2b1...21f799`; ethereum `0xf46557...7e77df`; ethereum `0xf4784d...90725b`; ethereum `0xf4d50f...5cd940`; ethereum `0xf5b221...2bbbf8`; ethereum `0xf71042...2cc9f0`; ethereum `0xf9e5f9...c9484b`; ethereum `0xfe83a0...220d0d` | ✅ Audited |
| NotifyHelper | periphery | ethereum | 3 deployments: ethereum [`0xe20c31...65053c`](./contracts/ethereum-1/0xe20c31e3d08027f5aface84a3a46b7b3b165053c/); ethereum `0xeeae0c...0716dd`; bsc `0xf71042...2cc9f0` | ✅ Audited |
| PancakeStrategyMainnet_BUSD_BNB | core_logic | bsc | 8 deployments: bsc [`0x00b7ba...89a1f6`](./contracts/bsc-56/0x00b7ba155debf38f2347a199178c99a9bc89a1f6/); bsc `0x0a25f4...700ec4`; bsc `0x23d5b0...480177`; bsc `0x336e07...7afa5f`; bsc `0x4e48c5...a97161`; bsc `0x59258f...8dbd4f`; bsc `0x5ed588...1d9df2`; bsc `0x7384ea...91b41b` | ✅ Audited |
| PancakeStrategyMainnet_CAKE | core_logic | bsc | 6 deployments: bsc [`0x2eadfb...70f006`](./contracts/bsc-56/0x2eadfb06f9d890eba80e999eaba2d445bc70f006/); bsc `0x465888...394f36`; bsc `0x8c4ffa...976096`; bsc `0xd40c75...f2c10f`; bsc `0xd432f8...9d8c07`; bsc `0xf60afe...8bded0` | ✅ Audited |
| PancakeStrategyMainnet_CAKE_BNB | core_logic | bsc | 5 deployments: bsc [`0x2a1ac3...fdb64b`](./contracts/bsc-56/0x2a1ac3ef4c75552305d6c8a60061af8276fdb64b/); bsc `0x377203...5825b4`; bsc `0x573cfe...777709`; bsc `0xd960ca...f65fc9`; bsc `0xe7666f...27c330` | ✅ Audited |
| PancakeStrategyMainnet_ETH_BNB | core_logic | bsc | 6 deployments: bsc [`0x4d82c4...fa96d2`](./contracts/bsc-56/0x4d82c4ee197ecb652e8088cc2890959f0afa96d2/); bsc `0x577b54...366760`; bsc `0x8c4ef5...fc9606`; bsc `0xa83292...59e0e7`; bsc `0xed274d...7102c2`; bsc `0xfbc74e...6c2e58` | ✅ Audited |
| PancakeStrategyMainnet_USDT_BNB | core_logic | bsc | 5 deployments: bsc [`0x05c31c...ea045d`](./contracts/bsc-56/0x05c31c2e3eeca1d1e76856b5b243487f76ea045d/); bsc `0x164385...a76b48`; bsc `0x7a2af2...b5e1a0`; bsc `0x93da6a...b94c51`; bsc `0xe5464f...f461fa` | ✅ Audited |
| PancakeStrategyMainnet_XVS_BNB | core_logic | bsc | 5 deployments: bsc [`0x2d9893...c37d8d`](./contracts/bsc-56/0x2d9893f8fe18757b1b387eaf0276defa99c37d8d/); bsc `0x3fd2d3...859b75`; bsc `0x4d3ef7...25e2cf`; bsc `0xa0e883...ef240d`; bsc `0xde1116...4a24a5` | ✅ Audited |
| PopsicleStrategtMainnet_ICE | unknown | bsc | 2 deployments: bsc [`0xa4e17a...7b4bc0`](./contracts/bsc-56/0xa4e17a09eea14da1d2918fabd49274b56d7b4bc0/); bsc `0xd73381...48e835` | ✅ Audited |
| PopsicleStrategtMainnet_ICE_BNB | unknown | bsc | 4 deployments: bsc [`0x0c2533...2bd0b8`](./contracts/bsc-56/0x0c253359c7074325211f0e07e31853e1192bd0b8/); bsc `0x8c72e9...a029c3`; bsc `0xba314e...0aff31`; bsc `0xbcdf4e...a834ca` | ✅ Audited |
| PopsicleStrategtMainnet_ICE_BNBv2 | unknown | bsc | 2 deployments: bsc [`0x2965b5...1f051f`](./contracts/bsc-56/0x2965b50883e60af251964ec3cfea0db8be1f051f/); bsc `0x6c55c0...bd2374` | ✅ Audited |
| PotPool | core_logic | bsc | 117 deployments: ethereum `0x079158...9ddc69`; ethereum `0x08aa65...c749b2`; ethereum `0x0b4433...310a5c`; ethereum `0x0c67fb...15a7f5`; ethereum `0x11301b...2ab1d8`; ethereum `0x14ac1b...0845b9`; ethereum `0x15417a...45d9df`; ethereum `0x15aeb9...80f390`; ethereum `0x174678...7b980f`; ethereum `0x17ea33...948c47`; ethereum `0x1997e5...82501b`; ethereum `0x199eff...061004`; ethereum `0x1a0e12...db8e52`; ethereum `0x257968...d2aa11`; ethereum `0x269fa8...5b45af`; ethereum `0x277c21...34b2e4`; ethereum `0x2bd2ba...f83ec4`; ethereum `0x31a69b...93626b`; ethereum `0x34d358...25dc65`; ethereum `0x35de0d...7fbd8f`; ethereum `0x378c31...4fcb9d`; ethereum `0x3b808a...376842`; ethereum `0x47f4fc...3d21cc`; ethereum `0x516658...d4783d`; ethereum `0x54941a...4ba269`; ethereum `0x56db0f...a5433c`; ethereum `0x59a87a...9a79bb`; ethereum `0x59eeb3...e5fa8b`; ethereum `0x5aab6c...8c22b0`; ethereum `0x5ed17c...c7beca`; ethereum `0x6055d7...a4f507`; ethereum `0x611ac2...cb5bb2`; ethereum `0x677ad6...dd62be`; ethereum `0x694a3a...b7964b`; ethereum `0x6b6712...80f270`; ethereum `0x6ce6b6...843792`; ethereum `0x6dc8be...9f5a34`; ethereum `0x719d70...1b7417`; ethereum `0x743bd8...8383b1`; ethereum `0x7931d6...628e2d`; ethereum `0x85f11e...0b485f`; ethereum `0x8ab334...4d2ba4`; ethereum `0x8e54bb...377e32`; ethereum `0x937d4b...bf755a`; ethereum `0x95d2e1...381547`; ethereum `0x9b36b4...a804ee`; ethereum `0x9c6fbd...708dd1`; ethereum `0xa6f85b...0035ef`; ethereum `0xa73363...593cab`; ethereum `0xa9e60d...ad1a51`; ethereum `0xaa6f97...886e75`; ethereum `0xab2e51...2b23dc`; ethereum `0xae8d48...008606`; ethereum `0xb33a40...5858c3`; ethereum `0xb5f7fd...c310b7`; ethereum `0xba20df...224a76`; ethereum `0xc02f8f...a5d247`; ethereum `0xc5fc56...7cc2d1`; ethereum `0xd12747...0c1128`; ethereum `0xd18f25...1b2dbe`; ethereum `0xd2d194...cea17b`; ethereum `0xd8a3c7...f2f270`; ethereum `0xdc1873...b04d1f`; ethereum `0xdd496a...0941fe`; ethereum `0xddcaa7...593039`; ethereum `0xe7e1c3...980113`; ethereum `0xe9d557...5d6c85`; ethereum `0xea2ec0...ef3b10`; ethereum `0xefb78d...e4082d`; ethereum `0xf435e8...a8c5f1`; ethereum `0xf4ead5...ba1807`; ethereum `0xf55080...64a82e`; ethereum `0xf58337...22387d`; ethereum `0xf8cbfe...496102`; ethereum `0xf9bcab...61bee6`; ethereum `0xfbfbe3...e23b82`; ethereum `0xfd1121...c9f7ae`; bsc [`0x03292b...d0966a`](./contracts/bsc-56/0x03292bdfe36591f70575c77847d7f004ffd0966a/); bsc `0x03b58c...a1a2ba`; bsc `0x063eb3...318c52`; bsc `0x0694e3...05f745`; bsc `0x08b673...172066`; bsc `0x1bb6fd...2f299b`; bsc `0x221ed0...882cf3`; bsc `0x26a4fe...a7f84c`; bsc `0x2fee56...0a472c`; bsc `0x333103...bacc0f`; bsc `0x416588...e420fc`; bsc `0x57c305...8560a2`; bsc `0x5c6fe0...b2498f`; bsc `0x7002fc...0b9368`; bsc `0x76aadd...33abe7`; bsc `0x78963b...ea8ee9`; bsc `0x7caa01...da8792`; bsc `0x8709b4...c9510b`; bsc `0x884843...604449`; bsc `0x8e8ca3...3e7874`; bsc `0x9178f4...2d9998`; bsc `0x948125...e441cd`; bsc `0x9b36e1...88072c`; bsc `0xb3b56c...421f89`; bsc `0xc2a1fa...39e61c`; bsc `0xc6f39c...f87d95`; bsc `0xd16a73...03d76a`; bsc `0xd4bc60...f86ab0`; bsc `0xda88e3...22f6cd`; bsc `0xdeb314...5c1406`; bsc `0xe5f739...efccc1`; bsc `0xe637e7...e91c16`; bsc `0xe83f39...9f4f06`; bsc `0xe9e035...d7b871`; bsc `0xea2c3c...0ebe9e`; bsc `0xeab819...280310`; bsc `0xf1121f...f1c34e`; bsc `0xf53c67...5cb524`; bsc `0xfc8c1f...2a6277`; bsc `0xfe7f45...894b1a` | ✅ Audited |
| RewardToken | token | ethereum | [`0xa0246c...19a14d`](./contracts/ethereum-1/0xa0246c9032bc3a600820415ae600c6388619a14d/) | ✅ Audited |
| SNXRewardUniLPStrategy | core_logic | ethereum | 18 deployments: ethereum [`0x0973ed...ad840c`](./contracts/ethereum-1/0x0973ede03cae07837ff0e2c2695ea219dfad840c/); ethereum `0x0a7d74...774ac8`; ethereum `0x0fd7c7...0efc6e`; ethereum `0x13627b...6050c3`; ethereum `0x2cf4ce...34cbd4`; ethereum `0x2fee56...0a472c`; ethereum `0x46a361...03dc52`; ethereum `0x46ec90...bee00a`; ethereum `0x50f119...26c6fd`; ethereum `0x7f522f...ee544d`; ethereum `0x94e74a...40cdbb`; ethereum `0x987a16...79baac`; ethereum `0xa82660...4c212c`; ethereum `0xb40ec6...7b4c55`; ethereum `0xb43aa2...12b6c2`; ethereum `0xc6e973...aef5c0`; ethereum `0xcf6d6e...579309`; ethereum `0xd3927f...cf3c90` | ✅ Audited |
| SpaceStrategy_SPACE_BNB | core_logic | bsc | 3 deployments: bsc [`0xc843bb...23d4af`](./contracts/bsc-56/0xc843bbdda92124f173a09db47e5e9b1d3823d4af/); bsc `0xe8e106...adcc53`; bsc `0xffbf79...a8cc70` | ✅ Audited |
| SpaceStrategy_SPACE_BUSD | core_logic | bsc | 3 deployments: bsc [`0x381b02...bcff9f`](./contracts/bsc-56/0x381b02359bebe2566c7c08fd7d0b078269bcff9f/); bsc `0xcb9681...55294f`; bsc `0xf1ae8e...f11e90` | ✅ Audited |
| Storage | unknown | ethereum | 6 deployments: ethereum [`0x808540...ee3bcf`](./contracts/ethereum-1/0x8085407a8b5cc475cc5c02f872b39b57e4ee3bcf/); ethereum `0x993368...203d62`; ethereum `0xc01fd7...77712e`; ethereum `0xc95cbe...d0d197`; ethereum `0xe04d1a...31598a`; bsc `0xc95cbe...d0d197` | ✅ Audited |
| StrategyProxy | core_logic | bsc | 46 deployments: ethereum `0x0d3921...5c6c0e`; ethereum `0x14e7c3...932f2a`; ethereum `0x337b95...5c0062`; ethereum `0x5e1af8...4e0dac`; ethereum `0x6aeb7b...064b1a`; ethereum `0x77fcb2...82a8a9`; ethereum `0x8a0ee1...422c7c`; ethereum `0xbdc7d6...eee37d`; ethereum `0xdbedfb...e372be`; ethereum `0xfdb0cd...62747f`; bsc [`0x0bcaac...2745dc`](./contracts/bsc-56/0x0bcaace441c9c0b5c1904450e7722ce3672745dc/); bsc `0x0c4224...99d2f6`; bsc `0x117eac...4f9641`; bsc `0x25597b...564ee3`; bsc `0x28db27...617b02`; bsc `0x3243aa...8d003f`; bsc `0x35c95f...3d3eb3`; bsc `0x46c52b...3fdc54`; bsc `0x4a0b8d...110a54`; bsc `0x4f0273...f25111`; bsc `0x53df66...4b87e3`; bsc `0x5666b9...dc6b17`; bsc `0x58476e...28afd3`; bsc `0x66b761...335c34`; bsc `0x6b138b...8b0081`; bsc `0x6cec99...f7f74c`; bsc `0x6e5226...17cefb`; bsc `0x74d3df...8ba127`; bsc `0x78c3e5...36b089`; bsc `0x7a299a...f09370`; bsc `0x7fb685...aadfe1`; bsc `0x90d695...c12267`; bsc `0x927c07...136b19`; bsc `0x9404b2...721cbe`; bsc `0xa6fe29...f66021`; bsc `0xa75ac7...23c015`; bsc `0xae3a7a...b5df41`; bsc `0xb0f5ae...bcd9ff`; bsc `0xbf2eba...3b27a1`; bsc `0xc7cc4c...e6af8c`; bsc `0xc9d337...0d0dde`; bsc `0xced431...695628`; bsc `0xd77e6b...d2a989`; bsc `0xe24e96...2a01fc`; bsc `0xe7a699...e4db8c`; bsc `0xfe11d3...8fbe67` | ✅ Audited |
| SushiBuybackStrategyMainnet_PERP_WETH | core_logic | ethereum | [`0x630d43...05e781`](./contracts/ethereum-1/0x630d435934e07151db105d2d43bf5a3d3705e781/) | ✅ Audited |
| SushiHodlStrategyMainnet_DAI_WETH | core_logic | ethereum | [`0x923ca6...5dda65`](./contracts/ethereum-1/0x923ca6dcef62030bed25aa3ef854f39dc45dda65/) | ✅ Audited |
| SushiHodlStrategyMainnet_USDT_WETH | core_logic | ethereum | [`0x33fed4...1a3cd4`](./contracts/ethereum-1/0x33fed4ccb4175484a692c83942d4374fcd1a3cd4/) | ✅ Audited |
| SushiHodlStrategyMainnet_WBTC_WETH | core_logic | ethereum | [`0x4cad48...e9fab8`](./contracts/ethereum-1/0x4cad48bf9a362d3576d2aacd5fd0dbd4f9e9fab8/) | ✅ Audited |
| SushiHodlStrategyMainnet_WETH_USDC | core_logic | ethereum | [`0x8e8c91...6b4c43`](./contracts/ethereum-1/0x8e8c911d46badc3e69d781744d57884eef6b4c43/) | ✅ Audited |
| SushiMasterChefLPStrategy | core_logic | ethereum | 4 deployments: ethereum [`0x180a71...e261b6`](./contracts/ethereum-1/0x180a71c5688ac7e2368890ef77b0036af8e261b6/); ethereum `0x895cc1...225322`; ethereum `0xd5d2ad...c3cec0`; ethereum `0xdd1dfb...97f053` | ✅ Audited |
| SushiStrategyMainnet_SUSHI_WETH | core_logic | ethereum | [`0xa44ffa...87ebee`](./contracts/ethereum-1/0xa44ffa733f1d500fd10c613cf66c87320d87ebee/) | ✅ Audited |
| SushiStrategyMainnet_UST_WETH | core_logic | ethereum | [`0x18fe4b...6c7cd5`](./contracts/ethereum-1/0x18fe4b095dc23411857e174d8c561c860c6c7cd5/) | ✅ Audited |
| SwirlLPStrategyMainnet | core_logic | bsc | 2 deployments: bsc [`0x4ee876...a4ced2`](./contracts/bsc-56/0x4ee876b94bb00e1792cc25d290c7fca820a4ced2/); bsc `0x9048a1...8363a6` | ✅ Audited |
| UniverseStrategyMainnet_SUSHI | core_logic | ethereum | [`0x5f5fb7...1003fc`](./contracts/ethereum-1/0x5f5fb79ff63a39bebe72d724ce8d5f72fd1003fc/) | ✅ Audited |
| Vault | core_logic | ethereum | 132 deployments: ethereum [`0x01112a...cc2073`](./contracts/ethereum-1/0x01112a60f427205dca6e229425306923c3cc2073/); ethereum `0x01bd09...42b04a`; ethereum `0x02d77f...95356f`; ethereum `0x07dbe6...e1963a`; ethereum `0x0ca199...365a15`; ethereum `0x0fe428...9c38f3`; ethereum `0x11804d...63ab53`; ethereum `0x12db4a...06039f`; ethereum `0x13027a...9179f6`; ethereum `0x145f39...ab69c8`; ethereum `0x14e7a0...61d865`; ethereum `0x192e9d...6888f3`; ethereum `0x1a9f22...c32327`; ethereum `0x1e5f4e...ecebef`; ethereum `0x203e97...3f241e`; ethereum `0x227a46...0edbb3`; ethereum `0x230d3e...2d3e62`; ethereum `0x24c562...fd216e`; ethereum `0x261930...e01741`; ethereum `0x274aa8...375b48`; ethereum `0x29780c...0140f2`; ethereum `0x29ec64...6e0027`; ethereum `0x2a32dc...4dfe48`; ethereum `0x307e27...a9cdb7`; ethereum `0x371e78...50f86b`; ethereum `0x3761ef...f0f94b`; ethereum `0x3860bd...59b3f5`; ethereum `0x3cf83c...f48574`; ethereum `0x3f8861...ce5ad7`; ethereum `0x4282b7...481191`; ethereum `0x45a9e0...303ec2`; ethereum `0x48473e...b4ffad`; ethereum `0x4b1cbd...bbb68a`; ethereum `0x4d4b6f...36ffc8`; ethereum `0x4d4d85...fee521`; ethereum `0x577426...bcb89a`; ethereum `0x5ade38...b5c78e`; ethereum `0x5c0a3f...f85524`; ethereum `0x5cd9db...5dcd4d`; ethereum `0x5ea74c...339613`; ethereum `0x604925...4dc583`; ethereum `0x633c48...fb75fd`; ethereum `0x636714...f16e3b`; ethereum `0x639d4f...ba9e54`; ethereum `0x64035b...e60745`; ethereum `0x640704...18f1b5`; ethereum `0x683e68...cb8664`; ethereum `0x6bccd7...e4c43b`; ethereum `0x6eb941...1e2e5a`; ethereum `0x6f1416...8d157d`; ethereum `0x708b10...6ed47d`; ethereum `0x767462...54441b`; ethereum `0x7ddc3f...362cff`; ethereum `0x8255fe...9bc5ee`; ethereum `0x8334a6...1350b7`; ethereum `0x84a1df...3c0a02`; ethereum `0x8a0f6b...ea33e7`; ethereum `0x8aa055...18ff21`; ethereum `0x8bf3c1...b1abb1`; ethereum `0x8d2450...e1ab5b`; ethereum `0x8e2987...3e7098`; ethereum `0x966a70...246c72`; ethereum `0x998ceb...f00fad`; ethereum `0x99c256...f396ae`; ethereum `0x9aa8f4...6aedf8`; ethereum `0x9af516...fe7734`; ethereum `0x9b3be0...15588b`; ethereum `0xa10a74...567e34`; ethereum `0xa79a08...d6bb36`; ethereum `0xa85f81...c70ccf`; ethereum `0xa860a9...7f0bc7`; ethereum `0xaf255e...807a22`; ethereum `0xaf9486...3031b9`; ethereum `0xb19ebf...29d43c`; ethereum `0xb1feb6...3a57ee`; ethereum `0xb37c79...6038b7`; ethereum `0xb59edc...4459db`; ethereum `0xb677bc...dd55b9`; ethereum `0xb8671e...4b009e`; ethereum `0xb89777...189263`; ethereum `0xc07eb9...b136b0`; ethereum `0xc391d1...5633c4`; ethereum `0xc3ef8c...ba9d42`; ethereum `0xc45d47...cdbc04`; ethereum `0xc80098...7291bc`; ethereum `0xc8404f...1d6ed2`; ethereum `0xcc7759...2102e2`; ethereum `0xcf16b1...45f334`; ethereum `0xd91b06...032145`; ethereum `0xdb94c2...705dad`; ethereum `0xddb466...615f1b`; ethereum `0xe438c0...814c22`; ethereum `0xe6e0b4...abf1b1`; ethereum `0xf174dd...3025b3`; ethereum `0xf2a671...8d1c29`; ethereum `0xf553e1...2fc7eb`; ethereum `0xfbe122...81feec`; ethereum `0xfca949...f361ce`; bsc `0x0392f3...9fa8af`; bsc `0x0a7d74...774ac8`; bsc `0x1274b7...6cbe48`; bsc `0x129cce...cbf89d`; bsc `0x14cb41...8160df`; bsc `0x1bfb4e...02bec1`; bsc `0x21fa8c...614c60`; bsc `0x2427da...d67c92`; bsc `0x299b00...072247`; bsc `0x2ce34b...8efbff`; bsc `0x33da6b...345a14`; bsc `0x374787...26096a`; bsc `0x394e65...8f053d`; bsc `0x3d5b0a...4b885a`; bsc `0x5089ea...ce63ca`; bsc `0x5da237...a7c8eb`; bsc `0x636714...f16e3b`; bsc `0x6a0d73...410853`; bsc `0x75071f...d1c960`; bsc `0x78cf4a...1c1425`; bsc `0x84646f...8328c7`; bsc `0x9090bc...e185ab`; bsc `0xbf2989...460a4f`; bsc `0xc3f7ff...e8326f`; bsc `0xc97dda...dd78f4`; bsc `0xcd8fb1...bf0df1`; bsc `0xcf5f83...b2bbf5`; bsc `0xd75ffa...ce3f63`; bsc `0xe3f309...2176aa`; bsc `0xe604fd...0adbe1`; bsc `0xe64bfe...c83bbf`; bsc `0xf553e1...2fc7eb`; bsc `0xf8ce90...fc0846`; bsc `0xfeb902...e3d072` | ✅ Audited |
| VaultDAI | core_logic | ethereum | [`0xe85c85...951dac`](./contracts/ethereum-1/0xe85c8581e60d7cd32bbfd86303d2a4fa6a951dac/) | ✅ Audited |
| VaultFarm | core_logic | ethereum | 4 deployments: ethereum [`0x1571ed...19f651`](./contracts/ethereum-1/0x1571ed0bed4d987fe2b498ddbae7dfa19519f651/); ethereum `0x9f45f1...468b27`; ethereum `0xa6f539...7f15f7`; ethereum `0xd111bd...b1f47c` | ✅ Audited |
| VaultMigratable_1INCH2SUSHI | core_logic | ethereum | 4 deployments: ethereum [`0x4bf633...c5b99e`](./contracts/ethereum-1/0x4bf633a09bd593f6fb047db3b4c25ef5b9c5b99e/); ethereum `0x859222...d6874a`; ethereum `0x8e5303...86e32d`; ethereum `0xd16239...48d690` | ✅ Audited |
| VaultMigratable_DAIBASV2 | core_logic | ethereum | 2 deployments: ethereum [`0x193c55...02e2d1`](./contracts/ethereum-1/0x193c55abe92744f430259c36dc972a30cf02e2d1/); ethereum `0xf8b723...d17858` | ✅ Audited |
| VaultMigratable_KLONX | core_logic | ethereum | 2 deployments: ethereum [`0x6dffd0...2e44bb`](./contracts/ethereum-1/0x6dffd01c0884fd832398ba89873ec2e4d72e44bb/); ethereum `0xb4e3fc...64ba61` | ✅ Audited |
| VaultMigratable_Pancake_BELT_BNB | core_logic | bsc | 2 deployments: bsc [`0x15f62f...7e696b`](./contracts/bsc-56/0x15f62fe6a8ff19e710525ae285ee2b01647e696b/); bsc `0xad941e...ea5288` | ✅ Audited |
| VaultMigratable_Pancake_BUSD_BNB | core_logic | bsc | 4 deployments: bsc [`0x0c4c25...a289f0`](./contracts/bsc-56/0x0c4c25f6f20d2d4d789433b9953fb21354a289f0/); bsc `0x3de9c7...63476c`; bsc `0x6b95e2...e7a2dd`; bsc `0xf7a3a9...283d34` | ✅ Audited |
| VaultMigratable_Pancake_ETH_BNB | core_logic | bsc | 6 deployments: bsc [`0x6895bd...b9f0c0`](./contracts/bsc-56/0x6895bdb740c1ae2b39f94d7d285e730a88b9f0c0/); bsc `0x8d005a...4c0796`; bsc `0x91d88f...640e8f`; bsc `0x9e54db...c294d4`; bsc `0xdae22b...81cf03`; bsc `0xe1f9a3...d44633` | ✅ Audited |
| VaultMigratable_Pancake_ICE_BNB | core_logic | bsc | 2 deployments: bsc [`0x1c4adf...6a583f`](./contracts/bsc-56/0x1c4adff419f6b91e51d0ade953c9bbf5d16a583f/); bsc `0xcf4e33...ff40ff` | ✅ Audited |
| VaultMigratable_Pancake_XVS_BNB | core_logic | bsc | 2 deployments: bsc [`0x0bb940...c99425`](./contracts/bsc-56/0x0bb94083d5718a8cb716fadc016187a0d6c99425/); bsc `0x15dbf9...cb454c` | ✅ Audited |
| VaultMigratable_Tricrypto | core_logic | ethereum | 2 deployments: ethereum [`0x33ed34...a832ab`](./contracts/ethereum-1/0x33ed34dd7c40ef807356316b484d595ddda832ab/); ethereum `0x5c6cdf...f871da` | ✅ Audited |
| VaultProxy | core_logic | ethereum | 15 deployments: ethereum [`0x21e223...8c6e13`](./contracts/ethereum-1/0x21e22315bcfcba1c02fc40903bf02b3bd78c6e13/); ethereum `0x380d18...e47085`; ethereum `0x43dd45...2d3a62`; ethereum `0x45809a...5ec2bc`; ethereum `0x5833e0...2a42e8`; ethereum `0x5c5f87...f0c7a5`; ethereum `0x7ac7cd...ece3f0`; ethereum `0x7e3c42...b8ef83`; ethereum `0x84bae3...bb06af`; ethereum `0xbaea43...8caa6e`; ethereum `0xd3093e...fe0eb1`; ethereum `0xe6bf65...368427`; bsc `0x6d3864...8a3121`; bsc `0xb75f4c...f83bb8`; bsc `0xffbd10...4d3e4f` | ✅ Audited |
| VaultUSDC | core_logic | ethereum | [`0xc3f7ff...e8326f`](./contracts/ethereum-1/0xc3f7ffb5d5869b3ade9448d094d81b0521e8326f/) | ✅ Audited |
| VaultUSDT | core_logic | ethereum | [`0xc7ee21...3d9f2f`](./contracts/ethereum-1/0xc7ee21406bb581e741fbb8b21f213188433d9f2f/) | ✅ Audited |
| VaultV2 | core_logic | ethereum | 8 deployments: ethereum [`0x053c80...de7c9c`](./contracts/ethereum-1/0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c/); ethereum `0x5d9d25...4d4ecb`; ethereum `0x71b9ec...a95fa5`; ethereum `0x81a276...c52b30`; ethereum `0xab7fa2...b1e04c`; ethereum `0xc27bfe...7460ba`; ethereum `0xf0358e...7bedbe`; ethereum `0xfe09e5...aa573e` | ✅ Audited |
| VaultYCRV | core_logic | ethereum | [`0xf2b223...d35f3a`](./contracts/ethereum-1/0xf2b223eb3d2b382ead8d85f3c1b7ef87c1d35f3a/) | ✅ Audited |
| VenusFoldStrategyMainnet_BETH | core_logic | bsc | 8 deployments: bsc [`0x3f14c7...7d88d4`](./contracts/bsc-56/0x3f14c78fb55d53e9c897e59af0ff0e54b37d88d4/); bsc `0x6f8a97...465517`; bsc `0x99b0d6...5cf9bf`; bsc `0x9c90e9...6595a4`; bsc `0xaf2d2e...eb308e`; bsc `0xb75062...4df8c2`; bsc `0xb83f69...6dfe4e`; bsc `0xf7d6c4...d88747` | ✅ Audited |
| VenusFoldStrategyMainnet_BTCB | core_logic | bsc | 8 deployments: bsc [`0x1b7e12...ce9279`](./contracts/bsc-56/0x1b7e1226ceee76a4acb079c76b532d8d02ce9279/); bsc `0x5365a2...7384fb`; bsc `0x5c6bc2...a9230a`; bsc `0x8134bc...c691fe`; bsc `0x97a69d...ab4a76`; bsc `0xb99c35...45887e`; bsc `0xc5ddd0...6a83ca`; bsc `0xf0109e...65a0a4` | ✅ Audited |
| VenusFoldStrategyMainnet_BUSD | core_logic | bsc | 3 deployments: bsc [`0x321e94...983185`](./contracts/bsc-56/0x321e9402479ae47b4de53046bcc418b26d983185/); bsc `0x6f3541...1558d1`; bsc `0xb858ec...ba2492` | ✅ Audited |
| VenusFoldStrategyMainnet_DAI | core_logic | bsc | 4 deployments: bsc [`0x11b315...78f7c9`](./contracts/bsc-56/0x11b3154f12551ec4ae665aaebf88dc21f378f7c9/); bsc `0x2f4197...55c521`; bsc `0x46967d...feffe0`; bsc `0x527351...75cb4b` | ✅ Audited |
| VenusFoldStrategyMainnet_ETH | core_logic | bsc | 7 deployments: bsc [`0x158edb...42907c`](./contracts/bsc-56/0x158edb94d0bfc093952fb3009deeed613042907c/); bsc `0x58db12...cc1926`; bsc `0x598c48...1f63d9`; bsc `0x74f2f3...e3c2ed`; bsc `0x79cfeb...2b0a09`; bsc `0x7af445...4be9b8`; bsc `0xf1499a...8b53c2` | ✅ Audited |
| VenusFoldStrategyMainnet_USDC | core_logic | bsc | 3 deployments: bsc [`0x6aa85f...8468f4`](./contracts/bsc-56/0x6aa85f9faf4639c6f290e04815b2aa45d78468f4/); bsc `0x9a7797...53002a`; bsc `0xb5fd62...243313` | ✅ Audited |
| VenusFoldStrategyMainnet_USDT | core_logic | bsc | 3 deployments: bsc [`0x11babd...a54e56`](./contracts/bsc-56/0x11babd0b619bec0bd1b7b2689f4cd11b25a54e56/); bsc `0xb1b0ca...af09c3`; bsc `0xc4f850...1d0e90` | ✅ Audited |
| VenusFoldStrategyMainnet_WBNB | core_logic | bsc | 5 deployments: bsc [`0x01fcb5...a4ce33`](./contracts/bsc-56/0x01fcb5bc16e8d945ba276dccfee068231da4ce33/); bsc `0x18c432...8e9533`; bsc `0x59565d...d87ad4`; bsc `0x70aec9...16308e`; bsc `0xa8d087...87775c` | ✅ Audited |
| VenusFoldStrategyMainnet_XVS | core_logic | bsc | 5 deployments: bsc [`0x2f97d9...f6f244`](./contracts/bsc-56/0x2f97d9f870a773186cb01742ff298777bbf6f244/); bsc `0x71fb9b...eff86d`; bsc `0x826a37...ddb909`; bsc `0x870495...bc097d`; bsc `0xb4d1d6...39ff95` | ✅ Audited |
| VenusFoldStrategyV2Mainnet_BTCB | core_logic | bsc | 2 deployments: bsc [`0x0f1ed3...539a6e`](./contracts/bsc-56/0x0f1ed3229b9f23ff2f94533c30a18fd21e539a6e/); bsc `0x93e7f9...ad0dbe` | ✅ Audited |
| VenusFoldStrategyV2Mainnet_BUSD | core_logic | bsc | 2 deployments: bsc [`0x883c0c...7861b2`](./contracts/bsc-56/0x883c0c3efe6356e785c6776501575d1a367861b2/); bsc `0x8e05ff...64ea39` | ✅ Audited |
| VenusFoldStrategyV2Mainnet_USDC | core_logic | bsc | 2 deployments: bsc [`0x0fa8b4...bb5770`](./contracts/bsc-56/0x0fa8b424b480d11fd9330a9c36f94874acbb5770/); bsc `0xc9c1ac...574b40` | ✅ Audited |
| VenusFoldStrategyV2Mainnet_USDT | core_logic | bsc | 2 deployments: bsc [`0xc24da7...5a311e`](./contracts/bsc-56/0xc24da7a6b5adc8771588d58b6109ef52c95a311e/); bsc `0xdc2724...40d07f` | ✅ Audited |
| VenusFoldStrategyV2Mainnet_WBNB | core_logic | bsc | 2 deployments: bsc [`0x5a6700...879f49`](./contracts/bsc-56/0x5a6700b7a13dea793c15d60c3d6887071b879f49/); bsc `0x869c12...76d49e` | ✅ Audited |
| VenusFoldStrategyV2Mainnet_XVS | core_logic | bsc | 2 deployments: bsc [`0x808bcd...9a4eaa`](./contracts/bsc-56/0x808bcdafcb9e644aa89af18da386fd41ee9a4eaa/); bsc `0xa58c65...6dbb4e` | ✅ Audited |
| VenusVAIStrategyMainnet | core_logic | bsc | 4 deployments: bsc [`0x1050f1...a950ff`](./contracts/bsc-56/0x1050f1876af8a06ba550fe2106ccfcf65ea950ff/); bsc `0x19f8ce...aa9919`; bsc `0x611db2...e68caa`; bsc `0xb492fa...7a11bc` | ✅ Audited |
| WETHCreamNoFoldStrategy | core_logic | ethereum | 2 deployments: ethereum [`0x4e015a...19ebcf`](./contracts/ethereum-1/0x4e015af8e1c5eb020f91063661cc5ce43719ebcf/); ethereum `0xcf477f...463bf1` | ✅ Audited |
| XSushiStrategyUpgradeableMainnet | core_logic | ethereum | [`0x40d94a...a58999`](./contracts/ethereum-1/0x40d94aefec6ac00fa80689a38135d83eeaa58999/) | ✅ Audited |
| YelHodlStrategyMainnet_YEL_WETH | core_logic | ethereum | 2 deployments: ethereum [`0x21396b...de0197`](./contracts/ethereum-1/0x21396b545f70617fc957b0858610bb1626de0197/); ethereum `0xf42c6b...8f95d2` | ✅ Audited |
| YelStrategyMainnet_YEL_WETH | core_logic | ethereum | 2 deployments: ethereum [`0x5258a2...4ff5f8`](./contracts/ethereum-1/0x5258a2be7c16215175faf28486d248af5d4ff5f8/); ethereum `0xba6b43...bc59cb` | ✅ Audited |

### ⚠️ Verified + Unaudited (142)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AmpliFARM | unknown | bsc | 2 deployments: bsc [`0x8cf3f6...fe883d`](./contracts/bsc-56/0x8cf3f692cad5bfa94817fb425a2871ba11fe883d/); bsc `0xf10829...a4ea26` | ⚠️ Unaudited |
| Amplifier | unknown | bsc | 2 deployments: bsc [`0x20099e...782d14`](./contracts/bsc-56/0x20099e925aad6d77803f6e9f3e3dae4ea4782d14/); bsc `0x633a05...14ad6a` | ⚠️ Unaudited |
| AmpliViewer | periphery | bsc | [`0x0f0cd8...0f63f2`](./contracts/bsc-56/0x0f0cd8ecf7d13245a54e785f8c3b67dea80f63f2/) | ⚠️ Unaudited |
| AnyswapV3ERC20 | token | bsc | 49 deployments: bsc [`0x021750...aba1d5`](./contracts/bsc-56/0x021750e46a47b2a02f4f860c93dcc774b1aba1d5/); bsc `0x049d68...3a3c7a`; bsc `0x08f6fe...33e19b`; bsc `0x148e03...defa2a`; bsc `0x1ac0d7...d02bd1`; bsc `0x1f6367...f7b52f`; bsc `0x1f7216...f96eae`; bsc `0x2442af...03a6c9`; bsc `0x2e8fd8...98ab3f`; bsc `0x2f60c2...101e76`; bsc `0x351614...5464ac`; bsc `0x354bce...3c4888`; bsc `0x37bdfd...0e3734`; bsc `0x43fbbe...905285`; bsc `0x4b5c23...d33743`; bsc `0x4d3386...fb3c6a`; bsc `0x4ec16d...978a7b`; bsc `0x564bef...41b9f3`; bsc `0x58a746...b5328b`; bsc `0x5986d5...0a71da`; bsc `0x627524...b671fd`; bsc `0x6a545f...9e6c29`; bsc `0x72449e...3963fe`; bsc `0x753fbc...87dfc9`; bsc `0x7dd300...0175a8`; bsc `0x812764...1e82a0`; bsc `0x82f8cb...aafa62`; bsc `0x84c882...106117`; bsc `0x897c56...7427a8`; bsc `0x961157...50be17`; bsc `0x9899a9...4ff9ff`; bsc `0x998890...c77d34`; bsc `0x9e0846...17da21`; bsc `0xa86bfc...b9bddf`; bsc `0xab671e...75bb9e`; bsc `0xad260f...30b665`; bsc `0xb44f26...80eae8`; bsc `0xbfaf32...d1503d`; bsc `0xbfdcce...18c3b6`; bsc `0xc055c6...314d3a`; bsc `0xc417b4...f4d0a5`; bsc `0xc4726d...68ee3c`; bsc `0xce5728...5e0ffc`; bsc `0xceebde...9570de`; bsc `0xe1e66e...8724e7`; bsc `0xeaf261...156aef`; bsc `0xf0199b...fa6c17`; bsc `0xf4a718...fdf8af`; bsc `0xfa850e...27416f` | ⚠️ Unaudited |
| AnyswapV3ERC20Factory | registry | bsc | [`0x3d3db3...4766cf`](./contracts/bsc-56/0x3d3db32a742d5bac908ad137d90430b1cd4766cf/) | ⚠️ Unaudited |
| AutoStake | unknown | ethereum | 2 deployments: ethereum [`0x12d83d...1109f0`](./contracts/ethereum-1/0x12d83dbabef9404a807c872a8fe92b6c041109f0/); ethereum `0x25550c...00fc50` | ⚠️ Unaudited |
| AutoStakeMultiAsset | unknown | ethereum | [`0xa239d5...5d32f4`](./contracts/ethereum-1/0xa239d5b5bf3deeb53e6e19635e82edce515d32f4/) | ⚠️ Unaudited |
| BancorDex | unknown | ethereum | 3 deployments: ethereum [`0x61e7c4...3ad37f`](./contracts/ethereum-1/0x61e7c4d48285f02ef6f60153508bd9ed0b3ad37f/); ethereum `0xe227a8...11413c`; ethereum `0xf493fc...ced071` | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_BAC_DAI | core_logic | ethereum | [`0x65fefa...15ed9f`](./contracts/ethereum-1/0x65fefab5ebeb38cbde82c4c20e226834db15ed9f/) | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_BAC_DAIV2 | core_logic | ethereum | [`0x6b4778...927894`](./contracts/ethereum-1/0x6b477831b8af02393f1fedd36956418ce9927894/) | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_BAC_DAIV3 | core_logic | ethereum | 2 deployments: ethereum [`0x05f9cd...ecb39b`](./contracts/ethereum-1/0x05f9cd69cefc73872731911293e3734d36ecb39b/); ethereum `0x841f5a...d126a5` | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_BAC_DAIV4 | core_logic | ethereum | [`0x51ebe1...6bbf0f`](./contracts/ethereum-1/0x51ebe128f197bbf087ce79db51960eb6e86bbf0f/) | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_DAI_BAS | core_logic | ethereum | [`0x61ecfe...fd7d36`](./contracts/ethereum-1/0x61ecfe8eb3522ec685c70f4732cf32c39cfd7d36/) | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_DAI_BASV2 | core_logic | ethereum | [`0x1adafe...079361`](./contracts/ethereum-1/0x1adafe68f46e0aecd5364b85966c8c16d4079361/) | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_DAI_BASV3 | core_logic | ethereum | 2 deployments: ethereum [`0x2ab43e...af948d`](./contracts/ethereum-1/0x2ab43e7fb17dbbbcc5bb31a7f08e9a2d8baf948d/); ethereum `0xad898d...678e16` | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_DAI_BASV4 | core_logic | ethereum | [`0xfd4e29...5d5ff8`](./contracts/ethereum-1/0xfd4e29e4869112abbec6846151f6d47fd25d5ff8/) | ⚠️ Unaudited |
| BasisGold2FarmStrategyMainnet_DAI_BSG | core_logic | ethereum | [`0x8d6403...9055ed`](./contracts/ethereum-1/0x8d640378c983c6aab076bdb5d86a58f9179055ed/) | ⚠️ Unaudited |
| BasisGold2FarmStrategyMainnet_DAI_BSGS | core_logic | ethereum | [`0x3f3718...792eb3`](./contracts/ethereum-1/0x3f37185399537e95686a66247514de55c8792eb3/) | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_BAC | core_logic | ethereum | [`0xb075ba...828ae2`](./contracts/ethereum-1/0xb075ba5dc253e39376ac044182be13315e828ae2/) | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_DAI | core_logic | ethereum | [`0x1669c1...5ebfa8`](./contracts/ethereum-1/0x1669c1a1e8d6474ffccb33d1e5f3b3de8e5ebfa8/) | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_DAI_BSG | core_logic | ethereum | [`0x296606...a7c6ed`](./contracts/ethereum-1/0x296606a0b0c4560db4c9a650f35340854ca7c6ed/) | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_DAI_BSGS | core_logic | ethereum | [`0x9bedf3...39037b`](./contracts/ethereum-1/0x9bedf37edb278e6840328453c256c70d6139037b/) | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_DSD | core_logic | ethereum | [`0x185f97...681810`](./contracts/ethereum-1/0x185f97af588c0d416da1bc3828234f94f4681810/) | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_ESD | core_logic | ethereum | [`0x7e2a45...7361ab`](./contracts/ethereum-1/0x7e2a45ea5223ed02fe80e5020aa650121a7361ab/) | ⚠️ Unaudited |
| bDollarStrategyMainnet_BDO_BNB | core_logic | bsc | 2 deployments: bsc [`0x0477b3...58864e`](./contracts/bsc-56/0x0477b3b746f99010d255f6556444039e2e58864e/); bsc `0x8f2f86...a09650` | ⚠️ Unaudited |
| BeltSingleAssetStrategyMainnet_BeltETH | core_logic | bsc | [`0x78ac81...13dd5b`](./contracts/bsc-56/0x78ac817a889849b7b362600e391229a90913dd5b/) | ⚠️ Unaudited |
| BoostProxy | unknown | bsc | [`0xa4571f...4daec3`](./contracts/bsc-56/0xa4571fdef9196e60b2cce242984a48aef04daec3/) | ⚠️ Unaudited |
| BoostRedirection | unknown | bsc | 2 deployments: bsc [`0x48b145...b91fe9`](./contracts/bsc-56/0x48b145fd852929c30ed9707ec3cd03911eb91fe9/); bsc `0x572bc5...834a92` | ⚠️ Unaudited |
| BoostStaking | unknown | bsc | 3 deployments: bsc [`0x27d732...d77d5f`](./contracts/bsc-56/0x27d7321443d5c9d2ab692897c248d97386d77d5f/); bsc `0xb0fb3d...898d1f`; bsc `0xe10f2e...44d94a` | ⚠️ Unaudited |
| BorrowRecipient | operational_periphery | ethereum | 2 deployments: ethereum [`0x108dbb...03c58e`](./contracts/ethereum-1/0x108dbb31b3b5926994aeb3779225adf44503c58e/); ethereum `0xdc2622...ecc0f0` | ⚠️ Unaudited |
| ComplifiStrategyMainnet_COMFI_WETH | core_logic | ethereum | [`0x69672c...4b60a6`](./contracts/ethereum-1/0x69672c04601d62ce5f161a258ff24e03914b60a6/) | ⚠️ Unaudited |
| CRVStrategy3PoolMainnet | core_logic | ethereum | [`0x0623cf...3f5c8c`](./contracts/ethereum-1/0x0623cf5d4cd761e2c237fb02d1fa6424e03f5c8c/) | ⚠️ Unaudited |
| CRVStrategyBUSDMainnet | core_logic | ethereum | [`0x2b7caa...e64045`](./contracts/ethereum-1/0x2b7caa7d87c01152a82c266791ada69ccfe64045/) | ⚠️ Unaudited |
| CRVStrategyEURSMainnet | core_logic | ethereum | [`0x6d28d8...f52285`](./contracts/ethereum-1/0x6d28d86ff925d2747d60a2b5c3e045f892f52285/) | ⚠️ Unaudited |
| CRVStrategyEURSV2Mainnet | core_logic | ethereum | 3 deployments: ethereum [`0x7f31e0...456c19`](./contracts/ethereum-1/0x7f31e05ce311a8b457e877933349a29c92456c19/); ethereum `0x807a63...c4a60a`; ethereum `0x829d3e...1da2ad` | ⚠️ Unaudited |
| CRVStrategyGUSDMainnet | core_logic | ethereum | 2 deployments: ethereum [`0xa50591...853acf`](./contracts/ethereum-1/0xa505917c1326670451eff9ea75fe0d49a3853acf/); ethereum `0xa63852...37bdf7` | ⚠️ Unaudited |
| CRVStrategyHBTCMainnet | core_logic | ethereum | [`0x5e10a2...d0151b`](./contracts/ethereum-1/0x5e10a2a23393118306cce080e3d3fc5447d0151b/) | ⚠️ Unaudited |
| CRVStrategyHUSDMainnet | core_logic | ethereum | [`0x590556...b40000`](./contracts/ethereum-1/0x5905569d78ed1fa22299eab74ef0443d02b40000/) | ⚠️ Unaudited |
| CRVStrategyLINKMainnet | core_logic | ethereum | [`0x3a0073...977d04`](./contracts/ethereum-1/0x3a0073726e60fd202fd228a9c88288f331977d04/) | ⚠️ Unaudited |
| CRVStrategyOBTCMainnet | core_logic | ethereum | [`0x2e916c...ac6454`](./contracts/ethereum-1/0x2e916cf581547c1641bd259c01507136b4ac6454/) | ⚠️ Unaudited |
| CRVStrategySTETHMainnet | core_logic | ethereum | [`0x52d8f0...b91192`](./contracts/ethereum-1/0x52d8f04f071dd397c71514853a58664613b91192/) | ⚠️ Unaudited |
| CRVStrategySwerveUSDTMainnet | core_logic | ethereum | 3 deployments: ethereum [`0x01fcb5...a4ce33`](./contracts/ethereum-1/0x01fcb5bc16e8d945ba276dccfee068231da4ce33/); ethereum `0x0477b3...58864e`; ethereum `0x892171...5f798c` | ⚠️ Unaudited |
| CRVStrategyTBTCMixedMainnet | core_logic | ethereum | [`0xe26d94...b73ef9`](./contracts/ethereum-1/0xe26d94ded203f5402882d19fef92ee04f6b73ef9/) | ⚠️ Unaudited |
| CRVStrategyUSDNMainnet | core_logic | ethereum | [`0x50f3cf...7888b7`](./contracts/ethereum-1/0x50f3cfb398a25a5918b27c77465e9c3ede7888b7/) | ⚠️ Unaudited |
| CRVStrategyUSDPMainnet | core_logic | ethereum | 2 deployments: ethereum [`0x127bfd...7bca66`](./contracts/ethereum-1/0x127bfdc843a35607b024781324311522907bca66/); ethereum `0xefca88...5a6600` | ⚠️ Unaudited |
| CRVStrategyUSTMainnet | core_logic | ethereum | 2 deployments: ethereum [`0xc55f8b...ed248a`](./contracts/ethereum-1/0xc55f8be3cc55cae1bfbe5558d9e5b44906ed248a/); ethereum `0xe199d7...0edc64` | ⚠️ Unaudited |
| CRVStrategyWRenBTCMixMainnet | core_logic | ethereum | 2 deployments: ethereum [`0x395255...c24e04`](./contracts/ethereum-1/0x3952555b3be488f51f0b03315a85560a83c24e04/); ethereum `0xaf2d2e...eb308e` | ⚠️ Unaudited |
| DEGOSimpleStrategy | core_logic | ethereum | 3 deployments: ethereum [`0x8f2103...c6a1d5`](./contracts/ethereum-1/0x8f210338f4eb4073480e35adbd01d7ffd4c6a1d5/); ethereum `0x9594ca...1659ba`; ethereum `0xa23c6f...ae281a` | ⚠️ Unaudited |
| EllipsisFUSDTStrategyMainnet | core_logic | bsc | [`0xf8f749...03d9f2`](./contracts/bsc-56/0xf8f7498b051f4d2428354b083227a0bd6d03d9f2/) | ⚠️ Unaudited |
| ExclusiveRewardPool | core_logic | ethereum | 2 deployments: ethereum [`0x8f5adc...99436c`](./contracts/ethereum-1/0x8f5adc58b32d4e5ca02eac0e293d35855999436c/); ethereum `0xf50be7...bf7ce4` | ⚠️ Unaudited |
| FarmOracle | operational_periphery | ethereum | [`0xb6dbc3...f333d8`](./contracts/ethereum-1/0xb6dbc34ebf8e608e4e826ecfbcebc16903f333d8/) | ⚠️ Unaudited |
| FeeRewardForwarderV2 | unknown | bsc | [`0x2df3c2...085f94`](./contracts/bsc-56/0x2df3c237d1ca034f6299ec00257e95528d085f94/) | ⚠️ Unaudited |
| FloatStrategyMainnet_DAI | core_logic | ethereum | [`0x5526f8...fcb165`](./contracts/ethereum-1/0x5526f8ff02d9ba6540c625e1bc51e440c7fcb165/) | ⚠️ Unaudited |
| FloatStrategyMainnet_USDC | core_logic | ethereum | [`0x910872...2ff4f1`](./contracts/ethereum-1/0x91087247391fe889033fd5c2fd29110c372ff4f1/) | ⚠️ Unaudited |
| FloatStrategyMainnet_USDT | core_logic | ethereum | [`0x93577c...e97537`](./contracts/ethereum-1/0x93577cf141fa174de6296185610d4bd0d2e97537/) | ⚠️ Unaudited |
| FloatStrategyMainnet_WBTC | core_logic | ethereum | [`0x9e3158...2161ad`](./contracts/ethereum-1/0x9e315822a18f8d332782d1c3f3f24bb10d2161ad/) | ⚠️ Unaudited |
| FoxStrategyMainnet_FOX_ETH | core_logic | ethereum | [`0x99ab03...9ddf36`](./contracts/ethereum-1/0x99ab03293787f11f332caa9cc9b68807ee9ddf36/) | ⚠️ Unaudited |
| GamestopStrategyMainnet_DSD | core_logic | ethereum | [`0x8b6bef...6f5464`](./contracts/ethereum-1/0x8b6bef8d373d959a5f20d959bc44ebca876f5464/) | ⚠️ Unaudited |
| GamestopStrategyMainnet_ESD | core_logic | ethereum | [`0x9b29fb...b6dc80`](./contracts/ethereum-1/0x9b29fb315be3333281a6f7c62ebff799a6b6dc80/) | ⚠️ Unaudited |
| GlobalIncentivesExecutor | unknown | bsc | [`0x0acbd1...6d6f7b`](./contracts/bsc-56/0x0acbd1f071290e94ed175dd59fe3df5e766d6f7b/) | ⚠️ Unaudited |
| GlobalIncentivesHelper | periphery | bsc | [`0x19b3ab...e8de15`](./contracts/bsc-56/0x19b3aba7ba46f9cac08ba2872cbcf8f96ae8de15/) | ⚠️ Unaudited |
| Grain | unknown | ethereum | [`0x6589fe...25e58e`](./contracts/ethereum-1/0x6589fe1271a0f29346796c6baf0cdf619e25e58e/) | ⚠️ Unaudited |
| HardWorkHelper | periphery | ethereum | 2 deployments: ethereum [`0x2c748e...c17c19`](./contracts/ethereum-1/0x2c748e4f5247deccafdd5115bbb8646671c17c19/); ethereum `0xa9acab...da7f96` | ⚠️ Unaudited |
| HarvestAP | operational_periphery | ethereum | [`0xab6628...4c5917`](./contracts/ethereum-1/0xab662863ce609f4cf32601601ba64653e04c5917/) | ⚠️ Unaudited |
| IdleBorrowableStrategyUSDTMainnet | core_logic | ethereum | 2 deployments: ethereum [`0x0f28f4...060e7c`](./contracts/ethereum-1/0x0f28f4b438b7a7ff3726d565d6a344e80e060e7c/); ethereum `0xbfa26f...f67dde` | ⚠️ Unaudited |
| IdleStrategyDAIMainnet | core_logic | ethereum | 4 deployments: ethereum [`0x9a6de1...419774`](./contracts/ethereum-1/0x9a6de10fc9b9d1ca9df3caf306ed60ef1c419774/); ethereum `0x9f3571...1c465c`; ethereum `0xfab83a...a0c008`; ethereum `0xfde5df...5e98d4` | ⚠️ Unaudited |
| IdleStrategyTUSDMainnet | core_logic | ethereum | 2 deployments: ethereum [`0x1a69f8...2e488c`](./contracts/ethereum-1/0x1a69f857103de1b531ab7cf935ffc6a46c2e488c/); ethereum `0xc78589...504695` | ⚠️ Unaudited |
| IdleStrategyUSDCMainnet | core_logic | ethereum | 4 deployments: ethereum [`0x6447ed...6a2d5e`](./contracts/ethereum-1/0x6447ed2e0a95f8df84a82beacbb17a003b6a2d5e/); ethereum `0x93cee3...c79c3d`; ethereum `0xa5f125...5d0624`; ethereum `0xfcf1c4...11086e` | ⚠️ Unaudited |
| IdleStrategyUSDTMainnet | core_logic | ethereum | 4 deployments: ethereum [`0x49938d...a08da6`](./contracts/ethereum-1/0x49938d0e7ab1f224ac091058e8638e4b8da08da6/); ethereum `0x5b96d6...366194`; ethereum `0xc7d9aa...e8fb1a`; ethereum `0xd52971...bd8a44` | ⚠️ Unaudited |
| IdleStrategyWBTCMainnet | core_logic | ethereum | 4 deployments: ethereum [`0x2f54ec...d651a3`](./contracts/ethereum-1/0x2f54ecc31757b6c068c6c3caef65c35485d651a3/); ethereum `0x3c3615...a3648a`; ethereum `0x6561e5...283e90`; ethereum `0xb8e9db...649c6e` | ⚠️ Unaudited |
| IdleStrategyWETHMainnet | core_logic | ethereum | [`0x1ffebb...25d3bf`](./contracts/ethereum-1/0x1ffebbc55e2b85dab87cf7d11558180dbe25d3bf/) | ⚠️ Unaudited |
| iFarmStrategy | core_logic | ethereum | 2 deployments: ethereum [`0xdc1f8d...805f1f`](./contracts/ethereum-1/0xdc1f8dda71bf936b486b42d2f2db54efe2805f1f/); ethereum `0xf2004f...5b2bcc` | ⚠️ Unaudited |
| IndexStrategyMainnet_MVI_ETH | core_logic | ethereum | [`0x991c40...6e9522`](./contracts/ethereum-1/0x991c40f931446321e3219a867a36b505b76e9522/) | ⚠️ Unaudited |
| InvestmentVaultStrategy | operational_periphery | ethereum | 9 deployments: ethereum [`0x104cbe...7a0b87`](./contracts/ethereum-1/0x104cbe6abff378d097218c844391154b377a0b87/); ethereum `0x1823bd...3680d4`; ethereum `0x189e6f...71d5f6`; ethereum `0x44173f...26cc7a`; ethereum `0x639422...379538`; ethereum `0x754b63...2cb257`; ethereum `0x9ba896...fcc3a5`; ethereum `0xa96865...03a6f8`; ethereum `0xbf31d6...a3b78b` | ⚠️ Unaudited |
| Klondike2FarmStrategyMainnet_KXUSD_DAI | core_logic | ethereum | 2 deployments: ethereum [`0x2c92c7...73b732`](./contracts/ethereum-1/0x2c92c7f94761746a59cd8d6857ac82168573b732/); ethereum `0xa03833...817e16` | ⚠️ Unaudited |
| Klondike2FarmStrategyMainnet_WBTC_KBTC | core_logic | ethereum | 2 deployments: ethereum [`0x5334cf...ba7861`](./contracts/ethereum-1/0x5334cf3a2006f05f879f8677a6a1fb94c6ba7861/); ethereum `0x95665e...2a6d32` | ⚠️ Unaudited |
| Klondike2FarmStrategyMainnet_WBTC_KBTCV2 | core_logic | ethereum | [`0x6cb5e2...85812f`](./contracts/ethereum-1/0x6cb5e2fc7c258a1ec07f6a251f8e67a4e485812f/) | ⚠️ Unaudited |
| Klondike2FarmStrategyMainnet_WBTC_KLON | core_logic | ethereum | 2 deployments: ethereum [`0x1a0b8b...98f248`](./contracts/ethereum-1/0x1a0b8b5c603cac03b3b6b7a9679f5e2c1e98f248/); ethereum `0xd7e7d5...927ab6` | ⚠️ Unaudited |
| Klondike2FarmStrategyMainnet_WBTC_KLONX | core_logic | ethereum | 2 deployments: ethereum [`0x170f77...45364f`](./contracts/ethereum-1/0x170f77e70e488fb7d486ab916e305ca85d45364f/); ethereum `0x5ea131...9a262e` | ⚠️ Unaudited |
| KlondikeStrategyMainnet_renBTC | core_logic | ethereum | [`0x323c72...eb3c09`](./contracts/ethereum-1/0x323c726c899ca9fb7b747ff61bc30183bdeb3c09/) | ⚠️ Unaudited |
| LiftStrategyMainnet_lfBTC_LIFT | core_logic | ethereum | 2 deployments: ethereum [`0x6091bb...26363f`](./contracts/ethereum-1/0x6091bbf60ca294f223b03b7c05f98cae1226363f/); ethereum `0xa1ddb9...df1972` | ⚠️ Unaudited |
| LiftStrategyMainnet_wBTC_lfBTC | core_logic | ethereum | [`0x4157be...b8b274`](./contracts/ethereum-1/0x4157bebdebb508a62874c841b07ae4013db8b274/) | ⚠️ Unaudited |
| MegaFactory | registry | ethereum | [`0xe1ec91...6d4f4d`](./contracts/ethereum-1/0xe1ec9151eb8d9a3451b8f623ce8b62632a6d4f4d/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0x8609fe...7ec16b`](./contracts/ethereum-1/0x8609fe43e38448fa0d5f7ae9852570e90b7ec16b/); ethereum `0xee24de...1958eb` | ⚠️ Unaudited |
| MerkleDistributorUSDT | operational_periphery | ethereum | 2 deployments: ethereum [`0x2a7b56...37c498`](./contracts/ethereum-1/0x2a7b568729113ab29298d3fae7d46f107637c498/); ethereum `0xba2651...580568` | ⚠️ Unaudited |
| MinterExecutor | unknown | ethereum | [`0xa8558d...e3b15e`](./contracts/ethereum-1/0xa8558d9460bb13e50542359974e67a59dbe3b15e/) | ⚠️ Unaudited |
| MinterHelper | periphery | ethereum | 2 deployments: ethereum [`0x973d04...182916`](./contracts/ethereum-1/0x973d0408dee278203c8613178c1732fd60182916/); ethereum `0xe5c6be...467fd4` | ⚠️ Unaudited |
| MirrorMainnet_mAAPL_UST | unknown | ethereum | 3 deployments: ethereum [`0xa5a091...0d9d46`](./contracts/ethereum-1/0xa5a091fd156ff5e44f22bef544923cdc850d9d46/); ethereum `0xd01488...01d1ad`; ethereum `0xfd645a...ea4206` | ⚠️ Unaudited |
| MirrorMainnet_mAMZN_UST | unknown | ethereum | 2 deployments: ethereum [`0x0c3d0b...8c3d36`](./contracts/ethereum-1/0x0c3d0b5910b0603d68be29a647c0f6187a8c3d36/); ethereum `0x28a139...d90442` | ⚠️ Unaudited |
| MirrorMainnet_mGOOG_UST | unknown | ethereum | 2 deployments: ethereum [`0x0a6ade...c7747d`](./contracts/ethereum-1/0x0a6ade7348598e42da381b03c1c40c9ba1c7747d/); ethereum `0xddfa4b...273cbf` | ⚠️ Unaudited |
| MirrorMainnet_mNFLX_UST | unknown | ethereum | 3 deployments: ethereum [`0x4a6a55...72c7c2`](./contracts/ethereum-1/0x4a6a553d28913c0308474b9c10f34146f972c7c2/); ethereum `0x67d090...717c54`; ethereum `0x97487c...046567` | ⚠️ Unaudited |
| MirrorMainnet_mTSLA_UST | unknown | ethereum | 2 deployments: ethereum [`0x6b2245...1b422f`](./contracts/ethereum-1/0x6b2245bdf3de7b252d8dd15a902cd0e97e1b422f/); ethereum `0xb5480a...18a817` | ⚠️ Unaudited |
| MirrorMainnet_mTWTR_UST | unknown | ethereum | 2 deployments: ethereum [`0x18fbe8...5ab9b3`](./contracts/ethereum-1/0x18fbe81e56133118669660a46d050546045ab9b3/); ethereum `0x3ad961...a2e5f4` | ⚠️ Unaudited |
| MithCash2FarmStrategyMainnet_MIC_USDT | core_logic | ethereum | [`0xe12c4b...bfae72`](./contracts/ethereum-1/0xe12c4bb7b88b3cfe2d44a8e49037392b06bfae72/) | ⚠️ Unaudited |
| MithCash2FarmStrategyMainnet_MIS_USDT | core_logic | ethereum | [`0x636a37...d3e5a0`](./contracts/ethereum-1/0x636a37802da562f7d562c1915cc2a948a1d3e5a0/) | ⚠️ Unaudited |
| NoopStrategy | core_logic | ethereum | 2 deployments: ethereum [`0x3b9a75...9ec1fd`](./contracts/ethereum-1/0x3b9a7579005cf6c16878f3427062ea20079ec1fd/); ethereum `0xedef95...bf0c0f` | ⚠️ Unaudited |
| NoopStrategyStable | core_logic | ethereum | 14 deployments: ethereum [`0x041fde...89a42e`](./contracts/ethereum-1/0x041fde8473d5f66475903ca22bd33fa25e89a42e/); ethereum `0x099a92...c7b06a`; ethereum `0x0a1ad1...276e08`; ethereum `0x205971...131c82`; ethereum `0x421462...a0b91f`; ethereum `0x6b506e...85a502`; ethereum `0xabcea9...013ae6`; ethereum `0xc4c0d5...a8dd87`; ethereum `0xe5b583...7e6c16`; ethereum `0xe71545...4db436`; ethereum `0xe8ab8f...126377`; ethereum `0xedbdc6...b0425f`; ethereum `0xf066bf...d21967`; ethereum `0xf3b6ff...22824f` | ⚠️ Unaudited |
| NotifyHelperAmpliFARM | periphery | bsc | [`0xd9b13b...f4c9dc`](./contracts/bsc-56/0xd9b13b448ae9d93dc7b9fbc7facc83e9b1f4c9dc/) | ⚠️ Unaudited |
| NotifyHelperGeneric | periphery | bsc | [`0xf328f7...3b0674`](./contracts/bsc-56/0xf328f799a9c719f446e05385eb64c8a29d3b0674/) | ⚠️ Unaudited |
| NotifyHelperIFARM | periphery | ethereum | [`0x8af7eb...aab64e`](./contracts/ethereum-1/0x8af7eb5a93076f6a2316261ac8d42f97adaab64e/) | ⚠️ Unaudited |
| NotifyHelperStateful | periphery | ethereum | 5 deployments: ethereum [`0x71316a...1dd40a`](./contracts/ethereum-1/0x71316a3465e0fbcd08e665d6675caa8f7b1dd40a/); ethereum `0xbf025c...37a14d`; bsc `0x9be089...a48995`; bsc `0xde7099...2eca1c`; bsc `0xf5eaa5...83371f` | ⚠️ Unaudited |
| OneInchDex | unknown | ethereum | 2 deployments: ethereum [`0xa6031a...eae93a`](./contracts/ethereum-1/0xa6031a6d87b82b2d60df9b78e578537a2aeae93a/); ethereum `0xc5ac3a...51afac` | ⚠️ Unaudited |
| OneInchStrategy_1INCH_USDC | core_logic | ethereum | 2 deployments: ethereum [`0x8d7da9...95d8d1`](./contracts/ethereum-1/0x8d7da935c449be284b27d96b6f215d6dba95d8d1/); ethereum `0xee8c92...af484f` | ⚠️ Unaudited |
| OneInchStrategy_1INCH_WBTC | core_logic | ethereum | 2 deployments: ethereum [`0x3ecae4...31e800`](./contracts/ethereum-1/0x3ecae4fff1bb7f9b54d09972097789e00b31e800/); ethereum `0xb3ffe8...6825cc` | ⚠️ Unaudited |
| OneInchStrategy_ETH_DAI | core_logic | ethereum | 2 deployments: ethereum [`0x39ad71...1c9da3`](./contracts/ethereum-1/0x39ad7127896db44389b84c23bfa325e4161c9da3/); ethereum `0xb97fdc...e666af` | ⚠️ Unaudited |
| OneInchStrategy_ETH_ONEINCH | core_logic | ethereum | 2 deployments: ethereum [`0x1b8e2b...b2286d`](./contracts/ethereum-1/0x1b8e2b4ad303550d6872c08c5f6c024b68b2286d/); ethereum `0x45d17d...ffbbd5` | ⚠️ Unaudited |
| OneInchStrategy_ETH_USDC | core_logic | ethereum | 2 deployments: ethereum [`0x8ea2db...fa4d95`](./contracts/ethereum-1/0x8ea2db065f74064daf96ab1af9637131d5fa4d95/); ethereum `0xab9f3c...eca833` | ⚠️ Unaudited |
| OneInchStrategy_ETH_USDT | core_logic | ethereum | 2 deployments: ethereum [`0x677296...33eb83`](./contracts/ethereum-1/0x67729651d5b265b0ad3e009437a71396ae33eb83/); ethereum `0x7fb83f...1a4b0d` | ⚠️ Unaudited |
| OneInchStrategy_ETH_WBTC | core_logic | ethereum | 2 deployments: ethereum [`0x15ada3...77d17d`](./contracts/ethereum-1/0x15ada3630227a33751e986f3e77b0a073f77d17d/); ethereum `0xce2fa2...745972` | ⚠️ Unaudited |
| OneInchStrategyMainnet_1INCH_BNB | core_logic | bsc | [`0x5fd7a4...db343b`](./contracts/bsc-56/0x5fd7a4d33f23967e890ae77dd4e065bc01db343b/) | ⚠️ Unaudited |
| OneInchStrategyMainnet_1INCH_renBTC | core_logic | bsc | [`0x4909bf...8d42ad`](./contracts/bsc-56/0x4909bfafaa4d166f09e428dd96c7f481a18d42ad/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | 2 deployments: base [`0xd08a29...fb4034`](./contracts/base-8453/0xd08a2917653d4e460893203471f0000826fb4034/); base `0xe7798f...5a77ea` | ⚠️ Unaudited |
| PickleStrategy3PoolMainnet | core_logic | ethereum | [`0x885d59...534463`](./contracts/ethereum-1/0x885d59830c1fdb120b54d62790db7a6a1f534463/) | ⚠️ Unaudited |
| PickleStrategyDaiMainnet | core_logic | ethereum | [`0x81daba...7dc7cd`](./contracts/ethereum-1/0x81daba3ea5c56f36bacbfb85dbfa4986907dc7cd/) | ⚠️ Unaudited |
| PotPoolFactory | registry | ethereum | 2 deployments: ethereum [`0xb98862...fb71f0`](./contracts/ethereum-1/0xb98862d7d9eee75e21a00b9394637635b3fb71f0/); ethereum `0xbb7239...aca752` | ⚠️ Unaudited |
| Reader | unknown | ethereum | 2 deployments: ethereum [`0x1d5a37...9e1192`](./contracts/ethereum-1/0x1d5a371709f970ca2f0ebfc756dde759b29e1192/); bsc `0xf608fb...964791` | ⚠️ Unaudited |
| RegularVaultFactory | registry | ethereum | [`0x3bb28f...e2bef8`](./contracts/ethereum-1/0x3bb28f8e936c48499a4bebbe906e05e8eae2bef8/) | ⚠️ Unaudited |
| RewardDistributionSwitcher | unknown | ethereum | 2 deployments: ethereum [`0x92ddd3...f7618d`](./contracts/ethereum-1/0x92ddd3be3d178542c339533a713079cea5f7618d/); ethereum `0xc27100...4c2923` | ⚠️ Unaudited |
| ShibaswapDex | unknown | ethereum | [`0x94529e...460a53`](./contracts/ethereum-1/0x94529ee7eb499015652908eb2745cea2d4460a53/) | ⚠️ Unaudited |
| SNXRewardUniLPStrategy_BAC_DAI | core_logic | ethereum | [`0xa89cbb...184090`](./contracts/ethereum-1/0xa89cbbe676562ebd0728e6cfa431debe77184090/) | ⚠️ Unaudited |
| SNXRewardUniLPStrategy_DAI_BAS | core_logic | ethereum | [`0xa9ca70...2e4436`](./contracts/ethereum-1/0xa9ca706797702a50ea76ac9920774c8e982e4436/) | ⚠️ Unaudited |
| SNXRewardUniLPStrategy_MIC_USDT | core_logic | ethereum | [`0xa81363...95e786`](./contracts/ethereum-1/0xa81363950847ac250a2165d9fb2513ca0895e786/) | ⚠️ Unaudited |
| SNXRewardUniLPStrategy_MIS_USDT | core_logic | ethereum | [`0x940db2...2d8d7e`](./contracts/ethereum-1/0x940db279d149de71fda27fa057936265a92d8d7e/) | ⚠️ Unaudited |
| StableVaultMigrator | core_logic | ethereum | [`0xb95a02...f3ebf9`](./contracts/ethereum-1/0xb95a02e38ce0830aabffebee17d1c5925cf3ebf9/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | 2 deployments: arbitrum [`0x8553d2...c83c70`](./contracts/arbitrum-42161/0x8553d254cb6934b16f87d2e486b64bbd24c83c70/); arbitrum `0x9dca58...8d46c1` | ⚠️ Unaudited |
| StrategySwitchHelper | core_logic | ethereum | [`0xad0b07...a998f6`](./contracts/ethereum-1/0xad0b079fe32a1fd6581147796d3c9744d7a998f6/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | [`0xab0b2d...d7bbff`](./contracts/polygon-137/0xab0b2ddb9c7e440fac8e140a89c0dbcbf2d7bbff/) | ⚠️ Unaudited |
| UniStatusViewer | periphery | ethereum | 2 deployments: ethereum [`0x25c81e...e6555b`](./contracts/ethereum-1/0x25c81e249f913c94f263923421622ba731e6555b/); ethereum `0xe96141...a25c50` | ⚠️ Unaudited |
| UniVaultProxy | core_logic | ethereum | 13 deployments: ethereum [`0x04edb1...ac116b`](./contracts/ethereum-1/0x04edb1420a01547944ea57bbd4ebebae04ac116b/); ethereum `0x0a1ab9...ec0786`; ethereum `0x0b4c4e...49c7c6`; ethereum `0x1851a8...998efc`; ethereum `0x235768...0cd88c`; ethereum `0x3f16b0...d15595`; ethereum `0x45a78d...994a83`; ethereum `0x50dccf...34f6d1`; ethereum `0x5c49e0...c08b60`; ethereum `0x970cc1...bc9158`; ethereum `0xc905cc...55d4bb`; ethereum `0xe29385...8a176a`; ethereum `0xfb3871...5695bc` | ⚠️ Unaudited |
| UniversalLiquidator | operational_periphery | ethereum | [`0x875680...54dba4`](./contracts/ethereum-1/0x875680a120597732f92bf649cacfeb308e54dba4/) | ⚠️ Unaudited |
| UniversalLiquidatorRegistry | operational_periphery | ethereum | [`0x788217...dbc480`](./contracts/ethereum-1/0x7882172921e99d590e097cd600554339fbdbc480/) | ⚠️ Unaudited |
| UpgradableStrategyFactory | registry | ethereum | [`0x9cf5ab...6110b7`](./contracts/ethereum-1/0x9cf5ab89f48194c9eeaacbb47cdecee0e96110b7/) | ⚠️ Unaudited |
| VaultMigratable_Pancake_BDO_BNB | core_logic | bsc | 2 deployments: bsc [`0x12d83d...1109f0`](./contracts/bsc-56/0x12d83dbabef9404a807c872a8fe92b6c041109f0/); bsc `0x85e0d2...0ffc3b` | ⚠️ Unaudited |
| VaultMigratorStrategy | core_logic | ethereum | 11 deployments: ethereum [`0x0df24f...199d92`](./contracts/ethereum-1/0x0df24f8fd05279b34c432b165a470e9146199d92/); ethereum `0x13ca81...330fd6`; ethereum `0x3b9849...5af0db`; ethereum `0x405047...0cf806`; ethereum `0x62f21e...1e7ead`; ethereum `0x6fc653...d85334`; ethereum `0x7db901...9d912d`; ethereum `0xcb8a90...141242`; ethereum `0xd5df7e...04671d`; ethereum `0xdbec47...5e7da1`; ethereum `0xe0dbb0...a0e62e` | ⚠️ Unaudited |
| VaultPausable | core_logic | ethereum | [`0xf85a6e...84222d`](./contracts/ethereum-1/0xf85a6e40935ba6068449bb0ec63a08c7cc84222d/) | ⚠️ Unaudited |
| VaultPausableTemp | core_logic | ethereum | [`0x7bd04d...7c493f`](./contracts/ethereum-1/0x7bd04d55cbba9996e6799fd7b0380cc43e7c493f/) | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_BETH | core_logic | bsc | [`0xd22a66...848e2f`](./contracts/bsc-56/0xd22a669c7ee9d2f6ca0a572da2008912b1848e2f/) | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_DAI | core_logic | bsc | [`0x4cef4a...278d26`](./contracts/bsc-56/0x4cef4aea9d4ebd588ebef1ff30dc6d7061278d26/) | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_ETH | core_logic | bsc | [`0x803186...28f976`](./contracts/bsc-56/0x80318633b2ebe8ac717dc1b4dc0b71405e28f976/) | ⚠️ Unaudited |
| VestingMerkleDistributor | operational_periphery | ethereum | 4 deployments: ethereum [`0x648c7b...ec7e1e`](./contracts/ethereum-1/0x648c7b8882dd79a6d36cba3164c0160b84ec7e1e/); ethereum `0x6cf5a8...02ff18`; ethereum `0xd6eec2...60aa87`; ethereum `0xdb43c0...4afbfb` | ⚠️ Unaudited |
| ViewerNotifyHelperStateful | periphery | ethereum | 2 deployments: ethereum [`0x1d52be...9d0c7b`](./contracts/ethereum-1/0x1d52be284e88d6e3b5fbd9145a3ee133169d0c7b/); bsc `0xf5a5f4...939084` | ⚠️ Unaudited |
| YelStrategyMainnet_YEL | core_logic | ethereum | [`0x9a50c4...626321`](./contracts/ethereum-1/0x9a50c42ae146fb74bccc4fce850b3a49c1626321/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (180)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x0b3cfee9c428091a8bf616ff158989ef15b085a6) | proxy | ethereum | `0x0f4233...ec46ad` | ❓ Unverified |
| Proxy (impl: 0x0b3cfee9c428091a8bf616ff158989ef15b085a6) | proxy | ethereum | `0xeb779f...cf92d0` | ❓ Unverified |
| Proxy (impl: 0xeb779f9ed1bac88b83993b2856a2957a14cf92d0) | proxy | ethereum | `0x65383a...2c62ac` | ❓ Unverified |
| Proxy (impl: 0xeb779f9ed1bac88b83993b2856a2957a14cf92d0) | proxy | ethereum | `0x7095b0...437408` | ❓ Unverified |
| Proxy (impl: 0xeb779f9ed1bac88b83993b2856a2957a14cf92d0) | proxy | ethereum | `0x7fb7e4...4162cc` | ❓ Unverified |
| Proxy (impl: 0xeb779f9ed1bac88b83993b2856a2957a14cf92d0) | proxy | ethereum | `0x8e1de1...6a0b58` | ❓ Unverified |
| Proxy (impl: 0xeb779f9ed1bac88b83993b2856a2957a14cf92d0) | proxy | ethereum | `0xc1aa39...2932a1` | ❓ Unverified |
| Proxy (impl: 0xeb779f9ed1bac88b83993b2856a2957a14cf92d0) | proxy | ethereum | `0xec665d...3d1cfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x011f04...e1e42e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x02b349...02c667` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0473a1...4411ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x04fb94...8542e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x055158...dab09b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0580b7...8fd6a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x06c547...df90fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0a558a...9432e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0b08de...30817a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0b3cfe...b085a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0cc415...14f0b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1073ca...2abab8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16b508...ec0301` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x19b3ab...e8de15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1aa0fb...950ad2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d35ba...c1d48a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1e716d...6f9964` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x22372f...65a75d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x22f2a9...391adf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x24be1c...354455` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x256420...ae9ebb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x26d3e0...ee4150` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ab84b...d0fe54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ecb86...5549a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x303c58...673a21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x306705...7da7f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x32236d...d1358e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x367da4...f81c0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x381b02...bcff9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3833b6...9969d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x384636...a903a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x392a5c...dda6c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x39309a...8efb24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x397ca3...c52f2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3a18aa...85268a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b2ed6...86832d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3c262b...359cb3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3d3df5...856172` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3e43ee...6f515d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3f31ed...b97158` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3f546a...1c3c7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x401b92...3cff56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x406370...4e7568` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x472288...64a143` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x48162b...332a29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4a892b...4e535c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b39b0...c88cf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e5a8a...3b70aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e7345...a0dd1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x503ea7...cc72b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x50dd79...8f38a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5736fd...849ceb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x58144b...2a2654` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b43a0...752cef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5eaab9...86038c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x629943...8e91d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x62d97d...910767` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6571b4...8de435` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x657f0a...e4dd0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x66db50...6d46e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x68ba51...2f1102` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x695a1c...3f5a3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x69dafa...20509e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6aa2ae...64b2f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6b0858...6ca038` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6c91ce...cb2fa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6e87ab...0cd36e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6eafd4...f1fe5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x740518...6f5825` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7630a6...b2bde3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x76d039...e51155` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7a26dc...56912c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7a535f...00d628` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7d2574...057df1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f0b29...19a2d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f1857...c929b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f94c3...8ba2a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x806c53...dcb5f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8080a9...2c2aa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8111de...e25f4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8137ac...0a16cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x820562...0e226f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x88f803...4bcc7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8a8849...f2ea74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8d6171...a2711d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9099d8...70e883` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9189b9...b31595` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x922147...7e4380` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9330dc...a9a7f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x938180...2159f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x98e730...65c15d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x99b54e...a98695` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9b47d3...243df3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9b69df...e9e07f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d5255...613ced` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa057df...c3ccbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa1e2d7...c50154` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa2b62a...e7da57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa3347c...c95550` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa35e4b...96fba2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xab5980...c58a3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xad8b64...e94e2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xadb850...a2123c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xade373...a96c16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xafb69b...93feb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xafd5b7...a27fb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0cf6f...70c8ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb1eb7a...67f7c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb2ff02...cf2976` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb4bd77...c84572` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb64b6f...82b652` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb863cd...7d1ee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbb3855...716efa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbb989b...adbde5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc9854...576554` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbf1ca4...55de21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2bd45...749808` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc34265...be1f63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc3583a...1c3397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc38835...3da504` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc439e9...3d3290` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc53dab...f8664f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc74075...de8d0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc77147...cd019b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc790ad...7e239a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc7a9cc...7fe0e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc85687...886eb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc89844...926a74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb3815...057305` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb9681...55294f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd32f13...d8a0ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd82964...13232e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd98a42...bc7101` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdbc32f...e29c4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdcaf7b...a5e18b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdd40f8...235caf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe41e27...c3c37d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe74a81...f5484e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe8355f...70fb6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xea46cf...7eae1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeffc1f...26ed42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1499a...8b53c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf20a9d...f2c5e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf301af...bdecde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf328f7...3b0674` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf6d794...380c43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf78ca7...0be831` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf8b8a0...18f83e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xff3818...d41b68` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x098927...1266e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2f6cac...e6a1d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x397ac8...798416` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x43b80a...8ec676` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x555fa1...61f1a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x63a6d7...a9981a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6a3106...a758ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6b7c03...147552` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7b8ff8...0cb4f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8a525d...fefeab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9b872c...e14536` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9dabbf...700f67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa2bd15...53897c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xac89ef...9dcaf8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaf269c...995fef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb036b5...a453e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb95a02...f3ebf9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd1d0c7...ec15cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdf480c...788222` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xeafcd0...1e1674` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xee2917...b03ca6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf08688...ed0534` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf1163d...77158d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [LeastAuthority-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/LeastAuthority-Harvest.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | 178 | high |
| [Haechi-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/Haechi-Harvest.pdf) | unknown | Audit | 2020-09 | stale | Direct | contract_name | 271 | high |
| [PeckShield-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/PeckShield-Harvest.pdf) | PeckShield | Audit | 2020-10 | stale | Direct | contract_name | 150 | high |
| [CertiK-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/CertiK-Harvest.pdf) | CertiK | Audit | 2020-11 | stale | Direct | contract_name | 207 | high |
| [api.md](https://github.com/harvest-finance/harvest-api/blob/master/docs/api.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [apr-and-apy.md](https://github.com/harvest-finance/harvest-api/blob/master/docs/apr-and-apy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [developer.md](https://github.com/harvest-finance/harvest-api/blob/master/docs/developer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [integration.md](https://github.com/harvest-finance/harvest-api/blob/master/docs/integration.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Halborn-Harvest-2025.pdf](https://github.com/harvestfi/audits/blob/main/Halborn-Harvest-2025.pdf) | Halborn | Audit | 2025-01 | aging | Direct | contract_name | 436 | high |
| [README.md](https://github.com/harvestfi/audits/blob/main/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 445 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=1242

Zero-match audit list:

- [6936] api.md
- [6937] apr-and-apy.md
- [6938] developer.md
- [6939] integration.md
- [6941] README.md

Fork inheritance lineage and inherited audits are included when available.
