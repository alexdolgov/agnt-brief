# Agentic Audit Brief: GMX

## Project Overview

- Project: GMX (`gmx`)
- Website: [https://gmx.io](https://gmx.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.840Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, avalanche
- Contract surface: 186 unique implementations (186 raw deployments)
- DeFi Llama TVL: $238,547,261.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 185 project-authored contract(s) across 2 chain(s); 8 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 5 common project-authored base contract(s) (rolemodule, mintablebasetoken, basetoken). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 186; live-surface contracts included: 186 (185 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 135/177 (76.3%)
- Deployed-live implementations: 185 of 186 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 142/186
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 186
- Raw deployments: 186
- Audits discovered: 39 (39 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 37
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/gmx/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 5 fresh, 13 aging, 20 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 142 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 71.2% (Certora, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian | Tier 2 | 142 | 76.3% | 2026-06 |
| ABDK | Tier 2 | 131 | 70.4% | 2022-05 |
| Certora | Tier 1 | 131 | 70.4% | 2023-11 |
| Sherlock | Tier 1 | 131 | 70.4% | 2023-07 |
| Dedaub | Tier 2 | 130 | 69.9% | 2022-11 |

## Contract Surface

### ✅ Verified + Audited (142)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdlHandler | unknown | avalanche | n/a | [`0x0f012e736e63eab4e326595055a33279633daa93`](./contracts/avalanche-43114/0x0f012e736e63eab4e326595055a33279633daa93/) | ✅ Audited |
| AdlUtils | unknown | arbitrum | n/a | [`0x0dbb1b891636dc90a2bca29d1cfb80dfdd73193f`](./contracts/arbitrum-42161/0x0dbb1b891636dc90a2bca29d1cfb80dfdd73193f/) | ✅ Audited |
| AutoCancelSyncer | unknown | avalanche | n/a | [`0x294a967d1750ba6b4e8a765b363bcf693d0c5b63`](./contracts/avalanche-43114/0x294a967d1750ba6b4e8a765b363bcf693d0c5b63/) | ✅ Audited |
| BaseOrderUtils | unknown | arbitrum | n/a | [`0x00f8739ea881bbc93535877e45f67a468ed9ffec`](./contracts/arbitrum-42161/0x00f8739ea881bbc93535877e45f67a468ed9ffec/) | ✅ Audited |
| BridgeOutFromControllerUtils | unknown | avalanche | n/a | [`0x40336d25f5c0218efab8c3d43db1b45c81fe419e`](./contracts/avalanche-43114/0x40336d25f5c0218efab8c3d43db1b45c81fe419e/) | ✅ Audited |
| CallbackUtils | unknown | arbitrum | n/a | [`0x010fdbc97e0f33209fe6fa5ca271619af202c3ae`](./contracts/arbitrum-42161/0x010fdbc97e0f33209fe6fa5ca271619af202c3ae/) | ✅ Audited |
| ChainlinkDataStreamProvider | unknown | arbitrum | n/a | [`0xb9089f9b862db6b591cc54a2d12c1fbacf0bf834`](./contracts/arbitrum-42161/0xb9089f9b862db6b591cc54a2d12c1fbacf0bf834/) | ✅ Audited |
| ChainlinkPriceFeedProvider | unknown | avalanche | n/a | [`0x05d97cee050bfb81fb3ead4a9368584f8e72c88e`](./contracts/avalanche-43114/0x05d97cee050bfb81fb3ead4a9368584f8e72c88e/) | ✅ Audited |
| ChainReader | unknown | arbitrum | n/a | [`0x152feadb10ded82f5405b3b26e0a27fc2944d5de`](./contracts/arbitrum-42161/0x152feadb10ded82f5405b3b26e0a27fc2944d5de/) | ✅ Audited |
| ClaimHandler | unknown | arbitrum | n/a | [`0x0e3e890994ce78e215019463abf9326b951a1392`](./contracts/arbitrum-42161/0x0e3e890994ce78e215019463abf9326b951a1392/) | ✅ Audited |
| ClaimUtils | unknown | arbitrum | n/a | [`0x0bbf4665243ab8b5e8e73d6f9ce02ba4006af761`](./contracts/arbitrum-42161/0x0bbf4665243ab8b5e8e73d6f9ce02ba4006af761/) | ✅ Audited |
| ClaimVault | unknown | avalanche | n/a | [`0x093a1a45b1c67f88f61087b2632e0599f4a7bfd9`](./contracts/avalanche-43114/0x093a1a45b1c67f88f61087b2632e0599f4a7bfd9/) | ✅ Audited |
| Config | unknown | avalanche | n/a | [`0x0913ca02b93a2aa381a420aeac38490ee6284a32`](./contracts/avalanche-43114/0x0913ca02b93a2aa381a420aeac38490ee6284a32/) | ✅ Audited |
| ConfigSyncer | unknown | arbitrum | n/a | [`0x266de1daf55e0630c2e288f0bff7b4610239f2ab`](./contracts/arbitrum-42161/0x266de1daf55e0630c2e288f0bff7b4610239f2ab/) | ✅ Audited |
| ConfigTimelockController | unknown | arbitrum | n/a | [`0x093a1a45b1c67f88f61087b2632e0599f4a7bfd9`](./contracts/arbitrum-42161/0x093a1a45b1c67f88f61087b2632e0599f4a7bfd9/) | ✅ Audited |
| ConfigUtils | unknown | avalanche | n/a | [`0x1158e639da58fd104908343ef3f42a79d54d2918`](./contracts/avalanche-43114/0x1158e639da58fd104908343ef3f42a79d54d2918/) | ✅ Audited |
| ContributorHandler | unknown | arbitrum | n/a | [`0x4729d9f61c0159f5e02d2c2e5937b3225e55442c`](./contracts/arbitrum-42161/0x4729d9f61c0159f5e02d2c2e5937b3225e55442c/) | ✅ Audited |
| DataStore | unknown | avalanche | n/a | [`0x2f0b22339414aded7d5f06f9d604c7ff5b2fe3f6`](./contracts/avalanche-43114/0x2f0b22339414aded7d5f06f9d604c7ff5b2fe3f6/) | ✅ Audited |
| DecreaseOrderExecutor | unknown | arbitrum | n/a | [`0x0560bba77567d62584814db9cf1dbe38dd5aaf7d`](./contracts/arbitrum-42161/0x0560bba77567d62584814db9cf1dbe38dd5aaf7d/) | ✅ Audited |
| DecreaseOrderUtils | unknown | arbitrum | n/a | [`0x02f4d5f2e984b1c2ec23859cb5d98aadc51b9b3d`](./contracts/arbitrum-42161/0x02f4d5f2e984b1c2ec23859cb5d98aadc51b9b3d/) | ✅ Audited |
| DecreasePositionCollateralUtils | unknown | arbitrum | n/a | [`0x02176d8560f0596f67c2d10133f07b635602a168`](./contracts/arbitrum-42161/0x02176d8560f0596f67c2d10133f07b635602a168/) | ✅ Audited |
| DecreasePositionSwapUtils | unknown | arbitrum | n/a | [`0x026c0ca0cc15256a1f184325de40fa14af780214`](./contracts/arbitrum-42161/0x026c0ca0cc15256a1f184325de40fa14af780214/) | ✅ Audited |
| DecreasePositionUtils | unknown | arbitrum | n/a | [`0x04484fd714edf126f4a938e52057005aef450b60`](./contracts/arbitrum-42161/0x04484fd714edf126f4a938e52057005aef450b60/) | ✅ Audited |
| DepositEventUtils | unknown | arbitrum | n/a | [`0x0e9b519759cd400942f119db747dc8e018e6d139`](./contracts/arbitrum-42161/0x0e9b519759cd400942f119db747dc8e018e6d139/) | ✅ Audited |
| DepositHandler | unknown | arbitrum | n/a | [`0x041388a07ea8ba588d9c8ebfc7dae054da2f4727`](./contracts/arbitrum-42161/0x041388a07ea8ba588d9c8ebfc7dae054da2f4727/) | ✅ Audited |
| DepositStoreUtils | unknown | arbitrum | n/a | [`0x035a9a047d20a486e14a613b04d5a95d7a617c5d`](./contracts/arbitrum-42161/0x035a9a047d20a486e14a613b04d5a95d7a617c5d/) | ✅ Audited |
| DepositUtils | unknown | avalanche | n/a | [`0x37440f0e7a268fa875fa05ef446c1fa11199defd`](./contracts/avalanche-43114/0x37440f0e7a268fa875fa05ef446c1fa11199defd/) | ✅ Audited |
| DepositVault | unknown | avalanche | n/a | [`0x90c670825d0c62ede1c5ee9571d6d9a17a722dff`](./contracts/avalanche-43114/0x90c670825d0c62ede1c5ee9571d6d9a17a722dff/) | ✅ Audited |
| EdgeDataStreamProvider | unknown | avalanche | n/a | [`0x176fd214bc59005ffd722ae3f8fa12a31391f6ae`](./contracts/avalanche-43114/0x176fd214bc59005ffd722ae3f8fa12a31391f6ae/) | ✅ Audited |
| EdgeDataStreamVerifier | unknown | avalanche | n/a | [`0x006cb0ebd0a41ed496d6384c02e667c14ab948e9`](./contracts/avalanche-43114/0x006cb0ebd0a41ed496d6384c02e667c14ab948e9/) | ✅ Audited |
| EventEmitter | unknown | arbitrum | n/a | [`0xc8ee91a54287db53897056e12d9819156d3822fb`](./contracts/arbitrum-42161/0xc8ee91a54287db53897056e12d9819156d3822fb/) | ✅ Audited |
| ExchangeRouter | unknown | avalanche | n/a | [`0x11e590f6092d557bf71baded50d81521674f8275`](./contracts/avalanche-43114/0x11e590f6092d557bf71baded50d81521674f8275/) | ✅ Audited |
| ExecuteDepositUtils | unknown | arbitrum | n/a | [`0x12771e8805304a3d09a63b84fd7f2ec42cfd6380`](./contracts/arbitrum-42161/0x12771e8805304a3d09a63b84fd7f2ec42cfd6380/) | ✅ Audited |
| ExecuteGlvDepositUtils | unknown | avalanche | n/a | [`0x28f1f4aa95f49fab62464536a269437b13d48976`](./contracts/avalanche-43114/0x28f1f4aa95f49fab62464536a269437b13d48976/) | ✅ Audited |
| ExecuteOrderUtils | unknown | arbitrum | n/a | [`0x0b030a7463e9bbc8dd6dfbe20b13f86ef4e59b13`](./contracts/arbitrum-42161/0x0b030a7463e9bbc8dd6dfbe20b13f86ef4e59b13/) | ✅ Audited |
| ExecuteWithdrawalUtils | unknown | arbitrum | n/a | [`0x1364dec7e321059a1bd803e2b634b7a8efd5ae75`](./contracts/arbitrum-42161/0x1364dec7e321059a1bd803e2b634b7a8efd5ae75/) | ✅ Audited |
| ExternalHandler | unknown | arbitrum | n/a | [`0x389cef541397e872dc04421f166b5bc2e0b374a5`](./contracts/arbitrum-42161/0x389cef541397e872dc04421f166b5bc2e0b374a5/) | ✅ Audited |
| FeeDistributor | unknown | arbitrum | n/a | [`0x5a44a3b026d50ec039582fdb3afdd88e2092e211`](./contracts/arbitrum-42161/0x5a44a3b026d50ec039582fdb3afdd88e2092e211/) | ✅ Audited |
| FeeDistributorUtils | unknown | avalanche | n/a | [`0x043f53eb916179682bf55fc61315014590e3070f`](./contracts/avalanche-43114/0x043f53eb916179682bf55fc61315014590e3070f/) | ✅ Audited |
| FeeDistributorVault | unknown | avalanche | n/a | [`0x0560bba77567d62584814db9cf1dbe38dd5aaf7d`](./contracts/avalanche-43114/0x0560bba77567d62584814db9cf1dbe38dd5aaf7d/) | ✅ Audited |
| FeeHandler | unknown | avalanche | n/a | [`0x1a3a103f9f536a0456c9b205152a3ac2b3c54490`](./contracts/avalanche-43114/0x1a3a103f9f536a0456c9b205152a3ac2b3c54490/) | ✅ Audited |
| FeeUtils | unknown | arbitrum | n/a | [`0x00d29d62f04b430de8ee4f745a07d703ec754441`](./contracts/arbitrum-42161/0x00d29d62f04b430de8ee4f745a07d703ec754441/) | ✅ Audited |
| GasUtils | unknown | arbitrum | n/a | [`0x043f53eb916179682bf55fc61315014590e3070f`](./contracts/arbitrum-42161/0x043f53eb916179682bf55fc61315014590e3070f/) | ✅ Audited |
| GelatoRelayRouter | unknown | arbitrum | n/a | [`0x006cb0ebd0a41ed496d6384c02e667c14ab948e9`](./contracts/arbitrum-42161/0x006cb0ebd0a41ed496d6384c02e667c14ab948e9/) | ✅ Audited |
| GlvDepositCalc | unknown | arbitrum | n/a | [`0x03b577d9a38303e2dd4498cdb71cba760cdb84dc`](./contracts/arbitrum-42161/0x03b577d9a38303e2dd4498cdb71cba760cdb84dc/) | ✅ Audited |
| GlvDepositEventUtils | unknown | avalanche | n/a | [`0x04e3978be0a0f4da931972eac4473112efec7f79`](./contracts/avalanche-43114/0x04e3978be0a0f4da931972eac4473112efec7f79/) | ✅ Audited |
| GlvDepositHandler | unknown | avalanche | n/a | [`0x0ec1f54cd316a9db85fecafdd2ccde8dd36458d6`](./contracts/avalanche-43114/0x0ec1f54cd316a9db85fecafdd2ccde8dd36458d6/) | ✅ Audited |
| GlvDepositStoreUtils | unknown | arbitrum | n/a | [`0x0dc24af5bbbec90c1defd8f5f72e47c7d298c0ae`](./contracts/arbitrum-42161/0x0dc24af5bbbec90c1defd8f5f72e47c7d298c0ae/) | ✅ Audited |
| GlvDepositUtils | unknown | arbitrum | n/a | [`0x157e6bd60d71ad6202448bf85699fe2695f80b6f`](./contracts/arbitrum-42161/0x157e6bd60d71ad6202448bf85699fe2695f80b6f/) | ✅ Audited |
| GlvFactory | unknown | avalanche | n/a | [`0x5d6b84086da6d4b0b6c0df7e02f8a6a039226530`](./contracts/avalanche-43114/0x5d6b84086da6d4b0b6c0df7e02f8a6a039226530/) | ✅ Audited |
| GlvHandler | unknown | arbitrum | n/a | [`0x26dddaa629bb35fc1853d051561f2200dd190588`](./contracts/arbitrum-42161/0x26dddaa629bb35fc1853d051561f2200dd190588/) | ✅ Audited |
| GlvReader | unknown | avalanche | n/a | [`0x12ac77003b3d11b0853d1fd12e5af22a9060ec4b`](./contracts/avalanche-43114/0x12ac77003b3d11b0853d1fd12e5af22a9060ec4b/) | ✅ Audited |
| GlvRouter | unknown | arbitrum | n/a | [`0x0f012e736e63eab4e326595055a33279633daa93`](./contracts/arbitrum-42161/0x0f012e736e63eab4e326595055a33279633daa93/) | ✅ Audited |
| GlvShiftEventUtils | unknown | avalanche | n/a | [`0x0fe3deb8dcf68bfcbaab62e589777ac526acef4e`](./contracts/avalanche-43114/0x0fe3deb8dcf68bfcbaab62e589777ac526acef4e/) | ✅ Audited |
| GlvShiftHandler | unknown | avalanche | n/a | [`0x13e4ff24bf48bede5ff8e29f4fd947a2271524e3`](./contracts/avalanche-43114/0x13e4ff24bf48bede5ff8e29f4fd947a2271524e3/) | ✅ Audited |
| GlvShiftStoreUtils | unknown | arbitrum | n/a | [`0x19a34c31f9af449be8c4abcc269bad49c2944db1`](./contracts/arbitrum-42161/0x19a34c31f9af449be8c4abcc269bad49c2944db1/) | ✅ Audited |
| GlvShiftUtils | unknown | arbitrum | n/a | [`0x1e390dc57878bae3b32d24c9e8f431cd4d5ee4b8`](./contracts/arbitrum-42161/0x1e390dc57878bae3b32d24c9e8f431cd4d5ee4b8/) | ✅ Audited |
| GlvStoreUtils | unknown | avalanche | n/a | [`0x046fe3fa276ee09fa24c7ab25f343ac5c5ada7e9`](./contracts/avalanche-43114/0x046fe3fa276ee09fa24c7ab25f343ac5c5ada7e9/) | ✅ Audited |
| GlvUtils | unknown | arbitrum | n/a | [`0x19254a4dfbd855e11cc9def57cc7844ff8fa4088`](./contracts/arbitrum-42161/0x19254a4dfbd855e11cc9def57cc7844ff8fa4088/) | ✅ Audited |
| GlvVault | unknown | arbitrum | n/a | [`0x393053b58f9678c9c28c2ce941ff6cac49c3f8f9`](./contracts/arbitrum-42161/0x393053b58f9678c9c28c2ce941ff6cac49c3f8f9/) | ✅ Audited |
| GlvWithdrawalEventUtils | unknown | avalanche | n/a | [`0x00261e5da1f20c93bb5258e384591293da24a4f6`](./contracts/avalanche-43114/0x00261e5da1f20c93bb5258e384591293da24a4f6/) | ✅ Audited |
| GlvWithdrawalHandler | unknown | arbitrum | n/a | [`0x1eea01a3592b8943737977b93ed24be7842d2427`](./contracts/arbitrum-42161/0x1eea01a3592b8943737977b93ed24be7842d2427/) | ✅ Audited |
| GlvWithdrawalStoreUtils | unknown | arbitrum | n/a | [`0x03b033b3afec18b468ea2f5c7c11e20c8932d499`](./contracts/arbitrum-42161/0x03b033b3afec18b468ea2f5c7c11e20c8932d499/) | ✅ Audited |
| GlvWithdrawalUtils | unknown | avalanche | n/a | [`0x2637fc0db1234f284b978eb080bc68ee26c9130c`](./contracts/avalanche-43114/0x2637fc0db1234f284b978eb080bc68ee26c9130c/) | ✅ Audited |
| GmOracleProvider | unknown | arbitrum | n/a | [`0x5d6b84086da6d4b0b6c0df7e02f8a6a039226530`](./contracts/arbitrum-42161/0x5d6b84086da6d4b0b6c0df7e02f8a6a039226530/) | ✅ Audited |
| Governable | unknown | arbitrum | n/a | [`0xaf8e969e3e23f1732f614e64630498ec809d8a47`](./contracts/arbitrum-42161/0xaf8e969e3e23f1732f614e64630498ec809d8a47/) | ✅ Audited |
| GovTimelockController | unknown | arbitrum | n/a | [`0x4bd1cdaab4254fc43ef6424653ca2375b4c94c0e`](./contracts/arbitrum-42161/0x4bd1cdaab4254fc43ef6424653ca2375b4c94c0e/) | ✅ Audited |
| GovToken | unknown | avalanche | n/a | [`0x0ff183e29f1924ad10475506d7722169010ceccb`](./contracts/avalanche-43114/0x0ff183e29f1924ad10475506d7722169010ceccb/) | ✅ Audited |
| IncreaseOrderExecutor | unknown | arbitrum | n/a | [`0x1cc0a1c7a61355fa5fc0634d955c2e3fda1a3b5f`](./contracts/arbitrum-42161/0x1cc0a1c7a61355fa5fc0634d955c2e3fda1a3b5f/) | ✅ Audited |
| IncreaseOrderUtils | unknown | avalanche | n/a | [`0x004e6525b733bc5dbff224f600c27b48f6ccdff5`](./contracts/avalanche-43114/0x004e6525b733bc5dbff224f600c27b48f6ccdff5/) | ✅ Audited |
| IncreasePositionUtils | unknown | avalanche | n/a | [`0x026c0ca0cc15256a1f184325de40fa14af780214`](./contracts/avalanche-43114/0x026c0ca0cc15256a1f184325de40fa14af780214/) | ✅ Audited |
| JitOrderHandler | unknown | avalanche | n/a | [`0x381f6d3c6b66e3a16a165d26157e1c4da25ce40c`](./contracts/avalanche-43114/0x381f6d3c6b66e3a16a165d26157e1c4da25ce40c/) | ✅ Audited |
| LayerZeroProvider | unknown | avalanche | n/a | [`0x0ba5201343f7a18740acc0920aac16aa27b50bdf`](./contracts/avalanche-43114/0x0ba5201343f7a18740acc0920aac16aa27b50bdf/) | ✅ Audited |
| LiquidationHandler | unknown | arbitrum | n/a | [`0x07d7c9e1df9e92dfee48947739d26e8e7a1aab2c`](./contracts/arbitrum-42161/0x07d7c9e1df9e92dfee48947739d26e8e7a1aab2c/) | ✅ Audited |
| LiquidationUtils | unknown | avalanche | n/a | [`0x07049c080d841427ae77f11c26796cd0a41e47c8`](./contracts/avalanche-43114/0x07049c080d841427ae77f11c26796cd0a41e47c8/) | ✅ Audited |
| MarketEventUtils | unknown | avalanche | n/a | [`0x0419073c68a65b286b30fec7f08bfc35e975ed5b`](./contracts/avalanche-43114/0x0419073c68a65b286b30fec7f08bfc35e975ed5b/) | ✅ Audited |
| MarketFactory | unknown | avalanche | n/a | [`0xc57c155faccd93f62546f329d1483e0e5b9c1241`](./contracts/avalanche-43114/0xc57c155faccd93f62546f329d1483e0e5b9c1241/) | ✅ Audited |
| MarketStoreUtils | unknown | arbitrum | n/a | [`0x184675717d5ef9f2bb3df7e9fc639f2f9c044327`](./contracts/arbitrum-42161/0x184675717d5ef9f2bb3df7e9fc639f2f9c044327/) | ✅ Audited |
| MarketUtils | unknown | arbitrum | n/a | [`0x0666034fd7fef174f8c628a9790d6add6564fb56`](./contracts/arbitrum-42161/0x0666034fd7fef174f8c628a9790d6add6564fb56/) | ✅ Audited |
| Multicall3 | unknown | avalanche | n/a | [`0x50474cae810b316c294111807f94f9f48527e7f8`](./contracts/avalanche-43114/0x50474cae810b316c294111807f94f9f48527e7f8/) | ✅ Audited |
| MultichainClaimsRouter | unknown | arbitrum | n/a | [`0x277b4c0e8a76fa927c9881967a4475fd6e234e95`](./contracts/arbitrum-42161/0x277b4c0e8a76fa927c9881967a4475fd6e234e95/) | ✅ Audited |
| MultichainGlvRouter | unknown | avalanche | n/a | [`0x2a7244ee5373d2f161ce99f0d144c12860d651af`](./contracts/avalanche-43114/0x2a7244ee5373d2f161ce99f0d144c12860d651af/) | ✅ Audited |
| MultichainGmRouter | unknown | avalanche | n/a | [`0x10fa5bd343373101654e896b43ca38fd8f3789f9`](./contracts/avalanche-43114/0x10fa5bd343373101654e896b43ca38fd8f3789f9/) | ✅ Audited |
| MultichainOrderRouter | unknown | arbitrum | n/a | [`0x2be05d69c59b0f7aae0c6e955a5f9a52aca6a4a8`](./contracts/arbitrum-42161/0x2be05d69c59b0f7aae0c6e955a5f9a52aca6a4a8/) | ✅ Audited |
| MultichainReader | unknown | arbitrum | n/a | [`0x823b558b4bc0a2c4974a0d8d7885aa1102d15dec`](./contracts/arbitrum-42161/0x823b558b4bc0a2c4974a0d8d7885aa1102d15dec/) | ✅ Audited |
| MultichainSubaccountRouter | unknown | avalanche | n/a | [`0x14d9392cc51d0bc0803d9eef9f3ec44a72e5d0b3`](./contracts/avalanche-43114/0x14d9392cc51d0bc0803d9eef9f3ec44a72e5d0b3/) | ✅ Audited |
| MultichainTransferRouter | unknown | arbitrum | n/a | [`0x26641575ad64fbd1b20ada59935c3471a294fb2f`](./contracts/arbitrum-42161/0x26641575ad64fbd1b20ada59935c3471a294fb2f/) | ✅ Audited |
| MultichainUtils | unknown | arbitrum | n/a | [`0x0fe3deb8dcf68bfcbaab62e589777ac526acef4e`](./contracts/arbitrum-42161/0x0fe3deb8dcf68bfcbaab62e589777ac526acef4e/) | ✅ Audited |
| MultichainVault | unknown | avalanche | n/a | [`0x29d792a8fddf6cecd14185bac499648b791abe57`](./contracts/avalanche-43114/0x29d792a8fddf6cecd14185bac499648b791abe57/) | ✅ Audited |
| Oracle | unknown | arbitrum | n/a | [`0x04e605bd30dee1e97c0f1310d950adc8d5214625`](./contracts/arbitrum-42161/0x04e605bd30dee1e97c0f1310d950adc8d5214625/) | ✅ Audited |
| OracleModuleTest | unknown | arbitrum | n/a | [`0x2e246061be08dc56d33e03dc0cb962c2155722b5`](./contracts/arbitrum-42161/0x2e246061be08dc56d33e03dc0cb962c2155722b5/) | ✅ Audited |
| OracleStore | unknown | avalanche | n/a | [`0xa6ac2e08c6d6bbd9b237e0daaecd7577996f4e84`](./contracts/avalanche-43114/0xa6ac2e08c6d6bbd9b237e0daaecd7577996f4e84/) | ✅ Audited |
| OrderEventUtils | unknown | arbitrum | n/a | [`0x06090f3209dedb831c9e102a841ed273ef6fbfb4`](./contracts/arbitrum-42161/0x06090f3209dedb831c9e102a841ed273ef6fbfb4/) | ✅ Audited |
| OrderHandler | unknown | avalanche | n/a | [`0x00db21077c63fff542c017cc4cdcc84229bfb373`](./contracts/avalanche-43114/0x00db21077c63fff542c017cc4cdcc84229bfb373/) | ✅ Audited |
| OrderStoreUtils | unknown | avalanche | n/a | [`0x00d29d62f04b430de8ee4f745a07d703ec754441`](./contracts/avalanche-43114/0x00d29d62f04b430de8ee4f745a07d703ec754441/) | ✅ Audited |
| OrderUtils | unknown | arbitrum | n/a | [`0x09c7a13e0ff43d4f9e3cfd2ed3b2b41198af761f`](./contracts/arbitrum-42161/0x09c7a13e0ff43d4f9e3cfd2ed3b2b41198af761f/) | ✅ Audited |
| OrderVault | unknown | arbitrum | n/a | [`0x31ef83a530fde1b38ee9a18093a333d8bbbc40d5`](./contracts/arbitrum-42161/0x31ef83a530fde1b38ee9a18093a333d8bbbc40d5/) | ✅ Audited |
| PositionEventUtils | unknown | avalanche | n/a | [`0x00eb8ca57b5b149577ac466cde8128d8d67efe97`](./contracts/avalanche-43114/0x00eb8ca57b5b149577ac466cde8128d8d67efe97/) | ✅ Audited |
| PositionImpactPoolUtils | unknown | arbitrum | n/a | [`0x175f46e993a96428e2ad62fcc418129cf582a628`](./contracts/arbitrum-42161/0x175f46e993a96428e2ad62fcc418129cf582a628/) | ✅ Audited |
| PositionPricingUtils | unknown | arbitrum | n/a | [`0x05976c2f946865a6390166347f52c781bc753630`](./contracts/arbitrum-42161/0x05976c2f946865a6390166347f52c781bc753630/) | ✅ Audited |
| PositionStoreUtils | unknown | arbitrum | n/a | [`0x00db21077c63fff542c017cc4cdcc84229bfb373`](./contracts/arbitrum-42161/0x00db21077c63fff542c017cc4cdcc84229bfb373/) | ✅ Audited |
| PositionUtils | unknown | avalanche | n/a | [`0x035e550d5e97175a4c573e67c5c776cc20539641`](./contracts/avalanche-43114/0x035e550d5e97175a4c573e67c5c776cc20539641/) | ✅ Audited |
| Printer | unknown | avalanche | n/a | [`0x19aa6eb3a6491f648af591b83de9d5f102e28c9f`](./contracts/avalanche-43114/0x19aa6eb3a6491f648af591b83de9d5f102e28c9f/) | ✅ Audited |
| ProtocolGovernor | unknown | arbitrum | n/a | [`0x03e8f708e9c85edceaa6ad7cd06824ceb82a7e68`](./contracts/arbitrum-42161/0x03e8f708e9c85edceaa6ad7cd06824ceb82a7e68/) | ✅ Audited |
| Reader | unknown | arbitrum | n/a | [`0x0537c767cdac0726c76bb89e92904fe28fd02fe1`](./contracts/arbitrum-42161/0x0537c767cdac0726c76bb89e92904fe28fd02fe1/) | ✅ Audited |
| ReaderDepositUtils | unknown | avalanche | n/a | [`0x1d3dbe2f913dca27e943b2837a4cdad6653b02e2`](./contracts/avalanche-43114/0x1d3dbe2f913dca27e943b2837a4cdad6653b02e2/) | ✅ Audited |
| ReaderPositionUtils | unknown | avalanche | n/a | [`0x04315e233c1c6ffa61080b76e29d5e8a1f7b4a35`](./contracts/avalanche-43114/0x04315e233c1c6ffa61080b76e29d5e8a1f7b4a35/) | ✅ Audited |
| ReaderPricingUtils | unknown | avalanche | n/a | [`0x1639063f217e14635674baa129abc80bc21b24aa`](./contracts/avalanche-43114/0x1639063f217e14635674baa129abc80bc21b24aa/) | ✅ Audited |
| ReaderUtils | unknown | arbitrum | n/a | [`0x0597fb70ff1b3081c9b27a9effd1407df1b4035f`](./contracts/arbitrum-42161/0x0597fb70ff1b3081c9b27a9effd1407df1b4035f/) | ✅ Audited |
| ReaderWithdrawalUtils | unknown | arbitrum | n/a | [`0x096a71dc140f1746ac5515ecb4ddafc7ebb35142`](./contracts/arbitrum-42161/0x096a71dc140f1746ac5515ecb4ddafc7ebb35142/) | ✅ Audited |
| ReferralEventUtils | unknown | arbitrum | n/a | [`0x129174043b134ad27eae552d6bea08f23f771205`](./contracts/arbitrum-42161/0x129174043b134ad27eae552d6bea08f23f771205/) | ✅ Audited |
| ReferralStorage | unknown | avalanche | n/a | [`0x0e725cb75258c3d8e9fb47267207b8973b882ebf`](./contracts/avalanche-43114/0x0e725cb75258c3d8e9fb47267207b8973b882ebf/) | ✅ Audited |
| ReferralUtils | unknown | arbitrum | n/a | [`0x0aa9410f2e38f5a5bec68adb0c3d59b09b6747a8`](./contracts/arbitrum-42161/0x0aa9410f2e38f5a5bec68adb0c3d59b09b6747a8/) | ✅ Audited |
| RelayUtils | unknown | avalanche | n/a | [`0x05fca76dee79743426dace9a3369e4b9af7fe4ea`](./contracts/avalanche-43114/0x05fca76dee79743426dace9a3369e4b9af7fe4ea/) | ✅ Audited |
| RewardRouterV2 | unknown | arbitrum | n/a | [`0x5e4766f932ce00aa4a1a82d3da85adf15c5694a1`](./contracts/arbitrum-42161/0x5e4766f932ce00aa4a1a82d3da85adf15c5694a1/) | ✅ Audited |
| RiskOracle | unknown | arbitrum | n/a | [`0x329ffe00a16f5f4ca93428215accd3de04fb917b`](./contracts/arbitrum-42161/0x329ffe00a16f5f4ca93428215accd3de04fb917b/) | ✅ Audited |
| RiskOracleConfig | unknown | arbitrum | n/a | [`0x5ca40cbb5321bbe4ef74ddf01ccd2b4bcc76a9f9`](./contracts/arbitrum-42161/0x5ca40cbb5321bbe4ef74ddf01ccd2b4bcc76a9f9/) | ✅ Audited |
| RoleStore | unknown | arbitrum | n/a | [`0x3c3d99fd298f679dbc2cecd132b4ec4d0f5e6e72`](./contracts/arbitrum-42161/0x3c3d99fd298f679dbc2cecd132b4ec4d0f5e6e72/) | ✅ Audited |
| Router | unknown | avalanche | n/a | [`0x5f719c2f1095f7b9fc68a68e35b51194f4b6abe8`](./contracts/avalanche-43114/0x5f719c2f1095f7b9fc68a68e35b51194f4b6abe8/) | ✅ Audited |
| ShiftEventUtils | unknown | arbitrum | n/a | [`0x00261e5da1f20c93bb5258e384591293da24a4f6`](./contracts/arbitrum-42161/0x00261e5da1f20c93bb5258e384591293da24a4f6/) | ✅ Audited |
| ShiftHandler | unknown | avalanche | n/a | [`0x03b577d9a38303e2dd4498cdb71cba760cdb84dc`](./contracts/avalanche-43114/0x03b577d9a38303e2dd4498cdb71cba760cdb84dc/) | ✅ Audited |
| ShiftStoreUtils | unknown | arbitrum | n/a | [`0x0af6605a7cff7a6617e4830599073b85010d2ca3`](./contracts/arbitrum-42161/0x0af6605a7cff7a6617e4830599073b85010d2ca3/) | ✅ Audited |
| ShiftUtils | unknown | avalanche | n/a | [`0x0eea22131471e5766ef313bd1cccbcc1c0e89599`](./contracts/avalanche-43114/0x0eea22131471e5766ef313bd1cccbcc1c0e89599/) | ✅ Audited |
| ShiftVault | unknown | avalanche | n/a | [`0x7fc46ccb386e9bbbfb49a2639002734c3ec52b39`](./contracts/avalanche-43114/0x7fc46ccb386e9bbbfb49a2639002734c3ec52b39/) | ✅ Audited |
| SimulationRouter | unknown | avalanche | n/a | [`0xefe0ebbb14b65a4c19731cb264dd8dc6c70b15f4`](./contracts/avalanche-43114/0xefe0ebbb14b65a4c19731cb264dd8dc6c70b15f4/) | ✅ Audited |
| SubaccountGelatoRelayRouter | unknown | avalanche | n/a | [`0x0c4d69369982f7e8002089387a95ff059deff6b3`](./contracts/avalanche-43114/0x0c4d69369982f7e8002089387a95ff059deff6b3/) | ✅ Audited |
| SubaccountRouter | unknown | arbitrum | n/a | [`0x1258ab791230412dc862ce0ca46f2bf307386d03`](./contracts/arbitrum-42161/0x1258ab791230412dc862ce0ca46f2bf307386d03/) | ✅ Audited |
| SubaccountRouterUtils | unknown | arbitrum | n/a | [`0x30549b8c00a8cfcbb6818069f71f05c675e6203b`](./contracts/arbitrum-42161/0x30549b8c00a8cfcbb6818069f71f05c675e6203b/) | ✅ Audited |
| SubaccountUtils | unknown | avalanche | n/a | [`0x06090f3209dedb831c9e102a841ed273ef6fbfb4`](./contracts/avalanche-43114/0x06090f3209dedb831c9e102a841ed273ef6fbfb4/) | ✅ Audited |
| SwapHandler | unknown | arbitrum | n/a | [`0x03a6e8af1685099470019de39b1573d415856879`](./contracts/arbitrum-42161/0x03a6e8af1685099470019de39b1573d415856879/) | ✅ Audited |
| SwapOrderExecutor | unknown | arbitrum | n/a | [`0x455d555350d5cccd1e3eb3d563b411ef24697050`](./contracts/arbitrum-42161/0x455d555350d5cccd1e3eb3d563b411ef24697050/) | ✅ Audited |
| SwapOrderUtils | unknown | arbitrum | n/a | [`0x062c6653052d90d66515ec4270f647d462b0a565`](./contracts/arbitrum-42161/0x062c6653052d90d66515ec4270f647d462b0a565/) | ✅ Audited |
| SwapPricingUtils | unknown | arbitrum | n/a | [`0x08f96361d3d67e107ecf968bf0cf706f706ba7fa`](./contracts/arbitrum-42161/0x08f96361d3d67e107ecf968bf0cf706f706ba7fa/) | ✅ Audited |
| SwapUtils | unknown | arbitrum | n/a | [`0x00f6d4c797f56137649c833c952c5096960592fe`](./contracts/arbitrum-42161/0x00f6d4c797f56137649c833c952c5096960592fe/) | ✅ Audited |
| Timelock | unknown | avalanche | n/a | [`0x033f484869dd8fb40041dfc7979d75ca5260e0ec`](./contracts/avalanche-43114/0x033f484869dd8fb40041dfc7979d75ca5260e0ec/) | ✅ Audited |
| TimelockConfig | unknown | avalanche | n/a | [`0x37e1aeb6118b0106810d2ef7662875c414e39ca4`](./contracts/avalanche-43114/0x37e1aeb6118b0106810d2ef7662875c414e39ca4/) | ✅ Audited |
| TimestampInitializer | unknown | arbitrum | n/a | [`0x1e72f7c6198c3df7ca7f12173b3ebebb46434960`](./contracts/arbitrum-42161/0x1e72f7c6198c3df7ca7f12173b3ebebb46434960/) | ✅ Audited |
| WithdrawalEventUtils | unknown | arbitrum | n/a | [`0x04e3978be0a0f4da931972eac4473112efec7f79`](./contracts/arbitrum-42161/0x04e3978be0a0f4da931972eac4473112efec7f79/) | ✅ Audited |
| WithdrawalHandler | unknown | arbitrum | n/a | [`0x1037c3b54b3109a495b8d0cce6c32f819284f0cf`](./contracts/arbitrum-42161/0x1037c3b54b3109a495b8d0cce6c32f819284f0cf/) | ✅ Audited |
| WithdrawalStoreUtils | unknown | arbitrum | n/a | [`0x04baf822e66ec7aa859dcbf32b7cf7af31dffcdf`](./contracts/arbitrum-42161/0x04baf822e66ec7aa859dcbf32b7cf7af31dffcdf/) | ✅ Audited |
| WithdrawalUtils | unknown | avalanche | n/a | [`0x0c27a77f47cf89c1b936f8eceeb13864321e0b31`](./contracts/avalanche-43114/0x0c27a77f47cf89c1b936f8eceeb13864321e0b31/) | ✅ Audited |
| WithdrawalVault | unknown | arbitrum | n/a | [`0x0628d46b5d145f183adb6ef1f2c97ed1c4701c55`](./contracts/arbitrum-42161/0x0628d46b5d145f183adb6ef1f2c97ed1c4701c55/) | ✅ Audited |

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchSender | unknown | arbitrum | n/a | [`0x1070f775e8eb466154bba8fa0076c4adc7fe17e8`](./contracts/arbitrum-42161/0x1070f775e8eb466154bba8fa0076c4adc7fe17e8/) | ⚠️ Unaudited |
| BonusDistributor | unknown | arbitrum | n/a | [`0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356`](./contracts/arbitrum-42161/0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356/) | ⚠️ Unaudited |
| Bridge | unknown | arbitrum | n/a | [`0x931dda8e3d4e4b7832e9005812c979008b576441`](./contracts/arbitrum-42161/0x931dda8e3d4e4b7832e9005812c979008b576441/) | ⚠️ Unaudited |
| EsGMX | unknown | arbitrum | n/a | [`0x56f9799a53fa850d6f7c71f7e9015eb7768758a0`](./contracts/arbitrum-42161/0x56f9799a53fa850d6f7c71f7e9015eb7768758a0/) | ⚠️ Unaudited |
| EsGmxBatchSender | unknown | arbitrum | n/a | [`0xc3828fa579996090dc7767e051341338e60207ef`](./contracts/arbitrum-42161/0xc3828fa579996090dc7767e051341338e60207ef/) | ⚠️ Unaudited |
| FastPriceEvents | unknown | avalanche | n/a | [`0x02b7023d43bc52bff8a0c54a9f2ecec053523bf6`](./contracts/avalanche-43114/0x02b7023d43bc52bff8a0c54a9f2ecec053523bf6/) | ⚠️ Unaudited |
| FastPriceFeed | unknown | arbitrum | n/a | [`0x068f2880c5dc0cb5c1ef913a517f3ad4122167c7`](./contracts/arbitrum-42161/0x068f2880c5dc0cb5c1ef913a517f3ad4122167c7/) | ⚠️ Unaudited |
| GasTest | unknown | avalanche | n/a | [`0x25da50811fd2809e15609b73ce4067dfafb9a3df`](./contracts/avalanche-43114/0x25da50811fd2809e15609b73ce4067dfafb9a3df/) | ⚠️ Unaudited |
| GLP | unknown | avalanche | n/a | [`0x01234181085565ed162a948b6a5e88758cd7c7b8`](./contracts/avalanche-43114/0x01234181085565ed162a948b6a5e88758cd7c7b8/) | ⚠️ Unaudited |
| GlpBalance | unknown | arbitrum | n/a | [`0x13e0bbe893b33b64d4f3f96725dd70531fa4ebce`](./contracts/arbitrum-42161/0x13e0bbe893b33b64d4f3f96725dd70531fa4ebce/) | ⚠️ Unaudited |
| GlpManager | unknown | arbitrum | n/a | [`0x321f653eed006ad1c29d174e17d96351bde22649`](./contracts/arbitrum-42161/0x321f653eed006ad1c29d174e17d96351bde22649/) | ⚠️ Unaudited |
| GMX | unknown | arbitrum | n/a | [`0x01234181085565ed162a948b6a5e88758cd7c7b8`](./contracts/arbitrum-42161/0x01234181085565ed162a948b6a5e88758cd7c7b8/) | ⚠️ Unaudited |
| GmxTimelock | unknown | avalanche | n/a | [`0x0339740d92fb8baf73bab0e9eb9494bc0df1cafd`](./contracts/avalanche-43114/0x0339740d92fb8baf73bab0e9eb9494bc0df1cafd/) | ⚠️ Unaudited |
| JoePair | unknown | avalanche | n/a | [`0x0c91a070f862666bbcce281346be45766d874d98`](./contracts/avalanche-43114/0x0c91a070f862666bbcce281346be45766d874d98/) | ⚠️ Unaudited |
| MintableBaseToken | unknown | avalanche | n/a | [`0x09cbe2f4230048270e628ac91f323ae6e5408b8d`](./contracts/avalanche-43114/0x09cbe2f4230048270e628ac91f323ae6e5408b8d/) | ⚠️ Unaudited |
| MockPriceFeed | unknown | arbitrum | n/a | [`0x2e29ae5474588c79c2c1169d7e7bbb5db6a607c0`](./contracts/arbitrum-42161/0x2e29ae5474588c79c2c1169d7e7bbb5db6a607c0/) | ⚠️ Unaudited |
| OrderBook | unknown | arbitrum | n/a | [`0x09f77e8a13de9a35a7231028187e9fd5db8a2acb`](./contracts/arbitrum-42161/0x09f77e8a13de9a35a7231028187e9fd5db8a2acb/) | ⚠️ Unaudited |
| OrderBookReader | unknown | arbitrum | n/a | [`0xa27c20a7cf0e1c68c0460706bb674f98f362bc21`](./contracts/arbitrum-42161/0xa27c20a7cf0e1c68c0460706bb674f98f362bc21/) | ⚠️ Unaudited |
| OrderExecutor | unknown | arbitrum | n/a | [`0x7257ac5d0a0aac04aa7ba2ac0a6eb742e332c3fb`](./contracts/arbitrum-42161/0x7257ac5d0a0aac04aa7ba2ac0a6eb742e332c3fb/) | ⚠️ Unaudited |
| PositionManager | unknown | arbitrum | n/a | [`0x6a02e6381297826cca630fc5e2d53bdbbbaf93b2`](./contracts/arbitrum-42161/0x6a02e6381297826cca630fc5e2d53bdbbbaf93b2/) | ⚠️ Unaudited |
| PositionRouter | unknown | arbitrum | n/a | [`0x05cb7c42890e0522264fe5ec6d84e8d7218cb78f`](./contracts/arbitrum-42161/0x05cb7c42890e0522264fe5ec6d84e8d7218cb78f/) | ⚠️ Unaudited |
| PositionRouterReader | unknown | arbitrum | n/a | [`0x2a74c7498d42ecee75032ed41416c5fa39802f74`](./contracts/arbitrum-42161/0x2a74c7498d42ecee75032ed41416c5fa39802f74/) | ⚠️ Unaudited |
| PriceFeedTimelock | unknown | arbitrum | n/a | [`0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b`](./contracts/arbitrum-42161/0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b/) | ⚠️ Unaudited |
| ReferralReader | unknown | avalanche | n/a | [`0x505ce16d3017be7d76a7c2631c0590e71a975083`](./contracts/avalanche-43114/0x505ce16d3017be7d76a7c2631c0590e71a975083/) | ⚠️ Unaudited |
| ReferralStorageTimelock | unknown | avalanche | n/a | [`0x370a34f6200770d79b54080150b61c0326208ac5`](./contracts/avalanche-43114/0x370a34f6200770d79b54080150b61c0326208ac5/) | ⚠️ Unaudited |
| RewardDistributor | unknown | avalanche | n/a | [`0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356`](./contracts/avalanche-43114/0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356/) | ⚠️ Unaudited |
| RewardManager | unknown | arbitrum | n/a | [`0xb9fcd526e11aa577591d776baa051dc335728d65`](./contracts/arbitrum-42161/0xb9fcd526e11aa577591d776baa051dc335728d65/) | ⚠️ Unaudited |
| RewardReader | unknown | avalanche | n/a | [`0x04fc11bd28763872d143637a7c768bd96e44c1b6`](./contracts/avalanche-43114/0x04fc11bd28763872d143637a7c768bd96e44c1b6/) | ⚠️ Unaudited |
| RewardRouter | unknown | arbitrum | n/a | [`0xc73d553473dc65ce56db96c58e6a091c20980fba`](./contracts/arbitrum-42161/0xc73d553473dc65ce56db96c58e6a091c20980fba/) | ⚠️ Unaudited |
| RewardTracker | unknown | arbitrum | n/a | [`0x0a22fec325b89ac294fceafefd7fbc9115be964b`](./contracts/arbitrum-42161/0x0a22fec325b89ac294fceafefd7fbc9115be964b/) | ⚠️ Unaudited |
| ShortsTracker | unknown | avalanche | n/a | [`0x9234252975484d75fd05f3e4f7bdbec61956d73a`](./contracts/avalanche-43114/0x9234252975484d75fd05f3e4f7bdbec61956d73a/) | ⚠️ Unaudited |
| ShortsTrackerTimelock | unknown | arbitrum | n/a | [`0x79b6ee65fc1466b5fd95e20650df740c085c6c2a`](./contracts/arbitrum-42161/0x79b6ee65fc1466b5fd95e20650df740c085c6c2a/) | ⚠️ Unaudited |
| StakedGlp | unknown | arbitrum | n/a | [`0x01af26b74409d10e15b102621edd29c326ba1c55`](./contracts/arbitrum-42161/0x01af26b74409d10e15b102621edd29c326ba1c55/) | ⚠️ Unaudited |
| StakedGlpMigrator | unknown | arbitrum | n/a | [`0xe19ab1cca0a010521140cf5ada1cf8308c0b382c`](./contracts/arbitrum-42161/0xe19ab1cca0a010521140cf5ada1cf8308c0b382c/) | ⚠️ Unaudited |
| StakeManager | unknown | avalanche | n/a | [`0x417076ca70dae5a1ecf69bc8757c25b877284128`](./contracts/avalanche-43114/0x417076ca70dae5a1ecf69bc8757c25b877284128/) | ⚠️ Unaudited |
| TokenManager | unknown | avalanche | n/a | [`0x1bcfff1bddf755de10de20771eed0c71ff370967`](./contracts/avalanche-43114/0x1bcfff1bddf755de10de20771eed0c71ff370967/) | ⚠️ Unaudited |
| UniswapV3Pool | unknown | arbitrum | n/a | [`0x80a9ae39310abf666a87c743d6ebbd0e8c42158e`](./contracts/arbitrum-42161/0x80a9ae39310abf666a87c743d6ebbd0e8c42158e/) | ⚠️ Unaudited |
| USDG | unknown | arbitrum | n/a | [`0x40757a2883f82392c49ce86cb0d92d0653db2d51`](./contracts/arbitrum-42161/0x40757a2883f82392c49ce86cb0d92d0653db2d51/) | ⚠️ Unaudited |
| Vault | unknown | arbitrum | n/a | [`0x489ee077994b6658eafa855c308275ead8097c4a`](./contracts/arbitrum-42161/0x489ee077994b6658eafa855c308275ead8097c4a/) | ⚠️ Unaudited |
| VaultErrorController | unknown | avalanche | n/a | [`0x0d526187c18f00cf8dabbf865f65ccff9e403ef4`](./contracts/avalanche-43114/0x0d526187c18f00cf8dabbf865f65ccff9e403ef4/) | ⚠️ Unaudited |
| VaultPriceFeed | unknown | avalanche | n/a | [`0x105a9c480acd14ff57aefb58e2b658d4275436eb`](./contracts/avalanche-43114/0x105a9c480acd14ff57aefb58e2b658d4275436eb/) | ⚠️ Unaudited |
| VaultReader | unknown | arbitrum | n/a | [`0x060cbba8730eff54ee24e08d6a4973f376463cc0`](./contracts/arbitrum-42161/0x060cbba8730eff54ee24e08d6a4973f376463cc0/) | ⚠️ Unaudited |
| VaultUtils | unknown | avalanche | n/a | [`0x5a8caa298b76fa3e7f55e571bf1bf937fe5cb161`](./contracts/avalanche-43114/0x5a8caa298b76fa3e7f55e571bf1bf937fe5cb161/) | ⚠️ Unaudited |
| Vester | unknown | arbitrum | n/a | [`0x199070ddfd1cfb69173aa2f7e20906f26b363004`](./contracts/arbitrum-42161/0x199070ddfd1cfb69173aa2f7e20906f26b363004/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ABDK_GMX_Synthetics_Audit.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/abdk/ABDK_GMX_Synthetics_Audit.pdf) | ABDK | Audit | 2022-05 | stale | Direct | contract_name | 131 | high |
| [2023-11-13_GMX_Report_by_Certora.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/certora/2023-11-13_GMX_Report_by_Certora.pdf) | Certora | Audit | 2023-11 | stale | Direct | contract_name | 131 | high |
| [GMX_Synthetics_DeDaub_Audit.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/dedaub/GMX_Synthetics_DeDaub_Audit.pdf) | Dedaub | Audit | 2022-11 | stale | Direct | contract_name | 130 | high |
| [2022-10-24_GMX_Synthetics.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2022-10-24_GMX_Synthetics.pdf) | Guardian | Audit | 2022-10 | stale | Direct | contract_name | 130 | high |
| [2023-01-08_GMX_Synthetics.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-01-08_GMX_Synthetics.pdf) | Guardian | Audit | 2023-01 | stale | Direct | contract_name | 133 | high |
| [2023-03-15_GMX_Synthetics.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-03-15_GMX_Synthetics.pdf) | Guardian | Audit | 2023-03 | stale | Direct | contract_name | 133 | high |
| [2023-05-15_GMX_Synthetics.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-05-15_GMX_Synthetics.pdf) | Guardian | Audit | 2023-05 | stale | Direct | contract_name | 133 | high |
| [2023-06-02_GMX_Synthetics.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-06-02_GMX_Synthetics.pdf) | Guardian | Audit | 2023-06 | stale | Direct | contract_name | 131 | high |
| [2023-07-11_GMX_Synthetics.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-07-11_GMX_Synthetics.pdf) | Guardian | Audit | 2023-07 | stale | Direct | contract_name | 131 | high |
| [2023-07-28_GMX_Synthetics.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-07-28_GMX_Synthetics.pdf) | Guardian | Audit | 2023-07 | stale | Direct | contract_name | 131 | high |
| [2023-09-01_GMX_Oracle_Updates.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-09-01_GMX_Oracle_Updates.pdf) | Guardian | Audit | 2023-09 | stale | Direct | contract_name | 16 | high |
| [2023-09-26_GMX_Synthetics_Updates.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-09-26_GMX_Synthetics_Updates.pdf) | Guardian | Audit | 2023-09 | stale | Direct | contract_name | 8 | high |
| [2023-10-25_GMX_Migrator.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-10-25_GMX_Migrator.pdf) | Guardian | Audit | 2023-10 | stale | Direct | contract_name | 1 | high |
| [2023-11-26_GMX_Subaccount.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-11-26_GMX_Subaccount.pdf) | Guardian | Audit | 2023-11 | stale | Direct | contract_name | 2 | high |
| [2023-12-17_GMX_Governance_Updates.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-12-17_GMX_Governance_Updates.pdf) | Guardian | Audit | 2023-12 | stale | Direct | contract_name | 3 | high |
| [2024-01-16_GMX_Config.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-01-16_GMX_Config.pdf) | Guardian | Audit | 2024-01 | stale | Direct | contract_name | 1 | high |
| [2024-06-14_GMX_Updates_1.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-06-14_GMX_Updates_1.pdf) | Guardian | Audit | 2024-06 | stale | Direct | contract_name | 20 | high |
| [2024-06-14_GMX_Updates_2.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-06-14_GMX_Updates_2.pdf) | Guardian | Audit | 2024-06 | stale | Direct | contract_name | 8 | high |
| [2024-06-14_GMX_Updates_3.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-06-14_GMX_Updates_3.pdf) | Guardian | Audit | 2024-06 | stale | Direct | contract_name | 2 | medium |
| [2024-09-03_GMX_GLV.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-09-03_GMX_GLV.pdf) | Guardian | Audit | 2024-09 | aging | Direct | contract_name | 17 | high |
| [2024-09-04_GMX_Config_Syncer.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-09-04_GMX_Config_Syncer.pdf) | Guardian | Audit | 2024-09 | aging | Direct | contract_name | 3 | high |
| [2024-11-18_GMX_Buybacks_Report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-11-18_GMX_Buybacks_Report.pdf) | Guardian | Audit | 2024-11 | aging | Direct | contract_name | 2 | high |
| [2024-11-18_GMX_Pro_Tiers_Report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-11-18_GMX_Pro_Tiers_Report.pdf) | Guardian | Audit | 2024-11 | aging | Direct | contract_name | 4 | high |
| [2025-04-11_GMX_Gasless_Sponsored_Calls_1.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-04-11_GMX_Gasless_Sponsored_Calls_1.pdf) | Guardian | Audit | 2025-04 | aging | Direct | contract_name | 4 | high |
| [2025-04-11_GMX_Gasless_Sponsored_Calls_2.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-04-11_GMX_Gasless_Sponsored_Calls_2.pdf) | Guardian | Audit | 2025-04 | aging | Direct | contract_name | 4 | high |
| [2025-07-29_GMX_Crosschain_V2.2_1_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_1_report.pdf) | Guardian | Audit | 2025-07 | aging | Direct | contract_name | 24 | high |
| [2025-07-29_GMX_Crosschain_V2.2_2_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_2_report.pdf) | Guardian | Audit | 2025-07 | aging | Direct | contract_name | 115 | high |
| [2025-07-29_GMX_Crosschain_V2.2_3_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_3_report.pdf) | Guardian | Audit | 2025-07 | aging | Direct | contract_name | 21 | high |
| [2025-07-29_GMX_Crosschain_V2.2_5_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_5_report.pdf) | Guardian | Audit | 2025-07 | aging | Direct | contract_name | 8 | high |
| [2025-07-29_GMX_Crosschain_V2.2_6_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_6_report.pdf) | Guardian | Audit | 2025-07 | aging | Direct | contract_name | 7 | high |
| [2025-07-29_GMX_Crosschain_V2.2_7_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_7_report.pdf) | Guardian | Audit | 2025-07 | aging | Direct | contract_name | 4 | high |
| [2025-09-24_GMX_OFT_Review_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-09-24_GMX_OFT_Review_report.pdf) | Guardian | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [2025-11-04_GMX_Fee_Automations_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-11-04_GMX_Fee_Automations_report.pdf) | Guardian | Audit | 2025-11 | fresh | Direct | contract_name | 10 | high |
| [2026-06-16_GMX_V2_Review_Report.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2026-06-16_GMX_V2_Review_Report.pdf) | Guardian | Audit | 2026-06 | fresh | Direct | contract_name | 136 | high |
| [Sherlock_GMX_Update_Audit_Report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/sherlock/Sherlock_GMX_Update_Audit_Report.pdf) | Sherlock | Contest | 2023-07 | stale | Direct | contract_name | 131 | high |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/gmx/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [2025-07-29_GMX_Crosschain_V2.2_4_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/updates/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_4_report.pdf) | Guardian | Audit | 2025-07 | aging | Direct | contract_name | 15 | high |
| [2025-09-24_GMX_JIT_Review_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/updates/audits/guardian/2025-09-24_GMX_JIT_Review_report.pdf) | Guardian | Audit | 2025-09 | fresh | Direct | contract_name | 13 | high |
| [2026-05-26_GMX_Risk_Oracle_Review_Report.pdf](https://github.com/gmx-io/gmx-synthetics/blob/updates/audits/guardian/2026-05-26_GMX_Risk_Oracle_Review_Report.pdf) | Guardian | Audit | 2026-05 | fresh | Direct | contract_name | 115 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x1070f775e8eb466154bba8fa0076c4adc7fe17e8`](./contracts/arbitrum-42161/0x1070f775e8eb466154bba8fa0076c4adc7fe17e8/) | BatchSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356`](./contracts/arbitrum-42161/0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356/) | BonusDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x931dda8e3d4e4b7832e9005812c979008b576441`](./contracts/arbitrum-42161/0x931dda8e3d4e4b7832e9005812c979008b576441/) | Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x56f9799a53fa850d6f7c71f7e9015eb7768758a0`](./contracts/arbitrum-42161/0x56f9799a53fa850d6f7c71f7e9015eb7768758a0/) | EsGMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc3828fa579996090dc7767e051341338e60207ef`](./contracts/arbitrum-42161/0xc3828fa579996090dc7767e051341338e60207ef/) | EsGmxBatchSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x02b7023d43bc52bff8a0c54a9f2ecec053523bf6`](./contracts/avalanche-43114/0x02b7023d43bc52bff8a0c54a9f2ecec053523bf6/) | FastPriceEvents | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x068f2880c5dc0cb5c1ef913a517f3ad4122167c7`](./contracts/arbitrum-42161/0x068f2880c5dc0cb5c1ef913a517f3ad4122167c7/) | FastPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x25da50811fd2809e15609b73ce4067dfafb9a3df`](./contracts/avalanche-43114/0x25da50811fd2809e15609b73ce4067dfafb9a3df/) | GasTest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x01234181085565ed162a948b6a5e88758cd7c7b8`](./contracts/avalanche-43114/0x01234181085565ed162a948b6a5e88758cd7c7b8/) | GLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13e0bbe893b33b64d4f3f96725dd70531fa4ebce`](./contracts/arbitrum-42161/0x13e0bbe893b33b64d4f3f96725dd70531fa4ebce/) | GlpBalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x321f653eed006ad1c29d174e17d96351bde22649`](./contracts/arbitrum-42161/0x321f653eed006ad1c29d174e17d96351bde22649/) | GlpManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01234181085565ed162a948b6a5e88758cd7c7b8`](./contracts/arbitrum-42161/0x01234181085565ed162a948b6a5e88758cd7c7b8/) | GMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0339740d92fb8baf73bab0e9eb9494bc0df1cafd`](./contracts/avalanche-43114/0x0339740d92fb8baf73bab0e9eb9494bc0df1cafd/) | GmxTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0c91a070f862666bbcce281346be45766d874d98`](./contracts/avalanche-43114/0x0c91a070f862666bbcce281346be45766d874d98/) | JoePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x09cbe2f4230048270e628ac91f323ae6e5408b8d`](./contracts/avalanche-43114/0x09cbe2f4230048270e628ac91f323ae6e5408b8d/) | MintableBaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2e29ae5474588c79c2c1169d7e7bbb5db6a607c0`](./contracts/arbitrum-42161/0x2e29ae5474588c79c2c1169d7e7bbb5db6a607c0/) | MockPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09f77e8a13de9a35a7231028187e9fd5db8a2acb`](./contracts/arbitrum-42161/0x09f77e8a13de9a35a7231028187e9fd5db8a2acb/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa27c20a7cf0e1c68c0460706bb674f98f362bc21`](./contracts/arbitrum-42161/0xa27c20a7cf0e1c68c0460706bb674f98f362bc21/) | OrderBookReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7257ac5d0a0aac04aa7ba2ac0a6eb742e332c3fb`](./contracts/arbitrum-42161/0x7257ac5d0a0aac04aa7ba2ac0a6eb742e332c3fb/) | OrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a02e6381297826cca630fc5e2d53bdbbbaf93b2`](./contracts/arbitrum-42161/0x6a02e6381297826cca630fc5e2d53bdbbbaf93b2/) | PositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x05cb7c42890e0522264fe5ec6d84e8d7218cb78f`](./contracts/arbitrum-42161/0x05cb7c42890e0522264fe5ec6d84e8d7218cb78f/) | PositionRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2a74c7498d42ecee75032ed41416c5fa39802f74`](./contracts/arbitrum-42161/0x2a74c7498d42ecee75032ed41416c5fa39802f74/) | PositionRouterReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b`](./contracts/arbitrum-42161/0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b/) | PriceFeedTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x505ce16d3017be7d76a7c2631c0590e71a975083`](./contracts/avalanche-43114/0x505ce16d3017be7d76a7c2631c0590e71a975083/) | ReferralReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x370a34f6200770d79b54080150b61c0326208ac5`](./contracts/avalanche-43114/0x370a34f6200770d79b54080150b61c0326208ac5/) | ReferralStorageTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356`](./contracts/avalanche-43114/0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb9fcd526e11aa577591d776baa051dc335728d65`](./contracts/arbitrum-42161/0xb9fcd526e11aa577591d776baa051dc335728d65/) | RewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x04fc11bd28763872d143637a7c768bd96e44c1b6`](./contracts/avalanche-43114/0x04fc11bd28763872d143637a7c768bd96e44c1b6/) | RewardReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc73d553473dc65ce56db96c58e6a091c20980fba`](./contracts/arbitrum-42161/0xc73d553473dc65ce56db96c58e6a091c20980fba/) | RewardRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0a22fec325b89ac294fceafefd7fbc9115be964b`](./contracts/arbitrum-42161/0x0a22fec325b89ac294fceafefd7fbc9115be964b/) | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9234252975484d75fd05f3e4f7bdbec61956d73a`](./contracts/avalanche-43114/0x9234252975484d75fd05f3e4f7bdbec61956d73a/) | ShortsTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x79b6ee65fc1466b5fd95e20650df740c085c6c2a`](./contracts/arbitrum-42161/0x79b6ee65fc1466b5fd95e20650df740c085c6c2a/) | ShortsTrackerTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01af26b74409d10e15b102621edd29c326ba1c55`](./contracts/arbitrum-42161/0x01af26b74409d10e15b102621edd29c326ba1c55/) | StakedGlp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe19ab1cca0a010521140cf5ada1cf8308c0b382c`](./contracts/arbitrum-42161/0xe19ab1cca0a010521140cf5ada1cf8308c0b382c/) | StakedGlpMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x417076ca70dae5a1ecf69bc8757c25b877284128`](./contracts/avalanche-43114/0x417076ca70dae5a1ecf69bc8757c25b877284128/) | StakeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1bcfff1bddf755de10de20771eed0c71ff370967`](./contracts/avalanche-43114/0x1bcfff1bddf755de10de20771eed0c71ff370967/) | TokenManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x40757a2883f82392c49ce86cb0d92d0653db2d51`](./contracts/arbitrum-42161/0x40757a2883f82392c49ce86cb0d92d0653db2d51/) | USDG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x489ee077994b6658eafa855c308275ead8097c4a`](./contracts/arbitrum-42161/0x489ee077994b6658eafa855c308275ead8097c4a/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0d526187c18f00cf8dabbf865f65ccff9e403ef4`](./contracts/avalanche-43114/0x0d526187c18f00cf8dabbf865f65ccff9e403ef4/) | VaultErrorController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x105a9c480acd14ff57aefb58e2b658d4275436eb`](./contracts/avalanche-43114/0x105a9c480acd14ff57aefb58e2b658d4275436eb/) | VaultPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x060cbba8730eff54ee24e08d6a4973f376463cc0`](./contracts/arbitrum-42161/0x060cbba8730eff54ee24e08d6a4973f376463cc0/) | VaultReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5a8caa298b76fa3e7f55e571bf1bf937fe5cb161`](./contracts/avalanche-43114/0x5a8caa298b76fa3e7f55e571bf1bf937fe5cb161/) | VaultUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x199070ddfd1cfb69173aa2f7e20906f26b363004`](./contracts/arbitrum-42161/0x199070ddfd1cfb69173aa2f7e20906f26b363004/) | Vester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 178 |
| upstream | 7 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=36, medium=1
- Match method counts: extraction_exact=3652

Zero-match audit list:

- [17377] 2025-09-24_GMX_OFT_Review_report.pdf

Fork inheritance lineage and inherited audits are included when available.
