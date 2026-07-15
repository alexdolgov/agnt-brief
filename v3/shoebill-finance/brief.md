# Agentic Audit Brief: Shoebill Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 4 (1 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Shoebill Finance (`shoebill-finance`)
- Website: [https://shoebill.finance](https://shoebill.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: kaia, kava, manta-pacific, metis, mode, zklink-nova
- Contract surface: 64 unique implementations (121 raw deployments)
- Coverage basis: 1/9 confirmed own live verified implementations (11.1%); conservative 11.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $464,915.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Shoebill Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across arbitrum, ethereum, kaia, linea, manta-pacific, metis, mode, zksync-era. Structural roles: 13 unclassified, 4 core, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: unclassified (13), core (4), supporting (1)
- Contract kinds: contract (18)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Comptroller (`0x9f53cd...79a3cc`, chain 34443)
- TransparentUpgradeableProxy (`0x2b6647...8a4308`, chain 1088)
- TransparentUpgradeableProxy (`0x386adc...2883de`, chain 1088)
- TransparentUpgradeableProxy (`0xb0eee8...9b7a2f`, chain 1088)
- TransparentUpgradeableProxy (`0x4d78c6...f2ffb4`, chain 34443)
- TransparentUpgradeableProxy (`0x616cff...2e0435`, chain 34443)
- TransparentUpgradeableProxy (`0x8eea9e...04d277`, chain 34443)
- TransparentUpgradeableProxy (`0xd13be8...840bb3`, chain 34443)
- Unitroller (`0x9f53cd...79a3cc`, chain 1088)
- UnnamedContract (`0x6ee84c...f2b355`, chain 8217)
- UnnamedContract (`0xac6a45...715bcf`, chain 8217)
- UnnamedContract (`0xee3db1...a22814`, chain 8217)

## Contract Surface Quality

- Logic-topography rows: 18; live-surface rows included: 18 (9 live, 9 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/52 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/9 (11.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 9 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 43 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 12 of 64 unique; 52 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/38
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 0
- Unverified implementations: 26
- Unique implementations: 64
- Raw deployments: 121
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 2.6% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Comptroller | unknown | project_anchor | own_supporting | 0 | mode | unit-254851 | `0x9f53cd...79a3cc` | ✅ Audited |

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BatchTransfer | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x70075f...ebecf4` | ⚠️ Unaudited |
| CErc20Upgradable | token | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 8 deployments: manta-pacific `0x0399bc...531b2b`; manta-pacific `0x5e283a...dc9f6f`; manta-pacific `0x7b41c0...826ed8`; manta-pacific `0xa87a58...692322`; manta-pacific `0xd2eecb...987a49`; manta-pacific `0xf0ea5c...ef97a8`; metis `0x8bc324...cf1169`; metis `0x9c45db...c08f41` | ⚠️ Unaudited |
| CErc20UpgradableMode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x81a679...197761`; mode `0x85300b...6ca751`; mode `0x91995e...b31716` | ⚠️ Unaudited |
| CEtherUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 2 deployments: manta-pacific `0x037d45...7b60c8`; metis `0xd13be8...840bb3` | ⚠️ Unaudited |
| CEtherUpgradeableMode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb762b8...746dbf` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 5 deployments: manta-pacific `0x81a679...197761`; manta-pacific `0xc27f83...e0ac63`; manta-pacific `0xd13be8...840bb3`; metis `0xb7ed6c...0fc306`; mode `0xb7ed6c...0fc306` | ⚠️ Unaudited |
| JumpRateModelV4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 6 deployments: manta-pacific `0xb29b29...405a85`; manta-pacific `0xb79dd6...24cd23`; metis `0x24e4d6...8725f9`; metis `0xb79dd6...24cd23`; mode `0x24e4d6...8725f9`; mode `0xb79dd6...24cd23` | ⚠️ Unaudited |
| MantaOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 5 deployments: manta-pacific `0x30de1a...1cc982`; manta-pacific `0x60bc83...739a14`; manta-pacific `0x704e90...48a12b`; manta-pacific `0xad9dcc...007d2c`; manta-pacific `0xdfc5c7...45e2cf` | ⚠️ Unaudited |
| MetisOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 4 deployments: metis `0x571609...58f234`; metis `0xa4430f...77c4c1`; metis `0xd5e296...bebed8`; metis `0xe89cb9...671d5a` | ⚠️ Unaudited |
| MiningReferral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x91995e...b31716` | ⚠️ Unaudited |
| ModeOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 4 deployments: mode `0x2a9fc6...70cec2`; mode `0x675d67...d7f32e`; mode `0x9aa41c...5a851e`; mode `0xba2222...18a2d6` | ⚠️ Unaudited |
| ModeOraclePyth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x0c5cd5...1d7cb7`; mode `0x2b6647...8a4308` | ⚠️ Unaudited |
| MultiSigWallet | governance | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 5 deployments: manta-pacific `0x8ef62d...02314c`; manta-pacific `0xa658b4...47b301`; manta-pacific `0xe63055...82a313`; metis `0xd618e3...f65eea`; mode `0xeb4090...89202a` | ⚠️ Unaudited |
| ProtocolLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0x675d67...d7f32e`; metis `0xb4bfa0...3b3d52` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 3 deployments: manta-pacific `0x266ca0...0cacf7`; metis `0x266ca0...0cacf7`; mode `0x266ca0...0cacf7` | ⚠️ Unaudited |
| PythPriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x386adc...2883de` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 9 deployments: manta-pacific `0x0c184b...632928`; manta-pacific `0x0e40e1...e52e3a`; manta-pacific `0x1e5147...eaaf7d`; manta-pacific `0x24e4d6...8725f9`; manta-pacific `0x53496f...5ef06c`; manta-pacific `0xa98ec6...009343`; manta-pacific `0xad0856...c44446`; metis `0x8ba76d...9fa897`; mode `0x8ba76d...9fa897` | ⚠️ Unaudited |
| SBLPMode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x4403b3...b1782d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254820 | `0x033f5e...2fc5d4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254823 | `0x655529...09db0a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254824 | `0x7d02ab...1b3a74` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254826 | `0xc0ef6d...8a0d7b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254827 | `0xcd43a9...4a480d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254828 | `0xe103f8...0779e2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254829 | `0xff2033...1c3a42` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 12 deployments: manta-pacific `0x2b6647...8a4308`; manta-pacific `0x613e08...f2cfee`; manta-pacific `0x873cb9...6074be`; manta-pacific `0x9dd10b...3b16c7`; manta-pacific `0xee0161...100b88`; metis `0x0c5cd5...1d7cb7`; metis `0x9dd10b...3b16c7`; mode `0x6afb46...9d8a38`; mode `0x80e813...3308df`; mode `0x9dd10b...3b16c7`; mode `0xd2604d...f66dab`; mode `0xe89cb9...671d5a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | metis | unit-254816 | `0x2b6647...8a4308` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | metis | unit-254817 | `0x386adc...2883de` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | metis | unit-254819 | `0xb0eee8...9b7a2f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-254843 | `0x4d78c6...f2ffb4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-254846 | `0x616cff...2e0435` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-254849 | `0x8eea9e...04d277` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-254857 | `0xd13be8...840bb3` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x3413dc...cf470a` | ⚠️ Unaudited |
| Unitroller | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254822 | `0x4e4b41...0a9216` | ⚠️ Unaudited |
| Unitroller | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254825 | `0x9f53cd...79a3cc` | ⚠️ Unaudited |
| Unitroller | unknown | project_anchor | own_supporting | 0 | metis | unit-254818 | `0x9f53cd...79a3cc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x0322cd...3427e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x1383f1...5085b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x2069b3...42b025` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x2f4712...aa66d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x5d9363...7d588e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x6e9906...585a7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x722731...fd7eae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x8ba76d...9fa897` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x8bc324...cf1169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x9cbc56...c465e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xb4bfa0...3b3d52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xb762b8...746dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xc2da04...79f714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xcb43df...521164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6a869a...9f5ebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x80e813...3308df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8dbf84...d20ec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb42555...f6a811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdf00f0...7671ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-254864 | `0x6ee84c...f2b355` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-254865 | `0xac6a45...715bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kaia | n/a | 2 deployments: kaia `0xba5e3f...fc64de`; kaia `0xd42ad8...579d83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-254866 | `0xee3db1...a22814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x6ec5a5...6098b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb4bfa0...3b3d52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xc39b31...c722a0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Shoebill-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Shoebill-v1.0.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Certik-Shoebill-final-20231121T015445Z.pdf](https://github.com/ShoebillFinance/audit-report/blob/main/Certik-Shoebill-final-20231121T015445Z.pdf) | CertiK | Audit | 2023-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 30 | high |
| [skynet.certik.com/ko/projects/shoebill-finance](https://skynet.certik.com/ko/projects/shoebill-finance) | CertiK | Audit | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [skynet.certik.com/projects/shoebill-finance](https://skynet.certik.com/projects/shoebill-finance) | CertiK | Audit | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13835] PeckShield-Audit-Report-Shoebill-v1.0.pdf — no match: Extracted contract names from findings targets and code listings. Audit date from cover page and latest audit report date.
- [13836] Certik-Shoebill-final-20231121T015445Z.pdf — matched: All 31 files listed in the Audit Scope table are included. The audit date is explicitly stated as 'Assessed on Nov 21st, 2023' on the cover page and in the summary.
- [13837] skynet.certik.com/ko/projects/shoebill-finance — no match: No reason recorded
- [13838] skynet.certik.com/projects/shoebill-finance — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Shoebill-v1.0.pdf | StakedTokenIncentivesController | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-Shoebill-v1.0.pdf | LenderVaults | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-Shoebill-v1.0.pdf | LenderVault | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield-Audit-Report-Shoebill-v1.0.pdf | KokoaKSDVault | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-Shoebill-v1.0.pdf | KlayswapUsdtUsdcVault | unmatched — not counted | — | Target in findings PVE-003 and PVE-007 | no |
| PeckShield-Audit-Report-Shoebill-v1.0.pdf | DAILendVault | unmatched — not counted | — | Example in finding PVE-002 and PVE-004 | no |
| PeckShield-Audit-Report-Shoebill-v1.0.pdf | USDCLendVault | unmatched — not counted | — | Example in finding PVE-006 | no |
| PeckShield-Audit-Report-Shoebill-v1.0.pdf | LendingPoolConfigurator | unmatched — not counted | — | Example in finding PVE-004 | no |
| PeckShield-Audit-Report-Shoebill-v1.0.pdf | ShoebillInternalAsset | unmatched — not counted | — | Referenced in code listings | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | ProtocolLens | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | Ownable | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | PythPriceOracle | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | SimplePriceOracle | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | UniswapPriceOracle | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | CErc20 | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | CErc20Upgradable | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | CEther | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | CEtherUpgradeable | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | CToken | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | CTokenInterfaces | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | Comptroller | own contract | Comptroller (selected) `0x9f53cd...79a3cc` — deployed 2024-03-08 03:21:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik-Shoebill-final-20231121T015445Z.pdf | EIP20NonStandardInterface | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | JumpRateModelV4 | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | RewardDistributor | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | CErc20Immutable | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | PrincipalPool | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | Unitroller | ambiguous — not counted | Unitroller (alternative) `0x9f53cd...79a3cc` — deployed 2024-04-10 09:27:49+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xee3db1...a22814` — liveness: live (current_address_book_code)<br>Comptroller (alternative) `0x9f53cd...79a3cc` — deployed 2024-03-08 03:21:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | BasicLens | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | ChainlinkPriceOracle | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | OraklePriceOracle | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | WitnetPriceOracle | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | ComptrollerInterface | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | ComptrollerStorage | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | EIP20Interface | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | ErrorReporter | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | ExponentialNoError | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | InterestRateModel | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | PriceOracle | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | SafeMath | unmatched — not counted | — | listed in audit scope table | no |
| Certik-Shoebill-final-20231121T015445Z.pdf | StWemixInterface | unmatched — not counted | — | listed in audit scope table | no |
| skynet.certik.com/ko/projects/shoebill-finance | BasicLens.sol | unmatched — not counted | — | — | no |
| skynet.certik.com/ko/projects/shoebill-finance | CErc20.sol | unmatched — not counted | — | — | no |
| skynet.certik.com/ko/projects/shoebill-finance | ProtocolLens.sol | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/shoebill-finance | BasicLens.sol | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/shoebill-finance | CErc20.sol | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/shoebill-finance | ProtocolLens.sol | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | `0x9f53cd...79a3cc` | Unitroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 16 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 44 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=1

Zero-match audit list:

- [13835] PeckShield-Audit-Report-Shoebill-v1.0.pdf
- [13837] skynet.certik.com/ko/projects/shoebill-finance
- [13838] skynet.certik.com/projects/shoebill-finance

Fork inheritance lineage and inherited audits are included when available.
