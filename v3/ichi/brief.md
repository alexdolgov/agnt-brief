# Agentic Audit Brief: ICHI

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 10 (0 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: ICHI (`ichi`)
- Website: [https://www.ichi.org](https://www.ichi.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, blast, bsc, celo, ethereum, fantom, kava, linea, mantle, opbnb, polygon, polygon-zkevm, scroll, zksync-era
- Contract surface: 35 unique implementations (35 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $9,684,904.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for ICHI. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, avalanche, base, blast, bsc, celo, ethereum, fantom, kava, linea, mantle, opbnb, polygon, polygon-zkevm, scroll, zksync-era. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 34 contracts are derived from known codebases. 34 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5a40df...f26112`, chain 1)
- UnnamedContract (`0x8dd509...715094`, chain 1)
- UnnamedContract (`0xeaec81...832b3e`, chain 1)
- UnnamedContract (`0x065356...0f51b7`, chain 56)
- UnnamedContract (`0xac9314...f5d501`, chain 56)
- UnnamedContract (`0x117005...db6e8a`, chain 137)
- UnnamedContract (`0x2d2c72...a73fc0`, chain 137)
- UnnamedContract (`0xb2f44d...2a5da7`, chain 137)
- UnnamedContract (`0xadda3a...6035f1`, chain 204)
- UnnamedContract (`0x8a76c2...b94148`, chain 324)
- UnnamedContract (`0x797ebb...432433`, chain 5000)
- UnnamedContract (`0x92bce3...effe5b`, chain 5000)
- UnnamedContract (`0xbbb97d...f46ad3`, chain 5000)
- UnnamedContract (`0xabe5b5...8ab3b3`, chain 8453)
- UnnamedContract (`0xfbf389...607065`, chain 8453)
- UnnamedContract (`0xedac86...fb44a6`, chain 42161)
- UnnamedContract (`0xfbf389...607065`, chain 42161)
- UnnamedContract (`0x9fab4b...d7418f`, chain 42220)
- UnnamedContract (`0xdd2346...9dc72d`, chain 43114)
- UnnamedContract (`0x0248b9...9cfe4b`, chain 59144)
- UnnamedContract (`0x259268...00195e`, chain 59144)
- UnnamedContract (`0x6e3eb9...772b53`, chain 59144)
- UnnamedContract (`0xa29f3d...4f544e`, chain 59144)
- UnnamedContract (`0xb0e787...70a6e7`, chain 59144)
- UnnamedContract (`0x2145b1...1ead93`, chain 81457)
- UnnamedContract (`0x9fab4b...d7418f`, chain 81457)
- UnnamedContract (`0xb42d59...114f15`, chain 81457)
- UnnamedContract (`0x9fab4b...d7418f`, chain 534352)
- UnnamedContract (`0xb42d59...114f15`, chain 534352)
- UnnamedContract (`0x89ffda...fa5f34`, chain 250)
- UnnamedContract (`0x932e19...b95c5e`, chain 250)
- UnnamedContract (`0x1721cb...8115b1`, chain 1101)
- UnnamedContract (`0xe8532d...b8c23f`, chain 1101)
- UnnamedContract (`0x2d2c72...a73fc0`, chain 2222)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (0 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 34/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 34 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 34 of 35 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 35
- Raw deployments: 35
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| IchiV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-242402 | `0x111111...6bc4d6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242403 | `0x5a40df...f26112` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242404 | `0x8dd509...715094` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242405 | `0xeaec81...832b3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242425 | `0x065356...0f51b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242426 | `0xac9314...f5d501` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242408 | `0x117005...db6e8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242409 | `0x2d2c72...a73fc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242410 | `0xb2f44d...2a5da7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-242411 | `0xadda3a...6035f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-242413 | `0x89ffda...fa5f34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-242414 | `0x932e19...b95c5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-242415 | `0x8a76c2...b94148` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-242406 | `0x1721cb...8115b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-242407 | `0xe8532d...b8c23f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-242412 | `0x2d2c72...a73fc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-242420 | `0x797ebb...432433` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-242421 | `0x92bce3...effe5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-242422 | `0xbbb97d...f46ad3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-242435 | `0xabe5b5...8ab3b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-242436 | `0xfbf389...607065` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242416 | `0xedac86...fb44a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242417 | `0xfbf389...607065` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-242418 | `0x9fab4b...d7418f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242419 | `0xdd2346...9dc72d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242427 | `0x0248b9...9cfe4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242428 | `0x259268...00195e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242429 | `0x6e3eb9...772b53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242430 | `0xa29f3d...4f544e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242431 | `0xb0e787...70a6e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242432 | `0x2145b1...1ead93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242433 | `0x9fab4b...d7418f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242434 | `0xb42d59...114f15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-242423 | `0x9fab4b...d7418f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-242424 | `0xb42d59...114f15` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CertiK Audit Report for ICHI - FarmV2.pdf](https://github.com/ichifarm/ichi-farming/blob/main/audits/CertiK%20Audit%20Report%20for%20ICHI%20-%20FarmV2.pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [audit.pdf (also discovered via alternate URL)](https://github.com/ichifarm/ichi-oneToken/blob/master/audits/quantstamp/audit.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 33 | high |
| [skynet.certik.com/projects/ichi](https://skynet.certik.com/projects/ichi) | CertiK | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [de.fi/audit-database/defiyield/ichi](https://de.fi/audit-database/defiyield/ichi) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [audit (GitHub directory)](https://github.com/ichifarm/audit) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view](https://drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view?usp=sharing) | CertiK | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [drive.google.com/file/d/1YyK49Hbo2DqFVzDMYwQLLl-56_uCHIPR/view](https://drive.google.com/file/d/1YyK49Hbo2DqFVzDMYwQLLl-56_uCHIPR/view?usp=drive_link) | FYEO: Quality Assessment | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Ichi_Farm_Audit_Bramah.pdf](https://github.com/ichifarm/audit/blob/main/Ichi_Farm_Audit_Bramah.pdf) | Bramah | Audit | 2020-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 29 | n/a |
| [quantstamp (GitHub directory)](https://github.com/ichifarm/ichi-oneToken/blob/master/audits/quantstamp) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [6948] CertiK Audit Report for ICHI - FarmV2.pdf — no match: Only one contract in scope: ichiFarmV1.sol. Date inferred from 'Apr 1st, 2023' in header.
- [11799] audit.pdf — no match: All contracts mentioned in findings are in scope; audit date from title and final debrief date.
- [11801] skynet.certik.com/projects/ichi — no match: No reason recorded
- [11802] de.fi/audit-database/defiyield/ichi — no match: The provided text is not an audit report; it appears to be a snippet from a web page requiring JavaScript. No contract names or audit date could be extracted.
- [11803] audit (GitHub directory) — no match: The provided text is a GitHub repository page with no audit report content. No contracts or dates could be extracted.
- [11804] drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view — no match: Scope table lists 7 files; audit date from cover page 'October 2023' and testing end date October 10, 2023.
- [11805] drive.google.com/file/d/1YyK49Hbo2DqFVzDMYwQLLl-56_uCHIPR/view — no match: The report is a code quality and due diligence assessment, not a smart contract audit. It does not list specific contracts in scope. No contract names or audit date were found.
- [11806] Ichi_Farm_Audit_Bramah.pdf — no match: No reason recorded
- [11807] quantstamp (GitHub directory) — no match: The provided text is a GitHub page listing a PDF file named 'audit.pdf' but does not contain the actual audit report content. No contract names or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| CertiK Audit Report for ICHI - FarmV2.pdf | ichiFarmV1 | unmatched — not counted | — | listed in scope table and findings | no |
| audit.pdf | AddressSet | unmatched — not counted | — | — | no |
| audit.pdf | Arbitrary | unmatched — not counted | — | listed in findings | no |
| audit.pdf | CollateralToken | unmatched — not counted | — | — | no |
| audit.pdf | ControllerCommon | unmatched — not counted | — | — | no |
| audit.pdf | DummyMintMaster | unmatched — not counted | — | — | no |
| audit.pdf | ICHICommon | unmatched — not counted | — | — | no |
| audit.pdf | ICHICompositeOracle | unmatched — not counted | — | listed in findings | no |
| audit.pdf | ICHIERC20 | unmatched — not counted | — | — | no |
| audit.pdf | ICHIERC20Burnable | unmatched — not counted | — | — | no |
| audit.pdf | ICHIInitializable | unmatched — not counted | — | — | no |
| audit.pdf | ICHIModuleCommon | unmatched — not counted | — | — | no |
| audit.pdf | ICHIOwnable | unmatched — not counted | — | — | no |
| audit.pdf | ICHIPeggedOracle | unmatched — not counted | — | — | no |
| audit.pdf | Incremental | unmatched — not counted | — | listed in findings | no |
| audit.pdf | MemberToken | unmatched — not counted | — | — | no |
| audit.pdf | MintMasterCommon | unmatched — not counted | — | — | no |
| audit.pdf | NullController | unmatched — not counted | — | — | no |
| audit.pdf | NullStrategy | unmatched — not counted | — | — | no |
| audit.pdf | OneTokenFactory | unmatched — not counted | — | — | no |
| audit.pdf | OneTokenProxy | unmatched — not counted | — | — | no |
| audit.pdf | OneTokenProxyAdmin | unmatched — not counted | — | — | no |
| audit.pdf | OneTokenV1 | unmatched — not counted | — | listed in findings | no |
| audit.pdf | OneTokenV1Base | unmatched — not counted | — | listed in findings | no |
| audit.pdf | OracleCommon | unmatched — not counted | — | — | no |
| audit.pdf | SetTest | unmatched — not counted | — | — | no |
| audit.pdf | StrategyCommon | unmatched — not counted | — | listed in findings | no |
| audit.pdf | TestController | unmatched — not counted | — | — | no |
| audit.pdf | TestMintMaster | unmatched — not counted | — | — | no |
| audit.pdf | TestOracle | unmatched — not counted | — | — | no |
| audit.pdf | Token18 | unmatched — not counted | — | — | no |
| audit.pdf | Token6 | unmatched — not counted | — | — | no |
| audit.pdf | Token9 | unmatched — not counted | — | — | no |
| audit.pdf | UniswapOracleSimple | unmatched — not counted | — | listed in findings | no |
| skynet.certik.com/projects/ichi | IchiV2 | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/ichi | Timelock | unmatched — not counted | — | — | no |
| drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view | TestOracle | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view | TestERC20 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view | ITestOracle | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view | ICHIVaultDeployer | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view | UV3Math | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view | ICHIVault | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view | ICHIVaultFactory | unmatched — not counted | — | listed in scope table | no |
| Ichi_Farm_Audit_Bramah.pdf | HitchensList | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | IERC20 | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | IUniswapV2Callee | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | IUniswapV2ERC20 | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | IUniswapV2Factory | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | IUniswapV2Pair | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | IUniswapV2Router01 | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | IUniswapV2Router02 | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | IWETH | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | Math | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | SafeMath | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | SafeMathInt | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | SortedList | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | Timelock | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | TransferHelper | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | UQ112x112 | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | UniswapV2ERC20 | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | UniswapV2Factory | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | UniswapV2Library | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | UniswapV2Pair | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | UniswapV2Router02 | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | governorAlpha | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | ichiBuyer | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | ichiFarm | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | ichiStake | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | ichiToken | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | oneETH | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | oneFactor | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | uniswapV2Oracle | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 72 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=4
- Match method counts: n/a

Zero-match audit list:

- [6948] CertiK Audit Report for ICHI - FarmV2.pdf
- [11799] audit.pdf
- [11801] skynet.certik.com/projects/ichi
- [11802] de.fi/audit-database/defiyield/ichi
- [11803] audit (GitHub directory)
- [11804] drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view
- [11805] drive.google.com/file/d/1YyK49Hbo2DqFVzDMYwQLLl-56_uCHIPR/view
- [11806] Ichi_Farm_Audit_Bramah.pdf
- [11807] quantstamp (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
