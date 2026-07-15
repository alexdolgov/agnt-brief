# Agentic Audit Brief: Baseline Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 10 (3 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DECLINING - TVL changed 30.5% over 90 days

## Project Overview

- Project: Baseline Protocol (`baseline-protocol`)
- Website: [https://www.baseline.markets/](https://www.baseline.markets/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, blast, ethereum, hyperliquid
- Contract surface: 26 unique implementations (26 raw deployments)
- Coverage basis: 1/3 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $102,316,796.84
- On-chain TVL (included contracts): $48,164,252.97
- TVL by chain: Ethereum $47,395,333.95 | Blast $768,896.86 | Base $22.15

## Project Description

This brief describes the observed EVM deployment and audit surface for Baseline Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across base, blast, ethereum, hyperliquid. Structural roles: 4 core, 2 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (4), supporting (2), unclassified (1)
- Contract kinds: contract (7)
- Detected standards: erc20permit (1)
- Frameworks: solmate (2), foundry (1), openzeppelin (1), solady (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7a68e9...c5c93b`, chain 1)
- UnnamedContract (`0xb2a9f3...685c64`, chain 1)
- UnnamedContract (`0xc02aaa...756cc2`, chain 1)
- UnnamedContract (`0xc81fd8...3568e8`, chain 1)
- UnnamedContract (`0xc81fd8...3568e8`, chain 999)
- UnnamedContract (`0xc81fd8...3568e8`, chain 8453)
- BToken (`0x9fdbde...6a1d63`, chain 1)
- GnosisSafeProxy (`0x8044f7...f7d1b2`, chain 1)
- SafeProxy (`0xff0034...41ee5a`, chain 1)

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (3 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/3 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 17 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 9 of 26 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 26
- Raw deployments: 26
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 1 fresh, 6 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian Audits | Tier 2 | 1 | 33.3% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BToken | token | project_anchor | own_supporting | 0 | ethereum | unit-228916 | `0x9fdbde...6a1d63` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ThrusterPool | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-228925 | `0x1d1678...7faa00` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-228953 | `0xdfcfdf...09e3cb` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-228960 | `0x8044f7...f7d1b2` | ⚠️ Unaudited |
| PreAsset | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-228929 | `0x60bf64...159f61` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228962 | `0xff0034...41ee5a` | ⚠️ Unaudited |
| Yev | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-228931 | `0xc7b96d...5f25bb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228914 | `0x7a68e9...c5c93b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228917 | `0xb2a9f3...685c64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228918 | `0xc02aaa...756cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228919 | `0xc81fd8...3568e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-228957 | `0xc81fd8...3568e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x000000...000001` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-228935 | `0x1b6824...8a8bf9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-228937 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-228939 | `0x6b129c...e777ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-228941 | `0x7ba0fc...e09a4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-228945 | `0xa35e4a...3511d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228949 | `0xc81fd8...3568e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-228952 | `0xc9329c...436c8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-228955 | `0xe9b2fa...c0c34f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-228921 | `0x0c056b...765275` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-228922 | `0x14eb8d...561f27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-228923 | `0x1a4935...e8c2d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-228927 | `0x20fe91...ac3a9c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-228933 | `0xd0f1e1...56dc13` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-02-27_Baseline_Fixed_Supply.pdf](https://www.baseline.markets/assets/2025-02-27_Baseline_Fixed_Supply.pdf) | Guardian Audits | Audit | 2025-02 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [2025-02-03_Baseline_MM_Looping_2.pdf](https://www.baseline.markets/assets/2025-02-03_Baseline_MM_Looping_2.pdf) | Guardian Audits | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2025-01-22_Baseline_MM_Looping.pdf](https://www.baseline.markets/assets/2025-01-22_Baseline_MM_Looping.pdf) | Guardian Audits | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2024-11-28_Baseline_Credit_Migrator.pdf](https://www.baseline.markets/assets/2024-11-28_Baseline_Credit_Migrator.pdf) | Guardian Audits | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [2024-10-27_Baseline_BToken.pdf](https://www.baseline.markets/assets/2024-10-27_Baseline_BToken.pdf) | Guardian Audits | Audit | 2024-10 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [2024-08-23_Baseline_Loops.pdf](https://www.baseline.markets/assets/2024-08-23_Baseline_Loops.pdf) | Guardian Audits | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [guardian_v2.pdf](https://www.baseline.markets/assets/guardian_v2.pdf) | Guardian | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [audit_trust_security.pdf](https://www.baseline.markets/assets/audit_trust_security.pdf) | Trust Security | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [trustsec.xyz](https://trustsec.xyz/) | Guardian | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf](https://www.baseline.markets/assets/2026-05-27_Baseline_Mercury_AMM_Report.pdf) | Guardian Audits | Audit | 2026-05 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 22 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4654] 2025-02-27_Baseline_Fixed_Supply.pdf — matched: Extracted contract names from findings locations and scope description. The audit report does not have a dedicated scope table but mentions the codebase and commit hashes. Contract names are inferred from file paths in findings.
- [4655] 2025-02-03_Baseline_MM_Looping_2.pdf — no match: Extracted contract names from findings locations and report text. Audit date from cover page.
- [4656] 2025-01-22_Baseline_MM_Looping.pdf — no match: Extracted from audit report summary and findings sections. Only two contracts explicitly referenced: MarketMaking and BPOOL.
- [4657] 2024-11-28_Baseline_Credit_Migrator.pdf — no match: No explicit scope table; contracts extracted from findings locations and mentions. Date from 'Delivery Date' on page 5.
- [4658] 2024-10-27_Baseline_BToken.pdf — matched: Contracts extracted from findings locations and file paths. No explicit scope table, but contracts are clearly in scope.
- [4659] 2024-08-23_Baseline_Loops.pdf — no match: Extracted contract names from findings locations and file paths. Audit date from cover page.
- [4660] guardian_v2.pdf — no match: Extracted contract names from findings location fields. The audit scope section mentions the codebase but does not list individual contracts; however, findings reference specific files. The audit date is from the cover page.
- [4661] audit_trust_security.pdf — no match: All 10 contracts listed in the Scope section of the report.
- [14627] trustsec.xyz — no match: The provided text is only a header with the auditor name, no contract names or scope information.
- [26577] 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf — matched: All contracts listed in the Audit Scope & Methodology section under 'Audit Scope & Methodology' table.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-02-27_Baseline_Fixed_Supply.pdf | MarketMaking | unmatched — not counted | — | Listed in findings locations (e.g., MarketMaking.sol:357) | no |
| 2025-02-27_Baseline_Fixed_Supply.pdf | CreditFacility | unmatched — not counted | — | Listed in findings locations (e.g., CreditFacility.sol:438) | no |
| 2025-02-27_Baseline_Fixed_Supply.pdf | Brouter | unmatched — not counted | — | Listed in findings locations (e.g., Brouter.sol:299) | no |
| 2025-02-27_Baseline_Fixed_Supply.pdf | LoopFacility | unmatched — not counted | — | Listed in findings locations (e.g., LoopFacility.sol:175) | no |
| 2025-02-27_Baseline_Fixed_Supply.pdf | BPOOL | unmatched — not counted | — | Listed in findings locations (e.g., BPOOL.sol:223) | no |
| 2025-02-27_Baseline_Fixed_Supply.pdf | CREDT | unmatched — not counted | — | Listed in findings locations (e.g., CREDT.v1.sol) | no |
| 2025-02-27_Baseline_Fixed_Supply.pdf | BToken | own contract | BToken (selected) `0x9fdbde...6a1d63` — deployed 2026-04-21 20:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-02-03_Baseline_MM_Looping_2.pdf | BPOOLv1 | unmatched — not counted | — | listed in findings locations | no |
| 2025-02-03_Baseline_MM_Looping_2.pdf | MarketMaking | unmatched — not counted | — | listed in findings locations | no |
| 2025-02-03_Baseline_MM_Looping_2.pdf | CreditFacility | unmatched — not counted | — | mentioned in M-01 | no |
| 2025-02-03_Baseline_MM_Looping_2.pdf | LoopFacility | unmatched — not counted | — | mentioned in M-01 and L-13 | no |
| 2025-02-03_Baseline_MM_Looping_2.pdf | BaselineInit | unmatched — not counted | — | mentioned in M-01 | no |
| 2025-02-03_Baseline_MM_Looping_2.pdf | Tick | unmatched — not counted | — | listed in L-08 location | no |
| 2025-01-22_Baseline_MM_Looping.pdf | MarketMaking | unmatched — not counted | — | Listed in findings locations (e.g., MarketMaking.sol: 428) | no |
| 2025-01-22_Baseline_MM_Looping.pdf | BPOOL | unmatched — not counted | — | Listed in findings locations (e.g., BPOOL.sol: 442) | no |
| 2024-11-28_Baseline_Credit_Migrator.pdf | MarketMaking | unmatched — not counted | — | listed in findings location | no |
| 2024-11-28_Baseline_Credit_Migrator.pdf | CREDTMigrator | unmatched — not counted | — | listed in findings location | no |
| 2024-11-28_Baseline_Credit_Migrator.pdf | BaselineInit | unmatched — not counted | — | mentioned in finding L-06 | no |
| 2024-10-27_Baseline_BToken.pdf | BPOOL | unmatched — not counted | — | mentioned in findings M-01, M-02, M-03, L-03 | no |
| 2024-10-27_Baseline_BToken.pdf | BToken | own contract | BToken (selected) `0x9fdbde...6a1d63` — deployed 2026-04-21 20:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-27_Baseline_BToken.pdf | Afterburner | unmatched — not counted | — | mentioned in findings M-03, M-04, L-04 | no |
| 2024-10-27_Baseline_BToken.pdf | LOOPS | unmatched — not counted | — | mentioned in findings L-02, L-03 | no |
| 2024-10-27_Baseline_BToken.pdf | BaselineInit | unmatched — not counted | — | mentioned in finding L-02 | no |
| 2024-10-27_Baseline_BToken.pdf | LoopFacility | unmatched — not counted | — | mentioned in finding L-02 | no |
| 2024-10-27_Baseline_BToken.pdf | MarketMaking | unmatched — not counted | — | mentioned in findings L-02, L-03 | no |
| 2024-08-23_Baseline_Loops.pdf | Loops | unmatched — not counted | — | H-01, H-02, H-04, M-03 findings reference Loops.v1.sol | no |
| 2024-08-23_Baseline_Loops.pdf | LoopFacility | unmatched — not counted | — | H-02, H-05, L-01, L-05, L-06, L-07 findings reference LoopFacility.sol | no |
| 2024-08-23_Baseline_Loops.pdf | MarketMaking | unmatched — not counted | — | H-03, M-01, M-04, L-02, L-04, L-09, L-10 findings reference MarketMaking.sol | no |
| 2024-08-23_Baseline_Loops.pdf | BaselineInit | unmatched — not counted | — | M-05 finding references BaselineInit.sol | no |
| 2024-08-23_Baseline_Loops.pdf | LOOPSv1 | unmatched — not counted | — | H-06 finding references LOOPS.v1.sol | no |
| guardian_v2.pdf | BPOOL | unmatched — not counted | — | Listed in findings locations (e.g., H-03, H-05, L-01, L-02, L-03, L-05) | no |
| guardian_v2.pdf | MarketMaking | unmatched — not counted | — | Listed in findings locations (e.g., H-02, H-07, H-12, M-02, M-03, L-04, L-07, L-08) | no |
| guardian_v2.pdf | CreditFacility | unmatched — not counted | — | Listed in findings locations (e.g., H-04, H-09, M-05, M-06, L-06, L-09, L-10) | no |
| guardian_v2.pdf | BaselineInit | unmatched — not counted | — | Listed in findings locations (H-06, M-01) | no |
| guardian_v2.pdf | TimeslotLib | unmatched — not counted | — | Listed in findings location (M-04) | no |
| audit_trust_security.pdf | BaselineFactory | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | Baseline | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | bAsset | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | BlastClaimer | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | Core | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | CreditFacility | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | IBlast | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | LiquidityManager | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | MarketMaking | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | preAsset | unmatched — not counted | — | listed in scope | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BToken | own contract | BToken (selected) `0x9fdbde...6a1d63` — deployed 2026-04-21 20:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | Component | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | Relay | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | ConfigScript | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BController | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BCredit | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BFactory | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BHook | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BLens | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BStaking | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BSwap | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BlockPricingLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | CollateralLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | CurveLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | FeeLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | GuardLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | MakerLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | NativeLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | NormalizeLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | StateLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | SwapContextLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | SweepLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | VaultLib | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 65 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8, low=1, medium=1
- Match method counts: unique_name=3

Zero-match audit list:

- [4655] 2025-02-03_Baseline_MM_Looping_2.pdf
- [4656] 2025-01-22_Baseline_MM_Looping.pdf
- [4657] 2024-11-28_Baseline_Credit_Migrator.pdf
- [4659] 2024-08-23_Baseline_Loops.pdf
- [4660] guardian_v2.pdf
- [4661] audit_trust_security.pdf
- [14627] trustsec.xyz

Fork inheritance lineage and inherited audits are included when available.
