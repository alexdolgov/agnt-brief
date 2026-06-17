# Agentic Audit Brief: dForce

⚠️ Lifecycle status: DECLINING - TVL dropped 32.0% over 90 days

## Project Overview

- Project: dForce (`dforce`)
- Website: [https://dforce.network/](https://dforce.network/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:38.343Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, bsc, ethereum, kava, optimism, polygon
- Contract surface: 39 unique implementations (132 raw deployments)
- DeFi Llama TVL: $12,550,019.00
- On-chain TVL (included contracts): $2,735,828.47
- TVL by chain: Ethereum $2,001,393.75 | Bsc $524,441.29 | Arbitrum $156,950.58 | Polygon $31,932.33 | Optimism $21,110.53

## Project Description

dForce is a multi-chain DeFi protocol family spanning lending and borrowing markets, stablecoin-related products, yield and liquidity services, and trading/bridge components governed by the DF token. Current parent-level scope should be explicit about whether it includes child/product-family surfaces such as Unitus and MaxShot, as well as deployments beyond the legacy dForce lending surface including Conflux, Base, Plasma, and other supported chains. If using parent-level DefiLlama data as ground truth, the brief should also reflect dForce's current DeFAI/AI-agent positioning rather than describing it only as legacy lending, borrowing, and yield aggregation.

### Architecture

The dForce and dForce Lending families share similar lending logic and token standards (iToken, DToken, MSD) but represent different versions or deployments. The Contracts family provides governance and staking for the DF token, which likely controls parameters across lending markets, while MaxShot yield vaults may utilize lending market tokens for yield strategies.

## Contract Surface Quality

- Indexed contracts: 1020; live-surface contracts included: 132 (126 live, 6 unknown).
- Excluded by liveness: 624 inactive, 264 singleton, 0 uninitialized.
- Deployment units: 24/141 live.
- Detected codebases: none
- Unverified dependencies: 8/36.

## Audit Coverage Summary

- Verified implementations audited: 25/33 (75.8%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 39
- Raw deployments: 132
- Audits discovered: 4
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $366,934.25
- Latest audit: 2021-03 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: 75.8% (Trail of Bits)
- Note: This protocol is classified as [declining]. ASD of $366,934.25 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 25 | 75.8% | 2021-03 |

## Contract Surface

### ✅ Verified + Audited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| iTokenV2BLP | token | ethereum | unit-24027 (22 proxies) | 22 deployments: ethereum [`0x039e7e...5c24bc`](./contracts/ethereum-1/0x039e7ef6a674f3ec1d88829b8215ed45385c24bc/); ethereum `0x1180c1...ab5354`; ethereum `0x164315...1764b6`; ethereum `0x1adc34...979eb0`; ethereum `0x237c69...e425d6`; ethereum `0x24677e...889fce`; ethereum `0x298f24...e3c3a8`; ethereum `0x2f956b...bf0f45`; ethereum `0x3e5cb9...dc3d0e`; ethereum `0x4013e6...a07b35`; ethereum `0x44c324...2dcfbf`; ethereum `0x47566a...5f3698`; ethereum `0x47c19a...f4022f`; ethereum `0x5812fc...f63c02`; ethereum `0x590552...9158b9`; ethereum `0x6e6a68...ea2dbe`; ethereum `0x71173e...7e8f63`; ethereum `0xa3068a...3ca7de`; ethereum `0xb3dc74...d7b239`; ethereum `0xbec9a8...396320`; ethereum `0xbfd291...4848b9`; ethereum `0xe39672...7cbc09` | ✅ Audited |
| iTokenV2BLP | token | bsc | unit-24104 (23 proxies) | 23 deployments: bsc [`0x0b66a2...00356e`](./contracts/bsc-56/0x0b66a250dadf3237ddb38d485082a7bfe400356e/); bsc `0x0bf8c7...08fa0f`; bsc `0x219b85...1d3d2e`; bsc `0x390bf3...f47669`; bsc `0x50e894...963087`; bsc `0x55012a...009ef7`; bsc `0x5511b6...204a47`; bsc `0x6d64ef...26dd6d`; bsc `0x7b933e...518abe`; bsc `0x8be8cd...c335aa`; bsc `0x9747e2...193c15`; bsc `0x983a72...f2b1d8`; bsc `0x9ab060...92725b`; bsc `0xad5ec1...0e5492`; bsc `0xaf9c10...fe005d`; bsc `0xc35aca...b2d670`; bsc `0xd739a5...8fb810`; bsc `0xd957be...c1e6ac`; bsc `0xec3fd5...e12d08`; bsc `0xee9099...b8806b`; bsc `0xefae8f...194d73`; bsc `0xf649e6...dfe05d`; bsc `0xfc5bb1...b68862` | ✅ Audited |
| iTokenV2BLP | token | arbitrum | unit-24137 (16 proxies) | 16 deployments: arbitrum [`0x013ee4...9802c8`](./contracts/arbitrum-42161/0x013ee4934ecbfa5723933c4b08ea5e47449802c8/); arbitrum `0x0385f8...56cbaa`; arbitrum `0x46eca1...feb17a`; arbitrum `0x567554...3b0b8b`; arbitrum `0x662da3...639c0d`; arbitrum `0x70284c...b3b578`; arbitrum `0x7702dc...f1d725`; arbitrum `0x8dc331...4d4ae0`; arbitrum `0xa8bad6...899b23`; arbitrum `0xaea8e2...9c4a63`; arbitrum `0xb3ab71...6a504e`; arbitrum `0xd037c3...eb95ef`; arbitrum `0xd3204e...ee0acc`; arbitrum `0xf52f07...9692a9`; arbitrum `0xf69959...12b628`; arbitrum `0xfd7e2e...9f69df` | ✅ Audited |
| iTokenV2BLP | token | polygon | unit-24124 (10 proxies) | 10 deployments: polygon [`0x0c9261...d81740`](./contracts/polygon-137/0x0c92617df0753af1cab2d9cc6a56173970d81740/); polygon `0x159624...31ad6d`; polygon `0x38d0c4...1cd6f9`; polygon `0x5268b3...b65234`; polygon `0x7d86ee...691b68`; polygon `0x94a14b...45876a`; polygon `0xb3ab71...6a504e`; polygon `0xc171eb...a29882`; polygon `0xcb5d9b...f939b2`; polygon `0xec85f7...96d95b` | ✅ Audited |
| iTokenV2BLP | token | optimism | unit-24082 (12 proxies) | 12 deployments: optimism [`0x1f144c...8e2ed7`](./contracts/optimism-10/0x1f144cd63d7007945292ebcde14a6df8628e2ed7/); optimism `0x24d302...06eb27`; optimism `0x4b3488...e09a16`; optimism `0x5bede6...78564c`; optimism `0x5d05c1...48fc44`; optimism `0x683236...4a6ce6`; optimism `0x7702dc...f1d725`; optimism `0x7e7e1d...44ce43`; optimism `0xb34479...1a2cc2`; optimism `0xd65a18...1288d5`; optimism `0xdd40bb...b28ece`; optimism `0xed3c20...aff36f` | ✅ Audited |
| YieldVault | core_logic | arbitrum | unit-24161 (2 proxies) | 2 deployments: arbitrum [`0xce0f05...39b880`](./contracts/arbitrum-42161/0xce0f05f19845cde36058ccfb53c755ab8739b880/); arbitrum `0xd507d9...f59cfb` | ✅ Audited |
| ControllerV2BLP | governance | ethereum | unit-24057 | [`0x8b53ab...5ad113`](./contracts/ethereum-1/0x8b53ab2c0df3230ea327017c91eb909f815ad113/) | ✅ Audited |
| ControllerV2BLP | governance | optimism | unit-24091 | [`0xa300a8...d8bcf4`](./contracts/optimism-10/0xa300a84d8970718dac32f54f61bd568142d8bcf4/) | ✅ Audited |
| ControllerV2BLP | governance | bsc | unit-24103 | [`0x0b53e6...e6dc0a`](./contracts/bsc-56/0x0b53e608bd058bb54748c35148484fd627e6dc0a/) | ✅ Audited |
| ControllerV2BLP | governance | polygon | unit-24128 | [`0x52eacd...025f37`](./contracts/polygon-137/0x52eacd19e38d501d006d2023c813d7e37f025f37/) | ✅ Audited |
| ControllerV2BLP | governance | arbitrum | unit-24154 | [`0x8e7e9e...1e5408`](./contracts/arbitrum-42161/0x8e7e9ea9023b81457ae7e6d2a51b003d421e5408/) | ✅ Audited |
| iETHV2BLP | unknown | ethereum | unit-24048 | [`0x5acd75...faabc0`](./contracts/ethereum-1/0x5acd75f21659a59ffab9aebaf350351a8bfaabc0/) | ✅ Audited |
| iETHV2BLP | unknown | optimism | unit-24092 | [`0xa7a084...a7b3b4`](./contracts/optimism-10/0xa7a084538de04d808f20c785762934dd5da7b3b4/) | ✅ Audited |
| iETHV2BLP | unknown | bsc | unit-24122 | [`0xd57e14...aa4a93`](./contracts/bsc-56/0xd57e1425837567f74a35d07669b23bfb67aa4a93/) | ✅ Audited |
| iETHV2BLP | unknown | polygon | unit-24131 | [`0x6a3fe5...678c74`](./contracts/polygon-137/0x6a3fe5342a4bd09efcd44ac5b9387475a0678c74/) | ✅ Audited |
| iETHV2BLP | unknown | arbitrum | unit-24163 | [`0xee3383...5dcc15`](./contracts/arbitrum-42161/0xee338313f022caee84034253174fa562495dcc15/) | ✅ Audited |
| iMSDV2BLP | unknown | bsc | unit-24106 (4 proxies) | 4 deployments: bsc [`0x36f4c3...de0991`](./contracts/bsc-56/0x36f4c36d1f6e8418ecb2402f896b2a8fedde0991/); bsc `0x6ac0a0...c72346`; bsc `0x6e4242...23b4e5`; bsc `0xb22ef9...1511eb` | ✅ Audited |
| iMSDV2BLP | unknown | arbitrum | unit-24148 (2 proxies) | 2 deployments: arbitrum [`0x5be49b...322021`](./contracts/arbitrum-42161/0x5be49b2e04ac55a17c72ac37e3a85d9602322021/); arbitrum `0xe8c85b...fea56c` | ✅ Audited |
| iMUSX | unknown | ethereum | unit-24046 | [`0x53bf3c...f1aff9`](./contracts/ethereum-1/0x53bf3c82f62b152800e0152db743451849f1aff9/) | ✅ Audited |
| iMUSX | unknown | optimism | unit-24093 | [`0xabf7fc...213f07`](./contracts/optimism-10/0xabf7fc467846923a9e3c573725daa1e6fb213f07/) | ✅ Audited |
| TransparentUpgradeableProxy | proxy | ethereum | unit-24045 | [`0x5268b3...b65234`](./contracts/ethereum-1/0x5268b3c4afb0860d365a093c184985fcfcb65234/) | ✅ Audited |
| TransparentUpgradeableProxy | proxy | optimism | unit-24086 | [`0x70a354...413bd4`](./contracts/optimism-10/0x70a35414fad53752c9352401be211779ec413bd4/) | ✅ Audited |
| TransparentUpgradeableProxy | proxy | polygon | unit-24133 | [`0x99e835...fe372c`](./contracts/polygon-137/0x99e8352d079326bc431633a61954f713aafe372c/) | ✅ Audited |
| TransparentUpgradeableProxy | proxy | avalanche | unit-24165 | [`0x2610cc...540cc8`](./contracts/avalanche-43114/0x2610cc2f20f9f3c1b180b7e8836c8c222a540cc8/) | ✅ Audited |
| TransparentUpgradeableProxy | proxy | avalanche | n/a | [`0x853ea3...25c5e0`](./contracts/avalanche-43114/0x853ea32391aaa14c112c645fd20ba389ab25c5e0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DSToken | token | ethereum | n/a | 2 deployments: ethereum [`0x431ad2...f7dbe0`](./contracts/ethereum-1/0x431ad2ff6a9c365805ebad47ee021148d6f7dbe0/); ethereum `0xeb2697...a83549` | ⚠️ Unaudited |
| Unipool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x308777...2fe874`](./contracts/ethereum-1/0x308777ddec61f5000d8394626d55dbb0312fe874/); ethereum `0xdc7a84...9a8adc` | ⚠️ Unaudited |
| ArbiOperator | unknown | arbitrum | n/a | [`0xf56a6c...d2d02d`](./contracts/arbitrum-42161/0xf56a6c78f28ac450db0a4e1367408b78add2d02d/) | ⚠️ Unaudited |
| DFProtocol | unknown | ethereum | n/a | [`0x5843f1...d1a1e8`](./contracts/ethereum-1/0x5843f1ccc5baa448528eb0e8bc567cda7ed1a1e8/) | ⚠️ Unaudited |
| Executor | unknown | arbitrum | n/a | [`0xeb3664...ec48ac`](./contracts/arbitrum-42161/0xeb36642f83b4e35ca9b99a07f17abc651eec48ac/) | ⚠️ Unaudited |
| LSRiTokenStakingPool | core_logic | arbitrum | n/a | 3 deployments: arbitrum [`0x4bf24a...66c096`](./contracts/arbitrum-42161/0x4bf24a7be1d98b8adbc2b3f8d4a6a5114666c096/); arbitrum `0x56e398...24e141`; arbitrum `0x9913ed...5e04f8` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | base | n/a | 7 deployments: ethereum `0x908808...979281`; ethereum `0xc2007a...0bf042`; ethereum `0xdcd350...f53cf3`; base [`0x2c6f29...13f54e`](./contracts/base-8453/0x2c6f29324b0d915fa2b0875633b018263113f54e/); base `0xbf1e66...b452a1`; base `0xfc8a32...84a27c`; arbitrum `0x5579e2...771b76` | ⚠️ Unaudited |
| Multicall2 | periphery | optimism | n/a | [`0x7e2dc2...90076b`](./contracts/optimism-10/0x7e2dc2b896b7aac98d6ee8e954d3f5bdcc90076b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | kava | n/a | `0x41602c...a53f60` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x422a86...75e7aa` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x431ad2...f7dbe0` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x6f87b3...db6358` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x9787af...94a514` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xfbf64a...5c84dc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [dForceLending-Audit-Report-Certik-Feb-2021.pdf](https://github.com/dforce-network/documents/blob/master/audit_report/Lending/dForceLending-Audit-Report-Certik-Feb-2021.pdf) | CertiK | Audit | 2021-02 | stale | Direct | contract_name | 0 | n/a |
| [dForceLending-Audit-Report-Certora-Feb-2021.pdf](https://github.com/dforce-network/documents/blob/master/audit_report/Lending/dForceLending-Audit-Report-Certora-Feb-2021.pdf) | Certora | Audit | 2021-02 | stale | Direct | contract_name | 0 | n/a |
| [dForceLending-Audit-Report-Consensys-Mar-2021.pdf](https://github.com/dforce-network/documents/blob/master/audit_report/Lending/dForceLending-Audit-Report-Consensys-Mar-2021.pdf) | Consensys | Audit | 2021-03 | stale | Direct | contract_name | 0 | n/a |
| [dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf](https://github.com/dforce-network/documents/blob/master/audit_report/Lending/dForceLending-Audit-Report-TrailofBits-Mar-2021.pdf) | Trail of Bits | Audit | 2021-03 | stale | Direct | contract_name | 108 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x308777...2fe874`](./contracts/ethereum-1/0x308777ddec61f5000d8394626d55dbb0312fe874/) | Unipool | core_logic | $48.54 | Verified native implementation with $48.54 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5843f1...d1a1e8`](./contracts/ethereum-1/0x5843f1ccc5baa448528eb0e8bc567cda7ed1a1e8/) | DFProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4bf24a...66c096`](./contracts/arbitrum-42161/0x4bf24a7be1d98b8adbc2b3f8d4a6a5114666c096/) | LSRiTokenStakingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 30 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=665

Zero-match audit list:

- [12443] dForceLending-Audit-Report-Certik-Feb-2021.pdf
- [12444] dForceLending-Audit-Report-Certora-Feb-2021.pdf
- [12445] dForceLending-Audit-Report-Consensys-Mar-2021.pdf

Fork inheritance lineage and inherited audits are included when available.
