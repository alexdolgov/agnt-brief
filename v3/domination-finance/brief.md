# Agentic Audit Brief: Domination Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Domination Finance (`domination-finance`)
- Website: [https://domination.finance](https://domination.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, boba, ethereum, polygon
- Contract surface: 58 unique implementations (113 raw deployments)
- Coverage basis: 9/16 confirmed own live verified implementations (56.3%); conservative 56.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,214,931.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Domination Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 26 contract row(s) across base, boba, polygon. Structural roles: 19 unclassified, 4 supporting, 3 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 26
- Structural roles: unclassified (19), supporting (4), core (3)
- Contract kinds: contract (25), abstract (1)
- Detected standards: erc165 (2), ownable (2), ownable2step (2), accesscontrol (1), erc721 (1)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (2), solmate (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x037eab3c386fdb78c42521edfec1c7267adcb95a`, chain 8453)
- UnnamedContract (`0x36c92904a7f01718beac987e4bffd190b22914c9`, chain 8453)
- UnnamedContract (`0x48c93b15c2795edb543f05a3d87a0fb2dd0b7787`, chain 8453)
- UnnamedContract (`0x8bb1046ae0f98eb79e71f44885361ea5fd93a3f2`, chain 8453)
- DomfiLockedDepositNft (`0x11765119ec66fb434447fd56e9041746c8ecbf85`, chain 8453)
- DomfiOpenPnl (`0x68e190d7db144da2f0096e30a0936487d0bbe648`, chain 8453)
- DomfiOracle (`0x1ab9c3a2e1a09f2d06bf4a75d1721c7e113b8d4d`, chain 8453)
- DomfiPairInfos (`0xb2c18e95e53aa824e075f13ad627b0a2c890a1d2`, chain 8453)
- DomfiPriceRouter (`0x6aa35afff680786b31e28232881152a460890e2b`, chain 8453)
- DomfiPrivatePriceUpKeep (`0xdf425e2e3407ba2d9e7e6d42dce9c8dbd610c292`, chain 8453)
- DomfiRegistry (`0xe438360464eada40b7921c993322bd4da8881103`, chain 8453)
- DomfiTimelockOwner (`0xf29541ee3c80d262ee903b7f20306dacb072b796`, chain 8453)
- DomfiVault (`0xe2c590d6da2e0db4ed999a2c5d7d42d90392b219`, chain 8453)
- DomfiVerifier (`0xdf2b2f7eb9740bfda2555467fc3dd27760832188`, chain 8453)
- ProxyAdmin (`0x6b82fcd39c0084c04af2665ae92eacea1a46d34b`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 26; live-surface rows included: 26 (22 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 9/16 (56.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 42 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 36
- Confirmed-live implementations: 16 of 58 unique; 42 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 9/56
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 58
- Raw deployments: 113
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 9 | 16.1% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DomfiLockedDepositNft | token | project_anchor | own_supporting | 0 | base | unit-384030 | `0x11765119ec66fb434447fd56e9041746c8ecbf85` | ✅ Audited |
| DomfiOracle | operational_periphery | project_anchor | own_supporting | 0 | base | unit-384031 | `0x1ab9c3a2e1a09f2d06bf4a75d1721c7e113b8d4d` | ✅ Audited |
| DomfiPairsStorage | unknown | project_anchor | own_supporting | 1 | base | unit-384043 | 2 deployments: base `0x444079ddcafd4fee3812e2ff79c5f74a1f4f9be1`; base `0x48c93b15c2795edb543f05a3d87a0fb2dd0b7787` | ✅ Audited |
| DomfiRegistry | registry | project_anchor | own_supporting | 0 | base | unit-384038 | `0xe438360464eada40b7921c993322bd4da8881103` | ✅ Audited |
| DomfiTimelockOwner | governance | project_anchor | own_supporting | 0 | base | unit-384039 | `0xf29541ee3c80d262ee903b7f20306dacb072b796` | ✅ Audited |
| DomfiTrading | unknown | project_anchor | own_supporting | 1 | base | unit-384040 | 2 deployments: base `0x037eab3c386fdb78c42521edfec1c7267adcb95a`; base `0x7447cb5350a096364a13beaf77916dfb35db9445` | ✅ Audited |
| DomfiTradingCallbacks | unknown | project_anchor | own_supporting | 1 | base | unit-384046 | 2 deployments: base `0x837a6e61c123c6e7cdfff2219a46898d0415343f`; base `0x8bb1046ae0f98eb79e71f44885361ea5fd93a3f2` | ✅ Audited |
| DomfiTradingStorage | unknown | project_anchor | own_supporting | 1 | base | unit-384042 | 2 deployments: base `0x36c92904a7f01718beac987e4bffd190b22914c9`; base `0x608ff95777f419040a3b1e42ed73dd3eff42cc24` | ✅ Audited |
| DomfiVerifier | periphery | project_anchor | own_supporting | 0 | base | unit-384037 | `0xdf2b2f7eb9740bfda2555467fc3dd27760832188` | ✅ Audited |

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Distributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x74fdedbd9792adcea1af9be840a840b6cc7b89da` | ⚠️ Unaudited |
| DomfiLockedDepositNft | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x1b50c91b8ae6c655b38ee171ea86b0f8519d7d52`; base `0x63d7f6d4edf6d4e83c1a8c60345f8d40590514da`; base `0xe2ea297394d9f3e6221a40c7c405a0c810425adf` | ⚠️ Unaudited |
| DomfiOpenPnl | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4dff17f1549342c8eedd142aa9af136ff56c1fb1`; base `0xf004d9c960c37e56789e1590e0ec22b7adb2c6ac` | ⚠️ Unaudited |
| DomfiOpenPnl | unknown | project_anchor | own_supporting | 1 | base | unit-384044 | 2 deployments: base `0x68e190d7db144da2f0096e30a0936487d0bbe648`; base `0x7ae386d7b8302811c04ffd16f03774e85ef5bc66` | ⚠️ Unaudited |
| DomfiOpenPnl | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x70c1618537295ad5ebb200985072c58f81c97b8b`; base `0xf7ebd8e002da4a0254a71c2c7dd193da87560a06` | ⚠️ Unaudited |
| DomfiOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x953ee2f3bdd738cfb4117541fbfe096ea9096a09`; base `0xa371d51e9dd8275e6a459d0009cd15a87f78b9cc`; base `0xaffc3b5960f72b8b48c66195c3583bfab6fb8379` | ⚠️ Unaudited |
| DomfiPairInfos | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x14a6da0a766f010c22011d45de70846ebe507dcb`; base `0x7d05e7a8fe286ed3113367c368780116a14db35a` | ⚠️ Unaudited |
| DomfiPairInfos | unknown | project_anchor | own_supporting | 1 | base | unit-384047 | 2 deployments: base `0x256fd248cdc91a6b098eee2580f313fdcafa2059`; base `0xb2c18e95e53aa824e075f13ad627b0a2c890a1d2` | ⚠️ Unaudited |
| DomfiPairInfos | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2b37dda26307f7524f33d5164ba283d776cae34d`; base `0xcc4e8483c0459452dafc9ade91c741708f4d217d` | ⚠️ Unaudited |
| DomfiPairInfos | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x53917e641af9918190db6875dc519b2cdaaafe48`; base `0x9333188cd4a4de2b6e3bc28b52447dfb9119c2b5` | ⚠️ Unaudited |
| DomfiPairsStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6f642d53257060e3145321169dcda13c1df50f53`; base `0xdac26397267cec44186a1d3283227bd20ffa79a6` | ⚠️ Unaudited |
| DomfiPairsStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x77b1e6f1c1b313e0af2e9b27fc0b4aae4d53b6dd`; base `0xe7554b9b28b2a9c218583c53e5005f58b0f132d9` | ⚠️ Unaudited |
| DomfiPairsStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9c1b8d03931ccf63795b7d17f2014327d0ada97c`; base `0xf23a5278b32545356b92ad31069a798ec14914a0` | ⚠️ Unaudited |
| DomfiPairsStorage | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-384036 | `0xc7610dfb89a28eea03ed450bb21a4df8bcbf161b` | ⚠️ Unaudited |
| DomfiPriceRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x168b28e24f3c5a84fa7016cc458563447b2c78ee`; base `0x2376238c589ae2c1604bd568239b161272a278fb` | ⚠️ Unaudited |
| DomfiPriceRouter | unknown | project_anchor | own_supporting | 1 | base | unit-384045 | 2 deployments: base `0x6aa35afff680786b31e28232881152a460890e2b`; base `0x9c726be74b4cfa97c8dcf3c7111a231cd2014cec` | ⚠️ Unaudited |
| DomfiPriceRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xd03c9bd8f68ff8efc3fa603e22c1840c3e123195`; base `0xded453bb0d89411cd9716c934f660d40fed2eb65` | ⚠️ Unaudited |
| DomfiPrivatePriceUpKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1b11c2b9ff9bab88dc10c1890f9a5bd1ba4d40f2`; base `0x82db800b0705cd41d28c0840222cb4f5ffd8e2a2` | ⚠️ Unaudited |
| DomfiPrivatePriceUpKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2a0362b8dce4b8e23f341c13abac6cb30702af06`; base `0xb57849752cfa572b659ecfa46dd4ee8daba8759a` | ⚠️ Unaudited |
| DomfiPrivatePriceUpKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x84d29e4ebd807c1166eb2f780c0c69800d006fb1`; base `0xd00de423b09a8ef1f0cd458ebc08c92544f15226` | ⚠️ Unaudited |
| DomfiPrivatePriceUpKeep | unknown | project_anchor | own_supporting | 1 | base | unit-384048 | 2 deployments: base `0x8ca1e038fedd8fc81bda98b072d307911ca0c9b9`; base `0xdf425e2e3407ba2d9e7e6d42dce9c8dbd610c292` | ⚠️ Unaudited |
| DomfiRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x6641bb66e9e3d158d12b18f7a684b37232efd3d1`; base `0xf44ebe57f753a77eafd60abb7316296d61d4c483`; base `0xfa4209bc47ea7ed80f9971ca680f1e5c35f59d45` | ⚠️ Unaudited |
| DomfiTimelockOwner | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0d3c9454837c9e7ab60c34084fb502371d668235`; base `0x9986b895a4e8b43e171e1c19f5bf0d2ea13b3044`; base `0xfcad8542048c17cc2c6c1d201ba04d7214556097` | ⚠️ Unaudited |
| DomfiTradesUpKeep | unknown | project_anchor | own_supporting | 1 | base | unit-384041 | 2 deployments: base `0x1e7dd9d0f317af14a58dcd87487b1399f79f92aa`; base `0x36187394c334be7cd1742538a51c9f9252e26c8c` | ⚠️ Unaudited |
| DomfiTradesUpKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3259f12b149c16ca4eb0f96addf85e55d0b3a1fc`; base `0x7e13e9c674175163f49c26d0e67650d5cc985a54` | ⚠️ Unaudited |
| DomfiTradesUpKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x991336590f79c268c803bb747e5f9959b27d3135`; base `0xbb55779884b0ed5ce52233a7c8cd63a3da04dca7` | ⚠️ Unaudited |
| DomfiTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x01fa770f432965163cc9a06a89205b05e165837f`; base `0x8d15ed3a51df1036f19cd0238c117343c7e6a18e` | ⚠️ Unaudited |
| DomfiTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0eb88212c0097494390a54ecbbf24c5caa0c3e8e`; base `0xb7dce49b726eb2cc4876756d7bc410b85b19ce13` | ⚠️ Unaudited |
| DomfiTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8c44be716c63f1b74b4b2ac943675f02ee8d303f`; base `0xc402deb27c9aedff38efb979d5271297571b0a9a` | ⚠️ Unaudited |
| DomfiTrading | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-384035 | `0xb3963a9cd0ae50dd520d2b3ad7081f62814d12a9` | ⚠️ Unaudited |
| DomfiTradingCallbacks | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x468bdf906454aae6e15b1180aaad8dd9141c7ebd`; base `0x6baae88d5afddbe71fc1dba8a4a0ac62bad3d608` | ⚠️ Unaudited |
| DomfiTradingCallbacks | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x571697cbed9b6c2aa3dfcaddc58eac6e587c6809`; base `0xcf14aef8c4f9e4f03937f10fdd20b626ebe388a2` | ⚠️ Unaudited |
| DomfiTradingCallbacks | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-384034 | `0x98ee3459a80009ccfc03bd60aa4eb08d14c50c84` | ⚠️ Unaudited |
| DomfiTradingStorage | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-384032 | `0x35f5adb0657d5ece6fda86a1b0a1128b271936c1` | ⚠️ Unaudited |
| DomfiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19954ec2363ef593354ebec10e553ca45c4ca0c2` | ⚠️ Unaudited |
| DomfiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4ddbe7c856f3920db4446026fa65be0169fe6012`; base `0x97d18f06bb6a65c13b068dd5c2dfddd71104890e` | ⚠️ Unaudited |
| DomfiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9d3e2726ea589d07c52995d8769fcff6fa96ee16`; base `0xb25952497ab9463efcd725ab7593aa7eb9ee9b29` | ⚠️ Unaudited |
| DomfiVault | unknown | project_anchor | own_supporting | 1 | base | unit-384049 | 2 deployments: base `0xa194082aabb75dd1ca9dc1ba573a5528beb8c2fb`; base `0xe2c590d6da2e0db4ed999a2c5d7d42d90392b219` | ⚠️ Unaudited |
| DomfiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb097cd77f17c729406cf7d0102a486c6d62c5bbd`; base `0xcdacfa9a401b3d5ca662b58af2e8ca3bfa342b8f` | ⚠️ Unaudited |
| DomfiVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0c6a461aadbf4fc4e245fb1ea05eacd4c7722d0c`; base `0x350bf8ac9990f2f5dfda719ff94da4dc241da27e`; base `0x49d57753b420c60b037543caddf1a7748ec1d1df` | ⚠️ Unaudited |
| IncentiveToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7a0d8c95d52d27b9d581275300e56a7dc8a2d4e8` | ⚠️ Unaudited |
| LongShortPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x12cce472430f7f5071375cc0a1aab717310be116`; polygon `0x2771322091c9f86f1f770e2a633c66c068644100`; polygon `0x514b3c2761edc2487f320392edf094d65e20c9ee` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x24c0871d7aac057c6c9190f60e48f3b9fa9d28b2`; base `0x7cc253d92a0ceb275fbc0395e704cfe6f5ad21af`; base `0xa758f0711ff8801b82a6e093352b94c67b95c478` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | base | unit-384033 | `0x6b82fcd39c0084c04af2665ae92eacea1a46d34b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x46ef4baff88c31e2b5f283f14bdb5331007fdd4b`; base `0xd1465a2053fe8312764a08c936b8eaf526185dd5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8a74fdc40bc376cc3b6d539c5c1dd03435ce1a2a`; base `0xf34f4f6f66fa93501b7b3e6913548e0dba5fca38` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xc804e36d2bf027f1749c2319cd3262b2b42b4d91`; base `0xddce47dac24281eea3cc28ffcf987ce52b683177` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | boba | n/a | 6 deployments: boba `0x156a4595b87cc204dc96d05f366ac3fcdff30bec`; boba `0x3c77d0130eb6aff1ded8c72fb7a5f383b7961c03`; boba `0x5b9f3b4648b1c7573d9c2a068020bb34aec67589`; boba `0x6caffbf5697c8744713956fdaf84d6a0613ce20f`; boba `0xcab14a130cdb3143ad81657d552a7cee1917a18e`; boba `0xf123b661d80e755ec26bc0c0ccaafdd258a102d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x89971651010af5a083feb046ec4de27c677a9d97` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DomFi-security-review_2025-12-07.pdf](https://docs.domination.finance/assets/DomFi-security-review_2025-12-07.pdf) | Pashov Audit Group | Audit | 2025-12 | fresh | Direct | contract_name | matched | 9 | 4 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3130] DomFi-security-review_2025-12-07.pdf — matched: Extracted 20 contract names from the scope section on page 5. Audit date from timeline: December 7th 2025 - January 3rd 2026, using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DomFi-security-review_2025-12-07.pdf | Delegatable | unmatched — not counted | — | listed in scope | no |
| DomFi-security-review_2025-12-07.pdf | ChainUtils | unmatched — not counted | — | listed in scope | no |
| DomFi-security-review_2025-12-07.pdf | TradingCallbacksLib | unmatched — not counted | — | listed in scope | no |
| DomFi-security-review_2025-12-07.pdf | DomfiLockedDepositNft | own contract | DomfiLockedDepositNft (selected) `0x11765119ec66fb434447fd56e9041746c8ecbf85` — deployed 2026-02-18 22:14:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DomFi-security-review_2025-12-07.pdf | DomfiOpenPnl | ambiguous — not counted | DomfiOpenPnl (alternative) `0x68e190d7db144da2f0096e30a0936487d0bbe648` — deployed 2026-02-18 22:15:15+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7ae386d7b8302811c04ffd16f03774e85ef5bc66` — deployed 2026-02-18 22:15:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DomFi-security-review_2025-12-07.pdf | DomfiOracle | own contract | DomfiOracle (selected) `0x1ab9c3a2e1a09f2d06bf4a75d1721c7e113b8d4d` — deployed 2026-02-18 22:14:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DomFi-security-review_2025-12-07.pdf | DomfiPairInfos | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x256fd248cdc91a6b098eee2580f313fdcafa2059` — deployed 2026-02-18 22:15:01+03 — liveness: live (current_address_book_code)<br>DomfiPairInfos (alternative) `0xb2c18e95e53aa824e075f13ad627b0a2c890a1d2` — deployed 2026-02-18 22:14:59+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DomFi-security-review_2025-12-07.pdf | DomfiPairsStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x444079ddcafd4fee3812e2ff79c5f74a1f4f9be1` — deployed 2026-02-18 22:15:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DomFi-security-review_2025-12-07.pdf | DomfiPriceRouter | ambiguous — not counted | DomfiPriceRouter (alternative) `0x6aa35afff680786b31e28232881152a460890e2b` — deployed 2026-02-18 22:15:25+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9c726be74b4cfa97c8dcf3c7111a231cd2014cec` — deployed 2026-02-18 22:15:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DomFi-security-review_2025-12-07.pdf | DomfiPriceUpKeep | unmatched — not counted | — | listed in scope | no |
| DomFi-security-review_2025-12-07.pdf | DomfiPrivatePriceUpKeep | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x8ca1e038fedd8fc81bda98b072d307911ca0c9b9` — deployed 2026-02-18 22:15:33+03 — liveness: live (current_address_book_code)<br>DomfiPrivatePriceUpKeep (alternative) `0xdf425e2e3407ba2d9e7e6d42dce9c8dbd610c292` — deployed 2026-02-18 22:15:31+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DomFi-security-review_2025-12-07.pdf | DomfiRegistry | own contract | DomfiRegistry (selected) `0xe438360464eada40b7921c993322bd4da8881103` — deployed 2026-02-18 22:14:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DomFi-security-review_2025-12-07.pdf | DomfiTimelockManager | unmatched — not counted | — | listed in scope | no |
| DomFi-security-review_2025-12-07.pdf | DomfiTimelockOwner | own contract | DomfiTimelockOwner (selected) `0xf29541ee3c80d262ee903b7f20306dacb072b796` — deployed 2026-02-18 22:14:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DomFi-security-review_2025-12-07.pdf | DomfiTradesUpKeep | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x36187394c334be7cd1742538a51c9f9252e26c8c` — deployed 2026-02-18 22:15:23+03 — liveness: live (current_address_book_code)<br>DomfiTradesUpKeep (alternative) `0x1e7dd9d0f317af14a58dcd87487b1399f79f92aa` — deployed 2026-02-18 22:15:19+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DomFi-security-review_2025-12-07.pdf | DomfiTrading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7447cb5350a096364a13beaf77916dfb35db9445` — deployed 2026-02-18 22:15:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DomFi-security-review_2025-12-07.pdf | DomfiTradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x837a6e61c123c6e7cdfff2219a46898d0415343f` — deployed 2026-02-18 22:15:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DomFi-security-review_2025-12-07.pdf | DomfiTradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x608ff95777f419040a3b1e42ed73dd3eff42cc24` — deployed 2026-02-18 22:14:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DomFi-security-review_2025-12-07.pdf | DomfiVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xa194082aabb75dd1ca9dc1ba573a5528beb8c2fb` — deployed 2026-02-18 22:14:51+03 — liveness: live (current_address_book_code)<br>DomfiVault (alternative) `0xe2c590d6da2e0db4ed999a2c5d7d42d90392b219` — deployed 2026-04-11 01:36:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DomFi-security-review_2025-12-07.pdf | DomfiVerifier | own contract | DomfiVerifier (selected) `0xdf2b2f7eb9740bfda2555467fc3dd27760832188` — deployed 2026-02-18 22:15:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x68e190d7db144da2f0096e30a0936487d0bbe648` | DomfiOpenPnl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x256fd248cdc91a6b098eee2580f313fdcafa2059` | DomfiPairInfos | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6aa35afff680786b31e28232881152a460890e2b` | DomfiPriceRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8ca1e038fedd8fc81bda98b072d307911ca0c9b9` | DomfiPrivatePriceUpKeep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1e7dd9d0f317af14a58dcd87487b1399f79f92aa` | DomfiTradesUpKeep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa194082aabb75dd1ca9dc1ba573a5528beb8c2fb` | DomfiVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 6 ambiguous, 5 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=9

Fork inheritance lineage and inherited audits are included when available.
