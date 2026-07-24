# Agentic Audit Brief: Asymmetry

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 5 audit(s)
- Eligible audit results: 15 (5 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: DECLINING - TVL dropped 61.8% over 90 days

## Project Overview

- Project: Asymmetry (`asymmetry`)
- Website: [https://asymmetry.fi](https://asymmetry.fi)
- Lifecycle: declining (Tier 0, 93.3% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, ethereum
- Contract surface: 672 unique implementations (759 raw deployments)
- Coverage basis: 5/51 confirmed own live verified implementations (9.8%); conservative 9.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,108,098.00
- On-chain TVL (included contracts): $27,642,835.48
- TVL by chain: Ethereum $25,252,221.65 | Base $2,390,613.83

## Project Description

This brief describes the observed EVM deployment and audit surface for Asymmetry. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 69 contract row(s) across base, ethereum. Structural roles: 41 supporting, 25 core, 2 unclassified, 1 infra. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 69
- Structural roles: supporting (41), core (25), unclassified (2), infra (1)
- Contract kinds: contract (67), abstract (2)
- Detected standards: erc20 (5), ownable (3), erc165 (1), erc1967proxy (1), ownable2step (1)
- Frameworks: openzeppelin (55), solady (52), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 4

## Fork Analysis

45 of 215 contracts are derived from known codebases. 170 contracts have no detected origin.

### Forked Contracts

**ActivePool** (`0x08eaafd8fbb12cf12d6765e80c5b0ff8490c232d`, chain 1)
Origin: liquity (`0xeb5a8c...b16afe`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ActivePool** (`0x20f29569566020d8e49c9843033c370772a93774`, chain 1)
Origin: liquity (`0xeb5a8c...b16afe`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ActivePool** (`0x244c422663328233a5d1bd5045ff943ba97d046e`, chain 1)
Origin: liquity (`0xeb5a8c...b16afe`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ActivePool** (`0xb00d1d5dfd72a440b8c04a5f7b5bc3c8159a7f44`, chain 1)
Origin: liquity (`0xeb5a8c...b16afe`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ActivePool** (`0xb87e1e1c4cc2decada13025a8dc8a94bdb77fb63`, chain 1)
Origin: liquity (`0xeb5a8c...b16afe`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ActivePool** (`0xf507e264d507ef64a72aeaf4cc8c270d008fc48a`, chain 1)
Origin: liquity (`0xeb5a8c...b16afe`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AddressesRegistry** (`0x0ad1c302203f0fbb6ca34641bdfef0bf4182377c`, chain 1)
Origin: liquity (`0x8d733f...3aac54`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AddressesRegistry** (`0x0c7b6c6a60ae2016199d393695667c1482719c82`, chain 1)
Origin: liquity (`0x8d733f...3aac54`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AddressesRegistry** (`0x2c5a85a3fd181857d02baff169d1e1cb220ead6d`, chain 1)
Origin: liquity (`0x8d733f...3aac54`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AddressesRegistry** (`0x330a0fdfc1818be022fedce96a041293e16dc6d1`, chain 1)
Origin: liquity (`0x8d733f...3aac54`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AddressesRegistry** (`0x3414bd84dff0900a9046a987f4df2e0ef08fa1ce`, chain 1)
Origin: liquity (`0x8d733f...3aac54`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AddressesRegistry** (`0xbd9f75471990041a3e7c22872c814a273485e999`, chain 1)
Origin: liquity (`0x8d733f...3aac54`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BorrowerOperations** (`0x2538cd346429ea59902e02448bb7a7c098e4554e`, chain 1)
Origin: liquity (`0x372abd...46bc65`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BorrowerOperations** (`0x336d9c5ecb9d6ce79c8c077d35426e714969b41d`, chain 1)
Origin: liquity (`0x372abd...46bc65`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BorrowerOperations** (`0x57bd20ae68f845b35b76fe6e0239c9929eb48469`, chain 1)
Origin: liquity (`0x372abd...46bc65`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BorrowerOperations** (`0x664507f1445657d36d8064663653b7810971f411`, chain 1)
Origin: liquity (`0x372abd...46bc65`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BorrowerOperations** (`0x9e601005deaaee8294c686e28e1affd04cc13830`, chain 1)
Origin: liquity (`0x372abd...46bc65`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BorrowerOperations** (`0xda9af112edfd837eebc1780433481426a52556e0`, chain 1)
Origin: liquity (`0x372abd...46bc65`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CbbtcZapper** (`0x1666ee2dbb308c1ee321cc6f1575afceaad9b1e5`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**StabilityPool** (`0x446f358e3a927cc68f342141d78aa2d1c54e18f0`, chain 1)
Origin: liquity (`0x5721cb...4cf9bf`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**StabilityPool** (`0x545a7ddfd863bd7ea0bfc689125169598085f75e`, chain 1)
Origin: liquity (`0x5721cb...4cf9bf`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**StabilityPool** (`0x83e5bde77d7477ecd972e338541b90af57675536`, chain 1)
Origin: liquity (`0x5721cb...4cf9bf`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**StabilityPool** (`0x922faa141e95e43a9deeab8dade3ac8d4a32ad5c`, chain 1)
Origin: liquity (`0x5721cb...4cf9bf`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**StabilityPool** (`0xb571781cedf07257d60d6b252a3d8b24150ded97`, chain 1)
Origin: liquity (`0x5721cb...4cf9bf`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**StabilityPool** (`0xd48dc7cddc481f596bd9a97755c7ac696ad4ea87`, chain 1)
Origin: liquity (`0x5721cb...4cf9bf`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenLocker** (`0xf119b5aa93a7755b09952b3a88d04cdaf5329034`, chain 1)
Origin: mellow-protocol (`0x09a028...f75bf7`)
Containment: 59.4% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- setFeeReceiver(address)
- unfreeze()

Removals (removed from original):
- BIMA_CORE()
- bimaCore()
- getAccountBalancesRaw(address)
- getAccountWeeklyUnlocks(address,uint256)
- getTotalWeeklyUnlocks(uint256)
- incentiveVoter()
- lockToken()
- lockToTokenRatio()
- MAX_LOCK_WEEKS()
- penaltyWithdrawalsEnabled()
- totalDecayRate()
- totalUpdatedWeek()
- unfreeze(bool)

**TroveManager** (`0x478e7c27193aca052964c3306d193446027630b0`, chain 1)
Origin: liquity (`0x7bcb64...76cf5a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TroveManager** (`0x53ce82ac43660aab1f80fecd1d74afe7a033d505`, chain 1)
Origin: liquity (`0x7bcb64...76cf5a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TroveManager** (`0x7aff0173e3d7c5416d8caa3433871ef07568220d`, chain 1)
Origin: liquity (`0x7bcb64...76cf5a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TroveManager** (`0x7bd47eca45ee18609d3d64ba683ce488ca9320a3`, chain 1)
Origin: liquity (`0x7bcb64...76cf5a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TroveManager** (`0xf8a25a2e4c863bb7cea7e4b4eeb3866bb7f11718`, chain 1)
Origin: liquity (`0x7bcb64...76cf5a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TroveManager** (`0xfb17d0402ae557e3efa549812b95e931b2b63bce`, chain 1)
Origin: liquity (`0x7bcb64...76cf5a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**WbtcZapper** (`0x2ae50916b4467c681689069bb54e94fd0246ba65`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**WbtcZapper** (`0xf8853a3c8fed7e3ef145816b98f15278fcc2aa1c`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0x07011c1cdebc84fd5bbc64db6ce5ca9b92ca598a`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0x14300f754c11ac4c848732151d80affb12f90374`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0x1f18afbd0a055fe05acfe22ce951dfc556f0bba4`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0x1f4f32fbc1e6d3460bd33b88e035aa0795cc2949`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0x547d14f2e230cda0b99a17a1e396dc5b1e5d0920`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0x54867de8786dbd761463729f570b76172733f010`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0x58d1a68f882eed25a63cd4c2c5b574066a78f961`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0x9f69960304183768a01e0ba9f8a0164b556642d2`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0xb6e58f716ea885a26a1b7e6ee7ca779efab32dae`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0xe1dde16f0dc85e05893b20131eb49deed543d68d`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

**ZapperAsFuck** (`0xff2736078e4a42c9f8fc7247412a724945a0e5ae`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 95.2% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- receiveFlashLoanOnCloseTroveFromCollateral(CloseTroveParams,uint256)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0000005ac28de2cbda005a8500a9578921fdb7da`, chain 1)
- UnnamedContract (`0x001fdd4f3405f97ed61c7dc817208dfeb8f6cb70`, chain 1)
- UnnamedContract (`0x019d8fd94a8947c12f96b7b52b6161d46e706ca7`, chain 1)
- UnnamedContract (`0x01e111d815261c8ad6a1271861970e804e4282e4`, chain 1)
- UnnamedContract (`0x01e37634cbd25ec7ffe680ece5eec178ff51ef2d`, chain 1)
- UnnamedContract (`0x0291c873838f7b62d743952d268bebe9ace1efa4`, chain 1)
- UnnamedContract (`0x03ed0485b586db818ab02e95eeeb5921b418a124`, chain 1)
- UnnamedContract (`0x05d1b7cef2d8ad38cb867bdeed1e9674ad2e5b31`, chain 1)
- UnnamedContract (`0x0655977feb2f289a4ab78af67bab0d17aab84367`, chain 1)
- UnnamedContract (`0x069f91fee9ddff23e017a9d152087d2c7481bdb4`, chain 1)
- UnnamedContract (`0x078eae28a2bb4a5eb3cffd96011606e7e511f05e`, chain 1)
- UnnamedContract (`0x07ac2ba2aa4a7223dd5a63583808a3d79d8a979e`, chain 1)
- UnnamedContract (`0x085abee74f74e343647bdd2d68927e59163a0904`, chain 1)
- UnnamedContract (`0x08fed38de1035288c0f142a40fdc23f5df120025`, chain 1)
- UnnamedContract (`0x0a36224486d4e49deb27b489233c6b64e0241d6a`, chain 1)
- UnnamedContract (`0x0b656b3af27e3a9cf143d16ed46466e0be27fecc`, chain 1)
- UnnamedContract (`0x0bdc2d83051d6da84e2ae5cc63bb6ef7ae60581f`, chain 1)
- UnnamedContract (`0x0e493f67f568b01c79f6b167ab0ffd3645d25bc2`, chain 1)
- UnnamedContract (`0x0f462915322cc2ca01f2e1e3dc7c598c43929b55`, chain 1)
- UnnamedContract (`0x0f7e2640aef5373d79bffbfa6798d64dafb93802`, chain 1)
- UnnamedContract (`0x0f7eb92d20e9624601d7dd92122aed80efa8ec6a`, chain 1)
- UnnamedContract (`0x16b8111a999a9bdc3181192620a8f7b2439837dd`, chain 1)
- UnnamedContract (`0x18084fba666a33d37592fa2633fd49a74dd93a88`, chain 1)
- UnnamedContract (`0x1d9cc5a514368e6f28eba79b2db8fa5c9484b058`, chain 1)
- UnnamedContract (`0x1e61cc99a573ad78960d9bcc80005abf7a93ad9b`, chain 1)
- UnnamedContract (`0x1fdb7aae1d7676ff88e23b2799383ed6a14d63e2`, chain 1)
- UnnamedContract (`0x20e3630d9ce22c7f3a4aee735fa007c06f4709df`, chain 1)
- UnnamedContract (`0x22d75a999ddef194e049f4d9e8885bd2aa1d0f75`, chain 1)
- UnnamedContract (`0x23346b04a7f55b8760e5860aa5a77383d63491cd`, chain 1)
- UnnamedContract (`0x233817bd6970f2ec7f6963b02ab941dec0a87a70`, chain 1)
- UnnamedContract (`0x254a6a3e172a81d5825122403e1bc4d47f264a07`, chain 1)
- UnnamedContract (`0x26e6307ca1f7ba57bedb16a80e366b01e814ed77`, chain 1)
- UnnamedContract (`0x274d12cc490d93371e36e1204ae4988cb83d26a5`, chain 1)
- UnnamedContract (`0x27f539ec3fa3e548e10d4ac883534eba891bb212`, chain 1)
- UnnamedContract (`0x2aff30744843af04f68286fa4818d44e93b80561`, chain 1)
- UnnamedContract (`0x2ba8e31b6c1c9f46046315406e840dbabea803a8`, chain 1)
- UnnamedContract (`0x2bd5a16f63480454a8302ad640323ab765a96930`, chain 1)
- UnnamedContract (`0x2c56dd3a83d583810ce1ddae103660e46f0274a6`, chain 1)
- UnnamedContract (`0x2c659500f95560645aa45820f17949aafc393929`, chain 1)
- UnnamedContract (`0x2cef516e9db2240f83002fb41a4e883b24e0ffb1`, chain 1)
- UnnamedContract (`0x2e937bbf06ad085e98d6eddec887589d61edd3b7`, chain 1)
- UnnamedContract (`0x31ef8a70f1f80d59b1c37592215c0287cd73ca3e`, chain 1)
- UnnamedContract (`0x3535a5551bb0f1a41e15eb2bf75b0dc8d57058cb`, chain 1)
- UnnamedContract (`0x38b5c7a506fff3d3dafd2d013e969d6e99cd9b73`, chain 1)
- UnnamedContract (`0x3bca1380bcab9889f440406a3c2f493be31c3ae2`, chain 1)
- UnnamedContract (`0x3e40bb108350a449c19dd11a842637566215c43b`, chain 1)
- UnnamedContract (`0x3ecce7bfe668a1af0c520661ca79859d4c5605a9`, chain 1)
- UnnamedContract (`0x40785101e6bb3c546a7b07b8f883ef79763932ef`, chain 1)
- UnnamedContract (`0x46b7180721eb35983d97e6f819bcedbe77ebcc03`, chain 1)
- UnnamedContract (`0x4b3eb2b1bbb0134d5ed5daa35fea78424b9481cd`, chain 1)
- UnnamedContract (`0x4b677b2c2bdaa64bca08c62c4596d526e319ea7b`, chain 1)
- UnnamedContract (`0x4c4d2ff3d49a3a0785cced6c79deaff27ffb5d49`, chain 1)
- UnnamedContract (`0x4d349971c23d6142e8de9debbfdbb045b7aaba49`, chain 1)
- UnnamedContract (`0x4f3d778a6182fe0c3e1723c1432ce0bf5eff5526`, chain 1)
- UnnamedContract (`0x53a5de1b94d7409f75fff49fd81a823fb874bf71`, chain 1)
- UnnamedContract (`0x56664ffccff6bb282cca96808af03d9042e1f799`, chain 1)
- UnnamedContract (`0x576eba782d9b5f8bab2dc729bb430849b9b5e1fe`, chain 1)
- UnnamedContract (`0x5aad68387cec384dc4d7af6bfc23f4f05e424d85`, chain 1)
- UnnamedContract (`0x5c1db629f4dac3334bb486e467003c762abd3177`, chain 1)
- UnnamedContract (`0x60eef55574ef687381d965eacf7cde0c8b61ca38`, chain 1)
- UnnamedContract (`0x6223d9ec34f379fb649fff5fabb96a593afb5431`, chain 1)
- UnnamedContract (`0x6296d175e605978370168c97221468ab22175444`, chain 1)
- UnnamedContract (`0x62b9eb030ba4cd6fddc6cf48f60e5bca454cb2f2`, chain 1)
- UnnamedContract (`0x63321ee523a8d4e23c65a9206da5a755dd6a72fe`, chain 1)
- UnnamedContract (`0x64454c84dc289c7cde7e2ee2f87ae1196bc9cd36`, chain 1)
- UnnamedContract (`0x6563200449414f8d147d34d0f043045e48ddc89f`, chain 1)
- UnnamedContract (`0x65799d1368ed24125179dd6bf5e9b845797ca1ba`, chain 1)
- UnnamedContract (`0x67453e302d54f9b98c19526ab39dbd14b974d096`, chain 1)
- UnnamedContract (`0x6d013fd94b789ab98470c1860527dd5718a3da2f`, chain 1)
- UnnamedContract (`0x6f35f38d93165b67edc6abcd4b8ac5fef5ea86e0`, chain 1)
- UnnamedContract (`0x70896a8da8aa770d70f44f18b9106d6ecd1d7105`, chain 1)
- UnnamedContract (`0x743ee66dac0b3b1bd3a7ac99312393ec5a290ee6`, chain 1)
- UnnamedContract (`0x76365e44314c048a924314c3bd9bf59d6fa9e243`, chain 1)
- UnnamedContract (`0x783da97a2feb06fc3a302041bf1ae096b8ef0019`, chain 1)
- UnnamedContract (`0x7c0eaaa7749b2c703a828407ada186dfc8866e1e`, chain 1)
- UnnamedContract (`0x7c1765fd1ab5afaed4a0a0ac74b2e4c45f5a5572`, chain 1)
- UnnamedContract (`0x7ed60c6e3b1ab0a7743f226e2c9649af15b4f684`, chain 1)
- UnnamedContract (`0x7f1171686e6028c321517edb6dd70321164b6343`, chain 1)
- UnnamedContract (`0x7f32320669e22380d00b28492e4479b93872d568`, chain 1)
- UnnamedContract (`0x7f5d15f4053f1e34025907f0741f2abc4353c65c`, chain 1)
- UnnamedContract (`0x7ff33ef1a2dcb95c711cc13b890be183f6288e6b`, chain 1)
- UnnamedContract (`0x806b2921e394b3f84a549ab89cf73e57f0c882c5`, chain 1)
- UnnamedContract (`0x822a91c2b394051a32dddd3a0e4a657e908b6049`, chain 1)
- UnnamedContract (`0x83f20f44975d03b1b09e64809b757c47f942beea`, chain 1)
- UnnamedContract (`0x8450fb582063c1a1a7c68fe5ca4fc3dbf2ad969e`, chain 1)
- UnnamedContract (`0x87e670b71958d39113b7961dd016ec198ad82c03`, chain 1)
- UnnamedContract (`0x8a99bee720f80601d28f8dfe958bc12ddbd86741`, chain 1)
- UnnamedContract (`0x8bbed56077d5e1de85c22b28682f25e8463204f7`, chain 1)
- UnnamedContract (`0x8bf82598fb8424ca59ffbfe88543820d05b0d425`, chain 1)
- UnnamedContract (`0x8f409d86d1433979eb142e37d3e74f46257c7c9a`, chain 1)
- UnnamedContract (`0x8f59b57b0ef481e922679a78ff4a073602d76c43`, chain 1)
- UnnamedContract (`0x98d9b02b41cc2f8e72775da528401a33765bc166`, chain 1)
- UnnamedContract (`0x98f3f4ba1bbcd4fa3d7caf1eb88d93cd628cff02`, chain 1)
- UnnamedContract (`0x994927921e9ad789cc3788fd8e46a2f28a2ef225`, chain 1)
- UnnamedContract (`0x9cf12ccd6020b6888e4d4c4e4c7aca33c1eb91f8`, chain 1)
- UnnamedContract (`0x9d39a5de30e57443bff2a8307a4256c8797a3497`, chain 1)
- UnnamedContract (`0x9dc845b500853f17e238c36ba120400dbea1d02a`, chain 1)
- UnnamedContract (`0x9de6745f04acb02c67310588353a70a10ae865dd`, chain 1)
- UnnamedContract (`0xa0211636d2d90d47fab14f968b1a49c7d3128ee0`, chain 1)
- UnnamedContract (`0xa0290af48d2e43162a1a05ab9d01a4ca3a8b60cb`, chain 1)
- UnnamedContract (`0xa3931d71877c0e7a3148cb7eb4463524fec27fbd`, chain 1)
- UnnamedContract (`0xa46d2dca358ef789586f292c132bff3372e2cdd6`, chain 1)
- UnnamedContract (`0xada317bdabb3c78f581ec2e056d5557663669fd0`, chain 1)
- UnnamedContract (`0xaf99e6cf5832222c0e22ef6bf0868c4ed7f2953f`, chain 1)
- UnnamedContract (`0xb1866e385f8b17060b1249708d4bdace09de1624`, chain 1)
- UnnamedContract (`0xb456f5852c35505f119b60c28438bf488289ca1f`, chain 1)
- UnnamedContract (`0xb585c432b77f8fbba53ed3ebd8b588f0f8c16096`, chain 1)
- UnnamedContract (`0xb628b1fdbe8c01777aea2bf3bd386df4af84e8d3`, chain 1)
- UnnamedContract (`0xb81cb6db86d2aa95d2239f849e548c38aad403d1`, chain 1)
- UnnamedContract (`0xb828a33af42ab2e8908dfa8c2470850db7e4fd2a`, chain 1)
- UnnamedContract (`0xbd87cd436de4ee066f146175a283a65db9973062`, chain 1)
- UnnamedContract (`0xc18e1867707b6186b3548a73c62077775e88602f`, chain 1)
- UnnamedContract (`0xc20a51f66c917feff80d1e089199f727060c0369`, chain 1)
- UnnamedContract (`0xc470a1574b469a562fb237e289fdb217f8c14dc9`, chain 1)
- UnnamedContract (`0xc5454328a03ead90cf5700997040998e454fd577`, chain 1)
- UnnamedContract (`0xc67b1883abbe62bcc241f8f5f89e84846c04a00e`, chain 1)
- UnnamedContract (`0xc693c91c855f4b51957f8ea221534538232f0f98`, chain 1)
- UnnamedContract (`0xc89c160099090598ee3f570def29804da2f969a2`, chain 1)
- UnnamedContract (`0xc9e524c90598d679b6d1fd46cd1decfd20e353f3`, chain 1)
- UnnamedContract (`0xcbb43a0a3fe57cab5fe4cb29bf654c4a17cfe3fd`, chain 1)
- UnnamedContract (`0xcc47da99965e3c8dd89b6e9305bb10232a314d23`, chain 1)
- UnnamedContract (`0xcd3579a7fb0a46f20a3317d649af07e9651175c5`, chain 1)
- UnnamedContract (`0xcda8cca990aff26fd8298e0d30304e4d01f7b387`, chain 1)
- UnnamedContract (`0xce1ca28e54fd3bd431f893ddfffa1bd619c0517e`, chain 1)
- UnnamedContract (`0xcf62f905562626cfcdd2261162a51fd02fc9c5b6`, chain 1)
- UnnamedContract (`0xcf64a6a17bd6aea1b7834e66dbd696f81bd8a10c`, chain 1)
- UnnamedContract (`0xd00182e777f6da3220355965412c9605fcd80aa5`, chain 1)
- UnnamedContract (`0xd344626aadb84a23781b14b2f1ff01e40910a44a`, chain 1)
- UnnamedContract (`0xd369aabdd62c7627bf7c041144862c780f56cbf2`, chain 1)
- UnnamedContract (`0xd55cb395408678cab7ebfdb69f74e461e5307780`, chain 1)
- UnnamedContract (`0xd7954a8c7fa74c97ad2545719ce82eae915d73f7`, chain 1)
- UnnamedContract (`0xd7a4d09680b8211940f19e1d1d25dc6568a4e0d0`, chain 1)
- UnnamedContract (`0xd85a27d9d1eedd0fb75067f981284d7cd6196c0b`, chain 1)
- UnnamedContract (`0xd8c2a43ffbc2df5d9514fdee80aa6758a3ed8c80`, chain 1)
- UnnamedContract (`0xd95692af0a30d936287bc7dc3837d3fbf7415f8a`, chain 1)
- UnnamedContract (`0xdee8a9ac2c2819fe6a3bae45a12bff70c604805a`, chain 1)
- UnnamedContract (`0xdf124ac313c0b5d9e61db7da7faaf05aedc832c6`, chain 1)
- UnnamedContract (`0xe8e0924fcacc3642aa7d28b7a0c3e8799498fc62`, chain 1)
- UnnamedContract (`0xe9a258f362fc7f8003a39b087046f64815cc9c56`, chain 1)
- UnnamedContract (`0xf0a383222057bfb603dd3289bca0c51cf24d95b4`, chain 1)
- UnnamedContract (`0xf7f8db72700c40ce84fb01d3b1fbdafed81dc51f`, chain 1)
- UnnamedContract (`0xfa0033783210731b8587432ffbb366ff98bc52bb`, chain 1)
- UnnamedContract (`0xfab7396e2a6a3364e02ed26d2f80a354aa923b88`, chain 1)
- UnnamedContract (`0xfba97f86967feacd3e62a0fcac5c19d7b60fb7d4`, chain 1)
- UnnamedContract (`0xfc72d7301c323a5bcfd10ffde35908ce201b6c52`, chain 1)
- UnnamedContract (`0xfd256da1aa42695351c08b2ff4a91ebba1a07f7f`, chain 1)
- UnnamedContract (`0xfe6f765e77fd8f17ec3a985ac36c3c3ea92c946d`, chain 1)
- UnnamedContract (`0xfff2b6d4d6f58d02e07bc6f2d73fe0e0987c7726`, chain 1)
- UnnamedContract (`0x7543e3829ecdd61a5fd7c187ff88c4cf46e30f73`, chain 8453)
- AsfToken (`0x59a529070fbb61e6d6c91f952ccb7f35c34cf8aa`, chain 1)
- BTCPriceFeed (`0x4b74d043336678d2f62dae6595bc42dccabc3bb1`, chain 1)
- BTCPriceFeed (`0xeaf3b36748d89d64ef1b6b3e1d7637c3e4745094`, chain 1)
- CollateralRegistry (`0x33d68055cd54061991b2e98b9ab326ffce4d60fe`, chain 1)
- dASF (`0x7fe24f1a024d33506966cb7ca48bab8c65fb632d`, chain 1)
- HintHelpers (`0x838a1f38c361ffa1b23201640752149adb4e865a`, chain 1)
- InterestRouter (`0x1771f4de6836b10b59dd66990b0190985df6673c`, chain 1)
- MultiTroveGetter (`0xb3683a407bddddfb126cf06fb52d974a08fd7e80`, chain 1)
- PirexMigrator (`0x552f4b850d4963d914e6b2c011b5fe475468d3b8`, chain 1)
- SimpleProxy (`0x0000000016e6cb3038203c1129c8b4aee7af7a11`, chain 1)
- SimpleProxy (`0x00000069abbb0b1ad6975bcf753eee15d318a0bf`, chain 1)
- SimpleProxy (`0x8668a15b7b023dc77b372a740fcb8939e15257cf`, chain 1)
- WETHPriceFeed (`0x0daafddcf74451caec724bcd2f0d7e4025c95b94`, chain 1)
- WETHPriceFeed (`0x2113468843cf2d0fd976690f4ec6e4213df46911`, chain 1)
- WETHPriceFeed (`0x629b6c0dcdf865584fd58a08727abb9db7390e28`, chain 1)
- WETHPriceFeed (`0x653df748bf7a692555dcdbf4c504a8c84807f7c7`, chain 1)
- WETHPriceFeed (`0x7f575323ddedfbad449fef5459fad031fe49520b`, chain 1)
- WETHPriceFeed (`0xf125c72ae447efdf3fa3601eda9ac0ebec06cbb8`, chain 1)
- WrappedCbbtc (`0x7fd713fe57fcd0a7636c152faba6bdc2d3b27d15`, chain 1)
- WrappedWbtc (`0xe065bc161b90c9c4bba2de7f1e194b70a3267c47`, chain 1)
- WrappedWbtc (`0xf53bb90bd20c2a3eb3eb01e8233130a69db58324`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 69; live-surface rows included: 69 (66 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 212/219 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/51 (9.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 197 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 468 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 37
- Confirmed-live implementations: 197 of 672 unique; 475 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/134
- Verified + Unaudited implementations: 129
- Verified by bytecode match: 0
- Unverified implementations: 538
- Unique implementations: 672
- Raw deployments: 759
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $544,595.87
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 7 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 3.9% (Code4rena)
- Note: This protocol is classified as [declining]. ASD of $544,595.87 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| romeroadrian | Tier 2 | 4 | 3.0% | 2024-06 |
| Code4rena | Tier 1 | 2 | 1.5% | 2024-10 |
| Dedaub | Tier 2 | 1 | 0.7% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VotiumStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-380070 | 2 deployments: ethereum `0x00000069abbb0b1ad6975bcf753eee15d318a0bf`; ethereum `0xb628b1fdbe8c01777aea2bf3bd386df4af84e8d3` | ✅ Audited |
| AfCvx | unknown | project_anchor | own_supporting | 1 | ethereum | unit-380068 | 2 deployments: ethereum `0x56664ffccff6bb282cca96808af03d9042e1f799`; ethereum `0x8668a15b7b023dc77b372a740fcb8939e15257cf` | ✅ Audited |
| AfEth | unknown | project_anchor | own_supporting | 1 | ethereum | unit-380071 | 2 deployments: ethereum `0x0000000016e6cb3038203c1129c8b4aee7af7a11`; ethereum `0xdf124ac313c0b5d9e61db7da7faaf05aedc832c6` | ✅ Audited |
| CollateralRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-379913 | `0x33d68055cd54061991b2e98b9ab326ffce4d60fe` | ✅ Audited |
| PirexMigrator | periphery | project_anchor | own_supporting | 0 | ethereum | unit-379936 | `0x552f4b850d4963d914e6b2c011b5fe475468d3b8` | ✅ Audited |

### ⚠️ Verified + Unaudited (129)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| swETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf951e335afb289353dc249e82926178eac7ded78` | ⚠️ Unaudited |
| RETHToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9559aaa82d9649c7a7b220e7c461d2e74c9a3593` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaad3b9047dca4d5565471a3cce2767c56535ec65` | ⚠️ Unaudited |
| AsfToken | token | project_anchor | own_supporting | 0 | ethereum | unit-379940 | `0x59a529070fbb61e6d6c91f952ccb7f35c34cf8aa` | ⚠️ Unaudited |
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-380004 | `0xb00d1d5dfd72a440b8c04a5f7b5bc3c8159a7f44` | ⚠️ Unaudited |
| WrappedWbtc | token | project_anchor | own_supporting | 0 | ethereum | unit-380044 | 2 deployments: ethereum `0xe065bc161b90c9c4bba2de7f1e194b70a3267c47`; ethereum `0xf53bb90bd20c2a3eb3eb01e8233130a69db58324` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 6 | ethereum | n/a | 6 deployments: ethereum `0x1ee6db6b89fbf07489ec4cdae89b82c97c7c53ea`; ethereum `0x2637f30242bb8eed4e8c261aa5b6ebf0e9b970ef`; ethereum `0x2ffff76ee152164f4defc95fb0cf88528251ab9e`; ethereum `0x654973123cd5c7e3f47fee7e94a85b55e919f912`; ethereum `0x69671a4da351b64026302f6ac24827620c3c7665`; ethereum `0x6dec370efa894d48d8c55012b0cd6f3c1c7c4616` | ⚠️ Unaudited |
| WrappedWbtc | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99b36ed441cd2936ae3742c9cba62d261a468752` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0abd93da8387b5ef0511a2859d85d84fe4519e94` | ⚠️ Unaudited |
| StafiSuperNodeFeePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc5a28885a1800b1435982954ee9b51d2a8d3bf0` | ⚠️ Unaudited |
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379867 | `0x08eaafd8fbb12cf12d6765e80c5b0ff8490c232d` | ⚠️ Unaudited |
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379890 | `0x20f29569566020d8e49c9843033c370772a93774` | ⚠️ Unaudited |
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379895 | `0x244c422663328233a5d1bd5045ff943ba97d046e` | ⚠️ Unaudited |
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-380013 | `0xb87e1e1c4cc2decada13025a8dc8a94bdb77fb63` | ⚠️ Unaudited |
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-380053 | `0xf507e264d507ef64a72aeaf4cc8c270d008fc48a` | ⚠️ Unaudited |
| AddressesRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-379870 | 4 deployments: ethereum `0x0ad1c302203f0fbb6ca34641bdfef0bf4182377c`; ethereum `0x0c7b6c6a60ae2016199d393695667c1482719c82`; ethereum `0x330a0fdfc1818be022fedce96a041293e16dc6d1`; ethereum `0x3414bd84dff0900a9046a987f4df2e0ef08fa1ce` | ⚠️ Unaudited |
| AddressesRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-379906 | 2 deployments: ethereum `0x2c5a85a3fd181857d02baff169d1e1cb220ead6d`; ethereum `0xbd9f75471990041a3e7c22872c814a273485e999` | ⚠️ Unaudited |
| AETH_R21 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe95a203b1a91a908f9b9ce46459d101078c2c3cb` | ⚠️ Unaudited |
| AfEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x5281cca5a757b1c8487be7e3368c62db32c7288f`; ethereum `0x8896ef81b2d1c92e8540d543816a5260b991a61c`; ethereum `0x90a60788c1a94c2eac4f8621f42ada81a956778a`; ethereum `0xae4131013f141f6306acbcbd26ba7006f8f63256` | ⚠️ Unaudited |
| AfEthRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x18d49239edc031fec1747200cd315eca4fbfdc67`; ethereum `0x7df87c1f23192803167106b76e730227e1c288ad` | ⚠️ Unaudited |
| Ankr | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xf4a1735505188daf0872312dd1a6182d342ea981`; ethereum `0xfa2d4c03b9b48918f37c926f2dd08dca70d7082f` | ⚠️ Unaudited |
| ASFOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4feb6c50a69d0cb29f77e307249c767607b04408` | ⚠️ Unaudited |
| AsfToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x17969afc774ec28802f1316cd4474c537114600a`; ethereum `0x876f12e22c3471e3ca790cfd079a7842db29e7f7` | ⚠️ Unaudited |
| AsfToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb0f0fd4cb6df6c0e3860336a1514e94f3552082` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e988d3a79cc4daedfdc7cef2f76160f81c8f945` | ⚠️ Unaudited |
| AuctionFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a3702d81fd317fa1b8735227e29dc756c976c5` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379896 | `0x2538cd346429ea59902e02448bb7a7c098e4554e` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379912 | `0x336d9c5ecb9d6ce79c8c077d35426e714969b41d` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379938 | `0x57bd20ae68f845b35b76fe6e0239c9929eb48469` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379953 | `0x664507f1445657d36d8064663653b7810971f411` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379994 | `0x9e601005deaaee8294c686e28e1affd04cc13830` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-380042 | `0xda9af112edfd837eebc1780433481426a52556e0` | ⚠️ Unaudited |
| BTCPriceFeed | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-379927 | 2 deployments: ethereum `0x4b74d043336678d2f62dae6595bc42dccabc3bb1`; ethereum `0xeaf3b36748d89d64ef1b6b3e1d7637c3e4745094` | ⚠️ Unaudited |
| CbbtcZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379880 | `0x1666ee2dbb308c1ee321cc6f1575afceaad9b1e5` | ⚠️ Unaudited |
| CollateralRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x447fd8743a7a545fc95a42bf4afd4122bdcaeff4`; ethereum `0xa70d1455f393f709de0f94ab9e6d9f5777096650`; ethereum `0xd5d9c0d32890be92d7680b65e785e4a95c366a35` | ⚠️ Unaudited |
| CollateralRegistry | registry | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-380031 | `0xcff0dcab01563e5324ef9d0adb0677d9c167d791` | ⚠️ Unaudited |
| CrvUsdFallbackOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b36d82bfb9ea09bbed084be34df942aad0eeb35` | ⚠️ Unaudited |
| dASF | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379971 | 3 deployments: ethereum `0x7fe24f1a024d33506966cb7ca48bab8c65fb632d`; ethereum `0x9e1eda81f41242327036533af866b113df241d97`; ethereum `0xf941898f4207c75ed5032bd28f696253b810dffa` | ⚠️ Unaudited |
| dASF Redemptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5b9a4b5a377e2377f6f5873e95d9274caed4b680`; ethereum `0x8f1477eb096d664d317c2c31cb647c9e2e98dc28`; ethereum `0xdc59d29608a5b16642a82b073c32ad4a72afdd27` | ⚠️ Unaudited |
| Dutch Desk | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d258d3ee00ef9840985afd373037d91c56f60e` | ⚠️ Unaudited |
| HintHelpers | periphery | project_anchor | own_supporting | 0 | ethereum | unit-379975 | `0x838a1f38c361ffa1b23201640752149adb4e865a` | ⚠️ Unaudited |
| InterestRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379882 | `0x1771f4de6836b10b59dd66990b0190985df6673c` | ⚠️ Unaudited |
| Multisig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x003aace7e639624b4d15cd923da81b356aee75d3`; ethereum `0x6aacff7ec8903c2c7883b1a6af85e6e330999aa6` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380006 | `0xb3683a407bddddfb126cf06fb52d974a08fd7e80` | ⚠️ Unaudited |
| OnLossDepositLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x746c238e34a6dbfe1d35d50471467bd7bf898f62` | ⚠️ Unaudited |
| Price Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1d07f500393b768c64b9ceeba85c58dc639cad4` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x12a14d3e78a2b0368ea784e04457af2bb6878d40`; ethereum `0x2b408df4b4e112276119bd6ca1710b6c9966809e`; ethereum `0x3777c51170b0c1cec4b236166680802c22d262cb`; ethereum `0xa30e67c67125942caeec5c0d2f21aff63bad1ed3`; ethereum `0xc6798b0f2d509d6c8c6df13adff5c1a5d38a6c11`; ethereum `0xdf9f1f2638fe661062a5aad49534c5554588aeac` | ⚠️ Unaudited |
| Reth | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x228f6ae1c458929427253e14879711d303c328d3`; ethereum `0xd8ed29a2d82d53307d8a4d9b33eb6e68ea8c4908` | ⚠️ Unaudited |
| Reth | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x50ea7bca3088b04ff0cb69fe72d70d9daec44cc4`; ethereum `0xbcfed6cc8ed838b7a8433ad83c271145798a115e` | ⚠️ Unaudited |
| Reth | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7b6633c0cd81dc338688a528c0a3f346561f5ca3`; ethereum `0xb3e64c481f0fc82344a7045592284fddb9905b8b` | ⚠️ Unaudited |
| Reth | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8d5dd29592bf3bd5dc98eb6c0e895fea4bd890d0`; ethereum `0xa5ad76eaec4a6982e79a69020e75413c9e78c32b` | ⚠️ Unaudited |
| RETHPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c3774c30cb609e13ffdbae7c5ecd189b0898c56` | ⚠️ Unaudited |
| RETHToBOLDExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aed7c8e57f905863caaab59fc10b5d95a4fab76` | ⚠️ Unaudited |
| SafEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x013c0652f5d700c875d45f1608e5089ed80bbcfb`; ethereum `0x28baa249307becdd85c556afa41f2c346e515c41`; ethereum `0x7c8fb4b1642f15c5d33e82a9704def85b76fd23e`; ethereum `0xce2b86550d3925c5588020ec003773bee38fd03c` | ⚠️ Unaudited |
| SafEth | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-380069 | 2 deployments: ethereum `0x591c4abf20f61a8b0ee06a5a2d2d2337241fe970`; ethereum `0x6732efaf6f39926346bef8b821a04b6361c4f3e5` | ⚠️ Unaudited |
| SafEth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xba9d683854209fa0f57ae0514fe281653f04c0df`; ethereum `0xe7ebef64f1ff602a28d8d37049e46d0ca77a38ac` | ⚠️ Unaudited |
| SafEth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbbf865043beed9b73bcdf15b6c5f278e5626931e`; ethereum `0xc57319e15d5d78ba73c08c4e09d320705bd4478d` | ⚠️ Unaudited |
| ScrvUsdOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0605efb3a50adc9f81dd456812953655aa4ec9` | ⚠️ Unaudited |
| SfrxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0e14dcfcf4c7eab1d7031835a38db1828b650e5f`; ethereum `0xbc47184697554348f1adbc30be13ed7e201cf86a` | ⚠️ Unaudited |
| SfrxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1ed84a676f3ba626389cb131e7c1bc32935bba37`; ethereum `0x9092101668b6befeaacd351f02bc1ac3bc2a60b6` | ⚠️ Unaudited |
| SfrxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x217e2487fd4323aa957730ebd24ce8f400d199d8` | ⚠️ Unaudited |
| SfrxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x27137a49472fb741b671770fcfcc918489113b11`; ethereum `0x36ce17a5c81e74dc111547f5dffbf40b8bf6b20a`; ethereum `0x636f16774cf553abf27c6b708a51d167304e49e8` | ⚠️ Unaudited |
| SfrxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x410edaf016482c8d3a866f778c24bd872a8797cf`; ethereum `0x4fb6c0f144790ee49cee25f62fee0c3fe5884fe6`; ethereum `0xa2f35a80a2f7ab67cf9187a4988129aa4c7f920c`; ethereum `0xdf7205bd4aa3985da5626d588c1215fb37c0c0cd` | ⚠️ Unaudited |
| SfrxUsdOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48ba7b711a8d5dadc6690de2e86533f70ee5b433` | ⚠️ Unaudited |
| Sorted Troves | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5b10963ff6c8bd0cb054a5a895ab91c1aca1e7d5`; ethereum `0xff1ce633646ca7fa3eb9c79a5dda340564afafb6` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379921 | `0x446f358e3a927cc68f342141d78aa2d1c54e18f0` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379933 | `0x545a7ddfd863bd7ea0bfc689125169598085f75e` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379976 | `0x83e5bde77d7477ecd972e338541b90af57675536` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379986 | `0x922faa141e95e43a9deeab8dade3ac8d4a32ad5c` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-380008 | `0xb571781cedf07257d60d6b252a3d8b24150ded97` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-380035 | `0xd48dc7cddc481f596bd9a97755c7ac696ad4ea87` | ⚠️ Unaudited |
| Stafi | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xad0e8edbdabdc4dd204b49f73511c1a13a8797cc`; ethereum `0xc9bbccaf813b3329586a2479ff04f1fc794822da` | ⚠️ Unaudited |
| StafiDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5db09e020d94f923408661f94704073dc86dba3d` | ⚠️ Unaudited |
| StafiLightNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c906685384df71e3fafa6f3b21bd884e9d44f4b` | ⚠️ Unaudited |
| StafiNodeManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8575c32bbc1ea9d33856a6de74be258712307a8` | ⚠️ Unaudited |
| StafiSuperNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x588e859cb38fecf2d56925c0512471ab47aa9ff1` | ⚠️ Unaudited |
| StafiUserDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc12dfb80d80d564db9b180abf61a252ee6355058` | ⚠️ Unaudited |
| StakeManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3aee3e96c9e340cbe0fffc5224db9e97949f3899` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x412330b91b991aa5a72e22bb5e43c1041dc25f9e` | ⚠️ Unaudited |
| StrategyAprOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0e40eb56626cfd0f41ca7a72618209d958561e65`; ethereum `0x716ee5e94b67b515e5266fa05ae0e2524c10a899`; ethereum `0x8d26d5251cf5e228a4aa7698c8c75879cebec807`; ethereum `0xe299634135b4f0037344ede02e4a98e28dfba79e`; ethereum `0xe9015ae7b6cf7d972ebd10ffc09ed26034f85786` | ⚠️ Unaudited |
| StrategyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x73dfcc4fb90e6e252e5d41f6588534a8043dba58`; ethereum `0xbf7a38c6de0831916301b8dd09bd72fbd0c547d1` | ⚠️ Unaudited |
| StrategyFixedReportTrigger | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x600d6aebd8eacfcfbb8eedff139408200d01007c` | ⚠️ Unaudited |
| StyBoldOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1ed3729cfcf9f93a7dbe1e4669bc67793182d03` | ⚠️ Unaudited |
| SusdsOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d09d5175783f0caa56d6d1e7590c2b935082d10` | ⚠️ Unaudited |
| Swell | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xf5ccaf2dbed6c7ae341df42a9a74e057e9df3d09`; ethereum `0xfb8725366b3e3011ff7445106f40fab97a8371b1` | ⚠️ Unaudited |
| TbtcFallbackOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x193b7da0f8036709774054dfd7539ca36654aba5` | ⚠️ Unaudited |
| TbtcOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39fca0f77ba22926e8e5ec5df68271eb49a3a775` | ⚠️ Unaudited |
| tBTCToUSDafExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a173e7223dbd1e66bbe654a0b8c4c1ebd98134f` | ⚠️ Unaudited |
| TokenLocker | token | project_anchor | own_supporting | 0 | ethereum | unit-380051 | `0xf119b5aa93a7755b09952b3a88d04cdaf5329034` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x5f10b16f0959aac2e33bedc9b0a4229bb9a83590`; ethereum `0xb5d336912eb99d0ea05f499172f39768afab8d4b` | ⚠️ Unaudited |
| Trove Manager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x36e9ee7a0ce154cc1e379a7c0231fa19c0b41c1f`; ethereum `0xc1296a0084702b72cfd465ff1ef11b8283dabaec` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-379923 | 4 deployments: ethereum `0x478e7c27193aca052964c3306d193446027630b0`; ethereum `0x53ce82ac43660aab1f80fecd1d74afe7a033d505`; ethereum `0x7aff0173e3d7c5416d8caa3433871ef07568220d`; ethereum `0xf8a25a2e4c863bb7cea7e4b4eeb3866bb7f11718` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-379962 | 2 deployments: ethereum `0x7bd47eca45ee18609d3d64ba683ce488ca9320a3`; ethereum `0xfb17d0402ae557e3efa549812b95e931b2b63bce` | ⚠️ Unaudited |
| USDaf Flash Zapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0502dbe106d80577b156b0679342a11dca91b072`; ethereum `0x07b152f14e53a4b24bf0e513a9743539efaead67`; ethereum `0x1a3f5ebaaf0702ec2a707cbd28b397dc4dca4baa`; ethereum `0x8b2754de2e814c7fdbf86c8464ee575d1f6ae07f`; ethereum `0x982e607b6495a63ffc715f694ed3211cb38b6fe2`; ethereum `0xf97f41f003a5b51abd62aadec12445ce47c96c8c` | ⚠️ Unaudited |
| USDaf Leverage Zapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90318f8028da3a985e9d2f777369c961a8542ee4` | ⚠️ Unaudited |
| VotiumStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x12fc2bf0edea2437cd4fe17ec2b65dc45eb92aad`; ethereum `0x5aed1241b2b4530d45f1e837a3955ab7953f8cd4` | ⚠️ Unaudited |
| VotiumStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8794f7a0c53cf536ff50a9d7f736cd402fa1fae4` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x188384c7ec63da76a39ec1ec1c6cc7a2ed345919`; ethereum `0x3470a0b127c41273d17c0647ce24354bcfc2cbde`; ethereum `0x49c87b728a4f1606c97b94e4bea59189e80c9be0`; ethereum `0x693e74c376a8884d885ab1374768f0e6f6964d93`; ethereum `0x78ebd6ae7b6a12ab35a7454039fea117000bfd99`; ethereum `0x82cbd5c2b1a23f82e446dd2c8bea02a71ae631b3`; ethereum `0x8828c676fe14cbef41f44d7e16a81c1418fe0100`; ethereum `0x920f99fe3d47cacad5b2021af494bf4f8914aa30`; ethereum `0xd76b140c9e9fe3e9b176b1e99fd0ea78f7889bf2`; ethereum `0xec1f936198ccf8c0a21bf3aaef31b081b3141352` | ⚠️ Unaudited |
| WbtcFallbackOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66871db0ca840ac3e9cb2dbbfcff8ec060661b4b` | ⚠️ Unaudited |
| WbtcOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1919de21635276a80aa3384a852df8189e1b7205` | ⚠️ Unaudited |
| WBTCToCRVUSDExchange | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5602eb937b25f783a4b7b522b7c0baf28be58815` | ⚠️ Unaudited |
| WBTCToUSDCExchange | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cd733c283ef09a760e330acb7d8c7e9961063b4` | ⚠️ Unaudited |
| WbtcZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379901 | `0x2ae50916b4467c681689069bb54e94fd0246ba65` | ⚠️ Unaudited |
| WbtcZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-380056 | `0xf8853a3c8fed7e3ef145816b98f15278fcc2aa1c` | ⚠️ Unaudited |
| WETHPriceFeed | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-379874 | 6 deployments: ethereum `0x0daafddcf74451caec724bcd2f0d7e4025c95b94`; ethereum `0x2113468843cf2d0fd976690f4ec6e4213df46911`; ethereum `0x629b6c0dcdf865584fd58a08727abb9db7390e28`; ethereum `0x653df748bf7a692555dcdbf4c504a8c84807f7c7`; ethereum `0x7f575323ddedfbad449fef5459fad031fe49520b`; ethereum `0xf125c72ae447efdf3fa3601eda9ac0ebec06cbb8` | ⚠️ Unaudited |
| WETHToBOLDExchange | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c59eec0bf43bb56ff7ee5aa21b51f76e699caed` | ⚠️ Unaudited |
| WETHToCRVUSDExchange | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf00850a4384878c66c54fde0bdc29aa825e3caac` | ⚠️ Unaudited |
| WrappedCbbtc | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379970 | `0x7fd713fe57fcd0a7636c152faba6bdc2d3b27d15` | ⚠️ Unaudited |
| WrappedSpot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x253da8f1f6cd0fb33aadc13999df9b124f1df194` | ⚠️ Unaudited |
| WstEth | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1533edbe274aa1b9fb5db2652d6d143e939b306f`; ethereum `0xf430e45f4001c37d2ff443e7a0405df3e592c915` | ⚠️ Unaudited |
| WstEth | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91d4109e2058c229bb96509e0254ed50ad96ba17` | ⚠️ Unaudited |
| WstEth | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x972a53e3a9114f61b98921fb5b86c517e8f23fad`; ethereum `0xc57d67ca8888c74d979a4fa1c9cde0333ed76208` | ⚠️ Unaudited |
| WstEth | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc56aef0e7dbf2868e4bfe9df184b2bbf1ae75a12`; ethereum `0xcac2c9f10780d2f73085a83523eecdc8bf86ae74` | ⚠️ Unaudited |
| WstEth | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xda8a4d1cbdd5b78a89ef889e9fea082a138458a9`; ethereum `0xffd7da746c46f7f0d779a6cd6f5ff59b7b6b9ca4` | ⚠️ Unaudited |
| WSTETHPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa94a6cb1796a6404683786d3b56c3102a709cef3` | ⚠️ Unaudited |
| WSTETHToBOLDExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe9ace42684879ee17620bcce218711f1c5ca9a` | ⚠️ Unaudited |
| WSTETHToCRVUSDExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63bf3669a8784d279165a80ea877c74f92ee881f` | ⚠️ Unaudited |
| Zapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7099092533a3fb693bb123cd96b8e53b4d83c58` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379863 | `0x07011c1cdebc84fd5bbc64db6ce5ca9b92ca598a` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379879 | `0x14300f754c11ac4c848732151d80affb12f90374` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379886 | `0x1f18afbd0a055fe05acfe22ce951dfc556f0bba4` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379887 | `0x1f4f32fbc1e6d3460bd33b88e035aa0795cc2949` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379934 | `0x547d14f2e230cda0b99a17a1e396dc5b1e5d0920` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379935 | `0x54867de8786dbd761463729f570b76172733f010` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379939 | `0x58d1a68f882eed25a63cd4c2c5b574066a78f961` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379996 | `0x9f69960304183768a01e0ba9f8a0164b556642d2` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-380010 | `0xb6e58f716ea885a26a1b7e6ee7ca779efab32dae` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-380045 | `0xe1dde16f0dc85e05893b20131eb49deed543d68d` | ⚠️ Unaudited |
| ZapperAsFuck | adapter | project_anchor | own_supporting | 0 | ethereum | unit-380065 | `0xff2736078e4a42c9f8fc7247412a724945a0e5ae` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (538)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379853 | `0x0000005ac28de2cbda005a8500a9578921fdb7da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379854 | `0x001fdd4f3405f97ed61c7dc817208dfeb8f6cb70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x014b688764422fd5a4f85bcfadf65bb9a0ceed90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379855 | `0x019d8fd94a8947c12f96b7b52b6161d46e706ca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b6a9ed22830c674d616110c9553a013458d055` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379856 | `0x01e111d815261c8ad6a1271861970e804e4282e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379857 | `0x01e37634cbd25ec7ffe680ece5eec178ff51ef2d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379858 | `0x0291c873838f7b62d743952d268bebe9ace1efa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0310a0fc1a7e90ce415d3aff47840ca85eea4669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x039f0333692df867b23f15d749d16f20a7bae050` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379859 | `0x03ed0485b586db818ab02e95eeeb5921b418a124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x041d537da301027a439460f6b86785898e6a545d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379860 | `0x05d1b7cef2d8ad38cb867bdeed1e9674ad2e5b31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379861 | `0x0655977feb2f289a4ab78af67bab0d17aab84367` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379862 | `0x069f91fee9ddff23e017a9d152087d2c7481bdb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x071beec92a1ed8fc16c91258993093c7cac0cfa9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379864 | `0x078eae28a2bb4a5eb3cffd96011606e7e511f05e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379865 | `0x07ac2ba2aa4a7223dd5a63583808a3d79d8a979e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0808bd8406df35ff5806293359acc543bb4b2419` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379866 | `0x085abee74f74e343647bdd2d68927e59163a0904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08e16cb013e06f9c7b1f915ccd560263398680e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08f38675e4bc8b8aa30fdf3f7082a8281d054402` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379868 | `0x08fed38de1035288c0f142a40fdc23f5df120025` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379869 | `0x0a36224486d4e49deb27b489233c6b64e0241d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aed0129bb70a43480fa8b1a224597d919d26845` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379871 | `0x0b656b3af27e3a9cf143d16ed46466e0be27fecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b9655f38dccabba0be6d1080bb9bd6694f20bac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379872 | `0x0bdc2d83051d6da84e2ae5cc63bb6ef7ae60581f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cce6cb8cc0d9ebd89c2275b11ca39e39be116e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d8441d88f2cfaa7ab94a2135ca1b10a1f4ac6e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379875 | `0x0e493f67f568b01c79f6b167ab0ffd3645d25bc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379876 | `0x0f462915322cc2ca01f2e1e3dc7c598c43929b55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379877 | `0x0f7e2640aef5373d79bffbfa6798d64dafb93802` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379878 | `0x0f7eb92d20e9624601d7dd92122aed80efa8ec6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x108d8d8d89b3459ec37c0e71a51c8a6771ac488c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b94088c318e29aa6ffb592741945aa92132809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1130ac286b1b4cf1569ebca21d93c71f86255a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11830ff94221f2ef34176ad85a6ccaa2f41c95fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1261a8a7550f1df5f453429ca794c26944cba6e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x133bfe2b4c75dab75ae23a51f129dcb74820f77c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x136dac76eeb80e0e2c0ed13f1ae416f2faeef5a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13e70997d0af3ede9344c7646940976bf489c964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13fa9c074fed65205ca7fee11c762f2040edf131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x140c32b45bbf84310139a37da87eedf14b166d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x156e0382068c3f96a629f51dcf99cea5250b9eda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16aa5f75f60770e002e5d991d8a562a2b2e4451c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379881 | `0x16b8111a999a9bdc3181192620a8f7b2439837dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17207f0d5a10f52969f08093224ebd3a53e93dd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379883 | `0x18084fba666a33d37592fa2633fd49a74dd93a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1850ee3985251e5892a81bfa876e81522eadca35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18d2075a69824e10fa4c978cbd29cd9b35692db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a8328fd6c4abb61623ab06945342d24b65f0b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a0a62aa8a9471a6a726b5cdc24192be3a3dbc7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5474e63519bf47860856f03f414445382dc3f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bc24b2755c812996bae34f6fab19cd68f5cff34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c9890c9cb9925a8651c10b5f557d744bafbed5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d13a5a7bb98bb363dfeb6f6f82d2b93b816c27f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d27f835b6201572b65dca622aea185b01fba54a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d775cac4752ad141dcc6c38b388fc9e69260e34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379884 | `0x1d9cc5a514368e6f28eba79b2db8fa5c9484b058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e32314e60414ed28ee3579c0c754cfe071d131e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379885 | `0x1e61cc99a573ad78960d9bcc80005abf7a93ad9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef01391c3fe1723dc32717b7112c54da3137801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f8ce7e3e3368c027a13e1d25263beb38e8f804a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f9a1695c3bf126cc1156e2bedad6399b3f5794c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379888 | `0x1fdb7aae1d7676ff88e23b2799383ed6a14d63e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20239a9ea3c214b773f7eea6379e2d761a79c3d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x204233fda1f736209b3aa0717dabb55aaacacd92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379889 | `0x20e3630d9ce22c7f3a4aee735fa007c06f4709df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2231e660c23caf2f1b2eced315c93b71bb386cae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379892 | `0x22d75a999ddef194e049f4d9e8885bd2aa1d0f75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379893 | `0x23346b04a7f55b8760e5860aa5a77383d63491cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379894 | `0x233817bd6970f2ec7f6963b02ab941dec0a87a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x234134617c64a0b1a27c3d0c664976c73d4eb174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2357105b6b16034ee2fea32e23edf403b18593d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2421d3e8341c9707e80b6544d114ac5140f26679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24bf596a4ccd5148fc816a7371cdf75d0706765c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c62ec7f0d0275934ef6fc9432921df87b17ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25290c39dbd3d9446fb3b4f5c30800e265d9eddf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379897 | `0x254a6a3e172a81d5825122403e1bc4d47f264a07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25eafe0992bddb623a6b56c74b707d5df9eb7843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2632d629dd93e541f22c4c572101857f3ba52276` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379898 | `0x26e6307ca1f7ba57bedb16a80e366b01e814ed77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2735aae1a56a5dbac1a951b92bd9fad0f33eefb4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379899 | `0x274d12cc490d93371e36e1204ae4988cb83d26a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27ae0b20c0b4878d52c4c01544412bd3973e336f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27d64dd9172e4b59a444817d30f7af8228f174cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379900 | `0x27f539ec3fa3e548e10d4ac883534eba891bb212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29919635b9cdaf401843f1ab5a062bc0eb9250c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29a1e4ed6554fcf7966415bd8a00dc34ff8f6e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29f525537574a7b6e6c21b99bf29dda433c9c1d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379902 | `0x2aff30744843af04f68286fa4818d44e93b80561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b38256d8c862dfb86e23672462553a3fd800e9e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379903 | `0x2ba8e31b6c1c9f46046315406e840dbabea803a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379904 | `0x2bd5a16f63480454a8302ad640323ab765a96930` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379905 | `0x2c56dd3a83d583810ce1ddae103660e46f0274a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379907 | `0x2c659500f95560645aa45820f17949aafc393929` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379908 | `0x2cef516e9db2240f83002fb41a4e883b24e0ffb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d598c684611fcea588e1fef6d4c50d7bd09c705` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379909 | `0x2e937bbf06ad085e98d6eddec887589d61edd3b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2efd16701fd94cadae723c20734962afd36dcacf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f7d25ff1dc5da2378076bea2617d1e3e0dcbd2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f8b4c3b4495f104f475dd102434854f7e385574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fe5e05b34aefc2a1d7eeabad313872e963dec84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x308a2fd4f7c62506bae9b3bc6c9a6672e3b72c85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31b59895f57db40460a58f79229a0a92eb327f5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379910 | `0x31ef8a70f1f80d59b1c37592215c0287cd73ca3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31fc48dc2f143c17c4bfdf59833a1475fed1bb8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3224071fc67656bf17a735a9f4ba434c95c52409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x323e6b95c5c4bfcae4c0da5179d31c836e9a8179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3249b3196798cafc3a3ff023f719196410c7836e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3314e933182f0dcd2c032a1b70bd76e5e87fc7a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3387be65e0f4aa6fc29a9f158be1b2e4f8c7eebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x342702e87e8714c759a21299402d9ec99efa0caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x345c63028f17d8da727595914fc64a4cc9cb6499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34c76f6f481636b5f146cbcbb8ade464f736d0ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379915 | `0x3535a5551bb0f1a41e15eb2bf75b0dc8d57058cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35dad84253205ee1746a0b8a1a91043ebd971ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36193d1b83517af599b66b5dd8f556b9341236d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x365f901dfd546d7b9a4a8c3cca4a826a3ee000b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36e01f055cde0cc1a9a56c80ab8643e1b289aa87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37b2090bbd1ba4e46d803286e18775cbbac86259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37c47df67d664abbc382d9d80b629678f3f83004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38927df780aeedaa2d9706dc5d62763841561752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379916 | `0x38b5c7a506fff3d3dafd2d013e969d6e99cd9b73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39d2bad6ceb2f77bb30b5ef842abe9be0b42b9b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a38508bb69a86bd3ba85d8064e4c2574d18ea16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ad9a923a56172ec6cac363b7a9487971b93353f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ae63601e2d3667b05a850e3890c7e44cc581a3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b056727ece0582b48036ef98376e2a112cd8147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b44abd34248c58733dbfb69bbbe52843de37a30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379917 | `0x3bca1380bcab9889f440406a3c2f493be31c3ae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c42b5632f0fb0646f06bf202e3d9326bc6c84fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c6897bf58fe4d3a32f62e41d8a78be5ef3fa421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ca31b0d3c95df91665b7f9ba3eddf3c0eb44b0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d40f9dd83bd404fa4047c15da494e58c3c1f1ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e1435cd3e13423de06c0ce4f9b8deb19a74f7b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379918 | `0x3e40bb108350a449c19dd11a842637566215c43b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379919 | `0x3ecce7bfe668a1af0c520661ca79859d4c5605a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fabb13195599bef352157a2c6c6937aead18a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4065a67203c3d9307d121a093baa16eb11136985` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379920 | `0x40785101e6bb3c546a7b07b8f883ef79763932ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x416bb5813b653278ef05866fbb6ea6c2ffb6b4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4219a2084e77865ed94607412a96f5e503278869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x430cf6dd3e289adae63b50ff661d6bba2dbb3f28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x439cd734e983a970859b69ac1e455ba3fb9388a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4486c96883ee436525e11cfb1b0f589c11ff75c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44da6289a48f6af8e0917d8688b02b773ba16587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x452eb8c3d70b343890a4b16f3971918dfdd96007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x455666d7c8df852c9575b2c91c4c42f03726d902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46056233d30a5b4f59db789fc54fc90f8ecc88f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379922 | `0x46b7180721eb35983d97e6f819bcedbe77ebcc03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x473d3f115b09a4abed6529958d03090c084f80f6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-379924 | `0x47c212ddebcad886d0e7b8482bd13f8a27eb0b72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47d1226489a28ae7dee404d7a8db03d3b21694f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x483df4b557dda871b13c9d90cd900badac0ea3d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x489d51d798d13b628315e313471ba9fbabc5d653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48b1b0ac3e5e7cdbfbb67b0d2917b9ad9c3816cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4995a3abb6304f12a7e730a08b33399ead983c0c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379925 | `0x4b3eb2b1bbb0134d5ed5daa35fea78424b9481cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379926 | `0x4b677b2c2bdaa64bca08c62c4596d526e319ea7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379928 | `0x4c4d2ff3d49a3a0785cced6c79deaff27ffb5d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c9edd5852cd905f086c759e8383e09bff1e68b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379929 | `0x4d349971c23d6142e8de9debbfdbb045b7aaba49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d3c3be6265932d156e6630cba2921ad7ebab094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e26408a76028306f06ab7684ddb11670d3e4269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7991e5c547ce825bdeb665ee14a3274f9f61e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379930 | `0x4f3d778a6182fe0c3e1723c1432ce0bf5eff5526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9fe20cc891d1cd6ffdf1788bc0a5e30a492fb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fc2cbc3417d6b0915bd768081c34a4537941bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fd35afa32310eaa1354768be6ad2c5c6a62d572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50db2ce93c8b1f6771c985b6b840b587349496a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50ec466881423d00c685050f5dba12c9ad1b99ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f5cd484fd70af485464b2e9ff4da49ddb4521f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52be7b0e42e198a62df3e305183fcba08473b701` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x536d6eed44d409d8a62695266b4b7ed01113c92b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379931 | `0x53a5de1b94d7409f75fff49fd81a823fb874bf71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x548070b2595c82a123d22d925f6675e7b9624ff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54896f542f044709807f0d79033934d661d39fc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54dd1315576d880821ae8dbf56938a4316bf150b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x555f3ffe6c5c6c65609d8627ef30da0af9060b3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55f3125291e183bf93595dabe162a7b90960df1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56372b5aa041c739e2feb5746cb11e2adec26c2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56945fe7cb27a68d9eedcd66c866f5bf5d3b12d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56d63b862a53a91a25a0bdad042a2e401fc0bb8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379937 | `0x576eba782d9b5f8bab2dc729bb430849b9b5e1fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57816b506f3d81a4da98532c9587a8aae2e0331d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a2ecb3e5574eb61098c93c2ee36f3d26ecc689b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379941 | `0x5aad68387cec384dc4d7af6bfc23f4f05e424d85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5af17540921cd9d388eaa9344c42c507f38490ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b601ad4a40882421be00f6b8fff50f9bf804b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bdee7f0f85be5adeddeba687a77caac6f412908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be73b3cc063e3e78df73bdbcac982806555b604` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379942 | `0x5c1db629f4dac3334bb486e467003c762abd3177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c1fa71022fb6fdcfd5bda745d50eb9bc9ac64ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c6defad2e24169d513428ce8cee1b3392bd43bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c93f8c736b254b32a0aac3f2022ba0215d4dc64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d5dcb0821a9c9d8f2c5a4d5500f6c52b01d177c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d62fdc813702446bbf2e465c5d88243dd77107d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d64c319e5dc810228112ba01cacdb879a28ab25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dd187119112f2b375a8d4bbb756c28ed9b09aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e1df4d4a3b7624b318f8a032e7c942c40d924fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f466cbab2e25e928d4b47712b9303f1b58c8043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f5fb8d66413eac535b0ebb08120f9b1c1ef8ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f72c3c7b29d616ab8324a3ef49ab07ec8892209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fe5202e4c706405d57a6ac860db1839dd116979` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379943 | `0x60eef55574ef687381d965eacf7cde0c8b61ca38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61212793a7c67cc6584a6b8e84bf55ca9fa6a8a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61b0d41dd07247c1c5a7f93ff2aef21ab66103f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379944 | `0x6223d9ec34f379fb649fff5fabb96a593afb5431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x625b7fd68b35ee8dc2c9405a712fa450ccd357be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379945 | `0x6296d175e605978370168c97221468ab22175444` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379947 | `0x62b9eb030ba4cd6fddc6cf48f60e5bca454cb2f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c2c3d75826441e1dbf8ed4588fa5517f7d4475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x630e78c7ac331d89e2fedbbaa93fecade842d460` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379948 | `0x63321ee523a8d4e23c65a9206da5a755dd6a72fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63f01b695c67b764e823f972bc61fcafbac5102b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379949 | `0x64454c84dc289c7cde7e2ee2f87ae1196bc9cd36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6501bd8cb63e13d61f14ed5094d8f11d57a57113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x655603c5c034f89d8e0c25c7bb22cae091219665` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379951 | `0x6563200449414f8d147d34d0f043045e48ddc89f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379952 | `0x65799d1368ed24125179dd6bf5e9b845797ca1ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6676ba11e8c63962fb83256d88657d13593f5cba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379954 | `0x67453e302d54f9b98c19526ab39dbd14b974d096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6780c75cdab1d19e24f5e689e16817a5a8a4ddba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x681c639e727bdfcd1649d0105873b8dff2ef526d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6845e84e422eb97c2cc2f65757cd0fc5f6e7d644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68f434cdfd586e9aca681b55c2bc77dd553fc592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6967dfd94738380568c64fcd5b07851bbc02dc1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69bcfab2ee06458c8001e4e53e1e5d258d46d355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b284e60b80682be76134b1b2a6ca85f6a360e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b3884c95ab3cb51bba8e69f11b171d1479359a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c2f7b6110a37b3b0fbdd811876be368df02e8b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379955 | `0x6d013fd94b789ab98470c1860527dd5718a3da2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d8cfe68c5b34346c2142b02cdddd2447ea2418b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ebb9d53ea4b9d279c299cff36adbc460749307e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ecf29c3a81471879e94ddcc0127f12164cb331d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379956 | `0x6f35f38d93165b67edc6abcd4b8ac5fef5ea86e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fb2aa2443564d9430b9483b1a5eea13a522df45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379957 | `0x70896a8da8aa770d70f44f18b9106d6ecd1d7105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71d33511d53ee8a89724ec9cbbddf9cfd5fd086c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71ff3cf44c685b5bf8105dcdd7e7857f7a552891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x724371e00e939d3b9adcbea17cc584f6f7482e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73822d7814e10a2d0c964ae52e74f08390de957b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73f972fa356508db80c574ef03d640eb8445b580` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379958 | `0x743ee66dac0b3b1bd3a7ac99312393ec5a290ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7471760bd5b6f8778a69a7bdc5490a5fac0c1fa4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379959 | `0x76365e44314c048a924314c3bd9bf59d6fa9e243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76d15914b1275c278ca60373f07fd4f683ec7572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7749748aac9231e183640d9e78cd9b5412deb10b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7790609066b0849456f191548bac0d4b72a6f7ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77e49282f03168896f4b745d801cd19f28b66380` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379960 | `0x783da97a2feb06fc3a302041bf1ae096b8ef0019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a7f1c839cf7807d788da5276a0174fc2bb14409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7acd9bf3728f4223bf504b1a652cef5ad2e6420b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b86a8513210c8559c335e097124fc1cc5487f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bca4c220cfcf1dfaa7f164037a5f046bde56ce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bf88f9cb4f86dffba4861502abaa3a4c9357988` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379963 | `0x7c0eaaa7749b2c703a828407ada186dfc8866e1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379964 | `0x7c1765fd1ab5afaed4a0a0ac74b2e4c45f5a5572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d8627d847039cd9ffe0ae87a2dea98677cff9b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6900108b7777ce017f557d0f155d45b3458586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e901c53e4d7991c298b34e817b47a2c2d0a19f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eb4c02a9882f4ff6479a9b986de4138a000660e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379965 | `0x7ed60c6e3b1ab0a7743f226e2c9649af15b4f684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f0d7534735bc05d8ee06083c27b698b97d8329c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379966 | `0x7f1171686e6028c321517edb6dd70321164b6343` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379967 | `0x7f32320669e22380d00b28492e4479b93872d568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f5cf9d64509f424e20db9bf2024249c5fee214f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379969 | `0x7f5d15f4053f1e34025907f0741f2abc4353c65c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fcd772fc9363b6233d5caefba43fcaf157a2783` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379972 | `0x7ff33ef1a2dcb95c711cc13b890be183f6288e6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379973 | `0x806b2921e394b3f84a549ab89cf73e57f0c882c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x809501fd65ff781bf5abc13aaa802cdb982d39f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8109a89d1c779724de794fa34f5cd4b5ebafb7c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81559493eecef38dda49e148881061f5f8a0b652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818dd839f3bd2e473cff9d952f755ee280eb9d31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379974 | `0x822a91c2b394051a32dddd3a0e4a657e908b6049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8320c23e3560dc9d21fb2ecc746911ad9b71f5be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8387e72ccce6d2c6cee66e164d1b744d83ad8fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83c20d32202b7e253e518c4a33d3801e69b5e4b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83e800858ca65d34758344efda39d63d77ce94d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379977 | `0x83f20f44975d03b1b09e64809b757c47f942beea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x840abd1959d715700adf3628e2c774bad431cac4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379978 | `0x8450fb582063c1a1a7c68fe5ca4fc3dbf2ad969e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84f899d30b440d4d1cffff08cd400f07c592cbc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85449dd4f0c09b667b1c1008c732ebc269057cd3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-379979 | `0x85e30b8b263bc64d94b827ed450f2edfee8579da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86cc0ff3030fbbd6b9b296f88711f0fcba25af85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86d14d8bb0e094c35583091ee346a4ca99e81506` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379980 | `0x87e670b71958d39113b7961dd016ec198ad82c03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88c41d667dc7b857a26f239f3d70d51cef10d10e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x895479b03f6d8620300a3939b3fa1475a9eab819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89a65d80728a25fd571d76159cb5904c0a79e03a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ce318037f6351ca4d3f745ce2f68a7deb35ca5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89d8d500966c0ac7f9d074719ccc2cf207a542c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379981 | `0x8a99bee720f80601d28f8dfe958bc12ddbd86741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aacceecc09a839550e8e00f352114b35ba2786e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ae164992f45b85444c95b7d8e256af0d86c6c86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379982 | `0x8bbed56077d5e1de85c22b28682f25e8463204f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bee5807853a6e6a15cfea8da4207d245c82966b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379983 | `0x8bf82598fb8424ca59ffbfe88543820d05b0d425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c5b586947cbd6ba0c758cc6f4feafe9fc3ceaa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dc8025383e2b2e3fdaa30470f3e53a25b7eda3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e5e157631aa7752498cdd0e836efd15f66caa5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379984 | `0x8f409d86d1433979eb142e37d3e74f46257c7c9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379985 | `0x8f59b57b0ef481e922679a78ff4a073602d76c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fd057567d9ff56a42315f8bc1e31fde5c01f89d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9007c70d44c7b210e9e6189f8bae636715eca68a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901ea6ab1d7ac0e23082effe14cd6aeb924bfb4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90695d1a4ecf1821be75ba954293e6ddddb6273f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9095548dc8d67bac7ad15ea16c65040701928f67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e5e4aa352d4a68fae9e0f3bb3b9ac2578b69ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91185811fa46ddf20403a191e79d880dd262f27b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91630f5e28f1f30067b92a8d9d7b8e836afddf9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9181b9f2e4c853453f4ca72510b451889e7a9bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91a30ac56db5628b3f23aa4a0e722f1f725fc0ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9305a1b78b68cc4ee8629bd94646843f6edd2e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9344143a59dbae5cc9ad0d9bd6e076d687056d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94d67c6e62b36b2599768850a3fff475fde7b91b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94f931867ee170b48673408fc51560c8712f3540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x951530bf4a99599dd7bc5ad4541fd301dc2df669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95480dd073c2e47e4166fe2ce6da79662d8fe2fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95d72079dc812479fcb94c7be8687228499e81fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9606c21bb19919a7dd4c7d4d0e4ef7e118a90898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x963a4194e7edfc1d644697048fb21e4fcde7a25e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f775a2895974f9520c88ce1dd39386b31e70b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98bc636dc13f358accf117f988e72ef583f2df4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379987 | `0x98d9b02b41cc2f8e72775da528401a33765bc166` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379988 | `0x98f3f4ba1bbcd4fa3d7caf1eb88d93cd628cff02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379989 | `0x994927921e9ad789cc3788fd8e46a2f28a2ef225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b004df2d4f16f0dbdebbc5e4d21ee3753ea0c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c37bc72fa8b7190973eb5fe949f8360f0fd03c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379990 | `0x9cf12ccd6020b6888e4d4c4e4c7aca33c1eb91f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379991 | `0x9d39a5de30e57443bff2a8307a4256c8797a3497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d4ceb78b45a064ea4021626949137b623420376` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379992 | `0x9dc845b500853f17e238c36ba120400dbea1d02a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379993 | `0x9de6745f04acb02c67310588353a70a10ae865dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9df5e7e2ae001c513bcb932ef3afe52519ba8bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e425b65dde01eca9d519d219a0049a716719d48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-379995 | `0x9e690678b7d2c2f5c094ad89d5c742cfcb02ed8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379997 | `0xa0211636d2d90d47fab14f968b1a49c7d3128ee0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379998 | `0xa0290af48d2e43162a1a05ab9d01a4ca3a8b60cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa100e806ac9b351f7edd14745616622c9b87d298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa16ba309a934d84fb72952bec1bd54e0ce96d611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa179a4563673b5c403841d0c01c7736c5c834761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa202c7dbbb0000f03ab1e56651098891927ebcef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa21c509e574c3eac26933e339d8f01445eea8d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2796e55212acc734680b24f71943412ddcfe3ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2b2e070a08d27b216f6158d908cce2b3ba1e666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2f1d8433e78e1e7590e80c1ac7e636d0a660852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa38f7a780820e5081dd51db94c5f359ca0d5ceea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379999 | `0xa3931d71877c0e7a3148cb7eb4463524fec27fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a83df4f0905c3b976906e90158f86da755c563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa42a10646510950dd24043490473ca74639fa7ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380000 | `0xa46d2dca358ef789586f292c132bff3372e2cdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6862c51e4bf38cdeb9d4ab613219eaca818e8d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa71021ca12f4a6c0389b7ca6f0a2a2e2fc86426e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7bada7bda4fd4620956e9e4534367e72f018a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8076d11890fea2c400151dbb8377802f5e2aaba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa85064e30955de5f1d1ecf6762c27cad3c2b524c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaabc02cc4385931b226ae9412eee2669fd5d17f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac42fdcdf9b80e4fd0660924b5c6a9c99bfc9ab0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380002 | `0xada317bdabb3c78f581ec2e056d5557663669fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf12bbeddbac68ab79cfbd54092b3db386f66b4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf26366736674319102b3e9b143e4760aca9aa19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380003 | `0xaf99e6cf5832222c0e22ef6bf0868c4ed7f2953f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafcf0e333614286d8e20000781121adb28cef33d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb00aadd711ed74e515f6c069cadf7f4db5788f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0da556df7c66ed429191e113974a6c474f2b389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1525db4f6e7f432f9c66a495a88a51277067170` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380005 | `0xb1866e385f8b17060b1249708d4bdace09de1624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1f6123e9a01b0fa3eb9c002b5dc478fb6fdcff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d1111a80d5f1e244da51bb11168e2169c759e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb44f39b6ca17339bd235f1fd58f1bce9822ab40f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380007 | `0xb456f5852c35505f119b60c28438bf488289ca1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4c6f0a04c4d1aa8be3c37e3a832061860ca7c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb510d24856795f4b7bb6e977e14d3157ceeaa7fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb57e0a3f1366bb34558ffbf41a473dbc5f022ce9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380009 | `0xb585c432b77f8fbba53ed3ebd8b588f0f8c16096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb63d2ee9a0e31536a13f599a7af6a1c744bc3076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6d67bddcbe6a6b17cec8b8e3b0b1087fbad178e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7d29ce626b3b268f9d65e4120f45f6b11d8404d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb804d72d8c6545fed89cc56a093e460c4e065711` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380011 | `0xb81cb6db86d2aa95d2239f849e548c38aad403d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380012 | `0xb828a33af42ab2e8908dfa8c2470850db7e4fd2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb841efe7cd6112fb1e74ee95f6be65b95a23b910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb91297d23f1d0e8ba75d5a985cebccb7f2078930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9b7dbe18ef41dd9848be09ed825a2a4677eb9c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f57b62cbe9463da16e5b75e3b809321a0ea871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba22bca882bc6ef8747317eb68f9a4b4bf2ea7f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba230f4bf34e48d04e65de9a0f6fe5ecdaa0c17a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaf4cb2a7182e5bd4abb54c6f116d56c0e8b588c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc23c3468120ffe89246909dd7ca0e0328b4c1fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc362f57dfd6d3522ab66b45ce3aa33335a8c55b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380014 | `0xbd87cd436de4ee066f146175a283a65db9973062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe4a0c74f5d4ba26871e7b18a9bc144b006e2a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe87b94857eedc334541174a10ec265f308248b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe8b206ed12a7427b288a1a8c5979deda9e7db05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbebfd22d3a628a62f3e2ef91c957ec6d304b56e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf1035e71e4a770a08462b20c95de14763e1d186` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380016 | `0xc18e1867707b6186b3548a73c62077775e88602f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1d4836c5aed93967fa2fecac32a9d907b919662` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380017 | `0xc20a51f66c917feff80d1e089199f727060c0369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2fdf0e8cc806b0f8389d22d0dda2564dd1b4402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc30fd06e7098368770bf5958e1a265caf0a950f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc438806b0726ade87f746d2b2ad07f6f05a26a85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380018 | `0xc470a1574b469a562fb237e289fdb217f8c14dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4942703d8ef29a1ce949d686103004fa04f4037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4e2bc01299c15cd5608c28fffa5c62107b8a8cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc51203a6458acb813e4ff12ed29771b741c4c937` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380019 | `0xc5454328a03ead90cf5700997040998e454fd577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc54b98e2d49df36a1cf2850932ee88d3a91166e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc59ea6cebb8089a0330800f50946610977c4fc96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc59ff0c05de52347b2d7bf38eebdc994d97cea8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380020 | `0xc67b1883abbe62bcc241f8f5f89e84846c04a00e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380021 | `0xc693c91c855f4b51957f8ea221534538232f0f98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc736551507e746dda359f23ad74943a0dded7472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7fb9046f1db5a36d635ad1e70d425b779b29840` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380022 | `0xc89c160099090598ee3f570def29804da2f969a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8ce0b854ca9761ed9416fa18f4d33b2f07e336c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8d81c4fe3b778dd761dfce504dd2046c2335c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e03910dddf689d3e309b42dbf4c581ed1e795d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380023 | `0xc9e524c90598d679b6d1fd46cd1decfd20e353f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcadc2a8ccf396088f8d7520ae8fd249ccfcc20db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380024 | `0xcbb43a0a3fe57cab5fe4cb29bf654c4a17cfe3fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380025 | `0xcc47da99965e3c8dd89b6e9305bb10232a314d23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcca90892f22554fadc0cb652fe4cc26040335319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd0bad5d45495c07bcd771657eca0df50baed871` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380026 | `0xcd3579a7fb0a46f20a3317d649af07e9651175c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380027 | `0xcda8cca990aff26fd8298e0d30304e4d01f7b387` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380028 | `0xce1ca28e54fd3bd431f893ddfffa1bd619c0517e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61a0cd94ddd86fe9b56ab0e06ff7d40b4daac0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380029 | `0xcf62f905562626cfcdd2261162a51fd02fc9c5b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380030 | `0xcf64a6a17bd6aea1b7834e66dbd696f81bd8a10c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf687792a1e65bb41793cc938cf8e27e5d1b678b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcffeb2408adfbab998f6929054f91d8dd9a9c8a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380032 | `0xd00182e777f6da3220355965412c9605fcd80aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd06b5bdc2780e4992d78148165fd1bbcb4d01312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0f77441b70c84aa3366a9f79f2fd16618739ab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1da8a03541ea81f121a38d2c3965a4023b51f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1e96d0d727c3b39bdbdb7c019dc1df432a29d4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380033 | `0xd344626aadb84a23781b14b2f1ff01e40910a44a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380034 | `0xd369aabdd62c7627bf7c041144862c780f56cbf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd38b163eb243c90f4a089e9818ceefde29b0c5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3b7bc894675219e8a0a0eb3095984f9b32af240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd46fca0d72712c02fb9d9a2d94d2e3ca0ce348b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd48523fa263c981ebef158a555e6d8b967187bac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd532d119c2bc34e8ead1be86a31ddf0847bae7a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380036 | `0xd55cb395408678cab7ebfdb69f74e461e5307780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd69fa48b02fe4483d8afb58d27a96326c93f783a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380037 | `0xd7954a8c7fa74c97ad2545719ce82eae915d73f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380038 | `0xd7a4d09680b8211940f19e1d1d25dc6568a4e0d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7d3cd3405e7e9262d3b8fe6aacf821ad10cd587` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380039 | `0xd85a27d9d1eedd0fb75067f981284d7cd6196c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd85a467c7879b24e7ce599d436ec7daf9e3dfa52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8737ca46aa6285de7b8777a8e3db232911bad41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8828e02acd1fa52ee33b23f87f4b69c3a9e0b1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380040 | `0xd8c2a43ffbc2df5d9514fdee80aa6758a3ed8c80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380041 | `0xd95692af0a30d936287bc7dc3837d3fbf7415f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9c5a9fac779a12868dd607447690fc4d2926d53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda9726fd1b125a3923f9d9521e28fe888091698d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbbd331c35644eb251a174bc2c18c157aeae5dd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbd0258df0f0ce2899aed1540c5a9f175b7815be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc4ad8a1d883939431e2d0956227aa8840012832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcb36301d569103d5632ad769a5510693e450eb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd427e6140b1fb7d5a494b472bd04646199abb7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd737dada46f3a111074dce29b9430a7ea000092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddc5f07baaa9b657c6cd3097957c559a32f82212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddfb32c743b8b832915df09e4caf16495df4fbb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdecafb666ee4f9c5e9f5b26dc02e443035717d55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380043 | `0xdee8a9ac2c2819fe6a3bae45a12bff70c604805a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf2a04bfa87931e3a1a14a761f1c9095cdb61421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe10df343f3b830c63f04b210455b5a972fe64c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe18547f5e5e30f991371bee3d9245986468a80f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe18decbd8b40a6e9a0903f1030efdd4c38238fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe247ab8df16789976a42a7e39b5d822706a16a93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe28516d2174a50ac3cf134a0d1e3e654147cdc34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe439195d696a154dd8d5327c4668dfcaddda4b1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4534d8e84fddfd9caa9962fbb94d397e164d175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe55e68166e45fc24f769d6039cc020d77802d8d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7f2800d075ca41d1a206dfaf3fb37171825ea98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380046 | `0xe8e0924fcacc3642aa7d28b7a0c3e8799498fc62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe991a00754cc4f3ba91731b5d8d91f0cea2e7b3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380047 | `0xe9a258f362fc7f8003a39b087046f64815cc9c56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9b4fc950244c25664a5b2c87a7014001f7a1021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9c32ea0508fa2c6c293ec3dcac8ce8650475557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea7de917660a7f42742e371e4c33f39433d92c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaec2974c9f786890b5f53a26229407a7f861dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb3d79b238ea547a4a37a448ba37fec247e2f69e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8b1bf03904e91a3beb0f7117d862d598915856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeba81e821c8990e92f85d26aa428e45a8d26d1ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec0af9285fc46de57d4fb6f16b1cc3f9208306d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-380049 | `0xec2302866d7bd20b4959318189b26e56eb1edca5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec500fda25b00814935a251f407395a9040c8510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeca746232f297bbd968b4ef240fb28c40be5ccb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed07b701ed7b1b12cecc0dfaea27ee8cc94d4ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2fbcdf6bc67fb84d7a7618de2ddc13faec33b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed44b98bd50cd5e128b420495bd9da384a291b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed9569ac1656e7ef68acfe3a37f225af36cebf04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed9d38b7f15fda2113c8d643439aebddae4c8af5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee8281ec297c2e9a1a3cdd0fbdf99d276c1f8f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeee151c735adbae350d1f846e0b57459fb87d8d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefd24026a958fff3870e624900cc21e6e9cedde2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0303909b5bc31596b6a48b9ad4a8c49e851fb60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380050 | `0xf0a383222057bfb603dd3289bca0c51cf24d95b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf121b5c4a37335fd1189aea306b996487aae55b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf285b4fd0f679428c6609758a9e53df46d4c2d03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf471f961d7d3346d9b65427d79307d9fc8143241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf53a7e09512b5475bb9f34e0b27faa3fddc8e17d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5878971316acb5072f115a046d1f405d71e9173` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5f1943e2ac3565b3950da8c127b7542345ae82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7e4cf2ffacdd3ca3bf8e1e35c759cd231c1f2d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380055 | `0xf7f8db72700c40ce84fb01d3b1fbdafed81dc51f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7f96d103ea5f1d2a1d1614f3f228ae8e246bed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf81298f9f45ba49a76ddae071b8622766584464e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9336cbbb916e88230c8ace083e6fede16a7f760` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9e241491df7f97f45d6f160eb35fb4ed5015705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9ea885ad3994aab776afe8502a19a6e54197355` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380058 | `0xfa0033783210731b8587432ffbb366ff98bc52bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380059 | `0xfab7396e2a6a3364e02ed26d2f80a354aa923b88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb5507174c32d79a86b7c07a41016ab3bd7053b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb8cb432fc736f24ed198e49438361573fee2571` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380061 | `0xfba97f86967feacd3e62a0fcac5c19d7b60fb7d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380062 | `0xfc72d7301c323a5bcfd10ffde35908ce201b6c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380063 | `0xfd256da1aa42695351c08b2ff4a91ebba1a07f7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd467a0173cdb0a0060b4e3ce62757116c369b57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd5a64ea2fec52fe959eb83892b04017e660c73c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdfebee8ed1ae9fed6b5b23ffe6dfa14e84c9b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe097e1cfbf6b577c338477e4fe3ceb3313150eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380064 | `0xfe6f765e77fd8f17ec3a985ac36c3c3ea92c946d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe8cf186616e5b3e4de0a5e2bdad06167d53a621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfea91bf8371e6b1e3d1b59e8a5c9bf3d399767eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff29c123af47c2a2c4da3bf2502c6e725ac835d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff31f94300a2823876d040d34902e449f68e86b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380066 | `0xfff2b6d4d6f58d02e07bc6f2d73fe0e0987c7726` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-380067 | `0x7543e3829ecdd61a5fd7c187ff88c4cf46e30f73` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 453
- Live contracts: 18
- Unknown liveness contracts: 435
- Source-verified contracts: 58
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=56, contamination review=1, exact address book overlap=17, source verified unclassified=1, unverified unclassified=378

Showing first 200 of 453 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x014b688764422fd5a4f85bcfadf65bb9a0ceed90` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a5474e63519bf47860856f03f414445382dc3f1` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c9890c9cb9925a8651c10b5f557d744bafbed5a` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x27d64dd9172e4b59a444817d30f7af8228f174cc` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x342702e87e8714c759a21299402d9ec99efa0caf` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d40f9dd83bd404fa4047c15da494e58c3c1f1ac` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x430cf6dd3e289adae63b50ff661d6bba2dbb3f28` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x44da6289a48f6af8e0917d8688b02b773ba16587` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x473d3f115b09a4abed6529958d03090c084f80f6` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x48b1b0ac3e5e7cdbfbb67b0d2917b9ad9c3816cc` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d3c3be6265932d156e6630cba2921ad7ebab094` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4fd35afa32310eaa1354768be6ad2c5c6a62d572` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50db2ce93c8b1f6771c985b6b840b587349496a0` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x536d6eed44d409d8a62695266b4b7ed01113c92b` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54896f542f044709807f0d79033934d661d39fc1` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x55f3125291e183bf93595dabe162a7b90960df1d` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a2ecb3e5574eb61098c93c2ee36f3d26ecc689b` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x625b7fd68b35ee8dc2c9405a712fa450ccd357be` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x630e78c7ac331d89e2fedbbaa93fecade842d460` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x655603c5c034f89d8e0c25c7bb22cae091219665` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c2f7b6110a37b3b0fbdd811876be368df02e8b0` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6fb2aa2443564d9430b9483b1a5eea13a522df45` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x73822d7814e10a2d0c964ae52e74f08390de957b` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7acd9bf3728f4223bf504b1a652cef5ad2e6420b` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x818dd839f3bd2e473cff9d952f755ee280eb9d31` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8320c23e3560dc9d21fb2ecc746911ad9b71f5be` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85449dd4f0c09b667b1c1008c732ebc269057cd3` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86d14d8bb0e094c35583091ee346a4ca99e81506` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x91630f5e28f1f30067b92a8d9d7b8e836afddf9b` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xafcf0e333614286d8e20000781121adb28cef33d` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb804d72d8c6545fed89cc56a093e460c4e065711` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbebfd22d3a628a62f3e2ef91c957ec6d304b56e8` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc59ea6cebb8089a0330800f50946610977c4fc96` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc59ff0c05de52347b2d7bf38eebdc994d97cea8f` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc9e03910dddf689d3e309b42dbf4c581ed1e795d` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd8737ca46aa6285de7b8777a8e3db232911bad41` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe18decbd8b40a6e9a0903f1030efdd4c38238fa9` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe4534d8e84fddfd9caa9962fbb94d397e164d175` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeba81e821c8990e92f85d26aa428e45a8d26d1ab` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xed9d38b7f15fda2113c8d643439aebddae4c8af5` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xefd24026a958fff3870e624900cc21e6e9cedde2` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfd5a64ea2fec52fe959eb83892b04017e660c73c` | non_address_book | unknown | unknown | unverified | n/a | `0x211bed4bd65d4c01643377d95491b8c4b533eaad` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x0e493f67f568b01c79f6b167ab0ffd3645d25bc2` | project_anchor | unknown | live | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x0f7eb92d20e9624601d7dd92122aed80efa8ec6a` | project_anchor | unknown | live | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x16b8111a999a9bdc3181192620a8f7b2439837dd` | project_anchor | unknown | live | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x20e3630d9ce22c7f3a4aee735fa007c06f4709df` | project_anchor | unknown | live | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x2aff30744843af04f68286fa4818d44e93b80561` | project_anchor | unknown | live | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x4b3eb2b1bbb0134d5ed5daa35fea78424b9481cd` | project_anchor | unknown | live | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x4d349971c23d6142e8de9debbfdbb045b7aaba49` | project_anchor | unknown | live | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x65799d1368ed24125179dd6bf5e9b845797ca1ba` | project_anchor | unknown | live | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x7f32320669e22380d00b28492e4479b93872d568` | project_anchor | unknown | live | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x806b2921e394b3f84a549ab89cf73e57f0c882c5` | project_anchor | unknown | live | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x9e690678b7d2c2f5c094ad89d5c742cfcb02ed8f` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0xaf99e6cf5832222c0e22ef6bf0868c4ed7f2953f` | project_anchor | unknown | live | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0xc470a1574b469a562fb237e289fdb217f8c14dc9` | project_anchor | unknown | live | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0xc693c91c855f4b51957f8ea221534538232f0f98` | project_anchor | unknown | live | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0xcda8cca990aff26fd8298e0d30304e4d01f7b387` | project_anchor | unknown | live | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0xce1ca28e54fd3bd431f893ddfffa1bd619c0517e` | project_anchor | unknown | live | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0xec2302866d7bd20b4959318189b26e56eb1edca5` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x01b6a9ed22830c674d616110c9553a013458d055` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x039f0333692df867b23f15d749d16f20a7bae050` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x041d537da301027a439460f6b86785898e6a545d` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x08e16cb013e06f9c7b1f915ccd560263398680e7` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x08f38675e4bc8b8aa30fdf3f7082a8281d054402` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b9655f38dccabba0be6d1080bb9bd6694f20bac` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0cce6cb8cc0d9ebd89c2275b11ca39e39be116e8` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d8441d88f2cfaa7ab94a2135ca1b10a1f4ac6e3` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x10b94088c318e29aa6ffb592741945aa92132809` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1130ac286b1b4cf1569ebca21d93c71f86255a8c` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1261a8a7550f1df5f453429ca794c26944cba6e8` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x133bfe2b4c75dab75ae23a51f129dcb74820f77c` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x136dac76eeb80e0e2c0ed13f1ae416f2faeef5a4` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x13e70997d0af3ede9344c7646940976bf489c964` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x13fa9c074fed65205ca7fee11c762f2040edf131` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x140c32b45bbf84310139a37da87eedf14b166d37` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x16aa5f75f60770e002e5d991d8a562a2b2e4451c` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17207f0d5a10f52969f08093224ebd3a53e93dd9` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x18d2075a69824e10fa4c978cbd29cd9b35692db3` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d13a5a7bb98bb363dfeb6f6f82d2b93b816c27f` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d27f835b6201572b65dca622aea185b01fba54a` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e32314e60414ed28ee3579c0c754cfe071d131e` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1ef01391c3fe1723dc32717b7112c54da3137801` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f8ce7e3e3368c027a13e1d25263beb38e8f804a` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f9a1695c3bf126cc1156e2bedad6399b3f5794c` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x20239a9ea3c214b773f7eea6379e2d761a79c3d4` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x204233fda1f736209b3aa0717dabb55aaacacd92` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x234134617c64a0b1a27c3d0c664976c73d4eb174` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2357105b6b16034ee2fea32e23edf403b18593d7` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2421d3e8341c9707e80b6544d114ac5140f26679` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x24bf596a4ccd5148fc816a7371cdf75d0706765c` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x24c62ec7f0d0275934ef6fc9432921df87b17ee7` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25eafe0992bddb623a6b56c74b707d5df9eb7843` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2632d629dd93e541f22c4c572101857f3ba52276` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2735aae1a56a5dbac1a951b92bd9fad0f33eefb4` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x27ae0b20c0b4878d52c4c01544412bd3973e336f` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29919635b9cdaf401843f1ab5a062bc0eb9250c0` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29a1e4ed6554fcf7966415bd8a00dc34ff8f6e8b` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29f525537574a7b6e6c21b99bf29dda433c9c1d7` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b38256d8c862dfb86e23672462553a3fd800e9e` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d598c684611fcea588e1fef6d4c50d7bd09c705` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2efd16701fd94cadae723c20734962afd36dcacf` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f7d25ff1dc5da2378076bea2617d1e3e0dcbd2d` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f8b4c3b4495f104f475dd102434854f7e385574` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2fe5e05b34aefc2a1d7eeabad313872e963dec84` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x308a2fd4f7c62506bae9b3bc6c9a6672e3b72c85` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x31b59895f57db40460a58f79229a0a92eb327f5c` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3224071fc67656bf17a735a9f4ba434c95c52409` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x323e6b95c5c4bfcae4c0da5179d31c836e9a8179` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3249b3196798cafc3a3ff023f719196410c7836e` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3314e933182f0dcd2c032a1b70bd76e5e87fc7a2` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3387be65e0f4aa6fc29a9f158be1b2e4f8c7eebb` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x35dad84253205ee1746a0b8a1a91043ebd971ce6` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36193d1b83517af599b66b5dd8f556b9341236d8` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36e01f055cde0cc1a9a56c80ab8643e1b289aa87` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x37b2090bbd1ba4e46d803286e18775cbbac86259` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x37c47df67d664abbc382d9d80b629678f3f83004` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x38927df780aeedaa2d9706dc5d62763841561752` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x39d2bad6ceb2f77bb30b5ef842abe9be0b42b9b0` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a38508bb69a86bd3ba85d8064e4c2574d18ea16` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ae63601e2d3667b05a850e3890c7e44cc581a3e` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b056727ece0582b48036ef98376e2a112cd8147` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b44abd34248c58733dbfb69bbbe52843de37a30` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c42b5632f0fb0646f06bf202e3d9326bc6c84fe` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c6897bf58fe4d3a32f62e41d8a78be5ef3fa421` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3fabb13195599bef352157a2c6c6937aead18a1f` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4065a67203c3d9307d121a093baa16eb11136985` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x416bb5813b653278ef05866fbb6ea6c2ffb6b4b0` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4219a2084e77865ed94607412a96f5e503278869` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x439cd734e983a970859b69ac1e455ba3fb9388a8` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x452eb8c3d70b343890a4b16f3971918dfdd96007` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x455666d7c8df852c9575b2c91c4c42f03726d902` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x46056233d30a5b4f59db789fc54fc90f8ecc88f5` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x483df4b557dda871b13c9d90cd900badac0ea3d7` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x489d51d798d13b628315e313471ba9fbabc5d653` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4995a3abb6304f12a7e730a08b33399ead983c0c` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e26408a76028306f06ab7684ddb11670d3e4269` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f9fe20cc891d1cd6ffdf1788bc0a5e30a492fb2` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4fc2cbc3417d6b0915bd768081c34a4537941bf6` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50ec466881423d00c685050f5dba12c9ad1b99ff` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50f5cd484fd70af485464b2e9ff4da49ddb4521f` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x548070b2595c82a123d22d925f6675e7b9624ff6` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54dd1315576d880821ae8dbf56938a4316bf150b` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x555f3ffe6c5c6c65609d8627ef30da0af9060b3d` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56945fe7cb27a68d9eedcd66c866f5bf5d3b12d9` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56d63b862a53a91a25a0bdad042a2e401fc0bb8f` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x57816b506f3d81a4da98532c9587a8aae2e0331d` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5af17540921cd9d388eaa9344c42c507f38490ce` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b601ad4a40882421be00f6b8fff50f9bf804b78` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5bdee7f0f85be5adeddeba687a77caac6f412908` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5be73b3cc063e3e78df73bdbcac982806555b604` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5c1fa71022fb6fdcfd5bda745d50eb9bc9ac64ad` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5c6defad2e24169d513428ce8cee1b3392bd43bc` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5c93f8c736b254b32a0aac3f2022ba0215d4dc64` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d5dcb0821a9c9d8f2c5a4d5500f6c52b01d177c` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d62fdc813702446bbf2e465c5d88243dd77107d` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d64c319e5dc810228112ba01cacdb879a28ab25` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5dd187119112f2b375a8d4bbb756c28ed9b09aa5` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e1df4d4a3b7624b318f8a032e7c942c40d924fc` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f466cbab2e25e928d4b47712b9303f1b58c8043` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f5fb8d66413eac535b0ebb08120f9b1c1ef8ff4` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f72c3c7b29d616ab8324a3ef49ab07ec8892209` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5fe5202e4c706405d57a6ac860db1839dd116979` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x61212793a7c67cc6584a6b8e84bf55ca9fa6a8a9` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62c2c3d75826441e1dbf8ed4588fa5517f7d4475` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6501bd8cb63e13d61f14ed5094d8f11d57a57113` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6676ba11e8c63962fb83256d88657d13593f5cba` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x681c639e727bdfcd1649d0105873b8dff2ef526d` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6845e84e422eb97c2cc2f65757cd0fc5f6e7d644` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x68f434cdfd586e9aca681b55c2bc77dd553fc592` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6967dfd94738380568c64fcd5b07851bbc02dc1a` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69bcfab2ee06458c8001e4e53e1e5d258d46d355` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6b284e60b80682be76134b1b2a6ca85f6a360e81` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6b3884c95ab3cb51bba8e69f11b171d1479359a1` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d8cfe68c5b34346c2142b02cdddd2447ea2418b` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ecf29c3a81471879e94ddcc0127f12164cb331d` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x71d33511d53ee8a89724ec9cbbddf9cfd5fd086c` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x71ff3cf44c685b5bf8105dcdd7e7857f7a552891` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x724371e00e939d3b9adcbea17cc584f6f7482e29` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7471760bd5b6f8778a69a7bdc5490a5fac0c1fa4` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x76d15914b1275c278ca60373f07fd4f683ec7572` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7749748aac9231e183640d9e78cd9b5412deb10b` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7790609066b0849456f191548bac0d4b72a6f7ef` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x77e49282f03168896f4b745d801cd19f28b66380` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a7f1c839cf7807d788da5276a0174fc2bb14409` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7b86a8513210c8559c335e097124fc1cc5487f14` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7bca4c220cfcf1dfaa7f164037a5f046bde56ce5` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7bf88f9cb4f86dffba4861502abaa3a4c9357988` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d8627d847039cd9ffe0ae87a2dea98677cff9b9` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e6900108b7777ce017f557d0f155d45b3458586` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e901c53e4d7991c298b34e817b47a2c2d0a19f2` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f0d7534735bc05d8ee06083c27b698b97d8329c` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f5cf9d64509f424e20db9bf2024249c5fee214f` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7fcd772fc9363b6233d5caefba43fcaf157a2783` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x809501fd65ff781bf5abc13aaa802cdb982d39f8` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8109a89d1c779724de794fa34f5cd4b5ebafb7c3` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81559493eecef38dda49e148881061f5f8a0b652` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8387e72ccce6d2c6cee66e164d1b744d83ad8fa9` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83c20d32202b7e253e518c4a33d3801e69b5e4b2` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83e800858ca65d34758344efda39d63d77ce94d3` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x840abd1959d715700adf3628e2c774bad431cac4` | non_address_book | unknown | unknown | unverified | n/a | `0x285e3b1e82f74a99d07d2ad25e159e75382bb43b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit 2](https://dedaub.com/audits/liquity/liquity-v2-aug-28-2024) | Dedaub | Audit | 2024-08 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 14 | high |
| [Audit 4](https://certora.cdn.prismic.io/certora/Z1tLJJbqstJ98b8J_LiquityVerificationReport.pdf) | Certora | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Audit 7](https://reports.electisec.com/01-2025-Asymmetry-USA-d) | Electisec | Audit | 2025 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Audit 10](https://reports.electisec.com/05-2025-Asymmetry-USDaf-V2) | Electisec | Audit | 2025 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Audit 11](https://reports.electisec.com/2025-06-usdaf-2-pr2) | Electisec | Audit | 2025-06 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Audit 1](https://code4rena.com/reports/2023-09-asymmetry) | Code4rena | Contest | 2023-09 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 2 | high |
| [Audit 1](https://code4rena.com/audits/2023-03-asymmetry-contest) | Code4rena | Contest | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Audit 2](https://code4rena.com/audits/2023-05-asymmetry-mitigation-review-contest) | Code4rena | Contest | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [Audit 3 (also discovered via alternate URL)](https://github.com/Zellic/publications/blob/1916cd0f6ef5e1fda0e44628d5eed902fd797883/Asymmetry%20Finanace%20safETH%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Audit 2](https://gist.github.com/romeroadrian/3bf5506e1e4a0594cc722b0310b5e362) | romeroadrian | Audit | 2024-05 | stale | Direct | contract_name | matched | 3 | 2 | 0 | 14 | high |
| [Audit 3](https://gist.github.com/romeroadrian/fe3fa83fe7ed0d42768c53e4209e7cdd) | romeroadrian | Audit | 2024-06 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 1 | high |
| [Audit 2](https://gist.github.com/romeroadrian/cea29ae49185dcc9096f49314a83f151) | romeroadrian | Audit | 2024-01 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 21 | high |
| [Chaos Labs USDaf/Bold Economic Modeling and Simulation Report](https://cdn.sanity.io/files/zmh9mnff/production/ca6a4815e62b05f33fb3ec56c5a4c42d6b7ddbec.pdf) | Code4rena | Contest | 2024-10 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [- [Audits/Bug Bounties]()](https://docs.asymmetry.finance/security/audits-bug-bounties.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16689] Audit 2 — matched: Extracted contract names from the audit report's findings and scope description. The report covers Liquity v2 (BOLD) protocol contracts. The audit date is explicitly stated as August 28, 2024.
- [16690] Audit 4 — no match: Scope explicitly lists three contracts: BorrowerOperations.sol, TroveManager.sol, ActivePool.sol. Audit date inferred from 'December 2024' in header.
- [16692] Audit 7 — no match: The provided text is not an audit report; it is a boilerplate for a Next.js application.
- [16693] Audit 10 — no match: The provided text is not an audit report; it only contains 'Create Next App' which is a generic phrase.
- [16694] Audit 11 — no match: The provided text is not an audit report; it is a generic title 'Create Next App' with no contract names or audit details.
- [16695] Audit 1 — matched: Scope section explicitly lists 4 smart contracts: AfEth, AbstractStrategy, VotiumStrategy, VotiumStrategyCore. Audit date found on cover page.
- [16696] Audit 1 — no match: The provided text is a leaderboard for a Code4rena contest, not an audit report. No contracts in scope or audit details are present.
- [16697] Audit 2 — no match: Extracted contract names from findings and mitigation descriptions; no explicit scope table provided.
- [16698] Audit 3 — no match: Scope section lists 9 contracts: SafEth.sol, SafEthStorage.sol, Ankr.sol, DerivativeBase.sol, Reth.sol, SfrxEth.sol, Stafi.sol, Swell.sol, WstEth.sol. Audit date from cover page: July 6, 2023.
- [16699] Audit 2 — matched: Extracted 17 contract names from the scope section listing files in src/ directory. Audit date inferred from 'Date: May 6 to 10, 2024' in the report header.
- [16700] Audit 3 — matched: Scope explicitly lists AfCvx.sol and CLeverCVXStrategy.sol. Audit date is June 10 to 12, 2024, so end date is 2024-06-12.
- [16701] Audit 2 — matched: All contracts listed in the Scope section of the report were extracted. The audit date is the end date of the review period (Jan 22 to 29, 2024).
- [16704] Chaos Labs USDaf/Bold Economic Modeling and Simulation Report — no match: The document is a mechanism design review, not a smart contract audit. It contains no scope section listing contracts or files. No contract names are identifiable.
- [16708] - [Audits/Bug Bounties]() — no match: The document is an index page listing audit reports for various projects (Liquity v2, USDaf, veASF, afCVX, afETH, safETH) but does not contain a scope section or list of contracts in scope for a specific audit. No contract names or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit 2 | CollateralRegistry | own contract | CollateralRegistry (selected) `0x33d68055cd54061991b2e98b9ab326ffce4d60fe` — deployed 2025-07-22 20:17:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 2 | TroveManager | ambiguous — not counted | TroveManager (alternative) `0x53ce82ac43660aab1f80fecd1d74afe7a033d505` — deployed 2025-07-22 20:24:59+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xf8a25a2e4c863bb7cea7e4b4eeb3866bb7f11718` — deployed 2025-07-22 20:18:59+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x478e7c27193aca052964c3306d193446027630b0` — deployed 2025-07-22 20:26:59+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x7aff0173e3d7c5416d8caa3433871ef07568220d` — deployed 2025-07-22 20:21:11+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xfb17d0402ae557e3efa549812b95e931b2b63bce` — deployed 2025-07-22 20:29:11+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x7bd47eca45ee18609d3d64ba683ce488ca9320a3` — deployed 2025-07-22 20:33:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit 2 | BorrowerOperations | ambiguous — not counted | BorrowerOperations (alternative) `0xda9af112edfd837eebc1780433481426a52556e0` — deployed 2025-07-22 20:29:11+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x664507f1445657d36d8064663653b7810971f411` — deployed 2025-07-22 20:33:35+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x9e601005deaaee8294c686e28e1affd04cc13830` — deployed 2025-07-22 20:21:11+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x2538cd346429ea59902e02448bb7a7c098e4554e` — deployed 2025-07-22 20:26:59+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x336d9c5ecb9d6ce79c8c077d35426e714969b41d` — deployed 2025-07-22 20:24:59+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x57bd20ae68f845b35b76fe6e0239c9929eb48469` — deployed 2025-07-22 20:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit 2 | WETHZapper | unmatched — not counted | — | mentioned in M4 | no |
| Audit 2 | ActivePool | ambiguous — not counted | ActivePool (alternative) `0xb00d1d5dfd72a440b8c04a5f7b5bc3c8159a7f44` — deployed 2025-07-22 20:29:11+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0xf507e264d507ef64a72aeaf4cc8c270d008fc48a` — deployed 2025-07-22 20:33:35+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x20f29569566020d8e49c9843033c370772a93774` — deployed 2025-07-22 20:26:59+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x244c422663328233a5d1bd5045ff943ba97d046e` — deployed 2025-07-22 20:21:11+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x08eaafd8fbb12cf12d6765e80c5b0ff8490c232d` — deployed 2025-07-22 20:24:59+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0xb87e1e1c4cc2decada13025a8dc8a94bdb77fb63` — deployed 2025-07-22 20:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit 2 | SortedTroves | unmatched — not counted | — | mentioned in M2, A4 | no |
| Audit 2 | BoldToken | unmatched — not counted | — | mentioned in L3 | no |
| Audit 2 | StabilityPool | ambiguous — not counted | StabilityPool (alternative) `0x545a7ddfd863bd7ea0bfc689125169598085f75e` — deployed 2025-07-22 20:29:11+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x446f358e3a927cc68f342141d78aa2d1c54e18f0` — deployed 2025-07-22 20:26:59+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0xd48dc7cddc481f596bd9a97755c7ac696ad4ea87` — deployed 2025-07-22 20:21:11+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0xb571781cedf07257d60d6b252a3d8b24150ded97` — deployed 2025-07-22 20:24:59+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x922faa141e95e43a9deeab8dade3ac8d4a32ad5c` — deployed 2025-07-22 20:33:35+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x83e5bde77d7477ecd972e338541b90af57675536` — deployed 2025-07-22 20:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit 2 | CollSurplusPool | unmatched — not counted | — | mentioned in A4 | no |
| Audit 2 | DefaultPool | unmatched — not counted | — | mentioned in A4 | no |
| Audit 2 | LiquityBase | unmatched — not counted | — | mentioned in A4, A6 | no |
| Audit 2 | PriceFeed | unmatched — not counted | — | mentioned in A4 | no |
| Audit 2 | TroveNFT | unmatched — not counted | — | mentioned in A4 | no |
| Audit 2 | GasPool | unmatched — not counted | — | mentioned in A5 | no |
| Audit 2 | AddRemoveManagers | unmatched — not counted | — | mentioned in L2 | no |
| Audit 4 | BorrowerOperations | ambiguous — not counted | BorrowerOperations (alternative) `0xda9af112edfd837eebc1780433481426a52556e0` — deployed 2025-07-22 20:29:11+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x664507f1445657d36d8064663653b7810971f411` — deployed 2025-07-22 20:33:35+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x9e601005deaaee8294c686e28e1affd04cc13830` — deployed 2025-07-22 20:21:11+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x2538cd346429ea59902e02448bb7a7c098e4554e` — deployed 2025-07-22 20:26:59+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x336d9c5ecb9d6ce79c8c077d35426e714969b41d` — deployed 2025-07-22 20:24:59+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0x57bd20ae68f845b35b76fe6e0239c9929eb48469` — deployed 2025-07-22 20:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit 4 | TroveManager | ambiguous — not counted | TroveManager (alternative) `0x53ce82ac43660aab1f80fecd1d74afe7a033d505` — deployed 2025-07-22 20:24:59+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xf8a25a2e4c863bb7cea7e4b4eeb3866bb7f11718` — deployed 2025-07-22 20:18:59+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x478e7c27193aca052964c3306d193446027630b0` — deployed 2025-07-22 20:26:59+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x7aff0173e3d7c5416d8caa3433871ef07568220d` — deployed 2025-07-22 20:21:11+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xfb17d0402ae557e3efa549812b95e931b2b63bce` — deployed 2025-07-22 20:29:11+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x7bd47eca45ee18609d3d64ba683ce488ca9320a3` — deployed 2025-07-22 20:33:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit 4 | ActivePool | ambiguous — not counted | ActivePool (alternative) `0xb00d1d5dfd72a440b8c04a5f7b5bc3c8159a7f44` — deployed 2025-07-22 20:29:11+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0xf507e264d507ef64a72aeaf4cc8c270d008fc48a` — deployed 2025-07-22 20:33:35+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x20f29569566020d8e49c9843033c370772a93774` — deployed 2025-07-22 20:26:59+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x244c422663328233a5d1bd5045ff943ba97d046e` — deployed 2025-07-22 20:21:11+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x08eaafd8fbb12cf12d6765e80c5b0ff8490c232d` — deployed 2025-07-22 20:24:59+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0xb87e1e1c4cc2decada13025a8dc8a94bdb77fb63` — deployed 2025-07-22 20:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit 1 | AfEth | own proxy deployment | SimpleProxy (proxy) (selected) `0x0000000016e6cb3038203c1129c8b4aee7af7a11` — deployed 2024-02-19 05:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 1 | AbstractStrategy | unmatched — not counted | — | listed in scope | no |
| Audit 1 | VotiumStrategy | own proxy deployment | SimpleProxy (proxy) (selected) `0x00000069abbb0b1ad6975bcf753eee15d318a0bf` — deployed 2024-02-19 05:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 1 | VotiumStrategyCore | unmatched — not counted | — | listed in scope | no |
| Audit 2 | SafEth | unmatched — not counted | — | mentioned in findings M-10, M-11, M-12 | no |
| Audit 2 | Reth | unmatched — not counted | — | mentioned in findings H-05, H-07, H-08, M-08 | no |
| Audit 2 | WstEth | unmatched — not counted | — | mentioned in finding H-06 | no |
| Audit 2 | SfrxEth | unmatched — not counted | — | mentioned in findings H-04, M-02 | no |
| Audit 3 | SafEth | unmatched — not counted | — | listed in scope | no |
| Audit 3 | SafEthStorage | unmatched — not counted | — | listed in scope | no |
| Audit 3 | Ankr | unmatched — not counted | — | listed in scope | no |
| Audit 3 | DerivativeBase | unmatched — not counted | — | listed in scope | no |
| Audit 3 | Reth | unmatched — not counted | — | listed in scope | no |
| Audit 3 | SfrxEth | unmatched — not counted | — | listed in scope | no |
| Audit 3 | Stafi | unmatched — not counted | — | listed in scope | no |
| Audit 3 | Swell | unmatched — not counted | — | listed in scope | no |
| Audit 3 | WstEth | unmatched — not counted | — | listed in scope | no |
| Audit 2 | AfCvx | own proxy deployment | SimpleProxy (proxy) (selected) `0x8668a15b7b023dc77b372a740fcb8939e15257cf` — deployed 2024-05-02 20:48:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 2 | PirexMigrator | own contract | PirexMigrator (selected) `0x552f4b850d4963d914e6b2c011b5fe475468d3b8` — deployed 2024-05-13 23:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 2 | IProxySource | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IAfCvx | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ICleverCvxStrategy | unmatched — not counted | — | listed in scope | no |
| Audit 2 | Constants | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ICLeverCVXLocker | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IFurnace | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ICvxLocker | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ICvxRewardsPool | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IPirexCVX | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IPirexLiquidityPool | unmatched — not counted | — | listed in scope | no |
| Audit 2 | CLeverCVXStrategy | unmatched — not counted | — | listed in scope | no |
| Audit 2 | SimpleProxy | own proxy deployment | SimpleProxy (proxy) (alternative) `0x0000000016e6cb3038203c1129c8b4aee7af7a11` — deployed 2024-02-19 05:57:59+03 — liveness: live (current_address_book_code)<br>SimpleProxy (proxy) (alternative) `0x00000069abbb0b1ad6975bcf753eee15d318a0bf` — deployed 2024-02-19 05:57:59+03 — liveness: live (current_address_book_code)<br>SimpleProxy (proxy) (selected) `0x8668a15b7b023dc77b372a740fcb8939e15257cf` — deployed 2024-05-02 20:48:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-05-02 was 8d from audit; next candidate 81d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 2 | SimpleProxyFactory | unmatched — not counted | — | listed in scope | no |
| Audit 2 | TrackedAllowances | unmatched — not counted | — | listed in scope | no |
| Audit 2 | Zap | unmatched — not counted | — | listed in scope | no |
| Audit 3 | AfCvx | own proxy deployment | SimpleProxy (proxy) (selected) `0x8668a15b7b023dc77b372a740fcb8939e15257cf` — deployed 2024-05-02 20:48:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 3 | CLeverCVXStrategy | unmatched — not counted | — | listed in scope | no |
| Audit 2 | AfEth | own proxy deployment | SimpleProxy (proxy) (selected) `0x0000000016e6cb3038203c1129c8b4aee7af7a11` — deployed 2024-02-19 05:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 2 | AfEthRelayer | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IChainlinkFeed | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IClaimZap | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ISwapRouter | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IWETH | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IAfEth | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IVotiumStrategy | unmatched — not counted | — | listed in scope | no |
| Audit 2 | Constants | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ICvxEthPool | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ILockedCvx | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ISnapshotDelegationRegistry | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IVotiumMerkleStash | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IFraxEthMinter | unmatched — not counted | — | listed in scope | no |
| Audit 2 | IFrxEthPool | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ISfrxETH | unmatched — not counted | — | listed in scope | no |
| Audit 2 | frxETH | unmatched — not counted | — | listed in scope | no |
| Audit 2 | ISafEth | unmatched — not counted | — | listed in scope | no |
| Audit 2 | SfrxEthStrategy | unmatched — not counted | — | listed in scope | no |
| Audit 2 | VotiumStrategy | own proxy deployment | SimpleProxy (proxy) (selected) `0x00000069abbb0b1ad6975bcf753eee15d318a0bf` — deployed 2024-02-19 05:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit 2 | CvxEthOracleLib | unmatched — not counted | — | listed in scope | no |
| Audit 2 | HashLib | unmatched — not counted | — | listed in scope | no |
| Audit 2 | TrackedAllowances | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x59a529070fbb61e6d6c91f952ccb7f35c34cf8aa` | AsfToken | token | $493,214.80 | Verified native implementation with $493,214.80 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb00d1d5dfd72a440b8c04a5f7b5bc3c8159a7f44` | ActivePool | core_logic | $38,845.99 | Verified native implementation with $38,845.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x08eaafd8fbb12cf12d6765e80c5b0ff8490c232d` | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x20f29569566020d8e49c9843033c370772a93774` | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x244c422663328233a5d1bd5045ff943ba97d046e` | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb87e1e1c4cc2decada13025a8dc8a94bdb77fb63` | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf507e264d507ef64a72aeaf4cc8c270d008fc48a` | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ad1c302203f0fbb6ca34641bdfef0bf4182377c` | AddressesRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2c5a85a3fd181857d02baff169d1e1cb220ead6d` | AddressesRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2538cd346429ea59902e02448bb7a7c098e4554e` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x336d9c5ecb9d6ce79c8c077d35426e714969b41d` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x57bd20ae68f845b35b76fe6e0239c9929eb48469` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x664507f1445657d36d8064663653b7810971f411` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9e601005deaaee8294c686e28e1affd04cc13830` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xda9af112edfd837eebc1780433481426a52556e0` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4b74d043336678d2f62dae6595bc42dccabc3bb1` | BTCPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1666ee2dbb308c1ee321cc6f1575afceaad9b1e5` | CbbtcZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7fe24f1a024d33506966cb7ca48bab8c65fb632d` | dASF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x838a1f38c361ffa1b23201640752149adb4e865a` | HintHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1771f4de6836b10b59dd66990b0190985df6673c` | InterestRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb3683a407bddddfb126cf06fb52d974a08fd7e80` | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x446f358e3a927cc68f342141d78aa2d1c54e18f0` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x545a7ddfd863bd7ea0bfc689125169598085f75e` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x83e5bde77d7477ecd972e338541b90af57675536` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x922faa141e95e43a9deeab8dade3ac8d4a32ad5c` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb571781cedf07257d60d6b252a3d8b24150ded97` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd48dc7cddc481f596bd9a97755c7ac696ad4ea87` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf119b5aa93a7755b09952b3a88d04cdaf5329034` | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x478e7c27193aca052964c3306d193446027630b0` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7bd47eca45ee18609d3d64ba683ce488ca9320a3` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2ae50916b4467c681689069bb54e94fd0246ba65` | WbtcZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf8853a3c8fed7e3ef145816b98f15278fcc2aa1c` | WbtcZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0daafddcf74451caec724bcd2f0d7e4025c95b94` | WETHPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7fd713fe57fcd0a7636c152faba6bdc2d3b27d15` | WrappedCbbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07011c1cdebc84fd5bbc64db6ce5ca9b92ca598a` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x14300f754c11ac4c848732151d80affb12f90374` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f18afbd0a055fe05acfe22ce951dfc556f0bba4` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f4f32fbc1e6d3460bd33b88e035aa0795cc2949` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x547d14f2e230cda0b99a17a1e396dc5b1e5d0920` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x54867de8786dbd761463729f570b76172733f010` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x58d1a68f882eed25a63cd4c2c5b574066a78f961` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9f69960304183768a01e0ba9f8a0164b556642d2` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb6e58f716ea885a26a1b7e6ee7ca779efab32dae` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe1dde16f0dc85e05893b20131eb49deed543d68d` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xff2736078e4a42c9f8fc7247412a724945a0e5ae` | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 99 |
| upstream | 7 |
| standard_library | 17 |
| needs_review | 549 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (7 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 7 ambiguous, 61 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=6, medium=1
- Match method counts: temporal_name=1, unique_name=7

Zero-match audit list:

- [16690] Audit 4
- [16692] Audit 7
- [16693] Audit 10
- [16694] Audit 11
- [16696] Audit 1
- [16697] Audit 2
- [16698] Audit 3
- [16704] Chaos Labs USDaf/Bold Economic Modeling and Simulation Report
- [16708] - [Audits/Bug Bounties]()

Fork inheritance lineage and inherited audits are included when available.
