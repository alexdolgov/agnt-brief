# Agentic Audit Brief: Stable Jack

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Stable Jack (`stable-jack`)
- Website: [https://www.stablejack.xyz](https://www.stablejack.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, ethereum, sonic
- Contract surface: 669 unique implementations (788 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,172,460.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Stable Jack. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across avalanche, ethereum, sonic. Structural roles: 5 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: unclassified (5)
- Contract kinds: contract (5)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 5; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 10 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 659 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/61
- Verified + Unaudited implementations: 61
- Verified by bytecode match: 0
- Unverified implementations: 608
- Unique implementations: 669
- Raw deployments: 788
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (61)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressesWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x89245a4bd8948713fd5f6da7c84cf6d2b76bed7b`; avalanche `0x99f183bb11ae1e88f24b9f44dbecee2158af1d0f` | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x244c88a7f5e11b092acd29f0033972d05e05a831`; sonic `0xc49182b3f3ad6a2e1bfdf4b6342d17c93f9c124c` | ⚠️ Unaudited |
| AirdropReclaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5db8d98ed02a3b8c2781ab0b80f00cd2b75d261a` | ⚠️ Unaudited |
| AvantCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd2c2a98009d0cbed715882036e43d26c4289053` | ⚠️ Unaudited |
| AvantMintingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x58c32c34fd4ae48a7d45ec4b3c940b41d676cc04`; avalanche `0xcb43139e90f019624e3b76c56fb05394b162a49c` | ⚠️ Unaudited |
| AvantOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3524609c4d8111d45afc912bf1e1270cd5a1bd85` | ⚠️ Unaudited |
| AvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x24de8771bc5ddb3362db529fc3358f2df3a0e346` | ⚠️ Unaudited |
| AvUSDMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1499cb3197427b78dc0e2d356a1e0e4149e0ed51` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf788ad40181894da035b827cdf55c523bf52f67` | ⚠️ Unaudited |
| DistributionSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 18 deployments: sonic `0x05d61aca7111e177ca0a03e7145f342494bfee01`; sonic `0x14cedd0b2ed13a4a094791b1f525693ff5227230`; sonic `0x1bc06ea7f677bcf507f2f2afb8d0aace1fd86e52`; sonic `0x324a043306f374edcc26c95fe8a934c40a64527c`; sonic `0x3692b155520d54a5a0a0fe77aa6e5982de28d3a6`; sonic `0x3a15cc7a83f19112de572666560cdb54bc4b53eb`; sonic `0x4cba4a275bd4d9f53b94b6073542eb1c09c338fd`; sonic `0x4ce11a58d9eeadbb0a73abd3fd3c6e9245e7fb29`; sonic `0x58d02d3449f018c8a007e8a55df94008e2df52b2`; sonic `0x61b9bff50f18a827d5d7d1d1d73c8aa4b354dd5b`; sonic `0x633ff249cc99d1db57cc566268e453ab157b3b83`; sonic `0x67e1996b2d280400c4314a96c41aab927c24875d`; sonic `0x7f8a673d4d4825555557b39724bfa79e90da3743`; sonic `0x9a7d086bec5ad471e4af4409939c023a2419cf7b`; sonic `0xa55d937e750b03d25214d7c8046c6eb292891248`; sonic `0xa9d889d86fc36db9a44855984e12cba1edb67eb3`; sonic `0xb8c5b4c988205e1c9e1b0a8185627517646b8b5d`; sonic `0xed801d01d12e572809bd4b328ae6ba9a038678c5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x4d4daca1fa6440ed4508161328368118bed4d29d`; avalanche `0xf99b9eb13d44a9bf980002ab571f178e9a68d1f2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x6ed8c61b174f605d4ce6c02c431cd9a7ca992952`; avalanche `0xf76e6d879336d30d973f5713007e3b21de0e67b4` | ⚠️ Unaudited |
| FixedRateDripper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x5b72992e9cde8c07ce7c8217eb014ec7fd281f03`; sonic `0xc5685a88569dca11f343db4db50c8e0a7ddad992` | ⚠️ Unaudited |
| FixedRateDripper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x681ac7c974f6b3ca67bb7f68e0cdade9c90e6542` | ⚠️ Unaudited |
| JackTokenBridged | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9d549c39e5e1a0e7ef41d4b7d74c49f976102e36` | ⚠️ Unaudited |
| OSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x1705268cb99b7aa67e0f1f0c71004b83065857c6`; sonic `0x67895dd02c149e0d50c7f399bf31824f84751fdf`; sonic `0x8fb9a0b88cfc93d648b52d0b97a027f464502add`; sonic `0xb75137a0651e6d6cae9aa49b449e017799c9951d`; sonic `0xdb1604784debb80395fc8707bf8f06ed792a1076` | ⚠️ Unaudited |
| OSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xb1e25689d55734fd3fffc939c4c3eb52dff8a794` | ⚠️ Unaudited |
| OSonicDripperProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb570a2d463886c059c94daf779a7bbd84d3182ba` | ⚠️ Unaudited |
| OSonicOracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe68e0c66950a7e02335fc9f44daa05d115c4e88b` | ⚠️ Unaudited |
| OSonicVaultAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x1a44f4e2ccd75999cb7fd1d25b0828c4399ec59f`; sonic `0x2c3141a7926799df0e483f110791f51f6874fed0`; sonic `0x3c11066a5da62569485620169c0af576a80b71f0`; sonic `0x4bc73050916e6d1738286d8863f8fdcffaa879f8`; sonic `0x5217ffe502e937842bda3caec6853b31988c5583`; sonic `0xf611cc500eee7e4e4763a05fe623e2363c86d2af` | ⚠️ Unaudited |
| OSonicVaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x087a3e2b1342ddc7c4c8af6d7d3e5c8ea78dcbd9`; sonic `0x48bb737b62140a5cc2568bae1223ebe1a30fe277`; sonic `0x48e48363a799856b2a135d145305a49023409ebd`; sonic `0x4a83ce24e7a1a010e91329975e9d5a31b34e994c`; sonic `0xb3d6e885f0c0f5355c7029af328fe923ebf9906c`; sonic `0xb5c4cd4092792de91846063e087497ad4c37ac16`; sonic `0xd66afaa7fe071162d055b3cc703cc1eaed836cf3` | ⚠️ Unaudited |
| OSonicVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 12 deployments: sonic `0x062225ff81afd93b21c93a30d46f020a8c13f3d2`; sonic `0x33015e913494705978f1324e9877cfccbb37df3d`; sonic `0x3e07dc143248840f512f1cdd9f2ca3e45d7776a2`; sonic `0x57e4073fb2c8cd6adfc00119908b2e25724f3721`; sonic `0x83e4bc6102d334a858e3764a9a20269c4960ea95`; sonic `0x8a83787c222dbc207612a41eb0e9730ba3a9a958`; sonic `0xb08442bab7ae5b12db276e4f0cd74f7d7c227dae`; sonic `0xbb3b88210cc56b85ec53af5f5cb3cf00e5e1b1a8`; sonic `0xd95345c0a5312e24c39523a785d863f825aa7345`; sonic `0xe0967673a89e22c921ab3c5d8c9ce9429dd55fb2`; sonic `0xeab26fc635e2f910204761e4efb9ffaf92fc358b`; sonic `0xf85a68d7262c16be322b5e77bbbd4562249d2358` | ⚠️ Unaudited |
| OSonicZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x8bb67820e8ac1a775da25e50391718c1457d07ac`; sonic `0xe25a2b256ffb3ad73678d5e80de8d2f6022fab21` | ⚠️ Unaudited |
| OSVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186` | ⚠️ Unaudited |
| PlatformFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd2791781c367b2f512396105c8ab26479876e973`; ethereum `0xd6efa5b63531e9ae61e225b02cbacd59092a35be` | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0084c2e1b1823564e597ff4848a88d61ac63d703`; ethereum `0x32366846354db5c08e92b4ab0d2a510b2a2380c8` | ⚠️ Unaudited |
| PoolBoostCentralRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x246594d0276ffaeb0442c3edcdfb026e6924b3b3`; sonic `0x6f9468c6808fee8f16b8f946297235f6e982bfdc`; sonic `0x7399a8bda2897bcd70ca5b58620da4a309ae6be8`; sonic `0xe1ee1442bf47adbb2ece7f892485d02d149d4aa1` | ⚠️ Unaudited |
| PoolBoostCentralRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x4f3b656aa5fb5e708bf7b63d6ff71623eb4a218a` | ⚠️ Unaudited |
| PoolBoostCentralRegistryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x7c5cb7db176b188af729d8b3b00ef222dd4ca4a7`; sonic `0xa63e47420775a26af0aab0cfc60d28d491d17dc5`; sonic `0xc10f529f231f1670f22687eb576113b8f6145d81` | ⚠️ Unaudited |
| PoolBoosterFactorySwapxDouble | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x27281ce00322ee8b7c078788fb624d051f5f7689`; sonic `0x840081c97256d553a8f234d469d797b9535a3b49`; sonic `0xb2e9d0d8cadb30bb66929996121cbd8bf4c3ffe7`; sonic `0xf43f0f8b2a8f13d8e16e489d75e317691e28674f` | ⚠️ Unaudited |
| PriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0c66fcd3eac84a04a198f2ffe00ca64f3c9272af`; avalanche `0x40b418cf176731089b2537d027a14c78a86f2166` | ⚠️ Unaudited |
| PriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0ef7be66249217e7588ad9277806080472357923`; avalanche `0x7b4e8103bddd5bca79513fda22892bee53ba9777` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x2d1c7b2eb59f1c93983631be4f05b08b51040dd3`; avalanche `0x36f7b8af4faff3eac7190e1842b8d1002f51cfc2`; avalanche `0x8e9988cd53af893ccd76efc6a68cf052de4048d3`; avalanche `0xcfba93b4d9aef59fb9702ce8fcb44b15584f5446` | ⚠️ Unaudited |
| RebalancePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x23831e29db590bbbacf267ee2cf377cd3e54a718`; ethereum `0xa677d95b91530d56791fba72c01a862f1b01a49e` | ⚠️ Unaudited |
| RebalancePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3415fcd2885c486e2d848403d51077f7176473c7` | ⚠️ Unaudited |
| RebalancePoolSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce5a14c662f00c614aa467b82c654548540f2fca` | ⚠️ Unaudited |
| RequestsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x4c129d3aa27272211d151ca39a0a01e4c16fc887`; avalanche `0x5f0aef33a03bf0028fc46dddd4a86ee3d29e2972` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 15 deployments: sonic `0x0ab6d071af5b692c88baddd1f6e4f3ad5c1de1d3`; sonic `0x266c10c92d2ad634bf90d2029488de333d6e80b6`; sonic `0x29dafa6123ecc659a2d42ca1245f85cc13c8057f`; sonic `0x485eabed09819428e7ac87139102cd9d83a784bd`; sonic `0x66df6a4b9a31d1a1d5b57e79cfde40dac327d7ed`; sonic `0x7545ddceef18c435887f9da46e230e27728fb931`; sonic `0x7b949a68c57d47ec878bbc2a30c9ef54b41c33b5`; sonic `0x8329d28efc863a952fc5c639917948fd6e8f85e9`; sonic `0x87c165985f852647a044dc5935bbcf1328cfde21`; sonic `0x9981a5fb7253d5ade220e1a44b8f6a0dce8333f5`; sonic `0x9987a6be057d06c1f2b58506118280ce6b6638af`; sonic `0xa1046681a0d71cfe97e05a0fb1540294963b11d7`; sonic `0xadeeb03a2eb221dedb42a868adbca5cc1a9f3ec0`; sonic `0xee1e11a8c9d6f69e40401050d4ba96ec5b145177`; sonic `0xfc7d3ea7078279ef668f1eba658036f72de4094a` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x10c490921916e6d2d38535e63080d54e7e30a829`; sonic `0x4d622335c6bba5721090a81b8518c863fc8dc9e0` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xa7c10c510df4b1702e1f36451dd29d7c3edc760c`; avalanche `0xf7cf101e9c3d6035a9f832a0c02efbce56f7dfc7` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xaefa3ffe45781680d5ad99627b7eb9d79192b29a`; avalanche `0xdd1cdfa52e7d8474d434cd016fd346701db6b3b9` | ⚠️ Unaudited |
| StakedAvantCoinV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x649342c6bff544d82df1b2ba3c93e0c22cdeba84` | ⚠️ Unaudited |
| StakedAvUSDV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06d47f3fb376649c3a9dafe069b3d6e35572219e` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x8125713bd45f8b5e807d9899afaa214d5e96453c`; avalanche `0xb6b0caa35ef715d3929fb9e1cf7508bc5c40a19f` | ⚠️ Unaudited |
| TokenWrapper | token | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xb27f555175e67783ba16f11de3168f87693e3c8f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-256772 | 2 deployments: avalanche `0x0363a3debe776de575c36f524b7877db7dd461db`; avalanche `0xadb77d4892c859473ccacb1c63c1f5e36fb41314` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 10 deployments: avalanche `0x19e6a4e40974cd1f021a2571829d50c11a056e46`; avalanche `0x35315ccbbfcc000c58267d73beb86eaf846562bd`; avalanche `0x5559d43feadbf731622630f2103bd4f93a50ee2a`; avalanche `0x872e0255775774b568070fe431f407bdebbdadc8`; avalanche `0x9b7c444e7b522b0da9d5d38c4e39bbfa547dde97`; avalanche `0xa0d0c6e0f336dd028193d610362d4eed1e2cc8da`; avalanche `0xa97d5080e85c481a8658780c96d87762750da841`; avalanche `0xb05b3dec11a357db44d9422aecf32db6b5948dbe`; avalanche `0xea6e19bf4ebdea8e6bf304bd5e60e947e12e61ed`; avalanche `0xf8ae892b41ac5e307289a8cedae5a9a287fd6b0d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-256770 | 2 deployments: avalanche `0x383627530d4b9435355c9c394c70a66aea00243a`; avalanche `0xabe7a9dfda35230ff60d1590a929ae0644c47dc1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256765 | `0x698c34bad17193af7e1b4eb07d1309ff6c5e715e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-256771 | 2 deployments: avalanche `0xab2bd1e640b7d069cfd7a4eb250977f979837451`; avalanche `0xdc325ad34c762c19faab37d439fbf219715f9d58` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256768 | `0xbb640e3ae4fdd0f9b6d71b3d9f992e12f741b697` | ⚠️ Unaudited |
| VaultValueChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x06f172e6852085eca886b7f9fd8f7b21db3d2c40` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x14f6fbd0195db6baf933bc49e5dd6b805c5f0e1a`; sonic `0xeae33e053eaf1bcc8d33ab9bde53e5bd699ed7b2` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x2fc1e74bc8a6d15fe768c10c2ede7d6d95ec27e9`; sonic `0xf2b3038c8bb9c4b225841496cf1d4ca47b4c90d6` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x47bf4c2f17c547a3d9052258b91919d09b15d234`; sonic `0xf00941fd53d1292d093ee0411520a2a545470689` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x18708a93ad916fcafa4ba365cdc723fcd3d8c65c`; sonic `0x9842be0f52569155fa58fff36e772bc79d92706e`; sonic `0xeada1c167d50aa0b884d5993e57c99c3d9bbff2f`; sonic `0xf365c45b6913be7ab74c970d9227b9d0dff44afb`; sonic `0xfed36f73dd0c103828179c13a345151bce650c34` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x0966cae7338518961c2d35493d3eb481a75bb86b`; sonic `0x1ec2b9a77a7226acd457954820197f89b3e3a578`; sonic `0x7e330b99458339a5c5236e9030ae707e9c18c1f1` | ⚠️ Unaudited |
| WOSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x1ccb48fb244fe1f6eb0d1c5fbd839db78c6c5805`; sonic `0x9f0df7799f6fdad409300080cff680f5a23df4b1` | ⚠️ Unaudited |
| WOSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x563045e7981be87a5c5c598440f3ae9f79e55d0b`; sonic `0x574cb89c0475487f9dbda19f8f426d5f30b58983`; sonic `0x8cb72f11780e3ec765f91f00678545c3075558f8`; sonic `0xa369fa399d58d7007e5e0f32c5b4c83d8c9657ef`; sonic `0xa8e00f3b166dd5ccea13e73d89d8e79c1b569cbe`; sonic `0xba77859dc57e5a924176d4f892d70c13dd3bd2d7` | ⚠️ Unaudited |
| WOSonicProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x52a10d701c878c5aa3df2731b89bf9b2e7de8342`; sonic `0xbd57cfa27e0eba08a6eb526e5736e92073240841`; sonic `0xc29a44717de87910aa65860be0f57388bd7e4506`; sonic `0xda0d34016a49bfa15391532db53eda32e8236479`; sonic `0xe1b612b654891e0b311069b2aa0ac0e2a48be4a2`; sonic `0xfb6985a816821b21847ed93316a34aca52821836` | ⚠️ Unaudited |
| Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x9fb76f7ce5fceaa2c42887ff441d46095e494206`; sonic `0xdb58c4db1a0f45dda3d2f8e44c3300bb6510c866`; sonic `0xe8a41c62bb4d5863c6eadc96792cfe90a1f37c47` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (608)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x2c3585ad9f052b12578a474beab0b0cf438e5a00) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xf010696e0be614511516be0ddb89aff06b6ca440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002cdac50b3eefe6adb6168833fb49c040a1a7a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0055e248ee7feab91969b77ab32f184b72be82fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00bac667a4ccf9089ab1db978238c555c4349545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x015729c84a1c5e541dfbf6f0ddc59ae66527b5ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0417ce2934899d7130229cda39db456ff2332685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x054fac7aa44f85a59fd41c33006336ec8b03e916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05abfad11c275f91cc79f6ec507cb273e9f59de7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07d1718ff05a8c53c8f05adaed57c0d672945f9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085780639cc2cacd35e474e71f4d000e2405d8f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08a602616593b79591cfc88a130c8825a0fcbd94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0919bbee89ea2d6c306e5fe873b64ceb0efe555b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09b0e3a114135f528f762db8363b4f5eae3f3bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09ce8f58e7340601bb9179000fb49c31843c5283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab9dc99a33cd02a776a9117f211803fb69fd7c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b46aeb66f97b1586ca6588fda50a6f277a56753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b700c60de435d522081cc5eb12b63875fe7e65a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bbfd53ec934e5d4d3d55dd860642add395de979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c439db9b9f11e7f2d4624de6d0f8ffc23dcd1f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c5c61025f047cb7e3e85852dc8eafd7b9a4abfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cd730bdc145fb116d2b2328c0baca40d801d222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d3e9a29e856cf00d670368a7ab0512cb0c29fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e67460226a71df07115c1f169418dd159e5521b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fd2650b2898cd2f21e95c81882c8d36b2612d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x112873b395b98287f3a4db266a58e2d01779ad96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1145f304d74f3295fa38b82e7bb8704b0e187fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1146cb9f7d8633c5f2ed62ff74ab81cb488780dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11c907b3aedbd863e551c37f21dd3f36b28a6784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1236193c71128f9e7b6bb56f506676add8589009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12af4529129303d7fbd2563e242c4a2890525912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12b295d12a4d4df2f3f5b2b8e151bbe000564fa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12be1e1e1f4632f68a78e0ea0247d7e3c2dbc8aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1359fce197cf743016cd1a620939a1a80df259a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14f1cbae37f765614655967afc51b544b8143749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x150f62ec3a9d9ae30b7da4d413af73d8adc15c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15100606433dc500451e8289984acfceead03149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x163283d59fe2a579f2920a7f8ea19f7799b32fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b334f2644cc00b85db1a1eff0c2c395e00c28d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16dbdaaec4ac74597da5438aca8e5b9a954fda9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e2e8ca0b35aa750771e000d1e926417b97f29d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17f21f468d77e6e35702a9ae7a9da50db7f6a4f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184b6aed8d975385e0ad02e026d649208a3c58a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1925e197fffa52060f0d2515cd3781e26c63f08c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1951fb29ee3ed3026ed7ce2beee3194d90fbb2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a144095ad1cb488fe6378dbfc62368a7453d114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a17ccf198e03858227c27205f15a4b388235db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ba2de0e2f7fd59535bc5b29d742fd23b050df18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c81b9bec1cdf9ddc0cb68b9edf3e825065ef084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca7b82c4265835c7841cf29407217d820a7dadb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d100dc012c54606f0046c9420f72b8c63803a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d20671a21112e85b03b00f94fd760de0bef37ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f844447ecf5b1523bfbadad3d9dea975982ea93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2091353d10096349faa685c4dc3d383837f54533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2122a2bee97545595550b85379ac7676fd21a5b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21275a57cf7592a1bb41e75497c070efc8b66b52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x215d87bd3c7482e2348338815e059de07daf798a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x218b689a4f4afba497123b4831f58d6379d99801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21fb1221317ac539ee355fc113054e54b1cd0231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x221ffb180ad01213ff882ab7de9c75e23f9efa63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x222786833b5fd5ee21532d8b576391babefdaad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2290eefea24a6e43b26c27187742bd1fedc10bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22ba83dd069ffe4c8731b1fdac34287231b0f3ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2319289e56830b50a282c25af4f0045c724b3f79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24177d4ad619ae2582872d25985dcef4d1de7ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x250893ca4ba5d05626c785e8da758026928fcd24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x253d0c045ee4fb6f2707fe7d1fcd0ef036e032a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25707b9e6690b52c60ae6744d711cf9c1dfc1876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x267b7a1d56d624293ba1819f30b5bf0f12a524e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x267c6a96db7422faa60aa7198ffeeec4169cd65f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2755eebf220bfd31b83fd9244b6d061bca225311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288810cdbdfed9ea3be3ca4e421ab795fd0669f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28ed637c5e3371c2678c2d346df04fb634ed832d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x297dd69725911fe5f08b8f8c5edddb724d7d11df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ee4b752fe14b0bc1f279dca98415f2fa6f3a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba1cab8c43226b98652fbed1eb6eff117d9c1aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bb0c32101456f5960d4e994bac183fe0dc6c82c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be95a7c0ad24e2d2876793172d046db05d26f7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c613d2c163247cd43fd05d6efc487c327d1b248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d8b895773b093055919e16d537e3a2295d5ef6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e5a5af7ee900d34bcfb70c47023bf1d6be35cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ed6624cc9e6200c2a60631f8ceb69fbafbe3733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30b8b9588592bc92617d5b4bcceed06f76f66b6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x316f7c1c54f6f5455b9ae92218596bad431a4309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31b630b21065664ddd2dba0ed3a60d8ff59501f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31bfaf256875a93b5d02cdef80b17ef780663d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32356fe312eba9b7d6a157ad28d1ca91b571cda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33636d49fbefbe798e15e7f356e8dbef543cc708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3374b9466d571edd695cf5e198f7c89b33c0ce01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x345a345dad48c3504113539ce83c0cb765627b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353e11ab2da88bfc57fd42c2871301c1f123d4db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x361f88157073b8522def857761484ca7b1d5c8be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36ecdec1b5e301321166cefd5856a44bfa13a1ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3716352d57c2e48eedb56ee0712ef29e0c2f3069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37303d55fd8570c070bedd9a0e64421f318bb01b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x376909c828fa57d271e6b208036d24943503fbad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x384b11daa4a6d2b86cc542cb68c473f554b82d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x387568e1ea4ff4d003b8147739db69d87325e206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38965311507d4e54973f81475a149c09376e241e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x389b4a98e01290811687f4fff92281b1ef84c5a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a3060074fc936803ec9c40caba0b1c583c183c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bd15fee3fe7bcc68eac516892b9d21fd30e0196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cdbf28214e4d703c5c599abb5a765bef9bf8815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cfe091c9028154cc5cb721258e9360803b130f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d35dc5948c948f131ddd9e3a341b99e45174a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e9cdbc08b09579bbc8b5b901d88c27ee60e6498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ec677ba393f2257ed0e1d37aa8442eb7f0953fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43fcfe9f128b5e4271c7e25c47efe91ba8896220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x447d902da96a22727d0b53f215d0c387fe1ae114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4480debb165466a0dbb1196879c43c7f0cc297db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x456517ee29af17e59ea1c70852d3fb15804bd122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49e51067e695bd79d6275ecab6e9e527a72abde4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a2ab45d27428901e826db4a52dae00594b68022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a75ce4cf4c74ae6bcd7212324f88c7ecd7bba3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ae3be52c411cc08434d28645fd391497c69c815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bbd78629b2794d73a3def4c502c422de674831d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4be29f398dbf33c13a6c8463a4a45ba97577add1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca79f4fe25bcd329445cdbe7e065427aca98380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e6a1dc233f264dd07b63e206fc451d986ba9908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eefea49e4d876599765d5375cf7314cd14c9d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8330946669d71014efdce30ef19a256643fba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f96fe476e7dcd0404894454927b9885eb8b57c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fb9445019ba1e3a39bd1dfbe9cc7815e0a3c285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50562fe7e870420f5aae480b7f94eb4ace2fcd70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50b4dc15b34e31671c9ca40f9eb05d7ebd6b13f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51e286478519924a400554bae7a3fa139f9b1576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51ef9fd457b9607911fb6cb72b9e47ffd5f053a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x549716f858aeff9cb845d4c78c67a7599b0df240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x558e7dd3a72aaa8d54002cabc4565ad9db58a6df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55a51450b1d025b4f6fa259b2008851553343cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x564a464c9c357de593fa48efd784048a9e366523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56afb443de36340c32f1a461605171992480059d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56b85438f1e16a91eac5fe2daab2c3dd57690175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x576b4779727f5998577bb4e25bf726abe742b9f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5801bb8f568979c722176df36b1a74654a9c52b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58465fff9f31f0d46822d3a4cea0395f017e161a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584b01ab834ee75b2a685da500bcd0d7380fb8e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a097b014c547718e79030a077a91ae37679eff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a161b94c737326ca115ec46f4eaf4eec5037dbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac1a882e6cedc58511b7e42b02bab42e2c02956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b1d12365bec01b8b672ee45912d1bbc86305dba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d0aacf75116d1645db2b3d1ca4b303ef0ca3752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d2c6215555b36889ef235c6d5ccde22e9964e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e3ca2a5736fb093328e4ca19a9a1966025f3905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd37c3b46d05859b333d6e418ce7d6d405c20b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fec7879738cb209af6d9880e4566a24200accae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x606462126e4bd5c4d153fe09967e4c46c9c7fecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61f32964c39cca4353144a6db2f8efdb3216b35b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63b038a7298fbdcf0945068637ec59b8a5e9c6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63fe55b3fe3f74b42840788cfbe6229869590f83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6440e21a3634c319c69cef8d17601dbc4e97c3db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65c9a641afceb9c0e6034e558a319488fa0fa3be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d72aa8da931f047169112fcf34f52dbaae7d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x676c359c78f75581ab2da5c353d2577c41cecb43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x678b5ecfe9fb6f9d900262f7b196d87168a1ef16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6793de5e5a329be514b51184db13639dc7ccf8dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x679de4a3836d916fc86c6d9944c98a694f68adb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67a94c63689cda730e99491d29e56acd247e5430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x680f26dbc8fa2b463607ebb49a68a69c33476665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6844aaab4131041b563e6217eb0ba218123f5e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68863fb8855b04509a835082478d6e3d0be4e61a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69518d1d70ad537c41401303bdf96032338e40de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69556a04b10d16dc62f0b8ea739d03947863cd0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x695c6f5ed9ceb6709e00c08e1326710f3169b922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x697ddb8e742047561c8e4bb69d2ddb1b8bb42b60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69c40892c814fbb6fcdcbeb034e3dc854f3d7e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac9de58a9cbc012e10cd3d2543f596de153cac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af422087abf42819f764ff8de95269036b9a8f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bc45630ef423f75c3b7280cf819661b2dc3051a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c3197e00a96bc3f390d2443e989c48f4c88bbf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c338c0bfb67970231109d4b33047a6e6bc685e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c981a842b7238185a5c2dd27c8f939f98a99d97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d9e81c5b7c4b37d0fe9e8cda776e057f4040868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dc7a100d09ddbf344fc4dd0398f79500d0c2716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e854737e091ca0d2ad9da36f93302b9aa995a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6eb03222179f83126735d7e9fde94571d716d399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ecfa38fee8a5277b91efda204c235814f0122e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fcfe767c479ef1f2d8c7a4b27e2abadd355910f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x714b853b3ba73e439c652cfe79660f329e6ebb42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7267277682ffc281b00b0ec56d8de22e8ae88e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a6239f1651a4556f4c40fe97575885a195f535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a7b27308f2c8b3769fb88734f561c23a4afb66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74e9234a6e03c382a01bb942b1af05b639371309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7612bcabd3d66c71ff740472e063be6a74f126d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76fad0f85c4b34347f2c1cb02d2ef1b3d8128fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7743e50f534a7f9f1791dde7dcd89f7783eefc39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x781ba968d5cc0b40eb592d5c8a9a3a4000063885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78ef19714c8b3c71997970c156f59605a99c3ff3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79c5f5b0753ace25ecdbda4c2bc86ab074b6c2bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a505e920d5d7e4b402d9ee345fb7e8cdc265262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aed2bb6facaf6f843a7b758053573a4ea9e1f70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bbfe4090675689bf78cdb6a1eb4705418bb1462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c5350bac0eb97f86a366ee4f9619a560480f05a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ced6167b5a08111dc8d0d2f9f7e482c4da62506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d4674b837429c44914961cb9f21dd6defd0eee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d85a9ae9ea89069a71289c167cd3502a773e113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6a12dce12bc1c57bdf5829f7b40b113acde303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e94c07c6c3b2c931e9517529f56553770a7c0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eb0ed173480299e1310d55e04ece401c2b06626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81243a88dd9fb963c643bd3f2194c2ca9ccfc428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81a777c4ab65229d1bf64dae4c831bdf628ccc7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81e9ed9b654460212f04c2bde0467cde4628782a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823baf74524b707d649a2a78e66df106f5a131ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x834e87262a00b0ac38ed49cb1110838866be4a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x835191186745e63f9e325e741b273ff925174d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x837592b44ee5447074b80cb21bf37a8c5e4c08f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83bdc459ac3887b2a61aa47dca3acac26a333d20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84952a42984779e22d1e2b78c9b7541d1fb2bd4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x851aaea3a2757d457e1ce88c3808c1690213e432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85b84d588c7a67ebab2aa0352b8475dc9310b805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86e987a89fd7345457d97b9e82906f346d61df39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87d5e4caaf4358a4337c10859c7107c7aef4f8ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88f9e901487b635d1403eaabcb97fc1935fc62ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b10fdf42f5ecada5210c14f5c209c1eb1266f11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cc02c0d9592976635e98e6446ef4976567e7a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d9186fa822624bad50a5cb2545048cb26b4e65e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e3815ef103b8d8528778969cd53baa2e94be25e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e58f45e69732f3c602075f010ab35902ce62771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x910d63e04ca41b9e349c8caba12e7ecae5e11a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9216272158f563488ffc36afb877aca2f265c560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9317139acbdbd53686c4531216a95ccc8514cdcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93670efe073e0d75be16445779a8399e6b418004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x939c38921c961decb3cc16f601c32d07c41cd25c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94172e0b1714792c54f0b077b64e37c8050e89d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94d2670b829ee371c6aaa78dcdd1bd6e967cefbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9516c367952430371a733e5ebb587e01ee082f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9579c311b54b4bb3460a5461cc6108ee162933c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x958df8f124509d45a1c39bc4aedbe486ff2ffb3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96293b5424c707c53a51175489e9b24b6b8dce46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x969fcabb703052155c4cc3b24458e77b2d56b29a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9710ca7f3edd4893f399c89ea184d92cc7172e28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98ea26a76fd78a22691c9ff64f26893a13cd9b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9963e06c9d3fe874b944c5bf63729bd4ae6f07b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x997b6f43c1c1e8630d03b8e3c11b60e98a1bea90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a18c4ea2c4d1aeaff925cb74e41222a2aa14562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a68dea7dcddfc5c4c6b3cb8ab278bf2cd87d3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ad382b028e03977d446635ba6b8492040f829b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9af12dabd518a6da606caac455b2d0efb3ef97f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bf5ffabbf97de0a47843a7ba0a9ddb40f2e2ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c7003bc16f2a1aa47451c858fee6480b755363e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cfefd90d4c8428d4cbac9baaa6d52c6ba7897f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d093e5b929cceeae9497fc27c22481e0b8a53f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d11ab23d33ad026c466ce3c124928fdb69ba20e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d8945755ff12a989c4d5e78c9f6f3a4257db90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9eafdd0d204061fb98cc305bdacf84fa243b0a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9efd39499dd56106b106a2206e79fb6117baf2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f0d5e33617a1db6f1cbd5580834422684f09269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f224aa807c6fc3086ed3c552ba54bd3a8aace33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f23562ec47249761222ef7ac02b327a8c45ba7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f92ee981e2377ab3a657c86e6ba6511d93b9fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fc95077c2271dabb19203e82d469ce2e96aaffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fcb2c47dab11e38fec4b8c886f63741bfed4c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa04d761adad1029e4f2f60ac973a76c5307efcea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0cc8162c523998856d59065faa254f87d20a5b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa295829c082c4d21fe37dbc8c96bfa0ef6dbaa92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2faffe31153e5e60f2352e3ed28ff973309c156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a8e0b7aa53a9b9abd795ddb290e93feafe6e97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3c0f7360b922136cc8b89063be1e8daf70427bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3f4fb87e19b60622bea119c4469c0df2c7c4739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5145ff1e321b717d5f137961fe2dc8ec5af31e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5250c540914e012e22e623275e290c4dc993d11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa553c27fff4d09c69e367c20eb95cc7fd0b0f3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5e2ec4682a32605b9098ddd7204fe84ab932fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa70dddb8ddd06b1c26061d998e041748b18ecf85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa84360896ce9152d1780c546305bb54125f962d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa87f04c9743fd1933f82bddec9692e9d97673769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9414ee8b2b2563e70174972faa2e8b5197feb5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa95ce9eefd6965296722890bb5fb977363fc2066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab709e26fa6b0a30c119d8c55b887ded24952473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabc6a4e345801cb5f57629e79cd5eb2e9e514e98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabc8cbba768da396626fad97d0e61104ac1e7068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac7cf005622ca6a540632a14152fc2a9379413b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacb3604aadf26e6c0bb8c720420380629a328d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacdc0ab51178d0ae8f70c1ead7d3cf5421fdd66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad95d0c8782f8c9076e8f081f7a5e1a4ac4499a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad9a0e7c08bc9f747df97a3e7e7f620632cb6155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae34ee329ee91ddbfbe50443df9dedb076477f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0903ab70a7467ee5756074b31ac88aebb8fb777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0c25521fb7dc1eead2f99132c852ac9c715e8d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb178197e88d58da21be22a408e850d1e6dc09a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1dd23468a69dfddb7211298e609c0db1522b2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2297b60e886a4b9a4d7b385a25c7982712e03ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb259515748c75a7216a4849e67ceb166b0daa98b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb25a554033c59e33e48c5dc05a7192fb1bbddfc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb26ca48fe4ee94a4fe8815f7e54e99124f997540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2e43ececa7c110c74cf13ba35105b0633b74e91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3886b8c94c8635b786b1ca88942337669bb1e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3c90e64eb6f456a5f5c17aa99b6aeca6f4a6390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4fe4e73658b42619a4c739aac4e66ad87351b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5152d159fce50a7576eba7fab61c2b98f0ed692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb592e01dd77084b36430ffcb9c9d2f76fde32631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb753366082466c4b5984312f0c4bb97554be067e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb788998187a8536f38b69ae657323ac8b70551bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb87a8332dfb1c76bb22477dcfeddeb69865ca9f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb90d347e10a085b591955cbd0603ac7866fcadc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb925f8caa6be0bfcd1a7383168d1c932d185a748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba947cba270d30967369bf1f73884be2533d7bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb549046497364a1e26f94f7e93685dc29fad8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbba4114f182e0b33ffbeb538a680639516b647ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbfc4df7b7793fb7817533545101ab6071f1520a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc113e63c3e5bcc9b829053c31a6c3868d7cd674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcf57a777c20f66f3e4a7435269da4e73073e001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd09e936de95a7d90b84e3c6ff7d2139511d5aeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbeb4289491ebfe8452cfac8830a6285e42a4742b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc054f64143cb04b765773d5b66992f611c497352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0e93ac461c377f96486445cb16169fd09c9ccc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2312caf0de62ec9b4adc785c79851cb989c9abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2bdbf323304eabd9260b42e4d0d429ca3481d6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2def1e39ff35367f2f2a312a793477c576fd4c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4160f6d4149e0921e9aced406acf5f3ad7f2882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc50ea03795b1c6e618fbbc304b55e5f7c31d7adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6dee5913e010895f3702bc43a40d661b13a40bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8b194925d55d5de9555ad1db74c149329f71def` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca0563ab14a87ee64d6b097b0dfc46e9b56820ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca1d3f8f770fd50b8cf76551ec54012c26036c2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcad2b9c980322f460db51cc8e45539f677c73f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcccb97f23666c75aee0aabddb180c2df68b03154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce744c8b9069776f3367e5ad3585c9e5a7bdd448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf904d377604bcccb328e51204ca30203f635259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfeeff214b256063110d3236ea12db49d2df2359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd11396267546b8ed258152f7e4f0cc1ca32abd81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd116513eea4efe3908212afbaefc76cb29245681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd36845bd3ce4ea0d60aefa6a902ebfd23cf44df7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd41d29fc53fe5ce9f0fb2328e54d35a2a03a324b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5e047e4ddc2c5b0e5ca66beb4dd0853afc4fa0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6b8162e2fb9f3eff09bb8598ca0c8958e33a23d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd71b8b76015f296e53d41e8288a8a13eaffff2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd766f2b87de4b08c2239580366e49710180aba02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda1d80bad62586a7c319fd2a41d98a930705fc9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba9a415bae1983a945ba078150cae8b690c9229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcb9a696419b54851307ffc62c8c4e50ddacfbb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd8f6860f5a3eecd8b7a902df75cb7548387c224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7fbdbae50c7931a11765faed9fe1a002605b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfac83173a96b06c5d6176638124d028269cfcd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfc3683a0179a02bfb5373243d105ff25e4f40c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1b11bb0b6d1b321eeb7e0298a3f9eb92171693b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1fc1e9514f149ae9d69089c45934a78f9e57389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4031e271809d20074e4bef1caeefec5f710e8a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe534e5e86382d64133ecd6b7f717c69bec8b40ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe60eb8098b34ed775ac44b1dde864e098c6d7f37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe64b336b5df8318fa485a1a96af5f8a553555285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe650a519a88bc980750cea783e26d32fd35c3b5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6b953bb4c4b8eed78b40b81e457ee4bda461d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7f847c62025ed672cfc57c244d16f76f8eac66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9cb575988196fda18aa4fe70a7ffa0f3bfc5a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb7874754362386ca438e70447a60a626bcaad3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed113b925ac3f972161be012cdfee33470040e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed803540037b0ae069c93420f89cd653b6e3df1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed92dde3214c24ae04f5f96927e3be8f8dbc3289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed9ed685f553b0827a58a918e64ec02e6fd55799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeded972215008a0d033d3d641511d40d382317e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeecd843ed9f3d07757565e5cb91111718270a44f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf01ccea9704ca0aca3d2982dbb6b40bad7075c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0a3eced42dbd8353569639c0eaa833857aa0a75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c702a1cf8438db6c00c654e7081f3ad1d3f6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1e141c804ba39b4a031fdf46e8c08dba7a0df60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf291ec9c2f87a41386fd94ec4bcdc3270ed04482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf29b80b512f7055f164a33aa13105dfac3b01b6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf32b39a518e099f93aaaba7eb6892d53255cc3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf32ffd90133c7ec15e1519b9f7de8143310961ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3d24bb506038f6639b34b5175e0fcf2d610a098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf422446f7730e50b9cab4618343425d9927b35ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4bd6d66bafea1e0500536d52236f64c3e8a2a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf58c499417e36714e99803cb135f507a95ae7169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf594bdfafe4197144c6459fca611d7b868d36bea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5a3c54cfd96837c5efce8a4b260de7b117f2681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6198e5e9179afb6a75a5c4dc29e0235bc8af0c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf62f458d2f6dd2ad074e715655064d7632e136d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf729422d68c2cf00574fb5712972454cf402a9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf74ca519fe35ec6a862a4debd8e317bed3c47c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa1dc2b0775c5699e195bb5f64bafba3c36a9ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa4761512aaf899b010438a10c60d01ebdc0efca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa525154c6371e9d46570b44c7328e6cc3e7cc47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc3862c33b54e0bba61d966ff51973c20be4fc62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd91aee8dbf0d8f62dd8638a3f78e596b9718bcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfefafb9446d84a9e58a3a2f2dddd7219e8c94fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffe563c168c01e05da4f3d81938af158466ad793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x50a68cf27c6cb264d1d9657435da5a75bab7739a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5220ffe4afecdd24684e16b090eac60fc48ea29e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x63cde3525fd246f7ef9b867fa07c075fae5ce654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x64bd9c4dd78d2b3ae58c8e56a951168a7dd0f1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x67952c059480e38f87cafa8a6e2aa60f5b483d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9fb6b659336ce1fa9fe7ed223d67ced00e9c3b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc9ec89e5dc92eb42c1f50b40dbadab7835a1675e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd0cc28bc8f4666286f3211e465ecf1fe5c72ac8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd3d5e4995c6c0520ba5f2f27eaa2ec3c75624ed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe59c17e7736174f1a39d6d5fceccb764bc814f64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe7e7de0ebc138cabfa797c7a0c192f55bbb94d8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf22f2808ee09c9f00d055413a1f415dbc84b13cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00367859aef0ee1c0dbfbffe9c14dd6fa483c3ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00b66073e5036a55b26c1e21c07a72b0f044b4a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00d011779a0e776a9b1afd8f346b0fbd4745f0e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256763 | `0x013b34dba0d6c9810f530534507144a8646e3273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x022138b75fb95c7ec6ab922906d8f4ed37d00c31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x028f76d8cff8500091e1aef47a848c4c0c8354e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04a46224704c1bae446554ca5f133acc3e794ead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x064b25670845a96c22d9247652758723aff1283e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07bc07264e2476771cdd1bd86a7900d920d60d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08641837e5284ce533e9ec68fc9c3d13d8741e33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08a3127bb622b4eb277a0aabe42882cc713422d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0954de4e8dc87515e2fc55af6fdee9605f7e418b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b6d8e92e9cf7a5b43faf3f2e9755dbf90318606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c505142ee30f6665aad375ec06aa6bedfb6d26b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0dcaa13de6d372fe645ced4c34591443ef6b530d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f51e954e6c1e61c48483f6cbb1e5540be7ce2cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x104a42220919701a369335c3ee42719cae54c6ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1177f69798f8e4ac19bbd66f1f7add9323d10b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11fe6fbd2e09601c30d48871fc0626b15a65d8fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x125eb4bb4c6e02b064e4a76cbc24d26e6ce99c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x126f0d6ba8d51237c31a2ffaa836fc1fa36bdea7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1346ed698653904efab456ef6f34925e551ae246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1742cce335512dc0c899117d4b12c42aaca2d914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1776e8bd709b8758e1fa4a35397ba0bf11301b49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x177a8759128548f9527dd9395eb4223cad886bad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x193a3d6a3898634d86caaab7e8d7d871dfa94e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1cfd346135a7547bc74522709401c144525ae4be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1e40c7ade253e1f0705d01cd8bd65fd232bcb417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x210754afdcde92bccb749fdcd86ef22ec96418db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21412c2216b6c46a83733d590c6fc1f918e7449c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21c5b820c31f1322d8bc9ab5da54cacd59880ccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x226a0cfa529e7b1301903e1674cd64a98906a298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x229c4efafe16511b5a1f64c9250411ebb7721d1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x24517abf087430a044adefc97b722da58ec2b6c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x25917787c2ac64270ab951a3aed2cbd7a6c3c3c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26585e0cdca9cc8ca1176971b1555e155387bd7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a0dcdb724e38cb6c26937ac5e9fb017d2a793fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d3152454124cc80c649566036aeee0c0bd25d31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d49a61c237d84730b5ca1dad23ee66b967ad886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f9d5cdc910bd87d43b377efa3e0e3c3117f5a3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2fbfe685fe5f302eb1485ad75fdf6905dbcff4b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30015eb657737e6b0e4f6df4e4ced662a1e8ab1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x33fe6a6e050548f5b718a267c9daadbc81265c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34a55a6999bd3c5b070bfa22ad7985d87d30ac1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x350a85f002bc53034f44c39994ba9f71b9c0a0ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x364ff8a6e218df3f3bad918bccf285215da9eec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37023a8f95800d2878b24dda2a9ced4fb4501c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a6a12e3841f9067d540fbdbf5737efbd993ee4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c58089ae81b97d94d2da306e2710b2bd3444048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d8f8d690fb81c53d2e3c6fad9f8dc149931a908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f451c4cc75f43ebb7eff659f113b21e045a3162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4061a9d005c13e1bd8a6a7e775c74695f3abe959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x41c43d654e3a2cca92384f2d6e6ba0054fa1e51c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x41fe11c7ca312c583d2083226d876a59b5f16929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x425692b680d2a9d1fc35cfc61c6224398e9ccf9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42b8ece6db4d21de8cbc6122e00d34b67371d1b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45084fedb5a2d304495607655208289fe445c389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4707faa9ac91d0244dc5d40a1eca71bf9c03b135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x481c49c58ba37f40505cfae159e83ba07af9453d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b1df663ce06a5695f7244fded3825843a78f377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b8aa5b77b10825ac4fa599c9ea1ae9935af6cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d07ef482ad58f612f531bdb677d73970e6759c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f238e72b061b80ccb6d1fdc906f04ed5f8f3a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x532c8e7ed57abd1474dcbaa320b38e7fe84084fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x534d3f3cb3b9bb5e4cb9d761f8ac73488dbf639b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5481fa09ba6f72f7839efabded71f1ec9f3d1094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56c76f221f10acecc5cde772a40a2c703fcc43bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56e32e9af2a29ba5c618fb6efb9a69e7fca52618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x589429def6feb14b21d825e48e8bb037ac17f813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x593d893e2614d53d13aa17ff8fdf296ac5e0e01a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c013300cf9f1a3d88da37cfca53cb2efedb54d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e09beea662d8cec868f794649001e29c18a1635` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x600466c3c707a75129c7b7bc280e5a00c219fef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60b86f37f0b068c4e0e50b8dd1d522fc47ba920f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61e3d964978968e6b0a8b5af59d7e4f05ce815c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63e1e39b06059b2ac91fbc956d8123c75de6b913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x64469225b61f541eedc6ccd9975e5a38ac121b7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x646cc73b6cbc9459210d15b2230d74a090df06ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65c11d13ce855216cf55b02f1b73b38d2fd11783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65c325b4a50cd68497dc36f96cf95e4dfd2a2e71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66204a1f92d3148e14bd5e13e5eb9ca8d921c9c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x664bc5b26455d4e8b2ef2fa2266dc145672ecdbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66a12c0dbacc84f596e3ac0c93915a096c1415f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6752bd2afb637060ea2b7b05b524362debf0a896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x675bf4a303e61cc1722ffb36e5026dde70c2d1c2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256764 | `0x683d224d2d7ccbb217c9932e5f70e55ed0462f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68503d5ade6745d8df3d811ec8712ebcaf00fc1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a3560ece4fe09551d458ddd994b6b000f9883ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b76a18b1bc73a3986028a9ca875f856d1608c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6bb76b36e0be1c82ead0ae1bff10af110ad94370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c1076590752113514c0e984115aa2e8a916dc52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c2a028c82f26cebe31d784d276136fffe1d1512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x708b06dc261debc8763305cfb0912a163f496da0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7132c0654b4c0c7aedfa071aad848fa8130dc8be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7278288d5269c6b5536d18ec33311a18e2b15934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74c5bcc10df69aeda0fe22ca182355c4dab7c97b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74d2df56bf72b191a2a759255403c373d20cd1ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x75824026a12a4bf1bf996528b10d2add384c56a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x75df775cfd65d30f70c2c5165508abfda4dc033d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x79a17b7f6fcedb87bf1bd0b3f8ea393365481505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7aa5c727270c7e1642af898e0ea5b85a094c17a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7bccff6e42cf1f6e39ecf6ea33f4e73f3a665957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7c24ead3d79863599f246d2c2ce791ac871f0d92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7cdfc659eb2acdae76fb1e4420f52cb99860c8f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d13893da4011a5fa583bdc3dea2df27b85b6d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e9c092854282f5f011ccd48a6364cef26ca451c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f49be054487b20826b7275a103981f196baaf45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x80960f3269b4a5ff587d77de9de9134ca1674333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x812c220a7bdf1fdf3d853d79686452aceda1c1bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83a75358f06253ec9d4dfcb834467e6b131fdcf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8478b8a7a0b86ee837d3b5f202daa0db8d99e815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85f50b0e3034c4e4799ee2c937a52cf89420522e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256766 | `0x86bac61fe280d38123d16634f9c429e5f945aadb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c1af71d9a878a924eaede61d7710610ea44a980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8da9c1ae5af6737c0f5e604541ac235762334ec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8df5abd282a8a6c514aa0811092717aa51afc6b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x919e4dea8cb21c08d9f89d16d094add55080b8b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x92796a33451ccfd6d3383508aca4aaf9381ec2af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x933b32e7957895ae26be53980b8f3a94e8ee3038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x940d9a2ced894fb417a5a6a179873481f51d8731` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x95e62abe36411f6abf1e8a634e985e96aecb21fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x968806e9393ae7d8201a9f286bb5c6df7468e9d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x98b49d5289d148c1fd93fa234e348ab60ba70b0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99bc5c7acf9305cd660452b0016f446f361d897c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ab1c7726a7a33887f31f29539893541e545ac6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b0f961948502c57a4a1ad6c6b1212c2c1b588a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9d005903c92c50fe58421f42008cacc1399e500f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e961488da21260ca157c91e40f2a499d863b232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f829cb15a4f148eb0fccbeb8f6b6c909c4a2530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3fe8589b3ceb8baad7aa0e606035510a7f73600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4dc75471bda70583e465b94c1e605d90adf7ef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa544829795a88520ffea2626734eccd09357651a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa65ac528e740c1319f43ebff5e3f41d4ce072573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa8460baf31394c4c43fbfa503631b418d95aa6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa861b5fd2df0252b381330a0855103a41853c06a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xabc5cc25b94f2055055b0e6ba0cf736465981941` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xabc8d789601403175239a1ebf7b474287dbe8ca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac67bf8b36705b07a9083761a65c60f53f4f00c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac7a41c5df3e0a253b70cebbbd1c2dc4ba7e1e05` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256767 | `0xaec185ded406856ac66127d3622ebf79ba66f131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaee9ceb2420a29e12b4223d519d1bedb56198267` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaef48806fb7e2d2f26ed20b0304d140f6f1835ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf3ba828b528e6cb5b920c01c9312bdee4e41c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb073f673f222c674c5529594367daa31b5fddb74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb294a915f986c847a5563d2d27a6b7d4cad2b8bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3af67dee4379f65e268660ddf9fc93112f178d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3e8f0a31c968e91b9c5cea6277ffe666c6bebbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb41c8f0abbad40af42add9ca7edd42e48aab7960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb424b4312ba3d84a7f465d8380c52d4b23ac25bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb616dd968aab0fd4e9d2007ded383a479cc2abd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb67aec8a86ba98ea6eeeb31d9c71cfe78fb1540f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb727f20fb81452afefcee4d7ab1dfd489ac60432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb77fb6ae964b024c6b4118b5f643914ab26d50b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb8389386f859e53aa23b2c7ec1a62072e99e0d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb8c6c897a741fc8c4029cefd1238973caded1b41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbab6c3e38710ed901e313a0163839827981d5503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb4685b334988af9579c772a3df5949e0b5d3c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbd4b48e020c2301157e256b842cb457c0d4cbe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc33ce603f9c22e4340e173a16d35fd7a76ef5d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbddc923d706b8c5959731cc6a227f9ae714179d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc0108ccbc2701eab00c604afdec09dd3df4456ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc0ef48bbe219eb5b56badc43fbf3e04152fd1d47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc15f86fb72c8de0178449bf77357034cf9e16741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc2b0a36910a60240c6f99173f432bc2a0154c305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc50f9de889553750cb138e607710e3b5fa1a5462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc92a14eb50c05ec6882461a9c0b120b6ef427b59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9b58423bb3f20afc22c0461e9ae683411373a3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc41871e3d7d7447eff80c6d5e1793fc4b9670d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcdbce52c971cd21521969e6cc31e145d3f096a63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcee8a4879128d5da53a5857c007bda5a5b11d914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcefea5af70636ce7b1ddffadd94122bcab687927` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256769 | `0xcf26a55e9ce220a5d04cd386f6f996162030c100` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf2ea8d7476069177bc0dc93b73cd94453da655e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2a1704dbfd90b6fd5234053435eeadf99a937a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2bcdf7a03c47b3aa8f62888c80d8d937250bf4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd4f8d354d18e2bf6e8b26a76d50abc8533c59ef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd5222d6efc04cd0f490c49e8bce39b4d3b67aad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8febbffd91683702f7fd69c0469edab341f56c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd9103e292e8f90d6afb3d1f001dad8432bd33ba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd942d4fbac187621c145d7e655987993625c777f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd9b6cdbf906078bf852fb377ce4227d49c5ed3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd9ede0d9634c01369191f6afaa13f454fbd6f4af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf14ab2b0f3491fb5d09c8da1f35998df50c577b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe1ffe1b239bbc64c84487da601ab9457007086fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe24f5456dce627e410229f2fc0851499aff7fe58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe36d669dfe0a4a7663a048b7c0bec0762bc33876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5a92286f9c57faba07db1f52bfcb4f649b3f01a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7e0af1cdbce45738f37a1333308f45496777b5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe946ca081d438403cbfdfa1cd73520bc9e7b65cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb5ed5048987dd308c948f8580d36d2b1a7800b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xede839d3332828c94e9d9b727d45d0083dabea23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef0a8b95f761c0e37209a8a2457975911f1640e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf287cd1757b48c5eaa6d91854f1fd5d1886637c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf322220c3f8f93f70c128cf777b3df61e6d7a8d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf339fefdea5a8cdd682d8a637c4f26b475ab18bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf39a46d4f43056cbf2bd81648c4e2be9ae1f3a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf462b36e72d0acc39f2a07dfefd2a19b2e009070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf4f3e2e5270d990c54efbe40ae46df73fb552b79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf577640e974faeb8a198ad450e2f5b20ea3ac896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf57a423eacf7897d51d3b188d4505b80a9c3c3c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf65fbe58aafe56ac0ac586aa1bc786ca16e98d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf6b9a057dfdd95efe7b6bce0c9fdded2ce2b4f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb274643174f08b80d4de5c1833b87c1c7b9ed0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb47daa2d1004abb7085815c08e58ab7d7fed08b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfbf8a686887939b1961da2c223ec0eafe382a1f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfceba12540965a5686362754dc42b906e528e087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff11c94e384c5011cf1b31cea340ed3f774640be` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 718
- Live contracts: 0
- Unknown liveness contracts: 718
- Source-verified contracts: 115
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=28, contamination review=6, exact address book overlap=7, source verified unclassified=81, unverified unclassified=596

Showing first 200 of 718 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | candidate review | ERC1967Proxy<br>`0x40b418cf176731089b2537d027a14c78a86f2166` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | candidate review | ERC1967Proxy<br>`0x4d4daca1fa6440ed4508161328368118bed4d29d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | candidate review | ERC1967Proxy<br>`0x7b4e8103bddd5bca79513fda22892bee53ba9777` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | candidate review | ERC1967Proxy<br>`0xa7c10c510df4b1702e1f36451dd29d7c3edc760c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | candidate review | ERC1967Proxy<br>`0xdd1cdfa52e7d8474d434cd016fd346701db6b3b9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | candidate review | ERC1967Proxy<br>`0xf76e6d879336d30d973f5713007e3b21de0e67b4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | source verified unclassified | AddressesWhitelist<br>`0x89245a4bd8948713fd5f6da7c84cf6d2b76bed7b` | non_address_book | unknown | unknown | verified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | source verified unclassified | AddressesWhitelist<br>`0x99f183bb11ae1e88f24b9f44dbecee2158af1d0f` | non_address_book | unknown | unknown | verified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | source verified unclassified | AvantCoin<br>`0xfd2c2a98009d0cbed715882036e43d26c4289053` | non_address_book | unknown | unknown | verified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | source verified unclassified | AvantMintingV2<br>`0x58c32c34fd4ae48a7d45ec4b3c940b41d676cc04` | non_address_book | unknown | unknown | verified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | source verified unclassified | AvantMintingV2<br>`0xcb43139e90f019624e3b76c56fb05394b162a49c` | non_address_book | unknown | unknown | verified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | source verified unclassified | AvantOFTAdapter<br>`0x3524609c4d8111d45afc912bf1e1270cd5a1bd85` | non_address_book | unknown | unknown | verified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | source verified unclassified | AvUSD<br>`0x24de8771bc5ddb3362db529fc3358f2df3a0e346` | non_address_book | unknown | unknown | verified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | source verified unclassified | AvUSDMinting<br>`0x1499cb3197427b78dc0e2d356a1e0e4149e0ed51` | non_address_book | unknown | unknown | verified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | source verified unclassified | PriceStorage<br>`0x0c66fcd3eac84a04a198f2ffe00ca64f3c9272af` | non_address_book | unknown | unknown | verified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | source verified unclassified | PriceStorage<br>`0x0ef7be66249217e7588ad9277806080472357923` | non_address_book | unknown | unknown | verified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | source verified unclassified | RequestsManager<br>`0x4c129d3aa27272211d151ca39a0a01e4c16fc887` | non_address_book | unknown | unknown | verified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | source verified unclassified | RequestsManager<br>`0x5f0aef33a03bf0028fc46dddd4a86ee3d29e2972` | non_address_book | unknown | unknown | verified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | source verified unclassified | SimpleToken<br>`0xaefa3ffe45781680d5ad99627b7eb9d79192b29a` | non_address_book | unknown | unknown | verified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | source verified unclassified | SimpleToken<br>`0xf7cf101e9c3d6035a9f832a0c02efbce56f7dfc7` | non_address_book | unknown | unknown | verified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | source verified unclassified | StakedAvantCoinV2<br>`0x649342c6bff544d82df1b2ba3c93e0c22cdeba84` | non_address_book | unknown | unknown | verified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6a3560ece4fe09551d458ddd994b6b000f9883ad` | non_address_book | unknown | unknown | unverified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6ed8c61b174f605d4ce6c02c431cd9a7ca992952` | non_address_book | unknown | unknown | unverified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x74d2df56bf72b191a2a759255403c373d20cd1ae` | non_address_book | unknown | unknown | unverified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa544829795a88520ffea2626734eccd09357651a` | non_address_book | unknown | unknown | unverified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbb4685b334988af9579c772a3df5949e0b5d3c4a` | non_address_book | unknown | unknown | unverified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc0108ccbc2701eab00c604afdec09dd3df4456ea` | non_address_book | unknown | unknown | unverified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf99b9eb13d44a9bf980002ab571f178e9a68d1f2` | non_address_book | unknown | unknown | unverified | n/a | `0xa5ab0683d4f4ad107766a9fc4ddd49b5a960e661` |
| avalanche | candidate review | ProxyAdmin<br>`0x2d1c7b2eb59f1c93983631be4f05b08b51040dd3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | ProxyAdmin<br>`0x36f7b8af4faff3eac7190e1842b8d1002f51cfc2` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | ProxyAdmin<br>`0x8e9988cd53af893ccd76efc6a68cf052de4048d3` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | ProxyAdmin<br>`0xcfba93b4d9aef59fb9702ce8fcb44b15584f5446` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | TestToken<br>`0x8125713bd45f8b5e807d9899afaa214d5e96453c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | TestToken<br>`0xb6b0caa35ef715d3929fb9e1cf7508bc5c40a19f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0x0363a3debe776de575c36f524b7877db7dd461db` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0x19e6a4e40974cd1f021a2571829d50c11a056e46` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0x35315ccbbfcc000c58267d73beb86eaf846562bd` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0x5559d43feadbf731622630f2103bd4f93a50ee2a` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0x872e0255775774b568070fe431f407bdebbdadc8` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0x9b7c444e7b522b0da9d5d38c4e39bbfa547dde97` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0xa0d0c6e0f336dd028193d610362d4eed1e2cc8da` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0xa97d5080e85c481a8658780c96d87762750da841` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0xabe7a9dfda35230ff60d1590a929ae0644c47dc1` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0xb05b3dec11a357db44d9422aecf32db6b5948dbe` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0xdc325ad34c762c19faab37d439fbf219715f9d58` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0xea6e19bf4ebdea8e6bf304bd5e60e947e12e61ed` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0xf8ae892b41ac5e307289a8cedae5a9a287fd6b0d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | exact address book overlap | UnnamedContract<br>`0x383627530d4b9435355c9c394c70a66aea00243a` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | exact address book overlap | UnnamedContract<br>`0x683d224d2d7ccbb217c9932e5f70e55ed0462f59` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | exact address book overlap | UnnamedContract<br>`0x86bac61fe280d38123d16634f9c429e5f945aadb` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | exact address book overlap | UnnamedContract<br>`0xab2bd1e640b7d069cfd7a4eb250977f979837451` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | exact address book overlap | UnnamedContract<br>`0xadb77d4892c859473ccacb1c63c1f5e36fb41314` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | exact address book overlap | UnnamedContract<br>`0xaec185ded406856ac66127d3622ebf79ba66f131` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | exact address book overlap | UnnamedContract<br>`0xcf26a55e9ce220a5d04cd386f6f996162030c100` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x00367859aef0ee1c0dbfbffe9c14dd6fa483c3ba` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x00b66073e5036a55b26c1e21c07a72b0f044b4a8` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x00d011779a0e776a9b1afd8f346b0fbd4745f0e8` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x022138b75fb95c7ec6ab922906d8f4ed37d00c31` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x028f76d8cff8500091e1aef47a848c4c0c8354e9` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x04a46224704c1bae446554ca5f133acc3e794ead` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x064b25670845a96c22d9247652758723aff1283e` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x07bc07264e2476771cdd1bd86a7900d920d60d49` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x08641837e5284ce533e9ec68fc9c3d13d8741e33` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x08a3127bb622b4eb277a0aabe42882cc713422d2` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0954de4e8dc87515e2fc55af6fdee9605f7e418b` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0b6d8e92e9cf7a5b43faf3f2e9755dbf90318606` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0c505142ee30f6665aad375ec06aa6bedfb6d26b` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0dcaa13de6d372fe645ced4c34591443ef6b530d` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0f51e954e6c1e61c48483f6cbb1e5540be7ce2cf` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x104a42220919701a369335c3ee42719cae54c6ed` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1177f69798f8e4ac19bbd66f1f7add9323d10b3a` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x11fe6fbd2e09601c30d48871fc0626b15a65d8fa` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x125eb4bb4c6e02b064e4a76cbc24d26e6ce99c45` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x126f0d6ba8d51237c31a2ffaa836fc1fa36bdea7` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1346ed698653904efab456ef6f34925e551ae246` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1742cce335512dc0c899117d4b12c42aaca2d914` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1776e8bd709b8758e1fa4a35397ba0bf11301b49` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x177a8759128548f9527dd9395eb4223cad886bad` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x193a3d6a3898634d86caaab7e8d7d871dfa94e20` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1cfd346135a7547bc74522709401c144525ae4be` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1e40c7ade253e1f0705d01cd8bd65fd232bcb417` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x210754afdcde92bccb749fdcd86ef22ec96418db` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x21412c2216b6c46a83733d590c6fc1f918e7449c` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x21c5b820c31f1322d8bc9ab5da54cacd59880ccc` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x226a0cfa529e7b1301903e1674cd64a98906a298` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x229c4efafe16511b5a1f64c9250411ebb7721d1b` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x24517abf087430a044adefc97b722da58ec2b6c3` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x25917787c2ac64270ab951a3aed2cbd7a6c3c3c5` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x26585e0cdca9cc8ca1176971b1555e155387bd7c` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2a0dcdb724e38cb6c26937ac5e9fb017d2a793fa` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2d3152454124cc80c649566036aeee0c0bd25d31` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2d49a61c237d84730b5ca1dad23ee66b967ad886` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2f9d5cdc910bd87d43b377efa3e0e3c3117f5a3f` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2fbfe685fe5f302eb1485ad75fdf6905dbcff4b9` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x30015eb657737e6b0e4f6df4e4ced662a1e8ab1e` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x33fe6a6e050548f5b718a267c9daadbc81265c2d` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x34a55a6999bd3c5b070bfa22ad7985d87d30ac1c` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x350a85f002bc53034f44c39994ba9f71b9c0a0ed` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x364ff8a6e218df3f3bad918bccf285215da9eec6` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x37023a8f95800d2878b24dda2a9ced4fb4501c9f` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3a6a12e3841f9067d540fbdbf5737efbd993ee4d` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3c58089ae81b97d94d2da306e2710b2bd3444048` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3d8f8d690fb81c53d2e3c6fad9f8dc149931a908` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3f451c4cc75f43ebb7eff659f113b21e045a3162` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4061a9d005c13e1bd8a6a7e775c74695f3abe959` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x41c43d654e3a2cca92384f2d6e6ba0054fa1e51c` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x41fe11c7ca312c583d2083226d876a59b5f16929` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x425692b680d2a9d1fc35cfc61c6224398e9ccf9f` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x42b8ece6db4d21de8cbc6122e00d34b67371d1b7` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x45084fedb5a2d304495607655208289fe445c389` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4707faa9ac91d0244dc5d40a1eca71bf9c03b135` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x481c49c58ba37f40505cfae159e83ba07af9453d` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4b1df663ce06a5695f7244fded3825843a78f377` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4b8aa5b77b10825ac4fa599c9ea1ae9935af6cf5` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4d07ef482ad58f612f531bdb677d73970e6759c5` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4f238e72b061b80ccb6d1fdc906f04ed5f8f3a3d` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x532c8e7ed57abd1474dcbaa320b38e7fe84084fc` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x534d3f3cb3b9bb5e4cb9d761f8ac73488dbf639b` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5481fa09ba6f72f7839efabded71f1ec9f3d1094` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x56c76f221f10acecc5cde772a40a2c703fcc43bb` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x56e32e9af2a29ba5c618fb6efb9a69e7fca52618` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x589429def6feb14b21d825e48e8bb037ac17f813` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x593d893e2614d53d13aa17ff8fdf296ac5e0e01a` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5c013300cf9f1a3d88da37cfca53cb2efedb54d7` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5e09beea662d8cec868f794649001e29c18a1635` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x600466c3c707a75129c7b7bc280e5a00c219fef0` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x60b86f37f0b068c4e0e50b8dd1d522fc47ba920f` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x61e3d964978968e6b0a8b5af59d7e4f05ce815c3` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x63e1e39b06059b2ac91fbc956d8123c75de6b913` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x64469225b61f541eedc6ccd9975e5a38ac121b7d` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x646cc73b6cbc9459210d15b2230d74a090df06ae` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x65c11d13ce855216cf55b02f1b73b38d2fd11783` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x65c325b4a50cd68497dc36f96cf95e4dfd2a2e71` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x66204a1f92d3148e14bd5e13e5eb9ca8d921c9c3` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x664bc5b26455d4e8b2ef2fa2266dc145672ecdbf` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x66a12c0dbacc84f596e3ac0c93915a096c1415f6` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6752bd2afb637060ea2b7b05b524362debf0a896` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x675bf4a303e61cc1722ffb36e5026dde70c2d1c2` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x68503d5ade6745d8df3d811ec8712ebcaf00fc1e` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6b76a18b1bc73a3986028a9ca875f856d1608c58` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6bb76b36e0be1c82ead0ae1bff10af110ad94370` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6c1076590752113514c0e984115aa2e8a916dc52` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6c2a028c82f26cebe31d784d276136fffe1d1512` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x708b06dc261debc8763305cfb0912a163f496da0` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7132c0654b4c0c7aedfa071aad848fa8130dc8be` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7278288d5269c6b5536d18ec33311a18e2b15934` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x74c5bcc10df69aeda0fe22ca182355c4dab7c97b` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x75824026a12a4bf1bf996528b10d2add384c56a2` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x75df775cfd65d30f70c2c5165508abfda4dc033d` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x79a17b7f6fcedb87bf1bd0b3f8ea393365481505` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7bccff6e42cf1f6e39ecf6ea33f4e73f3a665957` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7c24ead3d79863599f246d2c2ce791ac871f0d92` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7cdfc659eb2acdae76fb1e4420f52cb99860c8f9` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7d13893da4011a5fa583bdc3dea2df27b85b6d22` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7e9c092854282f5f011ccd48a6364cef26ca451c` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7f49be054487b20826b7275a103981f196baaf45` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x80960f3269b4a5ff587d77de9de9134ca1674333` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x812c220a7bdf1fdf3d853d79686452aceda1c1bb` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x83a75358f06253ec9d4dfcb834467e6b131fdcf3` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8478b8a7a0b86ee837d3b5f202daa0db8d99e815` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x85f50b0e3034c4e4799ee2c937a52cf89420522e` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8c1af71d9a878a924eaede61d7710610ea44a980` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8da9c1ae5af6737c0f5e604541ac235762334ec4` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8df5abd282a8a6c514aa0811092717aa51afc6b3` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x919e4dea8cb21c08d9f89d16d094add55080b8b2` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x92796a33451ccfd6d3383508aca4aaf9381ec2af` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x933b32e7957895ae26be53980b8f3a94e8ee3038` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x940d9a2ced894fb417a5a6a179873481f51d8731` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x95e62abe36411f6abf1e8a634e985e96aecb21fe` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x968806e9393ae7d8201a9f286bb5c6df7468e9d8` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x98b49d5289d148c1fd93fa234e348ab60ba70b0a` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x99bc5c7acf9305cd660452b0016f446f361d897c` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9ab1c7726a7a33887f31f29539893541e545ac6a` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9b0f961948502c57a4a1ad6c6b1212c2c1b588a7` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9d005903c92c50fe58421f42008cacc1399e500f` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9e961488da21260ca157c91e40f2a499d863b232` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9f829cb15a4f148eb0fccbeb8f6b6c909c4a2530` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa3fe8589b3ceb8baad7aa0e606035510a7f73600` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa4dc75471bda70583e465b94c1e605d90adf7ef7` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa65ac528e740c1319f43ebff5e3f41d4ce072573` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa861b5fd2df0252b381330a0855103a41853c06a` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xabc5cc25b94f2055055b0e6ba0cf736465981941` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xabc8d789601403175239a1ebf7b474287dbe8ca9` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xac67bf8b36705b07a9083761a65c60f53f4f00c1` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xac7a41c5df3e0a253b70cebbbd1c2dc4ba7e1e05` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xaee9ceb2420a29e12b4223d519d1bedb56198267` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xaef48806fb7e2d2f26ed20b0304d140f6f1835ec` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xaf3ba828b528e6cb5b920c01c9312bdee4e41c5d` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb073f673f222c674c5529594367daa31b5fddb74` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb294a915f986c847a5563d2d27a6b7d4cad2b8bf` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb3af67dee4379f65e268660ddf9fc93112f178d1` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb3e8f0a31c968e91b9c5cea6277ffe666c6bebbd` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb41c8f0abbad40af42add9ca7edd42e48aab7960` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb424b4312ba3d84a7f465d8380c52d4b23ac25bd` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb616dd968aab0fd4e9d2007ded383a479cc2abd0` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb67aec8a86ba98ea6eeeb31d9c71cfe78fb1540f` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb727f20fb81452afefcee4d7ab1dfd489ac60432` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb77fb6ae964b024c6b4118b5f643914ab26d50b7` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb8389386f859e53aa23b2c7ec1a62072e99e0d2b` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb8c6c897a741fc8c4029cefd1238973caded1b41` | non_address_book | unknown | unknown | unverified | n/a | `0xa8abbbf6217fb5b96c5649b7f3b2edcc4211bcaf` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [aUSD_SC_Final_Audit_Report.pdf](https://github.com/Credshields/audit-reports/blob/master/aUSD_SC_Final_Audit_Report.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2961] aUSD_SC_Final_Audit_Report.pdf — no match: Extracted contract names from scope table and findings. Audit date is the end of the testing window (May 15, 2024).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| aUSD_SC_Final_Audit_Report.pdf | sAVAXGateway | unmatched — not counted | — | Listed in scope table and referenced in findings | no |
| aUSD_SC_Final_Audit_Report.pdf | sAVAXTreasury | unmatched — not counted | — | Referenced in findings (BugID#2) | no |
| aUSD_SC_Final_Audit_Report.pdf | Market | unmatched — not counted | — | Listed in scope table and referenced in findings | no |
| aUSD_SC_Final_Audit_Report.pdf | Treasury | unmatched — not counted | — | Listed in scope table and referenced in findings | no |
| aUSD_SC_Final_Audit_Report.pdf | ChainlinkPriceOracle | unmatched — not counted | — | Referenced in findings (BugID#9, #10) | no |
| aUSD_SC_Final_Audit_Report.pdf | ChainlinkTwapOracleV3 | unmatched — not counted | — | Referenced in findings (BugID#9, #10) | no |
| aUSD_SC_Final_Audit_Report.pdf | JacksAVAXTwapOracle | unmatched — not counted | — | Referenced in findings (BugID#14) | no |
| aUSD_SC_Final_Audit_Report.pdf | RebalancePool | unmatched — not counted | — | Referenced in findings (BugID#12, #13, #17, #22) | no |
| aUSD_SC_Final_Audit_Report.pdf | RebalancePoolSplitter | unmatched — not counted | — | Referenced in findings (BugID#17, #22) | no |
| aUSD_SC_Final_Audit_Report.pdf | RebalancePoolRegistry | unmatched — not counted | — | Referenced in findings (BugID#18, #30) | no |
| aUSD_SC_Final_Audit_Report.pdf | Rebalancer | unmatched — not counted | — | Referenced in findings (BugID#17) | no |
| aUSD_SC_Final_Audit_Report.pdf | PlatformFeeDistributor | unmatched — not counted | — | Referenced in findings (BugID#21) | no |
| aUSD_SC_Final_Audit_Report.pdf | PlatformFeeSpliter | unmatched — not counted | — | Referenced in findings (BugID#17, #22) | no |
| aUSD_SC_Final_Audit_Report.pdf | JackGateway | unmatched — not counted | — | Referenced in findings (BugID#20, #22) | no |
| aUSD_SC_Final_Audit_Report.pdf | ReservePool | unmatched — not counted | — | Referenced in findings (BugID#22) | no |
| aUSD_SC_Final_Audit_Report.pdf | LogExpMath | unmatched — not counted | — | Referenced in findings (BugID#25, #28, #29) | no |
| aUSD_SC_Final_Audit_Report.pdf | StableCoinMath | unmatched — not counted | — | Mentioned in BugID#4 and client comment in BugID#19 | no |
| aUSD_SC_Final_Audit_Report.pdf | LeveragedToken | unmatched — not counted | — | Mentioned in client comment in BugID#19 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 612 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 18 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2961] aUSD_SC_Final_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
