# Agentic Audit Brief: Atlendis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 4.1% over 90 days

## Project Overview

- Project: Atlendis (`atlendis`)
- Website: [https://www.atlendis.io/](https://www.atlendis.io/)
- Lifecycle: declining (Tier 0, 99.1% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: mode, polygon
- Contract surface: 70 unique implementations (127 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $10,992,516.00
- On-chain TVL (included contracts): $4,190,297.30
- TVL by chain: Polygon $4,190,297.30

## Project Description

This brief describes the observed EVM deployment and audit surface for Atlendis. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across polygon. Structural roles: 11 unclassified, 3 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: unclassified (11), core (3)
- Contract kinds: contract (14)
- Detected standards: ownable (2)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x115f10cef93521501fdf08b31c1e88a339200e6d`, chain 137)
- UnnamedContract (`0x17087673754424b0a81e32012a39ba7ca934d163`, chain 137)
- UnnamedContract (`0x1cd1cd9788e47f9f1d65063e416ba5f663e7fd0f`, chain 137)
- UnnamedContract (`0x40bec97f501a30a8d42de1e28c27acd321833ea3`, chain 137)
- UnnamedContract (`0x541ee12839d5f0fdccb159e370af366d4b5d04bf`, chain 137)
- UnnamedContract (`0x9d15d9d470acb5112c5a0eea56bc0d34af4c62df`, chain 137)
- UnnamedContract (`0xa91a5b57bb2107ef1f20452bfb4cdb495c37a1c5`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (1 live, 13 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 10 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 53 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 7 of 70 unique; 63 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/35
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 35
- Unique implementations: 70
- Raw deployments: 127
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1a13f4ca1d028320a707d99520abfefca3998b7f` | ⚠️ Unaudited |
| AToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x60d55f02a771d515e077c9c2403a1ef324885cec` | ⚠️ Unaudited |
| TokenPolygonUpgradeableNameable | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xe0b52e49357fd4daf2c15e02058dce6bc0057db4` | ⚠️ Unaudited |
| AngleNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x588c06d6b15cb6d6f3428fa589a8fff1b6ba226b`; polygon `0xa124ef5d320261f50e2381ffc71430dfa04535da` | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: polygon `0x08b38fa7cfc68894953f1c9fa8ed60091e6114ee`; polygon `0x0fe8b1a40002248039fcc531874342285eb37a04`; polygon `0x101f2d4095c4c3722d22cf4b5e62a1f3766cb8e7`; polygon `0x47e433ba92b5bb2e017a25d6598a7ac24eddfbff`; polygon `0xc1db27505fbbc48707b08190b9c7a02ecc24d7f6`; polygon `0xd63aef6f86c8ad138d84baa2a925b1a1128b831a`; polygon `0xf3c0e04aff0a590213f430296775b17144743c2d` | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379758 | `0x4d5fa31a68f51ec53ea036cd4cc4cb8645deab3b` | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379760 | `0x74597fee384616a1d3ec3ce055db31bfc3b418aa` | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379764 | `0xbe7e43ee354992ebc356f3f8de1093e76237e84e` | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379765 | `0xc172b7655cbe1051876cabde171201439121b47b` | ⚠️ Unaudited |
| AtlendisTeamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x342d065f2774c85a06f3201380046a5d0007d85e`; polygon `0xd163044f1e828fb46a8034cd75f3badc67ffcfa3` | ⚠️ Unaudited |
| AtlendisTeamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3e64945f43c12c617b9cc34f4e7272c74c9850e` | ⚠️ Unaudited |
| AtlendisToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x4bfd034ed5e1dcc24b20db1a4910cb2f777d5931`; polygon `0xf68146ddb2854b3348aa648e087f3c4024e37043` | ⚠️ Unaudited |
| BorrowerPools | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-379768 | 2 deployments: polygon `0x8d3da26f8301dea18197e4c3146d8cde3ebace7c`; polygon `0xbc13e1b5da083b10622ff5b52c9cfa1912f10b1f` | ⚠️ Unaudited |
| BorrowerPools | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379762 | `0xa5a52023d313339969ca819cd066abc72685d2b3` | ⚠️ Unaudited |
| Boxers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbc28b93517f0da3b9e1774c8cd3d1de61021dd1a` | ⚠️ Unaudited |
| EasyLendies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x84fe441719cc9c968e6a9194b61c4db4f27287f7`; polygon `0xc05d77ba6eb70c2672b1c75a20bb46d5c6954851`; polygon `0xc678d066ec3d456ec474719a402f02a2e23d883c` | ⚠️ Unaudited |
| EIP173Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 20 deployments: polygon `0x11f7481ae0e234fc4e476fac69b4537a1370c659`; polygon `0x1c5c4dd6c570773322a3c9a02e4d12d02829b740`; polygon `0x2adf5efdf1bac1274413d58587a62c34445813b5`; polygon `0x2bef2007333fef1b3d2291a8762e1a456c0eeca9`; polygon `0x2e05d614e3b4780358cb44442309e2936ab482fd`; polygon `0x5b28666a94bdb12443cd90f191a03f450daa09f2`; polygon `0x5d96dc062ea43e99b2ceb3ef4d79292a7df52681`; polygon `0x6be5108b6ae8751cee9c315186d59374a2a47557`; polygon `0x743c39824582cd3f17786101a8878b71110f7622`; polygon `0x7b5a6118b2f05b394518f69c756b2d06833068af`; polygon `0x8135dcb93d7ca8cc88050eb061ff1da63ea11397`; polygon `0x89e2fe22118774f56b9d6022ded8eb32e7ef8773`; polygon `0x8c25b050aee800c12eafff9f675a578916e4d4ed`; polygon `0x9d2d702c975d285659011470201687fbf7bef6bb`; polygon `0x9d4977b0a3ab947be85211852dad95603a1d0ef9`; polygon `0xb1ad31db334c03919f7435a07b9e9c55193c321e`; polygon `0xc89ecec8f2f4d8a349c9e1482198a8d3465a2c4e`; polygon `0xd800e27ab3d5726104256af7a54672be9886cb04`; polygon `0xd8764c5d49e57d44b83c715fbc790e3d27ccbb83`; polygon `0xe3708dd11eb73023faabde23ab5d48311983a122` | ⚠️ Unaudited |
| Lendies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x41064cab39094395f71785ca3317235ecf033953`; polygon `0x5165ff0bed8d790395eea8c8c0a01d55b4642ebe`; polygon `0xfb20adc3d791c536a943bb2e8ee0dd7fc10facd9` | ⚠️ Unaudited |
| LowEffortLendies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf9feb1fc337af85d6cf72316d0716ba8a441b746` | ⚠️ Unaudited |
| NeutralAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: polygon `0x5715d67eb1942ad59e060473c9153af7015f9cb4`; polygon `0x6534b0bb33503067fa3887ec32a252feb8685414`; polygon `0x7aca294936604bec421b0a36aedb05f07454e701`; polygon `0xb7f7116baafb0299e5bae77908c240e549940a04`; polygon `0xc13b04bfe4011da9e6965805a78efc19cf2d6268`; polygon `0xc513b8ce368fe99e7a8ae9f2ef98cc58bddde7ca`; polygon `0xdaaccee9ac88eddbdd9c2d774b47d83fd6fad2c1`; polygon `0xf9ea10f80aef28fd6002c6ff95b671f7c4397ad5` | ⚠️ Unaudited |
| PoolCustodian | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: polygon `0x27cc24ee0ec290f914ba23831e490f406d689cfe`; polygon `0x78ca799eec17335f2c19f0b5495f6b1f3a6bb9e2`; polygon `0xa5b0e06d58249b9139bcf94257c62f3ab1491af2`; polygon `0xad86208c384f6c8af9ddd617055101e63214acbc`; polygon `0xb9f8fcb758c94fcbc8a19fabba0d12aae965a033`; polygon `0xd3f7a539635ac1ad3ce5ca44ee03453c078bb79b`; polygon `0xd53c78ea8355452b1fc89dd959db70f16edfbdc0`; polygon `0xdfcfc2cd27f4034c074e3771b7abcaaf37033432` | ⚠️ Unaudited |
| PoolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd2b8552104cf999e0eead79800f0ff08cd4ed5fd` | ⚠️ Unaudited |
| PositionDescriptor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-379767 | 2 deployments: polygon `0x61b2433e872a45e4dbe93ff1631776e022e77eb3`; polygon `0x88bb215102fa555cd27de0f43f2daedf8f9e3361` | ⚠️ Unaudited |
| PositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x64a697d897b331eb5b1357879f33faca3daf8cd1`; polygon `0x98d2d8e23e4e62e0e3ea58e2f5adf883956d680b`; polygon `0x9df76246a95b6a08efe67518edc84b4408f27213`; polygon `0xdeb0cc87f7ae009c10b842bf5f2e3eaded542c65`; polygon `0xe0b569ca3ea8fd2b84745ae0dc721e0a5e4cb325` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x0933291b338824d437e8320006a9db1b7da9668c`; polygon `0x50127fb49147f352025c3182c43acaa788ff72b2` | ⚠️ Unaudited |
| PositionManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379756 | `0x314083178d15de6f2d87824c8950d4ddcb868286` | ⚠️ Unaudited |
| PositionManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-379769 | 2 deployments: polygon `0x55e4e70a725c1439dac6b9412b71fc8372bd73e9`; polygon `0xf732e1315737ecacde8e56a1cc9226cd62a24374` | ⚠️ Unaudited |
| PositionManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379766 | `0xcfa8f8839c1c0698e6090605ec68e95f19a71d23` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbfca293e17e067e8abdca30a5d35addd0cbae6d6` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc00985055520c86d8b7764035002cef600f7616` | ⚠️ Unaudited |
| TokenPolygonUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7660b2b53f6e9ecebebfade61fdeb1f3703caa24`; polygon `0x900f717ea076e1e7a484ad9dd2db81ceec60ebf1` | ⚠️ Unaudited |
| UnnamedContract | proxy | project_anchor | own_supporting | 0 | polygon | unit-379757 | `0x40bec97f501a30a8d42de1e28c27acd321833ea3` | ⚠️ Unaudited |
| VestingWalletFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f0e10497d35d782e72a7caf716fa96687b6a070` | ⚠️ Unaudited |
| ZeroYieldProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2fa375961a0cb525db0f00af4e081a806a8639fd`; polygon `0xe759d9f77559fc02ca2f0c218597c9d25f1c1a95` | ⚠️ Unaudited |
| ZeroYieldProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xbbe7dd7152fd386eb36580862c25dce7923487fc`; polygon `0xd0f5ffbd5e1ac71c7b31c9650d55f302394d70b4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (35)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x035c6390618dde768239ca90534564816e3467d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-379753 | `0x115f10cef93521501fdf08b31c1e88a339200e6d` | ❓ Unverified |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-379754 | `0x17087673754424b0a81e32012a39ba7ca934d163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1bbf39b5ebd2cafa8cdab9d21dd49838c984bfe0` | ❓ Unverified |
| UnnamedContract | registry | project_anchor | own_supporting | 0 | polygon | unit-379755 | `0x1cd1cd9788e47f9f1d65063e416ba5f663e7fd0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2031b531122afbfa342afd6b975061f9ea6af622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x21c5b92e1ccdbbc13175469cd15d80f6c7e8d101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3be05b1d5223d282309e0652cb9bb58d5d2e6355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3cb1f4c28fca310c3809adda3a21551bf2904de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43cc9f4ebf18c9d4573b1ffd22450e62bed8a6b2` | ❓ Unverified |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-379759 | `0x541ee12839d5f0fdccb159e370af366d4b5d04bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a4ab9c1b391f1981a8481e40c983deafab71e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5fbf0c645b2dfcb5fd102c2beb15f366891fdb5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6443257c7e68baf40a6537b1a7c2a43052059deb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x69a942b80a62fb84c0efe917dd33e8e8c462ac67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ab3958517e9857facd1db911493b17b73bfd59c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97fef6f1baebe911956d6ff22d23931e45b958dc` | ❓ Unverified |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-379761 | `0x9d15d9d470acb5112c5a0eea56bc0d34af4c62df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9da8487ec38ad3b9b5c4d88b82f69a087330aedc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa4c0ef2855b36148c1ac42fca9d2634459744748` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-379763 | `0xa91a5b57bb2107ef1f20452bfb4cdb495c37a1c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa9e2c0082f1b94762ee3c1724ab63841d1f4806e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xadae7202290188f54d2ff3f7c01e20188a8701e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaeb7631018f30e6b7bac6e205390934b654ddf47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb404363f7b7a3dd19e845482d218b626a59575d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb74aaecd7cdd4512f51e4208c0d87c55cc741a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe49b492dff3612186611ff444c72438e961cc4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc18c30d4acba06ef11836e43f47502e9b0b30bc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3e63b31f79ca01ca3600e3a2155f40e27298315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc9dcf64f6c181b50e9124146ee7e754679228fb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xccc1a8f9176e126cc667397439142f7c4f855d06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd1601c32be4f82ec7a11011e7e0265aad80ed94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd14f97d2f4508cfd8e70e72ef4d0a05f8ff71253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdcfb15e5102bcf93abc7202232f680e7317f1bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8a484389e28588bdcb8acd7b445e5008fb37a1c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Atlendis-v1.0.pdf](https://github.com/Atlendis/protocol-v1/blob/master/audits/PeckShield-Audit-Report-Atlendis-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [atlendis-audit-report.pdf](https://github.com/Atlendis/protocol-v1/blob/master/audits/atlendis-audit-report.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [7048] PeckShield-Audit-Report-Atlendis-v1.0.pdf — no match: Contracts extracted from findings targets and library references. No file paths provided.
- [7049] atlendis-audit-report.pdf — no match: Scope section explicitly lists core contracts and interfaces. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Atlendis-v1.0.pdf | BorrowerPools | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-006 | no |
| PeckShield-Audit-Report-Atlendis-v1.0.pdf | PoolsController | unmatched — not counted | — | Target in findings PVE-003, PVE-004, PVE-005 | no |
| PeckShield-Audit-Report-Atlendis-v1.0.pdf | PoolLogic | unmatched — not counted | — | Library mentioned in finding PVE-006 | no |
| atlendis-audit-report.pdf | BorrowerPools | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | PoolsSettingsManager | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | Position | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | PoolLogic | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | Rounding | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | Types | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | IBorrowerManagement | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | IBorrowerPools | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | IPlatformManagement | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | IPoolsParametersManagement | unmatched — not counted | — | listed in scope | no |
| atlendis-audit-report.pdf | IPosition | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 16 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [7048] PeckShield-Audit-Report-Atlendis-v1.0.pdf
- [7049] atlendis-audit-report.pdf

Fork inheritance lineage and inherited audits are included when available.
