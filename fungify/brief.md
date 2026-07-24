# Agentic Audit Brief: Fungify

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Fungify (`fungify`)
- Website: [https://fungify.it/](https://fungify.it/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 119 unique implementations (127 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $736,486.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Fungify. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across ethereum. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (2), abstract (1)
- Detected standards: erc20 (3)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 30 contracts are derived from known codebases. 30 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0aeb0fbb880e0ab702dd981ae091d272a966b54b`, chain 1)
- UnnamedContract (`0x1c6ecffad93117fdf0b11faf0733a796185673f3`, chain 1)
- UnnamedContract (`0x2b142208e665525952786c6e77cba0cb2e694b41`, chain 1)
- UnnamedContract (`0x3b37c50b237d12aefdc48d14f63dc3009ba35155`, chain 1)
- UnnamedContract (`0x5778dce055cf595185264c03497a1fff07d9dae0`, chain 1)
- UnnamedContract (`0x68adbe25c979fa47efbd390dccdc165b966ae293`, chain 1)
- UnnamedContract (`0x6d6368bf559052cf4660ac5eb934874d80c18ebf`, chain 1)
- UnnamedContract (`0x70c4f75ebaf99e24d775c91867b1a844da6ef6fd`, chain 1)
- UnnamedContract (`0x72e96354af32cae18e5b43f16f229bb713b96277`, chain 1)
- UnnamedContract (`0x842fdff053e916782b39bffb58de94f4b47d5df4`, chain 1)
- UnnamedContract (`0x8a81bed57dd024aa097266b19bdecd098c20375b`, chain 1)
- UnnamedContract (`0x8c03492922f4aea5dde51b0b8ecac2d941bd9851`, chain 1)
- UnnamedContract (`0x9b960808875000ac17dfae13b72bbdf69df6e7a7`, chain 1)
- UnnamedContract (`0xa4b52e1347b852331c12a8dad69eec56a40aff7f`, chain 1)
- UnnamedContract (`0xa603cee4fd20c589b5aecbf07356b239cb11ee5a`, chain 1)
- UnnamedContract (`0xbe7fa0ea83b412509fc0ddf195559c12c59208db`, chain 1)
- UnnamedContract (`0xbf1c1370cc5a96af40499502f8d5ec9403e0a18a`, chain 1)
- UnnamedContract (`0xcf4825fc274fef983a2d8744751fb41d9125e31b`, chain 1)
- UnnamedContract (`0xdf2585d99d6eff84ee3a0c56140196b70406fe56`, chain 1)
- UnnamedContract (`0xe07dcb815c0b7a948e41a7d8a104191de314dcaf`, chain 1)
- UnnamedContract (`0xe0b0a19f749c6054d6412591b799b04107fe69f3`, chain 1)
- UnnamedContract (`0xeb058a3dc3c969359a3fa72ac3b9c181cfcf468c`, chain 1)
- UnnamedContract (`0xf038cc2ea343997ec976b5ed640b58feb027e388`, chain 1)
- UnnamedContract (`0xf0bb06816f081829726bd6d3d04c823ce3e96b69`, chain 1)
- UnnamedContract (`0xf60a1c0a25f51b060522806e64364bd021755297`, chain 1)
- UnnamedContract (`0xf9c70750bf615de83fe7ff62d30c7faacd8f8ba0`, chain 1)
- UnnamedContract (`0xfb973b5cd8d18eb514aa19a35afde689f5ba04e3`, chain 1)
- CErc20Delegate (`0x08a02ce47e3809b8a571f9695224b243f4e1a256`, chain 1)
- CErc20InterestMarketDelegate (`0x5f86f598e4fa983097fe6693a1b51f047d87b9cf`, chain 1)
- CErc721NoBorrowDelegator (`0xe2b76da8899f861d10103eadbea95685e2450697`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 30/30 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 30 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 89 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 30 of 119 unique; 89 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 94
- Unique implementations: 119
- Raw deployments: 127
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BatchUpdateRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67283c357053185f0ef0df2f2a37f8191114dfb7` | ⚠️ Unaudited |
| CErc20_PandoraDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa2ae3d05b1448bea9199afeb733de92b32c5d207`; ethereum `0xe3c735199a8333e987f4e32db1ed6167b1dc9f7c` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386677 | `0x08a02ce47e3809b8a571f9695224b243f4e1a256` | ⚠️ Unaudited |
| CErc20InterestMarketDelegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386678 | `0x5f86f598e4fa983097fe6693a1b51f047d87b9cf` | ⚠️ Unaudited |
| CErc721Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x086d4cf57f2ed2b84f55ed2c0a83efeb682dc5f6`; ethereum `0xf45f06bd08c930c21faf4896a7ef2d510b383a46` | ⚠️ Unaudited |
| CErc721Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5931c64fe4472d7b7133117d123168d1ddd12d57` | ⚠️ Unaudited |
| CErc721NoBorrowDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2053e6b81e1d6b537d38d28402122665486ec5c1`; ethereum `0xf97309070d159e9f94b0b04da0097a77c4b91855` | ⚠️ Unaudited |
| CErc721NoBorrowDelegator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386670 | `0xe2b76da8899f861d10103eadbea95685e2450697` | ⚠️ Unaudited |
| CEtherDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x202bbcdce24e827c592d45cfde7626e5f5c9000e` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b6d3a6b3311e3c5ed3b18f98e9b0eebe2865adc` | ⚠️ Unaudited |
| ComptrollerPT1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x468e47bd7d164a80ecee41fecc2c70f693deb735` | ⚠️ Unaudited |
| DisperseOwned | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9d97f7db73f68778367ed90a91527d868e8baf3` | ⚠️ Unaudited |
| FloorPriceFeedAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04f45bea5fc40415449e3a72596e5488bace792b` | ⚠️ Unaudited |
| FungifyNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x487695c35cc9022c67e74257c24ad99286425de3`; ethereum `0x97f6e513f2399bbe18870aebdf1d2041fd165795` | ⚠️ Unaudited |
| FungifyPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0006939363616e78fee3618f3a2dfe3b46ab0c44`; ethereum `0x75cd6c908be1f111f91536976165907499098872` | ⚠️ Unaudited |
| FungLock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x507e037d5c6979d32f992a95fcdd789182993d21`; ethereum `0x5c9bcec0a785ce5787e823de8384c2dd31cec066` | ⚠️ Unaudited |
| FungToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0e4e7f2aecf408aff4f82f067677050239bdc58a`; ethereum `0x39022b55287c5eb9f87cdf119bb43423faa41b83` | ⚠️ Unaudited |
| FungTokenVest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ea865684f3aaf931ffca26d7f962916a4e15b5c` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cd2001327a919653b9e0e1adb9298772ed8d25c` | ⚠️ Unaudited |
| NFTMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fb85432fe1fb9ad3f1a26460552a83736852e6b` | ⚠️ Unaudited |
| NFTMinterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x893905096e97e5e2c514d11528732b26168a768e` | ⚠️ Unaudited |
| StraightSale | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x09f5eaaecb286271610e1336bf4a4afcb59964a6`; ethereum `0xd9aef256592e8ae665ff94d993ec501a50f33107` | ⚠️ Unaudited |
| SUSDeUSDePriceFeedAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c7ba4e9f29f8a385fd442f1ecc7930f83d81f4` | ⚠️ Unaudited |
| WBTCPriceFeedAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4ee8e5c5e020d8bc9b40a5d67fab4fc49b3abd5` | ⚠️ Unaudited |
| WstETHPriceFeedAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe97b2ff1d3a7fa699681a9500c3cad350069675e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (94)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0500d813ae0e5678432363d22cd2bc52d63fb045` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386649 | `0x0aeb0fbb880e0ab702dd981ae091d272a966b54b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12f519fa2efd199ba42c810e2402a8009b4ab75e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x152aa5890f4858a1758de1e45422712bbeae31ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x168beace5508586f42f45b4951acc7d741c9a00d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386650 | `0x1c6ecffad93117fdf0b11faf0733a796185673f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25bdb3ac02a34bf1a987862a16eb0e4b543e429c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386651 | `0x2b142208e665525952786c6e77cba0cb2e694b41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b88790fdf6037e39e2a18f5c6991b79b341f78c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3027f3ca6282a616a410c9585a882668ab80e182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307db674cf3485c8a2c739fdfdfc8848c9241ea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30b9ed5e324aaf1cc363e9b6f3175b9484a3b43a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x335f0c780ad2b0b95e8c3d19d5834b0711896080` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386652 | `0x3b37c50b237d12aefdc48d14f63dc3009ba35155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da4dbbe1914461825e1c85e5122dc8cba48b174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4170e58ced11c75e9e3ccb329c0f75f04783859f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43c412c3ea14e038430ee451047a47265d8dadcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4541c7faddd0f2c824f8d7952f676e89f796df4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4588c23628719c6b67f8d1c279f7ed2d4576856b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4694866d1cdc1363e0de166383beb2674d5142ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cf36646e2887e9903933ac567c05790f2801b4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x533104c6be7db9e1e433b4ed2d0aee316e677f93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386653 | `0x5778dce055cf595185264c03497a1fff07d9dae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d3bdde0a5290249a5afc82096d35192f5ed23d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ebfee29b5c92e4796e7433a95ee2b9892145639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b0a9fa7d6eb0f795292adcb7ef170bc4819293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6240e43a5464966590cabc59f03d2bf4581ae5af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64bcac831f50c7e621702b9df13398de4ecb62d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386654 | `0x68adbe25c979fa47efbd390dccdc165b966ae293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bc53a15e3fd5d9ad7d3250239a10b26b1a52eb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d363f8bf178b5cd6365b257c70c43deb8920736` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386655 | `0x6d6368bf559052cf4660ac5eb934874d80c18ebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6eff15463ffde166ad9af2194b0c15086388f000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f145b260c759df61927387f2852ee9d14154e70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386656 | `0x70c4f75ebaf99e24d775c91867b1a844da6ef6fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386657 | `0x72e96354af32cae18e5b43f16f229bb713b96277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75f8912ba5f2326df53b9f3377bf9a691fcae6f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x783c00e0147a7df7644a30437d45b67955026d98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8162041924f507662eaf3b0f723488f9770a2a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8300976d173b6874f2f95b2dd6cd893fca0466d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83425e3752205bfccd62a72addeb9b4bef3626f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386658 | `0x842fdff053e916782b39bffb58de94f4b47d5df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84f5c4756564f2def3dd7df7731aec556fe8bb7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85ef93c37cf2b4937933d10199610b902d430ab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x867ce56be85ce176844cf443697ca5e99674ced9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x899753aeadf739004a2beca7fb73d1414040f0cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386659 | `0x8a81bed57dd024aa097266b19bdecd098c20375b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a90659307f6f7db15f91d0a8e1a4ca9f24dfa8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b1fba08f5951683dbd1470d07dffa1b01b5886c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386660 | `0x8c03492922f4aea5dde51b0b8ecac2d941bd9851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f005bf2cc2337aa50c5cac0b471e4e6a7066718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91a5630da2d739002a71395357662f8aa8c09bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93dad685c1cb64b3e9c041176147cc9b2dd3d8c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96887f9d7f6d75f07553286a1b2e96d6cee1c43f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x972aa68a4c4574fcdea03542ffbbc9a3810d489e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x986ef978a1f91c4c2241f8312280c89de5227936` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386661 | `0x9b960808875000ac17dfae13b72bbdf69df6e7a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a09ce97d0d74122697aee5913814dffb6caa0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386662 | `0xa4b52e1347b852331c12a8dad69eec56a40aff7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386663 | `0xa603cee4fd20c589b5aecbf07356b239cb11ee5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8c750e99dcea006ef640447472ea576e6454f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadf8b760b4646aa33a920babb9a35f621782dd5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb05b3d1e2b93de4d2f7be788e449cedfd4ef6edb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4ea3308acc85bef5924645ec2e1d632d4c46fc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb6a3f2e344e6b53870063e80a7feda5caf0143d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386664 | `0xbe7fa0ea83b412509fc0ddf195559c12c59208db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386665 | `0xbf1c1370cc5a96af40499502f8d5ec9403e0a18a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0cd6a5cd23c4b7731c3c97225244db1b837b797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc34e412fce23c683bde854fc525228d4d26446c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3a2c28c8f43290594acef94d73824e4920afc43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5f00a254d20357d42a4ba29e21b34a20e34c908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6e0dd41d84c62961a8ae7078ed339972749bca3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc74f1485daa11144babf21bf2e39652204e84490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc98309df91df32867e83fbe472cedf54bc80c8ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386666 | `0xcf4825fc274fef983a2d8744751fb41d9125e31b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1502fb1d61efc8cd06a92b7c80ce58cf8dc799d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386667 | `0xdf2585d99d6eff84ee3a0c56140196b70406fe56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386668 | `0xe07dcb815c0b7a948e41a7d8a104191de314dcaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386669 | `0xe0b0a19f749c6054d6412591b799b04107fe69f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4608402b08557b40caaf350f2979ba7b6f08689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5d0d58c7648dd26aa6cd1ef02575aaeace55088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6b04b0d8415266e00eab0fb89a83794f6f58b35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8c5c84ed89bca890edfff7a152fa6bf083f2b61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386671 | `0xeb058a3dc3c969359a3fa72ac3b9c181cfcf468c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2f65cc130cfe6cf17ebf1042259cb65ee040a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefe86f26bac5472096e18e5ff30496e7ced0bb72` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386672 | `0xf038cc2ea343997ec976b5ed640b58feb027e388` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386673 | `0xf0bb06816f081829726bd6d3d04c823ce3e96b69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3165744711ead14c7370b378e8db098b3cab446` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386674 | `0xf60a1c0a25f51b060522806e64364bd021755297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf99266e3c84c489bf8c6bc4b00707b6da4ab630a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386675 | `0xf9c70750bf615de83fe7ff62d30c7faacd8f8ba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb0a963411b447b39e0b417a0c5d4cd181f9f721` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386676 | `0xfb973b5cd8d18eb514aa19a35afde689f5ba04e3` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 75
- Live contracts: 0
- Unknown liveness contracts: 75
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=75

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x0500d813ae0e5678432363d22cd2bc52d63fb045` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x12f519fa2efd199ba42c810e2402a8009b4ab75e` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x152aa5890f4858a1758de1e45422712bbeae31ec` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x168beace5508586f42f45b4951acc7d741c9a00d` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25bdb3ac02a34bf1a987862a16eb0e4b543e429c` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b88790fdf6037e39e2a18f5c6991b79b341f78c` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3027f3ca6282a616a410c9585a882668ab80e182` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x307db674cf3485c8a2c739fdfdfc8848c9241ea5` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x30b9ed5e324aaf1cc363e9b6f3175b9484a3b43a` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x335f0c780ad2b0b95e8c3d19d5834b0711896080` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x39022b55287c5eb9f87cdf119bb43423faa41b83` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3da4dbbe1914461825e1c85e5122dc8cba48b174` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4170e58ced11c75e9e3ccb329c0f75f04783859f` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43c412c3ea14e038430ee451047a47265d8dadcb` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4541c7faddd0f2c824f8d7952f676e89f796df4e` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4588c23628719c6b67f8d1c279f7ed2d4576856b` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4694866d1cdc1363e0de166383beb2674d5142ea` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4cf36646e2887e9903933ac567c05790f2801b4b` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x533104c6be7db9e1e433b4ed2d0aee316e677f93` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5c9bcec0a785ce5787e823de8384c2dd31cec066` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d3bdde0a5290249a5afc82096d35192f5ed23d8` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ebfee29b5c92e4796e7433a95ee2b9892145639` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x60b0a9fa7d6eb0f795292adcb7ef170bc4819293` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6240e43a5464966590cabc59f03d2bf4581ae5af` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64bcac831f50c7e621702b9df13398de4ecb62d9` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6bc53a15e3fd5d9ad7d3250239a10b26b1a52eb4` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d363f8bf178b5cd6365b257c70c43deb8920736` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6eff15463ffde166ad9af2194b0c15086388f000` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f145b260c759df61927387f2852ee9d14154e70` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x75cd6c908be1f111f91536976165907499098872` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x75f8912ba5f2326df53b9f3377bf9a691fcae6f2` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x783c00e0147a7df7644a30437d45b67955026d98` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8162041924f507662eaf3b0f723488f9770a2a52` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8300976d173b6874f2f95b2dd6cd893fca0466d9` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83425e3752205bfccd62a72addeb9b4bef3626f6` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84f5c4756564f2def3dd7df7731aec556fe8bb7f` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85ef93c37cf2b4937933d10199610b902d430ab2` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x867ce56be85ce176844cf443697ca5e99674ced9` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x899753aeadf739004a2beca7fb73d1414040f0cd` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a90659307f6f7db15f91d0a8e1a4ca9f24dfa8d` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b1fba08f5951683dbd1470d07dffa1b01b5886c` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f005bf2cc2337aa50c5cac0b471e4e6a7066718` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x91a5630da2d739002a71395357662f8aa8c09bb6` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x93dad685c1cb64b3e9c041176147cc9b2dd3d8c9` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x96887f9d7f6d75f07553286a1b2e96d6cee1c43f` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x972aa68a4c4574fcdea03542ffbbc9a3810d489e` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x97f6e513f2399bbe18870aebdf1d2041fd165795` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x986ef978a1f91c4c2241f8312280c89de5227936` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa3a09ce97d0d74122697aee5913814dffb6caa0e` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa8c750e99dcea006ef640447472ea576e6454f9f` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xadf8b760b4646aa33a920babb9a35f621782dd5b` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb05b3d1e2b93de4d2f7be788e449cedfd4ef6edb` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb4ea3308acc85bef5924645ec2e1d632d4c46fc6` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb6a3f2e344e6b53870063e80a7feda5caf0143d` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc0cd6a5cd23c4b7731c3c97225244db1b837b797` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc34e412fce23c683bde854fc525228d4d26446c4` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3a2c28c8f43290594acef94d73824e4920afc43` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc5f00a254d20357d42a4ba29e21b34a20e34c908` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6e0dd41d84c62961a8ae7078ed339972749bca3` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc74f1485daa11144babf21bf2e39652204e84490` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc98309df91df32867e83fbe472cedf54bc80c8ac` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd1502fb1d61efc8cd06a92b7c80ce58cf8dc799d` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd9aef256592e8ae665ff94d993ec501a50f33107` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe3c735199a8333e987f4e32db1ed6167b1dc9f7c` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe4608402b08557b40caaf350f2979ba7b6f08689` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5d0d58c7648dd26aa6cd1ef02575aaeace55088` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe6b04b0d8415266e00eab0fb89a83794f6f58b35` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe8c5c84ed89bca890edfff7a152fa6bf083f2b61` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xed2f65cc130cfe6cf17ebf1042259cb65ee040a3` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xefe86f26bac5472096e18e5ff30496e7ced0bb72` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf3165744711ead14c7370b378e8db098b3cab446` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf45f06bd08c930c21faf4896a7ef2d510b383a46` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf97309070d159e9f94b0b04da0097a77c4b91855` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf99266e3c84c489bf8c6bc4b00707b6da4ab630a` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb0a963411b447b39e0b417a0c5d4cd181f9f721` | non_address_book | unknown | unknown | unverified | n/a | `0x43a314183c0033528827be7cf426523bac412780` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Fungify_Oct23_(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Fungify_Oct23_(Public).pdf) | Hexens | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Fungify_Nov23_(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Fungify_Nov23_(Public).pdf) | Hexens | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Github Link](https://gist.github.com/zobront/2bad23f555cb9e4f85638ad7fc3d397b) | Zach Obront | Audit | 2023-12 | stale | Direct | contract_name | no match | 2 | 2 | 0 | 45 | high |
| [Github Link](https://leastauthority.com/wp-content/uploads/2024/01/Fungify_Smart_Contracts_Updated_Final-Audit_Report_Least_Authority.pdf) | Least Authority | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Fungify_Audit_Hexens_Jun24(Public).pdf](https://s3.eu-central-1.amazonaws.com/assets.fungify.it/audits/Fungify_Audit_Hexens_Jun24(Public).pdf) | Hexens | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Fungify-audit-feb24(Public) 13.07.45.pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Fungify-audit-feb24(Public)%2013.07.45.pdf) | Hexens | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [fungify-audit-june-2024(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/fungify-audit-june-2024(Public).pdf) | Hexens | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [fungify-nft-audit-feb24(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/fungify-nft-audit-feb24(Public).pdf) | Hexens | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20334] Fungify_Oct23_(Public).pdf — no match: Scope section lists 'Pools' contracts of Fungify. Contracts identified from file paths in findings and scope description.
- [20335] Fungify_Nov23_(Public).pdf — no match: Scope section lists repository URL but no explicit contract names; contracts inferred from findings paths.
- [20336] Github Link — no match: Extracted all contracts from the 'Summary & Scope' section, including new contracts and those considered as a diff from Compound. Audit date derived from 'Date: Nov 29 to Dec 15, 2023'.
- [20337] Github Link — no match: Extracted contract names from file paths in findings and scope section. Audit date from cover page and header.
- [20339] Fungify_Audit_Hexens_Jun24(Public).pdf — no match: Extracted from scope section and findings. Audit delivered date is 25.06.2024.
- [20340] Fungify-audit-feb24(Public) 13.07.45.pdf — no match: Scope section not explicitly listed; contracts inferred from findings and executive summary.
- [20341] fungify-audit-june-2024(Public).pdf — no match: Extracted contract names from scope section and findings. Audit date from 'delivered 25.06.2024'.
- [20342] fungify-nft-audit-feb24(Public).pdf — no match: Contracts explicitly mentioned in scope: FungifyNFT, NFTMinter, Proxy2Step. Audit delivered date 28.02.2024.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Fungify_Oct23_(Public).pdf | CErc721 | unmatched — not counted | — | Listed in scope and findings reference CErc721.sol | no |
| Fungify_Oct23_(Public).pdf | CErc20InterestMarket | unmatched — not counted | — | Listed in scope and findings reference CErc20InterestMarket.sol | no |
| Fungify_Oct23_(Public).pdf | CToken | unmatched — not counted | — | Listed in scope and findings reference CToken.sol | no |
| Fungify_Oct23_(Public).pdf | CErc20 | unmatched — not counted | — | Listed in scope and findings reference CErc20.sol | no |
| Fungify_Oct23_(Public).pdf | CEther | unmatched — not counted | — | Listed in scope and findings reference CEther.sol | no |
| Fungify_Oct23_(Public).pdf | ChainlinkPriceOracle | unmatched — not counted | — | Listed in scope and findings reference ChainlinkPriceOracle.sol | no |
| Fungify_Oct23_(Public).pdf | Comptroller | unmatched — not counted | — | Mentioned in findings as part of the protocol | no |
| Fungify_Nov23_(Public).pdf | CErc721 | unmatched — not counted | — | mentioned in finding FNG-20 path: CErc721.sol:_seize | no |
| Fungify_Nov23_(Public).pdf | Comptroller | unmatched — not counted | — | mentioned in finding FNG-9 path: Comptroller.sol:L294-379 | no |
| Github Link | CErc20InterestMarket | unmatched — not counted | — | listed in scope | no |
| Github Link | CErc20InterestMarketDelegate | own proxy deployment | CErc20InterestMarketDelegate (proxy) (selected) `0x5f86f598e4fa983097fe6693a1b51f047d87b9cf` — deployed 2024-01-23 01:25:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Github Link | CErc20InterestMarketDelegator | unmatched — not counted | — | listed in scope | no |
| Github Link | CErc20InterestMarketInterfaces | unmatched — not counted | — | listed in scope | no |
| Github Link | CErc20InterestMarketNoProxy | unmatched — not counted | — | listed in scope | no |
| Github Link | CErc721 | unmatched — not counted | — | listed in scope | no |
| Github Link | ERC721Interfaces | unmatched — not counted | — | listed in scope | no |
| Github Link | CErc721Delegate | unmatched — not counted | — | listed in scope | no |
| Github Link | CErc721Delegator | unmatched — not counted | — | listed in scope | no |
| Github Link | CErc721InterestRateModel | unmatched — not counted | — | listed in scope | no |
| Github Link | CErc721NoProxy | unmatched — not counted | — | listed in scope | no |
| Github Link | CErc721TokenInterfaces | unmatched — not counted | — | listed in scope | no |
| Github Link | CEtherDelegate | unmatched — not counted | — | listed in scope | no |
| Github Link | CEtherDelegator | unmatched — not counted | — | listed in scope | no |
| Github Link | ChainlinkPriceOracle | unmatched — not counted | — | listed in scope | no |
| Github Link | FloorPriceFeedAdapter | unmatched — not counted | — | listed in scope | no |
| Github Link | LiqPriceFeedAdapter | unmatched — not counted | — | listed in scope | no |
| Github Link | FungToken | unmatched — not counted | — | listed in scope | no |
| Github Link | StraightSale | unmatched — not counted | — | listed in scope | no |
| Github Link | FungTokenProxy | unmatched — not counted | — | listed in scope | no |
| Github Link | Proxy | unmatched — not counted | — | listed in scope | no |
| Github Link | StraightSaleProxy | unmatched — not counted | — | listed in scope | no |
| Github Link | Upgradeable | unmatched — not counted | — | listed in scope | no |
| Github Link | BaseJumpRateModelV2 | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | CErc20 | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | CErc20Delegate | own proxy deployment | CErc20Delegate (proxy) (selected) `0x08a02ce47e3809b8a571f9695224b243f4e1a256` — deployed 2024-01-23 01:33:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Github Link | CErc20Delegator | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | CErc20Immutable | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | CEther | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | CToken | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | CTokenInterfaces | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | Comptroller | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | ComptrollerInterface | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | ComptrollerStorage | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | EIP20Interface | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | EIP20NonStandardInterface | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | ErrorReporter | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | ExponentialNoError | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | InterestRateModel | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | JumpRateModel | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | JumpRateModelV2 | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | PriceOracle | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | SafeMath | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | SimplePriceOracle | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | Timelock | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | Unitroller | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | WhitePaperInterestRateModel | unmatched — not counted | — | listed as diff from Compound | no |
| Github Link | CErc20 | unmatched — not counted | — | listed in scope and findings | no |
| Github Link | CToken | unmatched — not counted | — | listed in scope and findings | no |
| Github Link | CErc20InterestMarket | unmatched — not counted | — | listed in findings | no |
| Github Link | CErc721 | unmatched — not counted | — | listed in scope and findings | no |
| Github Link | CEther | unmatched — not counted | — | listed in scope and findings | no |
| Github Link | Comptroller | unmatched — not counted | — | listed in scope and findings | no |
| Fungify_Audit_Hexens_Jun24(Public).pdf | NftIndex | unmatched — not counted | — | Listed in scope and findings | no |
| Fungify_Audit_Hexens_Jun24(Public).pdf | NftIndexProxy | unmatched — not counted | — | Listed in findings | no |
| Fungify_Audit_Hexens_Jun24(Public).pdf | Upgradeable | unmatched — not counted | — | Listed in findings | no |
| Fungify_Audit_Hexens_Jun24(Public).pdf | Upgradeable2Step | unmatched — not counted | — | Listed in findings | no |
| Fungify_Audit_Hexens_Jun24(Public).pdf | VrfV2PlusConsumer | unmatched — not counted | — | Listed in findings | no |
| Fungify_Audit_Hexens_Jun24(Public).pdf | FungifyPriceFeed | unmatched — not counted | — | Listed in findings | no |
| Fungify_Audit_Hexens_Jun24(Public).pdf | FungifyPriceFeedProxy | unmatched — not counted | — | Mentioned in findings | no |
| Fungify_Audit_Hexens_Jun24(Public).pdf | ChainlinkPriceOracle | unmatched — not counted | — | Listed in findings | no |
| Fungify-audit-feb24(Public) 13.07.45.pdf | CERC721NoBorrow | unmatched — not counted | — | mentioned in findings FNG-22 and FNG-21 | no |
| Fungify-audit-feb24(Public) 13.07.45.pdf | CErc721 | unmatched — not counted | — | mentioned in finding FNG-21 | no |
| fungify-audit-june-2024(Public).pdf | NftIndex | unmatched — not counted | — | listed in scope and findings | no |
| fungify-audit-june-2024(Public).pdf | NftIndexProxy | unmatched — not counted | — | mentioned in findings | no |
| fungify-audit-june-2024(Public).pdf | Upgradeable | unmatched — not counted | — | mentioned in findings | no |
| fungify-audit-june-2024(Public).pdf | Upgradeable2Step | unmatched — not counted | — | mentioned in findings | no |
| fungify-audit-june-2024(Public).pdf | VrfV2PlusConsumer | unmatched — not counted | — | mentioned in findings | no |
| fungify-audit-june-2024(Public).pdf | FungifyPriceFeed | unmatched — not counted | — | mentioned in findings | no |
| fungify-audit-june-2024(Public).pdf | FungifyPriceFeedProxy | unmatched — not counted | — | mentioned in findings | no |
| fungify-audit-june-2024(Public).pdf | ChainlinkPriceOracle | unmatched — not counted | — | mentioned in findings | no |
| fungify-nft-audit-feb24(Public).pdf | FungifyNFT | unmatched — not counted | — | listed in scope and findings | no |
| fungify-nft-audit-feb24(Public).pdf | NFTMinter | unmatched — not counted | — | listed in scope and findings | no |
| fungify-nft-audit-feb24(Public).pdf | Proxy2Step | unmatched — not counted | — | mentioned in executive summary as introduced contract | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x08a02ce47e3809b8a571f9695224b243f4e1a256` | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5f86f598e4fa983097fe6693a1b51f047d87b9cf` | CErc20InterestMarketDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe2b76da8899f861d10103eadbea95685e2450697` | CErc721NoBorrowDelegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 94 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 81 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, medium=1
- Match method counts: n/a

Zero-match audit list:

- [20334] Fungify_Oct23_(Public).pdf
- [20335] Fungify_Nov23_(Public).pdf
- [20336] Github Link
- [20337] Github Link
- [20339] Fungify_Audit_Hexens_Jun24(Public).pdf
- [20340] Fungify-audit-feb24(Public) 13.07.45.pdf
- [20341] fungify-audit-june-2024(Public).pdf
- [20342] fungify-nft-audit-feb24(Public).pdf

Fork inheritance lineage and inherited audits are included when available.
