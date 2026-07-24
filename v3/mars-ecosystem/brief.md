# Agentic Audit Brief: Mars Ecosystem

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Mars Ecosystem (`mars-ecosystem`)
- Website: [https://marsecosystem.com/home](https://marsecosystem.com/home)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 105 unique implementations (106 raw deployments)
- Coverage basis: 0/10 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $233,545.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Mars Ecosystem. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across bsc. Structural roles: 9 core, 1 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (9), supporting (1), unclassified (1)
- Contract kinds: contract (10), abstract (1)
- Detected standards: pausable (6), erc20 (4), accesscontrol (1)
- Frameworks: openzeppelin (10)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xde03ed82e611e9ee6fe52d50bb40fdc00d89ba6b`, chain 56)
- AirDrop (`0x01d152ff991e76b6cb310387c07cafdfda790a25`, chain 56)
- Core (`0x00789cfb69499c65ac9a3a68fb4917c9b4fca2a7`, chain 56)
- IMO (`0x243ddd2e42ceb93349e726e2367edec6339aba75`, chain 56)
- LiquidityMiningMasterBNB (`0x48c42579d98aa768cde893f8214371ed607cabe3`, chain 56)
- MarsStake (`0x3b550bbfac32ec434f858a8135fa17c40636583b`, chain 56)
- MarsSwapFactory (`0x6f12482d9869303b998c54d91bcd8bccba81f3be`, chain 56)
- MarsSwapRouter (`0xb68825c810e67d4e444ad5b9deb55ba56a66e72d`, chain 56)
- Timelock (`0xc35a8bdbb93abfab362af6dc3383cd2c6aea6cbc`, chain 56)
- VestingMaster (`0x381facb9282770a5e3ac6c8637096b442039c3db`, chain 56)
- XMSToken (`0x7859b01bbf675d67da8cd128a50d155cd881b576`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (10 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/10 (0.0%)
- Coverage assessment: partial (medium confidence) — Coverage is calculated only over confirmed own address-book implementations; review inventory is reported separately and included in the conservative percentage where live and verified.
- Address-book implementation classification: 11 own, 7 exact-address-book context/dependencies excluded, 1 exact-address-book entries needing review
- Outside the address book: 86 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 11 of 105 unique; 94 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 91
- Unique implementations: 105
- Raw deployments: 106
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/marsecosystem/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirDrop | unknown | project_anchor | own_supporting | 0 | bsc | unit-246057 | `0x01d152ff991e76b6cb310387c07cafdfda790a25` | ⚠️ Unaudited |
| Core | unknown | project_anchor | own_supporting | 0 | bsc | unit-246056 | `0x00789cfb69499c65ac9a3a68fb4917c9b4fca2a7` | ⚠️ Unaudited |
| IMO | unknown | project_anchor | own_supporting | 0 | bsc | unit-246058 | `0x243ddd2e42ceb93349e726e2367edec6339aba75` | ⚠️ Unaudited |
| LiquidityMiningMaster | unknown | unclassified_address_book | needs_review (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x18878ca9b1cd1862c2cc357a6cf7a0ec857c80ed`; bsc `0xc7b8285a9e099e8c21ca5516d23348d8dbadde4a` | ⚠️ Unaudited |
| LiquidityMiningMasterBNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-246061 | `0x48c42579d98aa768cde893f8214371ed607cabe3` | ⚠️ Unaudited |
| MarsFarmV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3762899a888944c1dde493041a339df2f9e310e9` | ⚠️ Unaudited |
| MarsStake | unknown | project_anchor | own_supporting | 0 | bsc | unit-246060 | `0x3b550bbfac32ec434f858a8135fa17c40636583b` | ⚠️ Unaudited |
| MarsStratX2_PCS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c7f4daca14c4bb0e6b616cc6faa8354ccc5238f` | ⚠️ Unaudited |
| MarsSwapFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-246062 | `0x6f12482d9869303b998c54d91bcd8bccba81f3be` | ⚠️ Unaudited |
| MarsSwapRouter | unknown | project_anchor | own_supporting | 0 | bsc | unit-246064 | `0xb68825c810e67d4e444ad5b9deb55ba56a66e72d` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | bsc | unit-246065 | `0xc35a8bdbb93abfab362af6dc3383cd2c6aea6cbc` | ⚠️ Unaudited |
| USDMToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb0fa2fbe9b37444f5d1dbd22e0e5bdd2afbbe85` | ⚠️ Unaudited |
| VestingMaster | unknown | project_anchor | own_supporting | 0 | bsc | unit-246059 | `0x381facb9282770a5e3ac6c8637096b442039c3db` | ⚠️ Unaudited |
| XMSToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-246063 | `0x7859b01bbf675d67da8cd128a50d155cd881b576` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (91)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03e11b39a664adc404958a04593d2140961bd707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0811041f02d43af28803aed5a7fd4c03f8da2ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0833b526f3590959ec6305fc16e4a46876b53db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0842be288bcf11e53abcb372f57229fb538e3986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d9ed0b246a83a698b5c36550ede4aa904ff6000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0efee94c94535d1c4a253f64e22df421b372bec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17e32caac9528846f555e254c8613b423ba20702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18da677f7068402db8334df67a43a4f3bcbba473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1de110c1d9d348ef92d1b51c4f2b22ca1d05df01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x202d8a70365d9c71de959a37e087a0ed8db854ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x224501aa094e58ed93b1b9e0126e903c5b3b8b72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x22d8d50454203bd5a41b49ef515891f1ad9f3e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x254d3badac60f5ac333cbccc7c85719c66041d1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27ac26395735de75636dd312478c73ffbc667281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2894786e5292f7f23f6805067aace92474a226ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x29f4fd982ee7aee8fd1f1da76585bf99e7d4740d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a2a989a5082e1cf31366cf75bbff8999da26538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ca720470f9ec625ca3b4130bfdbc9589efe91a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31f236f279ca300bab7b69d8c5811c9723f77400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x343bd1be0c557043ee2b31bb9a99dd4b6c585455` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3a003e18124cfff65c14cb111893aff4e89b3814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f40cc304fb656eb59d023d68327604d2e2b655b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x447133f861326cc9b09f2e14568d96e21054c926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44f2bdddebaaaef24bf0559d29135af33dea15c6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4639d936f0a716f234ead073362c5cb272cc4b70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47b50abc8e056dbcd7b0051f2e767a43a85af343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a6fff78508fcc585bc60031d85981dba83497f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x528d8c686e3c56b84abb6f2b820b37e711d7230c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54047d0b644e06e535cc052779e18d56b148894c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54053eafc1ef91879c826b64d1bfdc51351c9097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55df204e7b3e33048cc110ea7ed863750e8ef628` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x56b91ebaeb450ce27a3c4a41d9bf16162dd63ea2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b396d0095193b2d1738c7b5fcaa2c05ba876d40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6369c050d8c702a4ff528bca6ce37ad40020aeb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63e36f2e063c2f9802826fe3fb2637484bbb543c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64f545ea2bf1172d4746acd0a125edc38aa7cf1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66ce4795a6bf4f6ec4925e8be87ad5cb36387ba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a8047e3d27b113393be404203bb92d35e61e94d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6bf32444d5d69afe6348694b6cb69885fc566473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cf6db83688780e587c663d12c21a416939f4333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e7cf396ea6cb48be7d15e03e3b6bd1e7860ce6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e814f505683ae416b24ef8194873b018e96bf6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75aa7fd63fd0064e15b103587a05c63b2d1526f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77f092fd5a266c509737c2a8a30e48e7b28b5abf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8308de030a980daa78f5ced3dd1db9eb95faecdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x856b9ab8ca909c7551a7cdb5a1c2fe7e29e398bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x861952d8dcefd6439996de1a6a962a5fff9a88d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8678a4970839a219a771f0d4c2529597e32638f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x888247f60616b2e0372b36724a3907f5cca2b349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95123fae3a458f1b2583ccfd6d3d99947da4339d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99770e40c27183db0e1ea46451249b00a9a42b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9df22f82083392a636426eb599a648436df09325` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e1d599a1858f9261c31192ab722dfed74293eef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e37fdfc88a500fb5cb3ab6a049a50bd323303c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4697feca046330cf1c0e5ed896ad682ed975cba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xa53b575f9ec7126ba7b43c8c3171fe4685f2f8b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa53cc5e49922d711bff6f44c00254b19793d1b60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa64334ec7d4ac1067836287c0a6b271ebecb1d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9c48f635edbd82dcd94849ab95aee0c644e5453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad4b6de577e75076d6f7325aa09cfc329f7662e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae05bd4136f8ee26bff584c1c8f02dc0fd941b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae399b41f559b6fe83777db91ada51b804d86b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xafae414bc3a0425da8b1516518749565facb70ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb17869cdfd2b92f10fd8f321cac56456b81c4474` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xb7881f5142245531c3fb938a37b5d2489efd2c01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb859d09fa03761f297c88f99f4611a23ad49b5ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8e424495c214239b94070afa282151dc40f78f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba6d012e37c0f209230682efe382bf8986bbc347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1a1e6bf49bd59fe17efe10d302cc8c225b69751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc402289e9e91fc91aa78f9eee56f6b4ec0d8c719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc600f8d8280cace673b493cb91682de581c826c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca00d0dd5e318d15b0a1101f6b77ccc7554272c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc316e3ffe70819e968f0cbbf8313db9e45f41e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc413f6c89b6fa3e1f48389968e303ac519cbd38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce66e4e416395a323d52a943a78a0dd291b1f84c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd27cf0bc9fb18301c9f5b0e0fac4d1c99698f12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc6aefb7ea3cda501d1695f123ae0ab8dd43d4fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-246066 | `0xde03ed82e611e9ee6fe52d50bb40fdc00d89ba6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe22f437669464e6aa87a5fd3a21bf6a6b09955e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe437059349a94e5d560cd951aa2469ef73a404a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe73c229f9b6ce52a9418af5a6d6016679199b33e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9d82084d7705a3bf769864a3f6d2a542cfea943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb3af023c48deb35648bd4b5e4f7ce531fb96b5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf20fef19177febb7399e639a10bcfcd026abef63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf288b2494b40af9c66c721aa562143e55c4fc358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2d658c62fcdf04dd63d5d376e0dc5f68a341e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3115bd4f6f91dafdef2ced7b1ede3b00e2cab77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4c1b30c90669de39987372ecf7c3592ec76d574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf745dad82ce7901fd27fd54b042a3739ee78406a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf82de5d2686e2adef9e1681b1218fa6d4e6f1e78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfff42f23d589ffae3fd757845db28d3cb2684575` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 90
- Live contracts: 0
- Unknown liveness contracts: 90
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: exact address book overlap=7, unverified unclassified=83

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | exact address book overlap | UnnamedContract<br>`0x22d8d50454203bd5a41b49ef515891f1ad9f3e53` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | exact address book overlap | UnnamedContract<br>`0x29f4fd982ee7aee8fd1f1da76585bf99e7d4740d` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | exact address book overlap | UnnamedContract<br>`0x3a003e18124cfff65c14cb111893aff4e89b3814` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | exact address book overlap | UnnamedContract<br>`0x4639d936f0a716f234ead073362c5cb272cc4b70` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | exact address book overlap | UnnamedContract<br>`0x56b91ebaeb450ce27a3c4a41d9bf16162dd63ea2` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | exact address book overlap | UnnamedContract<br>`0xa53b575f9ec7126ba7b43c8c3171fe4685f2f8b0` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | exact address book overlap | UnnamedContract<br>`0xb7881f5142245531c3fb938a37b5d2489efd2c01` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x03e11b39a664adc404958a04593d2140961bd707` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0811041f02d43af28803aed5a7fd4c03f8da2ec7` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0833b526f3590959ec6305fc16e4a46876b53db3` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0842be288bcf11e53abcb372f57229fb538e3986` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0d9ed0b246a83a698b5c36550ede4aa904ff6000` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0efee94c94535d1c4a253f64e22df421b372bec9` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x17e32caac9528846f555e254c8613b423ba20702` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x18da677f7068402db8334df67a43a4f3bcbba473` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1de110c1d9d348ef92d1b51c4f2b22ca1d05df01` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x202d8a70365d9c71de959a37e087a0ed8db854ec` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x224501aa094e58ed93b1b9e0126e903c5b3b8b72` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x254d3badac60f5ac333cbccc7c85719c66041d1c` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x27ac26395735de75636dd312478c73ffbc667281` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2894786e5292f7f23f6805067aace92474a226ee` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2a2a989a5082e1cf31366cf75bbff8999da26538` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2ca720470f9ec625ca3b4130bfdbc9589efe91a7` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x31f236f279ca300bab7b69d8c5811c9723f77400` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x343bd1be0c557043ee2b31bb9a99dd4b6c585455` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3f40cc304fb656eb59d023d68327604d2e2b655b` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x447133f861326cc9b09f2e14568d96e21054c926` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x44f2bdddebaaaef24bf0559d29135af33dea15c6` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x47b50abc8e056dbcd7b0051f2e767a43a85af343` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4a6fff78508fcc585bc60031d85981dba83497f3` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x528d8c686e3c56b84abb6f2b820b37e711d7230c` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x54047d0b644e06e535cc052779e18d56b148894c` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x55df204e7b3e33048cc110ea7ed863750e8ef628` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5b396d0095193b2d1738c7b5fcaa2c05ba876d40` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6369c050d8c702a4ff528bca6ce37ad40020aeb0` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x63e36f2e063c2f9802826fe3fb2637484bbb543c` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x64f545ea2bf1172d4746acd0a125edc38aa7cf1b` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6a8047e3d27b113393be404203bb92d35e61e94d` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6bf32444d5d69afe6348694b6cb69885fc566473` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6cf6db83688780e587c663d12c21a416939f4333` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6e7cf396ea6cb48be7d15e03e3b6bd1e7860ce6b` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6e814f505683ae416b24ef8194873b018e96bf6d` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x75aa7fd63fd0064e15b103587a05c63b2d1526f1` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8308de030a980daa78f5ced3dd1db9eb95faecdb` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x856b9ab8ca909c7551a7cdb5a1c2fe7e29e398bd` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x861952d8dcefd6439996de1a6a962a5fff9a88d4` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8678a4970839a219a771f0d4c2529597e32638f7` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x888247f60616b2e0372b36724a3907f5cca2b349` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x95123fae3a458f1b2583ccfd6d3d99947da4339d` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9df22f82083392a636426eb599a648436df09325` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9e1d599a1858f9261c31192ab722dfed74293eef` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9e37fdfc88a500fb5cb3ab6a049a50bd323303c8` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa4697feca046330cf1c0e5ed896ad682ed975cba` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa53cc5e49922d711bff6f44c00254b19793d1b60` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa64334ec7d4ac1067836287c0a6b271ebecb1d70` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa9c48f635edbd82dcd94849ab95aee0c644e5453` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xad4b6de577e75076d6f7325aa09cfc329f7662e8` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xae399b41f559b6fe83777db91ada51b804d86b13` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xafae414bc3a0425da8b1516518749565facb70ce` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb17869cdfd2b92f10fd8f321cac56456b81c4474` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb8e424495c214239b94070afa282151dc40f78f1` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xba6d012e37c0f209230682efe382bf8986bbc347` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc1a1e6bf49bd59fe17efe10d302cc8c225b69751` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc402289e9e91fc91aa78f9eee56f6b4ec0d8c719` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc600f8d8280cace673b493cb91682de581c826c0` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xca00d0dd5e318d15b0a1101f6b77ccc7554272c2` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcc316e3ffe70819e968f0cbbf8313db9e45f41e1` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcc413f6c89b6fa3e1f48389968e303ac519cbd38` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xce66e4e416395a323d52a943a78a0dd291b1f84c` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd27cf0bc9fb18301c9f5b0e0fac4d1c99698f12d` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdc6aefb7ea3cda501d1695f123ae0ab8dd43d4fe` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe22f437669464e6aa87a5fd3a21bf6a6b09955e2` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe437059349a94e5d560cd951aa2469ef73a404a2` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe73c229f9b6ce52a9418af5a6d6016679199b33e` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe9d82084d7705a3bf769864a3f6d2a542cfea943` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xeb3af023c48deb35648bd4b5e4f7ce531fb96b5d` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf20fef19177febb7399e639a10bcfcd026abef63` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf288b2494b40af9c66c721aa562143e55c4fc358` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf2d658c62fcdf04dd63d5d376e0dc5f68a341e8b` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf3115bd4f6f91dafdef2ced7b1ede3b00e2cab77` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf4c1b30c90669de39987372ecf7c3592ec76d574` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf745dad82ce7901fd27fd54b042a3739ee78406a` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf82de5d2686e2adef9e1681b1218fa6d4e6f1e78` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfff42f23d589ffae3fd757845db28d3cb2684575` | non_address_book | unknown | unknown | unverified | n/a | `0x21a2107dcc1334aeb75d54a4a43fc639521ad81f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x54053eafc1ef91879c826b64d1bfdc51351c9097` | non_address_book | unknown | unknown | unverified | n/a | `0x883dd19b91da3b32e46c9abdb788d1d8ca209400` |
| bsc | unverified unclassified | UnnamedContract<br>`0x66ce4795a6bf4f6ec4925e8be87ad5cb36387ba0` | non_address_book | unknown | unknown | unverified | n/a | `0x883dd19b91da3b32e46c9abdb788d1d8ca209400` |
| bsc | unverified unclassified | UnnamedContract<br>`0x77f092fd5a266c509737c2a8a30e48e7b28b5abf` | non_address_book | unknown | unknown | unverified | n/a | `0x883dd19b91da3b32e46c9abdb788d1d8ca209400` |
| bsc | unverified unclassified | UnnamedContract<br>`0x99770e40c27183db0e1ea46451249b00a9a42b40` | non_address_book | unknown | unknown | unverified | n/a | `0x883dd19b91da3b32e46c9abdb788d1d8ca209400` |
| bsc | unverified unclassified | UnnamedContract<br>`0xae05bd4136f8ee26bff584c1c8f02dc0fd941b0d` | non_address_book | unknown | unknown | unverified | n/a | `0x883dd19b91da3b32e46c9abdb788d1d8ca209400` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb859d09fa03761f297c88f99f4611a23ad49b5ea` | non_address_book | unknown | unknown | unverified | n/a | `0x883dd19b91da3b32e46c9abdb788d1d8ca209400` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/marsecosystem](https://skynet.certik.com/projects/marsecosystem) | CertiK | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [immunefi.com/bug-bounty/marsecosystem/information](https://immunefi.com/bug-bounty/marsecosystem/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20817] skynet.certik.com/projects/marsecosystem — no match: Only one contract name explicitly mentioned in audited files; other files listed by SHA256 hash only.
- [20818] immunefi.com/bug-bounty/marsecosystem/information — no match: The document is a bug bounty program page, not an audit report. No contracts in scope are listed; only the program overview and reward structure are provided.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/marsecosystem | MarsSwapPairCombOracle | unmatched — not counted | — | Listed in audited files section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x01d152ff991e76b6cb310387c07cafdfda790a25` | AirDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x00789cfb69499c65ac9a3a68fb4917c9b4fca2a7` | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x243ddd2e42ceb93349e726e2367edec6339aba75` | IMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x48c42579d98aa768cde893f8214371ed607cabe3` | LiquidityMiningMasterBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3b550bbfac32ec434f858a8135fa17c40636583b` | MarsStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6f12482d9869303b998c54d91bcd8bccba81f3be` | MarsSwapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xb68825c810e67d4e444ad5b9deb55ba56a66e72d` | MarsSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc35a8bdbb93abfab362af6dc3383cd2c6aea6cbc` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x381facb9282770a5e3ac6c8637096b442039c3db` | VestingMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7859b01bbf675d67da8cd128a50d155cd881b576` | XMSToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 91 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [20817] skynet.certik.com/projects/marsecosystem

Fork inheritance lineage and inherited audits are included when available.
