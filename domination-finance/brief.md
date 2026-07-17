# Agentic Audit Brief: Domination Finance

## Project Overview

- Project: Domination Finance (`domination-finance`)
- Website: [https://domination.finance](https://domination.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.200Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: base, boba, polygon
- Contract surface: 48 unique implementations (105 raw deployments)
- DeFi Llama TVL: $1,214,931.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 20 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 2 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 3 common project-authored base contract(s) (erc165, ownable2step, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 105; live-surface contracts included: 76 (66 live, 10 unknown).
- Excluded by liveness: 29 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/45 (13.3%)
- Deployed-live implementations: 46 of 48 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/46
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 48
- Raw deployments: 105
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 6 | 13.0% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DomfiLockedDepositNft | token | base | n/a | 4 deployments: base [`0x11765119ec66fb434447fd56e9041746c8ecbf85`](./contracts/base-8453/0x11765119ec66fb434447fd56e9041746c8ecbf85/); base `0x1b50c91b8ae6c655b38ee171ea86b0f8519d7d52`; base `0x63d7f6d4edf6d4e83c1a8c60345f8d40590514da`; base `0xe2ea297394d9f3e6221a40c7c405a0c810425adf` | ✅ Audited |
| DomfiOracle | operational_periphery | base | n/a | 4 deployments: base [`0x1ab9c3a2e1a09f2d06bf4a75d1721c7e113b8d4d`](./contracts/base-8453/0x1ab9c3a2e1a09f2d06bf4a75d1721c7e113b8d4d/); base `0x953ee2f3bdd738cfb4117541fbfe096ea9096a09`; base `0xa371d51e9dd8275e6a459d0009cd15a87f78b9cc`; base `0xaffc3b5960f72b8b48c66195c3583bfab6fb8379` | ✅ Audited |
| DomfiRegistry | registry | base | n/a | 4 deployments: base [`0x6641bb66e9e3d158d12b18f7a684b37232efd3d1`](./contracts/base-8453/0x6641bb66e9e3d158d12b18f7a684b37232efd3d1/); base `0xe438360464eada40b7921c993322bd4da8881103`; base `0xf44ebe57f753a77eafd60abb7316296d61d4c483`; base `0xfa4209bc47ea7ed80f9971ca680f1e5c35f59d45` | ✅ Audited |
| DomfiTimelockOwner | governance | base | n/a | 4 deployments: base [`0x0d3c9454837c9e7ab60c34084fb502371d668235`](./contracts/base-8453/0x0d3c9454837c9e7ab60c34084fb502371d668235/); base `0x9986b895a4e8b43e171e1c19f5bf0d2ea13b3044`; base `0xf29541ee3c80d262ee903b7f20306dacb072b796`; base `0xfcad8542048c17cc2c6c1d201ba04d7214556097` | ✅ Audited |
| DomfiVault | core_logic | base | n/a | [`0x19954ec2363ef593354ebec10e553ca45c4ca0c2`](./contracts/base-8453/0x19954ec2363ef593354ebec10e553ca45c4ca0c2/) | ✅ Audited |
| DomfiVerifier | periphery | base | n/a | 4 deployments: base [`0x0c6a461aadbf4fc4e245fb1ea05eacd4c7722d0c`](./contracts/base-8453/0x0c6a461aadbf4fc4e245fb1ea05eacd4c7722d0c/); base `0x350bf8ac9990f2f5dfda719ff94da4dc241da27e`; base `0x49d57753b420c60b037543caddf1a7748ec1d1df`; base `0xdf2b2f7eb9740bfda2555467fc3dd27760832188` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Distributor | operational_periphery | base | n/a | [`0x74fdedbd9792adcea1af9be840a840b6cc7b89da`](./contracts/base-8453/0x74fdedbd9792adcea1af9be840a840b6cc7b89da/) | ⚠️ Unaudited |
| DomfiOpenPnl | unknown | base | n/a | 2 deployments: base [`0x4dff17f1549342c8eedd142aa9af136ff56c1fb1`](./contracts/base-8453/0x4dff17f1549342c8eedd142aa9af136ff56c1fb1/); base `0xf004d9c960c37e56789e1590e0ec22b7adb2c6ac` | ⚠️ Unaudited |
| DomfiOpenPnl | unknown | base | n/a | 2 deployments: base [`0x68e190d7db144da2f0096e30a0936487d0bbe648`](./contracts/base-8453/0x68e190d7db144da2f0096e30a0936487d0bbe648/); base `0x7ae386d7b8302811c04ffd16f03774e85ef5bc66` | ⚠️ Unaudited |
| DomfiOpenPnl | unknown | base | n/a | 2 deployments: base [`0x70c1618537295ad5ebb200985072c58f81c97b8b`](./contracts/base-8453/0x70c1618537295ad5ebb200985072c58f81c97b8b/); base `0xf7ebd8e002da4a0254a71c2c7dd193da87560a06` | ⚠️ Unaudited |
| DomfiPairInfos | unknown | base | n/a | 2 deployments: base [`0x14a6da0a766f010c22011d45de70846ebe507dcb`](./contracts/base-8453/0x14a6da0a766f010c22011d45de70846ebe507dcb/); base `0x7d05e7a8fe286ed3113367c368780116a14db35a` | ⚠️ Unaudited |
| DomfiPairInfos | unknown | base | n/a | 2 deployments: base [`0x256fd248cdc91a6b098eee2580f313fdcafa2059`](./contracts/base-8453/0x256fd248cdc91a6b098eee2580f313fdcafa2059/); base `0xb2c18e95e53aa824e075f13ad627b0a2c890a1d2` | ⚠️ Unaudited |
| DomfiPairInfos | unknown | base | n/a | 2 deployments: base [`0x2b37dda26307f7524f33d5164ba283d776cae34d`](./contracts/base-8453/0x2b37dda26307f7524f33d5164ba283d776cae34d/); base `0xcc4e8483c0459452dafc9ade91c741708f4d217d` | ⚠️ Unaudited |
| DomfiPairInfos | unknown | base | n/a | 2 deployments: base [`0x53917e641af9918190db6875dc519b2cdaaafe48`](./contracts/base-8453/0x53917e641af9918190db6875dc519b2cdaaafe48/); base `0x9333188cd4a4de2b6e3bc28b52447dfb9119c2b5` | ⚠️ Unaudited |
| DomfiPairsStorage | unknown | base | n/a | 2 deployments: base [`0x444079ddcafd4fee3812e2ff79c5f74a1f4f9be1`](./contracts/base-8453/0x444079ddcafd4fee3812e2ff79c5f74a1f4f9be1/); base `0xc7610dfb89a28eea03ed450bb21a4df8bcbf161b` | ⚠️ Unaudited |
| DomfiPairsStorage | unknown | base | n/a | 2 deployments: base [`0x6f642d53257060e3145321169dcda13c1df50f53`](./contracts/base-8453/0x6f642d53257060e3145321169dcda13c1df50f53/); base `0xdac26397267cec44186a1d3283227bd20ffa79a6` | ⚠️ Unaudited |
| DomfiPairsStorage | unknown | base | n/a | 2 deployments: base [`0x77b1e6f1c1b313e0af2e9b27fc0b4aae4d53b6dd`](./contracts/base-8453/0x77b1e6f1c1b313e0af2e9b27fc0b4aae4d53b6dd/); base `0xe7554b9b28b2a9c218583c53e5005f58b0f132d9` | ⚠️ Unaudited |
| DomfiPairsStorage | unknown | base | n/a | 2 deployments: base [`0x9c1b8d03931ccf63795b7d17f2014327d0ada97c`](./contracts/base-8453/0x9c1b8d03931ccf63795b7d17f2014327d0ada97c/); base `0xf23a5278b32545356b92ad31069a798ec14914a0` | ⚠️ Unaudited |
| DomfiPriceRouter | unknown | base | n/a | [`0x2376238c589ae2c1604bd568239b161272a278fb`](./contracts/base-8453/0x2376238c589ae2c1604bd568239b161272a278fb/) | ⚠️ Unaudited |
| DomfiPriceRouter | unknown | base | n/a | 2 deployments: base [`0x6aa35afff680786b31e28232881152a460890e2b`](./contracts/base-8453/0x6aa35afff680786b31e28232881152a460890e2b/); base `0x9c726be74b4cfa97c8dcf3c7111a231cd2014cec` | ⚠️ Unaudited |
| DomfiPriceRouter | unknown | base | n/a | 2 deployments: base [`0xd03c9bd8f68ff8efc3fa603e22c1840c3e123195`](./contracts/base-8453/0xd03c9bd8f68ff8efc3fa603e22c1840c3e123195/); base `0xded453bb0d89411cd9716c934f660d40fed2eb65` | ⚠️ Unaudited |
| DomfiPrivatePriceUpKeep | unknown | base | n/a | 2 deployments: base [`0x1b11c2b9ff9bab88dc10c1890f9a5bd1ba4d40f2`](./contracts/base-8453/0x1b11c2b9ff9bab88dc10c1890f9a5bd1ba4d40f2/); base `0x82db800b0705cd41d28c0840222cb4f5ffd8e2a2` | ⚠️ Unaudited |
| DomfiPrivatePriceUpKeep | unknown | base | n/a | 2 deployments: base [`0x2a0362b8dce4b8e23f341c13abac6cb30702af06`](./contracts/base-8453/0x2a0362b8dce4b8e23f341c13abac6cb30702af06/); base `0xb57849752cfa572b659ecfa46dd4ee8daba8759a` | ⚠️ Unaudited |
| DomfiPrivatePriceUpKeep | unknown | base | n/a | 2 deployments: base [`0x84d29e4ebd807c1166eb2f780c0c69800d006fb1`](./contracts/base-8453/0x84d29e4ebd807c1166eb2f780c0c69800d006fb1/); base `0xd00de423b09a8ef1f0cd458ebc08c92544f15226` | ⚠️ Unaudited |
| DomfiPrivatePriceUpKeep | unknown | base | n/a | 2 deployments: base [`0x8ca1e038fedd8fc81bda98b072d307911ca0c9b9`](./contracts/base-8453/0x8ca1e038fedd8fc81bda98b072d307911ca0c9b9/); base `0xdf425e2e3407ba2d9e7e6d42dce9c8dbd610c292` | ⚠️ Unaudited |
| DomfiTradesUpKeep | unknown | base | n/a | 2 deployments: base [`0x3259f12b149c16ca4eb0f96addf85e55d0b3a1fc`](./contracts/base-8453/0x3259f12b149c16ca4eb0f96addf85e55d0b3a1fc/); base `0x7e13e9c674175163f49c26d0e67650d5cc985a54` | ⚠️ Unaudited |
| DomfiTradesUpKeep | unknown | base | n/a | [`0x36187394c334be7cd1742538a51c9f9252e26c8c`](./contracts/base-8453/0x36187394c334be7cd1742538a51c9f9252e26c8c/) | ⚠️ Unaudited |
| DomfiTradesUpKeep | unknown | base | n/a | 2 deployments: base [`0x991336590f79c268c803bb747e5f9959b27d3135`](./contracts/base-8453/0x991336590f79c268c803bb747e5f9959b27d3135/); base `0xbb55779884b0ed5ce52233a7c8cd63a3da04dca7` | ⚠️ Unaudited |
| DomfiTrading | unknown | base | n/a | 2 deployments: base [`0x0eb88212c0097494390a54ecbbf24c5caa0c3e8e`](./contracts/base-8453/0x0eb88212c0097494390a54ecbbf24c5caa0c3e8e/); base `0xb7dce49b726eb2cc4876756d7bc410b85b19ce13` | ⚠️ Unaudited |
| DomfiTrading | unknown | base | n/a | 2 deployments: base [`0x7447cb5350a096364a13beaf77916dfb35db9445`](./contracts/base-8453/0x7447cb5350a096364a13beaf77916dfb35db9445/); base `0xb3963a9cd0ae50dd520d2b3ad7081f62814d12a9` | ⚠️ Unaudited |
| DomfiTrading | unknown | base | n/a | 2 deployments: base [`0x8c44be716c63f1b74b4b2ac943675f02ee8d303f`](./contracts/base-8453/0x8c44be716c63f1b74b4b2ac943675f02ee8d303f/); base `0xc402deb27c9aedff38efb979d5271297571b0a9a` | ⚠️ Unaudited |
| DomfiTrading | unknown | base | n/a | [`0x8d15ed3a51df1036f19cd0238c117343c7e6a18e`](./contracts/base-8453/0x8d15ed3a51df1036f19cd0238c117343c7e6a18e/) | ⚠️ Unaudited |
| DomfiTradingCallbacks | unknown | base | n/a | 2 deployments: base [`0x468bdf906454aae6e15b1180aaad8dd9141c7ebd`](./contracts/base-8453/0x468bdf906454aae6e15b1180aaad8dd9141c7ebd/); base `0x6baae88d5afddbe71fc1dba8a4a0ac62bad3d608` | ⚠️ Unaudited |
| DomfiTradingCallbacks | unknown | base | n/a | 2 deployments: base [`0x571697cbed9b6c2aa3dfcaddc58eac6e587c6809`](./contracts/base-8453/0x571697cbed9b6c2aa3dfcaddc58eac6e587c6809/); base `0xcf14aef8c4f9e4f03937f10fdd20b626ebe388a2` | ⚠️ Unaudited |
| DomfiTradingCallbacks | unknown | base | n/a | 2 deployments: base [`0x837a6e61c123c6e7cdfff2219a46898d0415343f`](./contracts/base-8453/0x837a6e61c123c6e7cdfff2219a46898d0415343f/); base `0x98ee3459a80009ccfc03bd60aa4eb08d14c50c84` | ⚠️ Unaudited |
| DomfiTradingStorage | unknown | base | n/a | [`0x608ff95777f419040a3b1e42ed73dd3eff42cc24`](./contracts/base-8453/0x608ff95777f419040a3b1e42ed73dd3eff42cc24/) | ⚠️ Unaudited |
| DomfiVault | unknown | base | n/a | 2 deployments: base [`0x4ddbe7c856f3920db4446026fa65be0169fe6012`](./contracts/base-8453/0x4ddbe7c856f3920db4446026fa65be0169fe6012/); base `0x97d18f06bb6a65c13b068dd5c2dfddd71104890e` | ⚠️ Unaudited |
| DomfiVault | unknown | base | n/a | 2 deployments: base [`0x9d3e2726ea589d07c52995d8769fcff6fa96ee16`](./contracts/base-8453/0x9d3e2726ea589d07c52995d8769fcff6fa96ee16/); base `0xb25952497ab9463efcd725ab7593aa7eb9ee9b29` | ⚠️ Unaudited |
| DomfiVault | unknown | base | n/a | 2 deployments: base [`0xa194082aabb75dd1ca9dc1ba573a5528beb8c2fb`](./contracts/base-8453/0xa194082aabb75dd1ca9dc1ba573a5528beb8c2fb/); base `0xe2c590d6da2e0db4ed999a2c5d7d42d90392b219` | ⚠️ Unaudited |
| DomfiVault | unknown | base | n/a | 2 deployments: base [`0xb097cd77f17c729406cf7d0102a486c6d62c5bbd`](./contracts/base-8453/0xb097cd77f17c729406cf7d0102a486c6d62c5bbd/); base `0xcdacfa9a401b3d5ca662b58af2e8ca3bfa342b8f` | ⚠️ Unaudited |
| IncentiveToken | token | base | n/a | [`0x7a0d8c95d52d27b9d581275300e56a7dc8a2d4e8`](./contracts/base-8453/0x7a0d8c95d52d27b9d581275300e56a7dc8a2d4e8/) | ⚠️ Unaudited |
| LongShortPair | unknown | polygon | n/a | 3 deployments: polygon [`0x12cce472430f7f5071375cc0a1aab717310be116`](./contracts/polygon-137/0x12cce472430f7f5071375cc0a1aab717310be116/); polygon `0x2771322091c9f86f1f770e2a633c66c068644100`; polygon `0x514b3c2761edc2487f320392edf094d65e20c9ee` | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | 4 deployments: base [`0x24c0871d7aac057c6c9190f60e48f3b9fa9d28b2`](./contracts/base-8453/0x24c0871d7aac057c6c9190f60e48f3b9fa9d28b2/); base `0x6b82fcd39c0084c04af2665ae92eacea1a46d34b`; base `0x7cc253d92a0ceb275fbc0395e704cfe6f5ad21af`; base `0xa758f0711ff8801b82a6e093352b94c67b95c478` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x46ef4baff88c31e2b5f283f14bdb5331007fdd4b`](./contracts/base-8453/0x46ef4baff88c31e2b5f283f14bdb5331007fdd4b/); base `0xd1465a2053fe8312764a08c936b8eaf526185dd5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x8a74fdc40bc376cc3b6d539c5c1dd03435ce1a2a`](./contracts/base-8453/0x8a74fdc40bc376cc3b6d539c5c1dd03435ce1a2a/); base `0xf34f4f6f66fa93501b7b3e6913548e0dba5fca38` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0xc804e36d2bf027f1749c2319cd3262b2b42b4d91`](./contracts/base-8453/0xc804e36d2bf027f1749c2319cd3262b2b42b4d91/); base `0xddce47dac24281eea3cc28ffcf987ce52b683177` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | boba | n/a | 6 deployments: boba `0x156a4595b87cc204dc96d05f366ac3fcdff30bec`; boba `0x3c77d0130eb6aff1ded8c72fb7a5f383b7961c03`; boba `0x5b9f3b4648b1c7573d9c2a068020bb34aec67589`; boba `0x6caffbf5697c8744713956fdaf84d6a0613ce20f`; boba `0xcab14a130cdb3143ad81657d552a7cee1917a18e`; boba `0xf123b661d80e755ec26bc0c0ccaafdd258a102d6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89971651010af5a083feb046ec4de27c677a9d97` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DomFi-security-review_2025-12-07.pdf](https://docs.domination.finance/assets/DomFi-security-review_2025-12-07.pdf) | Pashov Audit Group | Audit | 2025-12 | fresh | Direct | contract_name | 6 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x74fdedbd9792adcea1af9be840a840b6cc7b89da`](./contracts/base-8453/0x74fdedbd9792adcea1af9be840a840b6cc7b89da/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4dff17f1549342c8eedd142aa9af136ff56c1fb1`](./contracts/base-8453/0x4dff17f1549342c8eedd142aa9af136ff56c1fb1/) | DomfiOpenPnl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x68e190d7db144da2f0096e30a0936487d0bbe648`](./contracts/base-8453/0x68e190d7db144da2f0096e30a0936487d0bbe648/) | DomfiOpenPnl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x70c1618537295ad5ebb200985072c58f81c97b8b`](./contracts/base-8453/0x70c1618537295ad5ebb200985072c58f81c97b8b/) | DomfiOpenPnl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x14a6da0a766f010c22011d45de70846ebe507dcb`](./contracts/base-8453/0x14a6da0a766f010c22011d45de70846ebe507dcb/) | DomfiPairInfos | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x256fd248cdc91a6b098eee2580f313fdcafa2059`](./contracts/base-8453/0x256fd248cdc91a6b098eee2580f313fdcafa2059/) | DomfiPairInfos | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2b37dda26307f7524f33d5164ba283d776cae34d`](./contracts/base-8453/0x2b37dda26307f7524f33d5164ba283d776cae34d/) | DomfiPairInfos | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x53917e641af9918190db6875dc519b2cdaaafe48`](./contracts/base-8453/0x53917e641af9918190db6875dc519b2cdaaafe48/) | DomfiPairInfos | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x444079ddcafd4fee3812e2ff79c5f74a1f4f9be1`](./contracts/base-8453/0x444079ddcafd4fee3812e2ff79c5f74a1f4f9be1/) | DomfiPairsStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6f642d53257060e3145321169dcda13c1df50f53`](./contracts/base-8453/0x6f642d53257060e3145321169dcda13c1df50f53/) | DomfiPairsStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x77b1e6f1c1b313e0af2e9b27fc0b4aae4d53b6dd`](./contracts/base-8453/0x77b1e6f1c1b313e0af2e9b27fc0b4aae4d53b6dd/) | DomfiPairsStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9c1b8d03931ccf63795b7d17f2014327d0ada97c`](./contracts/base-8453/0x9c1b8d03931ccf63795b7d17f2014327d0ada97c/) | DomfiPairsStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2376238c589ae2c1604bd568239b161272a278fb`](./contracts/base-8453/0x2376238c589ae2c1604bd568239b161272a278fb/) | DomfiPriceRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6aa35afff680786b31e28232881152a460890e2b`](./contracts/base-8453/0x6aa35afff680786b31e28232881152a460890e2b/) | DomfiPriceRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd03c9bd8f68ff8efc3fa603e22c1840c3e123195`](./contracts/base-8453/0xd03c9bd8f68ff8efc3fa603e22c1840c3e123195/) | DomfiPriceRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1b11c2b9ff9bab88dc10c1890f9a5bd1ba4d40f2`](./contracts/base-8453/0x1b11c2b9ff9bab88dc10c1890f9a5bd1ba4d40f2/) | DomfiPrivatePriceUpKeep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2a0362b8dce4b8e23f341c13abac6cb30702af06`](./contracts/base-8453/0x2a0362b8dce4b8e23f341c13abac6cb30702af06/) | DomfiPrivatePriceUpKeep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x84d29e4ebd807c1166eb2f780c0c69800d006fb1`](./contracts/base-8453/0x84d29e4ebd807c1166eb2f780c0c69800d006fb1/) | DomfiPrivatePriceUpKeep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8ca1e038fedd8fc81bda98b072d307911ca0c9b9`](./contracts/base-8453/0x8ca1e038fedd8fc81bda98b072d307911ca0c9b9/) | DomfiPrivatePriceUpKeep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3259f12b149c16ca4eb0f96addf85e55d0b3a1fc`](./contracts/base-8453/0x3259f12b149c16ca4eb0f96addf85e55d0b3a1fc/) | DomfiTradesUpKeep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x36187394c334be7cd1742538a51c9f9252e26c8c`](./contracts/base-8453/0x36187394c334be7cd1742538a51c9f9252e26c8c/) | DomfiTradesUpKeep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x991336590f79c268c803bb747e5f9959b27d3135`](./contracts/base-8453/0x991336590f79c268c803bb747e5f9959b27d3135/) | DomfiTradesUpKeep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0eb88212c0097494390a54ecbbf24c5caa0c3e8e`](./contracts/base-8453/0x0eb88212c0097494390a54ecbbf24c5caa0c3e8e/) | DomfiTrading | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7447cb5350a096364a13beaf77916dfb35db9445`](./contracts/base-8453/0x7447cb5350a096364a13beaf77916dfb35db9445/) | DomfiTrading | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8c44be716c63f1b74b4b2ac943675f02ee8d303f`](./contracts/base-8453/0x8c44be716c63f1b74b4b2ac943675f02ee8d303f/) | DomfiTrading | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8d15ed3a51df1036f19cd0238c117343c7e6a18e`](./contracts/base-8453/0x8d15ed3a51df1036f19cd0238c117343c7e6a18e/) | DomfiTrading | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x468bdf906454aae6e15b1180aaad8dd9141c7ebd`](./contracts/base-8453/0x468bdf906454aae6e15b1180aaad8dd9141c7ebd/) | DomfiTradingCallbacks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x571697cbed9b6c2aa3dfcaddc58eac6e587c6809`](./contracts/base-8453/0x571697cbed9b6c2aa3dfcaddc58eac6e587c6809/) | DomfiTradingCallbacks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x837a6e61c123c6e7cdfff2219a46898d0415343f`](./contracts/base-8453/0x837a6e61c123c6e7cdfff2219a46898d0415343f/) | DomfiTradingCallbacks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x608ff95777f419040a3b1e42ed73dd3eff42cc24`](./contracts/base-8453/0x608ff95777f419040a3b1e42ed73dd3eff42cc24/) | DomfiTradingStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4ddbe7c856f3920db4446026fa65be0169fe6012`](./contracts/base-8453/0x4ddbe7c856f3920db4446026fa65be0169fe6012/) | DomfiVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9d3e2726ea589d07c52995d8769fcff6fa96ee16`](./contracts/base-8453/0x9d3e2726ea589d07c52995d8769fcff6fa96ee16/) | DomfiVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa194082aabb75dd1ca9dc1ba573a5528beb8c2fb`](./contracts/base-8453/0xa194082aabb75dd1ca9dc1ba573a5528beb8c2fb/) | DomfiVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb097cd77f17c729406cf7d0102a486c6d62c5bbd`](./contracts/base-8453/0xb097cd77f17c729406cf7d0102a486c6d62c5bbd/) | DomfiVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7a0d8c95d52d27b9d581275300e56a7dc8a2d4e8`](./contracts/base-8453/0x7a0d8c95d52d27b9d581275300e56a7dc8a2d4e8/) | IncentiveToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x12cce472430f7f5071375cc0a1aab717310be116`](./contracts/polygon-137/0x12cce472430f7f5071375cc0a1aab717310be116/) | LongShortPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Fork inheritance lineage and inherited audits are included when available.
