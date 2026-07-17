# Agentic Audit Brief: Wildcat Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Wildcat Protocol (`wildcat-protocol`)
- Website: [https://wildcat.finance](https://wildcat.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, plasma, sepolia
- Contract surface: 38 unique implementations (38 raw deployments)
- Coverage basis: 3/7 confirmed own live verified implementations (42.9%); conservative 42.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $362,387,205.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Wildcat Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across ethereum, plasma, sepolia. Structural roles: 5 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (5), supporting (2)
- Contract kinds: contract (7)
- Detected standards: ownable (3)
- Frameworks: solady (6), openzeppelin (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 19 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x437e0551892c2c9b06d3ffd248fe60572e08cd1a`, chain 1)
- UnnamedContract (`0x4c62b4844c8371f321541e8d564a4b3896cecec7`, chain 1)
- UnnamedContract (`0x7e49caba6fb53cdc70cd98829731a2b8d76dfc36`, chain 1)
- UnnamedContract (`0xdd7dd3b5076cf89440d05585ff56d246386207be`, chain 1)
- UnnamedContract (`0xfda5c5b96bb198d2fca1a01d759620b64ae5afe7`, chain 1)
- UnnamedContract (`0xfeb516d9d946dd487a9346f6fee11f40c6945ee4`, chain 1)
- UnnamedContract (`0x40217f6e5891c8f1524744c0747e07d316a0c798`, chain 9745)
- UnnamedContract (`0x437e0551892c2c9b06d3ffd248fe60572e08cd1a`, chain 9745)
- UnnamedContract (`0x59010b706959c15977304c2553f3f4c697a73018`, chain 9745)
- UnnamedContract (`0x792f1368f8b8f450c14875eb6ff0028dfc2629b4`, chain 9745)
- UnnamedContract (`0x7e5d6d9f9a2091dd781118514f5397a8107c81c5`, chain 9745)
- UnnamedContract (`0x931fe4a88e1c1f1a7402df6a40988f38503f1061`, chain 9745)
- ChainalysisProxy (`0x38056f7fe6396417b191bf7dc6a3aa04235f3f46`, chain 9745)
- HooksFactory (`0xb46bae25ac6d23148531ed1853a8881fd842e517`, chain 9745)
- Wildcat4626WrapperFactory (`0xea6de11f8f3f83c79bd9d8db5517fcfdf2bb148a`, chain 1)
- WildcatArchController (`0xdb2e0de97d6d96aa56754635704a4273e0f348ae`, chain 9745)
- WildcatCopyOfChainalysisList (`0xfeb516d9d946dd487a9346f6fee11f40c6945ee4`, chain 9745)
- WildcatFeeRecipient (`0x35a5d1bd68f3139971027b92c1ee9384a0708554`, chain 1)
- WildcatSanctionsSentinel (`0x37064895ba2c1e269eaf7ff32564818d08903f5b`, chain 9745)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/53 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/7 (42.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 19 own, 13 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 6 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 19 of 38 unique; 19 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/12
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 26
- Unique implementations: 38
- Raw deployments: 38
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 42.9% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 4naly3er | Tier 2 | 3 | 25.0% | n/a |
| Code4rena | Tier 1 | 3 | 25.0% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| HooksFactory | unknown | project_anchor | own_supporting | 0 | plasma | unit-396674 | `0xb46bae25ac6d23148531ed1853a8881fd842e517` | ✅ Audited |
| WildcatArchController | unknown | project_anchor | own_supporting | 0 | plasma | unit-396675 | `0xdb2e0de97d6d96aa56754635704a4273e0f348ae` | ✅ Audited |
| WildcatSanctionsSentinel | unknown | project_anchor | own_supporting | 0 | plasma | unit-396666 | `0x37064895ba2c1e269eaf7ff32564818d08903f5b` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ChainalysisProxy | unknown | project_anchor | own_supporting | 0 | plasma | unit-396667 | `0x38056f7fe6396417b191bf7dc6a3aa04235f3f46` | ⚠️ Unaudited |
| MarketLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3556d0497180afb37e6eaebd5d17309159586862` | ⚠️ Unaudited |
| OpenAccessRoleProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5620553d8881335f74ad19259daacd1d9b373101` | ⚠️ Unaudited |
| SphereXEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f90c0a26cc2ad22ee98398dcc02bbe314a1766a` | ⚠️ Unaudited |
| Wildcat4626WrapperFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396648 | `0xea6de11f8f3f83c79bd9d8db5517fcfdf2bb148a` | ⚠️ Unaudited |
| WildcatCopyOfChainalysisList | unknown | project_anchor | own_supporting | 0 | plasma | unit-396676 | `0xfeb516d9d946dd487a9346f6fee11f40c6945ee4` | ⚠️ Unaudited |
| WildcatFeeRecipient | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396623 | `0x35a5d1bd68f3139971027b92c1ee9384a0708554` | ⚠️ Unaudited |
| WildcatMarketCollateralFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbf84ab8b232a467511772af4ab8a4190f403e7c` | ⚠️ Unaudited |
| WildcatMarketControllerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1a18eea2a9e81bf84c131282a4b99867dd6aa4f` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396630 | `0x437e0551892c2c9b06d3ffd248fe60572e08cd1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396631 | `0x4c62b4844c8371f321541e8d564a4b3896cecec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396637 | `0x7e49caba6fb53cdc70cd98829731a2b8d76dfc36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396647 | `0xdd7dd3b5076cf89440d05585ff56d246386207be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-396650 | `0xf1d516954f96c1363f8b0ae48d79c8dde6237847` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-396652 | `0xfd31007613c9f671df6a8d4234901324986bfd13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396653 | `0xfda5c5b96bb198d2fca1a01d759620b64ae5afe7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396654 | `0xfeb516d9d946dd487a9346f6fee11f40c6945ee4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-396668 | `0x40217f6e5891c8f1524744c0747e07d316a0c798` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-396669 | `0x437e0551892c2c9b06d3ffd248fe60572e08cd1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-396670 | `0x59010b706959c15977304c2553f3f4c697a73018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x74b253041be30b7698b5f69239c271ea8db57261` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-396671 | `0x792f1368f8b8f450c14875eb6ff0028dfc2629b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-396672 | `0x7e5d6d9f9a2091dd781118514f5397a8107c81c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-396673 | `0x931fe4a88e1c1f1a7402df6a40988f38503f1061` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396655 | `0x0566fe57682164af689f1440cb3bceedee3bf843` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396656 | `0x42893972c752e731c3457d0d541a2bc6fadfe751` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396657 | `0x54a3103904977dcb3c2fb782059f5431db90c96e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396658 | `0x6cb3512b541733d340aa520b63105586588bd600` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396659 | `0x9d1060f8dee8cbcf5ec772c51ec671f70cc7f8d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396660 | `0xa476920af80b587f696734430227869795e2ea78` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396661 | `0xb3925b31a8aedce8cfc885e0d5daa057a1ea8a72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396662 | `0xb666c1c67a20814e3eee15a06780e0821ae30dd1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396663 | `0xc003f20f2642c76b81e5e1620c6d8cdee826408f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396664 | `0xeb97c8e52d7fdf978a64a538f28271fd8499b864` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396665 | `0xfbce262ec835be5e6a458ce1722eece0e453316b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [hackmd.io/@geistermeister/BJk4Ekt90](https://hackmd.io/@geistermeister/BJk4Ekt90) | alpeh_v | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [4naly3er-report.md](https://github.com/code-423n4/2024-08-wildcat/blob/main/4naly3er-report.md) | 4naly3er | Audit | n/a | unknown | Direct | contract_name | matched | 3 | 0 | 0 | 16 | high |
| [code4rena.com/reports/2024-08-wildcat](https://code4rena.com/reports/2024-08-wildcat) | Code4rena | Contest | 2024-08 | aging | Direct | contract_name | matched | 3 | 0 | 0 | 20 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21199] hackmd.io/@geistermeister/BJk4Ekt90 — no match: No explicit scope section or contract file paths found. The report mentions 'Wildcat V2 smart contracts' and 'core contracts' but does not list specific contract names or files.
- [21201] 4naly3er-report.md — matched: The report is a gas optimization and non-critical issues report. No explicit scope section or audit date was found. Contract names were extracted from file paths in the findings.
- [21202] code4rena.com/reports/2024-08-wildcat — matched: Extracted 23 contract names from the audit report, including those explicitly listed in scope and those referenced in findings and imports. The audit date is from the report header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 4naly3er-report.md | HooksFactory | own contract | HooksFactory (selected) `0xb46bae25ac6d23148531ed1853a8881fd842e517` — deployed 2025-09-26 23:33:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 4naly3er-report.md | WildcatArchController | own contract | WildcatArchController (selected) `0xdb2e0de97d6d96aa56754635704a4273e0f348ae` — deployed 2025-09-26 23:33:18+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 4naly3er-report.md | WildcatSanctionsEscrow | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | WildcatSanctionsSentinel | own contract | WildcatSanctionsSentinel (selected) `0x37064895ba2c1e269eaf7ff32564818d08903f5b` — deployed 2025-09-26 23:33:22+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 4naly3er-report.md | AccessControlHooks | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | FixedTermLoanHooks | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | MarketConstraintHooks | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | LibStoredInitCode | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | MarketState | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | WildcatMarket | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | WildcatMarketBase | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | WildcatMarketConfig | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | WildcatMarketToken | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | WildcatMarketWithdrawals | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | HooksConfig | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | LenderStatus | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | RoleProvider | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | TransientBytesArray | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2024-08-wildcat | FixedTermLoanHooks | unmatched — not counted | — | mentioned in scope and findings | no |
| code4rena.com/reports/2024-08-wildcat | AccessControlHooks | unmatched — not counted | — | mentioned in scope and findings | no |
| code4rena.com/reports/2024-08-wildcat | WildcatMarket | unmatched — not counted | — | mentioned in scope and findings | no |
| code4rena.com/reports/2024-08-wildcat | WildcatMarketWithdrawals | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | WildcatMarketToken | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | WildcatMarketBase | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | WildcatSanctionsEscrow | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | WildcatSanctionsSentinel | own contract | WildcatSanctionsSentinel (selected) `0x37064895ba2c1e269eaf7ff32564818d08903f5b` — deployed 2025-09-26 23:33:22+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-08-wildcat | WildcatArchController | own contract | WildcatArchController (selected) `0xdb2e0de97d6d96aa56754635704a4273e0f348ae` — deployed 2025-09-26 23:33:18+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-08-wildcat | HooksFactory | own contract | HooksFactory (selected) `0xb46bae25ac6d23148531ed1853a8881fd842e517` — deployed 2025-09-26 23:33:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-08-wildcat | MarketConstraintHooks | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | FeeMath | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | MathUtils | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | LenderStatus | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | RoleProvider | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | TransientBytesArray | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | IHooks | unmatched — not counted | — | mentioned in imports | no |
| code4rena.com/reports/2024-08-wildcat | IHooksFactory | unmatched — not counted | — | mentioned in imports | no |
| code4rena.com/reports/2024-08-wildcat | IRoleProvider | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | LibStoredInitCode | unmatched — not counted | — | mentioned in imports | no |
| code4rena.com/reports/2024-08-wildcat | LibERC20 | unmatched — not counted | — | mentioned in imports | no |
| code4rena.com/reports/2024-08-wildcat | ReentrancyGuard | unmatched — not counted | — | mentioned in imports | no |
| code4rena.com/reports/2024-08-wildcat | SphereXProtectedRegisteredBase | unmatched — not counted | — | mentioned in imports | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| plasma | `0x38056f7fe6396417b191bf7dc6a3aa04235f3f46` | ChainalysisProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xea6de11f8f3f83c79bd9d8db5517fcfdf2bb148a` | Wildcat4626WrapperFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xfeb516d9d946dd487a9346f6fee11f40c6945ee4` | WildcatCopyOfChainalysisList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35a5d1bd68f3139971027b92c1ee9384a0708554` | WildcatFeeRecipient | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 36 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: unique_name=6

Zero-match audit list:

- [21199] hackmd.io/@geistermeister/BJk4Ekt90

Fork inheritance lineage and inherited audits are included when available.
