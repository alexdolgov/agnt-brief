# Agentic Audit Brief: Magpie Ecosystem

⚠️ Lifecycle status: DECLINING - TVL dropped 42.5% over 90 days

## Project Overview

- Project: Magpie Ecosystem (`magpie-ecosystem`)
- Website: [https://link3.to/magpiexyz](https://link3.to/magpiexyz)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-12T12:54:55.502Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-fc52
- Chains: arbitrum, base, berachain, bsc, ethereum, optimism, plasma, sonic
- Contract surface: 218 unique implementations (679 raw deployments)
- DeFi Llama TVL: $19,123,338.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Magpie Ecosystem is a multi-chain yield and veTokenomics boosting ecosystem composed of product lines including Magpie, Penpie, Radpie, Cakepie, Eigenpie, Listapie and Babypie. Its products help users optimize yield, governance power and rewards across supported DeFi protocols; some products involve liquid staking or restaking derivatives, but this architecture should not be assumed to apply uniformly across every product family.

### Architecture

All product families share a common architecture of yield-optimizing vaults that issue liquid derivative tokens and distribute rewards via the Magpie Ecosystem's governance token (MGP). They are deployed across multiple chains by a centralized deployer cluster, indicating a unified development and management framework.

## Audit Coverage Summary

- Verified implementations audited: 0/156 (0.0%)
- Verified + Unaudited implementations: 156
- Verified by bytecode match: 0
- Unverified implementations: 62
- Unique implementations: 218
- Raw deployments: 679
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (156)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| API3Oracle | unknown | bsc | 3 deployments: bsc [`0x35718b...05617d`](./contracts/bsc-56/0x35718b08323e9a466b7378f91af63f9c8f05617d/); bsc `0x476884...b9c576`; bsc `0xadcc15...4e98fc` | ⚠️ Unaudited |
| BabypieEnterprise | unknown | ethereum | [`0x9f4f69...40b79f`](./contracts/ethereum-1/0x9f4f69ddd56bbcae6f164acce3a99afef840b79f/) | ⚠️ Unaudited |
| BabypieManager | governance | ethereum | [`0xe813ff...6e2df3`](./contracts/ethereum-1/0xe813ffa7932f2d182f0ae89254acfd0baa6e2df3/) | ⚠️ Unaudited |
| BBtcOracle | unknown | bsc | 2 deployments: bsc [`0x2ea16e...b8fb5a`](./contracts/bsc-56/0x2ea16e082ca50eb6017bbfcb967cc7c6e2b8fb5a/); bsc `0x7ed71d...44eb2e` | ⚠️ Unaudited |
| BeraChainVaultAdapter | unknown | bsc | 5 deployments: bsc [`0x1afa15...11fad5`](./contracts/bsc-56/0x1afa1589a634be568d7872dcf1bbe6f79e11fad5/); bsc `0x2a66f6...f887dc`; bsc `0x550206...4a7f15`; bsc `0xd113db...195a16`; bsc `0xe5248d...1dee78` | ⚠️ Unaudited |
| BnbOracle | unknown | bsc | 2 deployments: bsc [`0xd74508...ad2754`](./contracts/bsc-56/0xd74508ab3bdbedaa6589f913e0f89d98b2ad2754/); bsc `0xda0e73...01be0a` | ⚠️ Unaudited |
| BnbPricePrediction | unknown | bsc | 6 deployments: bsc [`0x05b4c8...fa9c75`](./contracts/bsc-56/0x05b4c8785f4c8856c47a3c2ebce313343efa9c75/); bsc `0x4e95c4...cd9cd8`; bsc `0x9f72bc...7532d9`; bsc `0xb5a732...0fa7f3`; bsc `0xe6c1f4...d07d05`; bsc `0xf638ed...daae0c` | ⚠️ Unaudited |
| BnbStaking | unknown | bsc | 25 deployments: bsc [`0x187463...3b4208`](./contracts/bsc-56/0x187463a09569020659f4128c14fb13bce23b4208/); bsc `0x2b287e...d50eed`; bsc `0x2d294b...597e1c`; bsc `0x3dc8e2...220f04`; bsc `0x42363e...171ca4`; bsc `0x4816f9...78a9a3`; bsc `0x555ea7...6dcb5a`; bsc `0x7116f3...6a4c41`; bsc `0x748736...9e4e7f`; bsc `0x74da29...aad284`; bsc `0x7e6403...cc088c`; bsc `0x81d99f...457938`; bsc `0x8b8bf5...acad9e`; bsc `0x8e5c7f...24ecc4`; bsc `0x9a1a37...e62f51`; bsc `0xa7fdb0...e232f6`; bsc `0xb0060e...825c41`; bsc `0xd36461...ec8b4c`; bsc `0xd505df...82e8db`; bsc `0xd6e999...1340fd`; bsc `0xe0cf55...3ef30b`; bsc `0xf022a6...f6790a`; bsc `0xf0d667...b4b3ac`; bsc `0xf1de62...437ef5`; bsc `0xfab00a...43e52b` | ⚠️ Unaudited |
| BorrowListaDistributor | unknown | bsc | 18 deployments: bsc [`0x419352...181d1a`](./contracts/bsc-56/0x419352db842b7f6f33dbf541d23938cffc181d1a/); bsc `0x46c572...95be54`; bsc `0x564fa7...8b1ebb`; bsc `0x58fe0f...5c725a`; bsc `0x5debc8...ade245`; bsc `0x7247dd...20f59d`; bsc `0x73538c...da0093`; bsc `0x7ad627...16da80`; bsc `0x88620f...c4a2e6`; bsc `0x982d1d...ecf70c`; bsc `0x98a3ff...e84c54`; bsc `0xa3bce2...b0fd45`; bsc `0xa97aed...347900`; bsc `0xc952cc...e6e2d5`; bsc `0xca07db...f8ac38`; bsc `0xcb8f70...ccd2d6`; bsc `0xd1f81b...3b001e`; bsc `0xf8d1d8...83eafa` | ⚠️ Unaudited |
| BorrowLisUSDListaDistributor | unknown | bsc | 2 deployments: bsc [`0x0aed86...7f4f3b`](./contracts/bsc-56/0x0aed860ca496600f6976219cb1acec435d7f4f3b/); bsc `0xf1f4d6...bd8b22` | ⚠️ Unaudited |
| BoundValidator | unknown | bsc | 2 deployments: bsc [`0x81c4f1...c8e6d5`](./contracts/bsc-56/0x81c4f1175fd355cf2c5651396af25eac98c8e6d5/); bsc `0x9ddd9b...be5ff2` | ⚠️ Unaudited |
| BtcOracle | unknown | bsc | 3 deployments: bsc [`0x2eedc4...2d5642`](./contracts/bsc-56/0x2eedc4723b1ed2f24afcd9c0e3665061bd2d5642/); bsc `0x9534dd...d6a45f`; bsc `0xa5e8ea...cfffbf` | ⚠️ Unaudited |
| BunnyMintingFarm | unknown | bsc | [`0x7c8b60...637c7a`](./contracts/bsc-56/0x7c8b60d2b859a38c8b9b5b6cb4565485cb637c7a/) | ⚠️ Unaudited |
| Buyback | unknown | bsc | 3 deployments: bsc [`0x3b778d...1936bb`](./contracts/bsc-56/0x3b778d2d502f5433f9f5cb9a1464ca5d141936bb/); bsc `0x3b99a4...2e1bfc`; bsc `0x969130...da4edf` | ⚠️ Unaudited |
| Cakepie | unknown | bsc | [`0x2b5d9a...eda649`](./contracts/bsc-56/0x2b5d9adea07b590b638ffc165792b2c610eda649/) | ⚠️ Unaudited |
| CakepieReader | unknown | bsc | [`0xc1cc25...c27cb5`](./contracts/bsc-56/0xc1cc256846224e8c0ba530692c338a99fbc27cb5/) | ⚠️ Unaudited |
| CakeToken | unknown | bsc | 9 deployments: bsc [`0x086bef...88807b`](./contracts/bsc-56/0x086bef28ebfb560e787989d025c83bd1e288807b/); bsc `0x0e09fa...81ce82`; bsc `0x46e358...b42cf4`; bsc `0x53d79a...dd0b6d`; bsc `0x6ad8e2...9e088d`; bsc `0x7d813c...20060b`; bsc `0xd36d62...cb4a90`; bsc `0xe17a47...7f978b`; bsc `0xecd9ac...1acbc3` | ⚠️ Unaudited |
| CerosETHRouter | unknown | bsc | [`0xbaff57...2fb0c1`](./contracts/bsc-56/0xbaff578d16c9b0fc3a668408517bec1f9a2fb0c1/) | ⚠️ Unaudited |
| CeToken | unknown | bsc | 3 deployments: bsc [`0x397a48...39004b`](./contracts/bsc-56/0x397a486183cb6608a3ccd1c74b6a7f024439004b/); bsc `0x4510aa...cc7f50`; bsc `0xc6f28a...ff0fe2` | ⚠️ Unaudited |
| Clipper | unknown | bsc | 17 deployments: bsc [`0x117b4a...651063`](./contracts/bsc-56/0x117b4a02d1bb3a32f4bf5cd6103e633b2b651063/); bsc `0x334e4f...a1b704`; bsc `0x4192ff...1723b3`; bsc `0x4fd4b7...368ac3`; bsc `0x5784e6...449ce0`; bsc `0x5aabbb...493b26`; bsc `0x6dc0ab...119b5a`; bsc `0x9b8788...4ab7ea`; bsc `0xaf7133...90e08e`; bsc `0xb12ff6...4b1e92`; bsc `0xc4857c...59a998`; bsc `0xeb995f...54b1ea`; bsc `0xf21b35...31d057`; bsc `0xf57a8c...a659f3`; bsc `0xf6dadf...30313c`; bsc `0xf92001...c3f9e6`; bsc `0xfe2881...89525e` | ⚠️ Unaudited |
| clisBNB | unknown | bsc | 2 deployments: bsc [`0x061178...80d195`](./contracts/bsc-56/0x061178fdfc399000c8023043f0f5b9578280d195/); bsc `0x6c8787...09e98c` | ⚠️ Unaudited |
| ClisBNBLaunchPoolDistributor | unknown | bsc | 2 deployments: bsc [`0x81a62b...5a46e8`](./contracts/bsc-56/0x81a62b329cc8939494d8613f614171a9955a46e8/); bsc `0x8abb19...07ccda` | ⚠️ Unaudited |
| clisETH | unknown | bsc | [`0xe4f487...77181f`](./contracts/bsc-56/0xe4f48754e85f2d24361741885098453e2077181f/) | ⚠️ Unaudited |
| ClisToken | unknown | bsc | 3 deployments: bsc [`0x2544be...d355a8`](./contracts/bsc-56/0x2544be623743897b06d57707cf3016cccfd355a8/); bsc `0x88a596...291c27`; bsc `0x8a3143...182cc6` | ⚠️ Unaudited |
| CollateralBorrowSnapshotRouter | unknown | bsc | 3 deployments: bsc [`0x57371f...8490f6`](./contracts/bsc-56/0x57371fb9311a7a0d6c712e9ee154dc8a718490f6/); bsc `0x74e17e...f69307`; bsc `0xd4cfc5...6136b7` | ⚠️ Unaudited |
| CollateralListaDistributor | unknown | bsc | 19 deployments: bsc [`0x01a6fc...eb8281`](./contracts/bsc-56/0x01a6fcc74852088c72862c12c54f992720eb8281/); bsc `0x0bebd7...b79478`; bsc `0x0bfb1b...d8dad1`; bsc `0x0c9a0f...8d15b5`; bsc `0x1716ac...b47c73`; bsc `0x3c1612...010eb0`; bsc `0x566278...27204c`; bsc `0x6c5285...13fc5e`; bsc `0x77c9b4...7c2572`; bsc `0x83f861...a2ae5b`; bsc `0x9a8195...8c7856`; bsc `0xb1da31...9a5af4`; bsc `0xc4a8a6...edd830`; bsc `0xe3221b...7feb85`; bsc `0xe61f43...dee39a`; bsc `0xe786ec...05d6be`; bsc `0xf09fef...e22889`; bsc `0xf0fc2d...08e956`; bsc `0xff6f8c...63f955` | ⚠️ Unaudited |
| DynamicDutyCalculator | unknown | bsc | 4 deployments: bsc [`0x0aeb6c...6571f0`](./contracts/bsc-56/0x0aeb6cd202b8482a71215c844341ea1f3f6571f0/); bsc `0x1bce74...418885`; bsc `0x510264...6827d2`; bsc `0x873339...3256fa` | ⚠️ Unaudited |
| EarnPool | unknown | bsc | 2 deployments: bsc [`0x143c8b...164642`](./contracts/bsc-56/0x143c8b6b1161dec945d1fb7c2ca13c3b1d164642/); bsc `0x66de07...1796f3` | ⚠️ Unaudited |
| EigenpieConfig | unknown | ethereum | 3 deployments: ethereum [`0x20b70e...1c7cab`](./contracts/ethereum-1/0x20b70e4a1883b81429533fed944d7957121c7cab/); bsc `0xd2080e...af7686`; arbitrum `0x92c93b...dfc748` | ⚠️ Unaudited |
| EigenpieStaking | unknown | ethereum | [`0x24db67...875db7`](./contracts/ethereum-1/0x24db6717db1c75b9db6ea47164d8730b63875db7/) | ⚠️ Unaudited |
| EigenpieWithdrawManager | unknown | ethereum | [`0x98083e...9dcba4`](./contracts/ethereum-1/0x98083e22d12497c1516d3c49e7cc6cd2cd9dcba4/) | ⚠️ Unaudited |
| EmissionVoting | unknown | bsc | 4 deployments: bsc [`0x5d52bc...693736`](./contracts/bsc-56/0x5d52bcbf45c72f5fb8441959622c7e5dd4693736/); bsc `0x76e001...eb3d00`; bsc `0xac6b7f...d05996`; bsc `0xfc136f...31336c` | ⚠️ Unaudited |
| ERC20LpListaDistributor | unknown | bsc | 14 deployments: bsc [`0x05570c...7115c3`](./contracts/bsc-56/0x05570c903a99f59e8f9913d4d628796bad7115c3/); bsc `0x11bf11...59147a`; bsc `0x1cf9c6...336c4d`; bsc `0x39d099...39716a`; bsc `0x3b2393...5e6086`; bsc `0x4b2d67...f9159c`; bsc `0x7c81da...424954`; bsc `0x9b4fcb...18be4a`; bsc `0x9f6c25...69eff4`; bsc `0xa65c40...4a218e`; bsc `0xc23d34...c077c1`; bsc `0xdd185c...77a054`; bsc `0xe8f464...8b8dd2`; bsc `0xf6ab5c...dcf504` | ⚠️ Unaudited |
| ERC20LpTokenProvider | unknown | bsc | 2 deployments: bsc [`0x2725d7...65aa57`](./contracts/bsc-56/0x2725d7336027773d7a958e10819a923dcd65aa57/); bsc `0x946e5c...e74c05` | ⚠️ Unaudited |
| ERC721LpListaDistributor | unknown | bsc | 10 deployments: bsc [`0x16c39b...0622a5`](./contracts/bsc-56/0x16c39b6ee97d3d92f570ad9403418e43ea0622a5/); bsc `0x225cbc...3194cf`; bsc `0x3665d7...94d9c9`; bsc `0x398df8...ec2596`; bsc `0x6dc552...b01de3`; bsc `0x8453cd...16005f`; bsc `0x9e4dfb...d06cb4`; bsc `0xb69162...110ed4`; bsc `0xe43fe8...14f520`; bsc `0xe5c03c...43de08` | ⚠️ Unaudited |
| EthOracle | unknown | bsc | [`0x9b4f67...af1e96`](./contracts/bsc-56/0x9b4f67fb43180085ea26e348200027670eaf1e96/) | ⚠️ Unaudited |
| EzEthOracle | unknown | bsc | 2 deployments: bsc [`0x209003...f7741b`](./contracts/bsc-56/0x209003905c94a67f766cbea529d2d5e1b3f7741b/); bsc `0xe859f3...90f45f` | ⚠️ Unaudited |
| FdUsdOracle | unknown | bsc | 5 deployments: bsc [`0x1b8b3f...89d308`](./contracts/bsc-56/0x1b8b3ff07fefee784e3a5d208d34c12c6489d308/); bsc `0x1dbc9a...792072`; bsc `0x464bfb...8d5d57`; bsc `0x908047...7aaa94`; bsc `0xcf9509...78ecd3` | ⚠️ Unaudited |
| FlashBuy | unknown | bsc | 4 deployments: bsc [`0x9ba88e...4063cb`](./contracts/bsc-56/0x9ba88e6b20041750fd4e6271fea455f5d44063cb/); bsc `0xb7a58a...7f3978`; bsc `0xd5d976...c2aaa0`; bsc `0xdace1c...875057` | ⚠️ Unaudited |
| GemJoin | unknown | bsc | 17 deployments: bsc [`0x03db75...d63067`](./contracts/bsc-56/0x03db750d6212c6a0bca9258e8cb7cf46dfd63067/); bsc `0x157c9a...8ce299`; bsc `0x2202a4...fcd7e9`; bsc `0x2367f2...9a6918`; bsc `0x3cd434...f0fc43`; bsc `0x3e75d7...a0976d`; bsc `0x3f3e0a...68cc10`; bsc `0x605356...cc4404`; bsc `0x876cd9...6c3104`; bsc `0x98b167...e6739a`; bsc `0xa94aa7...2f7079`; bsc `0xad406c...059b1f`; bsc `0xad9eaa...5b6f65`; bsc `0xd7e339...f9bae8`; bsc `0xdcfe50...12007e`; bsc `0xe95eaf...82a0c6`; bsc `0xf8ca8d...b7a677` | ⚠️ Unaudited |
| HelioETHProvider | unknown | bsc | [`0xd1eb87...9ab904`](./contracts/bsc-56/0xd1eb8719c4b64d3a3fa1ba89e2c70ea5c99ab904/) | ⚠️ Unaudited |
| HelioProviderV2 | unknown | bsc | 3 deployments: bsc [`0x891a60...e7df7f`](./contracts/bsc-56/0x891a6041c43337a7d8c72a1b19535d221ce7df7f/); bsc `0xc5b9e1...a5e212`; bsc `0xf85d7c...d40a99` | ⚠️ Unaudited |
| Hypervisor | unknown | bsc | 3 deployments: bsc [`0x368550...a96708`](./contracts/bsc-56/0x3685502ea3ea4175fb5cbb5344f74d2138a96708/); bsc `0xab092c...5fff22`; bsc `0xdf0b9b...dd54c4` | ⚠️ Unaudited |
| ICHIVault | unknown | bsc | [`0x885711...3dfc8c`](./contracts/bsc-56/0x885711bedd3d17949dfed5e77d5ab6e89c3dfc8c/) | ⚠️ Unaudited |
| IFO | unknown | bsc | 2 deployments: bsc [`0x4eff3a...21d820`](./contracts/bsc-56/0x4eff3a0a82f624b617aab7af92777deec521d820/); bsc `0x80ffcb...7b99cb` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | 42 deployments: bsc [`0x0366f1...1d5700`](./contracts/bsc-56/0x0366f1a242c37ca73c73834b7fcd4a66af1d5700/); bsc `0x04178a...01896a`; bsc `0x0adb5c...237402`; bsc `0x15a3a6...8141db`; bsc `0x183e6c...3e3df8`; bsc `0x2c6785...49c9a1`; bsc `0x2d385e...098fce`; bsc `0x31f781...871004`; bsc `0x3fd0d7...1be9ab`; bsc `0x44081f...8ccc00`; bsc `0x44a9cc...d99bad`; bsc `0x4bd057...a2861d`; bsc `0x55344b...84fe6d`; bsc `0x570c9e...d20788`; bsc `0x580d5d...bb9a14`; bsc `0x5b548d...b9e82c`; bsc `0x5d028c...63d7dd`; bsc `0x5d0709...f4151c`; bsc `0x5ebf71...192697`; bsc `0x5f402a...3c5be1`; bsc `0x6acc48...bc2585`; bsc `0x6f82b8...671722`; bsc `0x744048...a86e64`; bsc `0x804583...4d9875`; bsc `0x828c47...310efa`; bsc `0x8ef99b...bb1837`; bsc `0x910081...657a06`; bsc `0x94a24c...a78f02`; bsc `0x9532e8...87b7b5`; bsc `0x973f50...eea773`; bsc `0x9c2112...7e0a9e`; bsc `0x9d3a1c...ef2cfe`; bsc `0xa32509...a4efeb`; bsc `0xb1efa4...fa8c82`; bsc `0xb922aa...c51f06`; bsc `0xb9e8cf...9c44fa`; bsc `0xba79c4...101663`; bsc `0xc9fbed...2a1d38`; bsc `0xebb16e...f3945a`; bsc `0xec3f4c...dd0161`; bsc `0xf6dd57...0bd443`; bsc `0xff861a...7200e3` | ⚠️ Unaudited |
| IFOUpgradeProxy | unknown | bsc | [`0xf0ae9b...2624b0`](./contracts/bsc-56/0xf0ae9b39ef4a2680d67c9fb252816725f22624b0/) | ⚠️ Unaudited |
| Interaction | unknown | bsc | 7 deployments: bsc [`0x2f9da6...0a509e`](./contracts/bsc-56/0x2f9da64252015a36e595dc02e05bac65880a509e/); bsc `0x3a0f55...208a9c`; bsc `0x4c545d...ad3bff`; bsc `0x5e9909...bd756a`; bsc `0x914190...6ffe05`; bsc `0xb16226...67a884`; bsc `0xf1e177...fb191a` | ⚠️ Unaudited |
| Jar | unknown | bsc | [`0x383a35...5b2130`](./contracts/bsc-56/0x383a3517c5d9259bcf43f4bf8612c6726b5b2130/) | ⚠️ Unaudited |
| LinearDecrease | unknown | bsc | 3 deployments: bsc [`0x5faa44...20552e`](./contracts/bsc-56/0x5faa44a3f92eab686f6ad1d1ad15a1995b20552e/); bsc `0xbaf8b4...e3cc03`; bsc `0xd209d1...d75283` | ⚠️ Unaudited |
| ListaAirdrop | unknown | bsc | [`0x2ed866...b558d3`](./contracts/bsc-56/0x2ed866ca9c33bf695c78af222d61bd4d9cb558d3/) | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | bsc | 2 deployments: bsc [`0x0f4c12...61d415`](./contracts/bsc-56/0x0f4c128a811a0b0da2845634c736ff1d9f61d415/); bsc `0xffd3a5...9908e6` | ⚠️ Unaudited |
| ListaOFTAdapter | unknown | bsc | 2 deployments: bsc [`0x82f5bc...413f02`](./contracts/bsc-56/0x82f5bcd1473bda5794239d01073797093a413f02/); bsc `0x837cb0...25e7b3` | ⚠️ Unaudited |
| ListaRevenueDistributor | unknown | bsc | 3 deployments: bsc [`0x1c56cc...9a7cc4`](./contracts/bsc-56/0x1c56ccf0727bac9d08494603da5d2594229a7cc4/); bsc `0x34b504...7fa3da`; bsc `0x92cfb7...7a6393` | ⚠️ Unaudited |
| ListaRush | unknown | bsc | [`0x934c69...f3ac36`](./contracts/bsc-56/0x934c69e35ca3a2774cc0aa36f5632f1c39f3ac36/) | ⚠️ Unaudited |
| ListaStakeManager | unknown | bsc | 5 deployments: bsc [`0x4d9ed5...a33430`](./contracts/bsc-56/0x4d9ed586a8490d227dafdbe520306fbae7a33430/); bsc `0xbc019e...b8d305`; bsc `0xe6c1be...6f79ed`; bsc `0xee3d69...efc3cc`; bsc `0xfd6b9c...aeb4ef` | ⚠️ Unaudited |
| ListaStaking | unknown | bsc | [`0x76865d...b2ca97`](./contracts/bsc-56/0x76865d4bfa513a3dd7f8a9977f3dd71e8ab2ca97/) | ⚠️ Unaudited |
| ListaToken | unknown | bsc | [`0xfceb31...9edc46`](./contracts/bsc-56/0xfceb31a79f71ac9cbdcf853519c1b12d379edc46/) | ⚠️ Unaudited |
| ListaVault | unknown | bsc | 6 deployments: bsc [`0x0fee40...36e05c`](./contracts/bsc-56/0x0fee401a16837b8a8c6c8b9f8d88744b5e36e05c/); bsc `0x18fce5...2164c4`; bsc `0x307d13...30292a`; bsc `0x36a7bd...944c84`; bsc `0x7dc9d0...0c5ba0`; bsc `0xb7d76f...90a4a4` | ⚠️ Unaudited |
| LisUSD | unknown | bsc | [`0xf5bd9b...c4d7f8`](./contracts/bsc-56/0xf5bd9b192092517d60e90c9af17b69b134c4d7f8/) | ⚠️ Unaudited |
| LisUSDPoolSet | unknown | bsc | 2 deployments: bsc [`0x37db1a...95d0bf`](./contracts/bsc-56/0x37db1ae9b24055d1f9fe973aea40b7eb2995d0bf/); bsc `0x586034...c7bb0f` | ⚠️ Unaudited |
| Lottery | unknown | bsc | 24 deployments: bsc [`0x127551...d13280`](./contracts/bsc-56/0x127551b5cd5d21bd736483cb829b580a4cd13280/); bsc `0x1698e1...d79e09`; bsc `0x1c1b35...efc683`; bsc `0x21511c...25fea6`; bsc `0x2b55e2...65532f`; bsc `0x2f6d75...9bb615`; bsc `0x43fa34...ccd4d8`; bsc `0x4f77f3...0f362a`; bsc `0x51ae82...1a6971`; bsc `0x52342d...6db990`; bsc `0x5d2117...c6b061`; bsc `0x609491...ef6f61`; bsc `0x87ec62...a6e007`; bsc `0x9526e6...277297`; bsc `0xaae6db...7d5ea2`; bsc `0xb23835...b61bd5`; bsc `0xb37822...cc33da`; bsc `0xc608bd...b357aa`; bsc `0xc7ff35...b688f8`; bsc `0xcb95e1...97ddf8`; bsc `0xde95ad...1bcec4`; bsc `0xe5ef65...f32782`; bsc `0xf92aa8...c90ef9`; bsc `0xff0395...801e0a` | ⚠️ Unaudited |
| LotteryNFT | unknown | bsc | [`0x1900e0...e4992e`](./contracts/bsc-56/0x1900e0d289ebc5b7b75aff8232464b9f99e4992e/) | ⚠️ Unaudited |
| LotteryRewardProxy | unknown | bsc | 3 deployments: bsc [`0x6b4dc7...bfc3ba`](./contracts/bsc-56/0x6b4dc78b8303d65476e2fcdde5be262e8abfc3ba/); bsc `0xb31ab5...6f1a15`; bsc `0xfe0f4f...c76862` | ⚠️ Unaudited |
| LpProxy | unknown | bsc | 3 deployments: bsc [`0x5a0e32...70ec01`](./contracts/bsc-56/0x5a0e3291514f5f1797a0c7efefdac81eec70ec01/); bsc `0xac6d58...8d8460`; bsc `0xf87e70...377799` | ⚠️ Unaudited |
| MasterCakepie | unknown | bsc | [`0x74165b...a61e98`](./contracts/bsc-56/0x74165b89fd8e9b91a109a4e71662f27eeba61e98/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | 4 deployments: bsc [`0x4e585c...0e764d`](./contracts/bsc-56/0x4e585c367dafa5db5e182a192e73f4e0900e764d/); bsc `0x73feaa...c9e24e`; bsc `0x91dc89...c3e756`; bsc `0x983734...cbcb14` | ⚠️ Unaudited |
| MasterListapie | unknown | bsc | [`0xdd3868...340853`](./contracts/bsc-56/0xdd386880c277c3c27f604f4c35b029bae0340853/) | ⚠️ Unaudited |
| MasterMagpie | unknown | arbitrum | 2 deployments: bsc `0xa3b615...26bd46`; arbitrum [`0x664cc2...9db6e7`](./contracts/arbitrum-42161/0x664cc2bcae1e057eb1ec379598c5b743ad9db6e7/) | ⚠️ Unaudited |
| MasterPenpie | unknown | arbitrum | 8 deployments: ethereum `0x162968...6347d0`; optimism `0x3cbfc9...e57eac`; bsc `0xb35b3d...3cd5db`; sonic `0x664cc2...9db6e7`; base `0xc29508...dc6461`; plasma `0x2cfedb...d55243`; arbitrum [`0x0776c0...25942d`](./contracts/arbitrum-42161/0x0776c06907ce6ff3d9dbf84ba9b3422d7225942d/); berachain `0x367e7a...cdef96` | ⚠️ Unaudited |
| MasterRadpie | unknown | bsc | 2 deployments: bsc [`0x1b80ee...e58453`](./contracts/bsc-56/0x1b80eec9b25472c6119ead3b880976fa62e58453/); arbitrum `0xc9cb57...0f2baa` | ⚠️ Unaudited |
| MasterVault | unknown | bsc | [`0x034f0a...929b37`](./contracts/bsc-56/0x034f0ae5d952c2ffe4247d396010c50ce6929b37/) | ⚠️ Unaudited |
| mBTCOracle | unknown | bsc | 3 deployments: bsc [`0x31d558...b87aaf`](./contracts/bsc-56/0x31d558b899461d6ea498c3c1664a150a19b87aaf/); bsc `0x8be958...222345`; bsc `0xd5e1b3...c66870` | ⚠️ Unaudited |
| mBTCProvider | unknown | bsc | [`0x8a016f...e2bb0b`](./contracts/bsc-56/0x8a016f1896dc2939ffdbb60f6e42bcc245e2bb0b/) | ⚠️ Unaudited |
| mCake | unknown | bsc | [`0x581fa6...95c0ca`](./contracts/bsc-56/0x581fa684d0ec11ccb46b1d92f1f24c8a3f95c0ca/) | ⚠️ Unaudited |
| mCAKEOracle | unknown | bsc | 2 deployments: bsc [`0x01b39e...b44e23`](./contracts/bsc-56/0x01b39e969a76d2f7c9a8a81ecd1b2f7116b44e23/); bsc `0x7db21c...1c3ce7` | ⚠️ Unaudited |
| mCakeSV | unknown | bsc | [`0x1d7928...cb0c21`](./contracts/bsc-56/0x1d7928452009e03af2e3a2b5931d5d5876cb0c21/) | ⚠️ Unaudited |
| MerkleVerifier | unknown | bsc | 3 deployments: bsc [`0x748f2a...2ef905`](./contracts/bsc-56/0x748f2a3816178ab4bdd4eb9c703588b2172ef905/); bsc `0xdeb598...39ceaa`; bsc `0xf625b8...39386d` | ⚠️ Unaudited |
| MGP | unknown | bsc | [`0xd06716...3b45fa`](./contracts/bsc-56/0xd06716e1ff2e492cc5034c2e81805562dd3b45fa/) | ⚠️ Unaudited |
| MintedERC20 | unknown | sonic | [`0xf1ef7d...71a74b`](./contracts/sonic-146/0xf1ef7d2d4c0c881cd634481e0586ed5d2871a74b/) | ⚠️ Unaudited |
| mListaConvertor | adapter | bsc | [`0xa606c8...8c68b3`](./contracts/bsc-56/0xa606c8916501fc841e383710817666aaed8c68b3/) | ⚠️ Unaudited |
| MLRTCCIPBridge | operational_periphery | arbitrum | [`0x42c614...68f588`](./contracts/arbitrum-42161/0x42c614415cfb8c71bb28314f6d2a21d91c68f588/) | ⚠️ Unaudited |
| mPendleConvertor | unknown | ethereum | [`0x4bcc7c...23b458`](./contracts/ethereum-1/0x4bcc7c793534246bc18acd3737aa4897ff23b458/) | ⚠️ Unaudited |
| mPendleOFT | unknown | ethereum | 3 deployments: ethereum [`0x83e817...6f555e`](./contracts/ethereum-1/0x83e817e1574e2201a005ec0f7e700ed5606f555e/); optimism `0xa3b615...26bd46`; arbitrum `0xb688ba...36a5bf` | ⚠️ Unaudited |
| mwBETHOracle | unknown | bsc | 2 deployments: bsc [`0x3605c7...db95b1`](./contracts/bsc-56/0x3605c70f8512f6c257bbe144e365f1a564db95b1/); bsc `0xaa4912...6d50d0` | ⚠️ Unaudited |
| mWOM | unknown | arbitrum | [`0x509fd2...947876`](./contracts/arbitrum-42161/0x509fd25ee2ac7833a017f17ee8a6fb4aaf947876/) | ⚠️ Unaudited |
| mWomSV | unknown | arbitrum | [`0x21804f...3b07db`](./contracts/arbitrum-42161/0x21804fb90593458630298f10a85094cb6d3b07db/) | ⚠️ Unaudited |
| NonTransferableLpERC20 | unknown | bsc | 4 deployments: bsc [`0x708252...cfb755`](./contracts/bsc-56/0x7082528e908bfd0c42d2134fe7065457cfcfb755/); bsc `0xb894de...4f9c26`; bsc `0xc74efa...4fb7dd`; bsc `0xee56ee...796dbb` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | base | 2 deployments: optimism `0xbc7b1f...6e66e1`; base [`0xa99f6e...9eeb3e`](./contracts/base-8453/0xa99f6e6785da0f5d6fb42495fe424bce029eeb3e/) | ⚠️ Unaudited |
| OracleCenter | unknown | bsc | 2 deployments: bsc [`0x47dbca...784a41`](./contracts/bsc-56/0x47dbcae9c5a8eb4ed847fa9283c3e42457784a41/); bsc `0x946a68...f7c53b` | ⚠️ Unaudited |
| Pair | unknown | bsc | [`0x04d611...3f857d`](./contracts/bsc-56/0x04d6115703b0127888323f142b8046c7c13f857d/) | ⚠️ Unaudited |
| PancakeFactory | unknown | bsc | 4 deployments: bsc [`0xacfc87...a88258`](./contracts/bsc-56/0xacfc87ffe18eb69e7d3505ee1684946744a88258/); bsc `0xadbfa3...1d08eb`; bsc `0xbcfccb...952812`; bsc `0xd18436...970637` | ⚠️ Unaudited |
| PancakeOracle | unknown | bsc | 3 deployments: bsc [`0x4b1b0c...934cef`](./contracts/bsc-56/0x4b1b0c225944808b9017f16e9b10305faa934cef/); bsc `0x6b6354...2193be`; bsc `0x9f338d...a4fe71` | ⚠️ Unaudited |
| PancakeRouter | unknown | bsc | 4 deployments: bsc [`0x05ff2b...608c7f`](./contracts/bsc-56/0x05ff2b0db69458a0750badebc4f9e13add608c7f/); bsc `0x5334de...98cd12`; bsc `0x749fc0...438b02`; bsc `0x90c333...e26bfb` | ⚠️ Unaudited |
| PancakeStableSwapLP | unknown | bsc | [`0xb2aa63...85a488`](./contracts/bsc-56/0xb2aa63f363196caba3154d4187949283f085a488/) | ⚠️ Unaudited |
| PancakeStaking | unknown | bsc | 3 deployments: bsc [`0x811591...1c866b`](./contracts/bsc-56/0x81159173185c411ed61f6eb332d1a653bb1c866b/); bsc `0xb20a61...780e4f`; bsc `0xe31f0b...978f10` | ⚠️ Unaudited |
| PancakeStakingBNBChain | unknown | bsc | [`0xb47b79...44f327`](./contracts/bsc-56/0xb47b790076050423888cde9ebb2d5cb86544f327/) | ⚠️ Unaudited |
| PancakeVoterProxy | unknown | bsc | [`0x4086d4...00da07`](./contracts/bsc-56/0x4086d46a650517fa756f620507db704d3900da07/) | ⚠️ Unaudited |
| PendleMarketDepositHelper | unknown | ethereum | [`0x1c1fb3...0fc0f4`](./contracts/ethereum-1/0x1c1fb35334290b5ff1bf7b4c09130885b10fc0f4/) | ⚠️ Unaudited |
| PendleOFT | unknown | plasma | [`0x17bac5...831f24`](./contracts/plasma-9745/0x17bac5f906c9a0282ac06a59958d85796c831f24/) | ⚠️ Unaudited |
| PendleStaking | unknown | ethereum | [`0x6e7997...713652`](./contracts/ethereum-1/0x6e799758cee75dae3d84e09d40dc416ecf713652/) | ⚠️ Unaudited |
| PendleStakingSideChain | unknown | optimism | 6 deployments: optimism [`0x509fd2...947876`](./contracts/optimism-10/0x509fd25ee2ac7833a017f17ee8a6fb4aaf947876/); sonic `0xf9619e...5814ec`; base `0x7a8961...7e9aab`; plasma `0xfff28a...310701`; arbitrum `0x6db96b...8b3f81`; berachain `0xc4a65a...5d1d7e` | ⚠️ Unaudited |
| PendleStakingSideChainBNB | unknown | bsc | [`0x782d9d...3b7982`](./contracts/bsc-56/0x782d9d67feaa4d1cdf8222d9053c8cba1c3b7982/) | ⚠️ Unaudited |
| PenpieOFT | unknown | arbitrum | 3 deployments: ethereum `0x7dedbc...718715`; optimism `0xc4a65a...5d1d7e`; arbitrum [`0x2ac2b2...9c34ee`](./contracts/arbitrum-42161/0x2ac2b254bc18cd4999f64773a966e4f4869c34ee/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | 2 deployments: ethereum `0xcb8913...ffad55`; arbitrum [`0x90ff68...f67b2d`](./contracts/arbitrum-42161/0x90ff684fd8060eaff3e85eae5f5f8c3ca6f67b2d/) | ⚠️ Unaudited |
| PSM | unknown | bsc | 2 deployments: bsc [`0xaa57f3...72ec0c`](./contracts/bsc-56/0xaa57f36dd5ef2ac471863ec46277f976f272ec0c/); bsc `0xf51c1d...1abb7f` | ⚠️ Unaudited |
| PTLinearDiscountOracle | unknown | bsc | 2 deployments: bsc [`0x138288...9ddd59`](./contracts/bsc-56/0x138288f20a4d7c22e2b3fbffbf3a45e7c69ddd59/); bsc `0xa34627...505281` | ⚠️ Unaudited |
| PumpBtcOracle | unknown | bsc | 2 deployments: bsc [`0x420a16...dde28b`](./contracts/bsc-56/0x420a16f03e7f623556ccee452d4caafe1fdde28b/); bsc `0xd06233...544c6f` | ⚠️ Unaudited |
| PumpBTCProvider | unknown | bsc | 2 deployments: bsc [`0xabdb46...09f4df`](./contracts/bsc-56/0xabdb46ba7b15ec01be368736bb7fe13ab209f4df/); bsc `0xea44dd...2b9e6e` | ⚠️ Unaudited |
| RadiantStaking | unknown | arbitrum | 2 deployments: bsc `0xe05157...3ca131`; arbitrum [`0x18a192...6283b2`](./contracts/arbitrum-42161/0x18a192dfe0be1e5e9aa424738fdad800646283b2/) | ⚠️ Unaudited |
| Radpie | unknown | arbitrum | [`0x54bdbf...87c0f6`](./contracts/arbitrum-42161/0x54bdbf3ce36f451ec61493236b8e6213ac87c0f6/) | ⚠️ Unaudited |
| RadpiePoolHelper | unknown | arbitrum | [`0x4ade86...3dda7a`](./contracts/arbitrum-42161/0x4ade86667760f45cbd5255a5bc8b4c3a703dda7a/) | ⚠️ Unaudited |
| ResilientOracle | unknown | bsc | 2 deployments: bsc [`0x35c673...af4bbe`](./contracts/bsc-56/0x35c673a0a56edb743a8cf67bcd96d0eab8af4bbe/); bsc `0xf3afd8...e6c750` | ⚠️ Unaudited |
| SafeGuard | unknown | bsc | 2 deployments: bsc [`0x1b19bc...11b96e`](./contracts/bsc-56/0x1b19bc6394246d4795d16ceee9edc76b4d11b96e/); bsc `0x79cfad...30cc3f` | ⚠️ Unaudited |
| SlisBnbDistributor | unknown | bsc | 2 deployments: bsc [`0x9881cf...7c7e12`](./contracts/bsc-56/0x9881cfce5a072a107dcce7fd24e2c99b857c7e12/); bsc `0xade6d9...8bea2f` | ⚠️ Unaudited |
| SlisBnbOracle | unknown | bsc | 4 deployments: bsc [`0x44388e...89c584`](./contracts/bsc-56/0x44388ef3bc730bde8670a3b4831281dd7e89c584/); bsc `0x5fb5b2...804114`; bsc `0x732053...c96a8c`; bsc `0xddc89c...0ba274` | ⚠️ Unaudited |
| SlisBNBProvider | unknown | bsc | 2 deployments: bsc [`0xf982b7...c79415`](./contracts/bsc-56/0xf982b7b82dbf7d25330fc14e902abf9b01c79415/); bsc `0xfd31e1...97819b` | ⚠️ Unaudited |
| SLisLibrary | unknown | bsc | 2 deployments: bsc [`0x64dbd2...6480c6`](./contracts/bsc-56/0x64dbd29ab153e7cf8806fb635ef95285e16480c6/); bsc `0xf2d56e...53ebc4` | ⚠️ Unaudited |
| SmartChef | unknown | bsc | 85 deployments: bsc [`0x0124ed...d6dd16`](./contracts/bsc-56/0x0124ed38db9c3a04a4a217172288454cd1d6dd16/); bsc `0x02861b...371379`; bsc `0x02aa76...95315a`; bsc `0x04ae8c...d7013c`; bsc `0x07a0a5...7a81b9`; bsc `0x0a5956...4f09b9`; bsc `0x0c3d68...8e4528`; bsc `0x1714ba...8d9479`; bsc `0x1ad34d...1f2cae`; bsc `0x1c736f...dfca41`; bsc `0x212bb6...2bea05`; bsc `0x21a9a5...4ed23a`; bsc `0x225dbf...07b852`; bsc `0x2368ba...704d35`; bsc `0x27c217...1d2f00`; bsc `0x2b02d4...550efd`; bsc `0x2c0f44...ab1b07`; bsc `0x2dcf4c...5b66cf`; bsc `0x319c7c...88c984`; bsc `0x326d75...3b3124`; bsc `0x37b4c5...43d91c`; bsc `0x3b9b74...08a9bc`; bsc `0x3d7fab...c26b49`; bsc `0x3e4879...77d835`; bsc `0x3e677d...56994e`; bsc `0x423382...bd7d90`; bsc `0x42b49c...c070ac`; bsc `0x4503a1...490f5b`; bsc `0x4a26b0...a6f69a`; bsc `0x5ac840...b294a7`; bsc `0x5dda9c...fc205a`; bsc `0x62ad71...b2105d`; bsc `0x6722e3...de181a`; bsc `0x681174...3d2120`; bsc `0x68c7d1...afd638`; bsc `0x6b5a9b...b84b19`; bsc `0x6efa20...9ba88f`; bsc `0x6f0037...42f472`; bsc `0x6f31b8...846cdb`; bsc `0x73e4e8...3963ce`; bsc `0x75c918...66fe45`; bsc `0x7fa48b...fc99f6`; bsc `0x85f7b5...d4818f`; bsc `0x90f995...b3be97`; bsc `0x92729d...5fc6f3`; bsc `0x92e8ce...214e68`; bsc `0x9aa995...89a448`; bsc `0x9c4eba...fed2fb`; bsc `0x9cb24e...b02b78`; bsc `0x9cb7f2...7037d6`; bsc `0x9e6da2...87f7b2`; bsc `0x9f2365...5c6e79`; bsc `0xa5137e...30964e`; bsc `0xacdfd6...09dbcb`; bsc `0xae3001...87ba1d`; bsc `0xb20197...f3af7c`; bsc `0xb3972b...e29da0`; bsc `0xb69b6e...dae7e3`; bsc `0xb6fd27...cef97d`; bsc `0xb7b03a...bc5668`; bsc `0xbe65d7...aff2c7`; bsc `0xc0920f...7980ed`; bsc `0xc20f73...919ba7`; bsc `0xc3693e...617900`; bsc `0xc4465f...05bd4b`; bsc `0xc4715a...ba8920`; bsc `0xc58954...8c2d1d`; bsc `0xccd0b9...5ac5bd`; bsc `0xce54ba...dd8d9a`; bsc `0xcec267...062693`; bsc `0xd0b738...75f73a`; bsc `0xd18e1a...e05cab`; bsc `0xd1b26e...77f7c8`; bsc `0xd24df3...1bf599`; bsc `0xd32b30...abd2f3`; bsc `0xdc938b...d1565e`; bsc `0xdd88d6...fb441a`; bsc `0xe0565f...795072`; bsc `0xe6fe6b...a79d81`; bsc `0xe7f9a4...934aaf`; bsc `0xebdd37...bea7d0`; bsc `0xedf822...0f6392`; bsc `0xf35d63...7ad892`; bsc `0xf7a313...616fc9`; bsc `0xff0224...772815` | ⚠️ Unaudited |
| SmartWomConvert | unknown | bsc | [`0x2829f9...714af5`](./contracts/bsc-56/0x2829f9b0d5e95b6bdbf4e1324ae9c94852714af5/) | ⚠️ Unaudited |
| SnBnbYieldConverterStrategy | unknown | bsc | 4 deployments: bsc [`0x1101ff...923dc3`](./contracts/bsc-56/0x1101ff0f0545f3e2ed54fd986814295356923dc3/); bsc `0x84c445...b27190`; bsc `0x89a9bc...d3f2cf`; bsc `0xf9b24c...49ebaa` | ⚠️ Unaudited |
| SnStakeManager | unknown | bsc | [`0x9b83f2...6cfb6c`](./contracts/bsc-56/0x9b83f26e9626e81d8f7d059400c4e25ebd6cfb6c/) | ⚠️ Unaudited |
| SolvBTCBBNOracle | unknown | bsc | [`0xb35d0f...99055d`](./contracts/bsc-56/0xb35d0f744ddcd92763d37ab3c58716183a99055d/) | ⚠️ Unaudited |
| SolvBtcOracle | unknown | bsc | 2 deployments: bsc [`0x08bcb6...540c5f`](./contracts/bsc-56/0x08bcb6030db9f3eb310b226ca94f9ab7a1540c5f/); bsc `0xb7a753...48af85` | ⚠️ Unaudited |
| SousChef | unknown | bsc | [`0xfaa221...71b4d3`](./contracts/bsc-56/0xfaa221f0a3c36a17dacbecc1f19df4094871b4d3/) | ⚠️ Unaudited |
| StakeLisUSDListaDistributor | unknown | bsc | 4 deployments: bsc [`0x82c6fb...8a4491`](./contracts/bsc-56/0x82c6fb65aa044bb8463068e30d1146beb08a4491/); bsc `0xefebdd...9fcf14`; bsc `0xf2fa32...207026`; bsc `0xfeb284...2bdbac` | ⚠️ Unaudited |
| StakingVault | unknown | bsc | 6 deployments: bsc [`0x0541ee...a1806a`](./contracts/bsc-56/0x0541eeef035709040728bedbfd7234298ba1806a/); bsc `0x2c3f3b...ad0339`; bsc `0x62dfec...f68153`; bsc `0xd1a6cc...366c18`; bsc `0xeed4af...556410`; bsc `0xf40d0d...2004ad` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | arbitrum | [`0x0c880f...a8c9e8`](./contracts/arbitrum-42161/0x0c880f6761f1af8d9aa9c466984b80dab9a8c9e8/) | ⚠️ Unaudited |
| StoneOracle | unknown | bsc | 2 deployments: bsc [`0x3b2ff4...59ffb1`](./contracts/bsc-56/0x3b2ff473c2a10f7303230955a7fede931359ffb1/); bsc `0xdf5a8e...539be8` | ⚠️ Unaudited |
| SyrupBar | unknown | bsc | [`0x009cf7...cea9b0`](./contracts/bsc-56/0x009cf7bc57584b7998236eff51b98a168dcea9b0/) | ⚠️ Unaudited |
| ThenaERC20LpProvidableListaDistributor | unknown | bsc | 2 deployments: bsc [`0xc998f1...cee150`](./contracts/bsc-56/0xc998f14f0692526824bfa3d299fd5cce04cee150/); bsc `0xff5ed1...12eb00` | ⚠️ Unaudited |
| ThenaStaking | unknown | bsc | 3 deployments: bsc [`0xcda44d...2c34b3`](./contracts/bsc-56/0xcda44d50fa7a806372926e521e6dde34612c34b3/); bsc `0xe93ce7...5f6173`; bsc `0xfa5b48...0ac719` | ⚠️ Unaudited |
| TimeLock | unknown | bsc | 9 deployments: bsc [`0x07d274...735253`](./contracts/bsc-56/0x07d274a68393e8b8a2ccf19a2ce4ba3518735253/); bsc `0x4b57a6...20b410`; bsc `0x6f1864...7a7311`; bsc `0x713ee3...ccd068`; bsc `0x7afd7e...4b0c65`; bsc `0x8974b5...6d1492`; bsc `0xa1f482...2e8fe4`; bsc `0xac57c0...00cc70`; bsc `0xdd8531...06ae2c` | ⚠️ Unaudited |
| TimelockController | governance | arbitrum | 2 deployments: ethereum `0xda9f83...c27cf6`; arbitrum [`0x7d18fd...74ff08`](./contracts/arbitrum-42161/0x7d18fd87b64a917ab7d37cfb90163cfee374ff08/) | ⚠️ Unaudited |
| TokenImplementation | unknown | arbitrum | 2 deployments: arbitrum [`0x7b5eb3...9ddf96`](./contracts/arbitrum-42161/0x7b5eb3940021ec0e8e463d5dbb4b7b09a89ddf96/); arbitrum `0xa61f74...fa22a3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | 13 deployments: bsc [`0x227716...f6c867`](./contracts/bsc-56/0x227716e5f6c59f961e091d35345b16ce09f6c867/); bsc `0x2d24c9...96162d`; bsc `0x337a7a...c38249`; bsc `0x43a00b...75ea42`; bsc `0x4fece6...35ef65`; bsc `0x5be73a...cdb971`; bsc `0x5ecc1d...0627c4`; bsc `0x735f7a...e1e918`; bsc `0x7628a5...a7dcc0`; bsc `0xb18bf8...88605c`; bsc `0xbcb466...7a7245`; bsc `0xd84eff...064d97`; bsc `0xfc0ef1...38edfd` | ⚠️ Unaudited |
| UpgradeProxy | unknown | bsc | [`0x8d8f5a...58faa6`](./contracts/bsc-56/0x8d8f5a44d92d3cff40806548d204ffe90e58faa6/) | ⚠️ Unaudited |
| USDTLpListaDistributor | unknown | bsc | 2 deployments: bsc [`0x24e5de...0d0bd9`](./contracts/bsc-56/0x24e5debbeba18237fdb65d0f6adfe73b4a0d0bd9/); bsc `0x9eb77a...fb38f7` | ⚠️ Unaudited |
| UsdtOracle | unknown | bsc | 3 deployments: bsc [`0x45575e...c1d92d`](./contracts/bsc-56/0x45575e5ccef6c784ae7ce28ccbef1fd6dcc1d92d/); bsc `0xdf2d4c...17ae63`; bsc `0xf19dc2...a26a72` | ⚠️ Unaudited |
| VaultManager | unknown | bsc | 2 deployments: bsc [`0x15fc4e...727ec2`](./contracts/bsc-56/0x15fc4e6417c74577dee27aaafb2e2c5806727ec2/); bsc `0x5763dd...972ec7` | ⚠️ Unaudited |
| VeLista | unknown | bsc | 3 deployments: bsc [`0xd0c380...7b87b3`](./contracts/bsc-56/0xd0c380d31db43cd291e2bbe2da2fd6dc877b87b3/); bsc `0xee00de...e5319b`; bsc `0xf8d762...a9460a` | ⚠️ Unaudited |
| VeListaAutoCompounder | unknown | bsc | [`0x9a0530...c3bf5e`](./contracts/bsc-56/0x9a0530a81c83d3b0dae720bf91c9254fecc3bf5e/) | ⚠️ Unaudited |
| VeListaDistributor | unknown | bsc | 3 deployments: bsc [`0x006835...4ccfd6`](./contracts/bsc-56/0x0068358250759de8f50c83927c4a95847f4ccfd6/); bsc `0x45aac0...5ce40c`; bsc `0x4b1298...6f5145` | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | bsc | 2 deployments: bsc [`0x87e994...f9070f`](./contracts/bsc-56/0x87e994de2a997385aff4f991c233f07bb9f9070f/); bsc `0xca8d24...2b72e9` | ⚠️ Unaudited |
| VenusAdapter | unknown | bsc | 3 deployments: bsc [`0xc1d3a2...3cacef`](./contracts/bsc-56/0xc1d3a2f48f1c025f80e32a54a4000a73633cacef/); bsc `0xe5dbfc...c13d8d`; bsc `0xf76d9c...29cda9` | ⚠️ Unaudited |
| VLCakepie | unknown | bsc | [`0x232594...94eb26`](./contracts/bsc-56/0x232594e7f0096ba7ddabcd8689cb0d994694eb26/) | ⚠️ Unaudited |
| VLMGP | unknown | arbitrum | 2 deployments: bsc `0x9b69b0...eb32c6`; arbitrum [`0x536599...4786b9`](./contracts/arbitrum-42161/0x536599497ce6a35fc65c7503232fec71a84786b9/) | ⚠️ Unaudited |
| VLPenpie | unknown | optimism | 3 deployments: ethereum `0x4405c0...5af0f8`; optimism [`0x0af3ec...11527d`](./contracts/optimism-10/0x0af3ec6f9592c193196bef220bc0ce4d9311527d/); arbitrum `0xc61d3c...53feff` | ⚠️ Unaudited |
| VotingEscrowPendleMainchain | unknown | ethereum | [`0x4f30a9...170210`](./contracts/ethereum-1/0x4f30a9d41b80ecc5b94306ab4364951ae3170210/) | ⚠️ Unaudited |
| VotingEscrowPendleSidechain | unknown | base | 5 deployments: optimism `0xd5c47d...b2bb18`; sonic `0xe017cc...aee74d`; base [`0x051dcd...96b1fd`](./contracts/base-8453/0x051dcd6a80f11fe68f77fb0ebde03853fa96b1fd/); arbitrum `0x3209e9...c39644`; berachain `0x6875e4...658c9c` | ⚠️ Unaudited |
| VotingIncentive | unknown | bsc | 2 deployments: bsc [`0x05ac03...8a4c9c`](./contracts/bsc-56/0x05ac03faeb31c8102a29dc1fa4365dc9e18a4c9c/); bsc `0xbc380e...570b82` | ⚠️ Unaudited |
| WeEthOracle | unknown | bsc | 2 deployments: bsc [`0x8f8075...afeee1`](./contracts/bsc-56/0x8f8075340ece10e74245d5f0e0e242500bafeee1/); bsc `0xe51485...248b46` | ⚠️ Unaudited |
| WOFT | unknown | berachain | [`0xff9c59...88aef6`](./contracts/berachain-80094/0xff9c599d51c407a45d631c6e89cb047efb88aef6/) | ⚠️ Unaudited |
| WombatStaking | unknown | arbitrum | 2 deployments: bsc `0x664cc2...9db6e7`; arbitrum [`0x3cbfc9...e57eac`](./contracts/arbitrum-42161/0x3cbfc97f87f534b42bb58276b7b5dcad29e57eac/) | ⚠️ Unaudited |
| WstETHOracle | unknown | bsc | 2 deployments: bsc [`0x77f452...070b95`](./contracts/bsc-56/0x77f452a594aa6bf1eb67ceedd941ff14ac070b95/); bsc `0xc9ca23...24ddd7` | ⚠️ Unaudited |
| xSolvBTCOracle | unknown | bsc | [`0x0ad764...669caa`](./contracts/bsc-56/0x0ad764098ff68b100d0976a8bcf2294b67669caa/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (62)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x01ff59...b66d91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x040bec...e0e92b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0708ab...0d10ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x07ebfa...54ccf1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x08f7d6...a6ed0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x094616...cbf501` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0d3190...c7a3cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x13f423...e93488` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x19459c...c11c96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1c2db0...fc15ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2b2710...3464da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2bc844...d86945` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2c7e45...3eee5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x31a260...abdf63` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x340e08...99830b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x394473...33e28e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3ced93...76df8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3d7efb...e12f3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5a80eb...91bddf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x635684...941fd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x648f09...c36b3e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x66d839...fca8b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x685d9a...d4300e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x69b4aa...baf807` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x70035e...cc6d6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x77b69b...87ca41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7dbd30...5af56f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7ecd5a...515df3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x86de2b...67bdb3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8b7d34...2bf52c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x97ffb1...8cbdd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9b1529...12eedc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9b20be...b63e07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9f45c5...e49402` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa3add6...e4afa5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa924fb...7226b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa96b5a...17ebca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xae1951...5a4508` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaec0f9...d88e17` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbbb2aa...6974fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbd13ab...47c5f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbe18d6...c45255` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc057ba...4185b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcb2b70...8a7a0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd73294...be23f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd9e4e4...032327` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdb85e9...2b863f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xddbe9f...e22e07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe1ddc3...bfa4aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe30c6c...fbf616` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe33c3e...9ebc75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe5b438...25670d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe61ebc...284bd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe8ed59...b1906f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xea68ba...ddd114` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xead33e...61b520` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf013a8...7c4a21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf58a5a...7a0c61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xffcc2b...b81cec` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x017778...29cd7b` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x0d7432...7982bf` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x647316...482ee9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Cakepie-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Cakepie-v1.0.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [blocksec_cakepie_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_cakepie_v1.0-signed.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Eigenpie-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Eigenpie-v1.0.pdf) | PeckShield | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Magpie-v1.1.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Magpie-v1.1.pdf) | PeckShield | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 218 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3561] PeckShield-Audit-Report-Cakepie-v1.0.pdf
- [3562] blocksec_cakepie_v1.0-signed.pdf
- [3563] PeckShield-Audit-Report-Eigenpie-v1.0.pdf
- [3564] PeckShield-Audit-Report-Magpie-v1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
