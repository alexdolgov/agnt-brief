# Agentic Audit Brief: Sperax

## Export Authority

- Production state: **published scope**
- Raw selected rows: 24 across 5 audit(s)
- Eligible audit results: 9 (5 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Sperax (`sperax`)
- Website: [http://sperax.io](http://sperax.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum
- Contract surface: 24 unique implementations (24 raw deployments)
- Coverage basis: 3/9 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,765,659.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sperax. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, bsc, ethereum. Structural roles: 6 core, 2 supporting, 1 unclassified. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (6), supporting (2), unclassified (1)
- Contract kinds: contract (9)
- Detected standards: ownable (6), erc20 (3), erc1967proxy (2), pausable (2)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 23 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xbf82a3...e7f403`, chain 1)
- UnnamedContract (`0x1a9fd6...a379b1`, chain 56)
- UnnamedContract (`0x14d994...6e8e50`, chain 42161)
- UnnamedContract (`0x212208...8226b8`, chain 42161)
- UnnamedContract (`0x297331...37beec`, chain 42161)
- UnnamedContract (`0x45bc6b...e222e0`, chain 42161)
- UnnamedContract (`0x6bbc47...6f74ca`, chain 42161)
- UnnamedContract (`0x926477...e1bdd3`, chain 42161)
- UnnamedContract (`0x974993...9f3388`, chain 42161)
- UnnamedContract (`0xb9c910...daa136`, chain 42161)
- UnnamedContract (`0xbceb48...a82442`, chain 42161)
- UnnamedContract (`0xd12284...558afc`, chain 42161)
- UnnamedContract (`0xd50193...a044c1`, chain 42161)
- UnnamedContract (`0xda423b...faedf0`, chain 42161)
- UnnamedContract (`0xfbc0d3...77afe3`, chain 42161)
- SperaxToken (`0xb4a3b0...d59008`, chain 1)
- SperaxTokenL1 (`0x2a95fe...f770cb`, chain 1)
- SperaxTokenL2 (`0x557555...40ad4b`, chain 42161)
- TransparentUpgradeableProxy (`0x2e2071...5f6a17`, chain 42161)
- TUP (`0x0966e7...b9ccc3`, chain 42161)
- veSPA_v1 (`0xa3f874...b8ff8d`, chain 1)
- veSPA_v1 (`0xd16f53...69d165`, chain 42161)
- YieldReserve (`0xfd14c8...29d861`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 24/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/9 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 24 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 24 of 24 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/9
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 24
- Raw deployments: 24
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 13 match-unverified
- Tier 1 coverage: 11.1% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 2 | 22.2% | 2023-12 |
| unknown | Tier 2 | 2 | 22.2% | 2024-06 |
| SlowMist | Tier 1 | 1 | 11.1% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SperaxTokenL2 | token | project_anchor | own_supporting | 0 | arbitrum | unit-256338 | `0x557555...40ad4b` | ✅ Audited |
| USDs | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-256350 | `0xd74f52...2d5748` | ✅ Audited |
| YieldReserve | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256348 | `0xfd14c8...29d861` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SperaxToken | token | project_anchor | own_supporting | 0 | ethereum | unit-256332 | `0xb4a3b0...d59008` | ⚠️ Unaudited |
| SperaxTokenL1 | token | project_anchor | own_supporting | 0 | ethereum | unit-256330 | `0x2a95fe...f770cb` | ⚠️ Unaudited |
| veSPA | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-256352 | `0x2e2071...5f6a17` | ⚠️ Unaudited |
| veSPA_v1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256331 | `0xa3f874...b8ff8d` | ⚠️ Unaudited |
| veSPA_v1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256345 | `0xd16f53...69d165` | ⚠️ Unaudited |
| xSPA | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-256353 | `0x0966e7...b9ccc3` | ⚠️ Unaudited |

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
| SPABuyback | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-256351 | `0xfbc0d3...77afe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256333 | `0xbf82a3...e7f403` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256349 | `0x1a9fd6...a379b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256334 | `0x14d994...6e8e50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256335 | `0x212208...8226b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256336 | `0x297331...37beec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256337 | `0x45bc6b...e222e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256339 | `0x6bbc47...6f74ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256340 | `0x926477...e1bdd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256341 | `0x974993...9f3388` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256342 | `0xb9c910...daa136` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256343 | `0xbceb48...a82442` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256344 | `0xd12284...558afc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256346 | `0xd50193...a044c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256347 | `0xda423b...faedf0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Demeter_PeckShield_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/Demeter_PeckShield_1.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Sperax - USDs - Report (1).pdf](https://github.com/Sperax/Audit_Reports/blob/main/Sperax%20-%20USDs%20-%20Report%20(1).pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | matched | 10 | 2 | 0 | 10 | n/a |
| [Demeter Audit Final Report.pdf](https://github.com/Sperax/Audit_Reports/blob/main/Demeter%20Audit%20Final%20Report.pdf) | Unknown | Audit | 2024-06 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 13 | high |
| [LM_Certik_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/LM_Certik_1.pdf) | CertiK | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [SPA_Certik_2.pdf](https://github.com/Sperax/Audit_Reports/blob/main/SPA_Certik_2.pdf) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [USDs_Quantstamp.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Quantstamp.pdf) | Quantstamp | Audit | 2023-12 | stale | Direct | n/a | matched | 10 | 2 | 0 | 8 | n/a |
| [USDs_Slowmist_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Slowmist_1.pdf) | SlowMist | Audit | 2021-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 10 | n/a |
| [USDs_Slowmist_2.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Slowmist_2.pdf) | SlowMist | Audit | 2021-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 10 | n/a |
| [veSPA_PeckShield_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/veSPA_PeckShield_1.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2888] Demeter_PeckShield_1.pdf — no match: Only one contract name 'Farm' is explicitly mentioned as a target in findings. No scope table or file listing provided.
- [2889] Sperax - USDs - Report (1).pdf — matched: No reason recorded
- [2890] Demeter Audit Final Report.pdf — matched: Extracted 15 contract names from the Scope Files Included section. Audit date from timeline: 2024-06-05 through 2024-06-12, using end date.
- [2891] LM_Certik_1.pdf — no match: Only one contract file is listed in the scope table: farm_SPA_USDs.sol. The report also mentions LPVesting and LPStaking as contracts but they are not in the scope table; they are referenced in findings. The audit date is from the delivery date.
- [2892] SPA_Certik_2.pdf — no match: Only one contract file is in scope: SPA_ERC20_new.sol. The audit date is explicitly stated as 'Delivery Date Nov 18, 2021'.
- [2893] USDs_Quantstamp.pdf — matched: No reason recorded
- [2894] USDs_Slowmist_1.pdf — matched: No reason recorded
- [2895] USDs_Slowmist_2.pdf — matched: No reason recorded
- [2896] veSPA_PeckShield_1.pdf — no match: Contracts identified from findings targets; no explicit scope section found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Demeter_PeckShield_1.pdf | Farm | unmatched — not counted | — | Target of findings PVE-001 and PVE-002 | no |
| Sperax - USDs - Report (1).pdf | AaveStrategy | own contract | 0x974993… (selected) `0x974993...9f3388` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | BaseUniOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | CollateralManager | own contract | 0xda423b… (selected) `0xda423b...faedf0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | CompoundStrategy | own contract | 0xbceb48… (selected) `0xbceb48...a82442` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | Dripper | own contract | 0xd50193… (selected) `0xd50193...a044c1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | FeeCalculator | own contract | 0xd12284… (selected) `0xd12284...558afc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | Helpers | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | InitializableAbstractStrategy | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | MasterPriceOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | RebaseManager | own contract | 0x297331… (selected) `0x297331...37beec` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | SPABuyback | own proxy deployment | SPABuyback (proxy) (selected) `0xfbc0d3...77afe3` — deployed 2022-10-04 16:32:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | SPAOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | StableMath | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | StargateStrategy | own contract | 0xb9c910… (selected) `0xb9c910...daa136` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | USDs | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd74f52...2d5748` — deployed 2021-12-23 05:42:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | USDsOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | VSTOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | VaultCore | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | YieldReserve | own contract | YieldReserve (selected) `0xfd14c8...29d861` — deployed 2024-01-11 16:25:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Demeter Audit Final Report.pdf | Farm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | FarmStorage | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | FarmDeployer | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | FarmRegistry | own contract | 0x45bc6b… (selected) `0x45bc6b...e222e0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Demeter Audit Final Report.pdf | ExpirableFarm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | OperableDeposit | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | Rewarder | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | RewarderFactory | own contract | 0x926477… (selected) `0x926477...e1bdd3` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Demeter Audit Final Report.pdf | TokenUtils | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | E20Farm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | E721Farm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | CamelotV2Farm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | CamelotV3Farm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | UniV3ActiveLiquidityFarm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | UniV3Farm | unmatched — not counted | — | listed in scope | no |
| LM_Certik_1.pdf | farm_SPA_USDs | unmatched — not counted | — | listed in Audit Scope table | no |
| SPA_Certik_2.pdf | SPA_ERC20_new | unmatched — not counted | — | listed in Audit Scope table with SHA256 checksum | no |
| USDs_Quantstamp.pdf | AaveStrategy | own contract | 0x974993… (selected) `0x974993...9f3388` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | BaseUniOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | CollateralManager | own contract | 0xda423b… (selected) `0xda423b...faedf0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | CompoundStrategy | own contract | 0xbceb48… (selected) `0xbceb48...a82442` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | Dripper | own contract | 0xd50193… (selected) `0xd50193...a044c1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | FeeCalculator | own contract | 0xd12284… (selected) `0xd12284...558afc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | InitializableAbstractStrategy | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | MasterPriceOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | RebaseManager | own contract | 0x297331… (selected) `0x297331...37beec` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | SPABuyback | own proxy deployment | SPABuyback (proxy) (selected) `0xfbc0d3...77afe3` — deployed 2022-10-04 16:32:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | SPAOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | StargateStrategy | own contract | 0xb9c910… (selected) `0xb9c910...daa136` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | USDs | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd74f52...2d5748` — deployed 2021-12-23 05:42:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | USDsOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | VSTOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | VaultCore | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | YieldReserve | own contract | YieldReserve (selected) `0xfd14c8...29d861` — deployed 2024-01-11 16:25:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Slowmist_1.pdf | BancorFormula | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | BuybackMultihop | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | BuybackSingle | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | InitializableAbstractStrategy | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | Oracle | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | SperaxTokenL2 | own contract | SperaxTokenL2 (selected) `0x557555...40ad4b` — deployed 2021-12-18 09:18:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Slowmist_1.pdf | ThreePoolStrategy | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | USDsL1 | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | USDsL2 | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | VaultCore | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | VaultCoreTools | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | BancorFormula | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | BuybackMultihop | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | BuybackSingle | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | InitializableAbstractStrategy | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | Oracle | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | SperaxTokenL2 | own contract | SperaxTokenL2 (selected) `0x557555...40ad4b` — deployed 2021-12-18 09:18:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Slowmist_2.pdf | ThreePoolStrategy | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | USDsL1 | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | USDsL2 | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | VaultCore | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | VaultCoreTools | unmatched — not counted | — | — | no |
| veSPA_PeckShield_1.pdf | veSPA_v1 | ambiguous — not counted | veSPA_v1 (alternative) `0xa3f874...b8ff8d` — deployed 2022-04-05 19:37:51+03 — liveness: live (current_address_book_code)<br>veSPA_v1 (alternative) `0xd16f53...69d165` — deployed 2022-04-05 18:45:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| veSPA_PeckShield_1.pdf | RewardDistributor | unmatched — not counted | — | Target in finding PVE-003 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xb4a3b0...d59008` | SperaxToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2a95fe...f770cb` | SperaxTokenL1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2e2071...5f6a17` | veSPA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa3f874...b8ff8d` | veSPA_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd16f53...69d165` | veSPA_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0966e7...b9ccc3` | xSPA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 24 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 55 unmatched
- Matched-own operational status: 24 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, medium=1
- Match method counts: unique_name=24

Zero-match audit list:

- [2888] Demeter_PeckShield_1.pdf
- [2891] LM_Certik_1.pdf
- [2892] SPA_Certik_2.pdf
- [2896] veSPA_PeckShield_1.pdf

Fork inheritance lineage and inherited audits are included when available.
