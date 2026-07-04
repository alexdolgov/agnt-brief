# Agentic Audit Brief: Sector Finance

## Project Overview

- Project: Sector Finance (`sector-finance`)
- Website: [https://sector.finance](https://sector.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:54.707Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: moonriver, optimism
- Contract surface: 31 unique implementations (107 raw deployments)
- DeFi Llama TVL: $54,159.08
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 28 project-authored contract(s) across 2 chain(s); 11 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 26 common project-authored base contract(s) (stratauth, auth, ibase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 112; live-surface contracts included: 107 (94 live, 13 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/17 (70.6%)
- Deployed-live implementations: 18 of 31 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 12/18
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 31
- Raw deployments: 107
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 12 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 12 | 66.7% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregatorVault | unknown | optimism | n/a | 9 deployments: optimism [`0x67944b...47095e`](./contracts/optimism-10/0x67944bd9dba951b1221d6b838109fb581c47095e/); optimism `0x8235e1...8db018`; optimism `0x97bbdd...83baf5`; optimism `0xaa47c9...fc5436`; optimism `0xe5dc0b...50784b`; optimism `0xe669f5...afbef8`; optimism `0xe79928...a8a774`; optimism `0xff44d0...d569c9`; moonriver `0xd8f376...d200a9` | ✅ Audited |
| AggregatorVaultU | unknown | optimism | n/a | 8 deployments: optimism [`0x219717...883c1c`](./contracts/optimism-10/0x219717ef71e81c06f82aa2443d5e6c0375883c1c/); optimism `0xa51721...c12763`; optimism `0xabd485...5c10fa`; optimism `0xe4251a...39ad01`; moonriver `0x33c996...9d3ee9`; moonriver `0x710663...239380`; moonriver `0x91c9b2...2694b9`; moonriver `0xcfe971...8c1f97` | ✅ Audited |
| HLPVault | unknown | moonriver | n/a | 2 deployments: moonriver [`0x615c88...9f4bf8`](./contracts/moonriver-1285/0x615c884c42c3bca1b93d6e28f7d416916d9f4bf8/); moonriver `0xb2e0ff...52e58a` | ✅ Audited |
| IMX | unknown | optimism | n/a | 20 deployments: optimism [`0x00ca56...697715`](./contracts/optimism-10/0x00ca56477620b13c7b1d4d221aecd960ab697715/); optimism `0x0bab49...6abe3e`; optimism `0x1bfb4c...6819e4`; optimism `0x402b16...0b6dfb`; optimism `0x4b2891...a13e6f`; optimism `0x591005...740f05`; optimism `0x5917f5...d14187`; optimism `0x65e634...124fdc`; optimism `0x70e9d7...239edb`; optimism `0x748fae...1a9455`; optimism `0x7abbed...c337bc`; optimism `0x7c425f...0ecfe2`; optimism `0x7d3137...e75372`; optimism `0x8da9cd...f52a79`; optimism `0xa74848...9d1517`; optimism `0xb3e829...5f34c9`; optimism `0xb93968...950e6e`; optimism `0xc0d1be...8b609a`; optimism `0xf38f96...e12030`; optimism `0xfd6f41...ee1a38` | ✅ Audited |
| IMXVault | unknown | optimism | n/a | 16 deployments: optimism [`0x2663a6...86e50e`](./contracts/optimism-10/0x2663a6f2768c66a8483d0bba4b9dba849686e50e/); optimism `0x2c7bba...7ad078`; optimism `0x339d70...d75a54`; optimism `0x424ea8...f8c414`; optimism `0x4c4241...9a5978`; optimism `0x5c6079...3cf17d`; optimism `0x7115f1...e59363`; optimism `0x97b4d1...6e6b51`; optimism `0x9c5458...d1e784`; optimism `0x9cede6...87e8c0`; optimism `0x9e7ca8...ecd01e`; optimism `0xaccfd4...e1a79f`; optimism `0xdb6137...491919`; optimism `0xdbaf79...47c62a`; optimism `0xdbd42b...08cdd2`; optimism `0xf90df7...85cf73` | ✅ Audited |
| MasterChefCompMulti | unknown | moonriver | n/a | 6 deployments: moonriver [`0x087932...ab5ada`](./contracts/moonriver-1285/0x087932f702aa80bbec47875186702ec41fab5ada/); moonriver `0x09fce4...f5f1bc`; moonriver `0x402b16...0b6dfb`; moonriver `0x689c5e...ae3a4d`; moonriver `0xaa47c9...fc5436`; moonriver `0xaa87f5...1bfe91` | ✅ Audited |
| SCYVaultU | unknown | optimism | n/a | 2 deployments: optimism [`0x36eeae...50f2d6`](./contracts/optimism-10/0x36eeae644b247cb285f4c299c72e6a56bb50f2d6/); optimism `0xa12d1a...816c14` | ✅ Audited |
| SCYVaultU | unknown | moonriver | n/a | 3 deployments: optimism `0xbec463...21a192`; moonriver [`0x9ea78f...49dd76`](./contracts/moonriver-1285/0x9ea78f462f4f2ef1ff2841772024d8fe1149dd76/); moonriver `0xccadd7...b00454` | ✅ Audited |
| SectorFactory | unknown | optimism | n/a | 2 deployments: optimism [`0x4adfe3...85399e`](./contracts/optimism-10/0x4adfe3ed020dac0ff69ca212f32be3b71185399e/); moonriver `0xc85f25...a156d5` | ✅ Audited |
| SectorRegistry | unknown | optimism | n/a | 2 deployments: optimism [`0x0517ca...fe3128`](./contracts/optimism-10/0x0517ca29c3948779cd61849a51dca85449fe3128/); moonriver `0xefce3b...6a25a7` | ✅ Audited |
| SectorTimelock | unknown | moonriver | n/a | 2 deployments: optimism `0xc86faf...6798de`; moonriver [`0x7115f1...e59363`](./contracts/moonriver-1285/0x7115f16c3db03056f67963ca48e227c3cde59363/) | ✅ Audited |
| UniUtils | unknown | optimism | n/a | 5 deployments: optimism [`0x42ed2b...c3c57d`](./contracts/optimism-10/0x42ed2bd88bda5c7b03f454cbc9303e35a0c3c57d/); optimism `0xcc2e88...4f130b`; moonriver `0x92dbea...fa2897`; moonriver `0x97dd9a...040b90`; moonriver `0x995a36...e48cbf` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| IMXLendStrategy | unknown | optimism | n/a | 2 deployments: optimism [`0x141639...48ef3b`](./contracts/optimism-10/0x141639034301d5e66dfe6961e8fe173d4d48ef3b/); optimism `0x8544b4...118867` | ⚠️ Unaudited |
| ScionVaultFactory | unknown | moonriver | n/a | [`0x813a19...f6c739`](./contracts/moonriver-1285/0x813a1942d4be93e1b33764108b5273b4c8f6c739/) | ⚠️ Unaudited |
| SectorBeacon | unknown | optimism | n/a | 3 deployments: optimism [`0x39d1d7...cf402d`](./contracts/optimism-10/0x39d1d72cf5a46176b0cf135720d5b56d0ccf402d/); moonriver `0xdbd42b...08cdd2`; moonriver `0xefe2d2...389f66` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | optimism | n/a | 3 deployments: optimism [`0x84ac58...841903`](./contracts/optimism-10/0x84ac58149abdc777f732f6a464c1538ae2841903/); optimism `0x84b6a7...b46b4d`; moonriver `0xaa4021...993b2a` | ⚠️ Unaudited |
| USDCmovrSOLARwell | unknown | moonriver | n/a | 6 deployments: moonriver [`0x94ea93...6a6989`](./contracts/moonriver-1285/0x94ea9337db519602ee42aa2238aa1927c96a6989/); moonriver `0xb04adb...0f9222`; moonriver `0xbf8467...f32123`; moonriver `0xd40bd3...e9fea2`; moonriver `0xdfceb0...39587d`; moonriver `0xe20607...ec8f8b` | ⚠️ Unaudited |
| VaultUpgradable | core_logic | moonriver | n/a | 2 deployments: moonriver [`0x96b6a3...77e1f6`](./contracts/moonriver-1285/0x96b6a3e2048db602ffd71e5a2c7351673a77e1f6/); moonriver `0x97b4d1...6e6b51` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x43ce61...2d7fa7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4735d8...a7968c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4b0768...8a45df` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5791ca...eae82b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x651a2d...825a9d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x68a329...622b27` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8aeb22...5dc50f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x92dbea...fa2897` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcb2e19...1a5dda` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0ac983...30e9b5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x24ee75...0849a7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7fbfd6...313dc2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcb2e19...1a5dda` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/aizh7QHFZ0AM4JGHZRn6/uploads/j3nsS4VbUkK4j5ucSRq8/Sector_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://1194552491-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Faizh7QHFZ0AM4JGHZRn6%2Fuploads%2Fj3nsS4VbUkK4j5ucSRq8%2FSector_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-12 | stale | Direct | contract_name | 62 | high |
| [spaces/aizh7QHFZ0AM4JGHZRn6/uploads/hOfiANzdgcROK65IdYip/Sector_Finance_New_Strategies_and_Vaults_Upgradeable_Contracts_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://1194552491-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Faizh7QHFZ0AM4JGHZRn6%2Fuploads%2FhOfiANzdgcROK65IdYip%2FSector_Finance_New_Strategies_and_Vaults_Upgradeable_Contracts_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-02 | stale | Direct | contract_name | 24 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x141639...48ef3b`](./contracts/optimism-10/0x141639034301d5e66dfe6961e8fe173d4d48ef3b/) | IMXLendStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x813a19...f6c739`](./contracts/moonriver-1285/0x813a1942d4be93e1b33764108b5273b4c8f6c739/) | ScionVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x39d1d7...cf402d`](./contracts/optimism-10/0x39d1d72cf5a46176b0cf135720d5b56d0ccf402d/) | SectorBeacon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x94ea93...6a6989`](./contracts/moonriver-1285/0x94ea9337db519602ee42aa2238aa1927c96a6989/) | USDCmovrSOLARwell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x96b6a3...77e1f6`](./contracts/moonriver-1285/0x96b6a3e2048db602ffd71e5a2c7351673a77e1f6/) | VaultUpgradable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=86

Fork inheritance lineage and inherited audits are included when available.
