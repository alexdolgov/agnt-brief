# Agentic Audit Brief: Shoebill Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 4 (1 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Shoebill Finance (`shoebill-finance`)
- Website: [https://shoebill.finance](https://shoebill.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: kaia, manta-pacific, metis, mode
- Contract surface: 21 unique implementations (21 raw deployments)
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

- Indexed contracts: 18; live-surface contracts included: 18 (9 live, 9 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/52 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/9 (11.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 9 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 12 of 21 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/9
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 21
- Raw deployments: 21
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
| CertiK | Tier 2 | 1 | 11.1% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Comptroller | unknown | project_anchor | own_supporting | 0 | mode | unit-254851 | `0x9f53cd...79a3cc` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254820 | `0x033f5e...2fc5d4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254823 | `0x655529...09db0a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254824 | `0x7d02ab...1b3a74` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254826 | `0xc0ef6d...8a0d7b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254827 | `0xcd43a9...4a480d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254828 | `0xe103f8...0779e2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254829 | `0xff2033...1c3a42` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | metis | unit-254816 | `0x2b6647...8a4308` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | metis | unit-254817 | `0x386adc...2883de` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | metis | unit-254819 | `0xb0eee8...9b7a2f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-254843 | `0x4d78c6...f2ffb4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-254846 | `0x616cff...2e0435` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-254849 | `0x8eea9e...04d277` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-254857 | `0xd13be8...840bb3` | ⚠️ Unaudited |
| Unitroller | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254822 | `0x4e4b41...0a9216` | ⚠️ Unaudited |
| Unitroller | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-254825 | `0x9f53cd...79a3cc` | ⚠️ Unaudited |
| Unitroller | unknown | project_anchor | own_supporting | 0 | metis | unit-254818 | `0x9f53cd...79a3cc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-254864 | `0x6ee84c...f2b355` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-254865 | `0xac6a45...715bcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-254866 | `0xee3db1...a22814` | ❓ Unverified |

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
| native | 4 |
| upstream | 0 |
| standard_library | 14 |
| needs_review | 3 |

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
