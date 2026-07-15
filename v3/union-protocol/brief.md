# Agentic Audit Brief: Union Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 46 across 9 audit(s)
- Eligible audit results: 10 (9 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Union Protocol (`union-protocol`)
- Website: [https://union.finance](https://union.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 53 unique implementations (53 raw deployments)
- Coverage basis: 2/3 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $398,973.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Union Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, base, ethereum, optimism. Structural roles: 2 infra, 1 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: infra (2), core (1)
- Contract kinds: contract (3)
- Detected standards: erc1967proxy (2), erc20permit (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6d44e3...7c6d0c`, chain 10)
- UnnamedContract (`0x8e195d...597628`, chain 10)
- UnnamedContract (`0x946a2c...d29d96`, chain 10)
- UnnamedContract (`0x9b8d60...5a1343`, chain 10)
- UnnamedContract (`0xb025ee...13f4f9`, chain 10)
- UnnamedContract (`0xe478b5...a744b2`, chain 10)
- UnnamedContract (`0xe4addf...b49823`, chain 10)
- AaveV3Adapter (`0x9c69fc...41350b`, chain 10)
- Comptroller (`0x06a31e...c9d6e3`, chain 10)
- Dai (`0xda1000...000da1`, chain 10)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/19 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/3 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 43 discovered implementations excluded (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Deployed-live implementations: 10 of 53 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 53
- Raw deployments: 53
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 66.7% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 2 | 66.7% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3Adapter | unknown | project_anchor | own_supporting | 1 | optimism | unit-395305 | `0x9c69fc...41350b` | ✅ Audited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | optimism | unit-395307 | `0x06a31e...c9d6e3` | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe8c77a...e4012d` | ⚠️ Unaudited |
| ArbConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307ed8...99032a` | ⚠️ Unaudited |
| ArbUnion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x125e90...c4abc4` | ⚠️ Unaudited |
| ArbUnionWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fed52...f8f631` | ⚠️ Unaudited |
| AssetManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35abd1...948542` | ⚠️ Unaudited |
| ClubMemberNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a0fe2...50cc87` | ⚠️ Unaudited |
| ClubMemberNFTV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x27be78...ab211b` | ⚠️ Unaudited |
| CompoundAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x303cbd...b860d5` | ⚠️ Unaudited |
| Dai | unknown | project_anchor | own_supporting | 0 | optimism | unit-395281 | `0xda1000...000da1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x46a48d...525e85` | ⚠️ Unaudited |
| FixedInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x051e25...ce99ea` | ⚠️ Unaudited |
| MarketRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1ddb9a...1ae6be` | ⚠️ Unaudited |
| OpOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20473a...1b88e8` | ⚠️ Unaudited |
| OpUNION | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c613e...5abf12` | ⚠️ Unaudited |
| PureTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x62dd06...057b7d` | ⚠️ Unaudited |
| Referral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x50fe90...12e6da` | ⚠️ Unaudited |
| RegisterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x268366...1d9b49` | ⚠️ Unaudited |
| RewardsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x0bea69...a11894` | ⚠️ Unaudited |
| SumOfTrust | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x754ae2...5a90a2` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02ca19...c70b08` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbd332...3294d8` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dbde0...34b4b9` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x641dd6...549fe1` | ⚠️ Unaudited |
| UDai | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x109b00...ae40ae` | ⚠️ Unaudited |
| UErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x46a260...103e65` | ⚠️ Unaudited |
| UnionClubPlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1b1688...187004` | ⚠️ Unaudited |
| UnionClubPluginV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b362f...792e18` | ⚠️ Unaudited |
| UnionClubPluginV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x60659a...fae7e5` | ⚠️ Unaudited |
| UnionClubPluginV3_5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x180ae9...c8b6f1` | ⚠️ Unaudited |
| UnionGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x011e58...328884` | ⚠️ Unaudited |
| UnionLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97f890...768b19` | ⚠️ Unaudited |
| UnionToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dfe42...85535c` | ⚠️ Unaudited |
| UserManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x49c910...31c195` | ⚠️ Unaudited |
| UserManagerArb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x011e58...328884` | ⚠️ Unaudited |
| UserManagerOp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x13caca...528690` | ⚠️ Unaudited |
| VouchNote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4c52c9...f8aaba` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x01cc03...3576ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x036cbd...3dcf7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0d2513...a71886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x311b84...71492a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4aa486...5cc8c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395271 | `0x6d44e3...7c6d0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x84cee1...96edb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395273 | `0x8e195d...597628` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395275 | `0x946a2c...d29d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x95bb25...4521c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395277 | `0x9b8d60...5a1343` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395279 | `0xb025ee...13f4f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc12404...9c4769` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395283 | `0xe478b5...a744b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395285 | `0xe4addf...b49823` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2023.03.21 - Final - Union Finance Update Audit Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/main/audits/2023.03.21%20-%20Final%20-%20Union%20Finance%20Update%20Audit%20Report.pdf) | Sherlock | Contest | 2023-03 | stale | Direct | contract_name | matched | 8 | 2 | 0 | 22 | high |
| [2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/main/audits/2024.07.13%20-%20Final%20-%20Union%20Finance%20Update%202%20Audit%20Report.pdf) | Sherlock | Contest | 2024-07 | stale | Direct | contract_name | matched | 3 | 1 | 0 | 5 | high |
| [2022-10-union-finance-judging (GitHub directory)](https://github.com/sherlock-audit/2022-10-union-finance-judging) | Sherlock | Contest | 2022-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2023-02-union-judging (GitHub directory)](https://github.com/sherlock-audit/2023-02-union-judging) | Sherlock | Contest | 2023-02 | stale | Direct | contract_name | matched | 3 | 1 | 0 | 1 | medium |
| [2024-06-union-finance-update-2-judging (GitHub directory)](https://github.com/sherlock-audit/2024-06-union-finance-update-2-judging) | Sherlock | Contest | 2024-06 | stale | Direct | contract_name | matched | 3 | 1 | 0 | 5 | medium |
| [Audit_Report.pdf (also discovered via alternate URL)](https://github.com/sherlock-audit/2023-02-union-judging/blob/main/Audit_Report.pdf) | Sherlock | Contest | 2023-03 | stale | Direct | contract_name | matched | 8 | 2 | 0 | 27 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21467] 2023.03.21 - Final - Union Finance Update Audit Report.pdf — matched: Scope section lists all contract file names. Audit date is 'Prepared on: March 20, 2023'.
- [21468] 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf — matched: Extracted from the audit report header and findings. The report states 'Prepared on: September17,2024' as the date. Contracts in scope are identified from the repository and branch mentioned, and from the findings which reference specific contract files.
- [21469] 2022-10-union-finance-judging (GitHub directory) — no match: The provided text is a GitHub repository page for a Sherlock audit judging repo, not the actual audit report. No contract names or audit date are present.
- [21470] 2023-02-union-judging (GitHub directory) — matched: No explicit scope section found; contracts extracted from findings and file paths in the audit report.
- [21471] 2024-06-union-finance-update-2-judging (GitHub directory) — matched: Extracted contract names from findings and file paths in the audit report. No explicit scope section found; date inferred from repository name '2024-06-union-finance-update-2-judging' as end of June 2024.
- [28560] Audit_Report.pdf — matched: Scope section lists all contract file names. Audit date is 'Prepared on: March20,2023'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IAssetManager | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IDai | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IMarketRegistry | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IUDai | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IUnionToken | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | Controller | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | OpOwner | own contract | 0x946a2c… (selected) `0x946a2c...d29d96` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | UnionLens | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | AaveV3Adapter | own proxy deployment | AaveV3Adapter (proxy) (selected) `0x9c69fc...41350b` — deployed 2023-04-25 07:07:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | AssetManager | own contract | 0xe4addf… (selected) `0xe4addf...b49823` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | PureTokenAdapter | own contract | 0x9b8d60… (selected) `0x9b8d60...5a1343` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IComptroller | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IInterestRateModel | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IMoneyMarketAdapter | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IUToken | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IUserManager | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | FixedInterestRateModel | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | MarketRegistry | own contract | 0x6d44e3… (selected) `0x6d44e3...7c6d0c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | UDai | own contract | 0xe478b5… (selected) `0xe478b5...a744b2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | UErc20 | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | UToken | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | Comptroller | own proxy deployment | Comptroller (proxy) (selected) `0x06a31e...c9d6e3` — deployed 2023-04-25 07:02:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | OpConnector | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | OpUNION | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | Whitelistable | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | UserManager | own contract | 0x8e195d… (selected) `0x8e195d...597628` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | UserManagerDAI | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | UserManagerERC20 | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | UserManagerOp | unmatched — not counted | — | listed in scope | no |
| 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf | Comptroller | own proxy deployment | Comptroller (proxy) (selected) `0x06a31e...c9d6e3` — deployed 2023-04-25 07:02:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf | UserManager | own contract | 0x8e195d… (selected) `0x8e195d...597628` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf | VouchFaucet | unmatched — not counted | — | listed in scope and findings | no |
| 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf | UErc20 | unmatched — not counted | — | listed in scope and findings | no |
| 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf | UToken | unmatched — not counted | — | listed in scope and findings | no |
| 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf | UDai | own contract | 0xe478b5… (selected) `0xe478b5...a744b2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf | ERC1155Voucher | unmatched — not counted | — | listed in scope and findings | no |
| 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf | ScaledDecimalBase | unmatched — not counted | — | mentioned in finding M-5 | no |
| 2023-02-union-judging (GitHub directory) | UserManager | own contract | 0x8e195d… (selected) `0x8e195d...597628` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-02-union-judging (GitHub directory) | UToken | unmatched — not counted | — | mentioned in findings H-2, H-3, M-4, M-5 | no |
| 2023-02-union-judging (GitHub directory) | Comptroller | own proxy deployment | Comptroller (proxy) (selected) `0x06a31e...c9d6e3` — deployed 2023-04-25 07:02:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-02-union-judging (GitHub directory) | AssetManager | own contract | 0xe4addf… (selected) `0xe4addf...b49823` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-union-finance-update-2-judging (GitHub directory) | Comptroller | own proxy deployment | Comptroller (proxy) (selected) `0x06a31e...c9d6e3` — deployed 2023-04-25 07:02:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-union-finance-update-2-judging (GitHub directory) | UserManager | own contract | 0x8e195d… (selected) `0x8e195d...597628` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-union-finance-update-2-judging (GitHub directory) | VouchFaucet | unmatched — not counted | — | mentioned in findings H-2, M-1, M-3 | no |
| 2024-06-union-finance-update-2-judging (GitHub directory) | UErc20 | unmatched — not counted | — | mentioned in finding H-3 | no |
| 2024-06-union-finance-update-2-judging (GitHub directory) | UToken | unmatched — not counted | — | mentioned in findings H-3, M-4, M-5 | no |
| 2024-06-union-finance-update-2-judging (GitHub directory) | UDai | own contract | 0xe478b5… (selected) `0xe478b5...a744b2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-union-finance-update-2-judging (GitHub directory) | ERC1155Voucher | unmatched — not counted | — | mentioned in findings M-1, M-2 | no |
| 2024-06-union-finance-update-2-judging (GitHub directory) | ScaledDecimalBase | unmatched — not counted | — | mentioned in finding M-5 | no |
| Audit_Report.pdf | Comptroller | own proxy deployment | Comptroller (proxy) (selected) `0x06a31e...c9d6e3` — deployed 2023-04-25 07:02:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | UserManager | own contract | 0x8e195d… (selected) `0x8e195d...597628` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | VouchFaucet | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | UErc20 | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | UToken | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | UDai | own contract | 0xe478b5… (selected) `0xe478b5...a744b2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | ERC1155Voucher | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | ScaledDecimalBase | unmatched — not counted | — | mentioned in findings | no |
| Audit_Report.pdf | Controller | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | UnionLens | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | AaveV3Adapter | own proxy deployment | AaveV3Adapter (proxy) (selected) `0x9c69fc...41350b` — deployed 2023-04-25 07:07:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | AssetManager | own contract | 0xe4addf… (selected) `0xe4addf...b49823` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | PureTokenAdapter | own contract | 0x9b8d60… (selected) `0x9b8d60...5a1343` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | IAssetManager | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IComptroller | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IDai | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IInterestRateModel | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IMarketRegistry | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IMoneyMarketAdapter | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IUDai | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IUToken | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IUnionToken | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IUserManager | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | AMarket3 | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | LendingPool3 | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | FixedInterestRateModel | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | MarketRegistry | own contract | 0x6d44e3… (selected) `0x6d44e3...7c6d0c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | UserManagerDAI | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | UserManagerERC20 | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | OpOwner | own contract | 0x946a2c… (selected) `0x946a2c...d29d96` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | OpConnector | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | OpUNION | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | Whitelistable | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | UserManagerOp | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0xda1000...000da1` | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 25 own (7 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 60 unmatched
- Matched-own operational status: 25 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1, medium=2
- Match method counts: unique_name=46

Zero-match audit list:

- [21469] 2022-10-union-finance-judging (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
