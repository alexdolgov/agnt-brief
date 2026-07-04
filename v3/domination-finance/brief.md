# Agentic Audit Brief: Domination Finance

## Project Overview

- Project: Domination Finance (`domination-finance`)
- Website: [https://domination.finance](https://domination.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:43.631Z
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

- Coverage of deployed-live implementations: 6/46 (13.0%)
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
| DomfiLockedDepositNft | token | base | n/a | 4 deployments: base [`0x117651...ecbf85`](./contracts/base-8453/0x11765119ec66fb434447fd56e9041746c8ecbf85/); base `0x1b50c9...9d7d52`; base `0x63d7f6...0514da`; base `0xe2ea29...425adf` | ✅ Audited |
| DomfiOracle | operational_periphery | base | n/a | 4 deployments: base [`0x1ab9c3...3b8d4d`](./contracts/base-8453/0x1ab9c3a2e1a09f2d06bf4a75d1721c7e113b8d4d/); base `0x953ee2...096a09`; base `0xa371d5...78b9cc`; base `0xaffc3b...fb8379` | ✅ Audited |
| DomfiRegistry | registry | base | n/a | 4 deployments: base [`0x6641bb...efd3d1`](./contracts/base-8453/0x6641bb66e9e3d158d12b18f7a684b37232efd3d1/); base `0xe43836...881103`; base `0xf44ebe...d4c483`; base `0xfa4209...f59d45` | ✅ Audited |
| DomfiTimelockOwner | governance | base | n/a | 4 deployments: base [`0x0d3c94...668235`](./contracts/base-8453/0x0d3c9454837c9e7ab60c34084fb502371d668235/); base `0x9986b8...3b3044`; base `0xf29541...72b796`; base `0xfcad85...556097` | ✅ Audited |
| DomfiVault | core_logic | base | n/a | [`0x19954e...4ca0c2`](./contracts/base-8453/0x19954ec2363ef593354ebec10e553ca45c4ca0c2/) | ✅ Audited |
| DomfiVerifier | periphery | base | n/a | 4 deployments: base [`0x0c6a46...722d0c`](./contracts/base-8453/0x0c6a461aadbf4fc4e245fb1ea05eacd4c7722d0c/); base `0x350bf8...1da27e`; base `0x49d577...c1d1df`; base `0xdf2b2f...832188` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Distributor | operational_periphery | base | n/a | [`0x74fded...7b89da`](./contracts/base-8453/0x74fdedbd9792adcea1af9be840a840b6cc7b89da/) | ⚠️ Unaudited |
| DomfiOpenPnl | unknown | base | n/a | 2 deployments: base [`0x4dff17...6c1fb1`](./contracts/base-8453/0x4dff17f1549342c8eedd142aa9af136ff56c1fb1/); base `0xf004d9...b2c6ac` | ⚠️ Unaudited |
| DomfiOpenPnl | unknown | base | n/a | 2 deployments: base [`0x68e190...bbe648`](./contracts/base-8453/0x68e190d7db144da2f0096e30a0936487d0bbe648/); base `0x7ae386...f5bc66` | ⚠️ Unaudited |
| DomfiOpenPnl | unknown | base | n/a | 2 deployments: base [`0x70c161...c97b8b`](./contracts/base-8453/0x70c1618537295ad5ebb200985072c58f81c97b8b/); base `0xf7ebd8...560a06` | ⚠️ Unaudited |
| DomfiPairInfos | unknown | base | n/a | 2 deployments: base [`0x14a6da...507dcb`](./contracts/base-8453/0x14a6da0a766f010c22011d45de70846ebe507dcb/); base `0x7d05e7...4db35a` | ⚠️ Unaudited |
| DomfiPairInfos | unknown | base | n/a | 2 deployments: base [`0x256fd2...fa2059`](./contracts/base-8453/0x256fd248cdc91a6b098eee2580f313fdcafa2059/); base `0xb2c18e...90a1d2` | ⚠️ Unaudited |
| DomfiPairInfos | unknown | base | n/a | 2 deployments: base [`0x2b37dd...cae34d`](./contracts/base-8453/0x2b37dda26307f7524f33d5164ba283d776cae34d/); base `0xcc4e84...4d217d` | ⚠️ Unaudited |
| DomfiPairInfos | unknown | base | n/a | 2 deployments: base [`0x53917e...aafe48`](./contracts/base-8453/0x53917e641af9918190db6875dc519b2cdaaafe48/); base `0x933318...19c2b5` | ⚠️ Unaudited |
| DomfiPairsStorage | unknown | base | n/a | 2 deployments: base [`0x444079...4f9be1`](./contracts/base-8453/0x444079ddcafd4fee3812e2ff79c5f74a1f4f9be1/); base `0xc7610d...bf161b` | ⚠️ Unaudited |
| DomfiPairsStorage | unknown | base | n/a | 2 deployments: base [`0x6f642d...f50f53`](./contracts/base-8453/0x6f642d53257060e3145321169dcda13c1df50f53/); base `0xdac263...fa79a6` | ⚠️ Unaudited |
| DomfiPairsStorage | unknown | base | n/a | 2 deployments: base [`0x77b1e6...53b6dd`](./contracts/base-8453/0x77b1e6f1c1b313e0af2e9b27fc0b4aae4d53b6dd/); base `0xe7554b...f132d9` | ⚠️ Unaudited |
| DomfiPairsStorage | unknown | base | n/a | 2 deployments: base [`0x9c1b8d...ada97c`](./contracts/base-8453/0x9c1b8d03931ccf63795b7d17f2014327d0ada97c/); base `0xf23a52...4914a0` | ⚠️ Unaudited |
| DomfiPriceRouter | unknown | base | n/a | [`0x237623...a278fb`](./contracts/base-8453/0x2376238c589ae2c1604bd568239b161272a278fb/) | ⚠️ Unaudited |
| DomfiPriceRouter | unknown | base | n/a | 2 deployments: base [`0x6aa35a...890e2b`](./contracts/base-8453/0x6aa35afff680786b31e28232881152a460890e2b/); base `0x9c726b...014cec` | ⚠️ Unaudited |
| DomfiPriceRouter | unknown | base | n/a | 2 deployments: base [`0xd03c9b...123195`](./contracts/base-8453/0xd03c9bd8f68ff8efc3fa603e22c1840c3e123195/); base `0xded453...d2eb65` | ⚠️ Unaudited |
| DomfiPrivatePriceUpKeep | unknown | base | n/a | 2 deployments: base [`0x1b11c2...4d40f2`](./contracts/base-8453/0x1b11c2b9ff9bab88dc10c1890f9a5bd1ba4d40f2/); base `0x82db80...d8e2a2` | ⚠️ Unaudited |
| DomfiPrivatePriceUpKeep | unknown | base | n/a | 2 deployments: base [`0x2a0362...02af06`](./contracts/base-8453/0x2a0362b8dce4b8e23f341c13abac6cb30702af06/); base `0xb57849...a8759a` | ⚠️ Unaudited |
| DomfiPrivatePriceUpKeep | unknown | base | n/a | 2 deployments: base [`0x84d29e...006fb1`](./contracts/base-8453/0x84d29e4ebd807c1166eb2f780c0c69800d006fb1/); base `0xd00de4...f15226` | ⚠️ Unaudited |
| DomfiPrivatePriceUpKeep | unknown | base | n/a | 2 deployments: base [`0x8ca1e0...a0c9b9`](./contracts/base-8453/0x8ca1e038fedd8fc81bda98b072d307911ca0c9b9/); base `0xdf425e...10c292` | ⚠️ Unaudited |
| DomfiTradesUpKeep | unknown | base | n/a | 2 deployments: base [`0x3259f1...b3a1fc`](./contracts/base-8453/0x3259f12b149c16ca4eb0f96addf85e55d0b3a1fc/); base `0x7e13e9...985a54` | ⚠️ Unaudited |
| DomfiTradesUpKeep | unknown | base | n/a | [`0x361873...e26c8c`](./contracts/base-8453/0x36187394c334be7cd1742538a51c9f9252e26c8c/) | ⚠️ Unaudited |
| DomfiTradesUpKeep | unknown | base | n/a | 2 deployments: base [`0x991336...7d3135`](./contracts/base-8453/0x991336590f79c268c803bb747e5f9959b27d3135/); base `0xbb5577...04dca7` | ⚠️ Unaudited |
| DomfiTrading | unknown | base | n/a | 2 deployments: base [`0x0eb882...0c3e8e`](./contracts/base-8453/0x0eb88212c0097494390a54ecbbf24c5caa0c3e8e/); base `0xb7dce4...19ce13` | ⚠️ Unaudited |
| DomfiTrading | unknown | base | n/a | 2 deployments: base [`0x7447cb...db9445`](./contracts/base-8453/0x7447cb5350a096364a13beaf77916dfb35db9445/); base `0xb3963a...4d12a9` | ⚠️ Unaudited |
| DomfiTrading | unknown | base | n/a | 2 deployments: base [`0x8c44be...8d303f`](./contracts/base-8453/0x8c44be716c63f1b74b4b2ac943675f02ee8d303f/); base `0xc402de...1b0a9a` | ⚠️ Unaudited |
| DomfiTrading | unknown | base | n/a | [`0x8d15ed...e6a18e`](./contracts/base-8453/0x8d15ed3a51df1036f19cd0238c117343c7e6a18e/) | ⚠️ Unaudited |
| DomfiTradingCallbacks | unknown | base | n/a | 2 deployments: base [`0x468bdf...1c7ebd`](./contracts/base-8453/0x468bdf906454aae6e15b1180aaad8dd9141c7ebd/); base `0x6baae8...d3d608` | ⚠️ Unaudited |
| DomfiTradingCallbacks | unknown | base | n/a | 2 deployments: base [`0x571697...7c6809`](./contracts/base-8453/0x571697cbed9b6c2aa3dfcaddc58eac6e587c6809/); base `0xcf14ae...e388a2` | ⚠️ Unaudited |
| DomfiTradingCallbacks | unknown | base | n/a | 2 deployments: base [`0x837a6e...15343f`](./contracts/base-8453/0x837a6e61c123c6e7cdfff2219a46898d0415343f/); base `0x98ee34...c50c84` | ⚠️ Unaudited |
| DomfiTradingStorage | unknown | base | n/a | [`0x608ff9...42cc24`](./contracts/base-8453/0x608ff95777f419040a3b1e42ed73dd3eff42cc24/) | ⚠️ Unaudited |
| DomfiVault | unknown | base | n/a | 2 deployments: base [`0x4ddbe7...fe6012`](./contracts/base-8453/0x4ddbe7c856f3920db4446026fa65be0169fe6012/); base `0x97d18f...04890e` | ⚠️ Unaudited |
| DomfiVault | unknown | base | n/a | 2 deployments: base [`0x9d3e27...96ee16`](./contracts/base-8453/0x9d3e2726ea589d07c52995d8769fcff6fa96ee16/); base `0xb25952...ee9b29` | ⚠️ Unaudited |
| DomfiVault | unknown | base | n/a | 2 deployments: base [`0xa19408...b8c2fb`](./contracts/base-8453/0xa194082aabb75dd1ca9dc1ba573a5528beb8c2fb/); base `0xe2c590...92b219` | ⚠️ Unaudited |
| DomfiVault | unknown | base | n/a | 2 deployments: base [`0xb097cd...2c5bbd`](./contracts/base-8453/0xb097cd77f17c729406cf7d0102a486c6d62c5bbd/); base `0xcdacfa...342b8f` | ⚠️ Unaudited |
| IncentiveToken | token | base | n/a | [`0x7a0d8c...a2d4e8`](./contracts/base-8453/0x7a0d8c95d52d27b9d581275300e56a7dc8a2d4e8/) | ⚠️ Unaudited |
| LongShortPair | unknown | polygon | n/a | 3 deployments: polygon [`0x12cce4...0be116`](./contracts/polygon-137/0x12cce472430f7f5071375cc0a1aab717310be116/); polygon `0x277132...644100`; polygon `0x514b3c...20c9ee` | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | 4 deployments: base [`0x24c087...9d28b2`](./contracts/base-8453/0x24c0871d7aac057c6c9190f60e48f3b9fa9d28b2/); base `0x6b82fc...46d34b`; base `0x7cc253...ad21af`; base `0xa758f0...95c478` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x46ef4b...7fdd4b`](./contracts/base-8453/0x46ef4baff88c31e2b5f283f14bdb5331007fdd4b/); base `0xd1465a...185dd5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x8a74fd...ce1a2a`](./contracts/base-8453/0x8a74fdc40bc376cc3b6d539c5c1dd03435ce1a2a/); base `0xf34f4f...5fca38` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0xc804e3...2b4d91`](./contracts/base-8453/0xc804e36d2bf027f1749c2319cd3262b2b42b4d91/); base `0xddce47...683177` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | boba | n/a | 6 deployments: boba `0x156a45...f30bec`; boba `0x3c77d0...961c03`; boba `0x5b9f3b...c67589`; boba `0x6caffb...3ce20f`; boba `0xcab14a...17a18e`; boba `0xf123b6...a102d6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x899716...7a9d97` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DomFi-security-review_2025-12-07.pdf](https://docs.domination.finance/assets/DomFi-security-review_2025-12-07.pdf) | Pashov Audit Group | Audit | 2025-12 | fresh | Direct | contract_name | 6 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Fork inheritance lineage and inherited audits are included when available.
