# Agentic Audit Brief: Harvest Finance

## Project Overview

- Project: Harvest Finance (`harvest-finance`)
- Website: [https://harvest.finance/](https://harvest.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:58.294Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dfb3
- Chains: arbitrum, base, bsc, ethereum, polygon
- Contract surface: 709 unique implementations (1797 raw deployments)
- DeFi Llama TVL: $11,710,769.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 748 project-authored contract(s) across 5 chain(s); 10 ERC4626 vaults, 52 ERC20 tokens, 1 ERC721 NFT, 2 ERC1155 multi-tokens, 6 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 88 common project-authored base contract(s) (crvstrategyswerve, profitnotifier, controllable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 5086; live-surface contracts included: 1788 (1587 live, 201 unknown).
- Excluded by liveness: 3298 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 13/519 (2.5%)
- Deployed-live implementations: 520 of 709 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 13/519
- Verified + Unaudited implementations: 506
- Verified by bytecode match: 0
- Unverified implementations: 190
- Unique implementations: 709
- Raw deployments: 1797
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/harvest/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 13 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 7 | 1.3% | 2020-11 |
| Haechi | Tier 2 | 5 | 1.0% | 2020-09 |
| Least Authority | Tier 2 | 5 | 1.0% | 2021-02 |
| PeckShield | Tier 2 | 4 | 0.8% | 2020-10 |
| Halborn | Tier 2 | 3 | 0.6% | 2025-01 |
| LeastAuthority | Tier 2 | 3 | 0.6% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeRewardForwarder | unknown | ethereum | n/a | 8 deployments: ethereum [`0x153c54...c86676`](./contracts/ethereum-1/0x153c544f72329c1ba521ddf5086cf2fa98c86676/); ethereum `0x1fe9cf...704573`; ethereum `0x3d1352...962061`; ethereum `0x9397bd...270d94`; ethereum `0xdfc20a...1e43ae`; ethereum `0xef08a6...eb1153`; bsc `0xa0246c...19a14d`; bsc `0xef08a6...eb1153` | ✅ Audited |
| NoMintRewardPool | core_logic | ethereum | n/a | 37 deployments: ethereum [`0x01f9ca...af7254`](./contracts/ethereum-1/0x01f9caad0f9255b0c0aa2fbd1c1aa06ad8af7254/); ethereum `0x056e01...5b4924`; ethereum `0x10f1fc...41f438`; ethereum `0x12e75b...b07f5a`; ethereum `0x156733...3764b5`; ethereum `0x15d3a6...5b5b4a`; ethereum `0x16fbb1...65bfa3`; ethereum `0x27f12d...8be7d9`; ethereum `0x2a80e0...bd70bd`; ethereum `0x2e2580...cbffe6`; ethereum `0x346523...840bd1`; ethereum `0x3483ad...538cba`; ethereum `0x3a0f8b...0f3793`; ethereum `0x3da9d9...cdff8e`; ethereum `0x40c34b...b46614`; ethereum `0x4f7c28...c878bd`; ethereum `0x538613...ab0b68`; ethereum `0x59258f...8dbd4f`; ethereum `0x63e7d3...0b0e7a`; ethereum `0x6555c7...c11958`; ethereum `0x6ac4a7...4994a2`; ethereum `0x747318...0448b4`; ethereum `0x8bcbf1...5a3814`; ethereum `0x8dc427...f5c158`; ethereum `0x917d64...9ea77b`; ethereum `0x99b0d6...5cf9bf`; ethereum `0xae024f...b0546d`; ethereum `0xc02d1d...4d1a57`; ethereum `0xddb5d3...d3120e`; ethereum `0xe11c81...158a9d`; ethereum `0xe58f0d...3a2b16`; ethereum `0xe604fd...0adbe1`; ethereum `0xec56a2...a0ecda`; ethereum `0xf4784d...90725b`; ethereum `0xf4d50f...5cd940`; ethereum `0xf5b221...2bbbf8`; ethereum `0xfe83a0...220d0d` | ✅ Audited |
| NotifyHelper | periphery | ethereum | n/a | 2 deployments: ethereum [`0xe20c31...65053c`](./contracts/ethereum-1/0xe20c31e3d08027f5aface84a3a46b7b3b165053c/); bsc `0xf71042...2cc9f0` | ✅ Audited |
| PotPool | unknown | bsc | n/a | 117 deployments: ethereum `0x079158...9ddc69`; ethereum `0x08aa65...c749b2`; ethereum `0x0b4433...310a5c`; ethereum `0x0c67fb...15a7f5`; ethereum `0x11301b...2ab1d8`; ethereum `0x14ac1b...0845b9`; ethereum `0x15417a...45d9df`; ethereum `0x15aeb9...80f390`; ethereum `0x174678...7b980f`; ethereum `0x17ea33...948c47`; ethereum `0x1997e5...82501b`; ethereum `0x199eff...061004`; ethereum `0x1a0e12...db8e52`; ethereum `0x257968...d2aa11`; ethereum `0x269fa8...5b45af`; ethereum `0x277c21...34b2e4`; ethereum `0x2bd2ba...f83ec4`; ethereum `0x31a69b...93626b`; ethereum `0x34d358...25dc65`; ethereum `0x35de0d...7fbd8f`; ethereum `0x378c31...4fcb9d`; ethereum `0x3b808a...376842`; ethereum `0x47f4fc...3d21cc`; ethereum `0x516658...d4783d`; ethereum `0x54941a...4ba269`; ethereum `0x56db0f...a5433c`; ethereum `0x59a87a...9a79bb`; ethereum `0x59eeb3...e5fa8b`; ethereum `0x5aab6c...8c22b0`; ethereum `0x5ed17c...c7beca`; ethereum `0x6055d7...a4f507`; ethereum `0x611ac2...cb5bb2`; ethereum `0x677ad6...dd62be`; ethereum `0x694a3a...b7964b`; ethereum `0x6b6712...80f270`; ethereum `0x6ce6b6...843792`; ethereum `0x6dc8be...9f5a34`; ethereum `0x719d70...1b7417`; ethereum `0x743bd8...8383b1`; ethereum `0x7931d6...628e2d`; ethereum `0x85f11e...0b485f`; ethereum `0x8ab334...4d2ba4`; ethereum `0x8e54bb...377e32`; ethereum `0x937d4b...bf755a`; ethereum `0x95d2e1...381547`; ethereum `0x9b36b4...a804ee`; ethereum `0x9c6fbd...708dd1`; ethereum `0xa6f85b...0035ef`; ethereum `0xa73363...593cab`; ethereum `0xa9e60d...ad1a51`; ethereum `0xaa6f97...886e75`; ethereum `0xab2e51...2b23dc`; ethereum `0xae8d48...008606`; ethereum `0xb33a40...5858c3`; ethereum `0xb5f7fd...c310b7`; ethereum `0xba20df...224a76`; ethereum `0xc02f8f...a5d247`; ethereum `0xc5fc56...7cc2d1`; ethereum `0xd12747...0c1128`; ethereum `0xd18f25...1b2dbe`; ethereum `0xd2d194...cea17b`; ethereum `0xd8a3c7...f2f270`; ethereum `0xdc1873...b04d1f`; ethereum `0xdd496a...0941fe`; ethereum `0xddcaa7...593039`; ethereum `0xe7e1c3...980113`; ethereum `0xe9d557...5d6c85`; ethereum `0xea2ec0...ef3b10`; ethereum `0xefb78d...e4082d`; ethereum `0xf435e8...a8c5f1`; ethereum `0xf4ead5...ba1807`; ethereum `0xf55080...64a82e`; ethereum `0xf58337...22387d`; ethereum `0xf8cbfe...496102`; ethereum `0xf9bcab...61bee6`; ethereum `0xfbfbe3...e23b82`; ethereum `0xfd1121...c9f7ae`; bsc [`0x03292b...d0966a`](./contracts/bsc-56/0x03292bdfe36591f70575c77847d7f004ffd0966a/); bsc `0x03b58c...a1a2ba`; bsc `0x063eb3...318c52`; bsc `0x0694e3...05f745`; bsc `0x08b673...172066`; bsc `0x1bb6fd...2f299b`; bsc `0x221ed0...882cf3`; bsc `0x26a4fe...a7f84c`; bsc `0x2fee56...0a472c`; bsc `0x333103...bacc0f`; bsc `0x416588...e420fc`; bsc `0x57c305...8560a2`; bsc `0x5c6fe0...b2498f`; bsc `0x7002fc...0b9368`; bsc `0x76aadd...33abe7`; bsc `0x78963b...ea8ee9`; bsc `0x7caa01...da8792`; bsc `0x8709b4...c9510b`; bsc `0x884843...604449`; bsc `0x8e8ca3...3e7874`; bsc `0x9178f4...2d9998`; bsc `0x948125...e441cd`; bsc `0x9b36e1...88072c`; bsc `0xb3b56c...421f89`; bsc `0xc2a1fa...39e61c`; bsc `0xc6f39c...f87d95`; bsc `0xd16a73...03d76a`; bsc `0xd4bc60...f86ab0`; bsc `0xda88e3...22f6cd`; bsc `0xdeb314...5c1406`; bsc `0xe5f739...efccc1`; bsc `0xe637e7...e91c16`; bsc `0xe83f39...9f4f06`; bsc `0xe9e035...d7b871`; bsc `0xea2c3c...0ebe9e`; bsc `0xeab819...280310`; bsc `0xf1121f...f1c34e`; bsc `0xf53c67...5cb524`; bsc `0xfc8c1f...2a6277`; bsc `0xfe7f45...894b1a` | ✅ Audited |
| RewardToken | token | ethereum | n/a | [`0xa0246c...19a14d`](./contracts/ethereum-1/0xa0246c9032bc3a600820415ae600c6388619a14d/) | ✅ Audited |
| Vault | core_logic | ethereum | n/a | 9 deployments: ethereum [`0x192e9d...6888f3`](./contracts/ethereum-1/0x192e9d29d43db385063799bc239e772c3b6888f3/); ethereum `0x1a9f22...c32327`; ethereum `0x3761ef...f0f94b`; ethereum `0x636714...f16e3b`; ethereum `0x8e2987...3e7098`; ethereum `0xb19ebf...29d43c`; ethereum `0xb1feb6...3a57ee`; ethereum `0xc07eb9...b136b0`; ethereum `0xfbe122...81feec` | ✅ Audited |
| VaultDAI | core_logic | ethereum | n/a | [`0xe85c85...951dac`](./contracts/ethereum-1/0xe85c8581e60d7cd32bbfd86303d2a4fa6a951dac/) | ✅ Audited |
| VaultMigratable_1INCH2SUSHI | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x4bf633...c5b99e`](./contracts/ethereum-1/0x4bf633a09bd593f6fb047db3b4c25ef5b9c5b99e/); ethereum `0x859222...d6874a`; ethereum `0x8e5303...86e32d`; ethereum `0xd16239...48d690` | ✅ Audited |
| VaultUSDC | core_logic | ethereum | n/a | [`0xc3f7ff...e8326f`](./contracts/ethereum-1/0xc3f7ffb5d5869b3ade9448d094d81b0521e8326f/) | ✅ Audited |
| VaultUSDT | core_logic | ethereum | n/a | [`0xc7ee21...3d9f2f`](./contracts/ethereum-1/0xc7ee21406bb581e741fbb8b21f213188433d9f2f/) | ✅ Audited |
| VaultV2 | core_logic | ethereum | n/a | 8 deployments: ethereum [`0x053c80...de7c9c`](./contracts/ethereum-1/0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c/); ethereum `0x5d9d25...4d4ecb`; ethereum `0x71b9ec...a95fa5`; ethereum `0x81a276...c52b30`; ethereum `0xab7fa2...b1e04c`; ethereum `0xc27bfe...7460ba`; ethereum `0xf0358e...7bedbe`; ethereum `0xfe09e5...aa573e` | ✅ Audited |
| VaultV2 | unknown | base | n/a | 5 deployments: base [`0x91cffc...41ba00`](./contracts/base-8453/0x91cffcc1fe6b9da316e8848e141badb8cd41ba00/); base `0xa0200e...9d5785`; base `0xa912d9...ef02ae`; base `0xc77703...62263e`; base `0xe5beac...f138e2` | ✅ Audited |
| VaultV2 | core_logic | arbitrum | n/a | [`0xf54537...a717fb`](./contracts/arbitrum-42161/0xf54537b19796d2c75ecb6760a299b8482ea717fb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (506)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Aave2AssetFoldStrategyMainnet_ETH_cbETH | unknown | base | n/a | [`0x7dec70...d34fe4`](./contracts/base-8453/0x7dec7048d9bb44b5bd0250186ce24371ced34fe4/) | ⚠️ Unaudited |
| Aave2AssetFoldStrategyMainnet_ETH_cbETH | unknown | base | n/a | [`0x8728e1...61d976`](./contracts/base-8453/0x8728e11868d8e870573f00d7ba6da02e1f61d976/) | ⚠️ Unaudited |
| Aave2AssetFoldStrategyMainnet_ETH_cbETH | unknown | base | n/a | [`0xa2c8a6...48cffc`](./contracts/base-8453/0xa2c8a60b0ac47e5b61250a7e1b17894a2948cffc/) | ⚠️ Unaudited |
| Aave2AssetFoldStrategyMainnet_ETH_cbETH | unknown | base | n/a | [`0xc57e34...84036d`](./contracts/base-8453/0xc57e342f9032d188526b7d292d32655c8b84036d/) | ⚠️ Unaudited |
| Aave2AssetFoldStrategyMainnet_ETH_cbETH | unknown | base | n/a | [`0xcfd2f3...626757`](./contracts/base-8453/0xcfd2f32e6d533653ced5ba7e5fe1a76c3c626757/) | ⚠️ Unaudited |
| AccessManagerFactory | unknown | ethereum | n/a | 7 deployments: ethereum [`0x0d6028...00a740`](./contracts/ethereum-1/0x0d60285f0c37d977260d22e23df7984a0800a740/); ethereum `0xced97f...89305e`; ethereum `0xf902af...8ea3c1`; base `0x709e16...548a62`; base `0x8b41e7...76f1b3`; base `0x95cfd1...0696d2`; base `0xccf76d...b2f236` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_cbETH_ETH1 | unknown | base | n/a | 2 deployments: base [`0x079a34...873f3f`](./contracts/base-8453/0x079a34375531a9084deee1a4c1e13b5a14873f3f/); base `0xba861c...5daf44` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_cbETH_ETH1 | unknown | base | n/a | 3 deployments: base [`0x26a1b0...5f1e07`](./contracts/base-8453/0x26a1b0e3c71f0f4f9258269f58de8ad4d55f1e07/); base `0x6e386e...ad9e6a`; base `0xc07e6e...cccecc` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_cbETH_ETH1 | unknown | base | n/a | 2 deployments: base [`0x33c1bc...ebd7cf`](./contracts/base-8453/0x33c1bc4e11fd75be8f73304cb4a77abd5bebd7cf/); base `0xe9292a...c65223` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_cbETH_ETH1 | unknown | base | n/a | 2 deployments: base [`0x62796e...574a83`](./contracts/base-8453/0x62796e93641500acd80ac472544d0ee6ad574a83/); base `0xebf162...8e5781` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_ETH_USDC100 | unknown | base | n/a | 9 deployments: base [`0x023cd3...6cbd22`](./contracts/base-8453/0x023cd32ecad99e4104b70c3debb2c16fa76cbd22/); base `0x1f1b46...66c2b5`; base `0x38d45c...1b6f68`; base `0x3b8849...dc2bea`; base `0x68e6cd...0c558c`; base `0x691b1c...af2617`; base `0x7942f4...a2cc34`; base `0xb4dfb1...00f1c0`; base `0xc6f50d...f57f58` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_ETH_USDC100 | unknown | base | n/a | 2 deployments: base [`0x04b898...bbb9c1`](./contracts/base-8453/0x04b89827e86d6b51594f169e38de584f74bbb9c1/); base `0x93b0e1...e4a709` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_ETH_USDC100 | unknown | base | n/a | 9 deployments: base [`0x1807a7...f77aa0`](./contracts/base-8453/0x1807a729094098106bfd36c9f90b9caeaff77aa0/); base `0x29ec81...34707f`; base `0x328a2d...c3867a`; base `0x49416c...9d4e70`; base `0x4d58d9...6550cf`; base `0x53ecf9...f88f76`; base `0xa5aa84...4224a2`; base `0xc7622c...3aceb5`; base `0xf007f9...d3d73c` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_ETH_USDC100 | unknown | base | n/a | 2 deployments: base [`0x50c2cb...e19ded`](./contracts/base-8453/0x50c2cb4dfc1bb4d91997b81f5c3a758959e19ded/); base `0x5a1259...a4f8ed` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_ETH_USDC100 | unknown | base | n/a | 2 deployments: base [`0x6652a6...a49e3d`](./contracts/base-8453/0x6652a6653b5d711083120e5830fdb333cfa49e3d/); base `0xa68b48...3fe167` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_tBTC_cbBTC1 | unknown | base | n/a | 2 deployments: base [`0x530df2...bfaeec`](./contracts/base-8453/0x530df2495fec53eb6571cb61b4c92b37eebfaeec/); base `0xbc26a9...bc322e` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_tBTC_cbBTC1 | unknown | base | n/a | 2 deployments: base [`0x60491b...29d128`](./contracts/base-8453/0x60491b5c146c5d7c3b6dc9ca1ce233819029d128/); base `0xb01cdd...10f071` | ⚠️ Unaudited |
| AerodromeCLStrategyMainnet_tBTC_cbBTC1 | unknown | base | n/a | 2 deployments: base [`0xd92567...19f86a`](./contracts/base-8453/0xd9256785f93b459538cffb8a98116f659f19f86a/); base `0xed91e8...f15c2b` | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_DAIp_USDp | unknown | base | n/a | [`0xe36261...889fc9`](./contracts/base-8453/0xe362619deafee8b717a0efbfcbfaccdc51889fc9/) | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_DOLA_USDC | unknown | base | n/a | 2 deployments: base [`0x656279...55c997`](./contracts/base-8453/0x6562790cdd1aeee1fc683f8810da3da4b455c997/); base `0x6fd8d9...01812f` | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_eUSD_USDC | unknown | base | n/a | [`0x021556...c97e45`](./contracts/base-8453/0x0215563619d7f39ae8ddc693d2b9167646c97e45/) | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_ezETH_ETH | unknown | base | n/a | [`0x7c2984...1d1279`](./contracts/base-8453/0x7c2984beb66667bddc80390046378b41411d1279/) | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_jEUR_EURA | unknown | base | n/a | [`0x919f3a...9e7f41`](./contracts/base-8453/0x919f3a8f1d41ba87bf2e971678c133b3a79e7f41/) | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_jEUR_EURC | unknown | base | n/a | [`0xd1166d...228bc3`](./contracts/base-8453/0xd1166da83948d7f4d521f7242aec8fae8c228bc3/) | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_msETH_ETH | unknown | base | n/a | [`0xc85143...b98eda`](./contracts/base-8453/0xc85143305ba028437f07c8e3cc4f2a2d68b98eda/) | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_msUSD_USDC | unknown | base | n/a | [`0x8d4687...60d8cf`](./contracts/base-8453/0x8d46878b0d28a38263ac8b96f81477773460d8cf/) | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_rETH_ETH | unknown | base | n/a | [`0xb05419...0b2547`](./contracts/base-8453/0xb054193e67e62d566272e10e87b1948e170b2547/) | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_USDC_STAR | unknown | base | n/a | [`0x2d095f...29416b`](./contracts/base-8453/0x2d095fbf3abef7a096bc3b19758a14f61729416b/) | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_USDC_USDbC | unknown | base | n/a | [`0xa24d51...d69218`](./contracts/base-8453/0xa24d51a7ef5e6e87255abecad07b073388d69218/) | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_USDp_USDC | unknown | base | n/a | [`0x49fbad...f4c597`](./contracts/base-8453/0x49fbad6a2b95595b72563c37c1816d02e2f4c597/) | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_USDp_USDCp | unknown | base | n/a | [`0x0f5959...6c925b`](./contracts/base-8453/0x0f5959aa61e5c873f37bb1260afd5b055f6c925b/) | ⚠️ Unaudited |
| AerodromeStableStrategyMainnet_USDz_USDC | unknown | base | n/a | [`0x2466f5...c338be`](./contracts/base-8453/0x2466f56b0e7fc3c0be4ffa9abca4dad2c6c338be/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_AERO_USDC | unknown | base | n/a | [`0xa667bc...6573ab`](./contracts/base-8453/0xa667bc2607bb7a8816cb2231aca71070176573ab/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_aixCB_ETH | unknown | base | n/a | [`0x623d6c...868b97`](./contracts/base-8453/0x623d6c719662cece1205b4405265af19a2868b97/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_cbBTC_ETH | unknown | base | n/a | [`0x13d452...9325a7`](./contracts/base-8453/0x13d452845d5a7a78a2074c8e226153a5e49325a7/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_cbBTC_USDC | unknown | base | n/a | [`0xd24ce2...e93295`](./contracts/base-8453/0xd24ce2d3528f51f3d15bea320a6c95ffdce93295/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_cbETH_ETH | unknown | base | n/a | [`0x7232e3...ad1e6e`](./contracts/base-8453/0x7232e39344e07b038bd9c64dc5f5c15c06ad1e6e/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_CHAMP_cbBTC | unknown | base | n/a | [`0x3f6e45...196a3b`](./contracts/base-8453/0x3f6e4574ff7e2bf6bc6afd77549170ba08196a3b/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_CHAMP_ETH | unknown | base | n/a | [`0xf2f8cd...a89d6c`](./contracts/base-8453/0xf2f8cdb791bff8e95734689d433ce0ac57a89d6c/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_ETH_USDC | unknown | base | n/a | [`0x17bb1b...a0b05e`](./contracts/base-8453/0x17bb1b08db8766183be85279b233facd63a0b05e/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_ETH_USDC_V2 | unknown | base | n/a | [`0xce470c...ac0fe9`](./contracts/base-8453/0xce470ca5f1cb39d41d8c30d2aa08a0846bac0fe9/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_EURA_USDA | unknown | base | n/a | [`0x3a9a57...6330f1`](./contracts/base-8453/0x3a9a57f475baa3bc7ca904505a52bbb5796330f1/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_EURC_ETH | unknown | base | n/a | [`0x7991ab...db20a5`](./contracts/base-8453/0x7991ab93223e5add01386f30388c012188db20a5/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_EURC_USDC | unknown | base | n/a | [`0x88b9f8...4bbe6e`](./contracts/base-8453/0x88b9f84d5e426ef0fae6352b1c26778e0f4bbe6e/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_fBOMB_ETH | unknown | base | n/a | [`0xc202d8...49ea29`](./contracts/base-8453/0xc202d851841e634d7ba0527ac783d8b9d049ea29/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_GB_WETH | unknown | base | n/a | [`0x949394...0591d3`](./contracts/base-8453/0x9493946bf9ec7936723c8456863e1d986a0591d3/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_GENOME_ETH | unknown | base | n/a | [`0x6baf2c...21cbd2`](./contracts/base-8453/0x6baf2cd9c2758b23363bab33575680a74521cbd2/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_GHST_ETH | unknown | base | n/a | [`0x92b99c...321fb9`](./contracts/base-8453/0x92b99cab171bf5eb85f6bd040027b7ba7a321fb9/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_hyUSD_eUSD | unknown | base | n/a | [`0x06dc45...9f9b77`](./contracts/base-8453/0x06dc45973ca91f4049a895fe4261a9028d9f9b77/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_ION_WETH | unknown | base | n/a | [`0xb02e3d...559b72`](./contracts/base-8453/0xb02e3d3c9e9d84d860eeb195a8b88682b3559b72/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_OVN_USDp | unknown | base | n/a | [`0x2a05d7...9a01b9`](./contracts/base-8453/0x2a05d770df998dfee01ef7332df4b799d59a01b9/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_SEAM_USDbC | unknown | base | n/a | [`0x4a8fed...35f5a8`](./contracts/base-8453/0x4a8fed809d7e7a068c581fe9848c84f53935f5a8/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_TAROT_ETH | unknown | base | n/a | [`0xe2d3f1...76ac04`](./contracts/base-8453/0xe2d3f10e0dd48453c57065c5384195dfaf76ac04/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_tBTC_ETH | unknown | base | n/a | [`0x802da5...4dfe31`](./contracts/base-8453/0x802da57bfe4243d486b71154812f4b5c8c4dfe31/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_tBTC_USDC | unknown | base | n/a | [`0x57d862...d14a4e`](./contracts/base-8453/0x57d862bcc4d371fc032b65c2216f8b9392d14a4e/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_USDC_AERO | unknown | base | n/a | [`0x06a407...1e5005`](./contracts/base-8453/0x06a4071bd7c1f16bf6839d0a743bfa74631e5005/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_USDC_KLIMA | unknown | base | n/a | [`0x828450...5330c9`](./contracts/base-8453/0x828450cc17f32c7bf4686c6f475d2edca55330c9/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_USDC_SPOT | unknown | base | n/a | [`0x1889c7...8fdb79`](./contracts/base-8453/0x1889c7c26edeaae79896014a53675a880d8fdb79/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_VIRTUAL_cbBTC | unknown | base | n/a | [`0x95c6cc...6e1c16`](./contracts/base-8453/0x95c6cc541a3280d6a307c88e55a8487c796e1c16/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_VIRTUAL_ETH | unknown | base | n/a | [`0xb64ef7...209d87`](./contracts/base-8453/0xb64ef73a216a0d72141ad541dbbe05d732209d87/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_VVV_ETH | unknown | base | n/a | [`0x929c83...7bd18c`](./contracts/base-8453/0x929c83d67dedace19da4a0ab52ae223a707bd18c/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_wBLT_BMX | unknown | base | n/a | [`0x163c63...f273d1`](./contracts/base-8453/0x163c63a6e88bb137003cd6f06b0b87787af273d1/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_weETH_ETH | unknown | base | n/a | [`0xcad543...08828c`](./contracts/base-8453/0xcad543add5857097802b51adc96a0f3a3108828c/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_WELL_ETH | unknown | base | n/a | 2 deployments: base [`0x396690...d01cea`](./contracts/base-8453/0x396690f021f5f73abc5d1aaa8cf3a991abd01cea/); base `0x8aaf6a...513021` | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_WETH_AERO | unknown | base | n/a | [`0x0e767a...67b877`](./contracts/base-8453/0x0e767ad14cb94fa770b46ad9766545675167b877/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_WETH_KLIMA | unknown | base | n/a | [`0xc337c6...9fbb24`](./contracts/base-8453/0xc337c6e2a8da1488b5e3223699d31bdf489fbb24/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_WETH_WELL | unknown | base | n/a | [`0x7d5eaa...c4ad12`](./contracts/base-8453/0x7d5eaa763759b728586fdbe74bb1271741c4ad12/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_WETH_WELS | unknown | base | n/a | [`0x18bf51...c0a248`](./contracts/base-8453/0x18bf511b1f3ee9345d098931ec947cd8fac0a248/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_wrsETH_ETH | unknown | base | n/a | [`0xd6fcce...4fd0a8`](./contracts/base-8453/0xd6fcceb90198a79981e91a7378d2abc3fa4fd0a8/) | ⚠️ Unaudited |
| AerodromeVolatileStrategyMainnet_wUSDR_USDC | unknown | base | n/a | [`0xe06b10...12e662`](./contracts/base-8453/0xe06b10720ab0402cdccbc809de91ea5f7712e662/) | ⚠️ Unaudited |
| AmpliFARM | unknown | bsc | n/a | [`0xf10829...a4ea26`](./contracts/bsc-56/0xf1082963bf1a5ae8733c0462ec6e8c76c1a4ea26/) | ⚠️ Unaudited |
| Amplifier | unknown | bsc | n/a | 2 deployments: bsc [`0x20099e...782d14`](./contracts/bsc-56/0x20099e925aad6d77803f6e9f3e3dae4ea4782d14/); bsc `0x633a05...14ad6a` | ⚠️ Unaudited |
| AmpliViewer | unknown | bsc | n/a | [`0x0f0cd8...0f63f2`](./contracts/bsc-56/0x0f0cd8ecf7d13245a54e785f8c3b67dea80f63f2/) | ⚠️ Unaudited |
| AnyswapV3ERC20 | token | bsc | n/a | 15 deployments: bsc [`0x049d68...3a3c7a`](./contracts/bsc-56/0x049d68029688eabf473097a2fc38ef61633a3c7a/); bsc `0x1f6367...f7b52f`; bsc `0x1f7216...f96eae`; bsc `0x2442af...03a6c9`; bsc `0x4b5c23...d33743`; bsc `0x4d3386...fb3c6a`; bsc `0x564bef...41b9f3`; bsc `0x5986d5...0a71da`; bsc `0x627524...b671fd`; bsc `0x6a545f...9e6c29`; bsc `0x812764...1e82a0`; bsc `0x84c882...106117`; bsc `0x9899a9...4ff9ff`; bsc `0x9e0846...17da21`; bsc `0xc417b4...f4d0a5` | ⚠️ Unaudited |
| ArcadiaLendStrategyMainnet_cbBTC | unknown | base | n/a | [`0x6be087...7f30cc`](./contracts/base-8453/0x6be0874245150369a22e2dd0eb33d4d4fa7f30cc/) | ⚠️ Unaudited |
| ArcadiaLendStrategyMainnet_ETH | unknown | base | n/a | [`0xc27a66...73f6ed`](./contracts/base-8453/0xc27a66ec318bd0be69c048d734eee9bbd773f6ed/) | ⚠️ Unaudited |
| ArcadiaLendStrategyMainnet_USDC | unknown | base | n/a | [`0x456173...01905a`](./contracts/base-8453/0x456173684d54689cb7833d587ecfa0361a01905a/) | ⚠️ Unaudited |
| AutoStake | unknown | ethereum | n/a | [`0x25550c...00fc50`](./contracts/ethereum-1/0x25550cccbd68533fa04bfd3e3ac4d09f9e00fc50/) | ⚠️ Unaudited |
| BalancerStrategyMainnet_BAL_WETH | unknown | ethereum | n/a | [`0x2941a4...e8c89b`](./contracts/ethereum-1/0x2941a48956a2bd476eac6671d76921b6b7e8c89b/) | ⚠️ Unaudited |
| BalancerStrategyMainnet_DAI_WETH | unknown | ethereum | n/a | [`0xc2c30c...34b5d1`](./contracts/ethereum-1/0xc2c30cd4898b6004fbb82a8c7bd72d3b3734b5d1/) | ⚠️ Unaudited |
| BalancerStrategyMainnet_USDC_WETH | unknown | ethereum | n/a | [`0x06a2e6...d080ee`](./contracts/ethereum-1/0x06a2e6347353edd5653b240d70cdc97f37d080ee/) | ⚠️ Unaudited |
| BalancerStrategyMainnet_USDT_WETH | unknown | ethereum | n/a | [`0x83ddbb...093fa1`](./contracts/ethereum-1/0x83ddbb631595cc92ca34b17e0cfc24e059093fa1/) | ⚠️ Unaudited |
| BalancerStrategyMainnet_WBTC_WETH | unknown | ethereum | n/a | [`0x857be6...07c565`](./contracts/ethereum-1/0x857be610838b6c16b51fff8bfdd039fa3007c565/) | ⚠️ Unaudited |
| BasedStrategyMainnet_BASED_ETH | unknown | base | n/a | [`0x710543...a30e84`](./contracts/base-8453/0x710543f204c4d91c78e846b66efaada318a30e84/) | ⚠️ Unaudited |
| BasedStrategyV2Mainnet_BASED_ETH | unknown | base | n/a | 2 deployments: base [`0x34bdf8...d7e109`](./contracts/base-8453/0x34bdf84117a2a681e1d9563074079e8e1ed7e109/); base `0xd3c0d2...e32fb1` | ⚠️ Unaudited |
| BasedStrategyV2Mainnet_BASED_ETH | unknown | base | n/a | 2 deployments: base [`0x8e0e84...a57f9c`](./contracts/base-8453/0x8e0e841aeb7a7f3929a7e19e8b4d90a64da57f9c/); base `0xec433f...18c387` | ⚠️ Unaudited |
| BasedStrategyV2Mainnet_BASED_ETH | unknown | base | n/a | 2 deployments: base [`0xb30ead...9ceabe`](./contracts/base-8453/0xb30ead2faccd5dff5921f16fc470f436ad9ceabe/); base `0xca4550...699464` | ⚠️ Unaudited |
| BasedStrategyV2Mainnet_bSHARE_ETH | unknown | base | n/a | [`0x231b51...e4f792`](./contracts/base-8453/0x231b5182aa64fbef121097adf7510ff73ee4f792/) | ⚠️ Unaudited |
| BaseSwapStrategyMainnet_BSWAP_ETH | unknown | base | n/a | [`0x7978ab...6f9340`](./contracts/base-8453/0x7978ab0822093a2916e83d67d2b63319c06f9340/) | ⚠️ Unaudited |
| BaseSwapStrategyMainnet_CBETH_ETH | unknown | base | n/a | [`0xb60a10...399280`](./contracts/base-8453/0xb60a10960714a60730b9b5ef1f25878cab399280/) | ⚠️ Unaudited |
| BaseSwapStrategyMainnet_DAI_USDC | unknown | base | n/a | [`0x46238c...2e249a`](./contracts/base-8453/0x46238ca6c7bcd6a44642dbabd0a03d0e762e249a/) | ⚠️ Unaudited |
| BaseSwapStrategyMainnet_ETH_USDC | unknown | base | n/a | [`0x7eb185...e3a957`](./contracts/base-8453/0x7eb185d7f93fc95fc0276e3267f28800d6e3a957/) | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_axlUSDC_ETH | unknown | base | n/a | [`0xf5294f...af9655`](./contracts/base-8453/0xf5294f9fb8802a4c893c3f17a319cd60ccaf9655/) | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_axlWBTC_USDbC | unknown | base | n/a | [`0xe25930...83bc3c`](./contracts/base-8453/0xe259305fb9e42597ddcaede053281ae0b483bc3c/) | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_BSWAP_ETH | unknown | base | n/a | 2 deployments: base [`0x113505...61dadb`](./contracts/base-8453/0x113505e6e9ce122ffd98876628ed1c303561dadb/); base `0xb21ecb...fa77fe` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_BSWAP_ETH | unknown | base | n/a | 2 deployments: base [`0x7d01d4...e111e6`](./contracts/base-8453/0x7d01d400132c2fa059f59ecaef8567a4d3e111e6/); base `0xea73d5...90a01e` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_BSX_ETH | unknown | base | n/a | 3 deployments: base [`0x67f3e3...3f5f23`](./contracts/base-8453/0x67f3e318fcac3ef1b8572af4b0e407095a3f5f23/); base `0x7a641c...e94357`; base `0xc922d5...94d104` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_CBETH_ETH | unknown | base | n/a | 2 deployments: base [`0x0555c6...7b1c4b`](./contracts/base-8453/0x0555c691922d47ae38ade879f47124cf5c7b1c4b/); base `0x8b9d17...bfdb86` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_CBETH_ETH | unknown | base | n/a | 2 deployments: base [`0x0ad775...40282f`](./contracts/base-8453/0x0ad775665eec739ae776b49604e99806a840282f/); base `0x2b0a02...b7f2a5` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_DAI_USDC | unknown | base | n/a | 2 deployments: base [`0x078c52...17fd00`](./contracts/base-8453/0x078c52ba0e7bd210949581f3d1a2fc500217fd00/); base `0xc08f9e...b36055` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_DAI_USDC | unknown | base | n/a | 2 deployments: base [`0x3c18c5...478249`](./contracts/base-8453/0x3c18c53fb42ef56508c4f03720d4dd1785478249/); base `0x6e818c...5dc41a` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_ETH_DAI | unknown | base | n/a | [`0xc1e7e7...ed5bcc`](./contracts/base-8453/0xc1e7e775c4de42d0814d5a610e3e2812b7ed5bcc/) | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_ETH_USDC | unknown | base | n/a | 2 deployments: base [`0x3e3c5d...04c841`](./contracts/base-8453/0x3e3c5d3e4b34ab5d387e394877d77e173004c841/); base `0x60a319...b40507` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_ETH_USDC | unknown | base | n/a | 2 deployments: base [`0x4772de...dff641`](./contracts/base-8453/0x4772de1c0781d560f3fa18a21a72c77180dff641/); base `0xda4fb2...79e3ce` | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_USDbC_USDC | unknown | base | n/a | [`0x5d7103...304ea0`](./contracts/base-8453/0x5d710376dd1e990e5fb4e9146d09b3846e304ea0/) | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_USDC_ETH | unknown | base | n/a | [`0x1ec83e...cb6fac`](./contracts/base-8453/0x1ec83eb417e5bdc6a61cf021de461c1d88cb6fac/) | ⚠️ Unaudited |
| BaseSwapStrategyV2Mainnet_USDPLUS_USDbC | unknown | base | n/a | [`0x628dd1...e23b22`](./contracts/base-8453/0x628dd1b5f4f9a44df8cd915eeff7570ef0e23b22/) | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_BAC_DAI | unknown | ethereum | n/a | [`0x65fefa...15ed9f`](./contracts/ethereum-1/0x65fefab5ebeb38cbde82c4c20e226834db15ed9f/) | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_BAC_DAIV2 | unknown | ethereum | n/a | [`0x6b4778...927894`](./contracts/ethereum-1/0x6b477831b8af02393f1fedd36956418ce9927894/) | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_BAC_DAIV3 | unknown | ethereum | n/a | [`0x05f9cd...ecb39b`](./contracts/ethereum-1/0x05f9cd69cefc73872731911293e3734d36ecb39b/) | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_BAC_DAIV4 | unknown | ethereum | n/a | [`0x51ebe1...6bbf0f`](./contracts/ethereum-1/0x51ebe128f197bbf087ce79db51960eb6e86bbf0f/) | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_DAI_BAS | unknown | ethereum | n/a | [`0x61ecfe...fd7d36`](./contracts/ethereum-1/0x61ecfe8eb3522ec685c70f4732cf32c39cfd7d36/) | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_DAI_BASV2 | unknown | ethereum | n/a | [`0x1adafe...079361`](./contracts/ethereum-1/0x1adafe68f46e0aecd5364b85966c8c16d4079361/) | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_DAI_BASV3 | unknown | ethereum | n/a | [`0x2ab43e...af948d`](./contracts/ethereum-1/0x2ab43e7fb17dbbbcc5bb31a7f08e9a2d8baf948d/) | ⚠️ Unaudited |
| Basis2FarmStrategyMainnet_DAI_BASV4 | unknown | ethereum | n/a | [`0xfd4e29...5d5ff8`](./contracts/ethereum-1/0xfd4e29e4869112abbec6846151f6d47fd25d5ff8/) | ⚠️ Unaudited |
| BasisGold2FarmStrategyMainnet_DAI_BSG | unknown | ethereum | n/a | [`0x8d6403...9055ed`](./contracts/ethereum-1/0x8d640378c983c6aab076bdb5d86a58f9179055ed/) | ⚠️ Unaudited |
| BasisGold2FarmStrategyMainnet_DAI_BSGS | unknown | ethereum | n/a | [`0x3f3718...792eb3`](./contracts/ethereum-1/0x3f37185399537e95686a66247514de55c8792eb3/) | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_BAC | unknown | ethereum | n/a | [`0xb075ba...828ae2`](./contracts/ethereum-1/0xb075ba5dc253e39376ac044182be13315e828ae2/) | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_DAI | unknown | ethereum | n/a | [`0x1669c1...5ebfa8`](./contracts/ethereum-1/0x1669c1a1e8d6474ffccb33d1e5f3b3de8e5ebfa8/) | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_DAI_BSG | unknown | ethereum | n/a | [`0x296606...a7c6ed`](./contracts/ethereum-1/0x296606a0b0c4560db4c9a650f35340854ca7c6ed/) | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_DAI_BSGS | unknown | ethereum | n/a | [`0x9bedf3...39037b`](./contracts/ethereum-1/0x9bedf37edb278e6840328453c256c70d6139037b/) | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_DSD | unknown | ethereum | n/a | [`0x185f97...681810`](./contracts/ethereum-1/0x185f97af588c0d416da1bc3828234f94f4681810/) | ⚠️ Unaudited |
| BasisGoldStrategyMainnet_ESD | unknown | ethereum | n/a | [`0x7e2a45...7361ab`](./contracts/ethereum-1/0x7e2a45ea5223ed02fe80e5020aa650121a7361ab/) | ⚠️ Unaudited |
| bDollarStrategyMainnet_BDO_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x0477b3...58864e`](./contracts/bsc-56/0x0477b3b746f99010d255f6556444039e2e58864e/); bsc `0x8f2f86...a09650` | ⚠️ Unaudited |
| bDollarStrategyMainnet_BDO_BUSD | unknown | bsc | n/a | 2 deployments: bsc [`0x3068d8...b68931`](./contracts/bsc-56/0x3068d8e178fc0ef0a8ed73a05301e3b46cb68931/); bsc `0xd70e38...e54919` | ⚠️ Unaudited |
| bDollarStrategyMainnet_BDO_BUSD | unknown | bsc | n/a | [`0xd8f5a5...a7b6d8`](./contracts/bsc-56/0xd8f5a5bea95740d2749d20f4c26d543579a7b6d8/) | ⚠️ Unaudited |
| bDollarStrategyMainnet_SBDO_BUSD | unknown | bsc | n/a | [`0x36a1f2...01c90f`](./contracts/bsc-56/0x36a1f264b79f41048d165341b06630d0d201c90f/) | ⚠️ Unaudited |
| bDollarStrategyMainnet_SBDO_BUSD | unknown | bsc | n/a | 2 deployments: bsc [`0x74fad0...4da5e6`](./contracts/bsc-56/0x74fad021134e5851896fa58f536981c6eb4da5e6/); bsc `0x77ee32...2f0676` | ⚠️ Unaudited |
| BeltSingleAssetStrategyMainnet_BeltBTCB | unknown | bsc | n/a | 2 deployments: bsc [`0xd8707e...72b07d`](./contracts/bsc-56/0xd8707e6dca55a52f4827738367b1c2b17872b07d/); bsc `0xe6cad0...c26dd8` | ⚠️ Unaudited |
| BeltSingleAssetStrategyMainnet_BeltETH | unknown | bsc | n/a | [`0x78ac81...13dd5b`](./contracts/bsc-56/0x78ac817a889849b7b362600e391229a90913dd5b/) | ⚠️ Unaudited |
| BeltStrategyMainnet_BELT_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x176413...880387`](./contracts/bsc-56/0x176413fca54884e8eef87f8703f984ef98880387/); bsc `0x3839ed...2d6998` | ⚠️ Unaudited |
| BeltStrategyMainnet_BELT_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x2e0a0f...c09d59`](./contracts/bsc-56/0x2e0a0feef0912d38c4c59a877bd06130f8c09d59/); bsc `0x497173...1b6402` | ⚠️ Unaudited |
| BeltStrategyMainnet_BELT_BNB | unknown | bsc | n/a | [`0xf869e3...a9a8c5`](./contracts/bsc-56/0xf869e383a204312d43eab0c640a4fc4574a9a8c5/) | ⚠️ Unaudited |
| BeltVenusStrategyMainnet | unknown | bsc | n/a | 2 deployments: bsc [`0x3736f9...89653a`](./contracts/bsc-56/0x3736f98190383bb0490d0099cbedd4175f89653a/); bsc `0xda23a5...a210e2` | ⚠️ Unaudited |
| BoostRedirection | unknown | bsc | n/a | 2 deployments: bsc [`0x48b145...b91fe9`](./contracts/bsc-56/0x48b145fd852929c30ed9707ec3cd03911eb91fe9/); bsc `0x572bc5...834a92` | ⚠️ Unaudited |
| BoostStaking | unknown | bsc | n/a | 2 deployments: bsc [`0x27d732...d77d5f`](./contracts/bsc-56/0x27d7321443d5c9d2ab692897c248d97386d77d5f/); bsc `0xb0fb3d...898d1f` | ⚠️ Unaudited |
| BorrowRecipient | unknown | ethereum | n/a | 2 deployments: ethereum [`0x108dbb...03c58e`](./contracts/ethereum-1/0x108dbb31b3b5926994aeb3779225adf44503c58e/); ethereum `0xdc2622...ecc0f0` | ⚠️ Unaudited |
| CallbackHandlerEuler | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3b219f...d98602`](./contracts/ethereum-1/0x3b219fd68a7bf5c505503d0cb528148a06d98602/); base `0x64eca0...2c7532` | ⚠️ Unaudited |
| CallbackHandlerReader | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5b0584...20e393`](./contracts/ethereum-1/0x5b05841aa46db37510e65ea6e61a569e9c20e393/); base `0x6966d6...efedba` | ⚠️ Unaudited |
| CLRebalanceChecker | unknown | base | n/a | [`0x2f3af3...222a92`](./contracts/base-8453/0x2f3af314d17c88849b24b7c69959c1ed28222a92/) | ⚠️ Unaudited |
| CLVault | unknown | base | n/a | 6 deployments: base [`0x00d373...ee7ad3`](./contracts/base-8453/0x00d373ae70c82cb30c02eee65b7827c262ee7ad3/); base `0x1c2bf1...8aca18`; base `0x1d0890...24edbf`; base `0x7d4a5f...c81074`; base `0x9d73c8...ae8d9b`; base `0xf5336c...60650e` | ⚠️ Unaudited |
| CLVault | unknown | base | n/a | 7 deployments: base [`0x17a368...365dcd`](./contracts/base-8453/0x17a368cdc8d9b75751ec7c98133de7316d365dcd/); base `0x861105...edf36e`; base `0x86b8e5...eddf4f`; base `0x8fff1a...9d3352`; base `0xab1281...eb6dfa`; base `0xcc00dd...521fc3`; base `0xec0c00...eb6a3c` | ⚠️ Unaudited |
| CLVault | unknown | base | n/a | 9 deployments: base [`0x1e83d5...fddc37`](./contracts/base-8453/0x1e83d59b9c9c323d48d1dfaad2e364d0f0fddc37/); base `0x361d91...f64530`; base `0x3948bc...bb4b05`; base `0x48eae1...04100a`; base `0x5beaa9...ff6768`; base `0x76d7ae...eae753`; base `0x7be5b4...71b412`; base `0x80c908...7f2136`; base `0xd43389...0cfd78` | ⚠️ Unaudited |
| CLVault | unknown | base | n/a | 2 deployments: base [`0x56fb81...fe2171`](./contracts/base-8453/0x56fb8147992336026f0d7e4a4a7b0d02b0fe2171/); base `0xb42c20...f2aa90` | ⚠️ Unaudited |
| CLVault | unknown | base | n/a | 3 deployments: base [`0x8d3a43...1c93fc`](./contracts/base-8453/0x8d3a43fb9c56c53e40665d5cdf72ac24e21c93fc/); base `0xf1d563...0f48ec`; base `0xf83648...d3b94e` | ⚠️ Unaudited |
| CLWrapper | unknown | base | n/a | 16 deployments: base [`0x09cebe...1a4033`](./contracts/base-8453/0x09cebe390d2cd46e2919c6d87b5d5a23601a4033/); base `0x0d1aca...f71ac9`; base `0x0d30fa...6b698a`; base `0x1d6fd9...9a5e8b`; base `0x2cbc31...651e24`; base `0x2e676d...578092`; base `0x358537...2e966a`; base `0x4177a5...086825`; base `0x645ae5...1c4006`; base `0x781ca2...ade650`; base `0x7a43d0...6e8448`; base `0x8cda67...b05469`; base `0x8d85fd...86c861`; base `0x986fd0...ad5bd0`; base `0xa2faa0...4cb95d`; base `0xe3dce2...738f80` | ⚠️ Unaudited |
| ComplifiDerivStrategyMainnet_ETH5x | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4c9920...825064`](./contracts/ethereum-1/0x4c992088252441ee1840ad0213bf27e7b8825064/); ethereum `0x9dbb8f...9dd819` | ⚠️ Unaudited |
| ComplifiStrategyClaimMainnet_COMFI_WETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2a8365...9ab2c0`](./contracts/ethereum-1/0x2a83655c0bb11554f3f13a301b2afc75c99ab2c0/); ethereum `0x772484...33afe5` | ⚠️ Unaudited |
| ComplifiStrategyMainnet_COMFI_WETH | unknown | ethereum | n/a | [`0x69672c...4b60a6`](./contracts/ethereum-1/0x69672c04601d62ce5f161a258ff24e03914b60a6/) | ⚠️ Unaudited |
| CompoundStrategyMainnet_ETH | unknown | base | n/a | [`0x37061f...fe3eb4`](./contracts/base-8453/0x37061f938501a02f61292086d62bf4929dfe3eb4/) | ⚠️ Unaudited |
| ContextManager | unknown | ethereum | n/a | 46 deployments: ethereum [`0x0f2e1c...9592b7`](./contracts/ethereum-1/0x0f2e1ce94519a0b0056a243d055352d3119592b7/); ethereum `0x0fe8d7...62a702`; ethereum `0x1822a8...664d4f`; ethereum `0x226b2c...a6d167`; ethereum `0x3782bc...3c9fd8`; ethereum `0x3db87a...a910c1`; ethereum `0x446f85...700153`; ethereum `0x4f1f51...aa3dd2`; ethereum `0x503873...b3ab72`; ethereum `0x58f50b...f4cb9b`; ethereum `0x695d74...68de3a`; ethereum `0x75c991...b7bf5b`; ethereum `0x9627ed...236014`; ethereum `0xabc0fd...67df0e`; ethereum `0xba6839...270317`; ethereum `0xc223ea...8cc210`; ethereum `0xe5b4ff...49f8af`; ethereum `0xe62a03...fcab36`; ethereum `0xecb36d...90243a`; ethereum `0xeda1e6...78c0a4`; ethereum `0xeeddc5...fe7d10`; ethereum `0xfdb898...f1b526`; ethereum `0xfdd67a...8e731f`; base `0x1ee02b...689a51`; base `0x23c2a2...b7b4b6`; base `0x265582...6d5e8f`; base `0x312388...0c201f`; base `0x34c7b3...f66b7f`; base `0x47da5b...3c2025`; base `0x4a84a8...4dae15`; base `0x6f4fcb...a5deb3`; base `0x722c6a...65cd58`; base `0x80c441...6cbf0d`; base `0x8f04cf...dca5cc`; base `0x9792ea...141ce9`; base `0xa74899...a0d8e9`; base `0xb56aea...055a48`; base `0xbf73aa...3a4206`; base `0xc0934d...e98de7`; base `0xccc731...435e41`; base `0xce0c20...d0f15f`; base `0xcf4267...c139b8`; base `0xd14a7d...33532c`; base `0xd5629b...6d083b`; base `0xdfe1af...b96a20`; base `0xfe9390...fbf16c` | ⚠️ Unaudited |
| ContextManagerFactory | unknown | ethereum | n/a | 7 deployments: ethereum [`0x1a8404...2decc4`](./contracts/ethereum-1/0x1a8404fb75e221ac472119aebfec61e1212decc4/); ethereum `0x9a5b39...9a9850`; ethereum `0xea0b11...607815`; base `0x704515...2ce887`; base `0xaa7f40...fa2f6e`; base `0xb40095...3a2e32`; base `0xd2d3a0...a384bd` | ⚠️ Unaudited |
| Controller | unknown | bsc | n/a | 3 deployments: ethereum `0x3cc478...7c55e3`; bsc [`0x222412...953b1c`](./contracts/bsc-56/0x222412af183bceadefd72e4cb1b71f1889953b1c/); base `0xf90ff0...efa745` | ⚠️ Unaudited |
| ConvexStrategy3CRVMainnet | unknown | ethereum | n/a | [`0x025003...756029`](./contracts/ethereum-1/0x0250038b2444665f2f146e6ed5cd881eb5756029/) | ⚠️ Unaudited |
| ConvexStrategy3CryptoV2Mainnet | unknown | ethereum | n/a | [`0x8cff95...dc7c81`](./contracts/ethereum-1/0x8cff95cb59a22543c9525f1c8b7577b5eddc7c81/) | ⚠️ Unaudited |
| ConvexStrategyBUSDMainnet | unknown | ethereum | n/a | [`0x6a19ae...683cde`](./contracts/ethereum-1/0x6a19aea134cc3c6069b2d89b5a1042cabc683cde/) | ⚠️ Unaudited |
| ConvexStrategyEURSMainnet | unknown | ethereum | n/a | [`0x59b556...e4c16b`](./contracts/ethereum-1/0x59b5562455b6db440265e0ae63dab8d59fe4c16b/) | ⚠️ Unaudited |
| ConvexStrategyEURTMainnet | unknown | ethereum | n/a | [`0x56cfc5...056bb6`](./contracts/ethereum-1/0x56cfc57bc1c5b40dc739b88fbebcc96b05056bb6/) | ⚠️ Unaudited |
| ConvexStrategyHBTCMainnet | unknown | ethereum | n/a | [`0xce9bc5...95e5aa`](./contracts/ethereum-1/0xce9bc5157f2d28d64749e27ddfa18159c795e5aa/) | ⚠️ Unaudited |
| ConvexStrategyHUSDMainnet | unknown | ethereum | n/a | [`0x000d02...857704`](./contracts/ethereum-1/0x000d02bb5e9ff7bd7aec0c37999b4d1031857704/) | ⚠️ Unaudited |
| ConvexStrategyIbEURMainnet | unknown | ethereum | n/a | [`0x015795...fdfd63`](./contracts/ethereum-1/0x01579527d5734c03b8220e96dd5754346bfdfd63/) | ⚠️ Unaudited |
| ConvexStrategyLinkMainnet | unknown | ethereum | n/a | [`0x80a66d...fc0b75`](./contracts/ethereum-1/0x80a66dd69ed1b7ddf6ae622aa942c8187dfc0b75/) | ⚠️ Unaudited |
| ConvexStrategyMIMMainnet | unknown | ethereum | n/a | [`0x596355...76411c`](./contracts/ethereum-1/0x596355e19910dd683c294906df14ed212f76411c/) | ⚠️ Unaudited |
| ConvexStrategyOBTCMainnet | unknown | ethereum | n/a | [`0x1703fe...50d08d`](./contracts/ethereum-1/0x1703fea13672dfe8899e44c21f7e0b626550d08d/) | ⚠️ Unaudited |
| ConvexStrategyRenBTCMainnet | unknown | ethereum | n/a | [`0x90e938...95bdc5`](./contracts/ethereum-1/0x90e938c50f56aee8ed12d72b3b178bf5c395bdc5/) | ⚠️ Unaudited |
| ConvexStrategystETHMainnet | unknown | ethereum | n/a | [`0x4503af...8af72e`](./contracts/ethereum-1/0x4503af30fe799c4677cf5814ec8160efc98af72e/) | ⚠️ Unaudited |
| ConvexStrategyUSDNMainnet | unknown | ethereum | n/a | [`0xff2adc...1e4a6c`](./contracts/ethereum-1/0xff2adcf9e251b656f0c22bf6b153db4c851e4a6c/) | ⚠️ Unaudited |
| ConvexStrategyUSDPMainnet | unknown | ethereum | n/a | [`0xa788fe...288e1a`](./contracts/ethereum-1/0xa788fe8aae24220e277d43b70426d384e2288e1a/) | ⚠️ Unaudited |
| ConvexStrategyUSTMainnet | unknown | ethereum | n/a | [`0x89f6dd...65c475`](./contracts/ethereum-1/0x89f6dd2f2615471c008e60c86ab0f6727c65c475/) | ⚠️ Unaudited |
| ConvexStrategyYCRVMainnet | unknown | ethereum | n/a | [`0xf8b2ef...ea72ec`](./contracts/ethereum-1/0xf8b2ef93a8c89b24324d7507c36db081fbea72ec/) | ⚠️ Unaudited |
| CRVStrategyEURSV2Mainnet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7f31e0...456c19`](./contracts/ethereum-1/0x7f31e05ce311a8b457e877933349a29c92456c19/); ethereum `0x807a63...c4a60a`; ethereum `0x829d3e...1da2ad` | ⚠️ Unaudited |
| CRVStrategyLINKMainnet | unknown | ethereum | n/a | [`0x3a0073...977d04`](./contracts/ethereum-1/0x3a0073726e60fd202fd228a9c88288f331977d04/) | ⚠️ Unaudited |
| CRVStrategyOBTCMainnet | unknown | ethereum | n/a | [`0x2e916c...ac6454`](./contracts/ethereum-1/0x2e916cf581547c1641bd259c01507136b4ac6454/) | ⚠️ Unaudited |
| CRVStrategySTETHMainnet | unknown | ethereum | n/a | [`0x52d8f0...b91192`](./contracts/ethereum-1/0x52d8f04f071dd397c71514853a58664613b91192/) | ⚠️ Unaudited |
| CRVStrategyUSTMainnet | unknown | ethereum | n/a | [`0xc55f8b...ed248a`](./contracts/ethereum-1/0xc55f8be3cc55cae1bfbe5558d9e5b44906ed248a/) | ⚠️ Unaudited |
| DegenPrimeStrategyMainnet_cbBTC | unknown | base | n/a | 2 deployments: base [`0x885a31...8d6077`](./contracts/base-8453/0x885a3105a8fd07a7de33d283f4f15c84dc8d6077/); base `0xf01b38...f14bb1` | ⚠️ Unaudited |
| DegenPrimeStrategyMainnet_ETH | unknown | base | n/a | 2 deployments: base [`0x0325a0...e2e3e8`](./contracts/base-8453/0x0325a034c8441deb87b9d4b8d27d558a27e2e3e8/); base `0x753045...460ac0` | ⚠️ Unaudited |
| DegenPrimeStrategyMainnet_USDC | unknown | base | n/a | 2 deployments: base [`0x8f8c4b...e0fad6`](./contracts/base-8453/0x8f8c4b57c32483c5743a4318bfb74515c7e0fad6/); base `0x906943...d05303` | ⚠️ Unaudited |
| Drip | unknown | base | n/a | 4 deployments: base [`0x226f65...b31155`](./contracts/base-8453/0x226f65877d47348a9ddf28d76290047603b31155/); base `0x2e6527...ad8009`; base `0x49e7af...411f34`; base `0xfda71a...daac2e` | ⚠️ Unaudited |
| Ellipsis3PoolStrategyMainnet | unknown | bsc | n/a | 2 deployments: bsc [`0xb1feb6...3a57ee`](./contracts/bsc-56/0xb1feb6ab4ef7d0f41363da33868e85eb0f3a57ee/); bsc `0xb43aa2...12b6c2` | ⚠️ Unaudited |
| EllipsisBTCStrategyMainnet | unknown | bsc | n/a | 2 deployments: bsc [`0x11d4f0...81417f`](./contracts/bsc-56/0x11d4f0398d135b979d1d20761c43878fbb81417f/); bsc `0x69019a...832c5d` | ⚠️ Unaudited |
| EllipsisFUSDTStrategyMainnet | unknown | bsc | n/a | [`0xf8f749...03d9f2`](./contracts/bsc-56/0xf8f7498b051f4d2428354b083227a0bd6d03d9f2/) | ⚠️ Unaudited |
| EllipsisLPStrategyMainnet_EPS_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x5954f9...7f0178`](./contracts/bsc-56/0x5954f9d5afb005eba67813b5ab82398fac7f0178/); bsc `0xb19254...224bc6` | ⚠️ Unaudited |
| EulerLendStrategyMainnet_cbBTC_YO | unknown | base | n/a | [`0x1fd18c...12e0fa`](./contracts/base-8453/0x1fd18ce2d2da55848c017fce33dd42051012e0fa/) | ⚠️ Unaudited |
| EulerLendStrategyMainnet_ETH_AS | unknown | base | n/a | [`0x4bee43...e03c9d`](./contracts/base-8453/0x4bee43286bddab78c989c5a72d49f92da6e03c9d/) | ⚠️ Unaudited |
| EulerLendStrategyMainnet_ETH_EUL | unknown | base | n/a | [`0x177c12...67fbc6`](./contracts/base-8453/0x177c1241465313bcdd2bc1fffa5bf4527567fbc6/) | ⚠️ Unaudited |
| EulerLendStrategyMainnet_ETH_YO | unknown | base | n/a | [`0xe20468...7b85ce`](./contracts/base-8453/0xe204685a65cfb40653537bb9351b050fa27b85ce/) | ⚠️ Unaudited |
| EulerLendStrategyMainnet_EURC_EUL | unknown | base | n/a | [`0x3fbc0c...b81257`](./contracts/base-8453/0x3fbc0cb49195ef8763bbca1b4a42862c0cb81257/) | ⚠️ Unaudited |
| EulerLendStrategyMainnet_USDC_AG | unknown | base | n/a | [`0x79d853...716dbc`](./contracts/base-8453/0x79d8535366514bbfdbb98ff08daddbaae4716dbc/) | ⚠️ Unaudited |
| EulerLendStrategyMainnet_USDC_AR | unknown | base | n/a | [`0x66d11d...024da3`](./contracts/base-8453/0x66d11de5379b774af57f166871829ffbd8024da3/) | ⚠️ Unaudited |
| EulerLendStrategyMainnet_USDC_EUL | unknown | base | n/a | [`0x3c9bf9...14d4d8`](./contracts/base-8453/0x3c9bf9f66a83eefcc498c62b715c2d2fc414d4d8/) | ⚠️ Unaudited |
| EulerLendStrategyMainnet_USDC_YO | unknown | base | n/a | [`0xb5afa8...b8edf3`](./contracts/base-8453/0xb5afa80d8373ac800a68f8fa8c2c0c8971b8edf3/) | ⚠️ Unaudited |
| EulerLendStrategyMainnet_USR_AR | unknown | base | n/a | 2 deployments: base [`0x14bbea...fe6ce7`](./contracts/base-8453/0x14bbeabfaca24f87503421683937e43e81fe6ce7/); base `0xa92ff8...739e20` | ⚠️ Unaudited |
| EulerV2BatchFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x45f3bf...7dda6f`](./contracts/ethereum-1/0x45f3bf4f5318d9683357fa8f9f4442263f7dda6f/); base `0x60ce35...38898f` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_AERO | unknown | base | n/a | 2 deployments: base [`0x0d6fcb...1e4437`](./contracts/base-8453/0x0d6fcbef8d0179d148a1d0af99ae6785361e4437/); base `0x6e1e4d...b5681e` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_cbBTC | unknown | base | n/a | [`0x689f98...c636d2`](./contracts/base-8453/0x689f9805997c7f7420513315cb1e81c641c636d2/) | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_DOLA | unknown | base | n/a | 2 deployments: base [`0x16aa01...cb2e7c`](./contracts/base-8453/0x16aa01ff394ef3de6cd1f7278a684b94e6cb2e7c/); base `0x4f6560...563eea` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_KLIMA | unknown | base | n/a | 2 deployments: base [`0xa8f0c0...0b4d25`](./contracts/base-8453/0xa8f0c02b1f91b23f2fc688de3224aef1980b4d25/); base `0xe9a795...f32eb7` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_OVN | unknown | base | n/a | 2 deployments: base [`0xc8fda8...7923d1`](./contracts/base-8453/0xc8fda8cc055907d5018194ce8da2dfeabf7923d1/); base `0xf6ba89...e98f2d` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_USDbC | unknown | base | n/a | 2 deployments: base [`0x042973...0f3370`](./contracts/base-8453/0x042973de6a2818c9dac941a5d48e6ae9140f3370/); base `0xbacff4...3bf944` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_USDC | unknown | base | n/a | 2 deployments: base [`0x1349b5...e68125`](./contracts/base-8453/0x1349b569fd8da3e372936b2f306a1f43bde68125/); base `0xeb6541...a80623` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_USDC_2 | unknown | base | n/a | [`0xdc7ddb...80da9a`](./contracts/base-8453/0xdc7ddb6b40d28f0a18647873b723cb7a6c80da9a/) | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_USDplus | unknown | base | n/a | 3 deployments: base [`0x0bafaa...35ad38`](./contracts/base-8453/0x0bafaa7371b04f02b7306c652862c0304235ad38/); base `0x14a33f...7277e1`; base `0x530427...77893c` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_USDz | unknown | base | n/a | 2 deployments: base [`0x40a8a6...253d8f`](./contracts/base-8453/0x40a8a6232267cbaf4d8d7349cedbc279aa253d8f/); base `0x8fe406...0a427d` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_VIRTUAL | unknown | base | n/a | [`0x4d1349...c078de`](./contracts/base-8453/0x4d1349d8b97d5d71dcea8d511885803af6c078de/) | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_WELL | unknown | base | n/a | 2 deployments: base [`0xcd045d...c98033`](./contracts/base-8453/0xcd045d2010e3624319a1f510b36cb2cc71c98033/); base `0xce6568...d81682` | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_WETH | unknown | base | n/a | [`0x3f28ef...804423`](./contracts/base-8453/0x3f28efea16a11069a0b16f289358a43ba0804423/) | ⚠️ Unaudited |
| ExtraFiLendStrategyMainnet_WETH_2 | unknown | base | n/a | [`0x7eac0c...c36f85`](./contracts/base-8453/0x7eac0cf23b44d98da7e981ede82bd40878c36f85/) | ⚠️ Unaudited |
| FeeManager | unknown | ethereum | n/a | 6 deployments: ethereum [`0x2bb5ca...3a4391`](./contracts/ethereum-1/0x2bb5cafee239687ec1cd0644bb7fd6f4563a4391/); ethereum `0x6951d7...1baa20`; ethereum `0xbde68f...4e2255`; base `0x2cac1f...409629`; base `0xa2600f...c3a4bc`; base `0xad7ac6...ca45b9` | ⚠️ Unaudited |
| FeeManagerFactory | unknown | ethereum | n/a | 8 deployments: ethereum [`0x061d41...c88985`](./contracts/ethereum-1/0x061d41f63d37231a3c7a4ed74c7b222e6ac88985/); ethereum `0x587a7a...b76aef`; ethereum `0xe8c0f9...3c1bc7`; base `0x801467...f60912`; base `0x8e95e5...3c783e`; base `0xa97dae...e809ba`; base `0xb6e7b5...e7e302`; base `0xf53951...b3616f` | ⚠️ Unaudited |
| FeeRewardForwarderV2 | unknown | bsc | n/a | [`0x2df3c2...085f94`](./contracts/bsc-56/0x2df3c237d1ca034f6299ec00257e95528d085f94/) | ⚠️ Unaudited |
| FloatStrategyMainnet_DAI | unknown | ethereum | n/a | [`0x5526f8...fcb165`](./contracts/ethereum-1/0x5526f8ff02d9ba6540c625e1bc51e440c7fcb165/) | ⚠️ Unaudited |
| FloatStrategyMainnet_USDC | unknown | ethereum | n/a | [`0x910872...2ff4f1`](./contracts/ethereum-1/0x91087247391fe889033fd5c2fd29110c372ff4f1/) | ⚠️ Unaudited |
| FloatStrategyMainnet_USDT | unknown | ethereum | n/a | [`0x93577c...e97537`](./contracts/ethereum-1/0x93577cf141fa174de6296185610d4bd0d2e97537/) | ⚠️ Unaudited |
| FloatStrategyMainnet_WBTC | unknown | ethereum | n/a | [`0x9e3158...2161ad`](./contracts/ethereum-1/0x9e315822a18f8d332782d1c3f3f24bb10d2161ad/) | ⚠️ Unaudited |
| FluidLendStrategyMainnet_ETH | unknown | base | n/a | 2 deployments: base [`0x0ef0e1...3c58e6`](./contracts/base-8453/0x0ef0e1d2e17275565f62b1b7c8a5bfe59f3c58e6/); base `0x67fb0d...444073` | ⚠️ Unaudited |
| FluidLendStrategyMainnet_EURC | unknown | base | n/a | 3 deployments: base [`0xa9c589...d3978a`](./contracts/base-8453/0xa9c589936bb9801143f3f31b5c1fdc74d7d3978a/); base `0xef5287...ee9458`; base `0xfc3af6...3b3464` | ⚠️ Unaudited |
| FluidLendStrategyMainnet_USDC | unknown | base | n/a | 3 deployments: base [`0x2869a6...072842`](./contracts/base-8453/0x2869a6919aba4c88a260258fcd0a34dd1f072842/); base `0x3539a1...5ec3c4`; base `0x9f5a4e...243d8b` | ⚠️ Unaudited |
| FortyAcresLendStrategyMainnet_USDC | core_logic | base | n/a | 2 deployments: base [`0x1d5986...0f533c`](./contracts/base-8453/0x1d59868d7767d703929393bdab313302840f533c/); base `0xb7c0b2...4770f0` | ⚠️ Unaudited |
| FortyAcresLendStrategyMainnet_USDC | unknown | base | n/a | [`0xbd3563...789901`](./contracts/base-8453/0xbd35631a8083bde1c48c55eae88198c5c3789901/) | ⚠️ Unaudited |
| FoxStrategyMainnet_FOX_ETH | unknown | ethereum | n/a | [`0x99ab03...9ddf36`](./contracts/ethereum-1/0x99ab03293787f11f332caa9cc9b68807ee9ddf36/) | ⚠️ Unaudited |
| FusionFactory | unknown | ethereum | n/a | 17 deployments: ethereum [`0x034947...cf88a8`](./contracts/ethereum-1/0x034947614513e69d4bd8d31e464276d1bfcf88a8/); ethereum `0x08732e...21d497`; ethereum `0x930434...d41367`; ethereum `0xba84b0...aabe08`; ethereum `0xd48d95...5d5e0d`; base `0x294f7a...2827c7`; base `0x29ba38...5401cd`; base `0x29cfd7...cc6947`; base `0x328093...7a4f35`; base `0x42409d...2c7e2f`; base `0x45484a...6a2372`; base `0x51de88...c3b495`; base `0x5ff3d9...91a046`; base `0x610152...8d33b7`; base `0xafd4eb...b3d64b`; base `0xcb648a...bb58e1`; base `0xdcfc26...255cd3` | ⚠️ Unaudited |
| GamestopStrategyMainnet_DSD | unknown | ethereum | n/a | [`0x8b6bef...6f5464`](./contracts/ethereum-1/0x8b6bef8d373d959a5f20d959bc44ebca876f5464/) | ⚠️ Unaudited |
| GamestopStrategyMainnet_ESD | unknown | ethereum | n/a | [`0x9b29fb...b6dc80`](./contracts/ethereum-1/0x9b29fb315be3333281a6f7c62ebff799a6b6dc80/) | ⚠️ Unaudited |
| GlobalIncentivesExecutor | unknown | base | n/a | [`0xc69171...ff476b`](./contracts/base-8453/0xc69171ab8722e511bc41b68bc7463bd89eff476b/) | ⚠️ Unaudited |
| GlobalIncentivesHelper | unknown | bsc | n/a | 2 deployments: bsc [`0x19b3ab...e8de15`](./contracts/bsc-56/0x19b3aba7ba46f9cac08ba2872cbcf8f96ae8de15/); base `0x848910...3da093` | ⚠️ Unaudited |
| GooseStrategyMainnet_EGG | unknown | bsc | n/a | 3 deployments: bsc [`0x5cf7ce...0de679`](./contracts/bsc-56/0x5cf7cef972f3deeed205b00bf6c2f8cf070de679/); bsc `0xa166ea...b75dab`; bsc `0xcfe542...7e4d64` | ⚠️ Unaudited |
| GooseStrategyMainnet_EGG | unknown | bsc | n/a | 2 deployments: bsc [`0x84619b...89efd5`](./contracts/bsc-56/0x84619b9bf8304a98240b6c32fd1a491e9d89efd5/); bsc `0xc11f5f...675a3e` | ⚠️ Unaudited |
| GooseStrategyMainnet_EGG_BNB | unknown | bsc | n/a | [`0x59a369...35f933`](./contracts/bsc-56/0x59a369de3b3c350041202f59eb425363a035f933/) | ⚠️ Unaudited |
| GooseStrategyMainnet_EGG_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0xb60e69...b7c7de`](./contracts/bsc-56/0xb60e69f21b469a93ab6e3f4a831e833bcfb7c7de/); bsc `0xc022b4...b791b2` | ⚠️ Unaudited |
| GooseStrategyMainnet_EGG_BUSD | unknown | bsc | n/a | [`0x444d8c...d4a67d`](./contracts/bsc-56/0x444d8ca235624e2ac98a9eecdbdf54122cd4a67d/) | ⚠️ Unaudited |
| GooseStrategyMainnet_EGG_BUSD | unknown | bsc | n/a | 2 deployments: bsc [`0xb91f62...207938`](./contracts/bsc-56/0xb91f62a423de007ce25e5538d747b259fb207938/); bsc `0xc547c5...d349a2` | ⚠️ Unaudited |
| Grain | unknown | ethereum | n/a | [`0x6589fe...25e58e`](./contracts/ethereum-1/0x6589fe1271a0f29346796c6baf0cdf619e25e58e/) | ⚠️ Unaudited |
| IdleBorrowableStrategyUSDTMainnet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0f28f4...060e7c`](./contracts/ethereum-1/0x0f28f4b438b7a7ff3726d565d6a344e80e060e7c/); ethereum `0xbfa26f...f67dde` | ⚠️ Unaudited |
| IdleStrategyDAIMainnet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9f3571...1c465c`](./contracts/ethereum-1/0x9f357122f72a056e8a58ce89d3d88f62411c465c/); ethereum `0xfab83a...a0c008` | ⚠️ Unaudited |
| IdleStrategyUSDCMainnet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6447ed...6a2d5e`](./contracts/ethereum-1/0x6447ed2e0a95f8df84a82beacbb17a003b6a2d5e/); ethereum `0xfcf1c4...11086e` | ⚠️ Unaudited |
| IdleStrategyUSDTMainnet | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc7d9aa...e8fb1a`](./contracts/ethereum-1/0xc7d9aafd6696e111fd591de2af3020bc83e8fb1a/); ethereum `0xd52971...bd8a44` | ⚠️ Unaudited |
| IdleStrategyWBTCMainnet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2f54ec...d651a3`](./contracts/ethereum-1/0x2f54ecc31757b6c068c6c3caef65c35485d651a3/); ethereum `0x3c3615...a3648a` | ⚠️ Unaudited |
| IdleStrategyWETHMainnet | unknown | ethereum | n/a | [`0x1ffebb...25d3bf`](./contracts/ethereum-1/0x1ffebbc55e2b85dab87cf7d11558180dbe25d3bf/) | ⚠️ Unaudited |
| iFarmStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xdc1f8d...805f1f`](./contracts/ethereum-1/0xdc1f8dda71bf936b486b42d2f2db54efe2805f1f/); ethereum `0xf2004f...5b2bcc` | ⚠️ Unaudited |
| IncentivesGeneral | unknown | base | n/a | [`0x040fa3...c9fda8`](./contracts/base-8453/0x040fa374c23adc3702bfd56eccc6609b92c9fda8/) | ⚠️ Unaudited |
| IndexStrategyMainnet_MVI_ETH | unknown | ethereum | n/a | [`0x991c40...6e9522`](./contracts/ethereum-1/0x991c40f931446321e3219a867a36b505b76e9522/) | ⚠️ Unaudited |
| InvestmentVaultStrategy | unknown | ethereum | n/a | 9 deployments: ethereum [`0x104cbe...7a0b87`](./contracts/ethereum-1/0x104cbe6abff378d097218c844391154b377a0b87/); ethereum `0x1823bd...3680d4`; ethereum `0x189e6f...71d5f6`; ethereum `0x44173f...26cc7a`; ethereum `0x639422...379538`; ethereum `0x754b63...2cb257`; ethereum `0x9ba896...fcc3a5`; ethereum `0xa96865...03a6f8`; ethereum `0xbf31d6...a3b78b` | ⚠️ Unaudited |
| IporFusionAccessManager | unknown | base | n/a | 57 deployments: ethereum `0x1dc356...79ae8a`; ethereum `0x3df9d7...9eabae`; ethereum `0x428691...c6d585`; ethereum `0x49cced...527c06`; ethereum `0x4f9a58...2e256e`; ethereum `0x56e767...b4af56`; ethereum `0x57d771...ba6508`; ethereum `0x6857b2...66e0c7`; ethereum `0x69c121...1d5532`; ethereum `0x7c20c9...28cc6c`; ethereum `0x818912...7df7aa`; ethereum `0x82d3d0...52196c`; ethereum `0x85fd76...72325e`; ethereum `0x8bff06...1c654d`; ethereum `0x922350...eb1d42`; ethereum `0x956d09...ba8f4b`; ethereum `0x962661...20256d`; ethereum `0xae92a0...2ac544`; ethereum `0xb2d9f7...df8a05`; ethereum `0xb46dca...c1f434`; ethereum `0xb7394c...75be04`; ethereum `0xc025ec...d545df`; ethereum `0xcee55b...207a97`; ethereum `0xd1813b...2033a6`; ethereum `0xd887ea...eac106`; ethereum `0xdcf1ec...dd2e46`; ethereum `0xdd15eb...d192a9`; ethereum `0xe593cf...0050ba`; ethereum `0xfb1506...ccce9a`; ethereum `0xfe2242...ea07b5`; base [`0x051f90...508a81`](./contracts/base-8453/0x051f90a809d8bf16e61514f8035c8bc644508a81/); base `0x0de072...f69eb9`; base `0x0e7d80...cddf1f`; base `0x0feedb...1c7298`; base `0x12e9b1...f5f2f8`; base `0x17b4e0...53533d`; base `0x187937...ce0d1f`; base `0x1a5b59...65c30d`; base `0x210d79...650621`; base `0x29361d...2896e7`; base `0x3033c2...7c37ae`; base `0x392101...56a8db`; base `0x41cfe2...23eadc`; base `0x47acfd...742e26`; base `0x5ad7ab...3f8469`; base `0x75a5d4...f08044`; base `0x7ad800...3d7bad`; base `0x7c3a7f...ba08cb`; base `0x7ed269...547c6e`; base `0x82f3ed...c12fe6`; base `0xacddaf...d5957c`; base `0xb59e9c...dc4ad7`; base `0xbec0d6...8f7443`; base `0xcb8b68...f594e0`; base `0xe1abf1...81a9e4`; base `0xe5decd...e92e0e`; base `0xfbf235...2846bc` | ⚠️ Unaudited |
| IPORLendingStrategyMainnet_ETH | unknown | base | n/a | 2 deployments: base [`0x1de82e...fd9c5c`](./contracts/base-8453/0x1de82ec7fb79a01e0f42711ed1c32a17d4fd9c5c/); base `0xce5833...202704` | ⚠️ Unaudited |
| IPORLendingStrategyMainnet_ETH | unknown | base | n/a | 2 deployments: base [`0xc43c21...3604e5`](./contracts/base-8453/0xc43c21e25efe3771959064b6de90d4a41e3604e5/); base `0xd4ba64...063edf` | ⚠️ Unaudited |
| Klondike2FarmStrategyMainnet_KXUSD_DAI | unknown | ethereum | n/a | [`0xa03833...817e16`](./contracts/ethereum-1/0xa03833a5eef48fad3295c11e6c1e5701c2817e16/) | ⚠️ Unaudited |
| Klondike2FarmStrategyMainnet_WBTC_KBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5334cf...ba7861`](./contracts/ethereum-1/0x5334cf3a2006f05f879f8677a6a1fb94c6ba7861/); ethereum `0x95665e...2a6d32` | ⚠️ Unaudited |
| Klondike2FarmStrategyMainnet_WBTC_KBTCV2 | unknown | ethereum | n/a | [`0x6cb5e2...85812f`](./contracts/ethereum-1/0x6cb5e2fc7c258a1ec07f6a251f8e67a4e485812f/) | ⚠️ Unaudited |
| Klondike2FarmStrategyMainnet_WBTC_KLON | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1a0b8b...98f248`](./contracts/ethereum-1/0x1a0b8b5c603cac03b3b6b7a9679f5e2c1e98f248/); ethereum `0xd7e7d5...927ab6` | ⚠️ Unaudited |
| Klondike2FarmStrategyMainnet_WBTC_KLONX | unknown | ethereum | n/a | [`0x170f77...45364f`](./contracts/ethereum-1/0x170f77e70e488fb7d486ab916e305ca85d45364f/) | ⚠️ Unaudited |
| KlondikeStrategyMainnet_renBTC | unknown | ethereum | n/a | [`0x323c72...eb3c09`](./contracts/ethereum-1/0x323c726c899ca9fb7b747ff61bc30183bdeb3c09/) | ⚠️ Unaudited |
| LiftStrategyMainnet_lfBTC_LIFT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6091bb...26363f`](./contracts/ethereum-1/0x6091bbf60ca294f223b03b7c05f98cae1226363f/); ethereum `0xa1ddb9...df1972` | ⚠️ Unaudited |
| LiftStrategyMainnet_wBTC_lfBTC | unknown | ethereum | n/a | [`0x4157be...b8b274`](./contracts/ethereum-1/0x4157bebdebb508a62874c841b07ae4013db8b274/) | ⚠️ Unaudited |
| LQTYStakingStrategyMainnet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x33a57d...6a1fe3`](./contracts/ethereum-1/0x33a57da38c313520e9348432d314ff54386a1fe3/); ethereum `0xf13a45...95aef2` | ⚠️ Unaudited |
| MegaFactory | unknown | base | n/a | 2 deployments: ethereum `0xe1ec91...6d4f4d`; base [`0x11cb7e...259cf3`](./contracts/base-8453/0x11cb7eda79c3b5f55b2bb501eb0cf2d605259cf3/) | ⚠️ Unaudited |
| MinterHelper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x973d04...182916`](./contracts/ethereum-1/0x973d0408dee278203c8613178c1732fd60182916/); ethereum `0xe5c6be...467fd4` | ⚠️ Unaudited |
| MirrorMainnet_mAAPL_UST | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa5a091...0d9d46`](./contracts/ethereum-1/0xa5a091fd156ff5e44f22bef544923cdc850d9d46/); ethereum `0xfd645a...ea4206` | ⚠️ Unaudited |
| MirrorMainnet_mAMZN_UST | unknown | ethereum | n/a | [`0x0c3d0b...8c3d36`](./contracts/ethereum-1/0x0c3d0b5910b0603d68be29a647c0f6187a8c3d36/) | ⚠️ Unaudited |
| MirrorMainnet_mGOOG_UST | unknown | ethereum | n/a | [`0x0a6ade...c7747d`](./contracts/ethereum-1/0x0a6ade7348598e42da381b03c1c40c9ba1c7747d/) | ⚠️ Unaudited |
| MirrorMainnet_mNFLX_UST | unknown | ethereum | n/a | [`0x97487c...046567`](./contracts/ethereum-1/0x97487c1f352a8076a738fbdcd316a10f01046567/) | ⚠️ Unaudited |
| MirrorMainnet_mTSLA_UST | unknown | ethereum | n/a | [`0xb5480a...18a817`](./contracts/ethereum-1/0xb5480a276c49b5e3a1bc13659030b4e94018a817/) | ⚠️ Unaudited |
| MirrorMainnet_mTWTR_UST | unknown | ethereum | n/a | [`0x18fbe8...5ab9b3`](./contracts/ethereum-1/0x18fbe81e56133118669660a46d050546045ab9b3/) | ⚠️ Unaudited |
| MithCash2FarmStrategyMainnet_MIC_USDT | unknown | ethereum | n/a | [`0xe12c4b...bfae72`](./contracts/ethereum-1/0xe12c4bb7b88b3cfe2d44a8e49037392b06bfae72/) | ⚠️ Unaudited |
| MithCash2FarmStrategyMainnet_MIS_USDT | unknown | ethereum | n/a | [`0x636a37...d3e5a0`](./contracts/ethereum-1/0x636a37802da562f7d562c1915cc2a948a1d3e5a0/) | ⚠️ Unaudited |
| Moonwell2AssetFoldStrategyMainnet_cbETH_ETH | unknown | base | n/a | 2 deployments: base [`0x5a3f6c...fbe485`](./contracts/base-8453/0x5a3f6cff9da787f43e3b52b7c4bcd14d3afbe485/); base `0x9f02ac...24e5f4` | ⚠️ Unaudited |
| Moonwell2AssetFoldStrategyMainnet_wstETH_ETH | unknown | base | n/a | 2 deployments: base [`0x381298...d530d6`](./contracts/base-8453/0x3812989702b06c642222f50906b0feed37d530d6/); base `0xe30208...a0e2bc` | ⚠️ Unaudited |
| MoonwellFoldStrategyMainnet_CBETH | unknown | base | n/a | 2 deployments: base [`0xbf6600...3aa7ee`](./contracts/base-8453/0xbf660037529ca2c460288fb5012e04c3dc3aa7ee/); base `0xd8a23d...495b92` | ⚠️ Unaudited |
| MoonwellFoldStrategyMainnet_DAI | unknown | base | n/a | 2 deployments: base [`0x75dd7c...b9fd38`](./contracts/base-8453/0x75dd7c88acf769235ca4bc75403419b9ceb9fd38/); base `0xad5564...eda8ea` | ⚠️ Unaudited |
| MoonwellFoldStrategyMainnet_USDC | unknown | base | n/a | 3 deployments: base [`0x949a4a...192a51`](./contracts/base-8453/0x949a4a54deecbac1e239fe4372a70d9fc8192a51/); base `0xd163b5...b368b7`; base `0xfdca6d...c2c1d1` | ⚠️ Unaudited |
| MoonwellFoldStrategyMainnet_WETH | unknown | base | n/a | 2 deployments: base [`0xc0a80d...0240cb`](./contracts/base-8453/0xc0a80d1ffacc034bce6adb7793a8efb1010240cb/); base `0xc92115...3680f4` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_cbBTC | unknown | base | n/a | 3 deployments: base [`0x2c8a3d...f40133`](./contracts/base-8453/0x2c8a3dd370289895354a78ed74bcc307cbf40133/); base `0x6c9206...fe45f0`; base `0xc610d5...cd9fe4` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_CBETH | unknown | base | n/a | 2 deployments: base [`0x0d1ab3...ffa76b`](./contracts/base-8453/0x0d1ab3a667fcd4d8659fe8f3f4c8e05d40ffa76b/); base `0x43fe58...69496e` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_CBETH | unknown | base | n/a | [`0xbe03c1...0f6ccd`](./contracts/base-8453/0xbe03c1e0f8dd1b82e7ebc61e8be339de210f6ccd/) | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_cbXRP | unknown | base | n/a | [`0xddcf70...f6568b`](./contracts/base-8453/0xddcf70751a7983e3e798dbf7df8e1c107ef6568b/) | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_DAI | unknown | base | n/a | 2 deployments: base [`0x298704...554332`](./contracts/base-8453/0x298704eca825594f786dcb0248ff3b6986554332/); base `0x832382...ccbcb7` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_DAI | unknown | base | n/a | 2 deployments: base [`0x3cfd1b...d840ab`](./contracts/base-8453/0x3cfd1b3232ae0fd4c0d4f413cdd4e18767d840ab/); base `0x8d312f...17e389` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_EURC | unknown | base | n/a | [`0x10f63e...155931`](./contracts/base-8453/0x10f63e727bab2709a90e6ca1e9046e3d63155931/) | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_LBTC | unknown | base | n/a | [`0x47226f...75c3f8`](./contracts/base-8453/0x47226fbbffeb3583842b71e988ad44113f75c3f8/) | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_rETH | unknown | base | n/a | 3 deployments: base [`0x1f8401...46d6d8`](./contracts/base-8453/0x1f8401f677777eb8ae8908e3333a7d873346d6d8/); base `0x23e702...e82b01`; base `0xe0e364...0b4530` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_tBTC | unknown | base | n/a | [`0x9365a8...786646`](./contracts/base-8453/0x9365a8c1bef5c5b0f4423ca18b64f0b060786646/) | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_USDC | unknown | base | n/a | 3 deployments: base [`0x16880d...ad9cb8`](./contracts/base-8453/0x16880dc1f798e5c73b07f45668d1458589ad9cb8/); base `0x6498a1...8542bf`; base `0xcc7d3d...2cd26b` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_USDC | unknown | base | n/a | 2 deployments: base [`0x4eb5f7...c68d02`](./contracts/base-8453/0x4eb5f78f5de651cefa81a038105224fe1dc68d02/); base `0xf853b4...f29652` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_USDS | unknown | base | n/a | 2 deployments: base [`0xbcaa84...6a9d38`](./contracts/base-8453/0xbcaa84a59a0480a5c8b9010cb0d4147a756a9d38/); base `0xd16e4b...88576b` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_VIRTUAL | unknown | base | n/a | [`0xa565a0...937504`](./contracts/base-8453/0xa565a0225cd16370c7959c9fcb0025446e937504/) | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_weETH | unknown | base | n/a | 2 deployments: base [`0x1362a4...46488b`](./contracts/base-8453/0x1362a41ebf9d49b0526e26f101017e146746488b/); base `0xff21fe...0692d6` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_WELL | unknown | base | n/a | [`0x209204...bfdb00`](./contracts/base-8453/0x209204392b76886b359d5c3ae0c207484dbfdb00/) | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_WETH | unknown | base | n/a | 2 deployments: base [`0x2696e8...007fdb`](./contracts/base-8453/0x2696e8017a422af7ee764fa598c7ac3b75007fdb/); base `0x2c0b82...ac2fa7` | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_WETH | unknown | base | n/a | [`0x2abd25...2b4001`](./contracts/base-8453/0x2abd257d2bc14709997ddf597a30024c6b2b4001/) | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_wrsETH | unknown | base | n/a | [`0x2257d1...599d4c`](./contracts/base-8453/0x2257d1b6d19a319beeb487a10662d51d21599d4c/) | ⚠️ Unaudited |
| MoonwellFoldStrategyV2Mainnet_wstETH | unknown | base | n/a | 2 deployments: base [`0x19d1ee...f7a169`](./contracts/base-8453/0x19d1ee4a5fd93d57bc37d0fc630909e2b7f7a169/); base `0xc36623...920d4f` | ⚠️ Unaudited |
| MoonwellSupplyStrategyMainnet_AERO | unknown | base | n/a | [`0xc4451e...53824e`](./contracts/base-8453/0xc4451ee0861535d96cba09ca0fed2f39f953824e/) | ⚠️ Unaudited |
| MoonwellSupplyStrategyMainnet_weETH | unknown | base | n/a | [`0x23ddf3...016393`](./contracts/base-8453/0x23ddf353f2d0a3c32db04ebefae908750e016393/) | ⚠️ Unaudited |
| MoonwellViewer | unknown | base | n/a | [`0x8cccd2...444389`](./contracts/base-8453/0x8cccd2467add6053c8273042ac742eb438444389/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_CR_ETH_V2 | unknown | base | n/a | [`0x0dff24...3ad8b2`](./contracts/base-8453/0x0dff2420d35b926d89031f444ee8eaa6c83ad8b2/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_GC_cbBTC | unknown | base | n/a | [`0x225368...51b6c7`](./contracts/base-8453/0x22536885fe7a9d8730151f85c6773aad4851b6c7/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_GC_ETH | unknown | base | n/a | [`0x7f8414...ad1911`](./contracts/base-8453/0x7f84144c6bf137ecb207464f1976c25dc1ad1911/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_GC_EURC | unknown | base | n/a | [`0xcc2f9b...ecbc7d`](./contracts/base-8453/0xcc2f9bbf61da0bd5b281d71e95f3fcd5a7ecbc7d/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_GC_USDC | unknown | base | n/a | [`0xde335c...41c7c7`](./contracts/base-8453/0xde335c41089931e0aa634d5154cccb250841c7c7/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_GF_USDC_V2 | core_logic | base | n/a | [`0xd25186...f1c5bd`](./contracts/base-8453/0xd251865319c905c1913f59bb5bb1af2322f1c5bd/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_GP_USDC | unknown | base | n/a | [`0x120ac2...96ac8b`](./contracts/base-8453/0x120ac289e1a68e4a8d87d4091f153d3eb296ac8b/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_GP_USDC_V2 | unknown | base | n/a | [`0x342759...229738`](./contracts/base-8453/0x34275906f6b12860d3d5688718aada0501229738/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_ION_ETH | unknown | base | n/a | [`0xf80023...fe7eb6`](./contracts/base-8453/0xf8002309c626ddbbd2cd1535a73557db8dfe7eb6/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_ION_USDC | unknown | base | n/a | [`0x05e75b...7df2d9`](./contracts/base-8453/0x05e75b02fae21bdb10f570fa7a2db0605e7df2d9/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_MW_cbBTC | unknown | base | n/a | [`0x2f402c...9dd474`](./contracts/base-8453/0x2f402c312aaa11086ddc9e22d2a4ab51ce9dd474/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_MW_ETH | unknown | base | n/a | [`0x2e5e5a...0e5cb8`](./contracts/base-8453/0x2e5e5a3798a0d009f300e331cf78d3e27b0e5cb8/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_MW_EURC | unknown | base | n/a | [`0x3bde3a...7df816`](./contracts/base-8453/0x3bde3a399c550d6523b66c306985726dbd7df816/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_MW_USDC | unknown | base | n/a | [`0x250f79...10013e`](./contracts/base-8453/0x250f79a64c018e77d33262105c5c5484ae10013e/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_RE7_ETH | unknown | base | n/a | [`0x2e0734...ef6583`](./contracts/base-8453/0x2e0734c5f84f36bc2415ec893bf1eaf6beef6583/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_RE7_USDC | unknown | base | n/a | [`0x9322c3...821af5`](./contracts/base-8453/0x9322c3879457e6d13331b76947b8f8e47a821af5/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SE_cbBTC | unknown | base | n/a | [`0xd058ce...184925`](./contracts/base-8453/0xd058ceac32c7dc18d747dd06f33cd307ad184925/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SE_ETH | unknown | base | n/a | [`0xc4198a...a02b77`](./contracts/base-8453/0xc4198ac881c15515693477c1979b4d9c9ea02b77/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SE_USDC | unknown | base | n/a | [`0x894410...c0dfab`](./contracts/base-8453/0x894410719f8cc9a5846daf1e1792498ddcc0dfab/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SH_ETH | unknown | base | n/a | [`0x94fec0...2ba408`](./contracts/base-8453/0x94fec0a3cff7399a2a693857cebe77aed22ba408/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SH_EURC | unknown | base | n/a | [`0xe38388...e972f6`](./contracts/base-8453/0xe38388200f5559475fad9d8c9a38da1f42e972f6/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SH_USDC | unknown | base | n/a | [`0xe8e14d...103240`](./contracts/base-8453/0xe8e14d1ecb323e264ec905341b434e0647103240/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SHHY_USDC_V2 | unknown | base | n/a | [`0xb3aa3d...cefc01`](./contracts/base-8453/0xb3aa3dd4bc30a520b60506b431d8c3064dcefc01/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SHP_USDC_V2 | unknown | base | n/a | [`0x78fffc...52bc4c`](./contracts/base-8453/0x78fffcfa0fde6baaba959c999b62da5a4852bc4c/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_SPK_USDC | unknown | base | n/a | [`0x1e60ef...4fc4f4`](./contracts/base-8453/0x1e60ef07672caf90035eb683ea33929ccf4fc4f4/) | ⚠️ Unaudited |
| MorphoVaultStrategyMainnet_YOG_USDC_V2 | core_logic | base | n/a | [`0xbbb943...0c17fb`](./contracts/base-8453/0xbbb9437786dcb5936296b158d6a1d050950c17fb/) | ⚠️ Unaudited |
| NarwhaleStrategyMainnet_BAC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x95fcbf...3141b3`](./contracts/ethereum-1/0x95fcbf69373552b3db416dcf97fd06af743141b3/); ethereum `0xcbe0b7...06985e` | ⚠️ Unaudited |
| NarwhaleStrategyMainnet_DSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27b7b7...4ce07f`](./contracts/ethereum-1/0x27b7b7fe890bc0907bef728e9ca518f8124ce07f/); ethereum `0xdc558e...4d4361` | ⚠️ Unaudited |
| NarwhaleStrategyMainnet_DSD | unknown | ethereum | n/a | [`0x7fb556...27d89c`](./contracts/ethereum-1/0x7fb5567ac8144871a2731bae6945174a2627d89c/) | ⚠️ Unaudited |
| NarwhaleStrategyMainnet_ESD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0c09be...ef2e90`](./contracts/ethereum-1/0x0c09be4864966f400741e45be81f72e875ef2e90/); ethereum `0x547401...2a8079` | ⚠️ Unaudited |
| NFT20Strategy_DUDES | unknown | ethereum | n/a | 2 deployments: ethereum [`0x32448d...a78658`](./contracts/ethereum-1/0x32448d412e1821e5fb598291dc2de2ad91a78658/); ethereum `0x80fa9f...b36b28` | ⚠️ Unaudited |
| NFT20Strategy_DUDES | unknown | ethereum | n/a | 2 deployments: ethereum [`0x78eb4e...42c0cc`](./contracts/ethereum-1/0x78eb4e2b2df8a02c0f4a1a1176abfe19ac42c0cc/); ethereum `0xf7714d...ff3a4b` | ⚠️ Unaudited |
| NFT20Strategy_GPUNK | unknown | ethereum | n/a | 2 deployments: ethereum [`0x610a02...6e1354`](./contracts/ethereum-1/0x610a02867877cf9438438d85a33230c4366e1354/); ethereum `0x94c349...786bb4` | ⚠️ Unaudited |
| NFT20Strategy_GPUNK | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7e33ef...1f2649`](./contracts/ethereum-1/0x7e33ef42d0b7f2b25e27b49004ce79e1b11f2649/); ethereum `0xca0a74...1de967` | ⚠️ Unaudited |
| NFT20Strategy_MASK | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7497fd...235262`](./contracts/ethereum-1/0x7497fd6fad202d2236775b8519827aaae7235262/); ethereum `0xd68d8b...b2fad5` | ⚠️ Unaudited |
| NFT20Strategy_MASK | unknown | ethereum | n/a | 2 deployments: ethereum [`0xf270e3...fc0572`](./contracts/ethereum-1/0xf270e3051c8552101e760f318407a86be5fc0572/); ethereum `0xfdaf72...12f143` | ⚠️ Unaudited |
| NFT20Strategy_MCAT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x405fe1...957b1d`](./contracts/ethereum-1/0x405fe1198edabae6a85c494dcf09f7be6a957b1d/); ethereum `0xc6b1e8...ee1cb5` | ⚠️ Unaudited |
| NFT20Strategy_MCAT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x44fa58...26158b`](./contracts/ethereum-1/0x44fa58099a9d51093b6d1523f8beb4c87426158b/); ethereum `0x6c0bc8...007e46` | ⚠️ Unaudited |
| NFT20Strategy_MEME | unknown | ethereum | n/a | 2 deployments: ethereum [`0x29a88c...b0ac61`](./contracts/ethereum-1/0x29a88c78c0d52536e487edbf4c0e6a2501b0ac61/); ethereum `0xe085c4...997918` | ⚠️ Unaudited |
| NFT20Strategy_MEME | unknown | ethereum | n/a | [`0xc830d1...693a48`](./contracts/ethereum-1/0xc830d162e72e33f25da4c5b2dd0d4d5bc6693a48/) | ⚠️ Unaudited |
| NFT20Strategy_MUSE | unknown | ethereum | n/a | 2 deployments: ethereum [`0x215460...906f60`](./contracts/ethereum-1/0x21546068903b82695c6cc26164b4cd15ad906f60/); ethereum `0x7fdc18...756a1b` | ⚠️ Unaudited |
| NFT20Strategy_MUSE | unknown | ethereum | n/a | 2 deployments: ethereum [`0x99f315...6c3f7c`](./contracts/ethereum-1/0x99f3157a9b96245a3c5a57a762c58474a06c3f7c/); ethereum `0xf47a48...98ee35` | ⚠️ Unaudited |
| NFT20Strategy_ROPE | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4230ff...df31d7`](./contracts/ethereum-1/0x4230ff3aed735f4715b56347d3427d6361df31d7/); ethereum `0x9044d3...32c23a` | ⚠️ Unaudited |
| NFT20Strategy_ROPE | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4de6cd...f31b86`](./contracts/ethereum-1/0x4de6cd6c558e7b5b4af26e0e3ae3056318f31b86/); ethereum `0x7ce0c1...862395` | ⚠️ Unaudited |
| NoopStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3b9a75...9ec1fd`](./contracts/ethereum-1/0x3b9a7579005cf6c16878f3427062ea20079ec1fd/); ethereum `0xedef95...bf0c0f` | ⚠️ Unaudited |
| NoopStrategyMainnet_FARM | unknown | base | n/a | [`0x709d39...860581`](./contracts/base-8453/0x709d39784907843409a7c53462ca7806af860581/) | ⚠️ Unaudited |
| NoopStrategyMainnet_iFARM | unknown | base | n/a | 2 deployments: base [`0xc23f52...597901`](./contracts/base-8453/0xc23f5291e2437e517642ab031d39704a3d597901/); base `0xe2162c...255e35` | ⚠️ Unaudited |
| NoopStrategyMainnet_xBSX | unknown | base | n/a | [`0x74f112...60de39`](./contracts/base-8453/0x74f112b8783dfec1dc8addf72f9e6c3dcc60de39/) | ⚠️ Unaudited |
| NotifyHelperAmpliFARM | unknown | bsc | n/a | [`0xd9b13b...f4c9dc`](./contracts/bsc-56/0xd9b13b448ae9d93dc7b9fbc7facc83e9b1f4c9dc/) | ⚠️ Unaudited |
| NotifyHelperGeneric | unknown | bsc | n/a | 2 deployments: bsc [`0xf328f7...3b0674`](./contracts/bsc-56/0xf328f799a9c719f446e05385eb64c8a29d3b0674/); base `0xf69058...0ae746` | ⚠️ Unaudited |
| NotifyHelperIFARM | unknown | ethereum | n/a | [`0x8af7eb...aab64e`](./contracts/ethereum-1/0x8af7eb5a93076f6a2316261ac8d42f97adaab64e/) | ⚠️ Unaudited |
| NotifyHelperStateful | unknown | base | n/a | 6 deployments: ethereum `0x71316a...1dd40a`; ethereum `0xbf025c...37a14d`; bsc `0x9be089...a48995`; bsc `0xde7099...2eca1c`; bsc `0xf5eaa5...83371f`; base [`0x43285e...7ac58d`](./contracts/base-8453/0x43285ef3244300fe7ed5b41e24b5953caf7ac58d/) | ⚠️ Unaudited |
| OneInchStrategy_1INCH_USDC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8d7da9...95d8d1`](./contracts/ethereum-1/0x8d7da935c449be284b27d96b6f215d6dba95d8d1/); ethereum `0xee8c92...af484f` | ⚠️ Unaudited |
| OneInchStrategy_1INCH_WBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3ecae4...31e800`](./contracts/ethereum-1/0x3ecae4fff1bb7f9b54d09972097789e00b31e800/); ethereum `0xb3ffe8...6825cc` | ⚠️ Unaudited |
| OneInchStrategy_ETH_DAI | unknown | ethereum | n/a | 2 deployments: ethereum [`0x39ad71...1c9da3`](./contracts/ethereum-1/0x39ad7127896db44389b84c23bfa325e4161c9da3/); ethereum `0xb97fdc...e666af` | ⚠️ Unaudited |
| OneInchStrategy_ETH_ONEINCH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1b8e2b...b2286d`](./contracts/ethereum-1/0x1b8e2b4ad303550d6872c08c5f6c024b68b2286d/); ethereum `0x45d17d...ffbbd5` | ⚠️ Unaudited |
| OneInchStrategy_ETH_USDC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8ea2db...fa4d95`](./contracts/ethereum-1/0x8ea2db065f74064daf96ab1af9637131d5fa4d95/); ethereum `0xab9f3c...eca833` | ⚠️ Unaudited |
| OneInchStrategy_ETH_USDT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x677296...33eb83`](./contracts/ethereum-1/0x67729651d5b265b0ad3e009437a71396ae33eb83/); ethereum `0x7fb83f...1a4b0d` | ⚠️ Unaudited |
| OneInchStrategy_ETH_WBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x15ada3...77d17d`](./contracts/ethereum-1/0x15ada3630227a33751e986f3e77b0a073f77d17d/); ethereum `0xce2fa2...745972` | ⚠️ Unaudited |
| OneInchStrategyMainnet_1INCH_BNB | unknown | bsc | n/a | [`0x5fd7a4...db343b`](./contracts/bsc-56/0x5fd7a4d33f23967e890ae77dd4e065bc01db343b/) | ⚠️ Unaudited |
| OneInchStrategyMainnet_1INCH_renBTC | unknown | bsc | n/a | [`0x4909bf...8d42ad`](./contracts/bsc-56/0x4909bfafaa4d166f09e428dd96c7f481a18d42ad/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | 2 deployments: base [`0xd08a29...fb4034`](./contracts/base-8453/0xd08a2917653d4e460893203471f0000826fb4034/); base `0xe7798f...5a77ea` | ⚠️ Unaudited |
| PancakeStrategyMainnet_BUSD_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x00b7ba...89a1f6`](./contracts/bsc-56/0x00b7ba155debf38f2347a199178c99a9bc89a1f6/); bsc `0x336e07...7afa5f` | ⚠️ Unaudited |
| PancakeStrategyMainnet_BUSD_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x0a25f4...700ec4`](./contracts/bsc-56/0x0a25f4c30bc02be4a5eea2f755fa5a60e5700ec4/); bsc `0x5ed588...1d9df2` | ⚠️ Unaudited |
| PancakeStrategyMainnet_BUSD_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x23d5b0...480177`](./contracts/bsc-56/0x23d5b0fa22e566a4b1131c0f6f6b1ce34e480177/); bsc `0x59258f...8dbd4f` | ⚠️ Unaudited |
| PancakeStrategyMainnet_BUSD_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x4e48c5...a97161`](./contracts/bsc-56/0x4e48c585565581ffc1d2a6a53020927cdca97161/); bsc `0x7384ea...91b41b` | ⚠️ Unaudited |
| PancakeStrategyMainnet_CAKE | unknown | bsc | n/a | 4 deployments: bsc [`0x2eadfb...70f006`](./contracts/bsc-56/0x2eadfb06f9d890eba80e999eaba2d445bc70f006/); bsc `0x8c4ffa...976096`; bsc `0xd40c75...f2c10f`; bsc `0xf60afe...8bded0` | ⚠️ Unaudited |
| PancakeStrategyMainnet_CAKE | unknown | bsc | n/a | 2 deployments: bsc [`0x465888...394f36`](./contracts/bsc-56/0x46588866ae6e296d98f75ef1af01150622394f36/); bsc `0xd432f8...9d8c07` | ⚠️ Unaudited |
| PancakeStrategyMainnet_CAKE_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x2a1ac3...fdb64b`](./contracts/bsc-56/0x2a1ac3ef4c75552305d6c8a60061af8276fdb64b/); bsc `0x573cfe...777709` | ⚠️ Unaudited |
| PancakeStrategyMainnet_CAKE_BNB | unknown | bsc | n/a | 3 deployments: bsc [`0x377203...5825b4`](./contracts/bsc-56/0x377203420f3f05c053639233bb96880d7d5825b4/); bsc `0xd960ca...f65fc9`; bsc `0xe7666f...27c330` | ⚠️ Unaudited |
| PancakeStrategyMainnet_ETH_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x4d82c4...fa96d2`](./contracts/bsc-56/0x4d82c4ee197ecb652e8088cc2890959f0afa96d2/); bsc `0x577b54...366760` | ⚠️ Unaudited |
| PancakeStrategyMainnet_ETH_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x8c4ef5...fc9606`](./contracts/bsc-56/0x8c4ef5fb428ea12bcf37218fc1380a8bbcfc9606/); bsc `0xa83292...59e0e7` | ⚠️ Unaudited |
| PancakeStrategyMainnet_ETH_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0xed274d...7102c2`](./contracts/bsc-56/0xed274dd486bb9c6bac8bdd937160f6c9ca7102c2/); bsc `0xfbc74e...6c2e58` | ⚠️ Unaudited |
| PancakeStrategyMainnet_USDT_BNB | unknown | bsc | n/a | 3 deployments: bsc [`0x05c31c...ea045d`](./contracts/bsc-56/0x05c31c2e3eeca1d1e76856b5b243487f76ea045d/); bsc `0x164385...a76b48`; bsc `0xe5464f...f461fa` | ⚠️ Unaudited |
| PancakeStrategyMainnet_USDT_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x7a2af2...b5e1a0`](./contracts/bsc-56/0x7a2af29b859fb916979dad64f4c3a21fa8b5e1a0/); bsc `0x93da6a...b94c51` | ⚠️ Unaudited |
| PancakeStrategyMainnet_XVS_BNB | unknown | bsc | n/a | 3 deployments: bsc [`0x2d9893...c37d8d`](./contracts/bsc-56/0x2d9893f8fe18757b1b387eaf0276defa99c37d8d/); bsc `0x3fd2d3...859b75`; bsc `0xa0e883...ef240d` | ⚠️ Unaudited |
| PancakeStrategyMainnet_XVS_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x4d3ef7...25e2cf`](./contracts/bsc-56/0x4d3ef7a670e524849096f7ba0f1947eea925e2cf/); bsc `0xde1116...4a24a5` | ⚠️ Unaudited |
| PlasmaVault | unknown | ethereum | n/a | 27 deployments: ethereum [`0x0552e2...bb6ca8`](./contracts/ethereum-1/0x0552e28123a19ff2853d1ed3be75ef1329bb6ca8/); ethereum `0x1fdf5d...4d1bad`; ethereum `0x20e934...b9ac44`; ethereum `0x3a58d6...8ef697`; ethereum `0x5904da...032eb2`; ethereum `0x5ddd76...787d88`; ethereum `0x707d81...cb7a80`; ethereum `0x78cc13...7a64fe`; ethereum `0x981a6c...4db5bc`; ethereum `0xae4362...9a573c`; ethereum `0xc1926c...e63b5d`; ethereum `0xfb696d...307541`; ethereum `0xffb090...6b0472`; base `0x09f77a...0588ea`; base `0x0a4732...22b050`; base `0x168826...188346`; base `0x496e39...c3fecd`; base `0x55d8d6...908a77`; base `0x6539fd...6b8dd1`; base `0x71f856...b4a1cb`; base `0x792418...70530a`; base `0x94d2de...73e695`; base `0xa121d2...49dbe9`; base `0xc4ccef...50cd61`; base `0xdab319...44f368`; base `0xe2996f...29e5d0`; base `0xf590aa...d16ecb` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | ethereum | n/a | 11 deployments: ethereum [`0x08dd57...e48ee8`](./contracts/ethereum-1/0x08dd57a51025a266cecc85154860aa4e71e48ee8/); ethereum `0x29d322...8fafbb`; ethereum `0x3151ce...809d90`; ethereum `0x43a32d...4a1e68`; ethereum `0x64d47d...3a464f`; ethereum `0x6f66b8...6a8c40`; ethereum `0x978141...c7b37b`; ethereum `0x9824dc...878607`; ethereum `0x9dc281...8126d9`; ethereum `0xb4790c...d447ae`; ethereum `0xb530a1...37a3ed` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | ethereum | n/a | 5 deployments: ethereum [`0x2de732...0171ab`](./contracts/ethereum-1/0x2de7320004f837925ba31326ff66210be90171ab/); ethereum `0x394356...49df44`; base `0x53defd...3ad5d4`; base `0x57866b...c97870`; base `0x5bd0b6...4a535c` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | ethereum | n/a | 3 deployments: ethereum [`0x43ee02...9c7ca2`](./contracts/ethereum-1/0x43ee0243ea8cf02f7087d8b16c8d2007cc9c7ca2/); ethereum `0x7ef926...6964d2`; ethereum `0xabab98...c18e3e` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | ethereum | n/a | 2 deployments: ethereum [`0x842494...7d5062`](./contracts/ethereum-1/0x84249464ca6f1591b4be126a2b531517fd7d5062/); ethereum `0xe9385e...b4fb5f` | ⚠️ Unaudited |
| PlasmaVaultBase | core_logic | base | n/a | 4 deployments: base [`0x0d877d...8359c4`](./contracts/base-8453/0x0d877dc7c8fa3ad980dfdb18b48ec9f8768359c4/); base `0x31a421...66db6b`; base `0x787289...12aa97`; base `0xed5d22...e8bde0` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | base | n/a | 4 deployments: base [`0x31a36d...6c421c`](./contracts/base-8453/0x31a36d3eab4a8e0d365eb72ee9079603af6c421c/); base `0x370a3d...2de6d9`; base `0xaf46fc...2b3a3f`; base `0xd00e82...a5c562` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | base | n/a | 7 deployments: base [`0x3ba902...b0e1eb`](./contracts/base-8453/0x3ba9022735c7d570ad99563b428e0e122cb0e1eb/); base `0x60664e...53beed`; base `0xa51787...011937`; base `0xb02d87...4e8599`; base `0xc4c00d...9f68ec`; base `0xd7412a...059ad5`; base `0xfe8b23...072de6` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | base | n/a | [`0x45aa96...f58216`](./contracts/base-8453/0x45aa96f0b3188d47a1dafdbefce1db6b37f58216/) | ⚠️ Unaudited |
| PlasmaVaultFactory | unknown | base | n/a | 10 deployments: ethereum `0x3bbe70...0da9a8`; ethereum `0x7c9119...3007e2`; ethereum `0xcdc799...edc09c`; ethereum `0xee47a6...7eb9a5`; base [`0x11b25b...1b59ac`](./contracts/base-8453/0x11b25b2b9b2a122ee5798d068c75acca8b1b59ac/); base `0x298351...da5151`; base `0x367878...11e401`; base `0x6fef68...c7ee4b`; base `0x71214d...973b3b`; base `0xac0ad2...960c90` | ⚠️ Unaudited |
| PlasmaVaultRequestSharesFuse | unknown | ethereum | n/a | 3 deployments: ethereum [`0x713038...e09542`](./contracts/ethereum-1/0x7130383298822097531cf5cc5e3414dda1e09542/); base `0xe14a69...9c616b`; base `0xef4014...743c09` | ⚠️ Unaudited |
| PopsicleStrategtMainnet_ICE | unknown | bsc | n/a | 2 deployments: bsc [`0xa4e17a...7b4bc0`](./contracts/bsc-56/0xa4e17a09eea14da1d2918fabd49274b56d7b4bc0/); bsc `0xd73381...48e835` | ⚠️ Unaudited |
| PopsicleStrategtMainnet_ICE_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x0c2533...2bd0b8`](./contracts/bsc-56/0x0c253359c7074325211f0e07e31853e1192bd0b8/); bsc `0xba314e...0aff31` | ⚠️ Unaudited |
| PopsicleStrategtMainnet_ICE_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x8c72e9...a029c3`](./contracts/bsc-56/0x8c72e9fcb81a429d9a8051821fdeb1d8a2a029c3/); bsc `0xbcdf4e...a834ca` | ⚠️ Unaudited |
| PopsicleStrategtMainnet_ICE_BNBv2 | unknown | bsc | n/a | 2 deployments: bsc [`0x2965b5...1f051f`](./contracts/bsc-56/0x2965b50883e60af251964ec3cfea0db8be1f051f/); bsc `0x6c55c0...bd2374` | ⚠️ Unaudited |
| PotPoolFactory | unknown | base | n/a | 4 deployments: ethereum `0xb98862...fb71f0`; ethereum `0xbb7239...aca752`; base [`0x68b2fc...e59d03`](./contracts/base-8453/0x68b2fc1566f411c1af8ff5bfda3dd4f3f3e59d03/); base `0x8f0d40...e96c7d` | ⚠️ Unaudited |
| PriceManagerFactory | unknown | base | n/a | 7 deployments: ethereum `0x0fc2d5...b07609`; ethereum `0x6558eb...0ab162`; ethereum `0x7d49c6...e3fe82`; base [`0x0a1d90...9e0086`](./contracts/base-8453/0x0a1d90eb4232ab85f3f5105cc94bd2f7819e0086/); base `0x465e57...96dc9e`; base `0x56eb01...8d37fa`; base `0x5da219...936e5c` | ⚠️ Unaudited |
| PriceOracleMiddlewareManager | unknown | ethereum | n/a | 21 deployments: ethereum [`0x07fc09...062930`](./contracts/ethereum-1/0x07fc092fa44c52516decd5f7545061316d062930/); ethereum `0x18fda4...187d5e`; ethereum `0x213bb7...75dc4d`; ethereum `0x3ac655...189b5a`; ethereum `0x45d0e1...74c115`; ethereum `0x4e3c90...83575b`; ethereum `0x654ff3...d776b1`; ethereum `0x6d16b7...4abc02`; ethereum `0x7c6f94...8ec03e`; ethereum `0x80c086...b8c1aa`; ethereum `0x8b1ebe...8029e8`; ethereum `0x962131...90ee87`; ethereum `0x9f6993...dc8548`; ethereum `0xc3eb0c...8d5787`; ethereum `0xcb5ef9...179362`; base `0x157ba7...655e27`; base `0x3ff6d9...67b32c`; base `0x4195da...ce824e`; base `0x69edba...b49ad0`; base `0x8ab30c...84a27e`; base `0xa5fffb...9d771b` | ⚠️ Unaudited |
| ProfitSharingReceiver | unknown | base | n/a | [`0xcd7197...676a2c`](./contracts/base-8453/0xcd719739c3ece8b576d649be97195ad03e676a2c/) | ⚠️ Unaudited |
| Reader | unknown | bsc | n/a | [`0xf608fb...964791`](./contracts/bsc-56/0xf608fb8832bec233a40c6b67fba349dace964791/) | ⚠️ Unaudited |
| RegularVaultFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3bb28f...e2bef8`](./contracts/ethereum-1/0x3bb28f8e936c48499a4bebbe906e05e8eae2bef8/); base `0x9c0f33...65a891` | ⚠️ Unaudited |
| RequestFeeRefundFuse | unknown | base | n/a | 2 deployments: base [`0x87ebf5...d2e826`](./contracts/base-8453/0x87ebf5f74fab3febdd9dff97e010974674d2e826/); base `0xa47ba8...af0468` | ⚠️ Unaudited |
| RewardDistributionSwitcher | unknown | ethereum | n/a | 2 deployments: ethereum [`0x92ddd3...f7618d`](./contracts/ethereum-1/0x92ddd3be3d178542c339533a713079cea5f7618d/); ethereum `0xc27100...4c2923` | ⚠️ Unaudited |
| RewardForwarder | unknown | base | n/a | 5 deployments: base [`0x1695a1...271718`](./contracts/base-8453/0x1695a1be5e2d67554baaec18d97f2d1f92271718/); base `0x4c60e5...75d2d8`; base `0x52aef4...4846fb`; base `0x88937a...e8d329`; base `0x9d8265...463ea0` | ⚠️ Unaudited |
| RewardPrePayMorhpo | unknown | base | n/a | 2 deployments: base [`0x1e905e...daf62c`](./contracts/base-8453/0x1e905e572100134afeee01e88703cdbb0adaf62c/); base `0x85def1...968843` | ⚠️ Unaudited |
| RewardsClaimManager | unknown | base | n/a | 51 deployments: ethereum `0x11cbc3...10367f`; ethereum `0x1f8397...02ded0`; ethereum `0x23c8dc...21cdec`; ethereum `0x2d1a21...af2792`; ethereum `0x3b1dac...b967b1`; ethereum `0x3e9dba...b9c67c`; ethereum `0x4d99e7...3bddb3`; ethereum `0x4de58c...7d3e23`; ethereum `0x536783...7a91a9`; ethereum `0x5a5f43...18aa01`; ethereum `0x5cb733...208a71`; ethereum `0x7a79b5...749aea`; ethereum `0x84c87f...375cb1`; ethereum `0x9beff3...e42051`; ethereum `0xb20e1d...0cd802`; ethereum `0xb401b9...fdc3e2`; ethereum `0xb58423...79a4c8`; ethereum `0xcb1bbc...34f224`; ethereum `0xcd397f...ed6889`; ethereum `0xcdb0a6...8b5821`; ethereum `0xd0e170...937901`; ethereum `0xd6dc84...9a2946`; ethereum `0xda376f...214721`; ethereum `0xf4c6fe...93cdc8`; ethereum `0xf5db3e...d0be61`; base [`0x05224f...c5e4b8`](./contracts/base-8453/0x05224f2e69765ed784184b0615a374acb7c5e4b8/); base `0x0c0af1...116d2c`; base `0x0ca78d...5b4b06`; base `0x1b400d...4ec2bc`; base `0x269528...34e02f`; base `0x2e4aa9...8c1f13`; base `0x32e1cf...84be1b`; base `0x48fb38...dd871e`; base `0x58c245...cb2375`; base `0x59a7b9...1b746f`; base `0x659fd0...b364ee`; base `0x823ed7...907699`; base `0x88a104...fee7a5`; base `0x93644f...0134a2`; base `0x9688b3...876b5b`; base `0xbca7bd...c1ae24`; base `0xc0dddb...b0d5dc`; base `0xc6b0b9...7a81fa`; base `0xdd5368...ccab45`; base `0xe90ce6...53a136`; base `0xe912c7...86f42f`; base `0xec073a...c42f78`; base `0xef51c3...c3b3ea`; base `0xeffb20...e00a59`; base `0xf7d31f...fd91b9`; base `0xfb1f83...3b00ad` | ⚠️ Unaudited |
| RewardsManagerFactory | unknown | base | n/a | 7 deployments: ethereum `0x274567...c54028`; ethereum `0x5d9f02...c3c71a`; ethereum `0xb03a4f...d6752e`; base [`0x06b64d...35a7ae`](./contracts/base-8453/0x06b64da8de97b14c0de01a199dca1fe13735a7ae/); base `0x4f40da...bf488c`; base `0xed6055...220495`; base `0xf79ada...5a212c` | ⚠️ Unaudited |
| SeamlessFoldStrategyMainnet_cbETH | unknown | base | n/a | [`0xbf94d8...b37399`](./contracts/base-8453/0xbf94d842886704bf72e2303e403899db8ab37399/) | ⚠️ Unaudited |
| SeamlessFoldStrategyMainnet_DAI | unknown | base | n/a | [`0x256cea...5cb7b4`](./contracts/base-8453/0x256cea43cf74c42f0b90f860666b97068d5cb7b4/) | ⚠️ Unaudited |
| SeamlessFoldStrategyMainnet_ETH | unknown | base | n/a | [`0xecdae2...2edffd`](./contracts/base-8453/0xecdae253c6ec3268d99ab89cf783904f812edffd/) | ⚠️ Unaudited |
| SeamlessFoldStrategyMainnet_USDbC | unknown | base | n/a | [`0x845cec...5cbd8b`](./contracts/base-8453/0x845cecc419dfb52bce125853a821cdbb015cbd8b/) | ⚠️ Unaudited |
| SeamlessFoldStrategyMainnet_USDC | unknown | base | n/a | [`0x58e274...7af949`](./contracts/base-8453/0x58e27468ff2708ee0ebd3dd93883f5fee77af949/) | ⚠️ Unaudited |
| SeamlessFoldStrategyV2Mainnet_cbETH | unknown | base | n/a | [`0x6708f8...f71740`](./contracts/base-8453/0x6708f8eba2a347a762aaac785247828ce2f71740/) | ⚠️ Unaudited |
| SeamlessFoldStrategyV2Mainnet_DAI | unknown | base | n/a | [`0x4795af...fd942b`](./contracts/base-8453/0x4795afa6ff3e23b2ea5c95fece44143670fd942b/) | ⚠️ Unaudited |
| SeamlessFoldStrategyV2Mainnet_ETH | unknown | base | n/a | [`0x38fae3...0ddda6`](./contracts/base-8453/0x38fae3e1ea6aed919d884f003cc7a9382c0ddda6/) | ⚠️ Unaudited |
| SeamlessFoldStrategyV2Mainnet_USDbC | unknown | base | n/a | [`0xec9aa9...2f207c`](./contracts/base-8453/0xec9aa9eeccc4555807c4a1a4ae12b7e8b02f207c/) | ⚠️ Unaudited |
| SeamlessFoldStrategyV2Mainnet_USDC | unknown | base | n/a | [`0x1c7068...b4fd01`](./contracts/base-8453/0x1c70688b3deaab658a6db0204f41eea1bdb4fd01/) | ⚠️ Unaudited |
| SeamlessFoldStrategyV2Mainnet_wstETH | unknown | base | n/a | [`0x5dcccf...24fa4b`](./contracts/base-8453/0x5dcccfa2a3d8944819a5f42d53fcd3824724fa4b/) | ⚠️ Unaudited |
| SeamlessRecoveryMainnet_cbETH | unknown | base | n/a | [`0x9acd57...230726`](./contracts/base-8453/0x9acd578d13194d4df5e7bc30007dc09ede230726/) | ⚠️ Unaudited |
| SeamlessRecoveryMainnet_DAI | unknown | base | n/a | [`0x2cece1...7b47e1`](./contracts/base-8453/0x2cece198f8de4efc699f47b6dd380e4ba77b47e1/) | ⚠️ Unaudited |
| SeamlessRecoveryMainnet_ETH | unknown | base | n/a | [`0xfc3fff...c86df9`](./contracts/base-8453/0xfc3fffcd48bebe32eb5b8661167f1004d0c86df9/) | ⚠️ Unaudited |
| SeamlessRecoveryMainnet_USDbC | unknown | base | n/a | [`0x9a4184...e04b4c`](./contracts/base-8453/0x9a4184df85898caa4a34590e4d65ff699ce04b4c/) | ⚠️ Unaudited |
| SeamlessRecoveryMainnet_USDC | unknown | base | n/a | [`0xe8b2b0...bfe507`](./contracts/base-8453/0xe8b2b03f5f41215bcffab3ba3dfebc2acebfe507/) | ⚠️ Unaudited |
| SeamlessRecoveryMainnet_wstETH | unknown | base | n/a | [`0x2b8b72...3c2212`](./contracts/base-8453/0x2b8b720160992072dbdeaaadf2612d6d193c2212/) | ⚠️ Unaudited |
| SNXRewardUniLPStrategy | unknown | ethereum | n/a | 18 deployments: ethereum [`0x0973ed...ad840c`](./contracts/ethereum-1/0x0973ede03cae07837ff0e2c2695ea219dfad840c/); ethereum `0x0a7d74...774ac8`; ethereum `0x0fd7c7...0efc6e`; ethereum `0x13627b...6050c3`; ethereum `0x2cf4ce...34cbd4`; ethereum `0x2fee56...0a472c`; ethereum `0x46a361...03dc52`; ethereum `0x46ec90...bee00a`; ethereum `0x50f119...26c6fd`; ethereum `0x7f522f...ee544d`; ethereum `0x94e74a...40cdbb`; ethereum `0x987a16...79baac`; ethereum `0xa82660...4c212c`; ethereum `0xb40ec6...7b4c55`; ethereum `0xb43aa2...12b6c2`; ethereum `0xc6e973...aef5c0`; ethereum `0xcf6d6e...579309`; ethereum `0xd3927f...cf3c90` | ⚠️ Unaudited |
| SpaceStrategy_SPACE_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0xc843bb...23d4af`](./contracts/bsc-56/0xc843bbdda92124f173a09db47e5e9b1d3823d4af/); bsc `0xe8e106...adcc53` | ⚠️ Unaudited |
| SpaceStrategy_SPACE_BNB | unknown | bsc | n/a | [`0xffbf79...a8cc70`](./contracts/bsc-56/0xffbf7902b0c46257ec8c8afed66f717b9aa8cc70/) | ⚠️ Unaudited |
| SpaceStrategy_SPACE_BUSD | unknown | bsc | n/a | 2 deployments: bsc [`0x381b02...bcff9f`](./contracts/bsc-56/0x381b02359bebe2566c7c08fd7d0b078269bcff9f/); bsc `0xf1ae8e...f11e90` | ⚠️ Unaudited |
| SpaceStrategy_SPACE_BUSD | unknown | bsc | n/a | [`0xcb9681...55294f`](./contracts/bsc-56/0xcb9681ac1ba9eef6886e7a0edf4b5baa1355294f/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | 2 deployments: arbitrum [`0x8553d2...c83c70`](./contracts/arbitrum-42161/0x8553d254cb6934b16f87d2e486b64bbd24c83c70/); arbitrum `0x9dca58...8d46c1` | ⚠️ Unaudited |
| Storage | unknown | ethereum | n/a | 8 deployments: ethereum [`0x808540...ee3bcf`](./contracts/ethereum-1/0x8085407a8b5cc475cc5c02f872b39b57e4ee3bcf/); ethereum `0x993368...203d62`; ethereum `0xc01fd7...77712e`; ethereum `0xc95cbe...d0d197`; ethereum `0xe04d1a...31598a`; bsc `0xc95cbe...d0d197`; base `0x8de4b3...50b792`; base `0x98e03c...6e13f9` | ⚠️ Unaudited |
| StrategyProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0d3921...5c6c0e`](./contracts/ethereum-1/0x0d3921ee9b5e39bccaf6e792512f12bc755c6c0e/); ethereum `0xbc9854...576554` | ⚠️ Unaudited |
| StrategyProxy | unknown | bsc | n/a | 62 deployments: ethereum `0x14e7c3...932f2a`; ethereum `0x337b95...5c0062`; ethereum `0x5e1af8...4e0dac`; ethereum `0x6aeb7b...064b1a`; ethereum `0x77fcb2...82a8a9`; ethereum `0x8a0ee1...422c7c`; ethereum `0xbdc7d6...eee37d`; ethereum `0xdbedfb...e372be`; ethereum `0xfdb0cd...62747f`; bsc [`0x0bcaac...2745dc`](./contracts/bsc-56/0x0bcaace441c9c0b5c1904450e7722ce3672745dc/); bsc `0x0c4224...99d2f6`; bsc `0x117eac...4f9641`; bsc `0x25597b...564ee3`; bsc `0x28db27...617b02`; bsc `0x3243aa...8d003f`; bsc `0x35c95f...3d3eb3`; bsc `0x46c52b...3fdc54`; bsc `0x4a0b8d...110a54`; bsc `0x4f0273...f25111`; bsc `0x53df66...4b87e3`; bsc `0x5666b9...dc6b17`; bsc `0x58476e...28afd3`; bsc `0x66b761...335c34`; bsc `0x6b138b...8b0081`; bsc `0x6cec99...f7f74c`; bsc `0x6e5226...17cefb`; bsc `0x74d3df...8ba127`; bsc `0x78c3e5...36b089`; bsc `0x7a299a...f09370`; bsc `0x7fb685...aadfe1`; bsc `0x90d695...c12267`; bsc `0x927c07...136b19`; bsc `0x9404b2...721cbe`; bsc `0xa6fe29...f66021`; bsc `0xa75ac7...23c015`; bsc `0xae3a7a...b5df41`; bsc `0xb0f5ae...bcd9ff`; bsc `0xbf2eba...3b27a1`; bsc `0xc7cc4c...e6af8c`; bsc `0xc9d337...0d0dde`; bsc `0xced431...695628`; bsc `0xd77e6b...d2a989`; bsc `0xe24e96...2a01fc`; bsc `0xe7a699...e4db8c`; bsc `0xfe11d3...8fbe67`; base `0x0f9677...6dd924`; base `0x1573f3...4e4cfa`; base `0x23ed44...b5c33f`; base `0x3438ac...196f18`; base `0x39e8aa...d8a633`; base `0x492eaa...c0fc16`; base `0x4a8b95...477510`; base `0x5ac8c0...00e7cc`; base `0x626111...754a4c`; base `0x69e2a7...388205`; base `0x6af40c...e02221`; base `0x99b171...85d93f`; base `0x9d7cd2...1d8cec`; base `0xa4e7b6...9d1fe8`; base `0xb38145...33966d`; base `0xbd2dd5...c6d125`; base `0xec5b8b...1800e7` | ⚠️ Unaudited |
| SushiBuybackStrategyMainnet_PERP_WETH | unknown | ethereum | n/a | [`0x630d43...05e781`](./contracts/ethereum-1/0x630d435934e07151db105d2d43bf5a3d3705e781/) | ⚠️ Unaudited |
| SushiHodlStrategyMainnet_DAI_WETH | unknown | ethereum | n/a | [`0x923ca6...5dda65`](./contracts/ethereum-1/0x923ca6dcef62030bed25aa3ef854f39dc45dda65/) | ⚠️ Unaudited |
| SushiHodlStrategyMainnet_USDT_WETH | unknown | ethereum | n/a | [`0x33fed4...1a3cd4`](./contracts/ethereum-1/0x33fed4ccb4175484a692c83942d4374fcd1a3cd4/) | ⚠️ Unaudited |
| SushiHodlStrategyMainnet_WBTC_WETH | unknown | ethereum | n/a | [`0x4cad48...e9fab8`](./contracts/ethereum-1/0x4cad48bf9a362d3576d2aacd5fd0dbd4f9e9fab8/) | ⚠️ Unaudited |
| SushiHodlStrategyMainnet_WETH_USDC | unknown | ethereum | n/a | [`0x8e8c91...6b4c43`](./contracts/ethereum-1/0x8e8c911d46badc3e69d781744d57884eef6b4c43/) | ⚠️ Unaudited |
| SushiMasterChefLPStrategy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x180a71...e261b6`](./contracts/ethereum-1/0x180a71c5688ac7e2368890ef77b0036af8e261b6/); ethereum `0x895cc1...225322`; ethereum `0xd5d2ad...c3cec0`; ethereum `0xdd1dfb...97f053` | ⚠️ Unaudited |
| SushiStrategyMainnet_SUSHI_WETH | unknown | ethereum | n/a | [`0xa44ffa...87ebee`](./contracts/ethereum-1/0xa44ffa733f1d500fd10c613cf66c87320d87ebee/) | ⚠️ Unaudited |
| SushiStrategyMainnet_UST_WETH | unknown | ethereum | n/a | [`0x18fe4b...6c7cd5`](./contracts/ethereum-1/0x18fe4b095dc23411857e174d8c561c860c6c7cd5/) | ⚠️ Unaudited |
| SwirlLPStrategyMainnet | unknown | bsc | n/a | 2 deployments: bsc [`0x4ee876...a4ced2`](./contracts/bsc-56/0x4ee876b94bb00e1792cc25d290c7fca820a4ced2/); bsc `0x9048a1...8363a6` | ⚠️ Unaudited |
| Timelock | unknown | base | n/a | [`0x9ccd7c...dcd791`](./contracts/base-8453/0x9ccd7cf2ad402e8f807c714647aeb9e29fdcd791/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | 2 deployments: polygon [`0xab0b2d...d7bbff`](./contracts/polygon-137/0xab0b2ddb9c7e440fac8e140a89c0dbcbf2d7bbff/); polygon `0xe6018f...9610d8` | ⚠️ Unaudited |
| UniVaultProxy | core_logic | ethereum | n/a | 19 deployments: ethereum [`0x04edb1...ac116b`](./contracts/ethereum-1/0x04edb1420a01547944ea57bbd4ebebae04ac116b/); ethereum `0x0a1ab9...ec0786`; ethereum `0x0b4c4e...49c7c6`; ethereum `0x1851a8...998efc`; ethereum `0x235768...0cd88c`; ethereum `0x3f16b0...d15595`; ethereum `0x45a78d...994a83`; ethereum `0x50dccf...34f6d1`; ethereum `0x5c49e0...c08b60`; ethereum `0x65383a...2c62ac`; ethereum `0x7095b0...437408`; ethereum `0x7fb7e4...4162cc`; ethereum `0x8e1de1...6a0b58`; ethereum `0x970cc1...bc9158`; ethereum `0xc1aa39...2932a1`; ethereum `0xc905cc...55d4bb`; ethereum `0xe29385...8a176a`; ethereum `0xec665d...3d1cfa`; ethereum `0xfb3871...5695bc` | ⚠️ Unaudited |
| UniverseStrategyMainnet_SUSHI | unknown | ethereum | n/a | [`0x5f5fb7...1003fc`](./contracts/ethereum-1/0x5f5fb79ff63a39bebe72d724ce8d5f72fd1003fc/) | ⚠️ Unaudited |
| UpdateBalancesIgnoreDustPreHook | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0cf053...fc1a5c`](./contracts/ethereum-1/0x0cf053385492fef81e538f849e1e5308befc1a5c/); base `0x7f9179...530f0c` | ⚠️ Unaudited |
| UpgradableStrategyFactory | unknown | base | n/a | 2 deployments: ethereum `0x9cf5ab...6110b7`; base [`0x583f12...7fce77`](./contracts/base-8453/0x583f12edccb5f1e27e5f493006b6d18fed7fce77/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | 87 deployments: ethereum [`0x01112a...cc2073`](./contracts/ethereum-1/0x01112a60f427205dca6e229425306923c3cc2073/); ethereum `0x01bd09...42b04a`; ethereum `0x02d77f...95356f`; ethereum `0x07dbe6...e1963a`; ethereum `0x0ca199...365a15`; ethereum `0x0fe428...9c38f3`; ethereum `0x11804d...63ab53`; ethereum `0x12db4a...06039f`; ethereum `0x13027a...9179f6`; ethereum `0x145f39...ab69c8`; ethereum `0x14e7a0...61d865`; ethereum `0x1e5f4e...ecebef`; ethereum `0x203e97...3f241e`; ethereum `0x227a46...0edbb3`; ethereum `0x230d3e...2d3e62`; ethereum `0x24c562...fd216e`; ethereum `0x261930...e01741`; ethereum `0x274aa8...375b48`; ethereum `0x29780c...0140f2`; ethereum `0x29ec64...6e0027`; ethereum `0x2a32dc...4dfe48`; ethereum `0x307e27...a9cdb7`; ethereum `0x371e78...50f86b`; ethereum `0x3860bd...59b3f5`; ethereum `0x3cf83c...f48574`; ethereum `0x4282b7...481191`; ethereum `0x45a9e0...303ec2`; ethereum `0x48473e...b4ffad`; ethereum `0x4b1cbd...bbb68a`; ethereum `0x4d4b6f...36ffc8`; ethereum `0x4d4d85...fee521`; ethereum `0x577426...bcb89a`; ethereum `0x5ade38...b5c78e`; ethereum `0x5c0a3f...f85524`; ethereum `0x5cd9db...5dcd4d`; ethereum `0x5ea74c...339613`; ethereum `0x604925...4dc583`; ethereum `0x633c48...fb75fd`; ethereum `0x639d4f...ba9e54`; ethereum `0x64035b...e60745`; ethereum `0x640704...18f1b5`; ethereum `0x683e68...cb8664`; ethereum `0x6bccd7...e4c43b`; ethereum `0x6eb941...1e2e5a`; ethereum `0x6f1416...8d157d`; ethereum `0x708b10...6ed47d`; ethereum `0x767462...54441b`; ethereum `0x7ddc3f...362cff`; ethereum `0x8255fe...9bc5ee`; ethereum `0x8334a6...1350b7`; ethereum `0x84a1df...3c0a02`; ethereum `0x8a0f6b...ea33e7`; ethereum `0x8aa055...18ff21`; ethereum `0x8bf3c1...b1abb1`; ethereum `0x8d2450...e1ab5b`; ethereum `0x966a70...246c72`; ethereum `0x998ceb...f00fad`; ethereum `0x99c256...f396ae`; ethereum `0x9aa8f4...6aedf8`; ethereum `0x9af516...fe7734`; ethereum `0x9b3be0...15588b`; ethereum `0xa10a74...567e34`; ethereum `0xa79a08...d6bb36`; ethereum `0xa85f81...c70ccf`; ethereum `0xa860a9...7f0bc7`; ethereum `0xaf255e...807a22`; ethereum `0xaf9486...3031b9`; ethereum `0xb37c79...6038b7`; ethereum `0xb59edc...4459db`; ethereum `0xb677bc...dd55b9`; ethereum `0xb8671e...4b009e`; ethereum `0xb89777...189263`; ethereum `0xc391d1...5633c4`; ethereum `0xc3ef8c...ba9d42`; ethereum `0xc45d47...cdbc04`; ethereum `0xc80098...7291bc`; ethereum `0xc8404f...1d6ed2`; ethereum `0xcc7759...2102e2`; ethereum `0xcf16b1...45f334`; ethereum `0xd91b06...032145`; ethereum `0xdb94c2...705dad`; ethereum `0xddb466...615f1b`; ethereum `0xe6e0b4...abf1b1`; ethereum `0xf174dd...3025b3`; ethereum `0xf2a671...8d1c29`; ethereum `0xf553e1...2fc7eb`; ethereum `0xfca949...f361ce` | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3f8861...ce5ad7`](./contracts/ethereum-1/0x3f8861d92e7470c63731a590d8e3e7b37cce5ad7/); ethereum `0xe438c0...814c22` | ⚠️ Unaudited |
| Vault | unknown | bsc | n/a | 34 deployments: bsc [`0x0392f3...9fa8af`](./contracts/bsc-56/0x0392f36d2896c966e141c8fd9eca58a7ca9fa8af/); bsc `0x0a7d74...774ac8`; bsc `0x1274b7...6cbe48`; bsc `0x129cce...cbf89d`; bsc `0x14cb41...8160df`; bsc `0x1bfb4e...02bec1`; bsc `0x21fa8c...614c60`; bsc `0x2427da...d67c92`; bsc `0x299b00...072247`; bsc `0x2ce34b...8efbff`; bsc `0x33da6b...345a14`; bsc `0x374787...26096a`; bsc `0x394e65...8f053d`; bsc `0x3d5b0a...4b885a`; bsc `0x5089ea...ce63ca`; bsc `0x5da237...a7c8eb`; bsc `0x636714...f16e3b`; bsc `0x6a0d73...410853`; bsc `0x75071f...d1c960`; bsc `0x78cf4a...1c1425`; bsc `0x84646f...8328c7`; bsc `0x9090bc...e185ab`; bsc `0xbf2989...460a4f`; bsc `0xc3f7ff...e8326f`; bsc `0xc97dda...dd78f4`; bsc `0xcd8fb1...bf0df1`; bsc `0xcf5f83...b2bbf5`; bsc `0xd75ffa...ce3f63`; bsc `0xe3f309...2176aa`; bsc `0xe604fd...0adbe1`; bsc `0xe64bfe...c83bbf`; bsc `0xf553e1...2fc7eb`; bsc `0xf8ce90...fc0846`; bsc `0xfeb902...e3d072` | ⚠️ Unaudited |
| VaultFarm | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1571ed...19f651`](./contracts/ethereum-1/0x1571ed0bed4d987fe2b498ddbae7dfa19519f651/); ethereum `0x9f45f1...468b27` | ⚠️ Unaudited |
| VaultFarm | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa6f539...7f15f7`](./contracts/ethereum-1/0xa6f539785fa4c33c9f3ad21fc6a366a2ff7f15f7/); ethereum `0xd111bd...b1f47c` | ⚠️ Unaudited |
| VaultMigratable_DAIBASV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x193c55...02e2d1`](./contracts/ethereum-1/0x193c55abe92744f430259c36dc972a30cf02e2d1/); ethereum `0xf8b723...d17858` | ⚠️ Unaudited |
| VaultMigratable_KLONX | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6dffd0...2e44bb`](./contracts/ethereum-1/0x6dffd01c0884fd832398ba89873ec2e4d72e44bb/); ethereum `0xb4e3fc...64ba61` | ⚠️ Unaudited |
| VaultMigratable_Pancake_BDO_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x12d83d...1109f0`](./contracts/bsc-56/0x12d83dbabef9404a807c872a8fe92b6c041109f0/); bsc `0x85e0d2...0ffc3b` | ⚠️ Unaudited |
| VaultMigratable_Pancake_BELT_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x15f62f...7e696b`](./contracts/bsc-56/0x15f62fe6a8ff19e710525ae285ee2b01647e696b/); bsc `0xad941e...ea5288` | ⚠️ Unaudited |
| VaultMigratable_Pancake_BUSD_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x0c4c25...a289f0`](./contracts/bsc-56/0x0c4c25f6f20d2d4d789433b9953fb21354a289f0/); bsc `0x3de9c7...63476c` | ⚠️ Unaudited |
| VaultMigratable_Pancake_BUSD_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x6b95e2...e7a2dd`](./contracts/bsc-56/0x6b95e2801dbaf00c3b3a9ce6f0ae486393e7a2dd/); bsc `0xf7a3a9...283d34` | ⚠️ Unaudited |
| VaultMigratable_Pancake_ETH_BNB | unknown | bsc | n/a | 4 deployments: bsc [`0x6895bd...b9f0c0`](./contracts/bsc-56/0x6895bdb740c1ae2b39f94d7d285e730a88b9f0c0/); bsc `0x8d005a...4c0796`; bsc `0x9e54db...c294d4`; bsc `0xdae22b...81cf03` | ⚠️ Unaudited |
| VaultMigratable_Pancake_ETH_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x91d88f...640e8f`](./contracts/bsc-56/0x91d88f60d6f26fb21f7d117bdea130ff6b640e8f/); bsc `0xe1f9a3...d44633` | ⚠️ Unaudited |
| VaultMigratable_Pancake_ICE_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x1c4adf...6a583f`](./contracts/bsc-56/0x1c4adff419f6b91e51d0ade953c9bbf5d16a583f/); bsc `0xcf4e33...ff40ff` | ⚠️ Unaudited |
| VaultMigratable_Pancake_XVS_BNB | unknown | bsc | n/a | 2 deployments: bsc [`0x0bb940...c99425`](./contracts/bsc-56/0x0bb94083d5718a8cb716fadc016187a0d6c99425/); bsc `0x15dbf9...cb454c` | ⚠️ Unaudited |
| VaultMigratable_Tricrypto | unknown | ethereum | n/a | 2 deployments: ethereum [`0x33ed34...a832ab`](./contracts/ethereum-1/0x33ed34dd7c40ef807356316b484d595ddda832ab/); ethereum `0x5c6cdf...f871da` | ⚠️ Unaudited |
| VaultPausable | unknown | ethereum | n/a | [`0xf85a6e...84222d`](./contracts/ethereum-1/0xf85a6e40935ba6068449bb0ec63a08c7cc84222d/) | ⚠️ Unaudited |
| VaultProxy | unknown | ethereum | n/a | 13 deployments: ethereum [`0x21e223...8c6e13`](./contracts/ethereum-1/0x21e22315bcfcba1c02fc40903bf02b3bd78c6e13/); ethereum `0x380d18...e47085`; ethereum `0x43dd45...2d3a62`; ethereum `0x45809a...5ec2bc`; ethereum `0x5833e0...2a42e8`; ethereum `0x5c5f87...f0c7a5`; ethereum `0x7ac7cd...ece3f0`; ethereum `0x7e3c42...b8ef83`; ethereum `0x84bae3...bb06af`; ethereum `0xbaea43...8caa6e`; ethereum `0xd3093e...fe0eb1`; ethereum `0xe6bf65...368427`; bsc `0xb75f4c...f83bb8` | ⚠️ Unaudited |
| VaultProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x6d3864...8a3121`](./contracts/bsc-56/0x6d386490e2367fc31b4acc99ab7c7d4d998a3121/); bsc `0xac89ef...9dcaf8` | ⚠️ Unaudited |
| VaultProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xeafcd0...1e1674`](./contracts/bsc-56/0xeafcd0abfaa10a9d2840803e41131636f51e1674/); bsc `0xffbd10...4d3e4f` | ⚠️ Unaudited |
| VaultV2 | unknown | base | n/a | 4 deployments: base [`0x0da39b...408381`](./contracts/base-8453/0x0da39bc9efe94bd7229f3597d19658e250408381/); base `0x1d27d2...26b004`; base `0x866888...04ac7a`; base `0x9493f3...aa49ac` | ⚠️ Unaudited |
| VaultV2 | unknown | base | n/a | 2 deployments: base [`0x0e95db...92db4a`](./contracts/base-8453/0x0e95dbb1f8bc45d6bbb65bb53e92fe1e6a92db4a/); base `0x6aa5c1...7e17b4` | ⚠️ Unaudited |
| VaultV2 | unknown | base | n/a | 4 deployments: base [`0x90188f...703c5d`](./contracts/base-8453/0x90188fed247002e81dac2bc74f547c5e4f703c5d/); base `0xc0ce53...d535dd`; base `0xd52962...ae5f88`; base `0xeefbde...986766` | ⚠️ Unaudited |
| VaultV2 | unknown | base | n/a | 2 deployments: base [`0xe727fe...2a2e30`](./contracts/base-8453/0xe727feb09515c5eb86bd5f5eba7f3228252a2e30/); base `0xe78285...1f3cf9` | ⚠️ Unaudited |
| VaultYCRV | unknown | ethereum | n/a | [`0xf2b223...d35f3a`](./contracts/ethereum-1/0xf2b223eb3d2b382ead8d85f3c1b7ef87c1d35f3a/) | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BETH | unknown | bsc | n/a | 2 deployments: bsc [`0x3f14c7...7d88d4`](./contracts/bsc-56/0x3f14c78fb55d53e9c897e59af0ff0e54b37d88d4/); bsc `0xf7d6c4...d88747` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BETH | unknown | bsc | n/a | 2 deployments: bsc [`0x6f8a97...465517`](./contracts/bsc-56/0x6f8a975758436a5ec38d2f9d2336504430465517/); bsc `0x99b0d6...5cf9bf` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BETH | unknown | bsc | n/a | 2 deployments: bsc [`0x9c90e9...6595a4`](./contracts/bsc-56/0x9c90e9c14525e8d71ccceeaa257139b5c56595a4/); bsc `0xb75062...4df8c2` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BETH | unknown | bsc | n/a | 2 deployments: bsc [`0xaf2d2e...eb308e`](./contracts/bsc-56/0xaf2d2e5c5af90c782c008b5b287f20334eeb308e/); bsc `0xb83f69...6dfe4e` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BTCB | unknown | bsc | n/a | 2 deployments: bsc [`0x1b7e12...ce9279`](./contracts/bsc-56/0x1b7e1226ceee76a4acb079c76b532d8d02ce9279/); bsc `0x5365a2...7384fb` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BTCB | unknown | bsc | n/a | 2 deployments: bsc [`0x5c6bc2...a9230a`](./contracts/bsc-56/0x5c6bc2287c48a2c9fc2f0533de2b2acfe7a9230a/); bsc `0xb99c35...45887e` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BTCB | unknown | bsc | n/a | 2 deployments: bsc [`0x8134bc...c691fe`](./contracts/bsc-56/0x8134bca488b63d7a6ca33183f0e0a9c139c691fe/); bsc `0x97a69d...ab4a76` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BTCB | unknown | bsc | n/a | 2 deployments: bsc [`0xc5ddd0...6a83ca`](./contracts/bsc-56/0xc5ddd0986caeb7fb7fc1556712af141e9e6a83ca/); bsc `0xf0109e...65a0a4` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BUSD | unknown | bsc | n/a | 2 deployments: bsc [`0x321e94...983185`](./contracts/bsc-56/0x321e9402479ae47b4de53046bcc418b26d983185/); bsc `0x6f3541...1558d1` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_BUSD | unknown | bsc | n/a | [`0xb858ec...ba2492`](./contracts/bsc-56/0xb858ec7cc0560349293aa2a6cb25d3baadba2492/) | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_DAI | unknown | bsc | n/a | 2 deployments: bsc [`0x11b315...78f7c9`](./contracts/bsc-56/0x11b3154f12551ec4ae665aaebf88dc21f378f7c9/); bsc `0x46967d...feffe0` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_DAI | unknown | bsc | n/a | 2 deployments: bsc [`0x2f4197...55c521`](./contracts/bsc-56/0x2f41971953851023e1eda85ba0bf956c4255c521/); bsc `0x527351...75cb4b` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_ETH | unknown | bsc | n/a | 2 deployments: bsc [`0x158edb...42907c`](./contracts/bsc-56/0x158edb94d0bfc093952fb3009deeed613042907c/); bsc `0x74f2f3...e3c2ed` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_ETH | unknown | bsc | n/a | 5 deployments: bsc [`0x58db12...cc1926`](./contracts/bsc-56/0x58db126c3f30f31180b2b7184b5e7b04f1cc1926/); bsc `0x598c48...1f63d9`; bsc `0x79cfeb...2b0a09`; bsc `0x7af445...4be9b8`; bsc `0xf1499a...8b53c2` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_USDC | unknown | bsc | n/a | 2 deployments: bsc [`0x6aa85f...8468f4`](./contracts/bsc-56/0x6aa85f9faf4639c6f290e04815b2aa45d78468f4/); bsc `0xb5fd62...243313` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_USDC | unknown | bsc | n/a | [`0x9a7797...53002a`](./contracts/bsc-56/0x9a77979af01416539b1b41cf2332fa6ce753002a/) | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_USDT | unknown | bsc | n/a | 2 deployments: bsc [`0x11babd...a54e56`](./contracts/bsc-56/0x11babd0b619bec0bd1b7b2689f4cd11b25a54e56/); bsc `0xb1b0ca...af09c3` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_USDT | unknown | bsc | n/a | [`0xc4f850...1d0e90`](./contracts/bsc-56/0xc4f8507a26b778eb16bbe6d8f074b3a8b01d0e90/) | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_WBNB | unknown | bsc | n/a | 2 deployments: bsc [`0x01fcb5...a4ce33`](./contracts/bsc-56/0x01fcb5bc16e8d945ba276dccfee068231da4ce33/); bsc `0x59565d...d87ad4` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_WBNB | unknown | bsc | n/a | [`0x18c432...8e9533`](./contracts/bsc-56/0x18c4325ae10fc84895c77c8310d6d98c748e9533/) | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_WBNB | unknown | bsc | n/a | 2 deployments: bsc [`0x70aec9...16308e`](./contracts/bsc-56/0x70aec98d696c201dbf7549fd08a47a64a316308e/); bsc `0xa8d087...87775c` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_XVS | unknown | bsc | n/a | 2 deployments: bsc [`0x2f97d9...f6f244`](./contracts/bsc-56/0x2f97d9f870a773186cb01742ff298777bbf6f244/); bsc `0x870495...bc097d` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_XVS | unknown | bsc | n/a | 2 deployments: bsc [`0x71fb9b...eff86d`](./contracts/bsc-56/0x71fb9b8e84b4c6c808315c28981eeffac6eff86d/); bsc `0x826a37...ddb909` | ⚠️ Unaudited |
| VenusFoldStrategyMainnet_XVS | unknown | bsc | n/a | [`0xb4d1d6...39ff95`](./contracts/bsc-56/0xb4d1d6150dac0d1a994afb2a196adadbe639ff95/) | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_BETH | unknown | bsc | n/a | [`0xd22a66...848e2f`](./contracts/bsc-56/0xd22a669c7ee9d2f6ca0a572da2008912b1848e2f/) | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_BTCB | unknown | bsc | n/a | 2 deployments: bsc [`0x0f1ed3...539a6e`](./contracts/bsc-56/0x0f1ed3229b9f23ff2f94533c30a18fd21e539a6e/); bsc `0x93e7f9...ad0dbe` | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_BUSD | unknown | bsc | n/a | 2 deployments: bsc [`0x883c0c...7861b2`](./contracts/bsc-56/0x883c0c3efe6356e785c6776501575d1a367861b2/); bsc `0x8e05ff...64ea39` | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_DAI | unknown | bsc | n/a | [`0x4cef4a...278d26`](./contracts/bsc-56/0x4cef4aea9d4ebd588ebef1ff30dc6d7061278d26/) | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_ETH | unknown | bsc | n/a | [`0x803186...28f976`](./contracts/bsc-56/0x80318633b2ebe8ac717dc1b4dc0b71405e28f976/) | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_USDC | unknown | bsc | n/a | 2 deployments: bsc [`0x0fa8b4...bb5770`](./contracts/bsc-56/0x0fa8b424b480d11fd9330a9c36f94874acbb5770/); bsc `0xc9c1ac...574b40` | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_USDT | unknown | bsc | n/a | 2 deployments: bsc [`0xc24da7...5a311e`](./contracts/bsc-56/0xc24da7a6b5adc8771588d58b6109ef52c95a311e/); bsc `0xdc2724...40d07f` | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_WBNB | unknown | bsc | n/a | 2 deployments: bsc [`0x5a6700...879f49`](./contracts/bsc-56/0x5a6700b7a13dea793c15d60c3d6887071b879f49/); bsc `0x869c12...76d49e` | ⚠️ Unaudited |
| VenusFoldStrategyV2Mainnet_XVS | unknown | bsc | n/a | 2 deployments: bsc [`0x808bcd...9a4eaa`](./contracts/bsc-56/0x808bcdafcb9e644aa89af18da386fd41ee9a4eaa/); bsc `0xa58c65...6dbb4e` | ⚠️ Unaudited |
| VenusVAIStrategyMainnet | unknown | bsc | n/a | 2 deployments: bsc [`0x1050f1...a950ff`](./contracts/bsc-56/0x1050f1876af8a06ba550fe2106ccfcf65ea950ff/); bsc `0x611db2...e68caa` | ⚠️ Unaudited |
| VenusVAIStrategyMainnet | unknown | bsc | n/a | 2 deployments: bsc [`0x19f8ce...aa9919`](./contracts/bsc-56/0x19f8ce19c9730a1d0db5149e65e48c2f0daa9919/); bsc `0xb492fa...7a11bc` | ⚠️ Unaudited |
| ViewerNotifyHelperStateful | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1d52be...9d0c7b`](./contracts/ethereum-1/0x1d52be284e88d6e3b5fbd9145a3ee133169d0c7b/); bsc `0xf5a5f4...939084`; base `0x7ce0b2...4c6161` | ⚠️ Unaudited |
| WithdrawManager | unknown | base | n/a | 49 deployments: ethereum `0x0a78c1...336d2d`; ethereum `0x19e5ac...02737c`; ethereum `0x22524f...2bd0a1`; ethereum `0x468de9...6d7b76`; ethereum `0x4ba0f2...25e6fd`; ethereum `0x5903e1...77b2dd`; ethereum `0x5b7aec...7b5c81`; ethereum `0x75742c...db6a86`; ethereum `0x784008...842c1b`; ethereum `0x79f140...79bbdb`; ethereum `0x7f4474...722349`; ethereum `0x8138fd...4584e1`; ethereum `0x83bc53...df28b7`; ethereum `0xa76aa0...11448c`; ethereum `0xa90196...44b77d`; ethereum `0xac8479...c69c2b`; ethereum `0xbacf97...80ad28`; ethereum `0xcb1cea...80b111`; ethereum `0xcb5d69...9f2bb1`; ethereum `0xd685ce...ff44d3`; ethereum `0xd9d6ac...a401f3`; ethereum `0xdaf066...bc2b3c`; ethereum `0xdbe385...7fb444`; ethereum `0xefde29...9fae28`; ethereum `0xf08cb4...ad1386`; ethereum `0xf215cf...fbd101`; base [`0x03bc96...012065`](./contracts/base-8453/0x03bc9681f7e4546b1d60d17ad14278e429012065/); base `0x123f08...7f9aa1`; base `0x1c18bc...8a8cbf`; base `0x1dfffd...8b8d62`; base `0x2f264a...bbdc06`; base `0x36eb9e...021032`; base `0x408034...561f63`; base `0x55efca...68c184`; base `0x56e008...f0da81`; base `0x59ab09...83fa52`; base `0x698cd9...d4e2eb`; base `0x75906e...953bce`; base `0x7fb24e...b7fb00`; base `0x82a246...1785e1`; base `0x861ae8...aaf1c4`; base `0x8a6d94...260f2a`; base `0x935ee2...0dac62`; base `0x9ef425...9a4f90`; base `0xb6ca12...c410e3`; base `0xd03011...e11d51`; base `0xdf6d4f...5ee3ba`; base `0xf33d16...9bf1a1`; base `0xfadf88...1adf9a` | ⚠️ Unaudited |
| WithdrawManagerFactory | unknown | ethereum | n/a | 7 deployments: ethereum [`0x00b0c4...6fe521`](./contracts/ethereum-1/0x00b0c40cfff6bb23816f110387593032b26fe521/); ethereum `0x86ea41...b488ae`; ethereum `0xe37b58...33e587`; base `0x42c12f...7c6b3a`; base `0x47ad28...9f928e`; base `0x978337...37b605`; base `0xb88aa4...a63a49` | ⚠️ Unaudited |
| XSushiStrategyUpgradeableMainnet | unknown | ethereum | n/a | [`0x40d94a...a58999`](./contracts/ethereum-1/0x40d94aefec6ac00fa80689a38135d83eeaa58999/) | ⚠️ Unaudited |
| YelHodlStrategyMainnet_YEL_WETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21396b...de0197`](./contracts/ethereum-1/0x21396b545f70617fc957b0858610bb1626de0197/); ethereum `0xf42c6b...8f95d2` | ⚠️ Unaudited |
| YelStrategyMainnet_YEL | unknown | ethereum | n/a | [`0x9a50c4...626321`](./contracts/ethereum-1/0x9a50c42ae146fb74bccc4fce850b3a49c1626321/) | ⚠️ Unaudited |
| YelStrategyMainnet_YEL_WETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5258a2...4ff5f8`](./contracts/ethereum-1/0x5258a2be7c16215175faf28486d248af5d4ff5f8/); ethereum `0xba6b43...bc59cb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (190)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x011f04...e1e42e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02b349...02c667` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0473a1...4411ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04fb94...8542e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x055158...dab09b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0580b7...8fd6a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06c547...df90fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a558a...9432e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b08de...30817a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 3 deployments: ethereum `0x0b3cfe...b085a6`; ethereum `0x0f4233...ec46ad`; ethereum `0xeb779f...cf92d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0cc415...14f0b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1073ca...2abab8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16b508...ec0301` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19b3ab...e8de15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1aa0fb...950ad2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d35ba...c1d48a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e716d...6f9964` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22372f...65a75d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22f2a9...391adf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24be1c...354455` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x256420...ae9ebb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26d3e0...ee4150` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ab84b...d0fe54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ecb86...5549a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x303c58...673a21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x306705...7da7f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32236d...d1358e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x367da4...f81c0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x381b02...bcff9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3833b6...9969d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x384636...a903a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x392a5c...dda6c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39309a...8efb24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x397ca3...c52f2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a18aa...85268a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b2ed6...86832d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c262b...359cb3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d3df5...856172` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e43ee...6f515d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f31ed...b97158` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f546a...1c3c7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x401b92...3cff56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x406370...4e7568` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x472288...64a143` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48162b...332a29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a892b...4e535c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b39b0...c88cf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e5a8a...3b70aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e7345...a0dd1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x503ea7...cc72b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50dd79...8f38a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5736fd...849ceb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58144b...2a2654` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b43a0...752cef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5eaab9...86038c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x629943...8e91d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62d97d...910767` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6571b4...8de435` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x657f0a...e4dd0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66db50...6d46e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68ba51...2f1102` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x695a1c...3f5a3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69dafa...20509e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6aa2ae...64b2f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b0858...6ca038` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c91ce...cb2fa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e87ab...0cd36e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6eafd4...f1fe5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x740518...6f5825` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7630a6...b2bde3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76d039...e51155` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a26dc...56912c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a535f...00d628` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d2574...057df1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f0b29...19a2d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f1857...c929b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f94c3...8ba2a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x806c53...dcb5f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8080a9...2c2aa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8111de...e25f4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8137ac...0a16cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x820562...0e226f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88f803...4bcc7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a8849...f2ea74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d6171...a2711d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9099d8...70e883` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9189b9...b31595` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x922147...7e4380` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9330dc...a9a7f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x938180...2159f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98e730...65c15d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99b54e...a98695` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b47d3...243df3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b69df...e9e07f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d5255...613ced` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa057df...c3ccbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1e2d7...c50154` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2b62a...e7da57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3347c...c95550` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa35e4b...96fba2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab5980...c58a3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad8b64...e94e2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadb850...a2123c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xade373...a96c16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafb69b...93feb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafd5b7...a27fb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0cf6f...70c8ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1eb7a...67f7c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2ff02...cf2976` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4bd77...c84572` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb64b6f...82b652` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb863cd...7d1ee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb3855...716efa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb989b...adbde5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf1ca4...55de21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2bd45...749808` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc34265...be1f63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3583a...1c3397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc38835...3da504` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc439e9...3d3290` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc53dab...f8664f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc74075...de8d0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc77147...cd019b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc790ad...7e239a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7a9cc...7fe0e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc85687...886eb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc89844...926a74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb3815...057305` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb9681...55294f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd32f13...d8a0ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd82964...13232e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd98a42...bc7101` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbc32f...e29c4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcaf7b...a5e18b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd40f8...235caf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe41e27...c3c37d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe74a81...f5484e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8355f...70fb6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea46cf...7eae1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeffc1f...26ed42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1499a...8b53c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf20a9d...f2c5e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf301af...bdecde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf328f7...3b0674` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6d794...380c43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf78ca7...0be831` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8b8a0...18f83e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff3818...d41b68` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x098927...1266e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f6cac...e6a1d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x397ac8...798416` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43b80a...8ec676` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x555fa1...61f1a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x63a6d7...a9981a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a3106...a758ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b7c03...147552` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b8ff8...0cb4f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a525d...fefeab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b872c...e14536` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9dabbf...700f67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2bd15...53897c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf269c...995fef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb036b5...a453e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb95a02...f3ebf9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1d0c7...ec15cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf480c...788222` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee2917...b03ca6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf08688...ed0534` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf1163d...77158d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x044bf0...502e7d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0f808b...f66433` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1285db...2c19cb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1d1fb6...6daddb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x39246c...c72d87` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x46e434...b6002e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5170e8...6da5a5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6828cf...9776de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7d8cc5...dcba56` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7f43a0...edf24e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8d0dba...ab8d13` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa12682...da54e0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa7bf06...09b02e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc4b924...57968e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd32085...f3e247` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd43449...2c84f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe71dad...848397` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf38cab...5b522b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d7b01...6aa942` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x713688...34c341` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfebd97...73cad4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [LeastAuthority-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/LeastAuthority-Harvest.pdf) | LeastAuthority | Audit | 2021-02 | stale | Direct | contract_name | 3 | n/a |
| [Haechi-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/Haechi-Harvest.pdf) | Haechi | Audit | 2020-09 | stale | Direct | contract_name | 5 | n/a |
| [PeckShield-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/PeckShield-Harvest.pdf) | PeckShield | Audit | 2020-10 | stale | Direct | contract_name | 4 | n/a |
| [CertiK-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/CertiK-Harvest.pdf) | CertiK | Audit | 2020-11 | stale | Direct | contract_name | 7 | n/a |
| [Halborn-Harvest-2025.pdf](https://github.com/harvestfi/audits/blob/main/Halborn-Harvest-2025.pdf) | Halborn | Audit | 2025-01 | aging | Direct | contract_name | 3 | n/a |
| [LeastAuthority-Harvest.pdf](https://github.com/harvest-finance/harvest/blob/master/audits/LeastAuthority-Harvest.pdf) | Least Authority | Audit | 2021-02 | stale | Direct | contract_name | 5 | n/a |
| [www.harvest.finance/security](https://www.harvest.finance/security) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [immunefi.com/bug-bounty/harvest/information](https://immunefi.com/bug-bounty/harvest/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 709 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=27

Zero-match audit list:

- [15668] www.harvest.finance/security

Fork inheritance lineage and inherited audits are included when available.
