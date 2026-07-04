# Agentic Audit Brief: Opyn

## Project Overview

- Project: Opyn (`opyn`)
- Website: [https://www.opyn.co](https://www.opyn.co)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:38.691Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: avalanche, ethereum
- Contract surface: 97 unique implementations (150 raw deployments)
- DeFi Llama TVL: $1,501,501.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options. Structurally: 36 project-authored contract(s) across 2 chain(s); 7 ERC20 tokens, 1 ERC721 NFT, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 6 common project-authored base contract(s) (strategybase, strategyflashswap, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 207; live-surface contracts included: 150 (75 live, 75 unknown).
- Excluded by liveness: 57 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 10/22 (45.5%)
- Deployed-live implementations: 22 of 97 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 10/22
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 75
- Unique implementations: 97
- Raw deployments: 150
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 10 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 45.5% (OpenZeppelin, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 10 | 45.5% | 2020-11 |
| Akira | Tier 2 | 7 | 31.8% | 2021-08 |
| PeckShield | Tier 2 | 6 | 27.3% | 2021-02 |
| Trail of Bits | Tier 1 | 6 | 27.3% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ABDKMath64x64 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21a8d1...be0f32`](./contracts/ethereum-1/0x21a8d15322c257abd2b22a56edde758398be0f32/); ethereum `0x64187a...a493d5` | ✅ Audited |
| AddressBook | unknown | avalanche | n/a | 9 deployments: avalanche [`0x27d60b...5ac87d`](./contracts/avalanche-43114/0x27d60b89e1a104cef79b3e40ead1374bb75ac87d/); avalanche `0x3ab3ff...cba7b6`; avalanche `0x58d6bd...e40854`; avalanche `0x5a2e87...94e9a6`; avalanche `0x63e48a...be7310`; avalanche `0x8b5bff...7aa0eb`; avalanche `0xac289a...481ed4`; avalanche `0xbca124...110510`; avalanche `0xef3b91...4ee698` | ✅ Audited |
| Controller | unknown | avalanche | n/a | 4 deployments: ethereum `0x7c1985...6b7d0f`; ethereum `0xcc2fd2...2663d0`; avalanche [`0x02b70a...fc0e18`](./contracts/avalanche-43114/0x02b70ab8fd23f95e0cd8f8ea604415eb7cfc0e18/); avalanche `0xeadf3d...7aa23d` | ✅ Audited |
| MarginCalculator | unknown | avalanche | n/a | 4 deployments: ethereum `0x9a3323...7bf7c0`; ethereum `0xfaa67e...8e13f4`; avalanche [`0x2c726a...46b337`](./contracts/avalanche-43114/0x2c726a7da5500bd59a488e0065c41822bb46b337/); avalanche `0xbd5a1d...ac2afd` | ✅ Audited |
| MarginPool | unknown | avalanche | n/a | 7 deployments: avalanche [`0x06aa7f...f8e5b0`](./contracts/avalanche-43114/0x06aa7f18b263c67a04fc890a2166a4b54bf8e5b0/); avalanche `0x527514...66d50e`; avalanche `0x5b4289...c5708b`; avalanche `0x9c7918...48017a`; avalanche `0xb628d6...b15024`; avalanche `0xccf662...4fdb9d`; avalanche `0xfe9c85...f5591f` | ✅ Audited |
| MarginVault | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4d3a52...5c654d`](./contracts/ethereum-1/0x4d3a52a0e98144caf46ac226d83e8f144b5c654d/); ethereum `0x90b7d7...73caa7`; avalanche `0x8b5685...52858a`; avalanche `0x9b011c...88912f` | ✅ Audited |
| Oracle | unknown | avalanche | n/a | 11 deployments: ethereum `0x414b66...e7d16e`; ethereum `0x7054e0...746415`; ethereum `0x789cd7...e08833`; avalanche [`0x00bf1e...b54f2d`](./contracts/avalanche-43114/0x00bf1e9b876d63f5cd4ee114211a9a7b7fb54f2d/); avalanche `0x108abf...0f0b10`; avalanche `0x454a11...405bd0`; avalanche `0x47a8fa...c1a89a`; avalanche `0x5c76e7...f5e8eb`; avalanche `0x6f010d...bd7c9f`; avalanche `0x72c959...1d45ad`; avalanche `0xa7516c...ece8bb` | ✅ Audited |
| Otoken | unknown | avalanche | n/a | 8 deployments: ethereum `0x3035b7...828005`; avalanche [`0x03b284...9ed931`](./contracts/avalanche-43114/0x03b28469a3f5cbdcba91485b82de17d64b9ed931/); avalanche `0x0fd7e1...cfc823`; avalanche `0x3c19dd...351c29`; avalanche `0x459a8b...224677`; avalanche `0x9d7915...4fe904`; avalanche `0xbc2804...c21425`; avalanche `0xe0ebdd...0c7bfe` | ✅ Audited |
| OtokenFactory | unknown | avalanche | n/a | 7 deployments: avalanche [`0x215967...725505`](./contracts/avalanche-43114/0x215967eebb43f37bd76f4b36974b1bc868725505/); avalanche `0x25bc1c...9f66a5`; avalanche `0x6fb3f1...3b0b14`; avalanche `0x90fcbd...249eae`; avalanche `0xc0cf10...d98a53`; avalanche `0xf9745a...ea0955`; avalanche `0xfc8c59...e98060` | ✅ Audited |
| Whitelist | unknown | avalanche | n/a | 7 deployments: avalanche [`0x4980d7...2289d0`](./contracts/avalanche-43114/0x4980d7757098a80deb6893d4384ec014212289d0/); avalanche `0x4c6598...ba4904`; avalanche `0x939588...32fa93`; avalanche `0xa83941...ea6b4f`; avalanche `0xd79756...add13c`; avalanche `0xe3243b...d2c1fe`; avalanche `0xe9963a...6087c9` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrabMigration | unknown | ethereum | n/a | [`0xa1cab6...d4b19e`](./contracts/ethereum-1/0xa1cab67a4383312718a5799eaa127906e9d4b19e/) | ⚠️ Unaudited |
| CrabStrategy | core_logic | ethereum | n/a | [`0xf205ad...aa437d`](./contracts/ethereum-1/0xf205ad80bb86ac92247638914265887a8baa437d/) | ⚠️ Unaudited |
| CrabStrategyV2 | core_logic | ethereum | n/a | [`0x3b960e...d713e8`](./contracts/ethereum-1/0x3b960e47784150f5a63777201ee2b15253d713e8/) | ⚠️ Unaudited |
| OptionsExchange | unknown | ethereum | n/a | [`0x5778f2...216017`](./contracts/ethereum-1/0x5778f2824a114f6115dc74d432685d3336216017/) | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | n/a | [`0x6bf686...9a9fb3`](./contracts/avalanche-43114/0x6bf686d99a4ce17798c45d09c21181fac29a9fb3/) | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | n/a | [`0x98d031...a87787`](./contracts/avalanche-43114/0x98d03125c62dae2328d9d3cb32b7b969e6a87787/) | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | n/a | [`0x9dd6be...a3e3a3`](./contracts/avalanche-43114/0x9dd6be071b4292cc88b8190ab718329adea3e3a3/) | ⚠️ Unaudited |
| ShortHelper | unknown | ethereum | n/a | [`0x3b4095...1632c5`](./contracts/ethereum-1/0x3b4095d5ff0e629972caaa50bd3004b09a1632c5/) | ⚠️ Unaudited |
| ShortPowerPerp | unknown | ethereum | n/a | [`0xa653e2...863a38`](./contracts/ethereum-1/0xa653e22a963ff0026292cc8b67941c0ba7863a38/) | ⚠️ Unaudited |
| SqrtPriceMathPartial | unknown | ethereum | n/a | [`0x9cf8dc...828460`](./contracts/ethereum-1/0x9cf8dcbcf115b06d8f577e73cb9edfdb27828460/) | ⚠️ Unaudited |
| TickMathExternal | unknown | ethereum | n/a | [`0x4d9d7f...e6fdfc`](./contracts/ethereum-1/0x4d9d7f7ae80d51628aa56ef37720718c99e6fdfc/) | ⚠️ Unaudited |
| WPowerPerp | unknown | ethereum | n/a | [`0xf1b99e...64e86b`](./contracts/ethereum-1/0xf1b99e3e573a1a9c5e6b2ce818b617f0e664e86b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (75)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x01cc03...7d2e7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x027d66...95e4e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d8881...728c44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26d6f5...aa92d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ba08c...2c8836` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33fff8...22f6e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3636f7...8b5d87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3af23f...35aa2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d8551...c8a423` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44f181...5a3bdf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48828a...43c064` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x498daa...a13e51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f6f0e...28e3e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50388c...4be3cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62f55e...a1ff90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64a8e6...51c67d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6aaebf...1d0cdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6babb7...021d01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x792eca...e5607a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7be5ed...d715a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x802f0b...d8badd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82d89e...8f61f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f92cf...61276d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91a6a7...8fb049` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93c3b7...0e50fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x952419...21cc08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95b49a...e5a1c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7df5b...b667e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab4ea1...ee1d35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad4611...b605bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae67dc...ff522d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb53c2e...e6a9ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb56ba2...1e8b96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb611a3...76579b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9127f...e15419` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd9817...5537cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb4d1d...457a4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd6265...dc3980` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0c9ca...4b8711` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4cccc...24590d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd99721...b96dbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbd3dd...be26d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd7eca...c479ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0319d...4fcabf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8303f...9d4b60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec1a34...096a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec44e3...6c6c34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef298f...5e9fa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8e87f...8660b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf95872...59aade` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa86d4...5ff816` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd4a00...270394` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffa31b...1cbd29` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04c75f...aeadc0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cd322...927abc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1627b5...84292b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1ce1fe...c94d39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2156b6...298906` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2ba283...c02326` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x31e6ad...f1ad45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x328494...c6c6ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3405ad...ee0021` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34c737...c41103` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b69a3...58f01d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7b859b...49c39e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c4fd2...b4f6ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8f49d8...89df66` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a0b5e...beb3bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a66a6...c066d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf6183...f4fef4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc1b7b1...016371` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc8698b...e29873` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xed3866...405e6b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef0ac6...5a9631` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfce6a2...18448c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [[**Akira Audit Report - Aug 2021**]()](https://github.com/akiratechhq/review-opyn-gamma-2021-08) | Akira | Audit | 2021-08 | stale | Direct | contract_name | 37 | high |
| [**Trail of Bits Audit Report - May 2021**](https://github.com/trailofbits/publications/blob/master/reviews/Opyn-Gamma-Protocol.pdf) | Trail of Bits | Audit | 2021-05 | stale | Direct | contract_name | 31 | high |
| [**Peckshield Audit Report - Feb 2021**](https://github.com/peckshield/publications/blob/master/audit_reports/peckshield-audit-report-Opyn-v1.0.pdf) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | 31 | high |
| [[**OpenZeppelin Audit Report - Nov 2020**]()](https://www.openzeppelin.com/news/opyn-gamma-protocol-audit) | OpenZeppelin | Audit | 2020-11 | stale | Direct | contract_name | 62 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 97 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=161

Fork inheritance lineage and inherited audits are included when available.
