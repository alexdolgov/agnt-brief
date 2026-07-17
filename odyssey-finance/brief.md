# Agentic Audit Brief: Odyssey Finance

## Project Overview

- Project: Odyssey Finance (`odyssey-finance`)
- Website: [https://app.odyssey.finance/en](https://app.odyssey.finance/en)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.916Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: base, ethereum, optimism
- Contract surface: 76 unique implementations (225 raw deployments)
- DeFi Llama TVL: $9,354,010.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 106 project-authored contract(s) across 3 chain(s); 7 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 30 common project-authored base contract(s) (reentrancyguarddeprecated, reentrancyguardtransient, pauseable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 264; live-surface contracts included: 219 (212 live, 7 unknown).
- Excluded by liveness: 45 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 14/54 (25.9%)
- Deployed-live implementations: 70 of 76 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 24/71
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 76
- Raw deployments: 225
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 24 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 23 | 32.4% | 2024-07 |
| SWA | Tier 2 | 1 | 1.4% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV2 | unknown | ethereum | n/a | [`0xb5a44c7f34e93a72425efdd002b9754ac2b98445`](./contracts/ethereum-1/0xb5a44c7f34e93a72425efdd002b9754ac2b98445/) | ✅ Audited |
| AaveV2BorrowStrategy | core_logic | ethereum | n/a | [`0xfcb475b05682f84b489083b131f62b77cef1d0ed`](./contracts/ethereum-1/0xfcb475b05682f84b489083b131f62b77cef1d0ed/) | ✅ Audited |
| AaveV3 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x206eba040e4e86667b8ab4275bb75f220e9a2821`](./contracts/ethereum-1/0x206eba040e4e86667b8ab4275bb75f220e9a2821/); optimism [`0x206eba040e4e86667b8ab4275bb75f220e9a2821`](./contracts/optimism-10/0x206eba040e4e86667b8ab4275bb75f220e9a2821/); base [`0x206eba040e4e86667b8ab4275bb75f220e9a2821`](./contracts/base-8453/0x206eba040e4e86667b8ab4275bb75f220e9a2821/) | ✅ Audited |
| AaveV3BorrowStrategy | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x3efcee552716472dd2b321326654e4097f58d79b`](./contracts/ethereum-1/0x3efcee552716472dd2b321326654e4097f58d79b/); optimism `0x8d4dfad5ceaffe863fc9dcb5fcb4f183451aee36`; base [`0x3efcee552716472dd2b321326654e4097f58d79b`](./contracts/base-8453/0x3efcee552716472dd2b321326654e4097f58d79b/) | ✅ Audited |
| Ajna | unknown | ethereum | n/a | 3 deployments: ethereum [`0x82e6b5675977f0650c88659716a2210f536ac3a2`](./contracts/ethereum-1/0x82e6b5675977f0650c88659716a2210f536ac3a2/); optimism [`0x82e6b5675977f0650c88659716a2210f536ac3a2`](./contracts/optimism-10/0x82e6b5675977f0650c88659716a2210f536ac3a2/); base [`0x82e6b5675977f0650c88659716a2210f536ac3a2`](./contracts/base-8453/0x82e6b5675977f0650c88659716a2210f536ac3a2/) | ✅ Audited |
| AjnaBorrowStrategy | core_logic | optimism | n/a | 3 deployments: ethereum `0xde433f614e50d7c0b21fd00a3d625b000c9c9736`; optimism [`0x0dba141eb855ea62a951066fb8c5fb1ebe7ec890`](./contracts/optimism-10/0x0dba141eb855ea62a951066fb8c5fb1ebe7ec890/); base `0xde433f614e50d7c0b21fd00a3d625b000c9c9736` | ✅ Audited |
| ApyTieredFeePolicy | unknown | optimism | n/a | 5 deployments: ethereum `0xcb6dafb36b40c9c7371108f66a5184ff3b01ee0d`; optimism [`0x3d4ccdb04ea20681a1123a7127547edcfdf72fc3`](./contracts/optimism-10/0x3d4ccdb04ea20681a1123a7127547edcfdf72fc3/); optimism `0x515e8bf34b7c300bf1d173e434a47d564c4c9931`; optimism `0xffd74ecf5b4eec6eac2624764933fb5f2e2dfd09`; base `0x5ef26de6aa5a944deac0e69115bdda3ba6016faa` | ✅ Audited |
| CallOrderExecutor | unknown | ethereum | n/a | 3 deployments: ethereum [`0xf70acacfb981c8be2ddc48093f4042b88f0da5d9`](./contracts/ethereum-1/0xf70acacfb981c8be2ddc48093f4042b88f0da5d9/); optimism [`0xf70acacfb981c8be2ddc48093f4042b88f0da5d9`](./contracts/optimism-10/0xf70acacfb981c8be2ddc48093f4042b88f0da5d9/); base [`0xf70acacfb981c8be2ddc48093f4042b88f0da5d9`](./contracts/base-8453/0xf70acacfb981c8be2ddc48093f4042b88f0da5d9/) | ✅ Audited |
| CompoundV2 | unknown | ethereum | n/a | [`0x186c9184364b00a9691ae0d7d4e736cfcb59a820`](./contracts/ethereum-1/0x186c9184364b00a9691ae0d7d4e736cfcb59a820/) | ✅ Audited |
| CompoundV2BorrowStrategy | core_logic | ethereum | n/a | [`0x77fa7880f6da8f6fc7dd21409e9e2b7cdb84bb3c`](./contracts/ethereum-1/0x77fa7880f6da8f6fc7dd21409e9e2b7cdb84bb3c/) | ✅ Audited |
| CompoundV2VesperStrategy | core_logic | ethereum | n/a | [`0xce32679c865f37ae6513a366118aa783ae15780e`](./contracts/ethereum-1/0xce32679c865f37ae6513a366118aa783ae15780e/) | ✅ Audited |
| CompoundV3 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40`](./contracts/ethereum-1/0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40/); optimism [`0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40`](./contracts/optimism-10/0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40/); base [`0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40`](./contracts/base-8453/0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40/) | ✅ Audited |
| CompoundV3BorrowStrategy | core_logic | optimism | n/a | 3 deployments: ethereum `0xc276309a6c01cee346ca913db44ce4936ec8b9c5`; optimism [`0x4966d4a8e6f3c463ac7d6374ab05b4555b0eaa68`](./contracts/optimism-10/0x4966d4a8e6f3c463ac7d6374ab05b4555b0eaa68/); base `0xc276309a6c01cee346ca913db44ce4936ec8b9c5` | ✅ Audited |
| CompoundV3VesperStrategy | core_logic | optimism | n/a | 3 deployments: ethereum `0xab890edfc63959a2b3794800b4f68f608b0827c3`; optimism [`0x249a626498281ee7f172c307d4b0db4de2a08bbb`](./contracts/optimism-10/0x249a626498281ee7f172c307d4b0db4de2a08bbb/); base `0xab890edfc63959a2b3794800b4f68f608b0827c3` | ✅ Audited |
| FlashLoanExecutor | unknown | optimism | n/a | 3 deployments: ethereum `0x6e30df848d694f3169f0f1e4fcc68f9a8d7fb2c4`; optimism [`0x4391ae1acc1c082bae3bb2badb29afb275d35978`](./contracts/optimism-10/0x4391ae1acc1c082bae3bb2badb29afb275d35978/); base `0x6e30df848d694f3169f0f1e4fcc68f9a8d7fb2c4` | ✅ Audited |
| FlatDepositFeePolicy | unknown | optimism | n/a | 2 deployments: optimism [`0x656f1f3a4df83a10afb2bd2ecad8ef4a96c9e4d0`](./contracts/optimism-10/0x656f1f3a4df83a10afb2bd2ecad8ef4a96c9e4d0/); optimism `0x9924a65521523ce8498da5d10beb82cd36cc4f23` | ✅ Audited |
| LimitOrderExecutor | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1807c62f30269746672d0c0f24a645a573604ef4`](./contracts/ethereum-1/0x1807c62f30269746672d0c0f24a645a573604ef4/); optimism [`0x1807c62f30269746672d0c0f24a645a573604ef4`](./contracts/optimism-10/0x1807c62f30269746672d0c0f24a645a573604ef4/); base [`0x1807c62f30269746672d0c0f24a645a573604ef4`](./contracts/base-8453/0x1807c62f30269746672d0c0f24a645a573604ef4/) | ✅ Audited |
| PositionRegistry | registry | base | n/a | 16 deployments: ethereum `0x1c82257e30a73e268ec578f419f35dbce1ef7435`; ethereum `0x3416311bbaed3cf69c494c2badf5ceb4b201e4f9`; ethereum `0x72cf2fd2f18902ec26a50f77635278e6fca605d9`; ethereum `0xe08acc210b828588947cab3ec4dc8d4f4fabd828`; optimism `0x1524760d42e9083a0b04d5fbeafb4991be26cd87`; optimism `0x7bf63dc91f68e0adf5692acf17cb632dc17417bb`; optimism `0x983419398942ca35ab21fe55150a77a068db73e6`; optimism `0xf67e6579a2b9a83c537353efb0fa5646ac1cc9ea`; optimism `0xf9bd6b94c11e3a6d8bb412296de27bca367edd2d`; base [`0x0d19983d8259bbf089b59f8af5f1d452e17890ce`](./contracts/base-8453/0x0d19983d8259bbf089b59f8af5f1d452e17890ce/); base `0x15f2450c5b3f9ef15894ddad81a9c3e1d0e14896`; base `0x823feb265853bf21b404932bb23d44c1734c92f4`; base `0xa3ceec1740090b303a9682cd43f1f14d7bac4da2`; base `0xad42b83c53dd7cffcab35a5e4d4f5db313c81562`; base `0xe08acc210b828588947cab3ec4dc8d4f4fabd828`; base `0xe2adb496684eb9c43b5025f05b50ee492c77f938` | ✅ Audited |
| RecurringSwapExecutor | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5`](./contracts/ethereum-1/0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5/); optimism [`0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5`](./contracts/optimism-10/0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5/); base [`0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5`](./contracts/base-8453/0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5/) | ✅ Audited |
| SwapAggregator | unknown | optimism | n/a | 3 deployments: ethereum `0xc67abc3fba59860b2dbf77fd1cf59d5455d6ed14`; optimism [`0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa`](./contracts/optimism-10/0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa/); base [`0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa`](./contracts/base-8453/0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa/) | ✅ Audited |
| Swapper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9a02ae403d6ae970748b889bb4e36fd89ae7e5eb`](./contracts/ethereum-1/0x9a02ae403d6ae970748b889bb4e36fd89ae7e5eb/); optimism `0xb908cadb1906b44c3d163486d8ceb9b4370c476e` | ✅ Audited |
| Synth | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7`](./contracts/ethereum-1/0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7/); optimism [`0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7`](./contracts/optimism-10/0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7/); base [`0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7`](./contracts/base-8453/0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7/) | ✅ Audited |
| SynthStrategy | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x19b72d6351f080d8a002bfde6595c09112867c37`](./contracts/ethereum-1/0x19b72d6351f080d8a002bfde6595c09112867c37/); optimism `0x5f0a841ddb55b2a903bc3204e27e247a097a1e8f`; base [`0x19b72d6351f080d8a002bfde6595c09112867c37`](./contracts/base-8453/0x19b72d6351f080d8a002bfde6595c09112867c37/) | ✅ Audited |
| Vesper | unknown | ethereum | n/a | 3 deployments: ethereum [`0xccf1f2ad7137347daa5815048c99952fb9639f3c`](./contracts/ethereum-1/0xccf1f2ad7137347daa5815048c99952fb9639f3c/); optimism [`0xccf1f2ad7137347daa5815048c99952fb9639f3c`](./contracts/optimism-10/0xccf1f2ad7137347daa5815048c99952fb9639f3c/); base [`0xccf1f2ad7137347daa5815048c99952fb9639f3c`](./contracts/base-8453/0xccf1f2ad7137347daa5815048c99952fb9639f3c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV2FlashLoan | unknown | ethereum | n/a | [`0x2d2985ab02254bb26bfdaf8bd64c0d063ad9c720`](./contracts/ethereum-1/0x2d2985ab02254bb26bfdaf8bd64c0d063ad9c720/) | ⚠️ Unaudited |
| AaveV3FlashLoan | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7436186d83d8f98e542a5bd37d18e91f265c312b`](./contracts/ethereum-1/0x7436186d83d8f98e542a5bd37d18e91f265c312b/); optimism `0x78d791cd9506042715c1305c8ebbba95a1ad9762`; base [`0x7436186d83d8f98e542a5bd37d18e91f265c312b`](./contracts/base-8453/0x7436186d83d8f98e542a5bd37d18e91f265c312b/) | ⚠️ Unaudited |
| Agent | unknown | ethereum | n/a | 2 deployments: ethereum [`0x46e6ade9b7b59e151c5bcc877c9b90d50021553a`](./contracts/ethereum-1/0x46e6ade9b7b59e151c5bcc877c9b90d50021553a/); ethereum `0xfd07a07505f73c63a6f8ff03b7474a90c0b3c5ce` | ⚠️ Unaudited |
| Agent | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4762e77b8f448f0755eca2b6be6cbcd4db0f28a9`](./contracts/ethereum-1/0x4762e77b8f448f0755eca2b6be6cbcd4db0f28a9/); ethereum `0xffdf74b401dcaff0b051fcb8ced890663fc042e0` | ⚠️ Unaudited |
| Agent | unknown | ethereum | n/a | [`0x96f82d791580deef662b8d552f21b4ac14a8cf80`](./contracts/ethereum-1/0x96f82d791580deef662b8d552f21b4ac14a8cf80/) | ⚠️ Unaudited |
| AgentUpgrader | unknown | ethereum | n/a | 2 deployments: ethereum [`0x804739d527b550260f633462dedab13399c3953a`](./contracts/ethereum-1/0x804739d527b550260f633462dedab13399c3953a/); ethereum `0xf9eeae6a02c91914f046331bf2dc4c4a9ca7ef51` | ⚠️ Unaudited |
| AMO | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4681a847863f1d1a584c298ae5a7ac4343704e8f`](./contracts/ethereum-1/0x4681a847863f1d1a584c298ae5a7ac4343704e8f/); optimism `0x54181404a037757eb5271ee4a02ca51844f25eaa`; base `0x7b8bcf8e185f433504f4888af84efd68c6f5da27` | ⚠️ Unaudited |
| CallOrdersFillerUsingUniV2 | unknown | optimism | n/a | [`0xfd7d5edd096b98ac2391043b22b96aa63dd63613`](./contracts/optimism-10/0xfd7d5edd096b98ac2391043b22b96aa63dd63613/) | ⚠️ Unaudited |
| CapForStETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x023dcf516c349b615120ee731add909645ec35fb`](./contracts/ethereum-1/0x023dcf516c349b615120ee731add909645ec35fb/); ethereum `0x884c34b865907648ffa2d6fdb8576291f3ecedc6` | ⚠️ Unaudited |
| CapForStETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2182c3e3b7a4399f69ea8da7c52e9d080e9c43ad`](./contracts/ethereum-1/0x2182c3e3b7a4399f69ea8da7c52e9d080e9c43ad/); ethereum `0x8f6cfbf5aff373f0ad7e0869c348ec934950a5b8` | ⚠️ Unaudited |
| CrossChainDispatcher | unknown | ethereum | n/a | 3 deployments: ethereum [`0x50361afaafd269c1e9b74866a14579bbc512a41c`](./contracts/ethereum-1/0x50361afaafd269c1e9b74866a14579bbc512a41c/); optimism `0xb6ecf1a552b0f4e520ff2934e60b756055f0c362`; base `0x52edbc52fe7fe1b2e34a9da11b4ec0c323525f07` | ⚠️ Unaudited |
| DebtToken | token | base | n/a | 3 deployments: ethereum `0x7bf63dc91f68e0adf5692acf17cb632dc17417bb`; optimism `0xae4b310cacd09ca7fd839973c34e514b200150c0`; base [`0x24186a4814a826c84ba127f7f24eac6b06c957d0`](./contracts/base-8453/0x24186a4814a826c84ba127f7f24eac6b06c957d0/) | ⚠️ Unaudited |
| DepositToken | token | optimism | n/a | 3 deployments: ethereum `0x6f57db31ae6d62f75297c0f542e1567e0d41650a`; optimism [`0x4672edcd34235b3855f2fe8bf1530947c9c8771a`](./contracts/optimism-10/0x4672edcd34235b3855f2fe8bf1530947c9c8771a/); base `0xff7ad44c16cd9a758af57f2506d5a08af1188540` | ⚠️ Unaudited |
| DyDxFlashLoan | unknown | ethereum | n/a | [`0x1cb204ed801db2030f3c59e9fd8ec078bc604169`](./contracts/ethereum-1/0x1cb204ed801db2030f3c59e9fd8ec078bc604169/) | ⚠️ Unaudited |
| ERC4626 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4`](./contracts/ethereum-1/0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4/); optimism [`0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4`](./contracts/optimism-10/0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4/); base [`0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4`](./contracts/base-8453/0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4/) | ⚠️ Unaudited |
| ERC4626Adapter | adapter | base | n/a | [`0x9e1a7ec69a311af701c071049e24d51ea06d6b4e`](./contracts/base-8453/0x9e1a7ec69a311af701c071049e24d51ea06d6b4e/) | ⚠️ Unaudited |
| ERC4626Strategy | core_logic | ethereum | n/a | 3 deployments: ethereum [`0xf4868cec8c7e13bba1e3ba65b029449c13ea0543`](./contracts/ethereum-1/0xf4868cec8c7e13bba1e3ba65b029449c13ea0543/); optimism [`0xf4868cec8c7e13bba1e3ba65b029449c13ea0543`](./contracts/optimism-10/0xf4868cec8c7e13bba1e3ba65b029449c13ea0543/); base [`0xf4868cec8c7e13bba1e3ba65b029449c13ea0543`](./contracts/base-8453/0xf4868cec8c7e13bba1e3ba65b029449c13ea0543/) | ⚠️ Unaudited |
| FeeProvider | unknown | base | n/a | 3 deployments: ethereum `0xa6a4db8d44769c0420742a750fc8a5c4ec077585`; optimism `0xdce663bf14e025f7164d992fe455e6fa88f34a91`; base [`0x17446e48196ec6ef40f839a4be6df77ac6610f9c`](./contracts/base-8453/0x17446e48196ec6ef40f839a4be6df77ac6610f9c/) | ⚠️ Unaudited |
| HemiBTCRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7d992cf60870237c74eef68def2ba1f1906fc9e6`](./contracts/ethereum-1/0x7d992cf60870237c74eef68def2ba1f1906fc9e6/); ethereum `0xbcfa47099dcce482e90ebd75a53f4bf012ca30ba` | ⚠️ Unaudited |
| HemiOFT | unknown | optimism | n/a | 2 deployments: optimism [`0x1ad02cd579c7668d50e0003f428701b70a1b42b7`](./contracts/optimism-10/0x1ad02cd579c7668d50e0003f428701b70a1b42b7/); base `0xbcaba0bac0f4bff8cc8659f2218c6d5324b46061` | ⚠️ Unaudited |
| InfiniFiAdapter | adapter | ethereum | n/a | [`0xf974d7435e86db32d8a6d021934712ea51f2fb41`](./contracts/ethereum-1/0xf974d7435e86db32d8a6d021934712ea51f2fb41/) | ⚠️ Unaudited |
| InifniFiAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0xa24b17e30e88d8ea582a2c41d0d8c9208efe8416`](./contracts/ethereum-1/0xa24b17e30e88d8ea582a2c41d0d8c9208efe8416/); ethereum `0xe32ad0e671a9ec7cdeec85c6664466efb5548682` | ⚠️ Unaudited |
| LooprFactory | registry | ethereum | n/a | [`0xf6f3fee894abf3bf1d11c1bb50c252df19410559`](./contracts/ethereum-1/0xf6f3fee894abf3bf1d11c1bb50c252df19410559/) | ⚠️ Unaudited |
| MetAirdrop | operational_periphery | ethereum | n/a | [`0x265714b10b9309a8a7a505dbfa6cb6c39b842309`](./contracts/ethereum-1/0x265714b10b9309a8a7a505dbfa6cb6c39b842309/) | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | 3 deployments: ethereum [`0xf8dea58979a47f226ac46dfe204a7146a8e06892`](./contracts/ethereum-1/0xf8dea58979a47f226ac46dfe204a7146a8e06892/); optimism [`0xf8dea58979a47f226ac46dfe204a7146a8e06892`](./contracts/optimism-10/0xf8dea58979a47f226ac46dfe204a7146a8e06892/); base [`0xf8dea58979a47f226ac46dfe204a7146a8e06892`](./contracts/base-8453/0xf8dea58979a47f226ac46dfe204a7146a8e06892/) | ⚠️ Unaudited |
| MorphoBorrowStrategy | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x87acd9823c1269ec5a2233fc941b22d747366910`](./contracts/ethereum-1/0x87acd9823c1269ec5a2233fc941b22d747366910/); optimism [`0x87acd9823c1269ec5a2233fc941b22d747366910`](./contracts/optimism-10/0x87acd9823c1269ec5a2233fc941b22d747366910/); base [`0x87acd9823c1269ec5a2233fc941b22d747366910`](./contracts/base-8453/0x87acd9823c1269ec5a2233fc941b22d747366910/) | ⚠️ Unaudited |
| MorphoFlashLoan | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6aa69c031170b04e2d6ec02520b6f49d649031b8`](./contracts/ethereum-1/0x6aa69c031170b04e2d6ec02520b6f49d649031b8/); base [`0x6aa69c031170b04e2d6ec02520b6f49d649031b8`](./contracts/base-8453/0x6aa69c031170b04e2d6ec02520b6f49d649031b8/) | ⚠️ Unaudited |
| NativeTokenGateway | token | ethereum | n/a | 3 deployments: ethereum [`0x186df63e79a7089dbb325567f587ebb5a3743aa6`](./contracts/ethereum-1/0x186df63e79a7089dbb325567f587ebb5a3743aa6/); optimism `0xd5386d8f78a810c1574f0b7bbbea5cb22a260121`; base `0x7e31e5864eea3913c89f3e035f6b0c0c41a18727` | ⚠️ Unaudited |
| OFT | unknown | ethereum | n/a | 23 deployments: ethereum [`0x06ea695b91700071b161a434fed42d1dcbad9f00`](./contracts/ethereum-1/0x06ea695b91700071b161a434fed42d1dcbad9f00/); ethereum `0x2e483597c86f7aa81cbc0015ace371c0ff711f77`; ethereum `0x40a544b0d4535a11fc7d1ebfffe904751258eea6`; ethereum `0x5ec16ffe81107ee403f1a95db184c4caf351f7a6`; ethereum `0x82539b0448daed2d7e488155c8364797b8c92aad`; ethereum `0x906cd020ed17e5a82ebc32a7ca070ea27848e9a8`; ethereum `0xa716249b1f06483d08c2073a46e4308b9539ae13`; optimism `0x0b874b240ef6d9d9543dbdeb224cddc4ba71fd0f`; optimism `0x62d2a7d31e8a61a7acd472c98c657e053eb01b96`; optimism `0x92273ca3356379c2fe870fe3805cc5e7ab6d19c6`; optimism `0xb5259c05764468c33c9c36e327caad020a8e5fe1`; optimism `0xb591169e6508983cc6618738cc73c9f09c38de14`; optimism `0xc507ef1f4cd0862980b4bd0d8e56e18606a50d87`; base `0x0dbebfe3ddc80e75618bbbd4753b51757f972222`; base `0x3a6c9bcd6fb76df40d7aa66ced63ad8399f6066b`; base `0x49219d2feca183b26f058388e36bbfb139bf08ec`; base `0x50c580227764b621c0433bb6ab756c781c495ce7`; base `0x781aea37b81f3cf3fb9a97e9568bdaf36d2def3d`; base `0x8a654093e21703afc8d038ff253a3c974c5c2957`; base `0xb174750002068862dfe7df38f974a950f189386a`; base `0xc6fffa0e234e5ec80b8654cb351da90a092f6c95`; base `0xda108077f35278f8c95d70f4fdbb3673f82cf6ca`; base `0xe953b9b391d4bea8c632951c44578f36fbc2b855` | ⚠️ Unaudited |
| OFTAdapter | adapter | ethereum | n/a | 7 deployments: ethereum [`0x010f0bd6576949e6ac6eea11ed8c535388340e94`](./contracts/ethereum-1/0x010f0bd6576949e6ac6eea11ed8c535388340e94/); ethereum `0x35ca6624e88898eb909a5b81195ae26a2aa9aa3a`; ethereum `0x8642f7b63824c64453f38da0c0d8e75443431c2d`; ethereum `0x952a7dfa706806f1d744ff150dd231c0616e33d1`; ethereum `0x968563eed04e0289ccc79d7029bfc79f040605f0`; ethereum `0xac6369fa74dc3585a85c5efcd59f869fc01fb90d`; ethereum `0xfc8acf5ef1e8839ec94151740cfed95d7e579afb` | ⚠️ Unaudited |
| Operator | unknown | optimism | n/a | 3 deployments: ethereum `0xc06d6347915f6b5e9dbb53fe17b988b99dbad360`; optimism [`0x49219d2feca183b26f058388e36bbfb139bf08ec`](./contracts/optimism-10/0x49219d2feca183b26f058388e36bbfb139bf08ec/); base `0x64b5bb3b7ef0267019fee5b826c60cb9b7609373` | ⚠️ Unaudited |
| PerformanceFeePolicy | unknown | base | n/a | 4 deployments: ethereum `0xa574a43c881639cb173d355413c187e6d4cdc67f`; optimism `0x757d531f2eb1148f003853b51e3f6971e260be72`; base [`0x2b77378c70f4b43de2824d217e9ae4910cddf6a8`](./contracts/base-8453/0x2b77378c70f4b43de2824d217e9ae4910cddf6a8/); base `0x416ab2bd7f1889dcbecc6c4d697292d2709cc01e` | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x1cb2a9e5425a84a93ee1f6a8f98aa3edabafaa27`](./contracts/ethereum-1/0x1cb2a9e5425a84a93ee1f6a8f98aa3edabafaa27/); optimism `0xaa023c88d8327c63c6e7253f1ffd9193348238d6`; base `0x96a11f928ca1cd5341ffaa773a97bec85c4acf31` | ⚠️ Unaudited |
| PoolRegistry | registry | ethereum | n/a | 4 deployments: ethereum [`0x01491b3598a90c080b9429f9a86764fa6845ae65`](./contracts/ethereum-1/0x01491b3598a90c080b9429f9a86764fa6845ae65/); ethereum `0xb3fa4a7323b86fece91639eb8f312fed4bf01792`; optimism `0x618ec4b1b50f7631ea440d01fb94a89142c00e86`; base `0x2047895ae389f775e9196170aab4ed969f2a2298` | ⚠️ Unaudited |
| ProtocolTieredFeePolicy | unknown | base | n/a | 4 deployments: ethereum `0xd0aab6695b8ad921baa1ac8821e54d062c400e06`; optimism `0x8ffc95039a037dd3d597125339a8b96c08d6dc81`; base [`0x669954e6b63b2156e120f815d0b734589153f334`](./contracts/base-8453/0x669954e6b63b2156e120f815d0b734589153f334/); base `0x9a1ba8f5ee3c1ac0d724c4b55d4b3cac35c9ddd5` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 12 deployments: ethereum [`0x262b12c5701ddf1edac2870ad6338d23d5853bdd`](./contracts/ethereum-1/0x262b12c5701ddf1edac2870ad6338d23d5853bdd/); ethereum `0xc0bc99efeb9039493e888900a81ed30a3468370e`; ethereum `0xceb64bcdbee34f5d390d95f501d54ce8305c83e8`; ethereum `0xfca22bb50375f172692303deb373c21378ddbaaa`; optimism `0xa83cc0994e255d8c4e4b1829d893ade92d0c3f9a`; optimism `0xc0bc99efeb9039493e888900a81ed30a3468370e`; optimism `0xceb64bcdbee34f5d390d95f501d54ce8305c83e8`; optimism `0xfca22bb50375f172692303deb373c21378ddbaaa`; base `0x3416311bbaed3cf69c494c2badf5ceb4b201e4f9`; base `0xc0bc99efeb9039493e888900a81ed30a3468370e`; base `0xceb64bcdbee34f5d390d95f501d54ce8305c83e8`; base `0xfca22bb50375f172692303deb373c21378ddbaaa` | ⚠️ Unaudited |
| ProxyOFT | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1cacd2d64edccd5df47824a0b85a1dacca4b7102`](./contracts/ethereum-1/0x1cacd2d64edccd5df47824a0b85a1dacca4b7102/); optimism `0xc38aaff68a81dff9f809b03f9cba84e9aed821ba`; base `0x67799bd3b0abaf070e5ea94a5bc5f7d9c4a401e1` | ⚠️ Unaudited |
| Quoter | periphery | optimism | n/a | 3 deployments: ethereum `0x5f6c71f41232a1aeae2623c4ac7b111c38406834`; optimism [`0x077f89c0fc4259b8e2abc0fe6eec655eb2da87d5`](./contracts/optimism-10/0x077f89c0fc4259b8e2abc0fe6eec655eb2da87d5/); base `0x5ea5c6c661936de3f2461c50d3f01157b14af671` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | optimism | n/a | 2 deployments: ethereum `0x70845de4d1cc8fa169c42574e329a298ebcf44d8`; optimism [`0x0f482c4cf499fd57cf643c350a7261b403be865c`](./contracts/optimism-10/0x0f482c4cf499fd57cf643c350a7261b403be865c/) | ⚠️ Unaudited |
| SmartFarmingManager | governance | base | n/a | 3 deployments: ethereum `0xb8d187ce5c5b172984cd1544d1679eacaf107aec`; optimism `0xfc51f8edc0f1bc897ba1e0909aa48f04cbeb08bf`; base [`0x4232f5388fdf479c3a1a2b7816f135c618682662`](./contracts/base-8453/0x4232f5388fdf479c3a1a2b7816f135c618682662/) | ⚠️ Unaudited |
| SwapOrdersFillerUsingUniV2 | unknown | optimism | n/a | [`0x9614bfc8e5350e559a9a02eab4574d5b332fc87f`](./contracts/optimism-10/0x9614bfc8e5350e559a9a02eab4574d5b332fc87f/) | ⚠️ Unaudited |
| SwapperUpgrader | unknown | ethereum | n/a | 3 deployments: ethereum [`0xbde032fdf114b4005e5320881b96246347d2b2d6`](./contracts/ethereum-1/0xbde032fdf114b4005e5320881b96246347d2b2d6/); ethereum `0xce3831814de36d631f6f0a6ba7d4622afb088639`; optimism `0xc9ffa23308d02dc9cffe955fcce5ffd117a03b46` | ⚠️ Unaudited |
| SyntheticToken | token | optimism | n/a | 3 deployments: ethereum `0xd8a7ceccecbeded9f5350f4ca8faf55ab92f3390`; optimism [`0x9a41fde326d3de75b4672f8e9315dbcd56d128d7`](./contracts/optimism-10/0x9a41fde326d3de75b4672f8e9315dbcd56d128d7/); base `0xe6c2959d85a4c6d6bd202203b7c3a15294ec6544` | ⚠️ Unaudited |
| ToVerify | unknown | optimism | n/a | 2 deployments: optimism [`0x5b84eaafb31672f5f264d258561710675b028ead`](./contracts/optimism-10/0x5b84eaafb31672f5f264d258561710675b028ead/); optimism `0x9480f9201d0f0e76cff1c219b8006ba6e7b61631` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x6b17bfb2fca95ecace2fe09cc3b3d0c4deadda6f`](./contracts/base-8453/0x6b17bfb2fca95ecace2fe09cc3b3d0c4deadda6f/); base `0x6ca3c759eacd760286d6ade2bdc9c04434beddca` | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x1425188a9c286ad3cce85eef40d93ad1259bea5d`](./contracts/ethereum-1/0x1425188a9c286ad3cce85eef40d93ad1259bea5d/); optimism `0xc04bcdf8ffb0c126a0fa5229e8db65771aa1bd7c`; base `0xcb6dafb36b40c9c7371108f66a5184ff3b01ee0d` | ⚠️ Unaudited |
| ZeroedFeePolicy | unknown | base | n/a | [`0x4661407fc224e5432d7f528a20ef8906e453a8f3`](./contracts/base-8453/0x4661407fc224e5432d7f528a20ef8906e453a8f3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x25d80c30884cba6cd6e5d801ac74ca41789f8b2d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5a64e1b924aa8c55d44b239d0a83ab5de60535ad` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x963b5bc11950ab4852e9c60992ec21827ebd0a34` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x760c6622e94868f4e6df8e8d25c9c0c8dc4ba3b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8f156189a3cd28dfc8fb7bbbace58f98f09c0bb3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Report-SWA_REVIEW.pdf](https://3883616881-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqoKcdbT2jNpuAI4A3RLd%2Fuploads%2FWSqlBOwoHAfOb2almafO%2FAudit_Report-SWA_REVIEW.pdf) | SWA | Audit | 2024-09 | aging | Direct | contract_name | 3 | high |
| [Audit_Report_Odyssey_REVIEW.pdf](https://3883616881-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqoKcdbT2jNpuAI4A3RLd%2Fuploads%2FfUYd8p9pJEcVmjIGTTJ6%2FAudit_Report_Odyssey_REVIEW.pdf) | Unknown | Audit | 2024-07 | stale | Direct | contract_name | 72 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x46e6ade9b7b59e151c5bcc877c9b90d50021553a`](./contracts/ethereum-1/0x46e6ade9b7b59e151c5bcc877c9b90d50021553a/) | Agent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4762e77b8f448f0755eca2b6be6cbcd4db0f28a9`](./contracts/ethereum-1/0x4762e77b8f448f0755eca2b6be6cbcd4db0f28a9/) | Agent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x96f82d791580deef662b8d552f21b4ac14a8cf80`](./contracts/ethereum-1/0x96f82d791580deef662b8d552f21b4ac14a8cf80/) | Agent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x804739d527b550260f633462dedab13399c3953a`](./contracts/ethereum-1/0x804739d527b550260f633462dedab13399c3953a/) | AgentUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4681a847863f1d1a584c298ae5a7ac4343704e8f`](./contracts/ethereum-1/0x4681a847863f1d1a584c298ae5a7ac4343704e8f/) | AMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xfd7d5edd096b98ac2391043b22b96aa63dd63613`](./contracts/optimism-10/0xfd7d5edd096b98ac2391043b22b96aa63dd63613/) | CallOrdersFillerUsingUniV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x023dcf516c349b615120ee731add909645ec35fb`](./contracts/ethereum-1/0x023dcf516c349b615120ee731add909645ec35fb/) | CapForStETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2182c3e3b7a4399f69ea8da7c52e9d080e9c43ad`](./contracts/ethereum-1/0x2182c3e3b7a4399f69ea8da7c52e9d080e9c43ad/) | CapForStETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50361afaafd269c1e9b74866a14579bbc512a41c`](./contracts/ethereum-1/0x50361afaafd269c1e9b74866a14579bbc512a41c/) | CrossChainDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x24186a4814a826c84ba127f7f24eac6b06c957d0`](./contracts/base-8453/0x24186a4814a826c84ba127f7f24eac6b06c957d0/) | DebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4672edcd34235b3855f2fe8bf1530947c9c8771a`](./contracts/optimism-10/0x4672edcd34235b3855f2fe8bf1530947c9c8771a/) | DepositToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cb204ed801db2030f3c59e9fd8ec078bc604169`](./contracts/ethereum-1/0x1cb204ed801db2030f3c59e9fd8ec078bc604169/) | DyDxFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4`](./contracts/ethereum-1/0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4/) | ERC4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9e1a7ec69a311af701c071049e24d51ea06d6b4e`](./contracts/base-8453/0x9e1a7ec69a311af701c071049e24d51ea06d6b4e/) | ERC4626Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4868cec8c7e13bba1e3ba65b029449c13ea0543`](./contracts/ethereum-1/0xf4868cec8c7e13bba1e3ba65b029449c13ea0543/) | ERC4626Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x17446e48196ec6ef40f839a4be6df77ac6610f9c`](./contracts/base-8453/0x17446e48196ec6ef40f839a4be6df77ac6610f9c/) | FeeProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d992cf60870237c74eef68def2ba1f1906fc9e6`](./contracts/ethereum-1/0x7d992cf60870237c74eef68def2ba1f1906fc9e6/) | HemiBTCRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1ad02cd579c7668d50e0003f428701b70a1b42b7`](./contracts/optimism-10/0x1ad02cd579c7668d50e0003f428701b70a1b42b7/) | HemiOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf974d7435e86db32d8a6d021934712ea51f2fb41`](./contracts/ethereum-1/0xf974d7435e86db32d8a6d021934712ea51f2fb41/) | InfiniFiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa24b17e30e88d8ea582a2c41d0d8c9208efe8416`](./contracts/ethereum-1/0xa24b17e30e88d8ea582a2c41d0d8c9208efe8416/) | InifniFiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6f3fee894abf3bf1d11c1bb50c252df19410559`](./contracts/ethereum-1/0xf6f3fee894abf3bf1d11c1bb50c252df19410559/) | LooprFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x265714b10b9309a8a7a505dbfa6cb6c39b842309`](./contracts/ethereum-1/0x265714b10b9309a8a7a505dbfa6cb6c39b842309/) | MetAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x186df63e79a7089dbb325567f587ebb5a3743aa6`](./contracts/ethereum-1/0x186df63e79a7089dbb325567f587ebb5a3743aa6/) | NativeTokenGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06ea695b91700071b161a434fed42d1dcbad9f00`](./contracts/ethereum-1/0x06ea695b91700071b161a434fed42d1dcbad9f00/) | OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x010f0bd6576949e6ac6eea11ed8c535388340e94`](./contracts/ethereum-1/0x010f0bd6576949e6ac6eea11ed8c535388340e94/) | OFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x49219d2feca183b26f058388e36bbfb139bf08ec`](./contracts/optimism-10/0x49219d2feca183b26f058388e36bbfb139bf08ec/) | Operator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2b77378c70f4b43de2824d217e9ae4910cddf6a8`](./contracts/base-8453/0x2b77378c70f4b43de2824d217e9ae4910cddf6a8/) | PerformanceFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cb2a9e5425a84a93ee1f6a8f98aa3edabafaa27`](./contracts/ethereum-1/0x1cb2a9e5425a84a93ee1f6a8f98aa3edabafaa27/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01491b3598a90c080b9429f9a86764fa6845ae65`](./contracts/ethereum-1/0x01491b3598a90c080b9429f9a86764fa6845ae65/) | PoolRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x669954e6b63b2156e120f815d0b734589153f334`](./contracts/base-8453/0x669954e6b63b2156e120f815d0b734589153f334/) | ProtocolTieredFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cacd2d64edccd5df47824a0b85a1dacca4b7102`](./contracts/ethereum-1/0x1cacd2d64edccd5df47824a0b85a1dacca4b7102/) | ProxyOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x077f89c0fc4259b8e2abc0fe6eec655eb2da87d5`](./contracts/optimism-10/0x077f89c0fc4259b8e2abc0fe6eec655eb2da87d5/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0f482c4cf499fd57cf643c350a7261b403be865c`](./contracts/optimism-10/0x0f482c4cf499fd57cf643c350a7261b403be865c/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4232f5388fdf479c3a1a2b7816f135c618682662`](./contracts/base-8453/0x4232f5388fdf479c3a1a2b7816f135c618682662/) | SmartFarmingManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9614bfc8e5350e559a9a02eab4574d5b332fc87f`](./contracts/optimism-10/0x9614bfc8e5350e559a9a02eab4574d5b332fc87f/) | SwapOrdersFillerUsingUniV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbde032fdf114b4005e5320881b96246347d2b2d6`](./contracts/ethereum-1/0xbde032fdf114b4005e5320881b96246347d2b2d6/) | SwapperUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9a41fde326d3de75b4672f8e9315dbcd56d128d7`](./contracts/optimism-10/0x9a41fde326d3de75b4672f8e9315dbcd56d128d7/) | SyntheticToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5b84eaafb31672f5f264d258561710675b028ead`](./contracts/optimism-10/0x5b84eaafb31672f5f264d258561710675b028ead/) | ToVerify | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1425188a9c286ad3cce85eef40d93ad1259bea5d`](./contracts/ethereum-1/0x1425188a9c286ad3cce85eef40d93ad1259bea5d/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4661407fc224e5432d7f528a20ef8906e453a8f3`](./contracts/base-8453/0x4661407fc224e5432d7f528a20ef8906e453a8f3/) | ZeroedFeePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 54 |
| upstream | 15 |
| standard_library | 2 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=75

Fork inheritance lineage and inherited audits are included when available.
