# Agentic Audit Brief: Index Coop

## Project Overview

- Project: Index Coop (`index-coop`)
- Website: [https://www.indexcoop.com/](https://www.indexcoop.com/)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-18T01:49:47.729Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-ac25
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 41 unique implementations (131 raw deployments)
- DeFi Llama TVL: $9,028,967.64
- On-chain TVL (included contracts): $19,583,143.61
- TVL by chain: Ethereum $19,098,462.31 | Polygon $336,590.84 | Base $148,090.46

## Project Description

Index Coop is an active decentralized asset management protocol focused on automated DeFi structured products, including leverage and yield strategies such as Smart Loops, alongside tokenized products built on SetToken infrastructure. Legacy index products remain part of the historical product set but should be distinguished from the current product focus on automated leverage and yield offerings.

### Architecture

The Bankless GMI and Web3 DATA families are standalone SetTokens that likely rely on the shared infrastructure of the Index Coop family, such as the Controller, IntegrationRegistry, and issuance modules, for their management and lifecycle operations. The Index Coop family itself contains a diverse set of SetTokens and supporting contracts that provide governance, leverage strategies, and exchange issuance capabilities, forming the backbone for all product families.

## Contract Surface Quality

- Indexed contracts: 603; live-surface contracts included: 131 (131 live, 0 unknown).
- Excluded by liveness: 470 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 2/4 live.
- Detected codebases: aave-v2
- Unverified dependencies: 7/154.

## Audit Coverage Summary

- Verified implementations audited: 3/24 (12.5%)
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 41
- Raw deployments: 131
- Audits discovered: 7
- Scoreable audits (matched contracts): 2
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/indexcoop/information))
- ASD (verified + unaudited TVL): $19,583,143.61
- Latest audit: 2024-09 (aging)
- Staleness: 0 fresh, 2 aging, 3 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 8.3% | 2024-09 |
| iosiro | Tier 2 | 1 | 4.2% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DebtIssuanceModuleV2 | unknown | ethereum | n/a | [`0x04b59f...85f0f3`](./contracts/ethereum-1/0x04b59f9f09750c044d7cfbc177561e409085f0f3/) | ✅ Audited |
| Prt | unknown | ethereum | n/a | [`0x99f653...d7a773`](./contracts/ethereum-1/0x99f6539df9840592a862ab916ddc3258a1d7a773/) | ✅ Audited |
| SignedSnapshotStakingPool | core_logic | ethereum | n/a | [`0xbe0302...09a9c6`](./contracts/ethereum-1/0xbe03026716a4d5e0992f22a3e6494b4f2809a9c6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SetToken | token | base | n/a | 44 deployments: ethereum `0x0b498f...801c2b`; ethereum `0x1494ca...ba3c2b`; ethereum `0x1d86fb...68bb08`; ethereum `0x23c3e5...adefd8`; ethereum `0x2af1df...0c7dc6`; ethereum `0x33d63b...4cf5f1`; ethereum `0x341c05...0bb3be`; ethereum `0x36c833...36065e`; ethereum `0x47110d...7eb44f`; ethereum `0x65c4c0...d148a2`; ethereum `0x72e364...d634d7`; ethereum `0x7c07f7...256a84`; ethereum `0xaa6e81...5665bd`; ethereum `0xada0a1...f3ed42`; ethereum `0xc45060...9b99ee`; ethereum `0xc70686...ff6de5`; ethereum `0xd2ac55...fde759`; polygon `0x130ce4...0bb8d2`; polygon `0x340f41...ae6abc`; polygon `0x3ad707...d66473`; polygon `0x4f0258...f1e609`; polygon `0xd6ca86...dbbc14`; polygon `0xf287d9...2c7976`; base [`0x0a0fbd...cdc9c6`](./contracts/base-8453/0x0a0fbd86d2deb53d7c65fecf8622c2fa0dcdc9c6/); base `0x16c469...043571`; base `0x186f3d...c39cde`; base `0x1f4609...685699`; base `0x2f67e4...208d40`; base `0x329f66...272acb`; base `0x32bb8f...d392fc`; base `0x5c6005...a48f73`; base `0x8d08ce...a2dc22`; base `0xc88464...3e35a6`; base `0xc8df82...e739fd`; arbitrum `0x26d7d3...bca43c`; arbitrum `0x3bdd0d...bec0e6`; arbitrum `0x749654...b1c89b`; arbitrum `0x77f691...7712c3`; arbitrum `0x80e58a...c087fc`; arbitrum `0xa0a17b...dfa543`; arbitrum `0xaf0408...878913`; arbitrum `0xe7b1ce...e43ed1`; arbitrum `0xeb5be6...4f59d7`; arbitrum `0xfc01f2...90d6cb` | ⚠️ Unaudited |
| AaveLeverageModule | unknown | ethereum | n/a | [`0x251bd1...5f51dc`](./contracts/ethereum-1/0x251bd1d42df1f153d86a5ba2305faade4d5f51dc/) | ⚠️ Unaudited |
| AaveLeverageStrategyExtension | adapter | ethereum | n/a | [`0xe6484a...2cbc2b`](./contracts/ethereum-1/0xe6484a64e2ea165943c734dc498070b5902cbc2b/) | ⚠️ Unaudited |
| AaveV3LeverageModule | unknown | arbitrum | n/a | 3 deployments: ethereum `0x9d08cc...e9f74f`; base `0xc06a6e...672699`; arbitrum [`0x6d1b74...f2a4ae`](./contracts/arbitrum-42161/0x6d1b74e18064172d028c5ee7af5d0ccc26f2a4ae/) | ⚠️ Unaudited |
| BaseManagerV2 | governance | ethereum | n/a | 10 deployments: ethereum [`0x386034...4db5a3`](./contracts/ethereum-1/0x386034fa078ca1022865f41bdd7d016aae4db5a3/); ethereum `0x3f74f9...573f5f`; ethereum `0x555699...50940b`; ethereum `0x688488...6bdace`; ethereum `0xa29628...098e2f`; ethereum `0xcd483f...918220`; ethereum `0xdfb1e5...22b895`; ethereum `0xe7736b...6b2e03`; ethereum `0xef754f...585769`; ethereum `0xfdb765...fd89f3` | ⚠️ Unaudited |
| BasicIssuanceModule | unknown | ethereum | n/a | [`0xd8ef3c...32f94d`](./contracts/ethereum-1/0xd8ef3cace8b4907117a45b0b125c68560532f94d/) | ⚠️ Unaudited |
| DEXAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x3026eb...a0a860`](./contracts/ethereum-1/0x3026eb2097468fcdc5387af73379948f8aa0a860/); ethereum `0xc43ee8...3f2eb9` | ⚠️ Unaudited |
| ExchangeIssuanceIcEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x40e8e5...2fe8a3`](./contracts/ethereum-1/0x40e8e58052272496dcf42953cf7e699b522fe8a3/); ethereum `0x945db3...f4e2d1` | ⚠️ Unaudited |
| ExchangeIssuanceLeveraged | unknown | polygon | n/a | 2 deployments: ethereum `0x981b21...a794e1`; polygon [`0x783f29...01b16e`](./contracts/polygon-137/0x783f299588ae89e9f44b230d6cd8e349fd01b16e/) | ⚠️ Unaudited |
| ExchangeIssuanceZeroEx | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8760fc...07d7d1`](./contracts/ethereum-1/0x8760fcd90c82e1e95e55047b6b6a0f22dc07d7d1/); ethereum `0xf42ecd...6e4b25` | ⚠️ Unaudited |
| FeeSplitExtension | adapter | ethereum | n/a | 8 deployments: ethereum [`0x1b7d68...c54e74`](./contracts/ethereum-1/0x1b7d68134ef476b7795b22a4d76f82c220c54e74/); ethereum `0x5d6476...39372c`; ethereum `0x623c7b...6e7dee`; ethereum `0x7febfc...d299d0`; ethereum `0x87a120...49e6ca`; ethereum `0x978177...cd373c`; ethereum `0xd17300...4775dd`; ethereum `0xd5a152...fd6bb9` | ⚠️ Unaudited |
| FlashMintHyETHV3 | unknown | ethereum | n/a | [`0xcb1eea...dddf49`](./contracts/ethereum-1/0xcb1eea349f25288627f008c5e2a69b684bdddf49/) | ⚠️ Unaudited |
| FlashMintLeveraged | unknown | ethereum | n/a | 5 deployments: ethereum [`0x45c005...ca45d0`](./contracts/ethereum-1/0x45c00508c14601fd1c1e296eb3c0e3eeedca45d0/); ethereum `0x63bcc1...bf863e`; ethereum `0x766304...ef055d`; ethereum `0x9d116b...1d46ed`; ethereum `0xb4354d...96db48` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-34007 (2 proxies) | 2 deployments: arbitrum [`0x19fa87...0ef7b4`](./contracts/arbitrum-42161/0x19fa8783f2b57f3ec6c9542926a06698e30ef7b4/); arbitrum `0x40fb52...e61d32` | ⚠️ Unaudited |
| IntermediateMigrationExtension | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x9da195...77d907`](./contracts/ethereum-1/0x9da195dbd9446c649b6cb6196d6cc460f277d907/); ethereum `0xa02a2f...1c7a5e` | ⚠️ Unaudited |
| MorphoLeverageModule | unknown | base | n/a | [`0x9534b6...65b8d7`](./contracts/base-8453/0x9534b6ec541ad182fbee2b0b01d1e4404765b8d7/) | ⚠️ Unaudited |
| SetTokenCreator | token | ethereum | n/a | [`0x2758bf...47b75e`](./contracts/ethereum-1/0x2758bf6af0ec63f1710d3d7890e1c263a247b75e/) | ⚠️ Unaudited |
| StreamingFeeModule | unknown | ethereum | n/a | 2 deployments: ethereum [`0x08f866...10cdec`](./contracts/ethereum-1/0x08f866c74205617b6f3903ef481798eced10cdec/); ethereum `0x165edf...b9a186` | ⚠️ Unaudited |
| SupplyCapIssuanceHook | unknown | ethereum | n/a | 19 deployments: ethereum [`0x011095...c0e5c6`](./contracts/ethereum-1/0x0110959c718f70fd2dc01e86566e694391c0e5c6/); ethereum `0x053f22...53fa79`; ethereum `0x245290...bfebe0`; ethereum `0x2c2ab8...1c98ec`; ethereum `0x30e9e6...ee53a3`; ethereum `0x5bca85...830ee5`; ethereum `0x5f22e5...c1cf67`; ethereum `0x64c8e6...862d91`; ethereum `0x97d151...bcc691`; ethereum `0xa727a1...029867`; ethereum `0xa8b29e...f7902d`; ethereum `0xb08089...2c69f5`; ethereum `0xba3bbb...6aff29`; ethereum `0xbc29ac...222cbf`; ethereum `0xca2754...a77220`; ethereum `0xd59fc2...152555`; ethereum `0xe2ea6b...4cd1e6`; ethereum `0xec5a28...cafd82`; ethereum `0xefc5ec...e06f83` | ⚠️ Unaudited |
| TradeModule | unknown | ethereum | n/a | [`0x90f765...41c129`](./contracts/ethereum-1/0x90f765f63e7dc5ae97d6c576bf693fb6af41c129/) | ⚠️ Unaudited |
| VariableDebtToken | token | ethereum | unit-34006 | [`0xf63b34...e33ecf`](./contracts/ethereum-1/0xf63b34710400cad3e044cffdcab00a0f32e33ecf/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1434f1...5c4b25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x186485...b0a706` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x263c23...ec1c05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c2c21...ec9d00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x328967...140010` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5efda1...8fc85f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x653d46...c93a36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85fa4e...cf6b77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x864fea...574c17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89bfd8...d17a41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9865f7...e1ed3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e9a0a...b097d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7937c...400852` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd88e46...fdede8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7a8f8...c61478` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2c421...1846ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3055e...d7bd37` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [IndexIcUSDAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexIcUSDAuditReport.md) | unknown | Audit | 2024-09 | aging | Direct | contract_name | 0 | n/a |
| [IndexPRTAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexPRTAuditReport.md) | unknown | Audit | 2024-07 | aging | Direct | contract_name | 2 | high |
| [IndexDIMv3AuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexDIMv3AuditReport.md) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 0 | n/a |
| [iosiro_set-protocol-aave-leverage-module-audit-draft.md](https://gist.github.com/bernard-wagner/8a96ae7b9746ba8394dc6c16202a6b64) | iosiro | Audit | 2021-09 | stale | Direct | contract_name | 1 | high |
| [code4rena.com/reports/2022-06-notional-coop](https://code4rena.com/reports/2022-06-notional-coop) | Code4rena | Contest | 2022-06 | stale | Direct | contract_name | 0 | n/a |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/indexcoop/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [blog.openzeppelin.com/set-protocol-audit](https://www.openzeppelin.com/news/set-protocol-audit) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x0a0fbd...cdc9c6`](./contracts/base-8453/0x0a0fbd86d2deb53d7c65fecf8622c2fa0dcdc9c6/) | SetToken | token | $19,583,143.61 | Verified native implementation with $19,583,143.61 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x386034...4db5a3`](./contracts/ethereum-1/0x386034fa078ca1022865f41bdd7d016aae4db5a3/) | BaseManagerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8ef3c...32f94d`](./contracts/ethereum-1/0xd8ef3cace8b4907117a45b0b125c68560532f94d/) | BasicIssuanceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3026eb...a0a860`](./contracts/ethereum-1/0x3026eb2097468fcdc5387af73379948f8aa0a860/) | DEXAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40e8e5...2fe8a3`](./contracts/ethereum-1/0x40e8e58052272496dcf42953cf7e699b522fe8a3/) | ExchangeIssuanceIcEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x783f29...01b16e`](./contracts/polygon-137/0x783f299588ae89e9f44b230d6cd8e349fd01b16e/) | ExchangeIssuanceLeveraged | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8760fc...07d7d1`](./contracts/ethereum-1/0x8760fcd90c82e1e95e55047b6b6a0f22dc07d7d1/) | ExchangeIssuanceZeroEx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b7d68...c54e74`](./contracts/ethereum-1/0x1b7d68134ef476b7795b22a4d76f82c220c54e74/) | FeeSplitExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb1eea...dddf49`](./contracts/ethereum-1/0xcb1eea349f25288627f008c5e2a69b684bdddf49/) | FlashMintHyETHV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45c005...ca45d0`](./contracts/ethereum-1/0x45c00508c14601fd1c1e296eb3c0e3eeedca45d0/) | FlashMintLeveraged | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9da195...77d907`](./contracts/ethereum-1/0x9da195dbd9446c649b6cb6196d6cc460f277d907/) | IntermediateMigrationExtension | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2758bf...47b75e`](./contracts/ethereum-1/0x2758bf6af0ec63f1710d3d7890e1c263a247b75e/) | SetTokenCreator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08f866...10cdec`](./contracts/ethereum-1/0x08f866c74205617b6f3903ef481798eced10cdec/) | StreamingFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x011095...c0e5c6`](./contracts/ethereum-1/0x0110959c718f70fd2dc01e86566e694391c0e5c6/) | SupplyCapIssuanceHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90f765...41c129`](./contracts/ethereum-1/0x90f765f63e7dc5ae97d6c576bf693fb6af41c129/) | TradeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 5 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=40

Zero-match audit list:

- [2024] IndexIcUSDAuditReport.md
- [2026] IndexDIMv3AuditReport.md
- [3581] code4rena.com/reports/2022-06-notional-coop
- [14852] blog.openzeppelin.com/set-protocol-audit

Fork inheritance lineage and inherited audits are included when available.
