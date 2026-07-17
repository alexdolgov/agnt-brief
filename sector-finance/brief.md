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
| AggregatorVault | unknown | optimism | n/a | 9 deployments: optimism [`0x67944bd9dba951b1221d6b838109fb581c47095e`](./contracts/optimism-10/0x67944bd9dba951b1221d6b838109fb581c47095e/); optimism `0x8235e1d9f0477e20cb76f456cc3b21c9958db018`; optimism `0x97bbdd714043ef5df47c96f21bbf968ca283baf5`; optimism `0xaa47c9422fd5e12f1a364e659b593e1a10fc5436`; optimism `0xe5dc0b65139a38fcb4db4ac8e1375f22a250784b`; optimism `0xe669f5f83616639d3442b03108233e0054afbef8`; optimism `0xe79928db3a1884a825d002af9afe713e9da8a774`; optimism `0xff44d03b6cf6a40bd1b6261150f3272243d569c9`; moonriver `0xd8f376dfae76bad02dcec4260795dfd5c9d200a9` | ✅ Audited |
| AggregatorVaultU | unknown | optimism | n/a | 8 deployments: optimism [`0x219717ef71e81c06f82aa2443d5e6c0375883c1c`](./contracts/optimism-10/0x219717ef71e81c06f82aa2443d5e6c0375883c1c/); optimism `0xa51721114da446e9de56c9d3f2b8985f57c12763`; optimism `0xabd485558304d923a42cb4076a045cbc145c10fa`; optimism `0xe4251afa6796a94647b44bd53299d6ebf939ad01`; moonriver `0x33c996f17a37fa323586017bf87c14247d9d3ee9`; moonriver `0x710663be3ac476e3c8dc84a7e98316b7de239380`; moonriver `0x91c9b2e4e79b3f89ced5bf62fb5f2608362694b9`; moonriver `0xcfe9710df9b8d95f1c503a70ac44a7d84d8c1f97` | ✅ Audited |
| HLPVault | unknown | moonriver | n/a | 2 deployments: moonriver [`0x615c884c42c3bca1b93d6e28f7d416916d9f4bf8`](./contracts/moonriver-1285/0x615c884c42c3bca1b93d6e28f7d416916d9f4bf8/); moonriver `0xb2e0ff67be42a569f6b1f50a5a43e5fd0952e58a` | ✅ Audited |
| IMX | unknown | optimism | n/a | 20 deployments: optimism [`0x00ca56477620b13c7b1d4d221aecd960ab697715`](./contracts/optimism-10/0x00ca56477620b13c7b1d4d221aecd960ab697715/); optimism `0x0bab493632e27325a3f6c02de14c04ba006abe3e`; optimism `0x1bfb4c5d84aa3e6564491659706b09a25a6819e4`; optimism `0x402b16adae502e5b5a49f4593face220ab0b6dfb`; optimism `0x4b2891a7ac11d2b52560d4b78daa9bbbfda13e6f`; optimism `0x591005085116df73d5b05589e664762285740f05`; optimism `0x5917f58db34fd30c21f1730fd894063fe0d14187`; optimism `0x65e63475f1d006c3c2e628f66c1cb6f270124fdc`; optimism `0x70e9d7dbdb6e276e5e298488f7da913509239edb`; optimism `0x748fae3ca04627c866a009315f004274461a9455`; optimism `0x7abbed988145058d8fc9a0e782af01955ac337bc`; optimism `0x7c425f7f4c1dd42c0bc8f59e8e3604ab5a0ecfe2`; optimism `0x7d3137bf099fc4d1f45739211749be9f61e75372`; optimism `0x8da9cd7232611fef7b1f05ab80ea9bb977f52a79`; optimism `0xa7484899eabb8fdab150b48bdb60cfb73b9d1517`; optimism `0xb3e829d2ae0944a147549330a65614cd095f34c9`; optimism `0xb93968f5da93ad1065abb614c93d5e2836950e6e`; optimism `0xc0d1bee2836528ad62c29753b900c39b278b609a`; optimism `0xf38f968f3d54576ae67150f0f81d447462e12030`; optimism `0xfd6f41d11e7e256a4157b1e44bcfa5f013ee1a38` | ✅ Audited |
| IMXVault | unknown | optimism | n/a | 16 deployments: optimism [`0x2663a6f2768c66a8483d0bba4b9dba849686e50e`](./contracts/optimism-10/0x2663a6f2768c66a8483d0bba4b9dba849686e50e/); optimism `0x2c7bba60bf6a8b6b042a3b43c9349345da7ad078`; optimism `0x339d70eae3a7ca14c515f5924dea4a2862d75a54`; optimism `0x424ea8a23f9c45184799b75bf0b13ab2d0f8c414`; optimism `0x4c424155997dd42435d137fdecfc64ea619a5978`; optimism `0x5c6079193fa38868f51eac367e622dada53cf17d`; optimism `0x7115f16c3db03056f67963ca48e227c3cde59363`; optimism `0x97b4d169014c15e7a5890123992fa543086e6b51`; optimism `0x9c5458761cbaa84ee575f090e804e2874dd1e784`; optimism `0x9cede6415a956205a9c21c88d34f1d2a4e87e8c0`; optimism `0x9e7ca89eab560c58f738f92e70f2922d20ecd01e`; optimism `0xaccfd4db8ad6964fd5a6a52d6649a7484ee1a79f`; optimism `0xdb613730c823f260a1a8ac2dcdd6b8b82b491919`; optimism `0xdbaf794ac3f2d5e90ff453332067f9f1a647c62a`; optimism `0xdbd42bcbe8f81d2da8d46fd158829c931e08cdd2`; optimism `0xf90df76f9f576a7f8eea734f465cb36d2785cf73` | ✅ Audited |
| MasterChefCompMulti | unknown | moonriver | n/a | 6 deployments: moonriver [`0x087932f702aa80bbec47875186702ec41fab5ada`](./contracts/moonriver-1285/0x087932f702aa80bbec47875186702ec41fab5ada/); moonriver `0x09fce40f017e0ac7551b49a372760ee474f5f1bc`; moonriver `0x402b16adae502e5b5a49f4593face220ab0b6dfb`; moonriver `0x689c5e52ea6104b9632905d58a5fcf63e2ae3a4d`; moonriver `0xaa47c9422fd5e12f1a364e659b593e1a10fc5436`; moonriver `0xaa87f56c1fc6c7a82ebaee7f4a97176faa1bfe91` | ✅ Audited |
| SCYVaultU | unknown | optimism | n/a | 2 deployments: optimism [`0x36eeae644b247cb285f4c299c72e6a56bb50f2d6`](./contracts/optimism-10/0x36eeae644b247cb285f4c299c72e6a56bb50f2d6/); optimism `0xa12d1a1ed7fa7e7201274badf4dfbfb577816c14` | ✅ Audited |
| SCYVaultU | unknown | moonriver | n/a | 3 deployments: optimism `0xbec463c31b463eace35aae233c5d0a386721a192`; moonriver [`0x9ea78f462f4f2ef1ff2841772024d8fe1149dd76`](./contracts/moonriver-1285/0x9ea78f462f4f2ef1ff2841772024d8fe1149dd76/); moonriver `0xccadd7a856a71375db47e32abc5c5fd5f6b00454` | ✅ Audited |
| SectorFactory | unknown | optimism | n/a | 2 deployments: optimism [`0x4adfe3ed020dac0ff69ca212f32be3b71185399e`](./contracts/optimism-10/0x4adfe3ed020dac0ff69ca212f32be3b71185399e/); moonriver `0xc85f25eb74eaa5ad74eb6d9e8bdf686089a156d5` | ✅ Audited |
| SectorRegistry | unknown | optimism | n/a | 2 deployments: optimism [`0x0517ca29c3948779cd61849a51dca85449fe3128`](./contracts/optimism-10/0x0517ca29c3948779cd61849a51dca85449fe3128/); moonriver `0xefce3bf365af5b99550f32042007f73ba36a25a7` | ✅ Audited |
| SectorTimelock | unknown | moonriver | n/a | 2 deployments: optimism `0xc86faf9e55696f0079cd6b679292d0462f6798de`; moonriver [`0x7115f16c3db03056f67963ca48e227c3cde59363`](./contracts/moonriver-1285/0x7115f16c3db03056f67963ca48e227c3cde59363/) | ✅ Audited |
| UniUtils | unknown | optimism | n/a | 5 deployments: optimism [`0x42ed2bd88bda5c7b03f454cbc9303e35a0c3c57d`](./contracts/optimism-10/0x42ed2bd88bda5c7b03f454cbc9303e35a0c3c57d/); optimism `0xcc2e880fcddc4fbde66fb573ef04c44fd04f130b`; moonriver `0x92dbea6fa85a1cd839b604d1f2852abfb7fa2897`; moonriver `0x97dd9a5a017f682bb0872f2f8a3b7aa6ff040b90`; moonriver `0x995a364c5f949c900fa230333a0b4eb511e48cbf` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| IMXLendStrategy | unknown | optimism | n/a | 2 deployments: optimism [`0x141639034301d5e66dfe6961e8fe173d4d48ef3b`](./contracts/optimism-10/0x141639034301d5e66dfe6961e8fe173d4d48ef3b/); optimism `0x8544b4c89f2d90adb1184df4a3bc3e9d67118867` | ⚠️ Unaudited |
| ScionVaultFactory | unknown | moonriver | n/a | [`0x813a1942d4be93e1b33764108b5273b4c8f6c739`](./contracts/moonriver-1285/0x813a1942d4be93e1b33764108b5273b4c8f6c739/) | ⚠️ Unaudited |
| SectorBeacon | unknown | optimism | n/a | 3 deployments: optimism [`0x39d1d72cf5a46176b0cf135720d5b56d0ccf402d`](./contracts/optimism-10/0x39d1d72cf5a46176b0cf135720d5b56d0ccf402d/); moonriver `0xdbd42bcbe8f81d2da8d46fd158829c931e08cdd2`; moonriver `0xefe2d26cf7479a43fc9bde7a33600a9fb8389f66` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | optimism | n/a | 3 deployments: optimism [`0x84ac58149abdc777f732f6a464c1538ae2841903`](./contracts/optimism-10/0x84ac58149abdc777f732f6a464c1538ae2841903/); optimism `0x84b6a7f1f47056eb90ac641e76fb7c8d3cb46b4d`; moonriver `0xaa40216ce9f6b9baab726fbc83a184944a993b2a` | ⚠️ Unaudited |
| USDCmovrSOLARwell | unknown | moonriver | n/a | 6 deployments: moonriver [`0x94ea9337db519602ee42aa2238aa1927c96a6989`](./contracts/moonriver-1285/0x94ea9337db519602ee42aa2238aa1927c96a6989/); moonriver `0xb04adb86f205c92a21df891ac107b1c8890f9222`; moonriver `0xbf84671e68ec305abe63a813c2abb1d0f9f32123`; moonriver `0xd40bd3bcb176314b4e929ace8ece1c081fe9fea2`; moonriver `0xdfceb0c84ba7f3754c10336ffefeb4386a39587d`; moonriver `0xe206074595d33bd315aa436f3eb5159668ec8f8b` | ⚠️ Unaudited |
| VaultUpgradable | core_logic | moonriver | n/a | 2 deployments: moonriver [`0x96b6a3e2048db602ffd71e5a2c7351673a77e1f6`](./contracts/moonriver-1285/0x96b6a3e2048db602ffd71e5a2c7351673a77e1f6/); moonriver `0x97b4d169014c15e7a5890123992fa543086e6b51` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | optimism | n/a | `0x43ce612dfadfb98c077e4d0efffa8ad3c82d7fa7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4735d87ecb17e6e0bbfb5e2afbef541643a7968c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4b076884091b24db4d80df0bc4f546b5be8a45df` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5791ca4d6c4b1eaafdb024ab3b0726d3baeae82b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x651a2d5a89c585aa12f2b7bc5fe0e7e8b4825a9d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x68a329ef5f43f92662690b6593722eceef622b27` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8aeb224e73c8bb7dd3b1b9c46ebdd2359b5dc50f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x92dbea6fa85a1cd839b604d1f2852abfb7fa2897` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcb2e195d92e9da36ea1f186b8df09aade31a5dda` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0ac9831587fb816ff4bcd06aa8f4e6eb7f30e9b5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x24ee759a89f2b77af5951bfa22edc2a81f0849a7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7fbfd69ecac51f64c8be36238dbb2f8661313dc2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcb2e195d92e9da36ea1f186b8df09aade31a5dda` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/aizh7QHFZ0AM4JGHZRn6/uploads/j3nsS4VbUkK4j5ucSRq8/Sector_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://1194552491-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Faizh7QHFZ0AM4JGHZRn6%2Fuploads%2Fj3nsS4VbUkK4j5ucSRq8%2FSector_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-12 | stale | Direct | contract_name | 62 | high |
| [spaces/aizh7QHFZ0AM4JGHZRn6/uploads/hOfiANzdgcROK65IdYip/Sector_Finance_New_Strategies_and_Vaults_Upgradeable_Contracts_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://1194552491-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Faizh7QHFZ0AM4JGHZRn6%2Fuploads%2FhOfiANzdgcROK65IdYip%2FSector_Finance_New_Strategies_and_Vaults_Upgradeable_Contracts_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-02 | stale | Direct | contract_name | 24 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x141639034301d5e66dfe6961e8fe173d4d48ef3b`](./contracts/optimism-10/0x141639034301d5e66dfe6961e8fe173d4d48ef3b/) | IMXLendStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x813a1942d4be93e1b33764108b5273b4c8f6c739`](./contracts/moonriver-1285/0x813a1942d4be93e1b33764108b5273b4c8f6c739/) | ScionVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x39d1d72cf5a46176b0cf135720d5b56d0ccf402d`](./contracts/optimism-10/0x39d1d72cf5a46176b0cf135720d5b56d0ccf402d/) | SectorBeacon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x94ea9337db519602ee42aa2238aa1927c96a6989`](./contracts/moonriver-1285/0x94ea9337db519602ee42aa2238aa1927c96a6989/) | USDCmovrSOLARwell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x96b6a3e2048db602ffd71e5a2c7351673a77e1f6`](./contracts/moonriver-1285/0x96b6a3e2048db602ffd71e5a2c7351673a77e1f6/) | VaultUpgradable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
