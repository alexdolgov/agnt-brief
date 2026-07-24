# Agentic Audit Brief: Odyssey Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Odyssey Finance (`odyssey-finance`)
- Website: [https://app.odyssey.finance/en](https://app.odyssey.finance/en)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, ethereum, optimism, plasma
- Contract surface: 275 unique implementations (389 raw deployments)
- Coverage basis: 5/91 confirmed own live verified implementations (5.5%); conservative 5.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $9,354,010.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Odyssey Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 91 contract row(s) across base, ethereum, optimism. Structural roles: 67 core, 17 unclassified, 4 supporting, 3 infra. 28 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 91
- Structural roles: core (67), unclassified (17), supporting (4), infra (3)
- Contract kinds: contract (91)
- Detected standards: ownable (36), erc1967proxy (24), ownable2step (24)
- Frameworks: openzeppelin (73), openzeppelin-upgradeable (28)
- Upgradeable-pattern rows: 28

## Fork Analysis

0 of 113 contracts are derived from known codebases. 113 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x05495f13b69a0bcf5e623a6a5e3de31e58106589`, chain 1)
- UnnamedContract (`0x1f2cb3cbe35ebd871b61d7d406e23c76f17b2ac5`, chain 1)
- UnnamedContract (`0x3f6da0a118b3a0ddfdbab4690cc96b2cf73b488d`, chain 1)
- UnnamedContract (`0x78002d68a97990d42f42da5e4f6c57a2908e3f3b`, chain 1)
- UnnamedContract (`0x98fba561678720180d51e3fc8e4151038433fad2`, chain 1)
- UnnamedContract (`0xce5bc7ea716f258a8122e1fb254ca12b18b3d206`, chain 1)
- UnnamedContract (`0xd7be1c97c3652909da8f1d83f9444c3f9722cd96`, chain 1)
- UnnamedContract (`0xe8c3cc9e444ebaaa6539272494b2da98775c4ead`, chain 1)
- UnnamedContract (`0xee156d8ea7b96a5524ccc3cf9283ab85e80e9534`, chain 1)
- UnnamedContract (`0x05495f13b69a0bcf5e623a6a5e3de31e58106589`, chain 10)
- UnnamedContract (`0x1f2cb3cbe35ebd871b61d7d406e23c76f17b2ac5`, chain 10)
- UnnamedContract (`0x3f6da0a118b3a0ddfdbab4690cc96b2cf73b488d`, chain 10)
- UnnamedContract (`0x78002d68a97990d42f42da5e4f6c57a2908e3f3b`, chain 10)
- UnnamedContract (`0x98fba561678720180d51e3fc8e4151038433fad2`, chain 10)
- UnnamedContract (`0xce5bc7ea716f258a8122e1fb254ca12b18b3d206`, chain 10)
- UnnamedContract (`0xd7be1c97c3652909da8f1d83f9444c3f9722cd96`, chain 10)
- UnnamedContract (`0xe8c3cc9e444ebaaa6539272494b2da98775c4ead`, chain 10)
- UnnamedContract (`0xee156d8ea7b96a5524ccc3cf9283ab85e80e9534`, chain 10)
- UnnamedContract (`0x05495f13b69a0bcf5e623a6a5e3de31e58106589`, chain 8453)
- UnnamedContract (`0x1f2cb3cbe35ebd871b61d7d406e23c76f17b2ac5`, chain 8453)
- UnnamedContract (`0x3f6da0a118b3a0ddfdbab4690cc96b2cf73b488d`, chain 8453)
- UnnamedContract (`0x78002d68a97990d42f42da5e4f6c57a2908e3f3b`, chain 8453)
- UnnamedContract (`0x98fba561678720180d51e3fc8e4151038433fad2`, chain 8453)
- UnnamedContract (`0xce5bc7ea716f258a8122e1fb254ca12b18b3d206`, chain 8453)
- UnnamedContract (`0xd7be1c97c3652909da8f1d83f9444c3f9722cd96`, chain 8453)
- UnnamedContract (`0xe8c3cc9e444ebaaa6539272494b2da98775c4ead`, chain 8453)
- UnnamedContract (`0xee156d8ea7b96a5524ccc3cf9283ab85e80e9534`, chain 8453)
- AaveV2 (`0xb5a44c7f34e93a72425efdd002b9754ac2b98445`, chain 1)
- AaveV2BorrowStrategy (`0xfcb475b05682f84b489083b131f62b77cef1d0ed`, chain 1)
- AaveV2FlashLoan (`0x2d2985ab02254bb26bfdaf8bd64c0d063ad9c720`, chain 1)
- AaveV3 (`0x206eba040e4e86667b8ab4275bb75f220e9a2821`, chain 1)
- AaveV3 (`0x206eba040e4e86667b8ab4275bb75f220e9a2821`, chain 10)
- AaveV3 (`0x206eba040e4e86667b8ab4275bb75f220e9a2821`, chain 8453)
- AaveV3BorrowStrategy (`0x3efcee552716472dd2b321326654e4097f58d79b`, chain 1)
- AaveV3BorrowStrategy (`0x8d4dfad5ceaffe863fc9dcb5fcb4f183451aee36`, chain 10)
- AaveV3BorrowStrategy (`0x3efcee552716472dd2b321326654e4097f58d79b`, chain 8453)
- AaveV3FlashLoan (`0x7436186d83d8f98e542a5bd37d18e91f265c312b`, chain 1)
- AaveV3FlashLoan (`0x78d791cd9506042715c1305c8ebbba95a1ad9762`, chain 10)
- AaveV3FlashLoan (`0x7436186d83d8f98e542a5bd37d18e91f265c312b`, chain 8453)
- Ajna (`0x82e6b5675977f0650c88659716a2210f536ac3a2`, chain 1)
- Ajna (`0x82e6b5675977f0650c88659716a2210f536ac3a2`, chain 10)
- Ajna (`0x82e6b5675977f0650c88659716a2210f536ac3a2`, chain 8453)
- AjnaBorrowStrategy (`0xde433f614e50d7c0b21fd00a3d625b000c9c9736`, chain 1)
- AjnaBorrowStrategy (`0x0dba141eb855ea62a951066fb8c5fb1ebe7ec890`, chain 10)
- AjnaBorrowStrategy (`0xde433f614e50d7c0b21fd00a3d625b000c9c9736`, chain 8453)
- CallOrderExecutor (`0xf70acacfb981c8be2ddc48093f4042b88f0da5d9`, chain 1)
- CallOrderExecutor (`0xf70acacfb981c8be2ddc48093f4042b88f0da5d9`, chain 10)
- CallOrderExecutor (`0xf70acacfb981c8be2ddc48093f4042b88f0da5d9`, chain 8453)
- CompoundV2 (`0x186c9184364b00a9691ae0d7d4e736cfcb59a820`, chain 1)
- CompoundV2BorrowStrategy (`0x77fa7880f6da8f6fc7dd21409e9e2b7cdb84bb3c`, chain 1)
- CompoundV2VesperStrategy (`0xce32679c865f37ae6513a366118aa783ae15780e`, chain 1)
- CompoundV3 (`0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40`, chain 1)
- CompoundV3 (`0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40`, chain 10)
- CompoundV3 (`0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40`, chain 8453)
- CompoundV3BorrowStrategy (`0xc276309a6c01cee346ca913db44ce4936ec8b9c5`, chain 1)
- CompoundV3BorrowStrategy (`0x4966d4a8e6f3c463ac7d6374ab05b4555b0eaa68`, chain 10)
- CompoundV3BorrowStrategy (`0xc276309a6c01cee346ca913db44ce4936ec8b9c5`, chain 8453)
- CompoundV3VesperStrategy (`0xab890edfc63959a2b3794800b4f68f608b0827c3`, chain 1)
- CompoundV3VesperStrategy (`0x249a626498281ee7f172c307d4b0db4de2a08bbb`, chain 10)
- CompoundV3VesperStrategy (`0xab890edfc63959a2b3794800b4f68f608b0827c3`, chain 8453)
- DyDxFlashLoan (`0x1cb204ed801db2030f3c59e9fd8ec078bc604169`, chain 1)
- ERC4626 (`0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4`, chain 1)
- ERC4626 (`0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4`, chain 10)
- ERC4626 (`0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4`, chain 8453)
- ERC4626Strategy (`0xf4868cec8c7e13bba1e3ba65b029449c13ea0543`, chain 1)
- ERC4626Strategy (`0xf4868cec8c7e13bba1e3ba65b029449c13ea0543`, chain 10)
- ERC4626Strategy (`0xf4868cec8c7e13bba1e3ba65b029449c13ea0543`, chain 8453)
- FlashLoanExecutor (`0x6e30df848d694f3169f0f1e4fcc68f9a8d7fb2c4`, chain 1)
- FlashLoanExecutor (`0x4391ae1acc1c082bae3bb2badb29afb275d35978`, chain 10)
- FlashLoanExecutor (`0x6e30df848d694f3169f0f1e4fcc68f9a8d7fb2c4`, chain 8453)
- LimitOrderExecutor (`0x1807c62f30269746672d0c0f24a645a573604ef4`, chain 1)
- LimitOrderExecutor (`0x1807c62f30269746672d0c0f24a645a573604ef4`, chain 10)
- LimitOrderExecutor (`0x1807c62f30269746672d0c0f24a645a573604ef4`, chain 8453)
- Morpho (`0xf8dea58979a47f226ac46dfe204a7146a8e06892`, chain 1)
- Morpho (`0xf8dea58979a47f226ac46dfe204a7146a8e06892`, chain 10)
- Morpho (`0xf8dea58979a47f226ac46dfe204a7146a8e06892`, chain 8453)
- MorphoBorrowStrategy (`0x87acd9823c1269ec5a2233fc941b22d747366910`, chain 1)
- MorphoBorrowStrategy (`0x87acd9823c1269ec5a2233fc941b22d747366910`, chain 10)
- MorphoBorrowStrategy (`0x87acd9823c1269ec5a2233fc941b22d747366910`, chain 8453)
- MorphoFlashLoan (`0x6aa69c031170b04e2d6ec02520b6f49d649031b8`, chain 1)
- MorphoFlashLoan (`0x6aa69c031170b04e2d6ec02520b6f49d649031b8`, chain 8453)
- PerformanceFeePolicy (`0xaa59006ae8dcfc7137a352e6142b39c2dee8622e`, chain 1)
- PerformanceFeePolicy (`0xa6798b67e38e180d86474330c0f49e7ef1adab14`, chain 10)
- PerformanceFeePolicy (`0x3078742bacdfecbe6f8d9e77f1aaa1000c074fcf`, chain 8453)
- PositionRegistry (`0x3416311bbaed3cf69c494c2badf5ceb4b201e4f9`, chain 1)
- PositionRegistry (`0xf67e6579a2b9a83c537353efb0fa5646ac1cc9ea`, chain 10)
- PositionRegistry (`0xa3ceec1740090b303a9682cd43f1f14d7bac4da2`, chain 8453)
- ProtocolTieredFeePolicy (`0xeb1df74c87875be3eef1a2407aa906665bfa5684`, chain 1)
- ProtocolTieredFeePolicy (`0xe0af15b4689cf81a9f1bfc6857d842f2813d3017`, chain 10)
- ProxyAdmin (`0xc0bc99efeb9039493e888900a81ed30a3468370e`, chain 1)
- ProxyAdmin (`0xceb64bcdbee34f5d390d95f501d54ce8305c83e8`, chain 1)
- ProxyAdmin (`0xfca22bb50375f172692303deb373c21378ddbaaa`, chain 1)
- ProxyAdmin (`0xc0bc99efeb9039493e888900a81ed30a3468370e`, chain 10)
- ProxyAdmin (`0xceb64bcdbee34f5d390d95f501d54ce8305c83e8`, chain 10)
- ProxyAdmin (`0xfca22bb50375f172692303deb373c21378ddbaaa`, chain 10)
- ProxyAdmin (`0xc0bc99efeb9039493e888900a81ed30a3468370e`, chain 8453)
- ProxyAdmin (`0xceb64bcdbee34f5d390d95f501d54ce8305c83e8`, chain 8453)
- ProxyAdmin (`0xfca22bb50375f172692303deb373c21378ddbaaa`, chain 8453)
- RecurringSwapExecutor (`0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5`, chain 1)
- RecurringSwapExecutor (`0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5`, chain 10)
- RecurringSwapExecutor (`0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5`, chain 8453)
- SwapAggregator (`0xc67abc3fba59860b2dbf77fd1cf59d5455d6ed14`, chain 1)
- SwapAggregator (`0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa`, chain 10)
- SwapAggregator (`0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa`, chain 8453)
- Synth (`0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7`, chain 1)
- Synth (`0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7`, chain 10)
- Synth (`0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7`, chain 8453)
- SynthStrategy (`0x19b72d6351f080d8a002bfde6595c09112867c37`, chain 1)
- SynthStrategy (`0x5f0a841ddb55b2a903bc3204e27e247a097a1e8f`, chain 10)
- SynthStrategy (`0x19b72d6351f080d8a002bfde6595c09112867c37`, chain 8453)
- Vesper (`0xccf1f2ad7137347daa5815048c99952fb9639f3c`, chain 1)
- Vesper (`0xccf1f2ad7137347daa5815048c99952fb9639f3c`, chain 10)
- Vesper (`0xccf1f2ad7137347daa5815048c99952fb9639f3c`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 91; live-surface rows included: 91 (91 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 118/125 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/91 (5.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 118 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 157 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 118 of 275 unique; 157 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/157
- Verified + Unaudited implementations: 152
- Verified by bytecode match: 0
- Unverified implementations: 118
- Unique implementations: 275
- Raw deployments: 389
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 5 | 3.2% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390018 | `0xb5a44c7f34e93a72425efdd002b9754ac2b98445` | ✅ Audited |
| AaveV2BorrowStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390036 | `0xfcb475b05682f84b489083b131f62b77cef1d0ed` | ✅ Audited |
| CompoundV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389997 | `0x186c9184364b00a9691ae0d7d4e736cfcb59a820` | ✅ Audited |
| CompoundV2BorrowStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390011 | `0x77fa7880f6da8f6fc7dd21409e9e2b7cdb84bb3c` | ✅ Audited |
| CompoundV2VesperStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390024 | `0xce32679c865f37ae6513a366118aa783ae15780e` | ✅ Audited |

### ⚠️ Verified + Unaudited (152)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV2FlashLoan | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390002 | `0x2d2985ab02254bb26bfdaf8bd64c0d063ad9c720` | ⚠️ Unaudited |
| AaveV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390001 | `0x206eba040e4e86667b8ab4275bb75f220e9a2821` | ⚠️ Unaudited |
| AaveV3 | unknown | project_anchor | own_supporting | 0 | optimism | unit-390045 | `0x206eba040e4e86667b8ab4275bb75f220e9a2821` | ⚠️ Unaudited |
| AaveV3 | unknown | project_anchor | own_supporting | 0 | base | unit-390087 | `0x206eba040e4e86667b8ab4275bb75f220e9a2821` | ⚠️ Unaudited |
| AaveV3BorrowStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390005 | `0x3efcee552716472dd2b321326654e4097f58d79b` | ⚠️ Unaudited |
| AaveV3BorrowStrategy | core_logic | project_anchor | own_supporting | 0 | optimism | unit-390063 | `0x8d4dfad5ceaffe863fc9dcb5fcb4f183451aee36` | ⚠️ Unaudited |
| AaveV3BorrowStrategy | core_logic | project_anchor | own_supporting | 0 | base | unit-390091 | `0x3efcee552716472dd2b321326654e4097f58d79b` | ⚠️ Unaudited |
| AaveV3FlashLoan | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390010 | `0x7436186d83d8f98e542a5bd37d18e91f265c312b` | ⚠️ Unaudited |
| AaveV3FlashLoan | unknown | project_anchor | own_supporting | 0 | optimism | unit-390059 | `0x78d791cd9506042715c1305c8ebbba95a1ad9762` | ⚠️ Unaudited |
| AaveV3FlashLoan | unknown | project_anchor | own_supporting | 0 | base | unit-390097 | `0x7436186d83d8f98e542a5bd37d18e91f265c312b` | ⚠️ Unaudited |
| Agent | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x46e6ade9b7b59e151c5bcc877c9b90d50021553a`; ethereum `0xfd07a07505f73c63a6f8ff03b7474a90c0b3c5ce` | ⚠️ Unaudited |
| Agent | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4762e77b8f448f0755eca2b6be6cbcd4db0f28a9`; ethereum `0xffdf74b401dcaff0b051fcb8ced890663fc042e0` | ⚠️ Unaudited |
| Agent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x96f82d791580deef662b8d552f21b4ac14a8cf80`; ethereum `0xb01f1a5041e6d2a6499e0cff1ee5cb3e65db6fa0` | ⚠️ Unaudited |
| AgentUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x804739d527b550260f633462dedab13399c3953a`; ethereum `0xf9eeae6a02c91914f046331bf2dc4c4a9ca7ef51` | ⚠️ Unaudited |
| Ajna | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390013 | `0x82e6b5675977f0650c88659716a2210f536ac3a2` | ⚠️ Unaudited |
| Ajna | unknown | project_anchor | own_supporting | 0 | optimism | unit-390061 | `0x82e6b5675977f0650c88659716a2210f536ac3a2` | ⚠️ Unaudited |
| Ajna | unknown | project_anchor | own_supporting | 0 | base | unit-390100 | `0x82e6b5675977f0650c88659716a2210f536ac3a2` | ⚠️ Unaudited |
| AjnaBorrowStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390028 | `0xde433f614e50d7c0b21fd00a3d625b000c9c9736` | ⚠️ Unaudited |
| AjnaBorrowStrategy | core_logic | project_anchor | own_supporting | 0 | optimism | unit-390040 | `0x0dba141eb855ea62a951066fb8c5fb1ebe7ec890` | ⚠️ Unaudited |
| AjnaBorrowStrategy | core_logic | project_anchor | own_supporting | 0 | base | unit-390111 | `0xde433f614e50d7c0b21fd00a3d625b000c9c9736` | ⚠️ Unaudited |
| AlusdTokenMainnetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xcc7e22e8c8fa860ff6cd7a90c34e466ee0bd950c`; ethereum `0xe002c5c9ad8f533c17c25df21c453f31849e0ed9` | ⚠️ Unaudited |
| AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4681a847863f1d1a584c298ae5a7ac4343704e8f`; optimism `0x54181404a037757eb5271ee4a02ca51844f25eaa`; base `0x7b8bcf8e185f433504f4888af84efd68c6f5da27` | ⚠️ Unaudited |
| ApyTieredFeePolicy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390022 | `0xcb6dafb36b40c9c7371108f66a5184ff3b01ee0d` | ⚠️ Unaudited |
| ApyTieredFeePolicy | unknown | project_anchor | own_supporting | 0 | optimism | unit-390050 | `0x3d4ccdb04ea20681a1123a7127547edcfdf72fc3` | ⚠️ Unaudited |
| ApyTieredFeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x515e8bf34b7c300bf1d173e434a47d564c4c9931`; optimism `0xffd74ecf5b4eec6eac2624764933fb5f2e2dfd09` | ⚠️ Unaudited |
| ApyTieredFeePolicy | unknown | project_anchor | own_supporting | 0 | base | unit-390093 | `0x5ef26de6aa5a944deac0e69115bdda3ba6016faa` | ⚠️ Unaudited |
| ATokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3078742bacdfecbe6f8d9e77f1aaa1000c074fcf` | ⚠️ Unaudited |
| BTCPeggedTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2a466df120fb847520763461d99c22ea5ba8cc8` | ⚠️ Unaudited |
| CallOrderExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390033 | `0xf70acacfb981c8be2ddc48093f4042b88f0da5d9` | ⚠️ Unaudited |
| CallOrderExecutor | unknown | project_anchor | own_supporting | 0 | optimism | unit-390077 | `0xf70acacfb981c8be2ddc48093f4042b88f0da5d9` | ⚠️ Unaudited |
| CallOrderExecutor | unknown | project_anchor | own_supporting | 0 | base | unit-390115 | `0xf70acacfb981c8be2ddc48093f4042b88f0da5d9` | ⚠️ Unaudited |
| CallOrdersFillerUsingUniV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfd7d5edd096b98ac2391043b22b96aa63dd63613` | ⚠️ Unaudited |
| CapForStETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x023dcf516c349b615120ee731add909645ec35fb`; ethereum `0x884c34b865907648ffa2d6fdb8576291f3ecedc6` | ⚠️ Unaudited |
| CapForStETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2182c3e3b7a4399f69ea8da7c52e9d080e9c43ad`; ethereum `0x8f6cfbf5aff373f0ad7e0869c348ec934950a5b8` | ⚠️ Unaudited |
| CapForStETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8f4d8cf2cc7fd70d048b6188bc1d17e6a58245e` | ⚠️ Unaudited |
| CompoundV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389995 | `0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40` | ⚠️ Unaudited |
| CompoundV3 | unknown | project_anchor | own_supporting | 0 | optimism | unit-390041 | `0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40` | ⚠️ Unaudited |
| CompoundV3 | unknown | project_anchor | own_supporting | 0 | base | unit-390083 | `0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40` | ⚠️ Unaudited |
| CompoundV3BorrowStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390020 | `0xc276309a6c01cee346ca913db44ce4936ec8b9c5` | ⚠️ Unaudited |
| CompoundV3BorrowStrategy | core_logic | project_anchor | own_supporting | 0 | optimism | unit-390054 | `0x4966d4a8e6f3c463ac7d6374ab05b4555b0eaa68` | ⚠️ Unaudited |
| CompoundV3BorrowStrategy | core_logic | project_anchor | own_supporting | 0 | base | unit-390106 | `0xc276309a6c01cee346ca913db44ce4936ec8b9c5` | ⚠️ Unaudited |
| CompoundV3VesperStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390017 | `0xab890edfc63959a2b3794800b4f68f608b0827c3` | ⚠️ Unaudited |
| CompoundV3VesperStrategy | core_logic | project_anchor | own_supporting | 0 | optimism | unit-390046 | `0x249a626498281ee7f172c307d4b0db4de2a08bbb` | ⚠️ Unaudited |
| CompoundV3VesperStrategy | core_logic | project_anchor | own_supporting | 0 | base | unit-390104 | `0xab890edfc63959a2b3794800b4f68f608b0827c3` | ⚠️ Unaudited |
| CrossChainDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x50361afaafd269c1e9b74866a14579bbc512a41c`; ethereum `0xaa7584c7d375694b4351e520af1097d9a36fcee2`; optimism `0xb6ecf1a552b0f4e520ff2934e60b756055f0c362`; optimism `0xe2adb496684eb9c43b5025f05b50ee492c77f938`; base `0x52edbc52fe7fe1b2e34a9da11b4ec0c323525f07` | ⚠️ Unaudited |
| DebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0x7bf63dc91f68e0adf5692acf17cb632dc17417bb`; optimism `0xae4b310cacd09ca7fd839973c34e514b200150c0`; base `0x24186a4814a826c84ba127f7f24eac6b06c957d0` | ⚠️ Unaudited |
| DepositToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: ethereum `0x6f57db31ae6d62f75297c0f542e1567e0d41650a`; optimism `0x4672edcd34235b3855f2fe8bf1530947c9c8771a`; base `0xff7ad44c16cd9a758af57f2506d5a08af1188540` | ⚠️ Unaudited |
| DyDxFlashLoan | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389999 | `0x1cb204ed801db2030f3c59e9fd8ec078bc604169` | ⚠️ Unaudited |
| ERC4626 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390007 | `0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4` | ⚠️ Unaudited |
| ERC4626 | unknown | project_anchor | own_supporting | 0 | optimism | unit-390056 | `0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4` | ⚠️ Unaudited |
| ERC4626 | unknown | project_anchor | own_supporting | 0 | base | unit-390094 | `0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4` | ⚠️ Unaudited |
| ERC4626Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x32cbc628325eb5a3000d3182c72539c77eb5ff59`; base `0x9e1a7ec69a311af701c071049e24d51ea06d6b4e` | ⚠️ Unaudited |
| ERC4626Strategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390032 | `0xf4868cec8c7e13bba1e3ba65b029449c13ea0543` | ⚠️ Unaudited |
| ERC4626Strategy | core_logic | project_anchor | own_supporting | 0 | optimism | unit-390075 | `0xf4868cec8c7e13bba1e3ba65b029449c13ea0543` | ⚠️ Unaudited |
| ERC4626Strategy | core_logic | project_anchor | own_supporting | 0 | base | unit-390114 | `0xf4868cec8c7e13bba1e3ba65b029449c13ea0543` | ⚠️ Unaudited |
| ERC4626TokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0x28817036451a4de34ac3df935a6762a2a1c60c97`; base `0x2570ecfad71cb5ede0619439f1d0e38f4d175bfd` | ⚠️ Unaudited |
| FeeProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0xa6a4db8d44769c0420742a750fc8a5c4ec077585`; optimism `0xdce663bf14e025f7164d992fe455e6fa88f34a91`; base `0x17446e48196ec6ef40f839a4be6df77ac6610f9c` | ⚠️ Unaudited |
| FlashLoanExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390009 | `0x6e30df848d694f3169f0f1e4fcc68f9a8d7fb2c4` | ⚠️ Unaudited |
| FlashLoanExecutor | unknown | project_anchor | own_supporting | 0 | optimism | unit-390052 | `0x4391ae1acc1c082bae3bb2badb29afb275d35978` | ⚠️ Unaudited |
| FlashLoanExecutor | unknown | project_anchor | own_supporting | 0 | base | unit-390096 | `0x6e30df848d694f3169f0f1e4fcc68f9a8d7fb2c4` | ⚠️ Unaudited |
| FlatDepositFeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x656f1f3a4df83a10afb2bd2ecad8ef4a96c9e4d0`; optimism `0x9924a65521523ce8498da5d10beb82cd36cc4f23` | ⚠️ Unaudited |
| HemiBTCRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7d992cf60870237c74eef68def2ba1f1906fc9e6`; ethereum `0xbcfa47099dcce482e90ebd75a53f4bf012ca30ba` | ⚠️ Unaudited |
| HemiOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x1ad02cd579c7668d50e0003f428701b70a1b42b7`; base `0xbcaba0bac0f4bff8cc8659f2218c6d5324b46061` | ⚠️ Unaudited |
| IbBtcTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656f1f3a4df83a10afb2bd2ecad8ef4a96c9e4d0` | ⚠️ Unaudited |
| InfiniFiAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf974d7435e86db32d8a6d021934712ea51f2fb41` | ⚠️ Unaudited |
| InifniFiAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa24b17e30e88d8ea582a2c41d0d8c9208efe8416`; ethereum `0xe32ad0e671a9ec7cdeec85c6664466efb5548682` | ⚠️ Unaudited |
| LimitOrderExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389996 | `0x1807c62f30269746672d0c0f24a645a573604ef4` | ⚠️ Unaudited |
| LimitOrderExecutor | unknown | project_anchor | own_supporting | 0 | optimism | unit-390042 | `0x1807c62f30269746672d0c0f24a645a573604ef4` | ⚠️ Unaudited |
| LimitOrderExecutor | unknown | project_anchor | own_supporting | 0 | base | unit-390084 | `0x1807c62f30269746672d0c0f24a645a573604ef4` | ⚠️ Unaudited |
| LooprFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6f3fee894abf3bf1d11c1bb50c252df19410559` | ⚠️ Unaudited |
| MainAndFallbackOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0af15b4689cf81a9f1bfc6857d842f2813d3017` | ⚠️ Unaudited |
| MasterOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb2d0baae78f1dc2a8504b471f3cea257b2c3766` | ⚠️ Unaudited |
| MetAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x265714b10b9309a8a7a505dbfa6cb6c39b842309` | ⚠️ Unaudited |
| Morpho | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390034 | `0xf8dea58979a47f226ac46dfe204a7146a8e06892` | ⚠️ Unaudited |
| Morpho | unknown | project_anchor | own_supporting | 0 | optimism | unit-390078 | `0xf8dea58979a47f226ac46dfe204a7146a8e06892` | ⚠️ Unaudited |
| Morpho | unknown | project_anchor | own_supporting | 0 | base | unit-390116 | `0xf8dea58979a47f226ac46dfe204a7146a8e06892` | ⚠️ Unaudited |
| MorphoBorrowStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-390014 | `0x87acd9823c1269ec5a2233fc941b22d747366910` | ⚠️ Unaudited |
| MorphoBorrowStrategy | core_logic | project_anchor | own_supporting | 0 | optimism | unit-390062 | `0x87acd9823c1269ec5a2233fc941b22d747366910` | ⚠️ Unaudited |
| MorphoBorrowStrategy | core_logic | project_anchor | own_supporting | 0 | base | unit-390101 | `0x87acd9823c1269ec5a2233fc941b22d747366910` | ⚠️ Unaudited |
| MorphoFlashLoan | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390008 | `0x6aa69c031170b04e2d6ec02520b6f49d649031b8` | ⚠️ Unaudited |
| MorphoFlashLoan | unknown | project_anchor | own_supporting | 0 | base | unit-390095 | `0x6aa69c031170b04e2d6ec02520b6f49d649031b8` | ⚠️ Unaudited |
| MStableTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffd74ecf5b4eec6eac2624764933fb5f2e2dfd09` | ⚠️ Unaudited |
| NativeTokenGateway | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x186df63e79a7089dbb325567f587ebb5a3743aa6`; optimism `0xd5386d8f78a810c1574f0b7bbbea5cb22a260121`; base `0x7e31e5864eea3913c89f3e035f6b0c0c41a18727` | ⚠️ Unaudited |
| OFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x06ea695b91700071b161a434fed42d1dcbad9f00`; ethereum `0x2e483597c86f7aa81cbc0015ace371c0ff711f77`; ethereum `0x40a544b0d4535a11fc7d1ebfffe904751258eea6`; ethereum `0x5ec16ffe81107ee403f1a95db184c4caf351f7a6`; ethereum `0x82539b0448daed2d7e488155c8364797b8c92aad`; ethereum `0x906cd020ed17e5a82ebc32a7ca070ea27848e9a8`; ethereum `0xa716249b1f06483d08c2073a46e4308b9539ae13`; optimism `0x0b874b240ef6d9d9543dbdeb224cddc4ba71fd0f`; optimism `0x62d2a7d31e8a61a7acd472c98c657e053eb01b96`; optimism `0x92273ca3356379c2fe870fe3805cc5e7ab6d19c6`; optimism `0xb5259c05764468c33c9c36e327caad020a8e5fe1`; optimism `0xb591169e6508983cc6618738cc73c9f09c38de14`; optimism `0xc507ef1f4cd0862980b4bd0d8e56e18606a50d87`; base `0x0dbebfe3ddc80e75618bbbd4753b51757f972222`; base `0x3a6c9bcd6fb76df40d7aa66ced63ad8399f6066b`; base `0x49219d2feca183b26f058388e36bbfb139bf08ec`; base `0x50c580227764b621c0433bb6ab756c781c495ce7`; base `0x781aea37b81f3cf3fb9a97e9568bdaf36d2def3d`; base `0x8a654093e21703afc8d038ff253a3c974c5c2957`; base `0xb174750002068862dfe7df38f974a950f189386a`; base `0xc6fffa0e234e5ec80b8654cb351da90a092f6c95`; base `0xda108077f35278f8c95d70f4fdbb3673f82cf6ca`; base `0xe953b9b391d4bea8c632951c44578f36fbc2b855` | ⚠️ Unaudited |
| OFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x010f0bd6576949e6ac6eea11ed8c535388340e94`; ethereum `0x35ca6624e88898eb909a5b81195ae26a2aa9aa3a`; ethereum `0x8642f7b63824c64453f38da0c0d8e75443431c2d`; ethereum `0x952a7dfa706806f1d744ff150dd231c0616e33d1`; ethereum `0x968563eed04e0289ccc79d7029bfc79f040605f0`; ethereum `0xac6369fa74dc3585a85c5efcd59f869fc01fb90d`; ethereum `0xfc8acf5ef1e8839ec94151740cfed95d7e579afb` | ⚠️ Unaudited |
| Operator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: ethereum `0xc06d6347915f6b5e9dbb53fe17b988b99dbad360`; optimism `0x49219d2feca183b26f058388e36bbfb139bf08ec`; base `0x64b5bb3b7ef0267019fee5b826c60cb9b7609373` | ⚠️ Unaudited |
| PerformanceFeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x073a51b50f49a82345ef8c3ae1bb1cfc0bc74c4a`; ethereum `0xa574a43c881639cb173d355413c187e6d4cdc67f`; optimism `0x757d531f2eb1148f003853b51e3f6971e260be72`; optimism `0x78e7a4e87408462e4212885b96f56184c390b7f8`; base `0x2b77378c70f4b43de2824d217e9ae4910cddf6a8`; base `0x416ab2bd7f1889dcbecc6c4d697292d2709cc01e`; base `0x8c677e63abb1a771f7c2c6c1fe7469231d88fa36` | ⚠️ Unaudited |
| PerformanceFeePolicy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390016 | `0xaa59006ae8dcfc7137a352e6142b39c2dee8622e` | ⚠️ Unaudited |
| PerformanceFeePolicy | unknown | project_anchor | own_supporting | 0 | optimism | unit-390065 | `0xa6798b67e38e180d86474330c0f49e7ef1adab14` | ⚠️ Unaudited |
| PerformanceFeePolicy | unknown | project_anchor | own_supporting | 0 | base | unit-390089 | `0x3078742bacdfecbe6f8d9e77f1aaa1000c074fcf` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1cb2a9e5425a84a93ee1f6a8f98aa3edabafaa27`; optimism `0xaa023c88d8327c63c6e7253f1ffd9193348238d6`; base `0x96a11f928ca1cd5341ffaa773a97bec85c4acf31` | ⚠️ Unaudited |
| PoolRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x01491b3598a90c080b9429f9a86764fa6845ae65`; ethereum `0xb3fa4a7323b86fece91639eb8f312fed4bf01792`; optimism `0x618ec4b1b50f7631ea440d01fb94a89142c00e86`; base `0x2047895ae389f775e9196170aab4ed969f2a2298` | ⚠️ Unaudited |
| PositionRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390003 | `0x3416311bbaed3cf69c494c2badf5ceb4b201e4f9` | ⚠️ Unaudited |
| PositionRegistry | unknown | project_anchor | own_supporting | 0 | optimism | unit-390076 | `0xf67e6579a2b9a83c537353efb0fa5646ac1cc9ea` | ⚠️ Unaudited |
| PositionRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: ethereum `0x1c82257e30a73e268ec578f419f35dbce1ef7435`; ethereum `0x72cf2fd2f18902ec26a50f77635278e6fca605d9`; ethereum `0xe08acc210b828588947cab3ec4dc8d4f4fabd828`; optimism `0x1524760d42e9083a0b04d5fbeafb4991be26cd87`; optimism `0x7bf63dc91f68e0adf5692acf17cb632dc17417bb`; optimism `0x983419398942ca35ab21fe55150a77a068db73e6`; optimism `0xf9bd6b94c11e3a6d8bb412296de27bca367edd2d`; base `0x0d19983d8259bbf089b59f8af5f1d452e17890ce`; base `0x15f2450c5b3f9ef15894ddad81a9c3e1d0e14896`; base `0x823feb265853bf21b404932bb23d44c1734c92f4`; base `0xad42b83c53dd7cffcab35a5e4d4f5db313c81562`; base `0xe08acc210b828588947cab3ec4dc8d4f4fabd828`; base `0xe2adb496684eb9c43b5025f05b50ee492c77f938` | ⚠️ Unaudited |
| PositionRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-390103 | `0xa3ceec1740090b303a9682cd43f1f14d7bac4da2` | ⚠️ Unaudited |
| PriceProvidersAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a21ec8ee93971d4b4093c0895fd841c7169a23` | ⚠️ Unaudited |
| ProtocolTieredFeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x59633b825d4aa12cb0907616746d76dd88f76f40`; ethereum `0xd0aab6695b8ad921baa1ac8821e54d062c400e06`; optimism `0x8ffc95039a037dd3d597125339a8b96c08d6dc81`; optimism `0xeb1df74c87875be3eef1a2407aa906665bfa5684`; base `0x669954e6b63b2156e120f815d0b734589153f334`; base `0x9a1ba8f5ee3c1ac0d724c4b55d4b3cac35c9ddd5`; base `0xdc404f7758281c8894970d9ee2dc39526e52a959` | ⚠️ Unaudited |
| ProtocolTieredFeePolicy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390030 | `0xeb1df74c87875be3eef1a2407aa906665bfa5684` | ⚠️ Unaudited |
| ProtocolTieredFeePolicy | unknown | project_anchor | own_supporting | 0 | optimism | unit-390072 | `0xe0af15b4689cf81a9f1bfc6857d842f2813d3017` | ⚠️ Unaudited |
| ProtocolTieredFeePolicy | unknown | project_anchor | own_supporting | 0 | base | unit-390088 | `0x2f14c835a2e0db38b0db87920a12d3b371080894` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x262b12c5701ddf1edac2870ad6338d23d5853bdd`; optimism `0xa83cc0994e255d8c4e4b1829d893ade92d0c3f9a`; base `0x3416311bbaed3cf69c494c2badf5ceb4b201e4f9` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-390019 | `0xc0bc99efeb9039493e888900a81ed30a3468370e` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-390026 | `0xceb64bcdbee34f5d390d95f501d54ce8305c83e8` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-390035 | `0xfca22bb50375f172692303deb373c21378ddbaaa` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | optimism | unit-390066 | `0xc0bc99efeb9039493e888900a81ed30a3468370e` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | optimism | unit-390070 | `0xceb64bcdbee34f5d390d95f501d54ce8305c83e8` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | optimism | unit-390080 | `0xfca22bb50375f172692303deb373c21378ddbaaa` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | base | unit-390105 | `0xc0bc99efeb9039493e888900a81ed30a3468370e` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | base | unit-390109 | `0xceb64bcdbee34f5d390d95f501d54ce8305c83e8` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | base | unit-390117 | `0xfca22bb50375f172692303deb373c21378ddbaaa` | ⚠️ Unaudited |
| ProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1cacd2d64edccd5df47824a0b85a1dacca4b7102`; optimism `0xc38aaff68a81dff9f809b03f9cba84e9aed821ba`; base `0x67799bd3b0abaf070e5ea94a5bc5f7d9c4a401e1` | ⚠️ Unaudited |
| PullOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f278b7eff04add48ff81ae1a01cbc178b3dd351` | ⚠️ Unaudited |
| PythMainnetPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c2d5b1e7d7be588389bdb94138cc37dc014e85c` | ⚠️ Unaudited |
| Quoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: ethereum `0x5f6c71f41232a1aeae2623c4ac7b111c38406834`; optimism `0x077f89c0fc4259b8e2abc0fe6eec655eb2da87d5`; base `0x5ea5c6c661936de3f2461c50d3f01157b14af671` | ⚠️ Unaudited |
| RecurringSwapExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390004 | `0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5` | ⚠️ Unaudited |
| RecurringSwapExecutor | unknown | project_anchor | own_supporting | 0 | optimism | unit-390049 | `0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5` | ⚠️ Unaudited |
| RecurringSwapExecutor | unknown | project_anchor | own_supporting | 0 | base | unit-390090 | `0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5` | ⚠️ Unaudited |
| RedstoneMainnetPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2e597e6c827a8527413c19065ec0725e03eeac6e`; ethereum `0x7efc392f66af226903f8952dce674f15c24b560a` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: ethereum `0x70845de4d1cc8fa169c42574e329a298ebcf44d8`; optimism `0x0f482c4cf499fd57cf643c350a7261b403be865c` | ⚠️ Unaudited |
| RoutedSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f156189a3cd28dfc8fb7bbbace58f98f09c0bb3` | ⚠️ Unaudited |
| SiUsdTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x37d8c0afeef48aa9d925475cf6c73e4d8c74d931`; ethereum `0x3c672d92b547ac60ede36640aebd312d868ff572`; ethereum `0xc6c05aec2f1c353d3a9d8d543fa7dc756806c477` | ⚠️ Unaudited |
| SmartFarmingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2b70e663ba015c59556b6186822d90159d5f7c16`; ethereum `0xb8d187ce5c5b172984cd1544d1679eacaf107aec`; optimism `0x4f2acd70a590736bb6185a7aab503971e61bd83e`; optimism `0xfc51f8edc0f1bc897ba1e0909aa48f04cbeb08bf`; base `0x4232f5388fdf479c3a1a2b7816f135c618682662` | ⚠️ Unaudited |
| StableCoinProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe55744ebb196d0e4ddea70204142eaf517ef005a` | ⚠️ Unaudited |
| SwapAggregator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390021 | `0xc67abc3fba59860b2dbf77fd1cf59d5455d6ed14` | ⚠️ Unaudited |
| SwapAggregator | unknown | project_anchor | own_supporting | 0 | optimism | unit-390060 | `0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa` | ⚠️ Unaudited |
| SwapAggregator | unknown | project_anchor | own_supporting | 0 | base | unit-390099 | `0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa` | ⚠️ Unaudited |
| SwapOrdersFillerUsingUniV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9614bfc8e5350e559a9a02eab4574d5b332fc87f` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9a02ae403d6ae970748b889bb4e36fd89ae7e5eb`; optimism `0xb908cadb1906b44c3d163486d8ceb9b4370c476e` | ⚠️ Unaudited |
| SwapperUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xbde032fdf114b4005e5320881b96246347d2b2d6`; ethereum `0xce3831814de36d631f6f0a6ba7d4622afb088639`; optimism `0xc9ffa23308d02dc9cffe955fcce5ffd117a03b46` | ⚠️ Unaudited |
| Synth | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389994 | `0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7` | ⚠️ Unaudited |
| Synth | unknown | project_anchor | own_supporting | 0 | optimism | unit-390039 | `0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7` | ⚠️ Unaudited |
| Synth | unknown | project_anchor | own_supporting | 0 | base | unit-390082 | `0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7` | ⚠️ Unaudited |
| SyntheticToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: ethereum `0xd8a7ceccecbeded9f5350f4ca8faf55ab92f3390`; optimism `0x9a41fde326d3de75b4672f8e9315dbcd56d128d7`; base `0xe6c2959d85a4c6d6bd202203b7c3a15294ec6544` | ⚠️ Unaudited |
| SynthStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-389998 | `0x19b72d6351f080d8a002bfde6595c09112867c37` | ⚠️ Unaudited |
| SynthStrategy | core_logic | project_anchor | own_supporting | 0 | optimism | unit-390055 | `0x5f0a841ddb55b2a903bc3204e27e247a097a1e8f` | ⚠️ Unaudited |
| SynthStrategy | core_logic | project_anchor | own_supporting | 0 | base | unit-390085 | `0x19b72d6351f080d8a002bfde6595c09112867c37` | ⚠️ Unaudited |
| TBYOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ce811b3ee51344bf9c2d3595dae56960f9b4a3` | ⚠️ Unaudited |
| ToVerify | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x5b84eaafb31672f5f264d258561710675b028ead`; optimism `0x9480f9201d0f0e76cff1c219b8006ba6e7b61631` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6b17bfb2fca95ecace2fe09cc3b3d0c4deadda6f`; base `0x6ca3c759eacd760286d6ade2bdc9c04434beddca` | ⚠️ Unaudited |
| Treasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1425188a9c286ad3cce85eef40d93ad1259bea5d`; optimism `0xc04bcdf8ffb0c126a0fa5229e8db65771aa1bd7c`; base `0xcb6dafb36b40c9c7371108f66a5184ff3b01ee0d` | ⚠️ Unaudited |
| VelodromeSlipstreamAdapter | unknown | project_anchor | own_supporting | 0 | optimism | unit-390047 | `0x2a643a0c3d942b73945588573ca55a3618607068` | ⚠️ Unaudited |
| VelodromeSlipstreamAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f2acd70a590736bb6185a7aab503971e61bd83e` | ⚠️ Unaudited |
| Vesper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390023 | `0xccf1f2ad7137347daa5815048c99952fb9639f3c` | ⚠️ Unaudited |
| Vesper | unknown | project_anchor | own_supporting | 0 | optimism | unit-390068 | `0xccf1f2ad7137347daa5815048c99952fb9639f3c` | ⚠️ Unaudited |
| Vesper | unknown | project_anchor | own_supporting | 0 | base | unit-390107 | `0xccf1f2ad7137347daa5815048c99952fb9639f3c` | ⚠️ Unaudited |
| VesperVotingPowerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd744320abd3bd4445dc3c90c889391bd454d5b30` | ⚠️ Unaudited |
| VesperVotingPowerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x707c243b59fedf29730cd3d1025fbeeea0412075` | ⚠️ Unaudited |
| VetroArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x359902b1e60574e56248ecdc57c1df1f20982914`; ethereum `0x942fc516b6ad30e8b6c55d3ee00a93b916b800f1` | ⚠️ Unaudited |
| VspMainnetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ff907f877e92ef39cdfba6d0db73e9e2ac0f538`; ethereum `0xc9ffa23308d02dc9cffe955fcce5ffd117a03b46` | ⚠️ Unaudited |
| VUSDArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c17cc10ddc5b352f7c6c5dda33b07769bff310a` | ⚠️ Unaudited |
| ZeroedFeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x02aafc2e3d647643622640a1da4fdf4fcf951e1b`; optimism `0x2dd5869c3d7d251e1e9a452bd7aa2e11c61142a8`; base `0x4661407fc224e5432d7f528a20ef8906e453a8f3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (118)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0078253265ca73eb2e81d20920365995f63f7bf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389993 | `0x05495f13b69a0bcf5e623a6a5e3de31e58106589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a8adb2900a0d1b0661d4c759efb06016425a420` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dba141eb855ea62a951066fb8c5fb1ebe7ec890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1113e626282c6a87e568f244a00513e0bf7f1047` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390000 | `0x1f2cb3cbe35ebd871b61d7d406e23c76f17b2ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x206b88b20d9b2709153ab596add007b21124eb26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x249a626498281ee7f172c307d4b0db4de2a08bbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25d80c30884cba6cd6e5d801ac74ca41789f8b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a643a0c3d942b73945588573ca55a3618607068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e372b09201b58fe83be9ef2eba1b1d0f9c73a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x377f0a6f7c64cb5ce5004c25892bc4127ca2b2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b98566f90119b87205ee64cb9f2da37e7b3fefa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c8ff08ad701cd411392bc99ad32b6239218c42a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d4ccdb04ea20681a1123a7127547edcfdf72fc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390006 | `0x3f6da0a118b3a0ddfdbab4690cc96b2cf73b488d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4391ae1acc1c082bae3bb2badb29afb275d35978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48c7f02414bb98adeebea86f8b2c014b1942f470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x491aab520d59f20239bdf3bcbb4cc801b94e9515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4966d4a8e6f3c463ac7d6374ab05b4555b0eaa68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ac736761cad443931e3f8f2ec54234e8c984a99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f0a841ddb55b2a903bc3204e27e247a097a1e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7094d850782bec83b2047994860fd8193b1df4e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390012 | `0x78002d68a97990d42f42da5e4f6c57a2908e3f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78d791cd9506042715c1305c8ebbba95a1ad9762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d4dfad5ceaffe863fc9dcb5fcb4f183451aee36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9585d3706758b251e37541d808e3ea11ead5b819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x965498a6888a60c2e799679cedc64e0890890e40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9691612836c3cf2268c73429f3cbaef371cdd130` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390015 | `0x98fba561678720180d51e3fc8e4151038433fad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3ae3ad4b6c580f8d28aa67b7502a7fe4e89dce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa464bc3760d0fa7426eefbfd76117f1d014d0325` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6798b67e38e180d86474330c0f49e7ef1adab14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb5c18708ca81782133ed995b26131f96bb9c394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc78cbc990cc75db5be1cc80511747fcc9c4b8ff0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390025 | `0xce5bc7ea716f258a8122e1fb254ca12b18b3d206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfc7ed8003b2e21098fdce4c125bbf4084b0bdff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390027 | `0xd7be1c97c3652909da8f1d83f9444c3f9722cd96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390029 | `0xe8c3cc9e444ebaaa6539272494b2da98775c4ead` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390031 | `0xee156d8ea7b96a5524ccc3cf9283ab85e80e9534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf67e6579a2b9a83c537353efb0fa5646ac1cc9ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa1481f415ae24cb664b5839a3ff3c1d390f6ebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x023dcf516c349b615120ee731add909645ec35fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390037 | `0x05495f13b69a0bcf5e623a6a5e3de31e58106589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x173dbe981315e157acb135580284d0d4611a54cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390044 | `0x1f2cb3cbe35ebd871b61d7d406e23c76f17b2ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2182c3e3b7a4399f69ea8da7c52e9d080e9c43ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2743881765bcf2b6b0116a11b15e5f5b5876529f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x35d2c0949c6f3e2ac43b50cea6feacc7180e7214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x35f27852d149d992b474e2290b872e4b4d9e8f58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390051 | `0x3f6da0a118b3a0ddfdbab4690cc96b2cf73b488d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x520b4f880a56ec80410079c0ca86e42e35fd4999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5a64e1b924aa8c55d44b239d0a83ab5de60535ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390058 | `0x78002d68a97990d42f42da5e4f6c57a2908e3f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x884c34b865907648ffa2d6fdb8576291f3ecedc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8f6cfbf5aff373f0ad7e0869c348ec934950a5b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8fed5650ccf8462fbd5c537c3845704e278c313e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x963b5bc11950ab4852e9c60992ec21827ebd0a34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390064 | `0x98fba561678720180d51e3fc8e4151038433fad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xad42b83c53dd7cffcab35a5e4d4f5db313c81562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0adaf48e2a665a7378d457a50c2c37093f7982b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc139208406aaab5c44e17c77ccd74b58390ca773` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390069 | `0xce5bc7ea716f258a8122e1fb254ca12b18b3d206` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390071 | `0xd7be1c97c3652909da8f1d83f9444c3f9722cd96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390073 | `0xe8c3cc9e444ebaaa6539272494b2da98775c4ead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe8f4d8cf2cc7fd70d048b6188bc1d17e6a58245e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390074 | `0xee156d8ea7b96a5524ccc3cf9283ab85e80e9534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf08923f138a2a86ffcedcd5c08fe0b4cc823eb4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03b8297b6d7d4511aba83f6c43a85a1ee3291023` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390081 | `0x05495f13b69a0bcf5e623a6a5e3de31e58106589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0eef042ee6460fef85cb5e9f91c9c1d93a2ed8bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x12b3ab137324f1b841d7d18983ac3c2d813e728a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390086 | `0x1f2cb3cbe35ebd871b61d7d406e23c76f17b2ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x22ced73d821371d017bff873d0c71b41262b34af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x260035307d989400546e9c7e15acf9c2cc014b10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c0731664a526f6200e7e9f5becb2dc0bf237f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e40489f8e56bbe3ce641f64369c5ff808441634` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x39b51752ba5d6d716305f2aece3a2b317b180cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a1829d5c5a63bd430f9783893dc38d9e470a5dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d0dbbf17960c0660798ed0f8a4c60cb2fc7b64a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390092 | `0x3f6da0a118b3a0ddfdbab4690cc96b2cf73b488d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x55ec967945f2173b2ebc57771ab0383f61c74136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56534ad7771950d458746c2c2df77fa24e056d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5811306606d691ef60aeada85c0e2db0fdc51adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5fd732ec7de891c213f89133a941524e251d7291` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62e7ea5d57201ef87027fc1d57fa75f2aa2979a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x640aeac96a8af95af9b97af70c342d979d7a8e82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x66541a18548a28e585aa1a56384bfaad48dd9059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6bdf671d8cdd970785ee01a4819293b3a9fa0e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x760c6622e94868f4e6df8e8d25c9c0c8dc4ba3b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390098 | `0x78002d68a97990d42f42da5e4f6c57a2908e3f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8a81a00a8630e07e0f69e55909f87632d78a7c90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8f156189a3cd28dfc8fb7bbbace58f98f09c0bb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x910a7c7d31674e50ff81ef880782e1a52be604f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x968563eed04e0289ccc79d7029bfc79f040605f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390102 | `0x98fba561678720180d51e3fc8e4151038433fad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3f7e631b0a8f69a1539294f5e9234d8439af155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa6860cf2e4965d514676afddee534497b3299980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa991d09cb8233650b8f57166c233764a38965b58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb0bb44f501fc5d45861086a49361df21164bf644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4386e90adde576393695251b7ff5b7e54605634` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb6a8b5ecf786b1b0256c56fe6f3c79a9ccb7f7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb728b8bb6375dbfe387c17875a4c0df9f0edc8b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb844841bd2a8c4b0575a4dfbbf64603df61b3208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xba734e8ed724357ec64b1c2fb6c960dc7f342664` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbaade84ee08207d0ea444e98db33ede39f039c9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390108 | `0xce5bc7ea716f258a8122e1fb254ca12b18b3d206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1b5085952cf142912e01bd9e9da1ef1705f8d56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390110 | `0xd7be1c97c3652909da8f1d83f9444c3f9722cd96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd81a8b1611f4cd5387a52ae3d4da9fba06a6436d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb6350232c9e5ca7e0a66ec7163fa1fbda5a909d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0f6958aa5a60986995eeb30cfdcfa04e58f00c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe56a3843c66fdf06c68e660829855e62d40e2697` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390112 | `0xe8c3cc9e444ebaaa6539272494b2da98775c4ead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9db74fb210cd51be4ab9d56f82eb2caf481ecb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390113 | `0xee156d8ea7b96a5524ccc3cf9283ab85e80e9534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf71b9b5e036ba3392e0a6d3be72ff3b16a9bb462` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 164
- Live contracts: 13
- Unknown liveness contracts: 151
- Source-verified contracts: 88
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate auto own=8, candidate review=23, contamination review=25, exact address book overlap=5, source verified unclassified=27, unverified unclassified=76

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate auto own | PositionRegistry<br>`0x3416311bbaed3cf69c494c2badf5ceb4b201e4f9` | project_anchor | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate auto own | PositionRegistry<br>`0xe08acc210b828588947cab3ec4dc8d4f4fabd828` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate auto own | PositionRegistry<br>`0x7bf63dc91f68e0adf5692acf17cb632dc17417bb` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate auto own | PositionRegistry<br>`0xf67e6579a2b9a83c537353efb0fa5646ac1cc9ea` | project_anchor | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate auto own | PositionRegistry<br>`0xf9bd6b94c11e3a6d8bb412296de27bca367edd2d` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate auto own | PositionRegistry<br>`0x823feb265853bf21b404932bb23d44c1734c92f4` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate auto own | PositionRegistry<br>`0xa3ceec1740090b303a9682cd43f1f14d7bac4da2` | project_anchor | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate auto own | PositionRegistry<br>`0xe2adb496684eb9c43b5025f05b50ee492c77f938` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | ApyTieredFeePolicy<br>`0xcb6dafb36b40c9c7371108f66a5184ff3b01ee0d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | ERC1967Proxy<br>`0x023dcf516c349b615120ee731add909645ec35fb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | ERC1967Proxy<br>`0x2182c3e3b7a4399f69ea8da7c52e9d080e9c43ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | HemiTransparentProxy<br>`0xfd07a07505f73c63a6f8ff03b7474a90c0b3c5ce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | HemiTransparentProxy<br>`0xffdf74b401dcaff0b051fcb8ced890663fc042e0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | Swapper<br>`0x9a02ae403d6ae970748b889bb4e36fd89ae7e5eb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | SwapperUpgrader<br>`0xbde032fdf114b4005e5320881b96246347d2b2d6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | SwapperUpgrader<br>`0xce3831814de36d631f6f0a6ba7d4622afb088639` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | TransparentUpgradeableProxy<br>`0xbcfa47099dcce482e90ebd75a53f4bf012ca30ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | ApyTieredFeePolicy<br>`0x3d4ccdb04ea20681a1123a7127547edcfdf72fc3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | ApyTieredFeePolicy<br>`0x515e8bf34b7c300bf1d173e434a47d564c4c9931` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | ApyTieredFeePolicy<br>`0xffd74ecf5b4eec6eac2624764933fb5f2e2dfd09` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | FlatDepositFeePolicy<br>`0x656f1f3a4df83a10afb2bd2ecad8ef4a96c9e4d0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | FlatDepositFeePolicy<br>`0x9924a65521523ce8498da5d10beb82cd36cc4f23` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | HemiOFT<br>`0x1ad02cd579c7668d50e0003f428701b70a1b42b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | Swapper<br>`0xb908cadb1906b44c3d163486d8ceb9b4370c476e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | SwapperUpgrader<br>`0xc9ffa23308d02dc9cffe955fcce5ffd117a03b46` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | TransparentUpgradeableProxy<br>`0x5b84eaafb31672f5f264d258561710675b028ead` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | ApyTieredFeePolicy<br>`0x5ef26de6aa5a944deac0e69115bdda3ba6016faa` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | HemiOFT<br>`0xbcaba0bac0f4bff8cc8659f2218c6d5324b46061` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | ToVerify<br>`0x6ca3c759eacd760286d6ade2bdc9c04434beddca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | TransparentUpgradeableProxy<br>`0x6b17bfb2fca95ecace2fe09cc3b3d0c4deadda6f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| candidate review | ZeroedFeePolicy<br>`0x4661407fc224e5432d7f528a20ef8906e453a8f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | AlusdTokenMainnetOracle<br>`0xcc7e22e8c8fa860ff6cd7a90c34e466ee0bd950c` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | ATokenOracle<br>`0x3078742bacdfecbe6f8d9e77f1aaa1000c074fcf` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | BTCPeggedTokenOracle<br>`0xe2a466df120fb847520763461d99c22ea5ba8cc8` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | ERC4626Adapter<br>`0x32cbc628325eb5a3000d3182c72539c77eb5ff59` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | ERC4626TokenOracle<br>`0x28817036451a4de34ac3df935a6762a2a1c60c97` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | IbBtcTokenOracle<br>`0x656f1f3a4df83a10afb2bd2ecad8ef4a96c9e4d0` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | MainAndFallbackOracle<br>`0xe0af15b4689cf81a9f1bfc6857d842f2813d3017` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | MasterOracle<br>`0xdb2d0baae78f1dc2a8504b471f3cea257b2c3766` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | MStableTokenOracle<br>`0xffd74ecf5b4eec6eac2624764933fb5f2e2dfd09` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | PerformanceFeePolicy<br>`0x073a51b50f49a82345ef8c3ae1bb1cfc0bc74c4a` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | PriceProvidersAggregator<br>`0x32a21ec8ee93971d4b4093c0895fd841c7169a23` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | ProtocolTieredFeePolicy<br>`0x59633b825d4aa12cb0907616746d76dd88f76f40` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | PullOracle<br>`0x1f278b7eff04add48ff81ae1a01cbc178b3dd351` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | PythMainnetPriceProvider<br>`0x7c2d5b1e7d7be588389bdb94138cc37dc014e85c` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | RedstoneMainnetPriceProvider<br>`0x2e597e6c827a8527413c19065ec0725e03eeac6e` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | RoutedSwapper<br>`0x8f156189a3cd28dfc8fb7bbbace58f98f09c0bb3` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | SiUsdTokenOracle<br>`0x37d8c0afeef48aa9d925475cf6c73e4d8c74d931` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | SmartFarmingManager<br>`0x2b70e663ba015c59556b6186822d90159d5f7c16` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | StableCoinProvider<br>`0xe55744ebb196d0e4ddea70204142eaf517ef005a` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | TBYOracle<br>`0x21ce811b3ee51344bf9c2d3595dae56960f9b4a3` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | VspMainnetOracle<br>`0x4ff907f877e92ef39cdfba6d0db73e9e2ac0f538` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | VelodromeSlipstreamAdapter<br>`0x2a643a0c3d942b73945588573ca55a3618607068` | project_anchor | unknown | live | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | ZeroedFeePolicy<br>`0x02aafc2e3d647643622640a1da4fdf4fcf951e1b` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | ERC4626TokenOracle<br>`0x2570ecfad71cb5ede0619439f1d0e38f4d175bfd` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| contamination review | ProtocolTieredFeePolicy<br>`0x2f14c835a2e0db38b0db87920a12d3b371080894` | project_anchor | unknown | live | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| exact address book overlap | PerformanceFeePolicy<br>`0xaa59006ae8dcfc7137a352e6142b39c2dee8622e` | project_anchor | unknown | live | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| exact address book overlap | ProtocolTieredFeePolicy<br>`0xeb1df74c87875be3eef1a2407aa906665bfa5684` | project_anchor | unknown | live | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| exact address book overlap | PerformanceFeePolicy<br>`0xa6798b67e38e180d86474330c0f49e7ef1adab14` | project_anchor | unknown | live | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| exact address book overlap | ProtocolTieredFeePolicy<br>`0xe0af15b4689cf81a9f1bfc6857d842f2813d3017` | project_anchor | unknown | live | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| exact address book overlap | PerformanceFeePolicy<br>`0x3078742bacdfecbe6f8d9e77f1aaa1000c074fcf` | project_anchor | unknown | live | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | Agent<br>`0x46e6ade9b7b59e151c5bcc877c9b90d50021553a` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | Agent<br>`0x4762e77b8f448f0755eca2b6be6cbcd4db0f28a9` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | Agent<br>`0xb01f1a5041e6d2a6499e0cff1ee5cb3e65db6fa0` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | AlusdTokenMainnetOracle<br>`0xe002c5c9ad8f533c17c25df21c453f31849e0ed9` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | CapForStETH<br>`0x884c34b865907648ffa2d6fdb8576291f3ecedc6` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | CapForStETH<br>`0x8f6cfbf5aff373f0ad7e0869c348ec934950a5b8` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | CapForStETH<br>`0xe8f4d8cf2cc7fd70d048b6188bc1d17e6a58245e` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | CrossChainDispatcher<br>`0xaa7584c7d375694b4351e520af1097d9a36fcee2` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | HemiBTCRateProvider<br>`0x7d992cf60870237c74eef68def2ba1f1906fc9e6` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | RedstoneMainnetPriceProvider<br>`0x7efc392f66af226903f8952dce674f15c24b560a` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | SiUsdTokenOracle<br>`0x3c672d92b547ac60ede36640aebd312d868ff572` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | SiUsdTokenOracle<br>`0xc6c05aec2f1c353d3a9d8d543fa7dc756806c477` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | VesperVotingPowerV2<br>`0xd744320abd3bd4445dc3c90c889391bd454d5b30` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | VesperVotingPowerV3<br>`0x707c243b59fedf29730cd3d1025fbeeea0412075` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | VetroArbitrage<br>`0x359902b1e60574e56248ecdc57c1df1f20982914` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | VetroArbitrage<br>`0x942fc516b6ad30e8b6c55d3ee00a93b916b800f1` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | VspMainnetOracle<br>`0xc9ffa23308d02dc9cffe955fcce5ffd117a03b46` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | VUSDArbitrage<br>`0x1c17cc10ddc5b352f7c6c5dda33b07769bff310a` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | CrossChainDispatcher<br>`0xe2adb496684eb9c43b5025f05b50ee492c77f938` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | PerformanceFeePolicy<br>`0x78e7a4e87408462e4212885b96f56184c390b7f8` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | ProtocolTieredFeePolicy<br>`0xeb1df74c87875be3eef1a2407aa906665bfa5684` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | SmartFarmingManager<br>`0x4f2acd70a590736bb6185a7aab503971e61bd83e` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | ToVerify<br>`0x9480f9201d0f0e76cff1c219b8006ba6e7b61631` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | ZeroedFeePolicy<br>`0x2dd5869c3d7d251e1e9a452bd7aa2e11c61142a8` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | PerformanceFeePolicy<br>`0x8c677e63abb1a771f7c2c6c1fe7469231d88fa36` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | ProtocolTieredFeePolicy<br>`0xdc404f7758281c8894970d9ee2dc39526e52a959` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| source verified unclassified | VelodromeSlipstreamAdapter<br>`0x4f2acd70a590736bb6185a7aab503971e61bd83e` | non_address_book | unknown | unknown | verified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x0078253265ca73eb2e81d20920365995f63f7bf8` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x1113e626282c6a87e568f244a00513e0bf7f1047` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x206b88b20d9b2709153ab596add007b21124eb26` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x25d80c30884cba6cd6e5d801ac74ca41789f8b2d` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x2e372b09201b58fe83be9ef2eba1b1d0f9c73a25` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x377f0a6f7c64cb5ce5004c25892bc4127ca2b2ec` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x3b98566f90119b87205ee64cb9f2da37e7b3fefa` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x3c8ff08ad701cd411392bc99ad32b6239218c42a` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x48c7f02414bb98adeebea86f8b2c014b1942f470` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x4ac736761cad443931e3f8f2ec54234e8c984a99` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x7094d850782bec83b2047994860fd8193b1df4e1` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x9585d3706758b251e37541d808e3ea11ead5b819` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x965498a6888a60c2e799679cedc64e0890890e40` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x9691612836c3cf2268c73429f3cbaef371cdd130` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xa3ae3ad4b6c580f8d28aa67b7502a7fe4e89dce3` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xa464bc3760d0fa7426eefbfd76117f1d014d0325` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xbb5c18708ca81782133ed995b26131f96bb9c394` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xc78cbc990cc75db5be1cc80511747fcc9c4b8ff0` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xcfc7ed8003b2e21098fdce4c125bbf4084b0bdff` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x023dcf516c349b615120ee731add909645ec35fb` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x173dbe981315e157acb135580284d0d4611a54cc` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x2182c3e3b7a4399f69ea8da7c52e9d080e9c43ad` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x2743881765bcf2b6b0116a11b15e5f5b5876529f` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x35d2c0949c6f3e2ac43b50cea6feacc7180e7214` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x35f27852d149d992b474e2290b872e4b4d9e8f58` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x520b4f880a56ec80410079c0ca86e42e35fd4999` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x5a64e1b924aa8c55d44b239d0a83ab5de60535ad` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x884c34b865907648ffa2d6fdb8576291f3ecedc6` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x8f6cfbf5aff373f0ad7e0869c348ec934950a5b8` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x8fed5650ccf8462fbd5c537c3845704e278c313e` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x963b5bc11950ab4852e9c60992ec21827ebd0a34` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xad42b83c53dd7cffcab35a5e4d4f5db313c81562` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xb0adaf48e2a665a7378d457a50c2c37093f7982b` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xc139208406aaab5c44e17c77ccd74b58390ca773` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xe8f4d8cf2cc7fd70d048b6188bc1d17e6a58245e` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xf08923f138a2a86ffcedcd5c08fe0b4cc823eb4e` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x03b8297b6d7d4511aba83f6c43a85a1ee3291023` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x0eef042ee6460fef85cb5e9f91c9c1d93a2ed8bf` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x12b3ab137324f1b841d7d18983ac3c2d813e728a` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x22ced73d821371d017bff873d0c71b41262b34af` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x260035307d989400546e9c7e15acf9c2cc014b10` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x2c0731664a526f6200e7e9f5becb2dc0bf237f29` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x2e40489f8e56bbe3ce641f64369c5ff808441634` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x39b51752ba5d6d716305f2aece3a2b317b180cd5` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x3a1829d5c5a63bd430f9783893dc38d9e470a5dd` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x3d0dbbf17960c0660798ed0f8a4c60cb2fc7b64a` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x55ec967945f2173b2ebc57771ab0383f61c74136` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x56534ad7771950d458746c2c2df77fa24e056d78` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x5811306606d691ef60aeada85c0e2db0fdc51adb` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x5fd732ec7de891c213f89133a941524e251d7291` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x62e7ea5d57201ef87027fc1d57fa75f2aa2979a1` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x640aeac96a8af95af9b97af70c342d979d7a8e82` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x66541a18548a28e585aa1a56384bfaad48dd9059` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x6bdf671d8cdd970785ee01a4819293b3a9fa0e81` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x760c6622e94868f4e6df8e8d25c9c0c8dc4ba3b7` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x8a81a00a8630e07e0f69e55909f87632d78a7c90` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x8f156189a3cd28dfc8fb7bbbace58f98f09c0bb3` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x910a7c7d31674e50ff81ef880782e1a52be604f3` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x968563eed04e0289ccc79d7029bfc79f040605f0` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xa3f7e631b0a8f69a1539294f5e9234d8439af155` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xa6860cf2e4965d514676afddee534497b3299980` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xa991d09cb8233650b8f57166c233764a38965b58` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xb0bb44f501fc5d45861086a49361df21164bf644` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xb4386e90adde576393695251b7ff5b7e54605634` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xb6a8b5ecf786b1b0256c56fe6f3c79a9ccb7f7ec` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xb728b8bb6375dbfe387c17875a4c0df9f0edc8b0` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xb844841bd2a8c4b0575a4dfbbf64603df61b3208` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xba734e8ed724357ec64b1c2fb6c960dc7f342664` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xbaade84ee08207d0ea444e98db33ede39f039c9d` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xd1b5085952cf142912e01bd9e9da1ef1705f8d56` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xd81a8b1611f4cd5387a52ae3d4da9fba06a6436d` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xdb6350232c9e5ca7e0a66ec7163fa1fbda5a909d` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xe0f6958aa5a60986995eeb30cfdcfa04e58f00c2` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xe56a3843c66fdf06c68e660829855e62d40e2697` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xe9db74fb210cd51be4ab9d56f82eb2caf481ecb1` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xf71b9b5e036ba3392e0a6d3be72ff3b16a9bb462` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit_Report-SWA_REVIEW.pdf](https://3883616881-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqoKcdbT2jNpuAI4A3RLd%2Fuploads%2FWSqlBOwoHAfOb2almafO%2FAudit_Report-SWA_REVIEW.pdf) | SWA | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Audit_Report_Odyssey_REVIEW.pdf](https://3883616881-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqoKcdbT2jNpuAI4A3RLd%2Fuploads%2FfUYd8p9pJEcVmjIGTTJ6%2FAudit_Report_Odyssey_REVIEW.pdf) | Unknown | Audit | 2024-07 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 18 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17714] Audit_Report-SWA_REVIEW.pdf — no match: Scope section lists repository 'bloqpriv/odyssey-contracts/src' with commit hash. Contract names extracted from code sections in findings.
- [17715] Audit_Report_Odyssey_REVIEW.pdf — matched: Extracted contract names from the 'Target' section and findings code sections. The audit date is the end date of the engagement (July 17, 2024) as stated in the Executive Summary.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit_Report-SWA_REVIEW.pdf | SwapAggregator | ambiguous — not counted | SwapAggregator (alternative) `0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa` — deployed 2025-01-29 23:32:11+03 — liveness: live (code_present_context)<br>SwapAggregator (alternative) `0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa` — deployed 2025-01-29 23:26:17+03 — liveness: live (code_present_context)<br>SwapAggregator (alternative) `0xc67abc3fba59860b2dbf77fd1cf59d5455d6ed14` — deployed 2025-01-29 23:13:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report-SWA_REVIEW.pdf | Strategy | unmatched — not counted | — | Code sections in findings RES-02 and RES-03: src/strategies/Strategy.sol#L254-L270 and #L298 | no |
| Audit_Report_Odyssey_REVIEW.pdf | AjnaBorrowStrategy | ambiguous — not counted | AjnaBorrowStrategy (alternative) `0xde433f614e50d7c0b21fd00a3d625b000c9c9736` — deployed 2025-01-29 23:29:13+03 — liveness: live (current_address_book_code)<br>AjnaBorrowStrategy (alternative) `0x0dba141eb855ea62a951066fb8c5fb1ebe7ec890` — deployed 2025-01-29 23:45:23+03 — liveness: live (current_address_book_code)<br>AjnaBorrowStrategy (alternative) `0xde433f614e50d7c0b21fd00a3d625b000c9c9736` — deployed 2025-01-29 23:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | CallOrderExecutor | ambiguous — not counted | CallOrderExecutor (alternative) `0xf70acacfb981c8be2ddc48093f4042b88f0da5d9` — deployed 2025-02-19 00:17:57+03 — liveness: live (current_address_book_code)<br>CallOrderExecutor (alternative) `0xf70acacfb981c8be2ddc48093f4042b88f0da5d9` — deployed 2025-02-19 00:04:07+03 — liveness: live (current_address_book_code)<br>CallOrderExecutor (alternative) `0xf70acacfb981c8be2ddc48093f4042b88f0da5d9` — deployed 2025-02-19 00:01:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | FlashLoanExecutor | ambiguous — not counted | FlashLoanExecutor (alternative) `0x6e30df848d694f3169f0f1e4fcc68f9a8d7fb2c4` — deployed 2025-01-29 23:17:11+03 — liveness: live (current_address_book_code)<br>FlashLoanExecutor (alternative) `0x6e30df848d694f3169f0f1e4fcc68f9a8d7fb2c4` — deployed 2025-01-29 23:28:21+03 — liveness: live (current_address_book_code)<br>FlashLoanExecutor (alternative) `0x4391ae1acc1c082bae3bb2badb29afb275d35978` — deployed 2025-01-29 23:44:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | AaveV2 | own contract | AaveV2 (selected) `0xb5a44c7f34e93a72425efdd002b9754ac2b98445` — deployed 2025-01-29 23:13:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report_Odyssey_REVIEW.pdf | AaveV3 | ambiguous — not counted | AaveV3 (alternative) `0x206eba040e4e86667b8ab4275bb75f220e9a2821` — deployed 2025-01-29 23:26:27+03 — liveness: live (code_present_context)<br>AaveV3 (alternative) `0x206eba040e4e86667b8ab4275bb75f220e9a2821` — deployed 2025-01-29 23:14:11+03 — liveness: live (code_present_context)<br>AaveV3 (alternative) `0x206eba040e4e86667b8ab4275bb75f220e9a2821` — deployed 2025-01-29 23:32:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | Ajna | ambiguous — not counted | Ajna (alternative) `0x82e6b5675977f0650c88659716a2210f536ac3a2` — deployed 2025-01-29 23:26:37+03 — liveness: live (code_present_context)<br>Ajna (alternative) `0x82e6b5675977f0650c88659716a2210f536ac3a2` — deployed 2025-01-29 23:43:19+03 — liveness: live (code_present_context)<br>Ajna (alternative) `0x82e6b5675977f0650c88659716a2210f536ac3a2` — deployed 2025-01-29 23:14:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | CompoundV2 | own contract | CompoundV2 (selected) `0x186c9184364b00a9691ae0d7d4e736cfcb59a820` — deployed 2025-01-29 23:14:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report_Odyssey_REVIEW.pdf | CompoundV3 | ambiguous — not counted | CompoundV3 (alternative) `0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40` — deployed 2025-01-29 23:26:47+03 — liveness: live (code_present_context)<br>CompoundV3 (alternative) `0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40` — deployed 2025-01-29 23:43:29+03 — liveness: live (code_present_context)<br>CompoundV3 (alternative) `0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40` — deployed 2025-01-29 23:14:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | Synth | ambiguous — not counted | Synth (alternative) `0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7` — deployed 2025-01-29 23:43:37+03 — liveness: live (current_address_book_code)<br>Synth (alternative) `0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7` — deployed 2025-01-29 23:14:59+03 — liveness: live (current_address_book_code)<br>Synth (alternative) `0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7` — deployed 2025-01-29 23:26:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | Vesper | ambiguous — not counted | Vesper (alternative) `0xccf1f2ad7137347daa5815048c99952fb9639f3c` — deployed 2025-01-29 23:15:11+03 — liveness: live (code_present_context)<br>Vesper (alternative) `0xccf1f2ad7137347daa5815048c99952fb9639f3c` — deployed 2025-01-29 23:43:41+03 — liveness: live (code_present_context)<br>Vesper (alternative) `0xccf1f2ad7137347daa5815048c99952fb9639f3c` — deployed 2025-01-29 23:27:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | RecurringSwapExecutor | ambiguous — not counted | RecurringSwapExecutor (alternative) `0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5` — deployed 2025-02-19 00:11:23+03 — liveness: live (current_address_book_code)<br>RecurringSwapExecutor (alternative) `0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5` — deployed 2025-02-19 00:18:17+03 — liveness: live (current_address_book_code)<br>RecurringSwapExecutor (alternative) `0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5` — deployed 2025-02-19 00:01:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | LimitOrderExecutor | ambiguous — not counted | LimitOrderExecutor (alternative) `0x1807c62f30269746672d0c0f24a645a573604ef4` — deployed 2025-02-19 00:18:07+03 — liveness: live (current_address_book_code)<br>LimitOrderExecutor (alternative) `0x1807c62f30269746672d0c0f24a645a573604ef4` — deployed 2025-02-19 00:04:17+03 — liveness: live (current_address_book_code)<br>LimitOrderExecutor (alternative) `0x1807c62f30269746672d0c0f24a645a573604ef4` — deployed 2025-02-19 00:01:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | FlatDepositFeePolicy | unmatched — not counted | — | listed in findings | no |
| Audit_Report_Odyssey_REVIEW.pdf | ApyTieredFeePolicy | ambiguous — not counted | ApyTieredFeePolicy (alternative) `0x5ef26de6aa5a944deac0e69115bdda3ba6016faa` — deployed 2025-01-29 23:27:31+03 — liveness: live (current_address_book_code)<br>ApyTieredFeePolicy (alternative) `0xcb6dafb36b40c9c7371108f66a5184ff3b01ee0d` — deployed 2025-01-29 23:15:47+03 — liveness: live (current_address_book_code)<br>ApyTieredFeePolicy (alternative) `0x3d4ccdb04ea20681a1123a7127547edcfdf72fc3` — deployed 2025-01-29 23:44:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | AaveV2BorrowStrategy | own contract | AaveV2BorrowStrategy (selected) `0xfcb475b05682f84b489083b131f62b77cef1d0ed` — deployed 2025-01-29 23:17:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report_Odyssey_REVIEW.pdf | AaveV3BorrowStrategy | ambiguous — not counted | AaveV3BorrowStrategy (alternative) `0x8d4dfad5ceaffe863fc9dcb5fcb4f183451aee36` — deployed 2025-01-29 23:45:07+03 — liveness: live (current_address_book_code)<br>AaveV3BorrowStrategy (alternative) `0x3efcee552716472dd2b321326654e4097f58d79b` — deployed 2025-01-29 23:18:23+03 — liveness: live (current_address_book_code)<br>AaveV3BorrowStrategy (alternative) `0x3efcee552716472dd2b321326654e4097f58d79b` — deployed 2025-01-29 23:28:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | CompoundV2BorrowStrategy | own contract | CompoundV2BorrowStrategy (selected) `0x77fa7880f6da8f6fc7dd21409e9e2b7cdb84bb3c` — deployed 2025-01-29 23:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report_Odyssey_REVIEW.pdf | CompoundV3BorrowStrategy | ambiguous — not counted | CompoundV3BorrowStrategy (alternative) `0xc276309a6c01cee346ca913db44ce4936ec8b9c5` — deployed 2025-01-29 23:19:59+03 — liveness: live (current_address_book_code)<br>CompoundV3BorrowStrategy (alternative) `0x4966d4a8e6f3c463ac7d6374ab05b4555b0eaa68` — deployed 2025-01-29 23:45:37+03 — liveness: live (current_address_book_code)<br>CompoundV3BorrowStrategy (alternative) `0xc276309a6c01cee346ca913db44ce4936ec8b9c5` — deployed 2025-01-29 23:29:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | CompoundV2VesperStrategy | own contract | CompoundV2VesperStrategy (selected) `0xce32679c865f37ae6513a366118aa783ae15780e` — deployed 2025-01-29 23:19:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report_Odyssey_REVIEW.pdf | CompoundV3VesperStrategy | ambiguous — not counted | CompoundV3VesperStrategy (alternative) `0xab890edfc63959a2b3794800b4f68f608b0827c3` — deployed 2025-01-29 23:20:23+03 — liveness: live (current_address_book_code)<br>CompoundV3VesperStrategy (alternative) `0x249a626498281ee7f172c307d4b0db4de2a08bbb` — deployed 2025-01-29 23:45:53+03 — liveness: live (current_address_book_code)<br>CompoundV3VesperStrategy (alternative) `0xab890edfc63959a2b3794800b4f68f608b0827c3` — deployed 2025-01-29 23:29:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | Strategy | unmatched — not counted | — | listed in findings | no |
| Audit_Report_Odyssey_REVIEW.pdf | SynthStrategy | ambiguous — not counted | SynthStrategy (alternative) `0x19b72d6351f080d8a002bfde6595c09112867c37` — deployed 2025-01-29 23:20:47+03 — liveness: live (current_address_book_code)<br>SynthStrategy (alternative) `0x5f0a841ddb55b2a903bc3204e27e247a097a1e8f` — deployed 2025-01-29 23:46:11+03 — liveness: live (current_address_book_code)<br>SynthStrategy (alternative) `0x19b72d6351f080d8a002bfde6595c09112867c37` — deployed 2025-01-29 23:30:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit_Report_Odyssey_REVIEW.pdf | PositionRegistry | ambiguous — not counted | PositionRegistry (alternative) `0x3416311bbaed3cf69c494c2badf5ceb4b201e4f9` — deployed 2025-01-29 23:13:23+03 — liveness: live (current_address_book_code)<br>PositionRegistry (alternative) `0xf67e6579a2b9a83c537353efb0fa5646ac1cc9ea` — deployed 2025-01-29 23:31:55+03 — liveness: live (current_address_book_code)<br>PositionRegistry (alternative) `0xa3ceec1740090b303a9682cd43f1f14d7bac4da2` — deployed 2025-01-29 23:25:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x82e6b5675977f0650c88659716a2210f536ac3a2` | Ajna | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x82e6b5675977f0650c88659716a2210f536ac3a2` | Ajna | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x82e6b5675977f0650c88659716a2210f536ac3a2` | Ajna | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xde433f614e50d7c0b21fd00a3d625b000c9c9736` | AjnaBorrowStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0dba141eb855ea62a951066fb8c5fb1ebe7ec890` | AjnaBorrowStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xde433f614e50d7c0b21fd00a3d625b000c9c9736` | AjnaBorrowStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb6dafb36b40c9c7371108f66a5184ff3b01ee0d` | ApyTieredFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3d4ccdb04ea20681a1123a7127547edcfdf72fc3` | ApyTieredFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5ef26de6aa5a944deac0e69115bdda3ba6016faa` | ApyTieredFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf70acacfb981c8be2ddc48093f4042b88f0da5d9` | CallOrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf70acacfb981c8be2ddc48093f4042b88f0da5d9` | CallOrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf70acacfb981c8be2ddc48093f4042b88f0da5d9` | CallOrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1cb204ed801db2030f3c59e9fd8ec078bc604169` | DyDxFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4` | ERC4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4` | ERC4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4` | ERC4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf4868cec8c7e13bba1e3ba65b029449c13ea0543` | ERC4626Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf4868cec8c7e13bba1e3ba65b029449c13ea0543` | ERC4626Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf4868cec8c7e13bba1e3ba65b029449c13ea0543` | ERC4626Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6e30df848d694f3169f0f1e4fcc68f9a8d7fb2c4` | FlashLoanExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4391ae1acc1c082bae3bb2badb29afb275d35978` | FlashLoanExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6e30df848d694f3169f0f1e4fcc68f9a8d7fb2c4` | FlashLoanExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1807c62f30269746672d0c0f24a645a573604ef4` | LimitOrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1807c62f30269746672d0c0f24a645a573604ef4` | LimitOrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1807c62f30269746672d0c0f24a645a573604ef4` | LimitOrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaa59006ae8dcfc7137a352e6142b39c2dee8622e` | PerformanceFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xa6798b67e38e180d86474330c0f49e7ef1adab14` | PerformanceFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x3078742bacdfecbe6f8d9e77f1aaa1000c074fcf` | PerformanceFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3416311bbaed3cf69c494c2badf5ceb4b201e4f9` | PositionRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf67e6579a2b9a83c537353efb0fa5646ac1cc9ea` | PositionRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa3ceec1740090b303a9682cd43f1f14d7bac4da2` | PositionRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb1df74c87875be3eef1a2407aa906665bfa5684` | ProtocolTieredFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xe0af15b4689cf81a9f1bfc6857d842f2813d3017` | ProtocolTieredFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2f14c835a2e0db38b0db87920a12d3b371080894` | ProtocolTieredFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5` | RecurringSwapExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5` | RecurringSwapExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5` | RecurringSwapExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc67abc3fba59860b2dbf77fd1cf59d5455d6ed14` | SwapAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa` | SwapAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa` | SwapAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7` | Synth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7` | Synth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7` | Synth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19b72d6351f080d8a002bfde6595c09112867c37` | SynthStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5f0a841ddb55b2a903bc3204e27e247a097a1e8f` | SynthStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x19b72d6351f080d8a002bfde6595c09112867c37` | SynthStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x2a643a0c3d942b73945588573ca55a3618607068` | VelodromeSlipstreamAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xccf1f2ad7137347daa5815048c99952fb9639f3c` | Vesper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xccf1f2ad7137347daa5815048c99952fb9639f3c` | Vesper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xccf1f2ad7137347daa5815048c99952fb9639f3c` | Vesper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 113 |
| upstream | 33 |
| standard_library | 11 |
| needs_review | 118 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 17 ambiguous, 3 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=5

Zero-match audit list:

- [17714] Audit_Report-SWA_REVIEW.pdf

Fork inheritance lineage and inherited audits are included when available.
