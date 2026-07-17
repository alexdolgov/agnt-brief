# Agentic Audit Brief: Ferro

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 4 (1 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Ferro (`ferro`)
- Website: [https://ferroprotocol.com](https://ferroprotocol.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: cronos
- Contract surface: 17 unique implementations (21 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $4,826,528.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Ferro in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1578c5cf4f8f6064deb167d1eead15df43185afa`, chain 25)
- UnnamedContract (`0x1dd98049269e56809886ba39563477908ccebf53`, chain 25)
- UnnamedContract (`0x260481ad807c95ea30aceab5d01afe0a76f41929`, chain 25)
- UnnamedContract (`0x5fa9412c2563c0b13cd9f96f0bd1a971f8ebdf96`, chain 25)
- UnnamedContract (`0x6a41732eadbe15e9c9fca2cff1299c6321aa104b`, chain 25)
- UnnamedContract (`0x6b82eace10f782487b61c616b623a78c965fdd88`, chain 25)
- UnnamedContract (`0x71923713685770d04d69d103008aaffeebc31bde`, chain 25)
- UnnamedContract (`0x74171b2facd27b9577c7d409bfc05b308255992d`, chain 25)
- UnnamedContract (`0xa26a0105c269b6ddaae8b343c9fd789a9034f72e`, chain 25)
- UnnamedContract (`0xa34c0fe36541fb085677c36b4ff0ccf5fa2b32d6`, chain 25)
- UnnamedContract (`0xab50fb1117778f293cc33ac044b5579fb03029d0`, chain 25)
- UnnamedContract (`0xb5c745f15a31ea431360a71c75490cdcbae67b86`, chain 25)
- UnnamedContract (`0xc73b40a6a57cc8203462397f64527fd46766dd85`, chain 25)
- UnnamedContract (`0xcf3e157e2491f7d739f8923f6ceaa4656e64c92e`, chain 25)
- UnnamedContract (`0xd05a67bb1e9684e8ddd19d0bb6a713b4befc2c03`, chain 25)
- UnnamedContract (`0xe8d13664a42b338f009812fa5a75199a865da5cd`, chain 25)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 16 of 17 unique; 1 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 17
- Raw deployments: 21
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-239833 | `0x1578c5cf4f8f6064deb167d1eead15df43185afa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-239834 | `0x1dd98049269e56809886ba39563477908ccebf53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-239835 | `0x260481ad807c95ea30aceab5d01afe0a76f41929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | 5 deployments: cronos `0x39bc1e38c842c60775ce37566d03b41a7a66c782`; cronos `0x9fae23a2700feecd5b93e43fdbc03c76aa7c08a6`; cronos `0xac974ee7fc5d083112c809ccb3fce4a4f385750d`; cronos `0xd42e078cea2be8d03cd9dfecc1f0d28915edea78`; cronos `0xf2001b145b43032aaf5ee2884e456ccd805f677d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-239836 | `0x5fa9412c2563c0b13cd9f96f0bd1a971f8ebdf96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-239837 | `0x6a41732eadbe15e9c9fca2cff1299c6321aa104b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-239838 | `0x6b82eace10f782487b61c616b623a78c965fdd88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-239839 | `0x71923713685770d04d69d103008aaffeebc31bde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-239840 | `0x74171b2facd27b9577c7d409bfc05b308255992d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-239841 | `0xa26a0105c269b6ddaae8b343c9fd789a9034f72e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-239842 | `0xa34c0fe36541fb085677c36b4ff0ccf5fa2b32d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-239843 | `0xab50fb1117778f293cc33ac044b5579fb03029d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-239844 | `0xb5c745f15a31ea431360a71c75490cdcbae67b86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-239845 | `0xc73b40a6a57cc8203462397f64527fd46766dd85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-239846 | `0xcf3e157e2491f7d739f8923f6ceaa4656e64c92e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-239847 | `0xd05a67bb1e9684e8ddd19d0bb6a713b4befc2c03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-239848 | `0xe8d13664a42b338f009812fa5a75199a865da5cd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [blocksec_ferro_security_audit_report.pdf](https://3048569451-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F1eicfNZ2HtbN812ZxEi2%2Fuploads%2FCnJyqIFXMo3iaKTSvNOL%2Fblocksec_ferro_security_audit_report.pdf) | BlockSec | Audit | 2022-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 17 | high |
| [SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FkW555WIVoUbzUslDZTlZ%2FSlowMist%20Audit%20Report%20-%20Veno-Liquid%20Staking%20Contracts%20Core.pdf) | SlowMist | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FgvneLOUCCjnAQYcHhFj7%2FSlowMist%20Audit%20Report%20-%20Veno%20-%20Liquid%20Staking%20Contracts%20Tokenomic.pdf) | SlowMist | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FtzPxX5tBafm0DUCRrLqa%2FSlowMist%20Audit%20Report%20-%20Veno%20Liquid%20Staking%20Strategy%20Vault.pdf) | SlowMist | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20291] blocksec_ferro_security_audit_report.pdf — matched: Extracted 20 contract names from the scope table in Section 1.1. The audit date is from the cover page.
- [20292] SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf — no match: Contracts extracted from Code Overview section and vulnerability descriptions. Audit date from audit result table: 2022.11.14 - 2022.11.22, using end date.
- [20293] SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf — no match: Contracts extracted from visibility tables and findings. Audit date from audit result section: 2022.12.05 - 2022.12.15, using end date.
- [20294] SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf — no match: Contracts explicitly listed in scope section 4.1. Also includes contracts from visibility tables. Vault.vy and Registry.vy are forked from Yearn and not included as they are not in scope. Audit date is the end date of the audit period (2023.08.23 - 2023.08.28).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| blocksec_ferro_security_audit_report.pdf | FerroMaker | own contract | UnnamedContract (selected) `0xa26a0105c269b6ddaae8b343c9fd789a9034f72e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_ferro_security_audit_report.pdf | StableSwapBurner | unmatched — not counted | — | listed in scope table | no |
| blocksec_ferro_security_audit_report.pdf | USDCBurner | unmatched — not counted | — | listed in scope table | no |
| blocksec_ferro_security_audit_report.pdf | FerroFarm | own contract | UnnamedContract (selected) `0xab50fb1117778f293cc33ac044b5579fb03029d0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_ferro_security_audit_report.pdf | FerroBoostDepositToken | unmatched — not counted | — | listed in scope table | no |
| blocksec_ferro_security_audit_report.pdf | FerroBoost | own contract | UnnamedContract (selected) `0xcf3e157e2491f7d739f8923f6ceaa4656e64c92e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_ferro_security_audit_report.pdf | FerroToken | unmatched — not counted | — | listed in scope table | no |
| blocksec_ferro_security_audit_report.pdf | FerroVesting | unmatched — not counted | — | listed in scope table | no |
| blocksec_ferro_security_audit_report.pdf | FerroBar | unmatched — not counted | — | listed in scope table | no |
| blocksec_ferro_security_audit_report.pdf | AmplificationUtils | unmatched — not counted | — | listed in scope table | no |
| blocksec_ferro_security_audit_report.pdf | MathUtils | unmatched — not counted | — | listed in scope table | no |
| blocksec_ferro_security_audit_report.pdf | SwapDeployer | unmatched — not counted | — | listed in scope table | no |
| blocksec_ferro_security_audit_report.pdf | OwnerPausableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| blocksec_ferro_security_audit_report.pdf | MetaSwap | unmatched — not counted | — | listed in scope table | no |
| blocksec_ferro_security_audit_report.pdf | MetaSwapDeposit | unmatched — not counted | — | listed in scope table | no |
| blocksec_ferro_security_audit_report.pdf | MetaSwapUtils | unmatched — not counted | — | listed in scope table | no |
| blocksec_ferro_security_audit_report.pdf | LPToken | unmatched — not counted | — | listed in scope table | no |
| blocksec_ferro_security_audit_report.pdf | Swap | unmatched — not counted | — | listed in scope table | no |
| blocksec_ferro_security_audit_report.pdf | GenericERC20 | unmatched — not counted | — | listed in scope table | no |
| blocksec_ferro_security_audit_report.pdf | SwapUtils | unmatched — not counted | — | listed in scope table | no |
| SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf | LiquidCro | unmatched — not counted | — | listed in scope and code overview | no |
| SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf | VenoNft | unmatched — not counted | — | listed in scope and code overview | no |
| SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf | LiquidCroStorage | unmatched — not counted | — | listed in code overview | no |
| SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf | IBCReceiver | unmatched — not counted | — | listed in code overview | no |
| SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf | UUPSUpgradeableWithDelay | unmatched — not counted | — | listed in code overview | no |
| SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf | VenoStorm | unmatched — not counted | — | listed in scope and findings | no |
| SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf | FeeDistributor | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf | VenoToken | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf | VenoVesting | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf | UUPSUpgradeableWithDelay | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf | VenoFountainDepositToken | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf | VenoReservoir | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf | VenoFountain | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | BaseDelegator | unmatched — not counted | — | listed in scope section 4.1 | no |
| SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | BaseStrategy | unmatched — not counted | — | listed in scope section 4.1 | no |
| SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | FerroLCroCroLPStrategy | unmatched — not counted | — | listed in scope section 4.1 | no |
| SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | CroDelegator | unmatched — not counted | — | listed in scope section 4.1 | no |
| SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | LCroDelegator | unmatched — not counted | — | listed in scope section 4.1 | no |
| SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | WCroDelegator | unmatched — not counted | — | listed in scope section 4.1 | no |
| SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | DelegatorStorage | unmatched — not counted | — | mentioned in visibility table | no |
| SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | BaseStrategyInitializable | unmatched — not counted | — | mentioned in visibility table | no |
| SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | UpgradeVenoReservoirLockingPeriod | unmatched — not counted | — | mentioned in visibility table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 39 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=3

Zero-match audit list:

- [20292] SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf
- [20293] SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf
- [20294] SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf

Fork inheritance lineage and inherited audits are included when available.
