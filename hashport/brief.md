# Agentic Audit Brief: Hashport

⚠️ Lifecycle status: DEAD - TVL dropped 54.8% over 90 days

## Project Overview

- Project: Hashport (`hashport`)
- Website: [https://www.hashport.network](https://www.hashport.network)
- Lifecycle: dead (Tier 1, sunsetting)
- Generated: 2026-06-10T20:59:04.551Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, aurora, avalanche, base, cronos, ethereum, fantom, moonbeam, optimism, polygon
- Contract surface: 21 unique implementations (297 raw deployments)
- DeFi Llama TVL: $1,536,497.14
- On-chain TVL (included contracts): $152,610.27
- TVL by chain: Ethereum $124,561.26 | Base $26,257.68 | Avalanche $1,694.79 | Polygon $81.37 | Arbitrum $15.16

## Project Description

Hashport was a Hedera-native public bridge that used a validator swarm and Hedera Consensus Service to support asset movement between Hedera and other networks through routers, router facets, diamond facets, governance, fee, payment, pausable facets, and ERC20/ERC721 wrapper-token contracts. The project has been permanently decommissioned: bridging infrastructure is offline, bridging is no longer available, and wrapped assets are stated by the project to be permanently unredeemable.

### Architecture

The Hashport family consists solely of Router and RouterFacet contracts, which are deployed as proxy-implementation pairs across multiple chains. These contracts share a common infrastructure pattern, with each Router proxy using a corresponding RouterFacet implementation to handle cross-chain routing logic.

## Audit Coverage Summary

- Verified implementations audited: 14/14 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 1
- Unverified implementations: 7
- Unique implementations: 21
- Raw deployments: 297
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 14 | 100.0% | 2022-08 |
| Omniscia | Tier 2 | 13 | 92.9% | n/a |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WrappedToken | token | arbitrum | 117 deployments: ethereum `0x0e9bf2...8e72cf`; ethereum `0x13ceaf...503369`; ethereum `0x16d0b8...b54f0b`; ethereum `0x1f7fd1...b544bb`; ethereum `0x23cce5...520546`; ethereum `0x273d43...051c18`; ethereum `0x2aeabd...f39526`; ethereum `0x2e6fb7...ab422f`; ethereum `0x2f3afd...285ef7`; ethereum `0x3b930b...016ccc`; ethereum `0x45c82a...3b764d`; ethereum `0x7158b8...f1e54a`; ethereum `0xa32419...ddd824`; ethereum `0xa6312d...bdde48`; ethereum `0xb41822...5d70c7`; ethereum `0xbd09be...0c2558`; ethereum `0xcc944c...28af61`; ethereum `0xe2d48a...2726af`; ethereum `0xeebd1e...5ae426`; ethereum `0xf6a72c...592b97`; ethereum `0xff7706...998167`; optimism `0x1d299f...ffd401`; optimism `0x21b829...9114cd`; optimism `0x2cbf04...671dcc`; optimism `0x2ea0a6...4cdc99`; optimism `0x52cfce...f29dac`; optimism `0x73fa28...3b0e1b`; optimism `0x7fa810...f372ff`; optimism `0x92c30a...10d7c6`; optimism `0x9ca4ee...0699a8`; optimism `0xbc41dd...b50a69`; optimism `0xc2c4e4...e833b3`; optimism `0xc3fbd8...7c0128`; optimism `0xd91ff3...244ca6`; optimism `0xe11ec1...a9e956`; optimism `0xe15b63...1ea65e`; optimism `0xf4b6e0...bd2b32`; optimism `0xf6daa6...1f1659`; optimism `0xf792ff...b4245e`; polygon `0x28dba9...bd6d34`; polygon `0x2d2101...440ab1`; polygon `0x319413...8bc5db`; polygon `0x3212bf...60042f`; polygon `0x346ba1...19e55e`; polygon `0x59c43e...7e2441`; polygon `0x75771d...1e67e7`; polygon `0x79103b...a972d5`; polygon `0x7998a9...455aac`; polygon `0x7adb62...d71262`; polygon `0x8b4cae...f1753d`; polygon `0x8f3d03...8305a4`; polygon `0xb98ce6...cee369`; polygon `0xc63ec8...0a9e93`; polygon `0xcceadd...8b95fc`; polygon `0xcddc03...114ddf`; polygon `0xd30ed3...ffeb31`; polygon `0xea8586...358c0e`; moonbeam `0x1e02a7...9dcb8e`; moonbeam `0x22c9b5...7a3f60`; moonbeam `0x2ca9f3...bffcc2`; moonbeam `0x49967f...dd7331`; moonbeam `0x4dbbe8...47d8c1`; moonbeam `0x6a1fcc...f4300f`; moonbeam `0x708f96...d18502`; moonbeam `0xad6bc1...693bde`; moonbeam `0xd84eaf...d58963`; moonbeam `0xdab777...fab699`; moonbeam `0xe32c01...1c8ec0`; base `0x22833b...ca5761`; base `0x2a6eb2...635162`; base `0x34598d...2c9d0f`; base `0x841952...671bd5`; base `0x93aefc...c9c333`; base `0xc5e8fe...7febf3`; base `0xd3705d...b7dc9f`; base `0xdc586c...9bfe14`; base `0xde5806...b8fa97`; base `0xfa77ca...7e7167`; arbitrum [`0x029341...2bf85e`](./contracts/arbitrum-42161/0x029341d8772f8f5cca973f788b0dbd3aaf2bf85e/); arbitrum `0x148200...fc48a6`; arbitrum `0x31269b...fa7c89`; arbitrum `0x508096...0bfcfa`; arbitrum `0x53a198...ecfd3a`; arbitrum `0x5a324e...015da5`; arbitrum `0x5c173e...0bb19a`; arbitrum `0x6534f7...5247af`; arbitrum `0x6ce727...7cc171`; arbitrum `0x6fd908...f3946d`; arbitrum `0x84b420...226057`; arbitrum `0x8f005e...80a6cc`; arbitrum `0xaca468...8e0a55`; arbitrum `0xad4ff3...5f393a`; arbitrum `0xc12f1d...0ad58e`; arbitrum `0xe508b0...cdc7f5`; arbitrum `0xe821c0...c89417`; arbitrum `0xeb7278...927d68`; arbitrum `0xed6c7a...684fa5`; arbitrum `0xfa151e...0facce`; avalanche `0x08707e...db456e`; avalanche `0x1bb219...c878b9`; avalanche `0x2e8db7...e15c68`; avalanche `0x2fd644...8fae11`; avalanche `0x30c747...4ca1e0`; avalanche `0x359491...947758`; avalanche `0x430eee...abf4d8`; avalanche `0x6bb7c8...c88444`; avalanche `0x781aaf...b91a9d`; avalanche `0x8b6e25...e3616c`; avalanche `0x8bcf39...8ec479`; avalanche `0x8d27bf...5566af`; avalanche `0x945ca4...3e4f2c`; avalanche `0xb31c96...3c35b6`; avalanche `0xdbaf53...d1c0b5`; avalanche `0xe0ecf8...566b66`; avalanche `0xe932b8...5d4a47`; avalanche `0xf839c3...14110a`; aurora `0x6bc344...910c69` | ✅ Audited |
| DiamondCutFacet | unknown | optimism | 14 deployments: ethereum `0xe79c9b...626ef9`; optimism [`0x101461...a0a5f7`](./contracts/optimism-10/0x101461c74d9298fbbe7fffafaa5d4e7c4ea0a5f7/); polygon `0x2232a1...a0a785`; moonbeam `0x65dad7...cf1f79`; moonbeam `0x9faa69...ac430b`; base `0x43a456...3de595`; arbitrum `0x3587fe...78b4b8`; avalanche `0x33587c...66f461`; avalanche `0x6b3667...78441a`; avalanche `0xb0c8a4...79725b`; aurora `0x2ff606...e6aff0`; aurora `0x33db10...0c7d4c`; aurora `0x7a59cd...0ec2ca`; aurora `0xd827cd...571a00` | ✅ Audited |
| DiamondLoupeFacet | unknown | optimism | 12 deployments: ethereum `0x6f1fb4...8ff01e`; optimism [`0x02a03d...3e02e8`](./contracts/optimism-10/0x02a03de476c586821e67124c317ad2908e3e02e8/); polygon `0x8e1e45...f8caad`; moonbeam `0x607492...b12dd2`; moonbeam `0x9cda85...4370c3`; base `0x0b5ea9...5e1ef9`; arbitrum `0xcaabf3...8adf98`; avalanche `0x0348ee...4cd870`; avalanche `0x32efa9...d0917b`; avalanche `0x9d9aa3...5ef880`; aurora `0x15d175...6c8898`; aurora `0x2f576f...00deb2` | ✅ Audited |
| ERC721PortalFacet | token | aurora | 14 deployments: ethereum `0x7327b0...96e22b`; ethereum `0xbb3930...b9a650`; optimism `0x8ba797...e19d98`; optimism `0x8c6539...189388`; polygon `0x0c49c9...faad3d`; polygon `0x2f20f1...c950da`; moonbeam `0x2df8b5...8cdfbe`; moonbeam `0xbe3923...d1ba98`; base `0xa26804...d8a693`; arbitrum `0x3d39f9...715572`; arbitrum `0xd6e23e...baa15e`; avalanche `0x1c667f...aba0ba`; avalanche `0x7622c2...2609dd`; aurora [`0x08eb28...77d112`](./contracts/aurora-1313161554/0x08eb28157cdf43d4d1b6987a51de503b7677d112/) | ✅ Audited |
| FeeCalculatorFacet | unknown | aurora | 15 deployments: ethereum `0x2bf0c7...21f94c`; optimism `0x14c739...3e4085`; polygon `0x9010ee...d9ab1f`; moonbeam `0x777652...6acdb4`; moonbeam `0xb91e2f...b2eaca`; base `0x8334e9...abe66f`; arbitrum `0x5e0f83...386775`; avalanche `0x1197c6...67627d`; avalanche `0x147ac3...4b32df`; avalanche `0x51b364...97c029`; aurora [`0x090595...434839`](./contracts/aurora-1313161554/0x090595785b8a3dc496b95504b0bf2eb018434839/); aurora `0x490fca...98f9fb`; aurora `0x7a64cd...1cb52c`; aurora `0x8b092b...e80da1`; aurora `0xbd92d2...9d964f` | ✅ Audited |
| GovernanceFacet | unknown | avalanche | 15 deployments: ethereum `0x48b3d6...52d7ee`; optimism `0x69606c...7188b9`; polygon `0x8088cb...c1fabc`; moonbeam `0x4c199d...b9f817`; moonbeam `0xee3535...2b1cd6`; base `0x8e89a2...0b8929`; arbitrum `0x90e46c...d7e4f8`; avalanche [`0x27354c...80b1c8`](./contracts/avalanche-43114/0x27354c246ff7b6492a026cd8adc243f99d80b1c8/); avalanche `0x93c85c...ddfdc7`; avalanche `0xd387fc...e48f7b`; aurora `0x2c1dc7...4499b0`; aurora `0x4594b4...0794dc`; aurora `0x7b9e49...019a9e`; aurora `0x9b7a77...1385ff`; aurora `0xdab766...ddad17` | ✅ Audited |
| GovernanceV2Facet | unknown | polygon | 9 deployments: ethereum `0x4af106...42b403`; optimism `0x2e1a4c...d9f2a8`; polygon [`0x0381d7...73f1b8`](./contracts/polygon-137/0x0381d726d3146e2171ffe48ae04bbc20a473f1b8/); moonbeam `0x8dfc54...9a2a3d`; moonbeam `0xefb5b1...41bc50`; base `0x1e2b22...226dbe`; arbitrum `0x41ae06...311d1c`; avalanche `0xf01df4...abca8c`; aurora `0x636f36...7816b7` | ✅ Audited |
| OwnershipFacet | unknown | aurora | 15 deployments: ethereum `0x3fad3c...21e6c8`; optimism `0xd1f633...e44115`; polygon `0x590243...9dace3`; moonbeam `0x24fca8...2c595a`; moonbeam `0xf6b713...85f84c`; base `0xc34aa6...0aa7e0`; arbitrum `0x79b62e...7701b1`; avalanche `0x1a359e...636f12`; avalanche `0x83fad6...6d325c`; avalanche `0xc76c7c...1cb737`; aurora [`0x092ec3...1a7fbc`](./contracts/aurora-1313161554/0x092ec316e4de4aa60269a76175d46658361a7fbc/); aurora `0x5a1650...02ed8b`; aurora `0x723857...05dc4c`; aurora `0xee1159...19ef3a`; aurora `0xf86ef0...4c160e` | ✅ Audited |
| PausableFacet | unknown | ethereum | 10 deployments: ethereum [`0x11481c...845814`](./contracts/ethereum-1/0x11481c1136d42c60c5bf29dfb9cb7eed90845814/); optimism `0x86d08c...5b1577`; polygon `0x9e4eab...9a43e1`; moonbeam `0x2ef9bd...ab32aa`; moonbeam `0xb4cb65...e2adfd`; base `0x2a5867...3f52bd`; arbitrum `0xe010fb...18cde1`; avalanche `0x87f640...db3903`; aurora `0x9e4ffe...5076d4`; aurora `0xc82ad3...54d63f` | ✅ Audited |
| PaymentFacet | unknown | base | 9 deployments: ethereum `0xf50329...0db514`; optimism `0x65dedb...0ce5a5`; polygon `0x382d00...b0cb74`; moonbeam `0xce656a...8b520b`; moonbeam `0xd4848b...69a285`; base [`0x358e77...a29306`](./contracts/base-8453/0x358e77bbcd8860d1444e99d8804ffa2d58a29306/); arbitrum `0x4eee0f...7130e1`; avalanche `0xda35df...f8a712`; aurora `0x3720cc...381160` | ✅ Audited |
| Router | adapter | avalanche | 7 deployments: optimism `0x6da4e9...7c0c3e`; moonbeam `0x617d29...6d2f6b`; moonbeam `0xeb5a0b...86fe8a`; base `0x0f3414...09f54b`; avalanche [`0x08b581...6fd88e`](./contracts/avalanche-43114/0x08b5816f1057de757ead4df99469ea653f6fd88e/); avalanche `0x902192...ffafcc`; aurora `0x3b3220...181506` | ✅ Audited |
| RouterFacet | adapter | aurora | 21 deployments: ethereum `0x367e59...4cd4b7`; ethereum `0xf9fe42...942b34`; optimism `0x3347f1...0e7a6e`; polygon `0xa2f8f6...0d4d7f`; polygon `0xf4c015...5ce53d`; moonbeam `0x6bb070...2fa886`; moonbeam `0x7741a1...2f7cee`; base `0xd9cde0...ef42e8`; arbitrum `0x73d0da...2cc899`; arbitrum `0x984bb0...b5893a`; avalanche `0x2e195f...4de6f7`; avalanche `0xcccaff...3e981b`; avalanche `0xd050ed...db11cc`; avalanche `0xd8df34...611b49`; aurora [`0x1c8a50...6319d4`](./contracts/aurora-1313161554/0x1c8a50f4cc362e1c204f5fb95cd73035e76319d4/); aurora `0x3e3f01...e7ada1`; aurora `0x449126...ddaa34`; aurora `0xa6e018...379d48`; aurora `0xa8d16c...285b63`; aurora `0xb00706...9d9008`; aurora `0xf9efcd...79f243` | ✅ Audited |
| WrappedERC721 | token | polygon | 6 deployments: ethereum `0x27d74c...cafa26`; ethereum `0xbc8fa6...0573f3`; ethereum `0xbcb430...ee4a7d`; polygon [`0x09cef2...70b6f7`](./contracts/polygon-137/0x09cef21241116fdd00eb7e90c93be724d370b6f7/); polygon `0x0ffe15...ad1547`; polygon `0x7c4070...b2cbb9` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WrappedERC721Pausable | token | polygon | 26 deployments: ethereum `0x1eb71d...302cae`; ethereum `0x30a08a...259204`; ethereum `0x58b9ce...8d07d6`; ethereum `0x8d591d...e61065`; ethereum `0x9598f5...25dd0a`; ethereum `0x95acb3...429edf`; ethereum `0x9fd01a...15456d`; ethereum `0xc05b52...bacab1`; ethereum `0xdef809...6dd2eb`; ethereum `0xe82043...3b8f90`; ethereum `0xf0d88a...35a36a`; ethereum `0xf66046...88934f`; optimism `0x14ee62...c9b022`; polygon [`0x0f1ff2...bc0251`](./contracts/polygon-137/0x0f1ff2541b81d5f9d6410301febd1a9669bc0251/); polygon `0x1d163e...1a6e59`; polygon `0x25ebc0...29abc3`; polygon `0x2a3ea9...120d85`; polygon `0x452572...5ad4f0`; polygon `0x563b49...ed9d61`; polygon `0x58dc84...8aeb31`; polygon `0x63d71e...a305ef`; polygon `0x7c38d5...53c77b`; polygon `0xe6f8be...53f907`; polygon `0xf0082e...111d45`; arbitrum `0x8a9240...0d8d90`; avalanche `0x5b9f05...d8977f` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | optimism | `0xb4e73a...2d5856` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x36daaf...c6413c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2ee227...46fc5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa2aa75...fff50a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xaebcae...3e3f6e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfce733...5322c0` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x475b21...1f4e0f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Introduction](https://omniscia.io/reports/limechain-hashport) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 226 | high |
| [Introduction](https://omniscia.io/reports/limechain-hashport-round-2) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 264 | high |
| [Round 1](https://www.hashport.network/wp-content/uploads/Hashport-Smart-Contract-Review-v1.0-3-1.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 287 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=777

Fork inheritance lineage and inherited audits are included when available.
