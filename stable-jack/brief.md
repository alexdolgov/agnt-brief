# Agentic Audit Brief: Stable Jack

## Project Overview

- Project: Stable Jack (`stable-jack`)
- Website: [https://www.stablejack.xyz](https://www.stablejack.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.613Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: avalanche, ethereum, sonic
- Contract surface: 254 unique implementations (316 raw deployments)
- DeFi Llama TVL: $1,172,460.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 41 project-authored contract(s) across 2 chain(s); 4 ERC4626 vaults, 9 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 23 common project-authored base contract(s) (aoperator, feem, initializegovernedupgradeabilityproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 394; live-surface contracts included: 310 (82 live, 228 unknown).
- Excluded by liveness: 84 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/31 (9.7%)
- Deployed-live implementations: 33 of 254 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/36
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 218
- Unique implementations: 254
- Raw deployments: 316
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 8.3% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PlatformFeeDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd2791781c367b2f512396105c8ab26479876e973`](./contracts/ethereum-1/0xd2791781c367b2f512396105c8ab26479876e973/); ethereum `0xd6efa5b63531e9ae61e225b02cbacd59092a35be` | ✅ Audited |
| PlatformFeeSpliter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0084c2e1b1823564e597ff4848a88d61ac63d703`](./contracts/ethereum-1/0x0084c2e1b1823564e597ff4848a88d61ac63d703/); ethereum `0x32366846354db5c08e92b4ab0d2a510b2a2380c8` | ✅ Audited |
| RebalancePool | unknown | ethereum | n/a | [`0x3415fcd2885c486e2d848403d51077f7176473c7`](./contracts/ethereum-1/0x3415fcd2885c486e2d848403d51077f7176473c7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirdropDistributor | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x244c88a7f5e11b092acd29f0033972d05e05a831`](./contracts/sonic-146/0x244c88a7f5e11b092acd29f0033972d05e05a831/); sonic `0xc49182b3f3ad6a2e1bfdf4b6342d17c93f9c124c` | ⚠️ Unaudited |
| AirdropReclaimer | operational_periphery | sonic | n/a | [`0x5db8d98ed02a3b8c2781ab0b80f00cd2b75d261a`](./contracts/sonic-146/0x5db8d98ed02a3b8c2781ab0b80f00cd2b75d261a/) | ⚠️ Unaudited |
| BoringVault | core_logic | avalanche | n/a | [`0xdf788ad40181894da035b827cdf55c523bf52f67`](./contracts/avalanche-43114/0xdf788ad40181894da035b827cdf55c523bf52f67/) | ⚠️ Unaudited |
| DistributionSwapper | adapter | sonic | n/a | 16 deployments: sonic [`0x05d61aca7111e177ca0a03e7145f342494bfee01`](./contracts/sonic-146/0x05d61aca7111e177ca0a03e7145f342494bfee01/); sonic `0x14cedd0b2ed13a4a094791b1f525693ff5227230`; sonic `0x1bc06ea7f677bcf507f2f2afb8d0aace1fd86e52`; sonic `0x324a043306f374edcc26c95fe8a934c40a64527c`; sonic `0x3692b155520d54a5a0a0fe77aa6e5982de28d3a6`; sonic `0x3a15cc7a83f19112de572666560cdb54bc4b53eb`; sonic `0x4cba4a275bd4d9f53b94b6073542eb1c09c338fd`; sonic `0x4ce11a58d9eeadbb0a73abd3fd3c6e9245e7fb29`; sonic `0x58d02d3449f018c8a007e8a55df94008e2df52b2`; sonic `0x61b9bff50f18a827d5d7d1d1d73c8aa4b354dd5b`; sonic `0x633ff249cc99d1db57cc566268e453ab157b3b83`; sonic `0x9a7d086bec5ad471e4af4409939c023a2419cf7b`; sonic `0xa55d937e750b03d25214d7c8046c6eb292891248`; sonic `0xa9d889d86fc36db9a44855984e12cba1edb67eb3`; sonic `0xb8c5b4c988205e1c9e1b0a8185627517646b8b5d`; sonic `0xed801d01d12e572809bd4b328ae6ba9a038678c5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4d4daca1fa6440ed4508161328368118bed4d29d`](./contracts/avalanche-43114/0x4d4daca1fa6440ed4508161328368118bed4d29d/); avalanche `0xf99b9eb13d44a9bf980002ab571f178e9a68d1f2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6ed8c61b174f605d4ce6c02c431cd9a7ca992952`](./contracts/avalanche-43114/0x6ed8c61b174f605d4ce6c02c431cd9a7ca992952/); avalanche `0xf76e6d879336d30d973f5713007e3b21de0e67b4` | ⚠️ Unaudited |
| JackTokenBridged | operational_periphery | sonic | n/a | [`0x9d549c39e5e1a0e7ef41d4b7d74c49f976102e36`](./contracts/sonic-146/0x9d549c39e5e1a0e7ef41d4b7d74c49f976102e36/) | ⚠️ Unaudited |
| OSonic | unknown | sonic | n/a | [`0xb1e25689d55734fd3fffc939c4c3eb52dff8a794`](./contracts/sonic-146/0xb1e25689d55734fd3fffc939c4c3eb52dff8a794/) | ⚠️ Unaudited |
| OSonicVaultCore | core_logic | sonic | n/a | [`0xd66afaa7fe071162d055b3cc703cc1eaed836cf3`](./contracts/sonic-146/0xd66afaa7fe071162d055b3cc703cc1eaed836cf3/) | ⚠️ Unaudited |
| OSonicZapper | adapter | sonic | n/a | [`0xe25a2b256ffb3ad73678d5e80de8d2f6022fab21`](./contracts/sonic-146/0xe25a2b256ffb3ad73678d5e80de8d2f6022fab21/) | ⚠️ Unaudited |
| OSVault | core_logic | sonic | n/a | [`0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186`](./contracts/sonic-146/0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186/) | ⚠️ Unaudited |
| PoolBoosterFactorySwapxDouble | registry | sonic | n/a | [`0x840081c97256d553a8f234d469d797b9535a3b49`](./contracts/sonic-146/0x840081c97256d553a8f234d469d797b9535a3b49/) | ⚠️ Unaudited |
| PriceStorage | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0c66fcd3eac84a04a198f2ffe00ca64f3c9272af`](./contracts/avalanche-43114/0x0c66fcd3eac84a04a198f2ffe00ca64f3c9272af/); avalanche `0x40b418cf176731089b2537d027a14c78a86f2166` | ⚠️ Unaudited |
| PriceStorage | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0ef7be66249217e7588ad9277806080472357923`](./contracts/avalanche-43114/0x0ef7be66249217e7588ad9277806080472357923/); avalanche `0x7b4e8103bddd5bca79513fda22892bee53ba9777` | ⚠️ Unaudited |
| ProxyAdmin | unknown | avalanche | n/a | 4 deployments: avalanche [`0x2d1c7b2eb59f1c93983631be4f05b08b51040dd3`](./contracts/avalanche-43114/0x2d1c7b2eb59f1c93983631be4f05b08b51040dd3/); avalanche `0x36f7b8af4faff3eac7190e1842b8d1002f51cfc2`; avalanche `0x8e9988cd53af893ccd76efc6a68cf052de4048d3`; avalanche `0xcfba93b4d9aef59fb9702ce8fcb44b15584f5446` | ⚠️ Unaudited |
| RebalancePool | unknown | ethereum | n/a | [`0xa677d95b91530d56791fba72c01a862f1b01a49e`](./contracts/ethereum-1/0xa677d95b91530d56791fba72c01a862f1b01a49e/) | ⚠️ Unaudited |
| RebalancePoolSplitter | unknown | ethereum | n/a | [`0xce5a14c662f00c614aa467b82c654548540f2fca`](./contracts/ethereum-1/0xce5a14c662f00c614aa467b82c654548540f2fca/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | sonic | n/a | 15 deployments: sonic [`0x0ab6d071af5b692c88baddd1f6e4f3ad5c1de1d3`](./contracts/sonic-146/0x0ab6d071af5b692c88baddd1f6e4f3ad5c1de1d3/); sonic `0x266c10c92d2ad634bf90d2029488de333d6e80b6`; sonic `0x29dafa6123ecc659a2d42ca1245f85cc13c8057f`; sonic `0x485eabed09819428e7ac87139102cd9d83a784bd`; sonic `0x66df6a4b9a31d1a1d5b57e79cfde40dac327d7ed`; sonic `0x7545ddceef18c435887f9da46e230e27728fb931`; sonic `0x7b949a68c57d47ec878bbc2a30c9ef54b41c33b5`; sonic `0x8329d28efc863a952fc5c639917948fd6e8f85e9`; sonic `0x87c165985f852647a044dc5935bbcf1328cfde21`; sonic `0x9981a5fb7253d5ade220e1a44b8f6a0dce8333f5`; sonic `0x9987a6be057d06c1f2b58506118280ce6b6638af`; sonic `0xa1046681a0d71cfe97e05a0fb1540294963b11d7`; sonic `0xadeeb03a2eb221dedb42a868adbca5cc1a9f3ec0`; sonic `0xee1e11a8c9d6f69e40401050d4ba96ec5b145177`; sonic `0xfc7d3ea7078279ef668f1eba658036f72de4094a` | ⚠️ Unaudited |
| Router | adapter | sonic | n/a | 2 deployments: sonic [`0x10c490921916e6d2d38535e63080d54e7e30a829`](./contracts/sonic-146/0x10c490921916e6d2d38535e63080d54e7e30a829/); sonic `0x4d622335c6bba5721090a81b8518c863fc8dc9e0` | ⚠️ Unaudited |
| SimpleToken | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa7c10c510df4b1702e1f36451dd29d7c3edc760c`](./contracts/avalanche-43114/0xa7c10c510df4b1702e1f36451dd29d7c3edc760c/); avalanche `0xf7cf101e9c3d6035a9f832a0c02efbce56f7dfc7` | ⚠️ Unaudited |
| SimpleToken | unknown | avalanche | n/a | 2 deployments: avalanche [`0xaefa3ffe45781680d5ad99627b7eb9d79192b29a`](./contracts/avalanche-43114/0xaefa3ffe45781680d5ad99627b7eb9d79192b29a/); avalanche `0xdd1cdfa52e7d8474d434cd016fd346701db6b3b9` | ⚠️ Unaudited |
| StakedAvUSDV2 | token | avalanche | n/a | [`0x06d47f3fb376649c3a9dafe069b3d6e35572219e`](./contracts/avalanche-43114/0x06d47f3fb376649c3a9dafe069b3d6e35572219e/) | ⚠️ Unaudited |
| TestToken | unknown | avalanche | n/a | 2 deployments: avalanche [`0x8125713bd45f8b5e807d9899afaa214d5e96453c`](./contracts/avalanche-43114/0x8125713bd45f8b5e807d9899afaa214d5e96453c/); avalanche `0xb6b0caa35ef715d3929fb9e1cf7508bc5c40a19f` | ⚠️ Unaudited |
| TokenWrapper | token | sonic | n/a | [`0xb27f555175e67783ba16f11de3168f87693e3c8f`](./contracts/sonic-146/0xb27f555175e67783ba16f11de3168f87693e3c8f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0363a3debe776de575c36f524b7877db7dd461db`](./contracts/avalanche-43114/0x0363a3debe776de575c36f524b7877db7dd461db/); avalanche `0xadb77d4892c859473ccacb1c63c1f5e36fb41314` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 12 deployments: avalanche [`0x19e6a4e40974cd1f021a2571829d50c11a056e46`](./contracts/avalanche-43114/0x19e6a4e40974cd1f021a2571829d50c11a056e46/); avalanche `0x35315ccbbfcc000c58267d73beb86eaf846562bd`; avalanche `0x5559d43feadbf731622630f2103bd4f93a50ee2a`; avalanche `0x698c34bad17193af7e1b4eb07d1309ff6c5e715e`; avalanche `0x872e0255775774b568070fe431f407bdebbdadc8`; avalanche `0x9b7c444e7b522b0da9d5d38c4e39bbfa547dde97`; avalanche `0xa0d0c6e0f336dd028193d610362d4eed1e2cc8da`; avalanche `0xa97d5080e85c481a8658780c96d87762750da841`; avalanche `0xb05b3dec11a357db44d9422aecf32db6b5948dbe`; avalanche `0xbb640e3ae4fdd0f9b6d71b3d9f992e12f741b697`; avalanche `0xea6e19bf4ebdea8e6bf304bd5e60e947e12e61ed`; avalanche `0xf8ae892b41ac5e307289a8cedae5a9a287fd6b0d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x383627530d4b9435355c9c394c70a66aea00243a`](./contracts/avalanche-43114/0x383627530d4b9435355c9c394c70a66aea00243a/); avalanche `0xabe7a9dfda35230ff60d1590a929ae0644c47dc1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0xab2bd1e640b7d069cfd7a4eb250977f979837451`](./contracts/avalanche-43114/0xab2bd1e640b7d069cfd7a4eb250977f979837451/); avalanche `0xdc325ad34c762c19faab37d439fbf219715f9d58` | ⚠️ Unaudited |
| VeArtProxy | unknown | sonic | n/a | 2 deployments: sonic [`0x2fc1e74bc8a6d15fe768c10c2ede7d6d95ec27e9`](./contracts/sonic-146/0x2fc1e74bc8a6d15fe768c10c2ede7d6d95ec27e9/); sonic `0xf2b3038c8bb9c4b225841496cf1d4ca47b4c90d6` | ⚠️ Unaudited |
| VeArtProxy | unknown | sonic | n/a | 2 deployments: sonic [`0x47bf4c2f17c547a3d9052258b91919d09b15d234`](./contracts/sonic-146/0x47bf4c2f17c547a3d9052258b91919d09b15d234/); sonic `0xf00941fd53d1292d093ee0411520a2a545470689` | ⚠️ Unaudited |
| VeArtProxy | unknown | sonic | n/a | [`0xeae33e053eaf1bcc8d33ab9bde53e5bd699ed7b2`](./contracts/sonic-146/0xeae33e053eaf1bcc8d33ab9bde53e5bd699ed7b2/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x0966cae7338518961c2d35493d3eb481a75bb86b`](./contracts/sonic-146/0x0966cae7338518961c2d35493d3eb481a75bb86b/); sonic `0x1ec2b9a77a7226acd457954820197f89b3e3a578` | ⚠️ Unaudited |
| Wrapper | unknown | sonic | n/a | 3 deployments: sonic [`0x9fb76f7ce5fceaa2c42887ff441d46095e494206`](./contracts/sonic-146/0x9fb76f7ce5fceaa2c42887ff441d46095e494206/); sonic `0xdb58c4db1a0f45dda3d2f8e44c3300bb6510c866`; sonic `0xe8a41c62bb4d5863c6eadc96792cfe90a1f37c47` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (218)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x2c3585ad9f052b12578a474beab0b0cf438e5a00) | proxy | avalanche | n/a | `0xf010696e0be614511516be0ddb89aff06b6ca440` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x50a68cf27c6cb264d1d9657435da5a75bab7739a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5220ffe4afecdd24684e16b090eac60fc48ea29e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x63cde3525fd246f7ef9b867fa07c075fae5ce654` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x64bd9c4dd78d2b3ae58c8e56a951168a7dd0f1f6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x67952c059480e38f87cafa8a6e2aa60f5b483d70` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9fb6b659336ce1fa9fe7ed223d67ced00e9c3b32` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc9ec89e5dc92eb42c1f50b40dbadab7835a1675e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd0cc28bc8f4666286f3211e465ecf1fe5c72ac8b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd3d5e4995c6c0520ba5f2f27eaa2ec3c75624ed7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe59c17e7736174f1a39d6d5fceccb764bc814f64` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe7e7de0ebc138cabfa797c7a0c192f55bbb94d8f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf22f2808ee09c9f00d055413a1f415dbc84b13cc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x00367859aef0ee1c0dbfbffe9c14dd6fa483c3ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x00b66073e5036a55b26c1e21c07a72b0f044b4a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x00d011779a0e776a9b1afd8f346b0fbd4745f0e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x013b34dba0d6c9810f530534507144a8646e3273` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x022138b75fb95c7ec6ab922906d8f4ed37d00c31` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x028f76d8cff8500091e1aef47a848c4c0c8354e9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04a46224704c1bae446554ca5f133acc3e794ead` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x064b25670845a96c22d9247652758723aff1283e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x07bc07264e2476771cdd1bd86a7900d920d60d49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x08641837e5284ce533e9ec68fc9c3d13d8741e33` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x08a3127bb622b4eb277a0aabe42882cc713422d2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0954de4e8dc87515e2fc55af6fdee9605f7e418b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0b6d8e92e9cf7a5b43faf3f2e9755dbf90318606` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0c505142ee30f6665aad375ec06aa6bedfb6d26b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0dcaa13de6d372fe645ced4c34591443ef6b530d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0f51e954e6c1e61c48483f6cbb1e5540be7ce2cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x104a42220919701a369335c3ee42719cae54c6ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1177f69798f8e4ac19bbd66f1f7add9323d10b3a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x11fe6fbd2e09601c30d48871fc0626b15a65d8fa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x125eb4bb4c6e02b064e4a76cbc24d26e6ce99c45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x126f0d6ba8d51237c31a2ffaa836fc1fa36bdea7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1346ed698653904efab456ef6f34925e551ae246` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1742cce335512dc0c899117d4b12c42aaca2d914` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1776e8bd709b8758e1fa4a35397ba0bf11301b49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x177a8759128548f9527dd9395eb4223cad886bad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x193a3d6a3898634d86caaab7e8d7d871dfa94e20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1cfd346135a7547bc74522709401c144525ae4be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1e40c7ade253e1f0705d01cd8bd65fd232bcb417` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x210754afdcde92bccb749fdcd86ef22ec96418db` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x21412c2216b6c46a83733d590c6fc1f918e7449c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x21c5b820c31f1322d8bc9ab5da54cacd59880ccc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x226a0cfa529e7b1301903e1674cd64a98906a298` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x229c4efafe16511b5a1f64c9250411ebb7721d1b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x24517abf087430a044adefc97b722da58ec2b6c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x25917787c2ac64270ab951a3aed2cbd7a6c3c3c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x26585e0cdca9cc8ca1176971b1555e155387bd7c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2a0dcdb724e38cb6c26937ac5e9fb017d2a793fa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d3152454124cc80c649566036aeee0c0bd25d31` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d49a61c237d84730b5ca1dad23ee66b967ad886` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2f9d5cdc910bd87d43b377efa3e0e3c3117f5a3f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2fbfe685fe5f302eb1485ad75fdf6905dbcff4b9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x30015eb657737e6b0e4f6df4e4ced662a1e8ab1e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x33fe6a6e050548f5b718a267c9daadbc81265c2d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34a55a6999bd3c5b070bfa22ad7985d87d30ac1c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x350a85f002bc53034f44c39994ba9f71b9c0a0ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x364ff8a6e218df3f3bad918bccf285215da9eec6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x37023a8f95800d2878b24dda2a9ced4fb4501c9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3a6a12e3841f9067d540fbdbf5737efbd993ee4d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3c58089ae81b97d94d2da306e2710b2bd3444048` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3d8f8d690fb81c53d2e3c6fad9f8dc149931a908` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3f451c4cc75f43ebb7eff659f113b21e045a3162` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4061a9d005c13e1bd8a6a7e775c74695f3abe959` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41c43d654e3a2cca92384f2d6e6ba0054fa1e51c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41fe11c7ca312c583d2083226d876a59b5f16929` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x425692b680d2a9d1fc35cfc61c6224398e9ccf9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x42b8ece6db4d21de8cbc6122e00d34b67371d1b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x45084fedb5a2d304495607655208289fe445c389` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4707faa9ac91d0244dc5d40a1eca71bf9c03b135` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x481c49c58ba37f40505cfae159e83ba07af9453d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4b1df663ce06a5695f7244fded3825843a78f377` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4b8aa5b77b10825ac4fa599c9ea1ae9935af6cf5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4d07ef482ad58f612f531bdb677d73970e6759c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4f238e72b061b80ccb6d1fdc906f04ed5f8f3a3d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x532c8e7ed57abd1474dcbaa320b38e7fe84084fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x534d3f3cb3b9bb5e4cb9d761f8ac73488dbf639b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5481fa09ba6f72f7839efabded71f1ec9f3d1094` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x56c76f221f10acecc5cde772a40a2c703fcc43bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x56e32e9af2a29ba5c618fb6efb9a69e7fca52618` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x589429def6feb14b21d825e48e8bb037ac17f813` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x593d893e2614d53d13aa17ff8fdf296ac5e0e01a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5c013300cf9f1a3d88da37cfca53cb2efedb54d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5e09beea662d8cec868f794649001e29c18a1635` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x600466c3c707a75129c7b7bc280e5a00c219fef0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x60b86f37f0b068c4e0e50b8dd1d522fc47ba920f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x61e3d964978968e6b0a8b5af59d7e4f05ce815c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x63e1e39b06059b2ac91fbc956d8123c75de6b913` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x64469225b61f541eedc6ccd9975e5a38ac121b7d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x646cc73b6cbc9459210d15b2230d74a090df06ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65c11d13ce855216cf55b02f1b73b38d2fd11783` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65c325b4a50cd68497dc36f96cf95e4dfd2a2e71` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x66204a1f92d3148e14bd5e13e5eb9ca8d921c9c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x664bc5b26455d4e8b2ef2fa2266dc145672ecdbf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x66a12c0dbacc84f596e3ac0c93915a096c1415f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6752bd2afb637060ea2b7b05b524362debf0a896` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x675bf4a303e61cc1722ffb36e5026dde70c2d1c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x683d224d2d7ccbb217c9932e5f70e55ed0462f59` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x68503d5ade6745d8df3d811ec8712ebcaf00fc1e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6a3560ece4fe09551d458ddd994b6b000f9883ad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6b76a18b1bc73a3986028a9ca875f856d1608c58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6bb76b36e0be1c82ead0ae1bff10af110ad94370` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6c1076590752113514c0e984115aa2e8a916dc52` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6c2a028c82f26cebe31d784d276136fffe1d1512` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x708b06dc261debc8763305cfb0912a163f496da0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7132c0654b4c0c7aedfa071aad848fa8130dc8be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7278288d5269c6b5536d18ec33311a18e2b15934` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x74c5bcc10df69aeda0fe22ca182355c4dab7c97b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x75824026a12a4bf1bf996528b10d2add384c56a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x75df775cfd65d30f70c2c5165508abfda4dc033d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x79a17b7f6fcedb87bf1bd0b3f8ea393365481505` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7aa5c727270c7e1642af898e0ea5b85a094c17a1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7bccff6e42cf1f6e39ecf6ea33f4e73f3a665957` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7c24ead3d79863599f246d2c2ce791ac871f0d92` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7cdfc659eb2acdae76fb1e4420f52cb99860c8f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7d13893da4011a5fa583bdc3dea2df27b85b6d22` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7e9c092854282f5f011ccd48a6364cef26ca451c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7f49be054487b20826b7275a103981f196baaf45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x80960f3269b4a5ff587d77de9de9134ca1674333` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x812c220a7bdf1fdf3d853d79686452aceda1c1bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x83a75358f06253ec9d4dfcb834467e6b131fdcf3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8478b8a7a0b86ee837d3b5f202daa0db8d99e815` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85f50b0e3034c4e4799ee2c937a52cf89420522e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x86bac61fe280d38123d16634f9c429e5f945aadb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c1af71d9a878a924eaede61d7710610ea44a980` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8da9c1ae5af6737c0f5e604541ac235762334ec4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8df5abd282a8a6c514aa0811092717aa51afc6b3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x919e4dea8cb21c08d9f89d16d094add55080b8b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x92796a33451ccfd6d3383508aca4aaf9381ec2af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x933b32e7957895ae26be53980b8f3a94e8ee3038` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x940d9a2ced894fb417a5a6a179873481f51d8731` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x95e62abe36411f6abf1e8a634e985e96aecb21fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x968806e9393ae7d8201a9f286bb5c6df7468e9d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x98b49d5289d148c1fd93fa234e348ab60ba70b0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x99bc5c7acf9305cd660452b0016f446f361d897c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9ab1c7726a7a33887f31f29539893541e545ac6a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9b0f961948502c57a4a1ad6c6b1212c2c1b588a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9d005903c92c50fe58421f42008cacc1399e500f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9e961488da21260ca157c91e40f2a499d863b232` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9f829cb15a4f148eb0fccbeb8f6b6c909c4a2530` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa3fe8589b3ceb8baad7aa0e606035510a7f73600` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4dc75471bda70583e465b94c1e605d90adf7ef7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa544829795a88520ffea2626734eccd09357651a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa65ac528e740c1319f43ebff5e3f41d4ce072573` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa8460baf31394c4c43fbfa503631b418d95aa6f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa861b5fd2df0252b381330a0855103a41853c06a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xabc5cc25b94f2055055b0e6ba0cf736465981941` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xabc8d789601403175239a1ebf7b474287dbe8ca9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xac67bf8b36705b07a9083761a65c60f53f4f00c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xac7a41c5df3e0a253b70cebbbd1c2dc4ba7e1e05` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaec185ded406856ac66127d3622ebf79ba66f131` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaee9ceb2420a29e12b4223d519d1bedb56198267` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaef48806fb7e2d2f26ed20b0304d140f6f1835ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf3ba828b528e6cb5b920c01c9312bdee4e41c5d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb073f673f222c674c5529594367daa31b5fddb74` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb294a915f986c847a5563d2d27a6b7d4cad2b8bf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb3af67dee4379f65e268660ddf9fc93112f178d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb3e8f0a31c968e91b9c5cea6277ffe666c6bebbd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb41c8f0abbad40af42add9ca7edd42e48aab7960` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb424b4312ba3d84a7f465d8380c52d4b23ac25bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb616dd968aab0fd4e9d2007ded383a479cc2abd0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb67aec8a86ba98ea6eeeb31d9c71cfe78fb1540f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb727f20fb81452afefcee4d7ab1dfd489ac60432` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb77fb6ae964b024c6b4118b5f643914ab26d50b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb8389386f859e53aa23b2c7ec1a62072e99e0d2b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb8c6c897a741fc8c4029cefd1238973caded1b41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbab6c3e38710ed901e313a0163839827981d5503` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbbd4b48e020c2301157e256b842cb457c0d4cbe8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc33ce603f9c22e4340e173a16d35fd7a76ef5d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbddc923d706b8c5959731cc6a227f9ae714179d4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc0108ccbc2701eab00c604afdec09dd3df4456ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc0ef48bbe219eb5b56badc43fbf3e04152fd1d47` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc15f86fb72c8de0178449bf77357034cf9e16741` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc2b0a36910a60240c6f99173f432bc2a0154c305` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc50f9de889553750cb138e607710e3b5fa1a5462` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc92a14eb50c05ec6882461a9c0b120b6ef427b59` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc9b58423bb3f20afc22c0461e9ae683411373a3f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc41871e3d7d7447eff80c6d5e1793fc4b9670d6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcdbce52c971cd21521969e6cc31e145d3f096a63` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcee8a4879128d5da53a5857c007bda5a5b11d914` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcefea5af70636ce7b1ddffadd94122bcab687927` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcf26a55e9ce220a5d04cd386f6f996162030c100` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcf2ea8d7476069177bc0dc93b73cd94453da655e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd2a1704dbfd90b6fd5234053435eeadf99a937a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd2bcdf7a03c47b3aa8f62888c80d8d937250bf4e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd4f8d354d18e2bf6e8b26a76d50abc8533c59ef2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd5222d6efc04cd0f490c49e8bce39b4d3b67aad7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd8febbffd91683702f7fd69c0469edab341f56c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd9103e292e8f90d6afb3d1f001dad8432bd33ba6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd942d4fbac187621c145d7e655987993625c777f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd9b6cdbf906078bf852fb377ce4227d49c5ed3c4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd9ede0d9634c01369191f6afaa13f454fbd6f4af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdf14ab2b0f3491fb5d09c8da1f35998df50c577b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe1ffe1b239bbc64c84487da601ab9457007086fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe24f5456dce627e410229f2fc0851499aff7fe58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe36d669dfe0a4a7663a048b7c0bec0762bc33876` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe5a92286f9c57faba07db1f52bfcb4f649b3f01a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe7e0af1cdbce45738f37a1333308f45496777b5a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe946ca081d438403cbfdfa1cd73520bc9e7b65cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeb5ed5048987dd308c948f8580d36d2b1a7800b9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xede839d3332828c94e9d9b727d45d0083dabea23` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef0a8b95f761c0e37209a8a2457975911f1640e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf287cd1757b48c5eaa6d91854f1fd5d1886637c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf322220c3f8f93f70c128cf777b3df61e6d7a8d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf339fefdea5a8cdd682d8a637c4f26b475ab18bf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf39a46d4f43056cbf2bd81648c4e2be9ae1f3a81` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf462b36e72d0acc39f2a07dfefd2a19b2e009070` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf4f3e2e5270d990c54efbe40ae46df73fb552b79` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf577640e974faeb8a198ad450e2f5b20ea3ac896` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf57a423eacf7897d51d3b188d4505b80a9c3c3c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf65fbe58aafe56ac0ac586aa1bc786ca16e98d48` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf6b9a057dfdd95efe7b6bce0c9fdded2ce2b4f20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfb274643174f08b80d4de5c1833b87c1c7b9ed0d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfb47daa2d1004abb7085815c08e58ab7d7fed08b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfbf8a686887939b1961da2c223ec0eafe382a1f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfceba12540965a5686362754dc42b906e528e087` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xff11c94e384c5011cf1b31cea340ed3f774640be` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [aUSD_SC_Final_Audit_Report.pdf](https://github.com/Credshields/audit-reports/blob/master/aUSD_SC_Final_Audit_Report.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x244c88a7f5e11b092acd29f0033972d05e05a831`](./contracts/sonic-146/0x244c88a7f5e11b092acd29f0033972d05e05a831/) | AirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5db8d98ed02a3b8c2781ab0b80f00cd2b75d261a`](./contracts/sonic-146/0x5db8d98ed02a3b8c2781ab0b80f00cd2b75d261a/) | AirdropReclaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdf788ad40181894da035b827cdf55c523bf52f67`](./contracts/avalanche-43114/0xdf788ad40181894da035b827cdf55c523bf52f67/) | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x05d61aca7111e177ca0a03e7145f342494bfee01`](./contracts/sonic-146/0x05d61aca7111e177ca0a03e7145f342494bfee01/) | DistributionSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9d549c39e5e1a0e7ef41d4b7d74c49f976102e36`](./contracts/sonic-146/0x9d549c39e5e1a0e7ef41d4b7d74c49f976102e36/) | JackTokenBridged | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb1e25689d55734fd3fffc939c4c3eb52dff8a794`](./contracts/sonic-146/0xb1e25689d55734fd3fffc939c4c3eb52dff8a794/) | OSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xd66afaa7fe071162d055b3cc703cc1eaed836cf3`](./contracts/sonic-146/0xd66afaa7fe071162d055b3cc703cc1eaed836cf3/) | OSonicVaultCore | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe25a2b256ffb3ad73678d5e80de8d2f6022fab21`](./contracts/sonic-146/0xe25a2b256ffb3ad73678d5e80de8d2f6022fab21/) | OSonicZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186`](./contracts/sonic-146/0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186/) | OSVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x840081c97256d553a8f234d469d797b9535a3b49`](./contracts/sonic-146/0x840081c97256d553a8f234d469d797b9535a3b49/) | PoolBoosterFactorySwapxDouble | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0c66fcd3eac84a04a198f2ffe00ca64f3c9272af`](./contracts/avalanche-43114/0x0c66fcd3eac84a04a198f2ffe00ca64f3c9272af/) | PriceStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0ef7be66249217e7588ad9277806080472357923`](./contracts/avalanche-43114/0x0ef7be66249217e7588ad9277806080472357923/) | PriceStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa677d95b91530d56791fba72c01a862f1b01a49e`](./contracts/ethereum-1/0xa677d95b91530d56791fba72c01a862f1b01a49e/) | RebalancePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce5a14c662f00c614aa467b82c654548540f2fca`](./contracts/ethereum-1/0xce5a14c662f00c614aa467b82c654548540f2fca/) | RebalancePoolSplitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0ab6d071af5b692c88baddd1f6e4f3ad5c1de1d3`](./contracts/sonic-146/0x0ab6d071af5b692c88baddd1f6e4f3ad5c1de1d3/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x10c490921916e6d2d38535e63080d54e7e30a829`](./contracts/sonic-146/0x10c490921916e6d2d38535e63080d54e7e30a829/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa7c10c510df4b1702e1f36451dd29d7c3edc760c`](./contracts/avalanche-43114/0xa7c10c510df4b1702e1f36451dd29d7c3edc760c/) | SimpleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaefa3ffe45781680d5ad99627b7eb9d79192b29a`](./contracts/avalanche-43114/0xaefa3ffe45781680d5ad99627b7eb9d79192b29a/) | SimpleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x06d47f3fb376649c3a9dafe069b3d6e35572219e`](./contracts/avalanche-43114/0x06d47f3fb376649c3a9dafe069b3d6e35572219e/) | StakedAvUSDV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8125713bd45f8b5e807d9899afaa214d5e96453c`](./contracts/avalanche-43114/0x8125713bd45f8b5e807d9899afaa214d5e96453c/) | TestToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb27f555175e67783ba16f11de3168f87693e3c8f`](./contracts/sonic-146/0xb27f555175e67783ba16f11de3168f87693e3c8f/) | TokenWrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2fc1e74bc8a6d15fe768c10c2ede7d6d95ec27e9`](./contracts/sonic-146/0x2fc1e74bc8a6d15fe768c10c2ede7d6d95ec27e9/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x47bf4c2f17c547a3d9052258b91919d09b15d234`](./contracts/sonic-146/0x47bf4c2f17c547a3d9052258b91919d09b15d234/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xeae33e053eaf1bcc8d33ab9bde53e5bd699ed7b2`](./contracts/sonic-146/0xeae33e053eaf1bcc8d33ab9bde53e5bd699ed7b2/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0966cae7338518961c2d35493d3eb481a75bb86b`](./contracts/sonic-146/0x0966cae7338518961c2d35493d3eb481a75bb86b/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9fb76f7ce5fceaa2c42887ff441d46095e494206`](./contracts/sonic-146/0x9fb76f7ce5fceaa2c42887ff441d46095e494206/) | Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 221 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
